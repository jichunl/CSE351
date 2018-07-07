/*
 * CSE 351 Lab 1 (Data Lab )
 *
 * Jichun Li 1531264 jichunli
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>. The included file, "common.c" contains a function declaration
 * that should prevent a compiler warning. In general, it's not good practice
 * to ignore compiler warnings, but in this case it's OK.
 */

#ifndef COMMON_H
#include "common.h"
#endif

/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

#if 0
You will provide your solution to this homework by
editing the collection of functions in this source file.

INTEGER CODING RULES:

  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code
  must conform to the following style:

  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
     not allowed to use big constants such as 0xFFFFFFFF.
     However you are allowed to add constants to values greater
     than 255. e.g. 250+250 = 500.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>

  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, ?, ==, or !=:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.


  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has *undefined* behavior when shifting by a negative amount or an amount
  greater than or equal to the number of bits in the value being shifted.
  e.g. For x >> n, shifts by n < 0 or n >= *size of x* are undefined
  e.g. if x is a 32-bit int, shifts by >= 32 bits are undefined
  Undefined means you do not know what result you will get from the operation.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function.
     The max operator count is checked by dlc. Note that '=' is not
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.
#endif

/*
 * STEP 2: Modify the following functions according the coding rules.
 *
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 */

// Rating: 1
/*
 * bitAnd - x&y using only ~ and |
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
	// De Morgan's law
	// ~(A*B) = ~A + ~B 
	return ~(~x | ~y);
}
/*
 * bitXor - x^y using only ~ and &
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
	// A | B = ~((~A) & (~B)) De Morgan's Law
	// C ^ D = C & (~D) | (~C) & D  
	// let x replace C, y replace D and use DeMorgan's Law
	// x ^ y = x & (~y) | (~x) & y = ~((~(x & (~y)))) & (~((~x) & y)))
	return ~(~(x & ~y) & ~(~x & y));
}
/*
 * thirdBits - return 32-bit quantity with every third bit
 * (starting from the least significant bit) set to 1 (other bits set to zero).
 * Further clarification: for every bit from and including the least significant 
 * bit, each bit at an index that is a multiple of three should be set to 1.
 * This is represented by the set {0, 3, 6, 9,...}. All other bits should be
 * set to 0.
 *   Example: ....1001001
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int thirdBits(void) {
	// shift the original 0x01 to get a pattern of 0x1001
	// replicate this pattern to obtain the whole 32 bit number
	// shift every number by the length + 2 and xor with original number
	int i = 0x1;
	int a = (i << 3) ^ i;
	int b = (a << 6) ^ a;
	int c = (b << 12) ^ b;
	int d = (c << 24) ^ c;
 	return d;
}
// Rating: 2
/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
	// If x could be fit in n bit, then shift this number to left by 32-n
	// bit then shift back would give the original number back. 
	int shift_size = 32 + ~n + 1;
	int x_shift = x << shift_size;
	x_shift = x_shift >> shift_size;
	return !(x ^ x_shift);
	
}
/*
 * sign - return 1 if positive, 0 if zero, and -1 if negative
 *  Examples: sign(130) = 1
 *            sign(-23) = -1
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 2
 */
int sign(int x) {
	// First left shift 31 bits to see most significant bit, 1: negative,
	// 0: zero or positive. Since we are using signed value, shift will be
	// arithmetic shifts. If the number is negative, it will end up being
	// 32 bit ones. If the number is non negative, it will end up being 0.
	// The double not part handles the zero case. If the number is non-zero,
	// it would return 1 otherwise zero. 32 bit ones OR with 1 would still
	// be 32 bit ones, which is -1. Zero OR with zero would be 0. One OR 
	// with one would give 1.
	return (x >> 31) | (!!x);
}
/*
 * getByte - Extract byte n from int x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
	// Right shift n by 3 to get the bits we wanna shift
	// Shift x then mask with 0xFF to keep the bits we need
	int n_bits = n << 3;
	return (x >> n_bits) & 0xFF;
}
// Rating: 3
/*
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int logicalShift(int x, int n) {
	// To get a logical shift we will need to set the leading none-zero
	// bits created by arithmetic shifts to zero. This will be achieved
	// by bit-wise AND with the arithmetic result 
	int mask = 0x7F;
	mask = (mask << 8) + 0xFF;
	mask = (mask << 8) + 0xFF;
	mask = (mask << 8) + 0xFF;
	return (x >> n) & (((mask >> n) << 1) + 1);
}
/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
	// Overflow happens if operands have same sign and result's sign is
	// different
	int sign_x = x >> 31;
	int sign_y = y >> 31;
	int sign_sum = (x + y) >> 31;
	return !(~(sign_x ^ sign_y) & (sign_x ^ sign_sum));
}
/*
 * invert - Return x with the n bits that begin at position p inverted
 *          (i.e., turn 0 into 1 and vice versa) and the rest left
 *          unchanged. Consider the indices of x to begin with the low-order
 *          bit numbered as 0.
 *   Can assume that 0 <= n <= 31 and 0 <= p <= 31
 *   Example: invert(0x80000000, 0, 1) = 0x80000001,
 *            invert(0x0000008e, 3, 3) = 0x000000b6,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int invert(int x, int p, int n) {
  	return x ^ (~(~0U<< n) << p);
}
// Rating: 4
/*
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4
 */
int bang(int x) {
	int x_comp = ~x + 1;
	return ((~x & ~x_comp) >> 31) & 0x1;
}
// Extra Credit: Rating: 4
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int isPower2(int x) {
  	int neg_one = ~0;
	int sign = x >> 31;
	int temp = sign ^ neg_one;
	return !((x & (x + temp)) + !x);
}

