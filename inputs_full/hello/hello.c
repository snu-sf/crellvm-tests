#include<stdio.h>

int foo(int x){
  int y,z;
  y = x + 1;
  z = y + 2;
  return z;
}

int main(){
  printf("hello, clang!\n");
  printf("%d\n",foo(0));
}
