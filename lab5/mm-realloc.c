/**
 * UW CSE 351 Spring 2016 Lab 5
 *
 * Extra credit: implementing mm_realloc
 *
 * This requires mm_malloc and mm_free to be working correctly, so
 * don't start on this until you finish mm.c.
 */
#include "mm.c"

// add the given block to the free list
void addToFreeList(BlockInfo * blockInfo) {
    insertFreeBlock(blockInfo);
    coalesceFreeBlock(blockInfo);
}

// a block of reqSize are requred from given block, this function is to
// get the remaining block, add the remaining block to the free list
void remaining(BlockInfo * blockInfo, size_t reqSize) {
    // get the remaining block
    BlockInfo * remainingBlock = (BlockInfo*) UNSCALED_POINTER_ADD(blockInfo, reqSize);

    // set the size and tags of the remaining block
    remainingBlock->sizeAndTags = (blockInfo->sizeAndTags - reqSize) | TAG_PRECEDING_USED;

    // set the boundary tag of the remaining block
    *((size_t*) UNSCALED_POINTER_ADD(blockInfo, blockInfo->sizeAndTags - WORD_SIZE)) = remainingBlock->sizeAndTags;

    // add the remaining block to the free list
    addToFreeList(blockInfo);
}


// Extra credit.
void* mm_realloc(void* ptr, size_t size) {
    size_t reqSize;
    BlockInfo * blockInfo;
    size_t blockSize;
    size_t precedingBlockUseTag;

    // If the given block is null, 
    // allocate a block of size size and return a pointer.
    if (ptr == NULL) {
        return mm_malloc(size);
    }

    // If the given block is not null, but the given size is 0,
    // free the given block and return null.
    if (size == 0) {
        mm_free(ptr);
        return NULL;
    }
    
    // Add one word for the initial size header.
    // Note that we don't need to boundary tag when the block is used!
    size += WORD_SIZE;
    if (size <= MIN_BLOCK_SIZE) {
        // Make sure we allocate enough space for a blockInfo in case we
        // free this block (when we free this block, we'll need to use the
        // next pointer, the prev pointer, and the boundary tag).
        reqSize = MIN_BLOCK_SIZE;
    } else {
        // Round up for correct alignment
        reqSize = ALIGNMENT * ((size + ALIGNMENT - 1) / ALIGNMENT);
    }

    // get this block and its size and tag
    blockInfo = (BlockInfo*) UNSCALED_POINTER_SUB(ptr, WORD_SIZE);
    blockSize = SIZE(blockInfo->sizeAndTags);
    precedingBlockUseTag = blockInfo->sizeAndTags & TAG_PRECEDING_USED;

    // check whether the new size is greater or less than the original size
    if (reqSize <= blockSize) {
        if (blockSize - reqSize >= MIN_BLOCK_SIZE) {
        	// split the original block in to a result block and a remaining block
        	// and add the remaining block to the free list

            // set the size and tags of the result block
            blockInfo->sizeAndTags = (reqSize | precedingBlockUseTag) | TAG_USED;

            // get the remaining block, add the remaining block to the free list
            remaining(blockInfo, reqSize);
        }
        return ptr;
    } else {
        // get the following block and its size and used tag
        BlockInfo * followingBlock = (BlockInfo*) UNSCALED_POINTER_ADD(blockInfo, blockSize);
        size_t followingSize = followingBlock->sizeAndTags;
        size_t followingUsedTag = followingSize & TAG_USED;

        // check whether the fllowing block is used
        if (followingUsedTag != TAG_USED) {
            // the following block is not used, then
            // check whether following is big enough to expan the original block
            if (reqSize <= blockSize + followingSize) {
                removeFreeBlock(followingBlock);
                if (blockSize + followingSize - reqSize >= MIN_BLOCK_SIZE) {
                    // split the following block
                    // get the remaining block, add the remaining block to the free list
                    remaining(followingBlock, reqSize - blockSize);

                    // set the size and tags of the result block 
                    blockInfo->sizeAndTags = ((blockSize + followingSize - reqSize) | precedingBlockUseTag) | TAG_USED;
                } else {
                    // set the size and tags of the result block
                    blockInfo->sizeAndTags = ((blockSize + followingSize) | precedingBlockUseTag) | TAG_USED;
                }
                return ptr;
            }
        }

        // need to allocate a new block in size of reqSize
        // and copy all the data from original block to the new block

        void* result = mm_malloc(size);

        // copy all the data from original block to the neew block
        for (int i = 0; i < blockSize - WORD_SIZE; i+=WORD_SIZE) {
            ((size_t*)&result)[i] = *((size_t*) UNSCALED_POINTER_ADD(blockInfo, i + WORD_SIZE));
        }

        // add the original block to the free list
        addToFreeList(blockInfo);

        // return a pointer to the usable space of the result block
        return result;
    }
}
