#include <stdio.h>
#include <stdlib.h>

long pcount_r(unsigned long x) {
  if (x == 0)
    return 0;
  else
    return (x & 1) + pcount_r(x >> 1);
}

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("Usage:  pcount <number>\n");
    exit(0);
  }
  long x = atoi(argv[1]);
  printf("There are %d 1's in %d\n", pcount_r(x), x);
  return 0;
}
