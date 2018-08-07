/*
YOUR NAME HERE, STUDENT ID
CSE 351 - Summer 2018
Lab 4 - Mystery Caches

Mystery Cache Geometries:
mystery0:
    block size =	64
    cache size =	262144
    associativity =	1
mystery1:
    block size =	8
    cache size =	16384
    associativity =	4
mystery2:
    block size =	16
    cache size =	65536
    associativity =	16
mystery3:
    block size =	2
    cache size =	131072
    associativity =	2
*/

#include <stdlib.h>
#include <stdio.h>

#include "mystery-cache.h"

/*
 * NOTE: When using access_cache() you do not need to provide a "real" memory
 * addresses. You can use any convenient integer value as a memory address,
 * you should not be able to cause a segmentation fault by providing a memory
 * address out of your programs address space as the argument to access_cache.
 */

/*
   Returns the size (in B) of each block in the cache.
*/
int get_block_size(void) {
  /* YOUR CODE GOES HERE */
	int block_size_k = 0;
	access_cache(0);
	while(access_cache(block_size_k)) {
		block_size_k++;
	}
  	return block_size_k;
}

/*
   Returns the size (in B) of the cache.
*/
int get_cache_size(int block_size) {
  /* YOUR CODE GOES HERE */
	int cache_size_c = 0;
	int location = 0;
	flush_cache();
	access_cache(0);
	while (access_cache(0)) {
		flush_cache();
		cache_size_c += block_size;
		location = 0;
		while (location < cache_size_c) {
			access_cache(location);
			location += block_size;
		}
	}
	cache_size_c -= block_size;
	return cache_size_c;
}

/*
   Returns the associativity of the cache.
*/
int get_cache_assoc(int cache_size) {
  /* YOUR CODE GOES HERE */
  	int cache_assoc_e = 0;
	int bound = 1;
	int location = 0;
	flush_cache();
	access_cache(0);
	while (access_cache(0)) {
		location = cache_size;
		cache_assoc_e = 0;
		while (location <= bound) {
			location += cache_size;
			cache_assoc_e++;
			access_cache(location);
		}
		bound += cache_size;
	}
	return cache_assoc_e;
}

int main(void) {
  int size;
  int assoc;
  int block_size;

  cache_init(0, 0);

  block_size = get_block_size();
  size = get_cache_size(block_size);
  assoc = get_cache_assoc(size);

  printf("Cache block size: %d bytes\n", block_size);
  printf("Cache size: %d bytes\n", size);
  printf("Cache associativity: %d\n", assoc);

  return EXIT_SUCCESS;
}
