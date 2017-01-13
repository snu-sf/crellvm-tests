# 1 "../src/regex.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../src/regex.c" 2
# 37 "../src/regex.c"
#pragma GCC diagnostic ignored "-Wstrict-overflow"

#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wunused-macros"
#pragma GCC diagnostic ignored "-Wunused-result"
#pragma GCC diagnostic ignored "-Wunused-variable"








# 1 "../src/config.h" 1
# 1916 "../src/config.h"
# 1 "../src/conf_post.h" 1
# 35 "../src/conf_post.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdbool.h" 1 3
# 36 "../src/conf_post.h" 2







typedef _Bool bool_bf;





# 1 "../lib/alloca.h" 1
# 49 "../src/conf_post.h" 2
# 227 "../src/conf_post.h"
extern char *emacs_getenv_TZ (void);
extern int emacs_setenv_TZ (char const *);


# 1 "../lib/string.h" 1
# 21 "../lib/string.h" 3
# 41 "../lib/string.h" 3
# 1 "/usr/include/string.h" 1 3 4
# 25 "/usr/include/string.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 345 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 346 "/usr/include/features.h" 2 3 4
# 375 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 392 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 393 "/usr/include/sys/cdefs.h" 2 3 4
# 376 "/usr/include/features.h" 2 3 4
# 399 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 400 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/string.h" 2 3 4






# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 33 "/usr/include/string.h" 2 3 4
# 42 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 106 "/usr/include/string.h" 3 4
extern void *rawmemchr (const void *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 117 "/usr/include/string.h" 3 4
extern void *memrchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));







# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 160 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 232 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 259 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 311 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 338 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 369 "/usr/include/string.h" 3 4
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));







extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 434 "/usr/include/string.h" 3 4
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;





extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ ));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 485 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 513 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));





extern int strcasecmp_l (const char *__s1, const char *__s2,
    __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));





extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int strverscmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strfry (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 602 "/usr/include/string.h" 3 4
extern char *basename (const char *__filename) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 42 "../lib/string.h" 2 3







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef int wchar_t;
# 118 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 1 3
# 35 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 119 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 2 3
# 50 "../lib/string.h" 2 3
# 524 "../lib/string.h" 3
extern int _gl_cxxalias_dummy;







extern int _gl_cxxalias_dummy;
# 579 "../lib/string.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 231 "../src/conf_post.h" 2
# 1 "../lib/stdlib.h" 1
# 21 "../lib/stdlib.h" 3
# 36 "../lib/stdlib.h" 3
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 64 "/usr/include/bits/waitstatus.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 27 "/usr/include/bits/byteswap.h" 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 130 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 131 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 28 "/usr/include/bits/byteswap.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/byteswap.h" 2 3 4






# 1 "/usr/include/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/bits/byteswap.h" 2 3 4
# 61 "/usr/include/endian.h" 2 3 4
# 65 "/usr/include/bits/waitstatus.h" 2 3 4

union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 97 "/usr/include/stdlib.h" 3 4
typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 239 "/usr/include/stdlib.h" 3 4
extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     __locale_t __loc) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));

extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 4)));

extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));

extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));

extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));
# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





# 1 "../lib/sys/types.h" 1 3 4
# 21 "../lib/sys/types.h" 3







# 1 "/usr/include/sys/types.h" 1 3 4
# 33 "/usr/include/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/sys/types.h" 3 4
# 1 "../lib/time.h" 1 3 4
# 21 "../lib/time.h" 3
# 35 "../lib/time.h" 3
# 1 "/usr/include/time.h" 1 3 4
# 59 "/usr/include/time.h" 3 4
typedef __clock_t clock_t;
# 75 "/usr/include/time.h" 3 4
typedef __time_t time_t;
# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 36 "../lib/time.h" 2 3
# 133 "/usr/include/sys/types.h" 2 3 4



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;






# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 147 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/sys/types.h" 3 4
# 1 "../lib/sys/select.h" 1 3 4
# 20 "../lib/sys/select.h" 3
# 77 "../lib/sys/select.h" 3
# 1 "../lib/sys/types.h" 1 3
# 21 "../lib/sys/types.h" 3







# 1 "/usr/include/sys/types.h" 1 3 4
# 29 "../lib/sys/types.h" 2 3
# 78 "../lib/sys/select.h" 2 3
# 100 "../lib/sys/select.h" 3
# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 22 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/select.h" 2 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 23 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;






# 1 "../lib/time.h" 1 3 4
# 21 "../lib/time.h" 3
# 35 "../lib/time.h" 3
# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 36 "../lib/time.h" 2 3
# 44 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/sys/select.h" 2 3 4








typedef long int __fd_mask;
# 64 "/usr/include/sys/select.h" 3 4
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 106 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 101 "../lib/sys/select.h" 2 3
# 576 "../lib/sys/select.h" 3
extern int _gl_cxxalias_dummy;



extern int _gl_cxxalias_dummy;
# 220 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 31 "/usr/include/sys/sysmacros.h" 3 4
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 262 "/usr/include/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;






# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    int __spins;
    __pthread_list_t __list;
# 115 "/usr/include/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 202 "/usr/include/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/sys/types.h" 2 3 4
# 29 "../lib/sys/types.h" 2 3
# 315 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ ));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ ));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));







extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 465 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 479 "/usr/include/stdlib.h" 3 4
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ ));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ ));
# 497 "/usr/include/stdlib.h" 3 4
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__, __alloc_size__ (2)));




extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));







extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;





extern char *secure_getenv (const char *__name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;






extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ ));
# 605 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 629 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 651 "/usr/include/stdlib.h" 3 4
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
# 662 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 673 "/usr/include/stdlib.h" 3 4
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 683 "/usr/include/stdlib.h" 3 4
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 693 "/usr/include/stdlib.h" 3 4
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 705 "/usr/include/stdlib.h" 3 4
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 716 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;






extern char *canonicalize_file_name (const char *__name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 733 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;






typedef int (*__compar_fn_t) (const void *, const void *);


typedef __compar_fn_t comparison_fn_t;



typedef int (*__compar_d_fn_t) (const void *, const void *, void *);





extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;



extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));

extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));




extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
# 807 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));







extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ )) ;


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ )) ;


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ )) ;



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ));
# 884 "/usr/include/stdlib.h" 3 4
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 895 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;





extern void setkey (const char *__key) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) __attribute__ ((__nothrow__ ));



extern int unlockpt (int __fd) __attribute__ ((__nothrow__ ));




extern char *ptsname (int __fd) __attribute__ ((__nothrow__ )) ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 952 "/usr/include/stdlib.h" 2 3 4
# 37 "../lib/stdlib.h" 2 3





# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 43 "../lib/stdlib.h" 2 3
# 539 "../lib/stdlib.h" 3
extern int _gl_cxxalias_dummy;
extern int _gl_cxxalias_dummy;
# 668 "../lib/stdlib.h" 3
extern int _gl_cxxalias_dummy;
extern int _gl_cxxalias_dummy;
# 840 "../lib/stdlib.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 232 "../src/conf_post.h" 2
# 1917 "../src/config.h" 2
# 51 "../src/regex.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 53 "../src/regex.c" 2
# 208 "../src/regex.c"
# 1 "../lib/unistd.h" 1
# 22 "../lib/unistd.h" 3
# 40 "../lib/unistd.h" 3
# 1 "/usr/include/unistd.h" 1 3 4
# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 22 "/usr/include/bits/environments.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 267 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int euidaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int eaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
# 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ ));
# 345 "/usr/include/unistd.h" 3 4
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__ ));






extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 404 "/usr/include/unistd.h" 3 4
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;


extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) ;







extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;




extern int pipe2 (int __pipedes[2], int __flags) __attribute__ ((__nothrow__ )) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ ));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ ));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ )) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ )) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ )) ;





extern char *get_current_dir_name (void) __attribute__ ((__nothrow__ ));







extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));




extern int dup3 (int __fd, int __fd2, int __flags) __attribute__ ((__nothrow__ ));



extern char **__environ;

extern char **environ;





extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern int nice (int __inc) __attribute__ ((__nothrow__ )) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));






# 1 "/usr/include/bits/confname.h" 1 3 4
# 25 "/usr/include/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ ));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ ));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ ));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ ));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ ));




extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ ));
# 646 "/usr/include/unistd.h" 3 4
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ ));
# 672 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ ));
# 689 "/usr/include/unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__ ));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ ));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ ));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ ));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ )) ;



extern int group_member (__gid_t __gid) __attribute__ ((__nothrow__ ));






extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;





extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     __attribute__ ((__nothrow__ ));



extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     __attribute__ ((__nothrow__ ));



extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     __attribute__ ((__nothrow__ )) ;



extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     __attribute__ ((__nothrow__ )) ;






extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ ));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ ));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ ));





extern int ttyslot (void) __attribute__ ((__nothrow__ ));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ ));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ ));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 893 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 58 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 72 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 151 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ ));
# 894 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ )) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ ));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ ));



extern char *getusershell (void) __attribute__ ((__nothrow__ ));
extern void endusershell (void) __attribute__ ((__nothrow__ ));
extern void setusershell (void) __attribute__ ((__nothrow__ ));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ )) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);





extern int syncfs (int __fd) __attribute__ ((__nothrow__ ));






extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ ));





extern int getpagesize (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ ));
# 1015 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1027 "/usr/include/unistd.h" 3 4
extern int truncate64 (const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1038 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ )) ;
# 1048 "/usr/include/unistd.h" 3 4
extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__ )) ;
# 1059 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ )) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ ));
# 1080 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
# 1103 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1113 "/usr/include/unistd.h" 3 4
extern int lockf64 (int __fd, int __cmd, __off64_t __len) ;
# 1134 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);







extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern void encrypt (char *__block, int __edflag) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 41 "../lib/unistd.h" 2 3
# 56 "../lib/unistd.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 57 "../lib/unistd.h" 2 3
# 124 "../lib/unistd.h" 3
# 1 "../lib/sys/types.h" 1 3
# 21 "../lib/sys/types.h" 3
# 125 "../lib/unistd.h" 2 3
# 670 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 778 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 860 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;
extern int _gl_cxxalias_dummy;
# 879 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;
extern int _gl_cxxalias_dummy;
# 1000 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1465 "../lib/unistd.h" 3
extern int rpl_pipe2 (int fd[2], int flags) __attribute__ ((__nonnull__ (1)));
extern int _gl_cxxalias_dummy;




extern int _gl_cxxalias_dummy;
# 1594 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 1623 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 1726 "../lib/unistd.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 209 "../src/regex.c" 2



static void *
xmalloc (size_t size)
{
  void *val = malloc (size);
  if (!val && size)
    {
      write (2, "virtual memory exhausted\n", 25);
      exit (1);
    }
  return val;
}

static void *
xrealloc (void *block, size_t size)
{
  void *val;


  if (! block)
    val = malloc (size);
  else
    val = realloc (block, size);
  if (!val && size)
    {
      write (2, "virtual memory exhausted\n", 25);
      exit (1);
    }
  return val;
}
# 252 "../src/regex.c"
# 1 "../lib/string.h" 1
# 21 "../lib/string.h" 3
# 253 "../src/regex.c" 2




enum syntaxcode { Swhitespace = 0, Sword = 1, Ssymbol = 2 };
# 288 "../src/regex.c"
# 1 "../src/regex.h" 1
# 43 "../src/regex.h"
typedef unsigned long reg_syntax_t;
# 167 "../src/regex.h"
extern reg_syntax_t re_syntax_options;
# 177 "../src/regex.h"
extern size_t re_max_failures;
# 295 "../src/regex.h"
typedef enum
{

  REG_ENOSYS = -1,


  REG_NOERROR = 0,
  REG_NOMATCH,



  REG_BADPAT,
  REG_ECOLLATE,
  REG_ECTYPE,
  REG_EESCAPE,
  REG_ESUBREG,
  REG_EBRACK,
  REG_EPAREN,
  REG_EBRACE,
  REG_BADBR,
  REG_ERANGE,
  REG_ESPACE,
  REG_BADRPT,


  REG_EEND,
  REG_ESIZE,
  REG_ERPAREN,
  REG_ERANGEX
} reg_errcode_t;
# 336 "../src/regex.h"
struct re_pattern_buffer
{




  unsigned char *buffer;


  size_t allocated;


  size_t used;


  reg_syntax_t syntax;




  char *fastmap;





  char * translate;


  size_t re_nsub;





  unsigned can_be_null : 1;
# 380 "../src/regex.h"
  unsigned regs_allocated : 2;



  unsigned fastmap_accurate : 1;



  unsigned no_sub : 1;



  unsigned not_bol : 1;


  unsigned not_eol : 1;



  unsigned used_syntax : 1;
# 415 "../src/regex.h"
};

typedef struct re_pattern_buffer regex_t;






typedef ssize_t regoff_t;




struct re_registers
{
  unsigned num_regs;
  regoff_t *start;
  regoff_t *end;
};
# 448 "../src/regex.h"
typedef struct
{
  regoff_t rm_so;
  regoff_t rm_eo;
} regmatch_t;





extern reg_syntax_t re_set_syntax (reg_syntax_t __syntax);




extern const char *re_compile_pattern (const char *__pattern, size_t __length,
           struct re_pattern_buffer *__buffer);





extern int re_compile_fastmap (struct re_pattern_buffer *__buffer);







extern regoff_t re_search (struct re_pattern_buffer *__buffer,
      const char *__string, size_t __length,
      ssize_t __start, ssize_t __range,
      struct re_registers *__regs);




extern regoff_t re_search_2 (struct re_pattern_buffer *__buffer,
        const char *__string1, size_t __length1,
        const char *__string2, size_t __length2,
        ssize_t __start, ssize_t __range,
        struct re_registers *__regs,
        ssize_t __stop);




extern regoff_t re_match (struct re_pattern_buffer *__buffer,
     const char *__string, size_t __length,
     ssize_t __start, struct re_registers *__regs);



extern regoff_t re_match_2 (struct re_pattern_buffer *__buffer,
       const char *__string1, size_t __length1,
       const char *__string2, size_t __length2,
       ssize_t __start, struct re_registers *__regs,
       ssize_t __stop);
# 521 "../src/regex.h"
extern void re_set_registers (struct re_pattern_buffer *__buffer,
         struct re_registers *__regs,
         unsigned __num_regs,
         regoff_t *__starts, regoff_t *__ends);
# 563 "../src/regex.h"
extern reg_errcode_t regcomp (regex_t *__restrict __preg,
         const char *__restrict __pattern,
         int __cflags);

extern reg_errcode_t regexec (const regex_t *__restrict __preg,
         const char *__restrict __string, size_t __nmatch,
         regmatch_t __pmatch[__restrict],
         int __eflags);

extern size_t regerror (int __errcode, const regex_t * __preg,
   char *__errbuf, size_t __errbuf_size);

extern void regfree (regex_t *__preg);
# 612 "../src/regex.h"
typedef enum { RECC_ERROR = 0,
        RECC_ALNUM, RECC_ALPHA, RECC_WORD,
        RECC_GRAPH, RECC_PRINT,
        RECC_LOWER, RECC_UPPER,
        RECC_PUNCT, RECC_CNTRL,
        RECC_DIGIT, RECC_XDIGIT,
        RECC_BLANK, RECC_SPACE,
        RECC_MULTIBYTE, RECC_NONASCII,
        RECC_ASCII, RECC_UNIBYTE
} re_wctype_t;

extern char re_iswctype (int ch, re_wctype_t cc);
extern re_wctype_t re_wctype (const unsigned char* str);

typedef int re_wchar_t;

extern void re_set_whitespace_regexp (const char *regexp);
# 289 "../src/regex.c" 2


# 1 "/usr/include/ctype.h" 1 3 4
# 47 "/usr/include/ctype.h" 3 4
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 80 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 111 "/usr/include/ctype.h" 3 4
extern int isalnum (int) __attribute__ ((__nothrow__ ));
extern int isalpha (int) __attribute__ ((__nothrow__ ));
extern int iscntrl (int) __attribute__ ((__nothrow__ ));
extern int isdigit (int) __attribute__ ((__nothrow__ ));
extern int islower (int) __attribute__ ((__nothrow__ ));
extern int isgraph (int) __attribute__ ((__nothrow__ ));
extern int isprint (int) __attribute__ ((__nothrow__ ));
extern int ispunct (int) __attribute__ ((__nothrow__ ));
extern int isspace (int) __attribute__ ((__nothrow__ ));
extern int isupper (int) __attribute__ ((__nothrow__ ));
extern int isxdigit (int) __attribute__ ((__nothrow__ ));



extern int tolower (int __c) __attribute__ ((__nothrow__ ));


extern int toupper (int __c) __attribute__ ((__nothrow__ ));
# 137 "/usr/include/ctype.h" 3 4
extern int isblank (int) __attribute__ ((__nothrow__ ));






extern int isctype (int __c, int __mask) __attribute__ ((__nothrow__ ));






extern int isascii (int __c) __attribute__ ((__nothrow__ ));



extern int toascii (int __c) __attribute__ ((__nothrow__ ));



extern int _toupper (int) __attribute__ ((__nothrow__ ));
extern int _tolower (int) __attribute__ ((__nothrow__ ));
# 272 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__ ));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__ ));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));
# 292 "../src/regex.c" 2
# 398 "../src/regex.c"
static char re_syntax_table[256];

static void
init_syntax_once (void)
{
   register int c;
   static int done = 0;

   if (done)
     return;

   memset (re_syntax_table, 0, sizeof re_syntax_table);

   for (c = 0; c < 256; ++c)
     if (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISalnum))
 re_syntax_table[c] = Sword;

   re_syntax_table['_'] = Ssymbol;

   done = 1;
}
# 530 "../src/regex.c"
typedef const unsigned char re_char;
typedef re_char const_re_char;


typedef char boolean;

static regoff_t re_match_2_internal (struct re_pattern_buffer *bufp,
         re_char *string1, size_t size1,
         re_char *string2, size_t size2,
         ssize_t pos,
         struct re_registers *regs,
         ssize_t stop);






typedef enum
{
  no_op = 0,


  succeed,


  exactn,


  anychar,
# 575 "../src/regex.c"
  charset,



  charset_not,





  start_memory,





  stop_memory,



  duplicate,


  begline,


  endline,



  begbuf,


  endbuf,


  jump,



  on_failure_jump,



  on_failure_keep_string_jump,




  on_failure_jump_loop,





  on_failure_jump_nastyloop,







  on_failure_jump_smart,





  succeed_n,



  jump_n,




  set_number_at,

  wordbeg,
  wordend,

  wordbound,
  notwordbound,

  symbeg,
  symend,



  syntaxspec,


  notsyntaxspec
# 686 "../src/regex.c"
} re_opcode_t;
# 714 "../src/regex.c"
static int
extract_number (re_char *source)
{
  unsigned leading_byte = ((signed char) (source[1]));
  return (leading_byte << 8) + source[0];
}







static int
extract_number_and_incr (re_char **source)
{
  int num = extract_number (*source);
  *source += 2;
  return num;
}
# 1212 "../src/regex.c"
reg_syntax_t re_syntax_options;
# 1222 "../src/regex.c"
reg_syntax_t
re_set_syntax (reg_syntax_t syntax)
{
  reg_syntax_t ret = re_syntax_options;

  re_syntax_options = syntax;
  return ret;
}



static const_re_char *whitespace_regexp;

void
re_set_whitespace_regexp (const char *regexp)
{
  whitespace_regexp = (const_re_char *) regexp;
}







static const char *re_error_msgid[] =
  {
    "Success",
    "No match",
    "Invalid regular expression",
    "Invalid collation character",
    "Invalid character class name",
    "Trailing backslash",
    "Invalid back reference",
    "Unmatched [ or [^",
    "Unmatched ( or \\(",
    "Unmatched \\{",
    "Invalid content of \\{\\}",
    "Invalid range end",
    "Memory exhausted",
    "Invalid preceding regular expression",
    "Premature end of regular expression",
    "Regular expression too big",
    "Unmatched ) or \\)",
    "Range striding over charsets"
  };
# 1323 "../src/regex.c"
size_t re_max_failures = 40000;




union fail_stack_elt
{
  re_char *pointer;

  long integer;
};

typedef union fail_stack_elt fail_stack_elt_t;

typedef struct
{
  fail_stack_elt_t *stack;
  size_t size;
  size_t avail;
  size_t frame;
} fail_stack_type;
# 1621 "../src/regex.c"
static reg_errcode_t regex_compile (re_char *pattern, size_t size,
        reg_syntax_t syntax,
        struct re_pattern_buffer *bufp);
static void store_op1 (re_opcode_t op, unsigned char *loc, int arg);
static void store_op2 (re_opcode_t op, unsigned char *loc, int arg1, int arg2);
static void insert_op1 (re_opcode_t op, unsigned char *loc,
   int arg, unsigned char *end);
static void insert_op2 (re_opcode_t op, unsigned char *loc,
   int arg1, int arg2, unsigned char *end);
static boolean at_begline_loc_p (re_char *pattern, re_char *p,
     reg_syntax_t syntax);
static boolean at_endline_loc_p (re_char *p, re_char *pend,
     reg_syntax_t syntax);
static re_char *skip_one_char (re_char *p);
static int analyze_first (re_char *p, re_char *pend,
     char *fastmap, const int multibyte);
# 1770 "../src/regex.c"
typedef int regnum_t;







typedef long pattern_offset_t;

typedef struct
{
  pattern_offset_t begalt_offset;
  pattern_offset_t fixup_alt_jump;
  pattern_offset_t laststart_offset;
  regnum_t regnum;
} compile_stack_elt_t;


typedef struct
{
  compile_stack_elt_t *stack;
  size_t size;
  size_t avail;
} compile_stack_type;
# 1817 "../src/regex.c"
struct range_table_work_area
{
  int *table;
  int allocated;
  int used;
  int bits;
};
# 2018 "../src/regex.c"
re_wctype_t
re_wctype (const_re_char *str)
{
  const char *string = (const char *) str;
  if (((strcmp (string, "alnum") == 0))) return RECC_ALNUM;
  else if (((strcmp (string, "alpha") == 0))) return RECC_ALPHA;
  else if (((strcmp (string, "word") == 0))) return RECC_WORD;
  else if (((strcmp (string, "ascii") == 0))) return RECC_ASCII;
  else if (((strcmp (string, "nonascii") == 0))) return RECC_NONASCII;
  else if (((strcmp (string, "graph") == 0))) return RECC_GRAPH;
  else if (((strcmp (string, "lower") == 0))) return RECC_LOWER;
  else if (((strcmp (string, "print") == 0))) return RECC_PRINT;
  else if (((strcmp (string, "punct") == 0))) return RECC_PUNCT;
  else if (((strcmp (string, "space") == 0))) return RECC_SPACE;
  else if (((strcmp (string, "upper") == 0))) return RECC_UPPER;
  else if (((strcmp (string, "unibyte") == 0))) return RECC_UNIBYTE;
  else if (((strcmp (string, "multibyte") == 0))) return RECC_MULTIBYTE;
  else if (((strcmp (string, "digit") == 0))) return RECC_DIGIT;
  else if (((strcmp (string, "xdigit") == 0))) return RECC_XDIGIT;
  else if (((strcmp (string, "cntrl") == 0))) return RECC_CNTRL;
  else if (((strcmp (string, "blank") == 0))) return RECC_BLANK;
  else return 0;
}


boolean
re_iswctype (int ch, re_wctype_t cc)
{
  switch (cc)
    {
    case RECC_ALNUM: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISalnum) != 0;
    case RECC_ALPHA: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISalpha) != 0;
    case RECC_BLANK: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISblank) != 0;
    case RECC_CNTRL: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _IScntrl) != 0;
    case RECC_DIGIT: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISdigit) != 0;
    case RECC_GRAPH: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISgraph) != 0;
    case RECC_LOWER: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISlower) != 0;
    case RECC_PRINT: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISprint) != 0;
    case RECC_PUNCT: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISpunct) != 0;
    case RECC_SPACE: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISspace) != 0;
    case RECC_UPPER: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISupper) != 0;
    case RECC_XDIGIT: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISxdigit) != 0;
    case RECC_ASCII: return ((ch) < 0200) != 0;
    case RECC_NONASCII: return !((ch) < 0200);
    case RECC_UNIBYTE: return 1 != 0;
    case RECC_MULTIBYTE: return !1;
    case RECC_WORD: return ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISalpha) != 0;
    case RECC_ERROR: return 0;
    default:
      abort ();
    }
}



static int
re_wctype_to_bit (re_wctype_t cc)
{
  switch (cc)
    {
    case RECC_NONASCII:
    case RECC_MULTIBYTE: return 0x20;
    case RECC_ALPHA: return 0x40;
    case RECC_ALNUM: return 0x80;
    case RECC_WORD: return 0x1;
    case RECC_LOWER: return 0x2;
    case RECC_UPPER: return 0x10;
    case RECC_PUNCT: return 0x4;
    case RECC_SPACE: return 0x8;
    case RECC_GRAPH: return 0x100;
    case RECC_PRINT: return 0x200;
    case RECC_ASCII: case RECC_DIGIT: case RECC_XDIGIT: case RECC_CNTRL:
    case RECC_BLANK: case RECC_UNIBYTE: case RECC_ERROR: return 0;
    default:
      abort ();
    }
}






static void
extend_range_table_work_area (struct range_table_work_area *work_area)
{
  work_area->allocated += 16 * sizeof (int);
  work_area->table = xrealloc (work_area->table, work_area->allocated);
}
# 2379 "../src/regex.c"
static boolean group_in_compile_stack (compile_stack_type compile_stack,
           regnum_t regnum);
# 2416 "../src/regex.c"
static reg_errcode_t
regex_compile (const_re_char *pattern, size_t size, reg_syntax_t syntax,
        struct re_pattern_buffer *bufp)
{

  register re_wchar_t c, c1;


  register unsigned char *b;


  compile_stack_type compile_stack;






  re_char *p = pattern;

  re_char *pend = pattern + size;


  char * translate = bufp->translate;





  unsigned char *pending_exact = 0;




  unsigned char *laststart = 0;


  unsigned char *begalt;



  re_char *beg_interval;




  unsigned char *fixup_alt_jump = 0;


  struct range_table_work_area range_table_work;


  const boolean multibyte = 0;


  int in_subpattern = 0;



  re_char *main_p ;
  re_char *main_pattern ;
  re_char *main_pend ;
# 2493 "../src/regex.c"
  compile_stack.stack = ((compile_stack_elt_t *) xmalloc ((32) * sizeof (compile_stack_elt_t)));
  if (compile_stack.stack == ((void*)0))
    return REG_ESPACE;

  compile_stack.size = 32;
  compile_stack.avail = 0;

  range_table_work.table = 0;
  range_table_work.allocated = 0;


  bufp->syntax = syntax;
  bufp->fastmap_accurate = 0;
  bufp->not_bol = bufp->not_eol = 0;
  bufp->used_syntax = 0;




  bufp->used = 0;


  bufp->re_nsub = 0;



   init_syntax_once ();


  if (bufp->allocated == 0)
    {
      if (bufp->buffer)
 {


   ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (32) * sizeof (unsigned char)));
 }
      else
 {
   bufp->buffer = ((unsigned char *) xmalloc ((32) * sizeof (unsigned char)));
 }
      if (!bufp->buffer) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_ESPACE; } while (0);

      bufp->allocated = 32;
    }

  begalt = b = bufp->buffer;


  while (1)
    {
      if (p == pend)
 {


   if (in_subpattern)
     {
       in_subpattern = 0;
       pattern = main_pattern;
       p = main_p;
       pend = main_pend;
       continue;
     }

   break;
 }

      do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);

      switch (c)
 {
 case ' ':
   {
     re_char *p1 = p;



     if (!whitespace_regexp || in_subpattern)
       goto normal_char;


     while (p1 != pend)
       {
  if (*p1 != ' ')
    break;
  p1++;
       }


     if (p1 != pend
  && (*p1 == '*' || *p1 == '+' || *p1 == '?'
      || (*p1 == '\\' && p1 + 1 != pend && p1[1] == '{')))
       goto normal_char;


     in_subpattern = 1;
     main_p = p1;
     main_pend = pend;
     main_pattern = pattern;
     p = pattern = whitespace_regexp;
     pend = p + strlen ((const char *) p);
     break;
   }

 case '^':
   {
     if (
     p == pattern + 1

  || syntax & (((((unsigned long int) 1) << 1) << 1) << 1)

  || at_begline_loc_p (pattern, p, syntax))
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) ((syntax & ((((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) ? begbuf : begline); } while (0);
     else
       goto normal_char;
   }
   break;


 case '$':
   {
     if (
     p == pend

  || syntax & (((((unsigned long int) 1) << 1) << 1) << 1)

  || at_endline_loc_p (p, pend, syntax))
        do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) ((syntax & ((((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) ? endbuf : endline); } while (0);
      else
        goto normal_char;
    }
    break;


 case '+':
 case '?':
   if ((syntax & (((unsigned long int) 1) << 1))
       || (syntax & ((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
     goto normal_char;
 handle_plus:
 case '*':

   if (!laststart)
     {
       if (syntax & (((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1))
  do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADRPT; } while (0);
       else if (!(syntax & ((((((unsigned long int) 1) << 1) << 1) << 1) << 1)))
  goto normal_char;
     }

   {

     boolean zero_times_ok = 0, many_times_ok = 0;
     boolean greedy = 1;






     for (;;)
       {
  if ((syntax & ((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
      && c == '?' && (zero_times_ok || many_times_ok))
    greedy = 0;
  else
    {
      zero_times_ok |= c != '+';
      many_times_ok |= c != '?';
    }

  if (p == pend)
    break;
  else if (*p == '*'
    || (!(syntax & (((unsigned long int) 1) << 1))
        && (*p == '+' || *p == '?')))
    ;
  else if (syntax & (((unsigned long int) 1) << 1) && *p == '\\')
    {
      if (p+1 == pend)
        do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EESCAPE; } while (0);
      if (p[1] == '+' || p[1] == '?')
        do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
      else
        break;
    }
  else
    break;

  do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
        }



     if (!laststart || laststart == b)
       break;



     if (greedy)
       {
  if (many_times_ok)
    {
      boolean simple = skip_one_char (laststart) == b;
      size_t startoffset = 0;
      re_opcode_t ofj =

        (simple || !analyze_first (laststart, b, ((void*)0), 0))
        ? on_failure_jump : on_failure_jump_loop;
                                             ;

      if (!zero_times_ok && simple)
        {


       unsigned char *p1, *p2;
       startoffset = b - laststart;
       while ((size_t) (b - bufp->buffer + (startoffset)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
       p1 = b; p2 = laststart;
       while (p2 < p1)
         *b++ = *p2++;
       zero_times_ok = 1;
        }

      while ((size_t) (b - bufp->buffer + (6)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
      if (!zero_times_ok)

        store_op1 (ofj, b, (b + 6) - (b) - 3);
      else




        insert_op1 (simple ? on_failure_jump_smart : ofj, laststart + startoffset, (b + 6) - (laststart + startoffset) - 3, b);

      b += 3;
      store_op1 (jump, b, (laststart + startoffset) - (b) - 3);
      b += 3;
    }
  else
    {

                            ;
      while ((size_t) (b - bufp->buffer + (3)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
      insert_op1 (on_failure_jump, laststart, (b + 3) - (laststart) - 3, b);
      b += 3;
    }
       }
     else
       {

  while ((size_t) (b - bufp->buffer + (7)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
  if (many_times_ok)
    {
      boolean emptyp = analyze_first (laststart, b, ((void*)0), 0);




      if (emptyp) do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (no_op); } while (0);
      store_op1 (emptyp ? on_failure_jump_nastyloop : on_failure_jump, b, (laststart) - (b) - 3);

      b += 3;
      if (zero_times_ok)
        {



   insert_op1 (jump, laststart, (b) - (laststart) - 3, b);
   b += 3;
        }
    }
  else
    {

      insert_op1 (jump, laststart, (b + 3) - (laststart) - 3, b);
      b += 3;
      insert_op1 (on_failure_jump, laststart, (laststart + 6) - (laststart) - 3, b);
      b += 3;
    }
       }
   }
   pending_exact = 0;
   break;


 case '.':
   laststart = b;
   do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (anychar); } while (0);
   break;


 case '[':
   {
     re_char *p1;

     ((range_table_work).used = 0, (range_table_work).bits = 0);

     if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACK; } while (0);



     while ((size_t) (b - bufp->buffer + (34)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);

     laststart = b;



     do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (*p == '^' ? charset_not : charset); } while (0);
     if (*p == '^')
       p++;


     p1 = p;


     do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) ((1 << 8) / 8); } while (0);


     memset (b, 0, (1 << 8) / 8);


     if ((re_opcode_t) b[-2] == charset_not
  && (syntax & ((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
       (b[(('\n')) / 8] |= 1 << (('\n') % 8));


     for (;;)
       {
  boolean escaped_char = 0;
  const unsigned char *p2 = p;
  re_wchar_t ch;

  if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACK; } while (0);





  do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);


  if ((syntax & ((unsigned long int) 1)) && c == '\\')
    {
      if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EESCAPE; } while (0);

      do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
      escaped_char = 1;
    }
  else
    {



      if (c == ']' && p2 != p1)
        break;
    }




  if (!escaped_char &&
      syntax & ((((unsigned long int) 1) << 1) << 1) && c == '[' && *p == ':')
    {

      unsigned char str[9 + 1];
      const unsigned char *class_beg;

      do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
      c1 = 0;
      class_beg = p;


      if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACK; } while (0);

      for (;;)
        {
          do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
          if ((c == ':' && *p == ']') || p == pend)
            break;
   if (c1 < 9)
     str[c1++] = c;
   else

     str[0] = '\0';
        }
      str[c1] = '\0';





      if (c == ':' && *p == ']')
        {
   re_wctype_t cc = re_wctype (str);

   if (cc == 0)
     do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_ECTYPE; } while (0);



                        do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);

                        if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACK; } while (0);


   for (ch = 0; ch < (1 << 8); ++ch)
     if (re_iswctype (ch, cc))
       {
         c = ((translate) ? ((unsigned char)(translate)[(ch)]) : (ch));
         if (c < (1 << 8))
    (b[((c)) / 8] |= 1 << ((c) % 8));
       }
# 2945 "../src/regex.c"
   if ((1 << cc) & ((1 << RECC_SPACE) | (1 << RECC_WORD)))
     bufp->used_syntax = 1;


   continue;
        }
      else
        {

   p = class_beg;
   (b[(('[')) / 8] |= 1 << (('[') % 8));




   c = ':';
        }
    }

  if (p < pend && p[0] == '-' && p[1] != ']')
    {


      do { int len; if (p == pend) return REG_EEND; c1 = ((len) = 1, *(p)); p += len; } while (0);


      do { int len; if (p == pend) return REG_EEND; c1 = ((len) = 1, *(p)); p += len; } while (0);







    }
  else

    c1 = c;

  if (c > c1)
    {
      if (syntax & ((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
        do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_ERANGEX; } while (0);

    }
  else
    {


      for (; c <= c1; c++)
        {
   ch = ((translate) ? ((unsigned char)(translate)[(c)]) : (c));
   if (ch < (1 << 8))
     (b[((ch)) / 8] |= 1 << ((ch) % 8));
        }
# 3028 "../src/regex.c"
    }
       }



     while ((int) b[-1] > 0 && b[b[-1] - 1] == 0)
       b[-1]--;
     b += b[-1];


     if (((range_table_work).used)
  || ((range_table_work).bits))
       {
  int i;
  int used = ((range_table_work).used);




  while ((size_t) (b - bufp->buffer + (4 + used * 3)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);


  laststart[1] |= 0x80;



  *b++ = ((range_table_work).bits) & 0xff;
  *b++ = ((range_table_work).bits) >> 8;

  do { do { (b)[0] = (used / 2) & 0377; (b)[1] = (used / 2) >> 8; } while (0); (b) += 2; } while (0);
  for (i = 0; i < used; i++)
    do { (b)[0] = (((range_table_work).table[i])) & 0377; (b)[1] = ((((range_table_work).table[i])) >> 8) & 0377; (b)[2] = (((range_table_work).table[i])) >> 16; (b) += 3; } while (0);

       }
   }
   break;


 case '(':
   if (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
     goto handle_open;
   else
     goto normal_char;


 case ')':
   if (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
     goto handle_close;
   else
     goto normal_char;


 case '\n':
   if (syntax & (((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
     goto handle_alt;
   else
     goto normal_char;


 case '|':
   if (syntax & (((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
     goto handle_alt;
   else
     goto normal_char;


 case '{':
    if (syntax & (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) && syntax & ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
      goto handle_interval;
    else
      goto normal_char;


 case '\\':
   if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EESCAPE; } while (0);




   do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);

   switch (c)
     {
     case '(':
       if (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_backslash;

     handle_open:
       {
  int shy = 0;
  regnum_t regnum = 0;
  if (p+1 < pend)
    {

      if ((syntax & (((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) && *p == '?')
        {
   do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
   while (!shy)
     {
       do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
       switch (c)
         {
         case ':': shy = 1; break;
         case '0':


    if (regnum == 0)
      do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADPAT; } while (0);
         case '1': case '2': case '3': case '4':
         case '5': case '6': case '7': case '8': case '9':
    regnum = 10*regnum + (c - '0'); break;
         default:

    do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADPAT; } while (0);
         }
     }
        }
    }

  if (!shy)
    regnum = ++bufp->re_nsub;
  else if (regnum)
    {
      shy = 0;
      if (regnum > bufp->re_nsub)
        bufp->re_nsub = regnum;
      else if (regnum > bufp->re_nsub





        || group_in_compile_stack (compile_stack, regnum))
        do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADPAT; } while (0);
    }
  else

    regnum = - bufp->re_nsub;

  if ((compile_stack.avail == compile_stack.size))
    {
      ((compile_stack.stack) = (compile_stack_elt_t *) xrealloc (compile_stack.stack, (compile_stack.size << 1) * sizeof (compile_stack_elt_t)));

      if (compile_stack.stack == ((void*)0)) return REG_ESPACE;

      compile_stack.size <<= 1;
    }





  (compile_stack.stack[compile_stack.avail]).begalt_offset = begalt - bufp->buffer;
  (compile_stack.stack[compile_stack.avail]).fixup_alt_jump
    = fixup_alt_jump ? fixup_alt_jump - bufp->buffer + 1 : 0;
  (compile_stack.stack[compile_stack.avail]).laststart_offset = b - bufp->buffer;
  (compile_stack.stack[compile_stack.avail]).regnum = regnum;



  if (regnum <= 255 && regnum > 0)
    do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (start_memory); *b++ = (unsigned char) (regnum); } while (0);

  compile_stack.avail++;

  fixup_alt_jump = 0;
  laststart = 0;
  begalt = b;



  pending_exact = 0;
  break;
       }

     case ')':
       if (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) goto normal_backslash;

       if ((compile_stack.avail == 0))
  {
    if (syntax & (((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
      goto normal_backslash;
    else
      do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_ERPAREN; } while (0);
  }

     handle_close:
       do { if (fixup_alt_jump) store_op1 (jump, fixup_alt_jump, (b) - (fixup_alt_jump) - 3); } while (0);


       if ((compile_stack.avail == 0))
  {
    if (syntax & (((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
      goto normal_char;
    else
      do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_ERPAREN; } while (0);
  }



                                        ;
       {



  regnum_t regnum;

  compile_stack.avail--;
  begalt = bufp->buffer + (compile_stack.stack[compile_stack.avail]).begalt_offset;
  fixup_alt_jump
    = (compile_stack.stack[compile_stack.avail]).fixup_alt_jump
      ? bufp->buffer + (compile_stack.stack[compile_stack.avail]).fixup_alt_jump - 1
      : 0;
  laststart = bufp->buffer + (compile_stack.stack[compile_stack.avail]).laststart_offset;
  regnum = (compile_stack.stack[compile_stack.avail]).regnum;



  pending_exact = 0;



  if (regnum <= 255 && regnum > 0)
    do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (stop_memory); *b++ = (unsigned char) (regnum); } while (0);
       }
       break;


     case '|':
       if (syntax & ((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) || syntax & (((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_backslash;
     handle_alt:
       if (syntax & ((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;



       while ((size_t) (b - bufp->buffer + (3)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
       insert_op1 (on_failure_jump, begalt, (b + 6) - (begalt) - 3, b);
       pending_exact = 0;
       b += 3;
# 3286 "../src/regex.c"
       do { if (fixup_alt_jump) store_op1 (jump, fixup_alt_jump, (b) - (fixup_alt_jump) - 3); } while (0);




       fixup_alt_jump = b;
       while ((size_t) (b - bufp->buffer + (3)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
       b += 3;

       laststart = 0;
       begalt = b;
       break;


     case '{':

       if (!(syntax & (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))


    || (syntax & ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
  goto normal_backslash;

     handle_interval:
       {



  int lower_bound = 0, upper_bound = -1;

  beg_interval = p;

  do { if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACE; } while (0); else { do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0); while ('0' <= c && c <= '9') { if (lower_bound < 0) lower_bound = 0; if ((0x7fff) / 10 - ((0x7fff) % 10 < c - '0') < lower_bound) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADBR; } while (0); lower_bound = lower_bound * 10 + c - '0'; if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACE; } while (0); do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0); } } } while (0);

  if (c == ',')
    do { if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACE; } while (0); else { do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0); while ('0' <= c && c <= '9') { if (upper_bound < 0) upper_bound = 0; if ((0x7fff) / 10 - ((0x7fff) % 10 < c - '0') < upper_bound) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADBR; } while (0); upper_bound = upper_bound * 10 + c - '0'; if (p == pend) do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EBRACE; } while (0); do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0); } } } while (0);
  else

    upper_bound = lower_bound;

  if (lower_bound < 0
      || (0 <= upper_bound && upper_bound < lower_bound))
    do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADBR; } while (0);

  if (!(syntax & ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
    {
      if (c != '\\')
        do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADBR; } while (0);
      if (p == pend)
        do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EESCAPE; } while (0);
      do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
    }

  if (c != '}')
    do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADBR; } while (0);




  if (!laststart)
    {
      if (syntax & (((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1))
        do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADRPT; } while (0);
      else if (syntax & ((((((unsigned long int) 1) << 1) << 1) << 1) << 1))
        laststart = b;
      else
        goto unfetch_interval;
    }

  if (upper_bound == 0)


    b = laststart;
  else if (lower_bound == 1 && upper_bound == 1)

    ;
# 3371 "../src/regex.c"
  else
    {

      unsigned int nbytes = (upper_bound < 0 ? 3
        : upper_bound > 1 ? 5 : 0);
      unsigned int startoffset = 0;

      while ((size_t) (b - bufp->buffer + (20)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);

      if (lower_bound == 0)
        {


   insert_op1 (on_failure_jump_loop, laststart, (b + 3 + nbytes) - (laststart) - 3, b);

   b += 3;
        }
      else
        {





   insert_op2 (succeed_n, laststart, (b + 5 + nbytes) - (laststart) - 3, lower_bound, b);


   b += 5;





   insert_op2 (set_number_at, laststart, 5, lower_bound, b);
   b += 5;
   startoffset += 5;
        }

      if (upper_bound < 0)
        {


   store_op1 (jump, b, (laststart + startoffset) - (b) - 3);
   b += 3;
        }
      else if (upper_bound > 1)
        {






   store_op2 (jump_n, b, (laststart + startoffset) - (b) - 3, upper_bound - 1);

   b += 5;
# 3442 "../src/regex.c"
   insert_op2 (set_number_at, laststart, b - laststart,
        upper_bound - 1, b);
   b += 5;
        }
    }
  pending_exact = 0;
  beg_interval = ((void*)0);
       }
       break;

     unfetch_interval:

                             ;
        p = beg_interval;
        beg_interval = ((void*)0);


        c = '{';

        if (!(syntax & ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
   {
                                          ;
     goto normal_backslash;
   }
        else
   goto normal_char;
# 3503 "../src/regex.c"
     case 'w':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       laststart = b;
       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (syntaxspec); *b++ = (unsigned char) (Sword); } while (0);
       break;


     case 'W':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       laststart = b;
       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (notsyntaxspec); *b++ = (unsigned char) (Sword); } while (0);
       break;


     case '<':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       laststart = b;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (wordbeg); } while (0);
       break;

     case '>':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       laststart = b;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (wordend); } while (0);
       break;

     case '_':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
              laststart = b;
              do { int len; if (p == pend) return REG_EEND; c = ((len) = 1, *(p)); p += len; } while (0);
              if (c == '<')
                do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (symbeg); } while (0);
              else if (c == '>')
                do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (symend); } while (0);
              else
                do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_BADPAT; } while (0);
              break;

     case 'b':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (wordbound); } while (0);
       break;

     case 'B':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (notwordbound); } while (0);
       break;

     case '`':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (begbuf); } while (0);
       break;

     case '\'':
       if (syntax & (((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
  goto normal_char;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (endbuf); } while (0);
       break;

     case '1': case '2': case '3': case '4': case '5':
     case '6': case '7': case '8': case '9':
       {
  regnum_t reg;

  if (syntax & ((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
    goto normal_backslash;

  reg = c - '0';

  if (reg > bufp->re_nsub || reg < 1

      || group_in_compile_stack (compile_stack, reg))
    do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_ESUBREG; } while (0);

  laststart = b;
  do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (duplicate); *b++ = (unsigned char) (reg); } while (0);
       }
       break;


     case '+':
     case '?':
       if (syntax & (((unsigned long int) 1) << 1))
  goto handle_plus;
       else
  goto normal_backslash;

     default:
     normal_backslash:



       goto normal_char;
     }
   break;


 default:

 normal_char:

   if (!pending_exact


       || pending_exact + *pending_exact + 1 != b


       || *pending_exact >= (1 << 8) - 1


       || (p != pend && (*p == '*' || *p == '^'))
       || ((syntax & (((unsigned long int) 1) << 1))
    ? p + 1 < pend && *p == '\\' && (p[1] == '+' || p[1] == '?')
    : p != pend && (*p == '+' || *p == '?'))
       || ((syntax & (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
    && ((syntax & ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
        ? p != pend && *p == '{'
        : p + 1 < pend && p[0] == '\\' && p[1] == '{')))
     {


       laststart = b;

       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (exactn); *b++ = (unsigned char) (0); } while (0);
       pending_exact = b - 1;
     }

   while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
   {
     int len;

     if (multibyte)
       {
  c = ((translate) ? ((unsigned char)(translate)[(c)]) : (c));
  len = (*(b) = (c), 1);
  b += len;
       }
     else
       {
  c1 = (c);
  if (! (0))
    {
      re_wchar_t c2 = ((translate) ? ((unsigned char)(translate)[(c1)]) : (c1));

      if (c1 != c2 && (c1 = (c2)) >= 0)
        c = c1;
    }
  *b++ = c;
  len = 1;
       }
     (*pending_exact) += len;
   }

   break;
 }
    }




  do { if (fixup_alt_jump) store_op1 (jump, fixup_alt_jump, (b) - (fixup_alt_jump) - 3); } while (0);

  if (!(compile_stack.avail == 0))
    do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_EPAREN; } while (0);



  if (syntax & ((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
    do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (succeed); } while (0);


  bufp->used = b - bufp->buffer;
# 3712 "../src/regex.c"
  do { do { if ((range_table_work).table) free ((range_table_work).table); } while (0); free (compile_stack.stack); return REG_NOERROR; } while (0);
}





static void
store_op1 (re_opcode_t op, unsigned char *loc, int arg)
{
  *loc = (unsigned char) op;
  do { (loc + 1)[0] = (arg) & 0377; (loc + 1)[1] = (arg) >> 8; } while (0);
}




static void
store_op2 (re_opcode_t op, unsigned char *loc, int arg1, int arg2)
{
  *loc = (unsigned char) op;
  do { (loc + 1)[0] = (arg1) & 0377; (loc + 1)[1] = (arg1) >> 8; } while (0);
  do { (loc + 3)[0] = (arg2) & 0377; (loc + 3)[1] = (arg2) >> 8; } while (0);
}





static void
insert_op1 (re_opcode_t op, unsigned char *loc, int arg, unsigned char *end)
{
  register unsigned char *pfrom = end;
  register unsigned char *pto = end + 3;

  while (pfrom != loc)
    *--pto = *--pfrom;

  store_op1 (op, loc, arg);
}




static void
insert_op2 (re_opcode_t op, unsigned char *loc, int arg1, int arg2, unsigned char *end)
{
  register unsigned char *pfrom = end;
  register unsigned char *pto = end + 5;

  while (pfrom != loc)
    *--pto = *--pfrom;

  store_op2 (op, loc, arg1, arg2);
}






static boolean
at_begline_loc_p (const_re_char *pattern, const_re_char *p, reg_syntax_t syntax)
{
  re_char *prev = p - 2;
  boolean odd_backslashes;


  if (*prev == '(')
    odd_backslashes = (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) == 0;


  else if (*prev == '|')
    odd_backslashes = (syntax & (((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) == 0;


  else if (*prev == ':' && (syntax & (((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
    {

      while (prev - 1 >= pattern && prev[-1] >= '0' && prev[-1] <= '9')
 --prev;

      if (!(prev - 2 >= pattern
     && prev[-1] == '?' && prev[-2] == '('))
 return 0;
      prev -= 2;
      odd_backslashes = (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) == 0;
    }
  else
    return 0;


  p = prev;
  while (prev - 1 >= pattern && prev[-1] == '\\')
    --prev;
  return (p - prev) & odd_backslashes;
}





static boolean
at_endline_loc_p (const_re_char *p, const_re_char *pend, reg_syntax_t syntax)
{
  re_char *next = p;
  boolean next_backslash = *next == '\\';
  re_char *next_next = p + 1 < pend ? p + 1 : 0;

  return

       (syntax & (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) ? *next == ')'
 : next_backslash && next_next && *next_next == ')')

    || (syntax & (((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) ? *next == '|'
 : next_backslash && next_next && *next_next == '|');
}





static boolean
group_in_compile_stack (compile_stack_type compile_stack, regnum_t regnum)
{
  ssize_t this_element;

  for (this_element = compile_stack.avail - 1;
       this_element >= 0;
       this_element--)
    if (compile_stack.stack[this_element].regnum == regnum)
      return 1;

  return 0;
}
# 3858 "../src/regex.c"
static int
analyze_first (const_re_char *p, const_re_char *pend, char *fastmap,
        const int multibyte)
{
  int j, k;
  boolean not;



  boolean match_any_multibyte_characters = 0;

            ;
# 3886 "../src/regex.c"
  while (p < pend)
    {
# 3896 "../src/regex.c"
      re_char *p1 = p;

      switch (*p++)
 {
 case succeed:
   return 1;

 case duplicate:




   p++;
   continue;





 case exactn:
   if (fastmap)
     {




       fastmap[p[1]] = 1;
       if (! multibyte)
  {



    int c = (p[1]);

    fastmap[(c)] = 1;
  }
     }
   break;


 case anychar:


   if (!fastmap) break;
   return -1;


 case charset_not:
   if (!fastmap) break;
   {

     for (j = ((&p[-1])[1] & 0x7F) * 8;
   j < (1 << 8); j++)
       fastmap[j] = 1;
   }


 case charset:
   if (!fastmap) break;
   not = (re_opcode_t) *(p - 1) == charset_not;
   for (j = ((&p[-1])[1] & 0x7F) * 8 - 1, p++;
        j >= 0; j--)
     if (!!(p[j / 8] & (1 << (j % 8))) ^ not)
       fastmap[j] = 1;
# 4008 "../src/regex.c"
   break;

 case syntaxspec:
 case notsyntaxspec:
   if (!fastmap) break;

   not = (re_opcode_t)p[-1] == notsyntaxspec;
   k = *p++;
   for (j = 0; j < (1 << 8); j++)
     if ((re_syntax_table[(j)] == (enum syntaxcode) k) ^ not)
       fastmap[j] = 1;
   break;
# 4052 "../src/regex.c"
 case no_op:
 case begline:
 case endline:
 case begbuf:
 case endbuf:
 case wordbound:
 case notwordbound:
 case wordbeg:
 case wordend:
 case symbeg:
 case symend:
   continue;


 case jump:
   ((j) = extract_number_and_incr (&p));
   if (j < 0)


     break;
   p += j;
   switch (*p)
     {
     case on_failure_jump:
     case on_failure_keep_string_jump:
     case on_failure_jump_loop:
     case on_failure_jump_nastyloop:
     case on_failure_jump_smart:
       p++;
       break;
     default:
       continue;
     };




 case on_failure_jump:
 case on_failure_keep_string_jump:
 case on_failure_jump_nastyloop:
 case on_failure_jump_loop:
 case on_failure_jump_smart:
   ((j) = extract_number_and_incr (&p));
   if (p + j <= p1)
     ;
   else
     {


       int r = analyze_first (p, pend, fastmap, multibyte);
       if (r) return r;
       p += j;
     }
   continue;


 case jump_n:

                                                          ;
   p += 4;



   continue;

 case succeed_n:

                                                              ;
   p += 4;



   continue;


 case set_number_at:
   p += 4;
   continue;


 case start_memory:
 case stop_memory:
   p += 1;
   continue;


 default:
   abort ();
 }




      return 0;
    }


  return 1;

}
# 4170 "../src/regex.c"
int
re_compile_fastmap (struct re_pattern_buffer *bufp)
{
  char *fastmap = bufp->fastmap;
  int analysis;

                                  ;

  memset (fastmap, 0, 1 << 8);
  bufp->fastmap_accurate = 1;

  analysis = analyze_first (bufp->buffer, bufp->buffer + bufp->used,
       fastmap, 0);
  bufp->can_be_null = (analysis != 0);
  return 0;
}
# 4200 "../src/regex.c"
void
re_set_registers (struct re_pattern_buffer *bufp, struct re_registers *regs, unsigned int num_regs, regoff_t *starts, regoff_t *ends)
{
  if (num_regs)
    {
      bufp->regs_allocated = 1;
      regs->num_regs = num_regs;
      regs->start = starts;
      regs->end = ends;
    }
  else
    {
      bufp->regs_allocated = 0;
      regs->num_regs = 0;
      regs->start = regs->end = 0;
    }
}







regoff_t
re_search (struct re_pattern_buffer *bufp, const char *string, size_t size,
    ssize_t startpos, ssize_t range, struct re_registers *regs)
{
  return re_search_2 (bufp, ((void*)0), 0, string, size, startpos, range,
        regs, size);
}
# 4262 "../src/regex.c"
regoff_t
re_search_2 (struct re_pattern_buffer *bufp, const char *str1, size_t size1,
      const char *str2, size_t size2, ssize_t startpos, ssize_t range,
      struct re_registers *regs, ssize_t stop)
{
  regoff_t val;
  re_char *string1 = (re_char*) str1;
  re_char *string2 = (re_char*) str2;
  register char *fastmap = bufp->fastmap;
  register char * translate = bufp->translate;
  size_t total_size = size1 + size2;
  ssize_t endpos = startpos + range;
  boolean anchored_start;

  const boolean multibyte = 0;


  if (startpos < 0 || startpos > total_size)
    return -1;




  if (endpos < 0)
    range = 0 - startpos;
  else if (endpos > total_size)
    range = total_size - startpos;



  if (bufp->used > 0 && (re_opcode_t) bufp->buffer[0] == begbuf && range > 0)
    {
      if (startpos > 0)
 return -1;
      else
 range = 0;
    }
# 4312 "../src/regex.c"
  if (fastmap && !bufp->fastmap_accurate)
    re_compile_fastmap (bufp);


  anchored_start = (bufp->buffer[0] == begline);
# 4328 "../src/regex.c"
  for (;;)
    {




      if (anchored_start && startpos > 0)
 {
   if (! ((startpos <= size1 ? string1[startpos - 1]
    : string2[startpos - size1 - 1])
   == '\n'))
     goto advance;
 }





      if (fastmap && startpos < total_size && !bufp->can_be_null)
 {
   register re_char *d;
   register re_wchar_t buf_ch;

   d = (((startpos) >= size1 ? string2 - size1 : string1) + (startpos));

   if (range > 0)
     {
       ssize_t irange = range, lim = 0;

       if (startpos < size1 && startpos + range >= size1)
  lim = range - (size1 - startpos);



       if ((translate))
  {
    if (multibyte)
      while (range > lim)
        {
   int buf_charlen;

   buf_ch = ((buf_charlen) = 1, *(d));
   buf_ch = ((unsigned char)(translate)[buf_ch]);
   if (fastmap[(buf_ch)])
     break;

   range -= buf_charlen;
   d += buf_charlen;
        }
    else
      while (range > lim)
        {
   register re_wchar_t ch, translated;

   buf_ch = *d;
   ch = (buf_ch);
   translated = ((unsigned char)(translate)[ch]);
   if (translated != ch
       && (ch = (translated)) >= 0)
     buf_ch = ch;
   if (fastmap[buf_ch])
     break;
   d++;
   range--;
        }
  }
       else
  {
    if (multibyte)
      while (range > lim)
        {
   int buf_charlen;

   buf_ch = ((buf_charlen) = 1, *(d));
   if (fastmap[(buf_ch)])
     break;
   range -= buf_charlen;
   d += buf_charlen;
        }
    else
      while (range > lim && !fastmap[*d])
        {
   d++;
   range--;
        }
  }
       startpos += irange - range;
     }
   else
     {
       if (multibyte)
  {
    buf_ch = (*(d));
    buf_ch = ((translate) ? ((unsigned char)(translate)[(buf_ch)]) : (buf_ch));
    if (! fastmap[(buf_ch)])
      goto advance;
  }
       else
  {
    register re_wchar_t ch, translated;

    buf_ch = *d;
    ch = (buf_ch);
    translated = ((translate) ? ((unsigned char)(translate)[(ch)]) : (ch));
    if (translated != ch
        && (ch = (translated)) >= 0)
      buf_ch = ch;
    if (! fastmap[((translate) ? ((unsigned char)(translate)[(buf_ch)]) : (buf_ch))])
      goto advance;
  }
     }
 }


      if (range >= 0 && startpos == total_size && fastmap
   && !bufp->can_be_null)
 return -1;

      val = re_match_2_internal (bufp, string1, size1, string2, size2,
     startpos, regs, stop);

      if (val >= 0)
 return startpos;

      if (val == -2)
 return -2;

    advance:
      if (!range)
 break;
      else if (range > 0)
 {

   if (multibyte)
     {
       re_char *p = (((startpos) >= size1 ? string2 - size1 : string1) + (startpos));
       int len = (1);

       range -= len;
       if (range < 0)
  break;
       startpos += len;
     }
   else
     {
       range--;
       startpos++;
     }
 }
      else
 {
   range++;
   startpos--;


   if (multibyte)
     {
       re_char *p = (((startpos) >= size1 ? string2 - size1 : string1) + (startpos)) + 1;
       re_char *p0 = p;
       re_char *phead = (((startpos) >= size1 ? string2 : string1));


       ((p)--);
       range += p0 - 1 - p;
       if (range > 0)
  break;

       startpos -= p0 - 1 - p;
     }
 }
    }
  return -1;
}




static int bcmp_translate (re_char *s1, re_char *s2,
      register ssize_t len,
      char * translate,
      const int multibyte);
# 4603 "../src/regex.c"
static re_char *
skip_one_char (const_re_char *p)
{
  switch (*p++)
    {
    case anychar:
      break;

    case exactn:
      p += *p + 1;
      break;

    case charset_not:
    case charset:
      if (((p - 1)[1] & 0x80))
 {
   int mcnt;
   p = (&(p - 1)[4 + ((p - 1)[1] & 0x7F)]);
   ((mcnt) = extract_number_and_incr (&p));
   p = ((p) + (mcnt) * 2 * 3);
 }
      else
 p += 1 + ((p - 1)[1] & 0x7F);
      break;

    case syntaxspec:
    case notsyntaxspec:




      p++;
      break;

    default:
      p = ((void*)0);
    }
  return p;
}



static re_char *
skip_noops (const_re_char *p, const_re_char *pend)
{
  int mcnt;
  while (p < pend)
    {
      switch (*p)
 {
 case start_memory:
 case stop_memory:
   p += 2; break;
 case no_op:
   p += 1; break;
 case jump:
   p += 1;
   ((mcnt) = extract_number_and_incr (&p));
   p += mcnt;
   break;
 default:
   return p;
 }
    }
                    ;
  return p;
}


static int
mutually_exclusive_p (struct re_pattern_buffer *bufp, const_re_char *p1,
        const_re_char *p2)
{
  re_opcode_t op2;
  const boolean multibyte = 0;
  unsigned char *pend = bufp->buffer + bufp->used;


                                       ;





  p2 = skip_noops (p2, pend);





                                       ;

  op2 = p2 == pend ? succeed : *p2;

  switch (op2)
    {
    case succeed:
    case endbuf:

      if (skip_one_char (p1))
 {
                                                 ;
   return 1;
 }
      break;

    case endline:
    case exactn:
      {
 register re_wchar_t c
   = (re_opcode_t) *p2 == endline ? '\n'
   : (*(p2 + 2));

 if ((re_opcode_t) *p1 == exactn)
   {
     if (c != (*(p1 + 2)))
       {
                                                          ;
  return 1;
       }
   }

 else if ((re_opcode_t) *p1 == charset
   || (re_opcode_t) *p1 == charset_not)
   {
     int not = (re_opcode_t) *p1 == charset_not;



     if (! multibyte || ((c) < 0200))
       {
  if (c < ((p1)[1] & 0x7F) * 8
      && p1[2 + c / 8] & (1 << (c % 8)))
    not = !not;
       }
     else if (((p1)[1] & 0x80))
       do { int count; re_char *range_table = (&(p1)[4 + ((p1)[1] & 0x7F)]); ((count) = extract_number_and_incr (&range_table)); do { re_wchar_t range_start, range_end; re_char *rtp; re_char *range_table_end = (((range_table)) + ((count)) * 2 * 3); for (rtp = (range_table); rtp < range_table_end; rtp += 2 * 3) { do { (range_start) = ((rtp)[0] | ((rtp)[1] << 8) | ((rtp)[2] << 16)); } while (0); do { (range_end) = ((rtp + 3)[0] | ((rtp + 3)[1] << 8) | ((rtp + 3)[2] << 16)); } while (0); if (range_start <= ((c)) && ((c)) <= range_end) { ((not)) = !((not)); break; } } } while (0); } while (0);



     if (!not)
       {
                                            ;
  return 1;
       }
   }
 else if ((re_opcode_t) *p1 == anychar
   && c == '\n')
   {
                                                ;
     return 1;
   }
      }
      break;

    case charset:
      {
 if ((re_opcode_t) *p1 == exactn)

   return mutually_exclusive_p (bufp, p2, p1);




      else if (!multibyte || !((p2)[1] & 0x80))
 {
# 4780 "../src/regex.c"
   if ((re_opcode_t) *p1 == charset)
     {
       int idx;


       for (idx = 0;
     (idx < (int) p2[1]
      && idx < ((p1)[1] & 0x7F));
     idx++)
  if ((p2[2 + idx] & p1[2 + idx]) != 0)
    break;

       if (idx == p2[1]
    || idx == ((p1)[1] & 0x7F))
  {
                                              ;
    return 1;
  }
     }
   else if ((re_opcode_t) *p1 == charset_not)
     {
       int idx;


       for (idx = 0; idx < (int) p2[1]; idx++)
  if (! (p2[2 + idx] == 0
         || (idx < ((p1)[1] & 0x7F)
      && ((p2[2 + idx] & ~ p1[2 + idx]) == 0))))
    break;

       if (idx == p2[1])
  {
                                              ;
    return 1;
  }
       }
   }
      }
      break;

    case charset_not:
      switch (*p1)
 {
 case exactn:
 case charset:

   return mutually_exclusive_p (bufp, p2, p1);
 case charset_not:




   break;
 }
      break;

    case wordend:
      return ((re_opcode_t) *p1 == syntaxspec && p1[1] == Sword);
    case symend:
      return ((re_opcode_t) *p1 == syntaxspec
              && (p1[1] == Ssymbol || p1[1] == Sword));
    case notsyntaxspec:
      return ((re_opcode_t) *p1 == syntaxspec && p1[1] == p2[1]);

    case wordbeg:
      return ((re_opcode_t) *p1 == notsyntaxspec && p1[1] == Sword);
    case symbeg:
      return ((re_opcode_t) *p1 == notsyntaxspec
              && (p1[1] == Ssymbol || p1[1] == Sword));
    case syntaxspec:
      return ((re_opcode_t) *p1 == notsyntaxspec && p1[1] == p2[1]);

    case wordbound:
      return (((re_opcode_t) *p1 == notsyntaxspec
        || (re_opcode_t) *p1 == syntaxspec)
       && p1[1] == Sword);
# 4864 "../src/regex.c"
    default:
      ;
    }


  return 0;
}







regoff_t
re_match (struct re_pattern_buffer *bufp, const char *string,
   size_t size, ssize_t pos, struct re_registers *regs)
{
  regoff_t result = re_match_2_internal (bufp, ((void*)0), 0, (re_char*) string,
      size, pos, regs, size);
  return result;
}
# 4908 "../src/regex.c"
regoff_t
re_match_2 (struct re_pattern_buffer *bufp, const char *string1,
     size_t size1, const char *string2, size_t size2, ssize_t pos,
     struct re_registers *regs, ssize_t stop)
{
  regoff_t result;
# 4922 "../src/regex.c"
  result = re_match_2_internal (bufp, (re_char*) string1, size1,
    (re_char*) string2, size2,
    pos, regs, stop);
  return result;
}





static regoff_t
re_match_2_internal (struct re_pattern_buffer *bufp, const_re_char *string1,
       size_t size1, const_re_char *string2, size_t size2,
       ssize_t pos, struct re_registers *regs, ssize_t stop)
{

  int mcnt;
  size_t reg;


  re_char *end1, *end2;



  re_char *end_match_1, *end_match_2;


  re_char *d, *dend;





  re_char *dfail;


  re_char *p = bufp->buffer;
  re_char *pend = p + bufp->used;


  char * translate = bufp->translate;


  const boolean multibyte = 0;


  const boolean target_multibyte = 0;
# 4978 "../src/regex.c"
  fail_stack_type fail_stack;
# 4993 "../src/regex.c"
  size_t num_regs = bufp->re_nsub + 1;
# 5003 "../src/regex.c"
  re_char **regstart, **regend;






  unsigned best_regs_set = 0;

  re_char **best_regstart, **best_regend;
# 5023 "../src/regex.c"
  re_char *match_end = ((void*)0);






                                            ;

  ((void) 0);

  do { fail_stack.stack = __builtin_alloca (20 * 20 * sizeof (fail_stack_elt_t)); if (fail_stack.stack == ((void*)0)) return -2; fail_stack.size = 20; fail_stack.avail = 0; fail_stack.frame = 0; } while (0);







  if (bufp->re_nsub)
    {
      regstart = ((re_char * *) __builtin_alloca ((num_regs) * sizeof (re_char *)));
      regend = ((re_char * *) __builtin_alloca ((num_regs) * sizeof (re_char *)));
      best_regstart = ((re_char * *) __builtin_alloca ((num_regs) * sizeof (re_char *)));
      best_regend = ((re_char * *) __builtin_alloca ((num_regs) * sizeof (re_char *)));

      if (!(regstart && regend && best_regstart && best_regend))
 {
   do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); ((void) 0); } while (0);
   return -2;
 }
    }
  else
    {


      regstart = regend = best_regstart = best_regend = ((void*)0);
    }



  if (pos < 0 || pos > size1 + size2)
    {
      do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); ((void) 0); } while (0);
      return -1;
    }




  for (reg = 1; reg < num_regs; reg++)
    regstart[reg] = regend[reg] = ((void*)0);



  if (size2 == 0 && string1 != ((void*)0))
    {
      string2 = string1;
      size2 = size1;
      string1 = 0;
      size1 = 0;
    }
  end1 = string1 + size1;
  end2 = string2 + size2;







  if (pos >= size1)
    {

      d = string2 + pos - size1;
      dend = end_match_2 = string2 + stop - size1;
      end_match_1 = end1;
    }
  else
    {
      if (stop < size1)
 {

   end_match_1 = string1 + stop;
# 5115 "../src/regex.c"
   end_match_2 = end_match_1;
 }
      else
 {


   end_match_1 = end1;
   end_match_2 = string2 + stop - size1;
 }
      d = string1 + pos;
      dend = end_match_1;
    }

                                           ;
                                              ;
                                            ;
                                                               ;
                      ;




  for (;;)
    {
                               ;

      if (p == pend)
 {
   ptrdiff_t dcnt;


                                      ;



   if (d != end_match_2)
     {


       boolean same_str_p = ((size1 && string1 <= (match_end) && (match_end) <= string1 + size1)
        == (size1 && string1 <= (d) && (d) <= string1 + size1));

       boolean best_match_p;



       if (same_str_p)
  best_match_p = d > match_end;
       else
  best_match_p = !(size1 && string1 <= (d) && (d) <= string1 + size1);

                                      ;

       if (!(fail_stack.frame == 0))
  {


    if (!best_regs_set || best_match_p)
      {
        best_regs_set = 1;
        match_end = d;

                                                        ;

        for (reg = 1; reg < num_regs; reg++)
   {
     best_regstart[reg] = regstart[reg];
     best_regend[reg] = regend[reg];
   }
      }
    goto fail;
  }




       else if (best_regs_set && !best_match_p)
  {
  restore_best_regs:





                                               ;

    d = match_end;
    dend = ((d >= string1 && d <= end1)
      ? end_match_1 : end_match_2);

    for (reg = 1; reg < num_regs; reg++)
      {
        regstart[reg] = best_regstart[reg];
        regend[reg] = best_regend[reg];
      }
  }
     }

 succeed_label:
                                     ;


   if (regs && !bufp->no_sub)
     {

       if (bufp->regs_allocated == 0)
  {


    regs->num_regs = ((30) > (num_regs + 1) ? (30) : (num_regs + 1));
    regs->start = ((regoff_t *) xmalloc ((regs->num_regs) * sizeof (regoff_t)));
    regs->end = ((regoff_t *) xmalloc ((regs->num_regs) * sizeof (regoff_t)));
    if (regs->start == ((void*)0) || regs->end == ((void*)0))
      {
        do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); ((void) 0); } while (0);
        return -2;
      }
    bufp->regs_allocated = 1;
  }
       else if (bufp->regs_allocated == 1)
  {


    if (regs->num_regs < num_regs + 1)
      {
        regs->num_regs = num_regs + 1;
        ((regs->start) = (regoff_t *) xrealloc (regs->start, (regs->num_regs) * sizeof (regoff_t)));
        ((regs->end) = (regoff_t *) xrealloc (regs->end, (regs->num_regs) * sizeof (regoff_t)));
        if (regs->start == ((void*)0) || regs->end == ((void*)0))
   {
     do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); ((void) 0); } while (0);
     return -2;
   }
      }
  }
       else
  {


                                               ;
  }




       if (regs->num_regs > 0)
  {
    regs->start[0] = pos;
    regs->end[0] = ((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1);
  }



       for (reg = 1; reg < ((num_regs) < (regs->num_regs) ? (num_regs) : (regs->num_regs)); reg++)
  {
    if (((regstart[reg]) == ((void*)0)) || ((regend[reg]) == ((void*)0)))
      regs->start[reg] = regs->end[reg] = -1;
    else
      {
        regs->start[reg] = ((size1 && string1 <= (regstart[reg]) && (regstart[reg]) <= string1 + size1) ? (regstart[reg]) - string1 : (regstart[reg]) - string2 + (ptrdiff_t) size1);
        regs->end[reg] = ((size1 && string1 <= (regend[reg]) && (regend[reg]) <= string1 + size1) ? (regend[reg]) - string1 : (regend[reg]) - string2 + (ptrdiff_t) size1);
      }
  }






       for (reg = num_regs; reg < regs->num_regs; reg++)
  regs->start[reg] = regs->end[reg] = -1;
     }



                                                         ;
                                                          ;

   dcnt = ((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1) - pos;

                                                         ;

   do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); ((void) 0); } while (0);
   return dcnt;
 }


      switch (*p++)
 {


 case no_op:
                                     ;
   break;

 case succeed:
                                       ;
   goto succeed_label;




 case exactn:
   mcnt = *p++;
                                               ;


   dfail = d;




   if ((translate))
     do
       {
  while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
  if (((unsigned char)(translate)[*d]) != *p++)
    {
      d = dfail;
      goto fail;
    }
  d++;
       }
     while (--mcnt);
   else
     do
       {
  while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
  if (*d++ != *p++)
    {
      d = dfail;
      goto fail;
    }
       }
     while (--mcnt);
# 5416 "../src/regex.c"
   break;



 case anychar:
   {
     int buf_charlen;
     re_wchar_t buf_ch;

                                         ;

     while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
     buf_ch = ((buf_charlen) = 1, *(d));

     buf_ch = ((translate) ? ((unsigned char)(translate)[(buf_ch)]) : (buf_ch));

     if ((!(bufp->syntax & ((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1))
   && buf_ch == '\n')
  || ((bufp->syntax & (((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
      && buf_ch == '\000'))
       goto fail;

                                            ;
     d += buf_charlen;
   }
   break;


 case charset:
 case charset_not:
   {
     register unsigned int c, corig;
     boolean not = (re_opcode_t) *(p - 1) == charset_not;
     int len;



     re_char *range_table ;


     int range_table_exists;



     int count = 0;


     boolean unibyte_char = 0;

                                                              ;

     range_table_exists = ((&p[-1])[1] & 0x80);

     if (range_table_exists)
       {
  range_table = (&(&p[-1])[4 + ((&p[-1])[1] & 0x7F)]);
  ((count) = extract_number_and_incr (&range_table));
       }

     while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
     corig = c = ((len) = 1, *(d));
     if (target_multibyte)
       {
  int c1;

  c = ((translate) ? ((unsigned char)(translate)[(c)]) : (c));
  c1 = (c);
  if (c1 >= 0)
    {
      unibyte_char = 1;
      c = c1;
    }
       }
     else
       {
  int c1 = (c);

  if (! (0))
    {
      c1 = ((translate) ? ((unsigned char)(translate)[(c1)]) : (c1));
      c1 = (c1);
      if (c1 >= 0)
        {
   unibyte_char = 1;
   c = c1;
        }
    }
  else
    unibyte_char = 1;
       }

     if (unibyte_char && c < (1 << 8))
       {


  if (c < (unsigned) (((&p[-1])[1] & 0x7F) * 8)
      && p[1 + c / 8] & (1 << (c % 8)))
    not = !not;
       }
# 5542 "../src/regex.c"
     if (range_table_exists)
       p = ((range_table) + (count) * 2 * 3);
     else
       p += ((&p[-1])[1] & 0x7F) + 1;

     if (!not) goto fail;

     d += len;
   }
   break;






 case start_memory:
                                                   ;


   do { char *destination; long n = *p; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; fail_stack.stack[fail_stack.avail++].pointer = (regstart[n]); fail_stack.stack[fail_stack.avail++].pointer = (regend[n]); fail_stack.stack[fail_stack.avail++].integer = (n); } while (0);

   regstart[*p] = d;
   regend[*p] = ((void*)0);
                                                                      ;


   p += 1;
   break;




 case stop_memory:
                                                  ;

                                     ;
# 5593 "../src/regex.c"
   regend[*p] = d;
                                                                      ;


   p += 1;
   break;




 case duplicate:
   {
     register re_char *d2, *dend2;
     int regno = *p++;
                                                     ;


     if (((regstart[regno]) == ((void*)0)) || ((regend[regno]) == ((void*)0)))
       goto fail;


     d2 = regstart[regno];


     dfail = d;






     dend2 = (((size1 && string1 <= (regstart[regno]) && (regstart[regno]) <= string1 + size1)
        == (size1 && string1 <= (regend[regno]) && (regend[regno]) <= string1 + size1))
       ? regend[regno] : end_match_1);
     for (;;)
       {
  ptrdiff_t dcnt;



  while (d2 == dend2)
    {
      if (dend2 == end_match_2) break;
      if (dend2 == regend[regno]) break;


      d2 = string2;
      dend2 = regend[regno];
    }

  if (d2 == dend2) break;


  while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };


  dcnt = dend - d;



  if (dcnt > dend2 - d2)
    dcnt = dend2 - d2;



  if ((translate)
      ? bcmp_translate (d, d2, dcnt, translate, target_multibyte)
      : memcmp (d, d2, dcnt))
    {
      d = dfail;
      goto fail;
    }
  d += dcnt, d2 += dcnt;
       }
   }
   break;




 case begline:
                                       ;

   if (((d) == (size1 ? string1 : string2) || !size2))
     {
       if (!bufp->not_bol) break;
     }
   else
     {
       unsigned c;
       (c = ((d) == (string2) ? *((end1) - 1) : *((d) - 1)));
       if (c == '\n')
  break;
     }

   goto fail;



 case endline:
                                       ;

   if (((d) == end2))
     {
       if (!bufp->not_eol) break;
     }
   else
     {
       if (d == end1) { d = string2; dend = end_match_2; };
       if (*d == '\n')
  break;
     }
   goto fail;



 case begbuf:
                                      ;
   if (((d) == (size1 ? string1 : string2) || !size2))
     break;
   goto fail;



 case endbuf:
                                      ;
   if (((d) == end2))
     break;
   goto fail;
# 5740 "../src/regex.c"
 case on_failure_keep_string_jump:
   ((mcnt) = extract_number_and_incr (&p));

                        ;

   do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (((void*)0)); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p - 3); fail_stack.frame = fail_stack.avail; } while (0);
   break;
# 5762 "../src/regex.c"
 case on_failure_jump_nastyloop:
   ((mcnt) = extract_number_and_incr (&p));

                        ;

                                       ;
   {
     int cycle = 0;
     do { ssize_t failure = fail_stack.frame; while (failure > 0 && ((fail_stack.stack[(failure) - 2].pointer) == d || (fail_stack.stack[(failure) - 2].pointer) == ((void*)0))) { ; if (fail_stack.stack[(failure) - 1].pointer == p - 4) { cycle = 1; break; } ; failure = fail_stack.stack[(failure) - 3].integer; } ; } while (0);
     if (!cycle)




       do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (d); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p - 3); fail_stack.frame = fail_stack.avail; } while (0);
   }
   break;



 case on_failure_jump_loop:
 on_failure:
   ((mcnt) = extract_number_and_incr (&p));

                        ;
   {
     int cycle = 0;
     do { ssize_t failure = fail_stack.frame; while (failure > 0 && ((fail_stack.stack[(failure) - 2].pointer) == d || (fail_stack.stack[(failure) - 2].pointer) == ((void*)0))) { ; if (fail_stack.stack[(failure) - 1].pointer == p - 3) { cycle = 1; break; } ; failure = fail_stack.stack[(failure) - 3].integer; } ; } while (0);
     if (cycle)





       p += mcnt;
     else
       do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (d); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p - 3); fail_stack.frame = fail_stack.avail; } while (0);
   }
   break;
# 5815 "../src/regex.c"
 case on_failure_jump:
   ((mcnt) = extract_number_and_incr (&p));

                        ;

   do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (d); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p -3); fail_stack.frame = fail_stack.avail; } while (0);
   break;
# 5830 "../src/regex.c"
 case on_failure_jump_smart:
   ((mcnt) = extract_number_and_incr (&p));

                        ;
   {
     re_char *p1 = p;

     unsigned char *p2 = (unsigned char*) p + mcnt;
     unsigned char *p3 = (unsigned char*) p - 3;

     p -= 3;


     ((mcnt) = extract_number (p2 - 2));



                                          ;
                                                            ;
                                 ;
     if (mutually_exclusive_p (bufp, p1, p2))
       {

                                                   ;
  *p3 = (unsigned char) on_failure_keep_string_jump;
  do { (p2 - 2)[0] = (mcnt + 3) & 0377; (p2 - 2)[1] = (mcnt + 3) >> 8; } while (0);
       }
     else
       {

                                                 ;
  *p3 = (unsigned char) on_failure_jump;
       }
                                 ;
   }
   break;


 case jump:
 unconditional_jump:
   ((void)0);
   ((mcnt) = extract_number_and_incr (&p));
                                           ;
   p += mcnt;
                                ;
   break;




 case succeed_n:

   ((mcnt) = extract_number (p + 2));
                                                  ;


   if (mcnt != 0)
     {

       unsigned char *p2 = (unsigned char*) p + 2;
       mcnt--;
       p += 4;
       do { char *destination; int c; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ((c) = extract_number (p2)); ; fail_stack.stack[fail_stack.avail++].integer = (c); fail_stack.stack[fail_stack.avail++].pointer = (p2); fail_stack.stack[fail_stack.avail++].integer = (-1); do { (p2)[0] = (mcnt) & 0377; (p2)[1] = (mcnt) >> 8; } while (0); } while (0);
     }
   else

     goto on_failure;
   break;

 case jump_n:

   ((mcnt) = extract_number (p + 2));
                                               ;


   if (mcnt != 0)
     {

       unsigned char *p2 = (unsigned char*) p + 2;
       mcnt--;
       do { char *destination; int c; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ((c) = extract_number (p2)); ; fail_stack.stack[fail_stack.avail++].integer = (c); fail_stack.stack[fail_stack.avail++].pointer = (p2); fail_stack.stack[fail_stack.avail++].integer = (-1); do { (p2)[0] = (mcnt) & 0377; (p2)[1] = (mcnt) >> 8; } while (0); } while (0);
       goto unconditional_jump;
     }

   else
     p += 4;
   break;

 case set_number_at:
   {
     unsigned char *p2;
                                               ;

     ((mcnt) = extract_number_and_incr (&p));

     p2 = (unsigned char*) p + mcnt;

     ((mcnt) = extract_number_and_incr (&p));
                                                    ;
     do { char *destination; int c; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ((c) = extract_number (p2)); ; fail_stack.stack[fail_stack.avail++].integer = (c); fail_stack.stack[fail_stack.avail++].pointer = (p2); fail_stack.stack[fail_stack.avail++].integer = (-1); do { (p2)[0] = (mcnt) & 0377; (p2)[1] = (mcnt) >> 8; } while (0); } while (0);
     break;
   }

 case wordbound:
 case notwordbound:
   {
     boolean not = (re_opcode_t) *(p - 1) == notwordbound;
                                                               ;




     if (((d) == (size1 ? string1 : string2) || !size2) || ((d) == end2))
       not = !not;
     else
       {


  re_wchar_t c1, c2;
  int s1, s2;
  int dummy;





  (c1 = ((d) == (string2) ? *((end1) - 1) : *((d) - 1)));
  s1 = re_syntax_table[(c1)];



  if (d == end1) { d = string2; dend = end_match_2; };
  (c2 = *d, dummy = 1);
  s2 = re_syntax_table[(c2)];

  if (
      ((s1 == Sword) != (s2 == Sword))


      || ((s1 == Sword) && (0)))
    not = !not;
       }
     if (not)
       break;
     else
       goto fail;
   }

 case wordbeg:
                                       ;




   if (((d) == end2))
     goto fail;
   else
     {


       re_wchar_t c1, c2;
       int s1, s2;
       int dummy;





       while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
       (c2 = *d, dummy = 1);
       s2 = re_syntax_table[(c2)];


       if (s2 != Sword)
  goto fail;


       if (!((d) == (size1 ? string1 : string2) || !size2))
  {
    (c1 = ((d) == (string2) ? *((end1) - 1) : *((d) - 1)));



    s1 = re_syntax_table[(c1)];



    if ((s1 == Sword) && !(0))
      goto fail;
  }
     }
   break;

 case wordend:
                                       ;




   if (((d) == (size1 ? string1 : string2) || !size2))
     goto fail;
   else
     {


       re_wchar_t c1, c2;
       int s1, s2;
       int dummy;





       (c1 = ((d) == (string2) ? *((end1) - 1) : *((d) - 1)));
       s1 = re_syntax_table[(c1)];


       if (s1 != Sword)
  goto fail;


       if (!((d) == end2))
  {
    if (d == end1) { d = string2; dend = end_match_2; };
    (c2 = *d, dummy = 1);



    s2 = re_syntax_table[(c2)];



    if ((s2 == Sword) && !(0))
   goto fail;
  }
     }
   break;

 case symbeg:
                                      ;




   if (((d) == end2))
     goto fail;
   else
     {


       re_wchar_t c1, c2;
       int s1, s2;





       while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
       c2 = (*(d));
       s2 = re_syntax_table[(c2)];


       if (s2 != Sword && s2 != Ssymbol)
  goto fail;


       if (!((d) == (size1 ? string1 : string2) || !size2))
  {
    (c1 = ((d) == (string2) ? *((end1) - 1) : *((d) - 1)));



    s1 = re_syntax_table[(c1)];


    if (s1 == Sword || s1 == Ssymbol)
      goto fail;
  }
     }
   break;

 case symend:
                                      ;




   if (((d) == (size1 ? string1 : string2) || !size2))
     goto fail;
   else
     {


       re_wchar_t c1, c2;
       int s1, s2;





       (c1 = ((d) == (string2) ? *((end1) - 1) : *((d) - 1)));
       s1 = re_syntax_table[(c1)];


       if (s1 != Sword && s1 != Ssymbol)
  goto fail;


       if (!((d) == end2))
  {
    if (d == end1) { d = string2; dend = end_match_2; };
    c2 = (*(d));



    s2 = re_syntax_table[(c2)];


    if (s2 == Sword || s2 == Ssymbol)
                    goto fail;
  }
     }
   break;

 case syntaxspec:
 case notsyntaxspec:
   {
     boolean not = (re_opcode_t) *(p - 1) == notsyntaxspec;
     mcnt = *p++;

         ;
     while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };







     {
       int len;
       re_wchar_t c;

       (c = *d, len = 1);
       if ((re_syntax_table[(c)] != (enum syntaxcode) mcnt) ^ not)
  goto fail;
       d += len;
     }
   }
   break;
# 6222 "../src/regex.c"
 default:
   abort ();
 }
      continue;



    fail:
      ((void)0);
      if (!(fail_stack.frame == 0))
 {
   re_char *str, *pat;

                            ;
   do { ; ; ; ; while (fail_stack.frame < fail_stack.avail) do { long pfreg = fail_stack.stack[--fail_stack.avail].integer; if (pfreg == -1) { unsigned char *ptr = (unsigned char*) fail_stack.stack[--fail_stack.avail].pointer; pfreg = fail_stack.stack[--fail_stack.avail].integer; do { (ptr)[0] = (pfreg) & 0377; (ptr)[1] = (pfreg) >> 8; } while (0); ; } else { regend[pfreg] = fail_stack.stack[--fail_stack.avail].pointer; regstart[pfreg] = fail_stack.stack[--fail_stack.avail].pointer; ; } } while (0); pat = fail_stack.stack[--fail_stack.avail].pointer; ; ; str = fail_stack.stack[--fail_stack.avail].pointer; ; ; ; fail_stack.frame = fail_stack.stack[--fail_stack.avail].integer; ; ; ; ; } while (0);
   switch (*pat++)
     {
     case on_failure_keep_string_jump:
                           ;
       goto continue_failure_jump;

     case on_failure_jump_nastyloop:
                                             ;
       do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (str); ; ; fail_stack.stack[fail_stack.avail++].pointer = (pat - 2); fail_stack.frame = fail_stack.avail; } while (0);


     case on_failure_jump_loop:
     case on_failure_jump:
     case succeed_n:
       d = str;
     continue_failure_jump:
       ((mcnt) = extract_number_and_incr (&pat));
       p = pat + mcnt;
       break;

     case no_op:

       goto fail;

     default:
       abort ();
     }

                                          ;

   if (d >= string1 && d <= end1)
     dend = end_match_1;
 }
      else
 break;
    }

  if (best_regs_set)
    goto restore_best_regs;

  do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); ((void) 0); } while (0);

  return -1;
}






static int
bcmp_translate (const_re_char *s1, const_re_char *s2, register ssize_t len,
  char * translate, const int target_multibyte)
{
  register re_char *p1 = s1, *p2 = s2;
  re_char *p1_end = s1 + len;
  re_char *p2_end = s2 + len;



  while (p1 < p1_end && p2 < p2_end)
    {
      int p1_charlen, p2_charlen;
      re_wchar_t p1_ch, p2_ch;

      (p1_ch = *p1, p1_charlen = 1);
      (p2_ch = *p2, p2_charlen = 1);

      if (((unsigned char)(translate)[p1_ch])
   != ((unsigned char)(translate)[p2_ch]))
 return 1;

      p1 += p1_charlen, p2 += p2_charlen;
    }

  if (p1 != p1_end || p2 != p2_end)
    return 1;

  return 0;
}
# 6329 "../src/regex.c"
const char *
re_compile_pattern (const char *pattern, size_t length,
      struct re_pattern_buffer *bufp)
{
  reg_errcode_t ret;



  bufp->regs_allocated = 0;




  bufp->no_sub = 0;

  ret = regex_compile ((re_char*) pattern, length, re_syntax_options, bufp);

  if (!ret)
    return ((void*)0);
  return (re_error_msgid[(int) ret]);
}
# 6455 "../src/regex.c"
reg_errcode_t
regcomp (regex_t *__restrict preg, const char *__restrict pattern,
  int cflags)
{
  reg_errcode_t ret;
  reg_syntax_t syntax
    = (cflags & 1) ?
      ((((((unsigned long int) 1) << 1) << 1) | ((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | ((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) | (((((unsigned long int) 1) << 1) << 1) << 1) | ((((((unsigned long int) 1) << 1) << 1) << 1) << 1) | ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) : ((((((unsigned long int) 1) << 1) << 1) | ((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | ((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) | (((unsigned long int) 1) << 1));


  preg->buffer = 0;
  preg->allocated = 0;
  preg->used = 0;


  preg->fastmap = xmalloc (1 << 8);

  if (cflags & (1 << 1))
    {
      unsigned i;

      preg->translate = xmalloc (256 * sizeof *preg->translate);
      if (preg->translate == ((void*)0))
 return (int) REG_ESPACE;


      for (i = 0; i < 256; i++)
 preg->translate[i] = ((*__ctype_b_loc ())[(int) ((i))] & (unsigned short int) _ISupper) ? ((int) (*__ctype_tolower_loc ())[(int) (i)]) : i;
    }
  else
    preg->translate = ((void*)0);


  if (cflags & ((1 << 1) << 1))
    {
      syntax &= ~((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1);
      syntax |= ((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1);
    }
  else
    syntax |= ((((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1);

  preg->no_sub = !!(cflags & (((1 << 1) << 1) << 1));



  ret = regex_compile ((re_char*) pattern, strlen (pattern), syntax, preg);



  if (ret == REG_ERPAREN)
    ret = REG_EPAREN;

  if (ret == REG_NOERROR && preg->fastmap)
    {

      re_compile_fastmap (preg);
      if (preg->can_be_null)
 {
   free (preg->fastmap);
   preg->fastmap = ((void*)0);
 }
    }
  return ret;
}
# 6536 "../src/regex.c"
reg_errcode_t
regexec (const regex_t *__restrict preg, const char *__restrict string,
  size_t nmatch, regmatch_t pmatch[__restrict], int eflags)
{
  regoff_t ret;
  struct re_registers regs;
  regex_t private_preg;
  size_t len = strlen (string);
  boolean want_reg_info = !preg->no_sub && nmatch > 0 && pmatch;

  private_preg = *preg;

  private_preg.not_bol = !!(eflags & 1);
  private_preg.not_eol = !!(eflags & (1 << 1));




  private_preg.regs_allocated = 2;

  if (want_reg_info)
    {
      regs.num_regs = nmatch;
      regs.start = ((regoff_t *) xmalloc ((nmatch * 2) * sizeof (regoff_t)));
      if (regs.start == ((void*)0))
 return REG_NOMATCH;
      regs.end = regs.start + nmatch;
    }
# 6575 "../src/regex.c"
  ret = re_search (&private_preg, string, len,
                  0, len,
     want_reg_info ? &regs : 0);


  if (want_reg_info)
    {
      if (ret >= 0)
 {
   unsigned r;

   for (r = 0; r < nmatch; r++)
     {
       pmatch[r].rm_so = regs.start[r];
       pmatch[r].rm_eo = regs.end[r];
     }
 }


      free (regs.start);
    }


  return ret >= 0 ? REG_NOERROR : REG_NOMATCH;
}
# 6609 "../src/regex.c"
size_t
regerror (int err_code, const regex_t *preg, char *errbuf, size_t errbuf_size)
{
  const char *msg;
  size_t msg_size;

  if (err_code < 0
      || err_code >= (sizeof (re_error_msgid) / sizeof (re_error_msgid[0])))




    abort ();

  msg = (re_error_msgid[err_code]);

  msg_size = strlen (msg) + 1;

  if (errbuf_size != 0)
    {
      if (msg_size > errbuf_size)
 {
   memcpy (errbuf, msg, errbuf_size - 1);
   errbuf[errbuf_size - 1] = 0;
 }
      else
 strcpy (errbuf, msg);
    }

  return msg_size;
}





void
regfree (regex_t *preg)
{
  free (preg->buffer);
  preg->buffer = ((void*)0);

  preg->allocated = 0;
  preg->used = 0;

  free (preg->fastmap);
  preg->fastmap = ((void*)0);
  preg->fastmap_accurate = 0;

  free (preg->translate);
  preg->translate = ((void*)0);
}
