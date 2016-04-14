#include<stdlib.h>

int gb;

int f(int x){
  int *a = malloc(3 * sizeof(int));
  int *b = malloc(4 * sizeof(int));
  int c = -1;
  b[0] = 10;
  c = 100;
  gb = 1000;
  int v1 = a[x];
  b[0] = 20;
  b[1] = 30;
  c = 200;
  gb = 2000;
  int v2 = a[x];
  int result = v1 * v2;
  a[0] = 1;
  return result;
}
int main(){
  gb = 0;
  f(3);
}
