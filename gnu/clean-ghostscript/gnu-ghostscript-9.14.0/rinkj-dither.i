# 1 "./devices/rinkj/rinkj-dither.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./devices/rinkj/rinkj-dither.c" 2
# 19 "./devices/rinkj/rinkj-dither.c"
# 1 "./devices/rinkj/rinkj-dither.h" 1
# 19 "./devices/rinkj/rinkj-dither.h"
typedef struct _RinkjDither RinkjDither;

struct _RinkjDither {
  void (*dither_line) (RinkjDither *self, unsigned char *dst, const unsigned char *src);
  void (*close) (RinkjDither *self);
};

void
rinkj_dither_line (RinkjDither *self, unsigned char *dst, const unsigned char *src);

void
rinkj_dither_close (RinkjDither *self);
# 20 "./devices/rinkj/rinkj-dither.c" 2

void
rinkj_dither_line (RinkjDither *self, unsigned char *dst, const unsigned char *src)
{
  self->dither_line (self, dst, src);
}

void
rinkj_dither_close (RinkjDither *self)
{
  self->close (self);
}
