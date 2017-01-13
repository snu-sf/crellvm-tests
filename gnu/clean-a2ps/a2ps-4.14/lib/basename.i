# 1 "basename.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "basename.c" 2
# 19 "basename.c"
# 1 "../config.h" 1
# 20 "basename.c" 2
# 38 "basename.c"
char *base_name (char const *name);






char *
base_name (char const *name)
{
  char const *base = name += 0;
  int all_slashes = 1;
  char const *p;

  for (p = name; *p; p++)
    {
      if (((*p) == '/'))
 base = p + 1;
      else
 all_slashes = 0;
    }


  if (*base == '\0' && ((*name) == '/') && all_slashes)
    --base;

  return (char *) base;
}
