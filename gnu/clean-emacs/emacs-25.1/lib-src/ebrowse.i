# 1 "ebrowse.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "ebrowse.c" 2
# 21 "ebrowse.c"
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
# 22 "ebrowse.c" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 23 "ebrowse.c" 2
# 1 "../lib/stdio.h" 1
# 21 "../lib/stdio.h" 3
# 43 "../lib/stdio.h" 3
# 1 "/usr/include/stdio.h" 1 3 4
# 33 "/usr/include/stdio.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;
# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 32 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 33 "/usr/include/libio.h" 2 3 4
# 50 "/usr/include/libio.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3 4
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3 4
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 51 "/usr/include/libio.h" 2 3 4
# 145 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 155 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 178 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 246 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 294 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 303 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 339 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);




typedef __io_read_fn cookie_read_function_t;
typedef __io_write_fn cookie_write_function_t;
typedef __io_seek_fn cookie_seek_function_t;
typedef __io_close_fn cookie_close_function_t;


typedef struct
{
  __io_read_fn *read;
  __io_write_fn *write;
  __io_seek_fn *seek;
  __io_close_fn *close;
} _IO_cookie_io_functions_t;
typedef _IO_cookie_io_functions_t cookie_io_functions_t;

struct _IO_cookie_file;


extern void _IO_cookie_init (struct _IO_cookie_file *__cfile, int __read_write,
        void *__cookie, _IO_cookie_io_functions_t __fns);







extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 435 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ ));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ ));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ ));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ ));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ ));
# 465 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ ));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 110 "/usr/include/stdio.h" 3 4
typedef _G_fpos_t fpos_t;





typedef _G_fpos64_t fpos64_t;
# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
# 195 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 205 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void) ;



extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ )) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ )) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 237 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 262 "/usr/include/stdio.h" 3 4
extern int fcloseall (void);
# 272 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 297 "/usr/include/stdio.h" 3 4
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;




extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ )) ;





extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     _IO_cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ )) ;




extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ )) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ ));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ ));
# 356 "/usr/include/stdio.h" 3 4
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));






extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;




extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
# 425 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
# 471 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 531 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);
# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 573 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);
# 622 "/usr/include/stdio.h" 3 4
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
          ;
# 649 "/usr/include/stdio.h" 3 4
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;
# 689 "/usr/include/stdio.h" 3 4
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 726 "/usr/include/stdio.h" 3 4
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
# 749 "/usr/include/stdio.h" 3 4
extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 798 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 818 "/usr/include/stdio.h" 3 4
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);




extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ ));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
# 846 "/usr/include/stdio.h" 3 4
extern void perror (const char *__s);







# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];


extern int _sys_nerr;
extern const char *const _sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ));





extern char *cuserid (char *__s);




struct obstack;


extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));







extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
# 44 "../lib/stdio.h" 2 3
# 53 "../lib/stdio.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 54 "../lib/stdio.h" 2 3




# 1 "../lib/sys/types.h" 1 3
# 21 "../lib/sys/types.h" 3
# 59 "../lib/stdio.h" 2 3
# 552 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 567 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 610 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 661 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 676 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 691 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 731 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 901 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;
# 927 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;
# 939 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 953 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1189 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1212 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1226 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1240 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1342 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1525 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 1580 "../lib/stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 24 "ebrowse.c" 2
# 1 "../lib/stdlib.h" 1
# 21 "../lib/stdlib.h" 3
# 25 "ebrowse.c" 2
# 1 "../lib/string.h" 1
# 21 "../lib/string.h" 3
# 26 "ebrowse.c" 2
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
# 27 "ebrowse.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 68 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
# 28 "ebrowse.c" 2
# 1 "/usr/include/getopt.h" 1 3 4
# 58 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 72 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 105 "/usr/include/getopt.h" 3 4
struct option
{
  const char *name;


  int has_arg;
  int *flag;
  int val;
};
# 151 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ ));
# 174 "/usr/include/getopt.h" 3 4
extern int getopt_long (int ___argc, char *const *___argv,
   const char *__shortopts,
          const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ ));
extern int getopt_long_only (int ___argc, char *const *___argv,
        const char *__shortopts,
               const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ ));
# 29 "ebrowse.c" 2






# 1 "../lib/min-max.h" 1
# 36 "ebrowse.c" 2



enum { READ_CHUNK_SIZE = 100 * 1024 };



static _Bool
streq (char const *x, char const *y)
{
  return strcmp (x, y) == 0;
}

static _Bool
filename_eq (char const *x, char const *y)
{





  return streq (x, y);

}
# 86 "ebrowse.c"
enum token
{
  YYEOF = 0,
  CSTRING = 256,
  CCHAR,
  CINT,
  CFLOAT,

  ELLIPSIS,
  LSHIFTASGN,
  RSHIFTASGN,
  ARROWSTAR,
  IDENT,
  DIVASGN,
  INC,
  ADDASGN,
  DEC,
  ARROW,
  SUBASGN,
  MULASGN,
  MODASGN,
  LOR,
  ORASGN,
  LAND,
  ANDASGN,
  XORASGN,
  POINTSTAR,
  DCOLON,
  EQ,
  NE,
  LE,
  LSHIFT,
  GE,
  RSHIFT,







  ASM,
  AUTO,
  BREAK,
  CASE,
  CATCH,
  CHAR,
  CLASS,
  CONST,
  CONTINUE,
  DEFAULT,
  DELETE,
  DO,
  DOUBLE,
  ELSE,
  ENUM,
  EXTERN,
  FLOAT,
  FOR,
  FRIEND,
  GOTO,
  IF,
  T_INLINE,
  INT,
  LONG,
  NEW,
  OPERATOR,
  PRIVATE,
  PROTECTED,
  PUBLIC,
  REGISTER,
  RETURN,
  SHORT,
  SIGNED,
  SIZEOF,
  STATIC,
  STRUCT,
  SWITCH,
  TEMPLATE,
  THIS,
  THROW,
  TRY,
  TYPEDEF,
  UNION,
  UNSIGNED,
  VIRTUAL,
  VOID,
  VOLATILE,
  WHILE,
  MUTABLE,
  BOOL,
  TRUE,
  FALSE,
  SIGNATURE,
  NAMESPACE,
  EXPLICIT,
  TYPENAME,
  CONST_CAST,
  DYNAMIC_CAST,
  REINTERPRET_CAST,
  STATIC_CAST,
  TYPEID,
  USING,
  WCHAR
};



enum sc
{
  SC_UNKNOWN,
  SC_MEMBER,
  SC_STATIC,
  SC_FRIEND,
  SC_TYPE
};



enum visibility
{
  V_PUBLIC,
  V_PROTECTED,
  V_PRIVATE
};
# 227 "ebrowse.c"
static void
set_flag (int *f, int flag)
{
  *f |= flag;
}

static _Bool
has_flag (int f, int flag)
{
  return (f & flag) != 0;
}



struct member
{
  struct member *next;
  struct member *anext;
  struct member **list;
  unsigned param_hash;
  int vis;
  int flags;
  char *regexp;
  const char *filename;
  int pos;
  char *def_regexp;
  const char *def_filename;
  int def_pos;
  char name[];
};




struct link
{
  struct sym *sym;
  struct link *next;
};



struct alias
{
  struct alias *next;
  struct sym *namesp;
  struct link *aliasee;
  char name[];
};




struct sym
{
  int flags;
  unsigned char visited;
  struct sym *next;
  struct link *subs;
  struct link *supers;
  struct member *vars;
  struct member *fns;
  struct member *static_vars;
  struct member *static_fns;
  struct member *friends;
  struct member *types;
  char *regexp;
  int pos;
  const char *filename;
  const char *sfilename;
  struct sym *namesp;
  char name[];
};







int info_where;
struct sym *info_cls = ((void*)0);
struct member *info_member = ((void*)0);





int info_position = -1;



struct option options[] =
{
  {"append", 0, ((void*)0), 'a'},
  {"files", 1, ((void*)0), 'f'},
  {"help", 0, ((void*)0), -2},
  {"min-regexp-length", 1, ((void*)0), 'm'},
  {"max-regexp-length", 1, ((void*)0), 'M'},
  {"no-nested-classes", 0, ((void*)0), 'n'},
  {"no-regexps", 0, ((void*)0), 'x'},
  {"no-structs-or-unions", 0, ((void*)0), 's'},
  {"output-file", 1, ((void*)0), 'o'},
  {"position-info", 1, ((void*)0), 'p'},
  {"search-path", 1, ((void*)0), 'I'},
  {"verbose", 0, ((void*)0), 'v'},
  {"version", 0, ((void*)0), -3},
  {"very-verbose", 0, ((void*)0), 'V'},
  {((void*)0), 0, ((void*)0), 0}
};



unsigned yyival;
char *yytext;
char *yytext_end;



FILE *yyout;



int yyline;



const char *filename;




char is_ident[255];
char is_digit[255];
char is_white[255];







int f_append;
int f_verbose;
int f_very_verbose;
int f_structs = 1;
int f_regexps = 1;
int f_nested_classes = 1;





int min_regexp = 5;
int max_regexp = 50;



char *inbuffer;
char *in;
size_t inbuffer_size;
# 397 "ebrowse.c"
char *string_start;
# 406 "ebrowse.c"
struct sym *class_table[1001];





struct member *member_table[1001];



struct alias *namespace_alias_table[1001];




struct sym *global_symbols;



struct sym *current_namespace;



struct sym *all_namespaces;



struct sym **namespace_stack;
int namespace_stack_size;
int namespace_sp;



int tk = -1;



struct kw
{
  const char *name;
  int tk;
  struct kw *next;
};




struct kw *keyword_table[1001];



struct search_path
{
  char *path;
  struct search_path *next;
};

struct search_path *search_path;
struct search_path *search_path_tail;



static char *matching_regexp (void);
static struct sym *add_sym (const char *, struct sym *);
static void add_global_defn (char *, char *, int, unsigned, int, int, int);
static void add_global_decl (char *, char *, int, unsigned, int, int, int);
static struct member *add_member (struct sym *, char *, int, int, unsigned);
static void class_definition (struct sym *, int, int, int);
static char *operator_name (int *);
static void parse_qualified_param_ident_or_type (char **);
# 484 "ebrowse.c"
static void
yyerror (const char *format, const char *s)
{
  fprintf (stderr, "%s:%d: ", filename, yyline);
  fprintf (stderr, format, s);
  _IO_putc ('\n', stderr);
}





static void *
xmalloc (size_t nbytes)
{
  void *p = malloc (nbytes);
  if (p == ((void*)0))
    {
      yyerror ("out of memory", ((void*)0));
      exit (1);
    }
  return p;
}




static void *
xrealloc (void *p, size_t sz)
{
  p = realloc (p, sz);
  if (p == ((void*)0))
    {
      yyerror ("out of memory", ((void*)0));
      exit (1);
    }
  return p;
}





static char *
xstrdup (char *s)
{
  if (s)
    return strcpy (xmalloc (strlen (s) + 1), s);
  return s;
}
# 544 "ebrowse.c"
static void
init_sym (void)
{
  global_symbols = add_sym ("*Globals*", ((void*)0));
}
# 558 "ebrowse.c"
static struct sym *
add_sym (const char *name, struct sym *nested_in_class)
{
  struct sym *sym;
  unsigned h;
  const char *s;
  struct sym *scope = nested_in_class ? nested_in_class : current_namespace;

  for (s = name, h = 0; *s; ++s)
    h = (h << 1) ^ *s;
  h %= 1001;

  for (sym = class_table[h]; sym; sym = sym->next)
    if (streq (name, sym->name)
 && ((!sym->namesp && !scope)
     || (sym->namesp && scope
  && streq (sym->namesp->name, scope->name))))
      break;

  if (sym == ((void*)0))
    {
      if (f_very_verbose)
 {
   putchar ('\t');
   puts (name);
 }

      sym = xmalloc (__builtin_offsetof(struct sym, name) + strlen (name) + 1);
      memset (sym, 0, __builtin_offsetof(struct sym, name));
      strcpy (sym->name, name);
      sym->namesp = scope;
      sym->next = class_table[h];
      class_table[h] = sym;
    }

  return sym;
}




static void
add_link (struct sym *super, struct sym *sub)
{
  struct link *lnk, *lnk2, *p, *prev;


  for (p = super->subs, prev = ((void*)0);
       p && strcmp (sub->name, p->sym->name) > 0;
       prev = p, p = p->next)
    ;


  if (p == ((void*)0) || p->sym != sub)
    {
      lnk = (struct link *) xmalloc (sizeof *lnk);
      lnk2 = (struct link *) xmalloc (sizeof *lnk2);

      lnk->sym = sub;
      lnk->next = p;

      if (prev)
 prev->next = lnk;
      else
 super->subs = lnk;

      lnk2->sym = super;
      lnk2->next = sub->supers;
      sub->supers = lnk2;
    }
}
# 639 "ebrowse.c"
static struct member *
find_member (struct sym *cls, char *name, int var, int sc, unsigned int hash)
{
  struct member **list;
  struct member *p;
  unsigned name_hash = 0;
  char *s;
  int i;

  switch (sc)
    {
    case SC_FRIEND:
      list = &cls->friends;
      break;

    case SC_TYPE:
      list = &cls->types;
      break;

    case SC_STATIC:
      list = var ? &cls->static_vars : &cls->static_fns;
      break;

    default:
      list = var ? &cls->vars : &cls->fns;
      break;
    }

  for (s = name; *s; ++s)
    name_hash = (name_hash << 1) ^ *s;
  i = name_hash % 1001;

  for (p = member_table[i]; p; p = p->anext)
    if (p->list == list && p->param_hash == hash && streq (name, p->name))
      break;

  return p;
}
# 689 "ebrowse.c"
static void
add_member_decl (struct sym *cls, char *name, char *regexp, int pos, unsigned int hash, int var, int sc, int vis, int flags)
{
  struct member *m;

  m = find_member (cls, name, var, sc, hash);
  if (m == ((void*)0))
    m = add_member (cls, name, var, sc, hash);


  if (!cls->filename || !filename_eq (cls->filename, filename))
    m->filename = filename;

  m->regexp = regexp;
  m->pos = pos;
  m->flags = flags;

  switch (vis)
    {
    case PRIVATE:
      m->vis = V_PRIVATE;
      break;

    case PROTECTED:
      m->vis = V_PROTECTED;
      break;

    case PUBLIC:
      m->vis = V_PUBLIC;
      break;
    }

  info_where = 2;
  info_cls = cls;
  info_member = m;
}
# 737 "ebrowse.c"
static void
add_member_defn (struct sym *cls, char *name, char *regexp, int pos, unsigned int hash, int var, int sc, int flags)
{
  struct member *m;

  if (sc == SC_UNKNOWN)
    {
      m = find_member (cls, name, var, SC_MEMBER, hash);
      if (m == ((void*)0))
 {
   m = find_member (cls, name, var, SC_STATIC, hash);
   if (m == ((void*)0))
     m = add_member (cls, name, var, sc, hash);
 }
    }
  else
    {
      m = find_member (cls, name, var, sc, hash);
      if (m == ((void*)0))
 m = add_member (cls, name, var, sc, hash);
    }

  if (!cls->sfilename)
    cls->sfilename = filename;

  if (!filename_eq (cls->sfilename, filename))
    m->def_filename = filename;

  m->def_regexp = regexp;
  m->def_pos = pos;
  m->flags |= flags;

  info_where = 1;
  info_cls = cls;
  info_member = m;
}






static void
add_define (char *name, char *regexp, int pos)
{
  add_global_defn (name, regexp, pos, 0, 1, SC_FRIEND, 512);
  add_global_decl (name, regexp, pos, 0, 1, SC_FRIEND, 512);
}
# 797 "ebrowse.c"
static void
add_global_defn (char *name, char *regexp, int pos, unsigned int hash, int var, int sc, int flags)
{
  int i;
  struct sym *sym;



  if (!var)
    for (i = 0; i < 1001; ++i)
      for (sym = class_table[i]; sym; sym = sym->next)
 if (sym != global_symbols && sym->friends)
   if (find_member (sym, name, 0, SC_FRIEND, hash))
     add_member_defn (sym, name, regexp, pos, hash, 0,
        SC_FRIEND, flags);


  add_member_defn (global_symbols, name, regexp, pos, hash, var, sc, flags);
}
# 828 "ebrowse.c"
static void
add_global_decl (char *name, char *regexp, int pos, unsigned int hash, int var, int sc, int flags)
{



  struct member *m;
  struct member *found;

  m = found = find_member (global_symbols, name, var, sc, hash);
  if (m == ((void*)0))
    m = add_member (global_symbols, name, var, sc, hash);




  if (!found)
    {
      if (!global_symbols->filename
   || !filename_eq (global_symbols->filename, filename))
 m->filename = filename;

      m->regexp = regexp;
      m->pos = pos;
      m->vis = V_PUBLIC;
      m->flags = flags;

      info_where = 2;
      info_cls = global_symbols;
      info_member = m;
    }
}







static struct member *
add_member (struct sym *cls, char *name, int var, int sc, unsigned int hash)
{
  struct member *m = xmalloc (__builtin_offsetof(struct member, name)
         + strlen (name) + 1);
  struct member **list;
  struct member *p;
  struct member *prev;
  unsigned name_hash = 0;
  int i;
  char *s;

  strcpy (m->name, name);
  m->param_hash = hash;

  m->vis = 0;
  m->flags = 0;
  m->regexp = ((void*)0);
  m->filename = ((void*)0);
  m->pos = 0;
  m->def_regexp = ((void*)0);
  m->def_filename = ((void*)0);
  m->def_pos = 0;

  ((cls != ((void*)0)) ? (void) (0) : __assert_fail ("cls != ((void*)0)", "ebrowse.c", 891, __PRETTY_FUNCTION__));

  switch (sc)
    {
    case SC_FRIEND:
      list = &cls->friends;
      break;

    case SC_TYPE:
      list = &cls->types;
      break;

    case SC_STATIC:
      list = var ? &cls->static_vars : &cls->static_fns;
      break;

    default:
      list = var ? &cls->vars : &cls->fns;
      break;
    }

  for (s = name; *s; ++s)
    name_hash = (name_hash << 1) ^ *s;
  i = name_hash % 1001;
  m->anext = member_table[i];
  member_table[i] = m;
  m->list = list;



  for (prev = ((void*)0), p = *list;
       p && strcmp (name, p->name) > 0;
       prev = p, p = p->next)
    ;

  m->next = p;
  if (prev)
    prev->next = m;
  else
    *list = m;
  return m;
}






static void
mark_virtual (struct sym *r)
{
  struct link *p;
  struct member *m, *m2;

  for (p = r->subs; p; p = p->next)
    {
      for (m = r->fns; m; m = m->next)
        if (has_flag (m->flags, 1))
          {
            for (m2 = p->sym->fns; m2; m2 = m2->next)
              if (m->param_hash == m2->param_hash && streq (m->name, m2->name))
                set_flag (&m2->flags, 1);
          }

      mark_virtual (p->sym);
    }
}





static void
mark_inherited_virtual (void)
{
  struct sym *r;
  int i;

  for (i = 0; i < 1001; ++i)
    for (r = class_table[i]; r; r = r->next)
      if (r->supers == ((void*)0))
        mark_virtual (r);
}




static struct sym *
make_namespace (char *name, struct sym *context)
{
  struct sym *s = xmalloc (__builtin_offsetof(struct sym, name) + strlen (name) + 1);
  memset (s, 0, __builtin_offsetof(struct sym, name));
  strcpy (s->name, name);
  s->next = all_namespaces;
  s->namesp = context;
  all_namespaces = s;
  return s;
}




static struct sym *
check_namespace (char *name, struct sym *context)
{
  struct sym *p = ((void*)0);

  for (p = all_namespaces; p; p = p->next)
    {
      if (streq (p->name, name) && (p->namesp == context))
     break;
    }

  return p;
}




static struct sym *
find_namespace (char *name, struct sym *context)
{
  struct sym *p = check_namespace (name, context);

  if (p == ((void*)0))
    p = make_namespace (name, context);

  return p;
}




static struct link *
check_namespace_alias (char *name)
{
  struct link *p = ((void*)0);
  struct alias *al;
  unsigned h;
  char *s;

  for (s = name, h = 0; *s; ++s)
    h = (h << 1) ^ *s;
  h %= 1001;

  for (al = namespace_alias_table[h]; al; al = al->next)
    if (streq (name, al->name) && (al->namesp == current_namespace))
      {
        p = al->aliasee;
        break;
      }

  return p;
}



static void
register_namespace_alias (char *new_name, struct link *old_name)
{
  unsigned h;
  char *s;
  struct alias *al;

  for (s = new_name, h = 0; *s; ++s)
    h = (h << 1) ^ *s;
  h %= 1001;



  for (al = namespace_alias_table[h]; al; al = al->next)
    if (streq (new_name, al->name) && (al->namesp == current_namespace))
      return;

  al = xmalloc (__builtin_offsetof(struct alias, name) + strlen (new_name) + 1);
  strcpy (al->name, new_name);
  al->next = namespace_alias_table[h];
  al->namesp = current_namespace;
  al->aliasee = old_name;
  namespace_alias_table[h] = al;
}




static void
enter_namespace (char *name)
{
  struct sym *p = find_namespace (name, current_namespace);

  if (namespace_sp == namespace_stack_size)
    {
      int size = ((10) > (2 * namespace_stack_size) ? (10) : (2 * namespace_stack_size));
      namespace_stack
 = (struct sym **) xrealloc ((void *)namespace_stack,
        size * sizeof *namespace_stack);
      namespace_stack_size = size;
    }

  namespace_stack[namespace_sp++] = current_namespace;
  current_namespace = p;
}




static void
leave_namespace (void)
{
  ((namespace_sp > 0) ? (void) (0) : __assert_fail ("namespace_sp > 0", "ebrowse.c", 1100, __PRETTY_FUNCTION__));
  current_namespace = namespace_stack[--namespace_sp];
}
# 1113 "ebrowse.c"
static void
putstr (const char *s, FILE *fp)
{
  if (!s)
    {
      _IO_putc ('(', fp);
      _IO_putc (')', fp);
      _IO_putc (' ', fp);
    }
  else
    {
      _IO_putc ('"', fp);
      fputs (s, fp);
      _IO_putc ('"', fp);
      _IO_putc (' ', fp);
    }
}



char *scope_buffer;
int scope_buffer_size;
int scope_buffer_len;




static void
ensure_scope_buffer_room (int len)
{
  if (scope_buffer_len + len >= scope_buffer_size)
    {
      int new_size = ((2 * scope_buffer_size) > (scope_buffer_len + len) ? (2 * scope_buffer_size) : (scope_buffer_len + len));
      scope_buffer = (char *) xrealloc (scope_buffer, new_size);
      scope_buffer_size = new_size;
    }
}






static char *
sym_scope_1 (struct sym *p)
{
  int len;

  if (p->namesp)
    sym_scope_1 (p->namesp);

  if (*scope_buffer)
    {
      ensure_scope_buffer_room (3);
      strcpy (scope_buffer + scope_buffer_len, "::");
      scope_buffer_len += 2;
    }

  len = strlen (p->name);
  ensure_scope_buffer_room (len + 1);
  strcpy (scope_buffer + scope_buffer_len, p->name);
  scope_buffer_len += len;

  if (has_flag (p->flags, 32))
    {
      ensure_scope_buffer_room (3);
      strcpy (scope_buffer + scope_buffer_len, "<>");
      scope_buffer_len += 2;
    }

  return scope_buffer;
}





static char *
sym_scope (struct sym *p)
{
  if (!scope_buffer)
    {
      scope_buffer_size = 1024;
      scope_buffer = (char *) xmalloc (scope_buffer_size);
    }

  *scope_buffer = '\0';
  scope_buffer_len = 0;

  if (p->namesp)
    sym_scope_1 (p->namesp);

  return scope_buffer;
}





static int
dump_members (FILE *fp, struct member *m)
{
  int n;

  _IO_putc ('(', fp);

  for (n = 0; m; m = m->next, ++n)
    {
      fputs ("[ebrowse-ms ", fp);
      putstr (m->name, fp);
      putstr (((void*)0), fp);
      fprintf (fp, "%u ", (unsigned) m->flags);
      putstr (m->filename, fp);
      putstr (m->regexp, fp);
      fprintf (fp, "%u ", (unsigned) m->pos);
      fprintf (fp, "%u ", (unsigned) m->vis);
      _IO_putc (' ', fp);
      putstr (m->def_filename, fp);
      putstr (m->def_regexp, fp);
      fprintf (fp, "%u", (unsigned) m->def_pos);
      _IO_putc (']', fp);
      _IO_putc ('\n', fp);
    }

  _IO_putc (')', fp);
  _IO_putc ('\n', fp);
  return n;
}




static void
dump_sym (FILE *fp, struct sym *root)
{
  fputs ("[ebrowse-cs ", fp);
  putstr (root->name, fp);


  if (root->namesp)
    putstr (sym_scope (root), fp);
  else
    putstr (((void*)0), fp);


  fprintf (fp, "%d", root->flags);
  putstr (root->filename, fp);
  putstr (root->regexp, fp);
  fprintf (fp, "%u", (unsigned) root->pos);
  putstr (root->sfilename, fp);
  _IO_putc (']', fp);
  _IO_putc ('\n', fp);
}





static int
dump_tree (FILE *fp, struct sym *root)
{
  struct link *lk;
  unsigned n = 0;

  dump_sym (fp, root);

  if (f_verbose)
    {
      putchar ('+');
      fflush (stdout);
    }

  _IO_putc ('(', fp);

  for (lk = root->subs; lk; lk = lk->next)
    {
      fputs ("[ebrowse-ts ", fp);
      n += dump_tree (fp, lk->sym);
      _IO_putc (']', fp);
    }

  _IO_putc (')', fp);

  dump_members (fp, root->vars);
  n += dump_members (fp, root->fns);
  dump_members (fp, root->static_vars);
  n += dump_members (fp, root->static_fns);
  n += dump_members (fp, root->friends);
  dump_members (fp, root->types);


  _IO_putc ('(', fp);
  _IO_putc (')', fp);


  _IO_putc ('(', fp);
  _IO_putc (')', fp);

  _IO_putc ('\n', fp);
  return n;
}




static void
dump_roots (FILE *fp)
{
  int i, n = 0;
  struct sym *r;



  if (!f_append)
    {
      fputs ("[ebrowse-hs ", fp);
      putstr ("ebrowse 5.0", fp);

      _IO_putc ('\"', fp);
      if (!f_structs)
 fputs (" -s", fp);
      if (f_regexps)
 fputs (" -x", fp);
      _IO_putc ('\"', fp);
      fputs (" ()", fp);
      fputs (" ()", fp);
      _IO_putc (']', fp);
    }



  mark_inherited_virtual ();


  for (i = 0; i < 1001; ++i)
    for (r = class_table[i]; r; r = r->next)
      if (!r->supers)
        {
   fputs ("[ebrowse-ts ", fp);
          n += dump_tree (fp, r);
   _IO_putc (']', fp);
        }

  if (f_verbose)
    putchar ('\n');
}
# 1392 "ebrowse.c"
static int
process_pp_line (void)
{
  int in_comment = 0, in_string = 0;
  int c;
  char *p = yytext;


  while (is_white[(unsigned char) (((c) = *in++))])
    ;


  while (is_ident[(unsigned char) (c)])
    {
      *p++ = c;
      ((c) = *in++);
    }


  *p = '\0';

  if (*yytext && streq (yytext, "define"))
    {
      p = yytext;
      while (is_white[(unsigned char) (c)])
 ((c) = *in++);
      while (is_ident[(unsigned char) (c)])
 {
   *p++ = c;
   ((c) = *in++);
 }

      *p = '\0';

      if (*yytext)
 {
   char *regexp = matching_regexp ();
   int pos = (in - inbuffer);
   add_define (yytext, regexp, pos);
 }
    }

  while (c && (c != '\n' || in_comment || in_string))
    {
      if (c == '\\')
 ((c) = *in++);
      else if (c == '/' && !in_comment)
 {
   if (((c) = *in++) == '*')
     in_comment = 1;
 }
      else if (c == '*' && in_comment)
 {
   if (((c) = *in++) == '/')
     in_comment = 0;
 }
      else if (c == '"')
 in_string = !in_string;

      if (c == '\n')
 ++yyline;

      ((c) = *in++);
    }

  return c;
}




static int
yylex (void)
{
  int c;
  char end_char;
  char *p;

  for (;;)
    {
      while (is_white[(unsigned char) (((c) = *in++))])
        ;

      switch (c)
        {
        case '\n':
          ++yyline;
          break;

        case '\r':
          break;

        case 0:

          return YYEOF;

        case '\\':
          ((c) = *in++);
          break;

        case '"':
        case '\'':

          end_char = c;
          string_start = in;
          while (((c) = *in++) && c != end_char)
            {
              switch (c)
                {
                case '\\':

                  if (!((c) = *in++))
                    {
                      if (end_char == '\'')
                        yyerror ("EOF in character constant", ((void*)0));
                      else
                        yyerror ("EOF in string constant", ((void*)0));
                      goto end_string;
                    }
                  else switch (c)
                    {
                    case '\n':
        ++yyline;
                    case 'a':
                    case 'b':
                    case 'f':
                    case 'n':
                    case 'r':
                    case 't':
                    case 'v':
                      break;

                    case 'x':
                      {

                        int i;
                        for (i = 0; i < 2; ++i)
                          {
                            ((c) = *in++);

                            if (c >= '0' && c <= '7')
                              ;
                            else if (c >= 'a' && c <= 'f')
                              ;
                            else if (c >= 'A' && c <= 'F')
                              ;
                            else
                              {
                                (--in);
                                break;
                              }
                          }
                      }
                      break;

                    case '0':
                      {

                        int i;
                        for (i = 0; i < 3; ++i)
                          {
                            ((c) = *in++);

                            if (c >= '0' && c <= '7')
                              ;
                            else
                              {
                                (--in);
                                break;
                              }
                          }
                      }
                      break;

                    default:
                      break;
                    }
                  break;

                case '\n':
                  if (end_char == '\'')
                    yyerror ("newline in character constant", ((void*)0));
                  else
                    yyerror ("newline in string constant", ((void*)0));
                  ++yyline;
                  break;

                default:
                  break;
                }
            }

        end_string:
          return end_char == '\'' ? CCHAR : CSTRING;

        case 'a': case 'b': case 'c': case 'd': case 'e': case 'f': case 'g':
        case 'h': case 'i': case 'j': case 'k': case 'l': case 'm': case 'n':
        case 'o': case 'p': case 'q': case 'r': case 's': case 't': case 'u':
        case 'v': case 'w': case 'x': case 'y': case 'z':
        case 'A': case 'B': case 'C': case 'D': case 'E': case 'F': case 'G':
        case 'H': case 'I': case 'J': case 'K': case 'L': case 'M': case 'N':
        case 'O': case 'P': case 'Q': case 'R': case 'S': case 'T': case 'U':
        case 'V': case 'W': case 'X': case 'Y': case 'Z': case '_':
          {

            unsigned hash;
            struct kw *k;

            p = yytext;
            *p++ = hash = c;

            while (is_ident[(unsigned char) (((*p) = *in++))])
       {
  hash = (hash << 1) ^ *p++;
  if (p == yytext_end - 1)
    {
      int size = yytext_end - yytext;
      yytext = (char *) xrealloc (yytext, 2 * size);
      yytext_end = yytext + 2 * size;
      p = yytext + size - 1;
    }
       }

            (--in);
            *p = 0;

            for (k = keyword_table[hash % 1001]; k; k = k->next)
              if (streq (k->name, yytext))
                return k->tk;

            return IDENT;
          }

        case '/':

          switch (((c) = *in++))
            {
            case '*':
              while (((c) = *in++))
                {
                  switch (c)
                    {
                    case '*':
                      if (((c) = *in++) == '/')
                        goto comment_end;
                      (--in);
                      break;
                    case '\\':
                      ((c) = *in++);
                      break;
                    case '\n':
                      ++yyline;
                      break;
                    }
                }
            comment_end:;
              break;

            case '=':
              return DIVASGN;

            case '/':
       while (((c) = *in++) && c != '\n')
  ;


       if (c == 0)
  return YYEOF;

       ++yyline;
       break;

            default:
              (--in);
              return '/';
            }
          break;

        case '+':
          if (((c) = *in++) == '+')
            return INC;
          else if (c == '=')
            return ADDASGN;
          (--in);
          return '+';

        case '-':
          switch (((c) = *in++))
            {
            case '-':
              return DEC;
            case '>':
              if (((c) = *in++) == '*')
                return ARROWSTAR;
              (--in);
              return ARROW;
            case '=':
              return SUBASGN;
            }
          (--in);
          return '-';

        case '*':
          if (((c) = *in++) == '=')
            return MULASGN;
          (--in);
          return '*';

        case '%':
          if (((c) = *in++) == '=')
            return MODASGN;
          (--in);
          return '%';

        case '|':
          if (((c) = *in++) == '|')
            return LOR;
          else if (c == '=')
            return ORASGN;
          (--in);
          return '|';

        case '&':
          if (((c) = *in++) == '&')
            return LAND;
          else if (c == '=')
            return ANDASGN;
          (--in);
          return '&';

        case '^':
          if (((c) = *in++) == '=')
            return XORASGN;
          (--in);
          return '^';

        case '.':
          if (((c) = *in++) == '*')
            return POINTSTAR;
          else if (c == '.')
            {
              if (((c) = *in++) != '.')
                yyerror ("invalid token '..' ('...' assumed)", ((void*)0));
              (--in);
              return ELLIPSIS;
            }
          else if (!is_digit[(unsigned char) (c)])
            {
              (--in);
              return '.';
            }
          goto mantissa;

        case ':':
          if (((c) = *in++) == ':')
            return DCOLON;
          (--in);
          return ':';

        case '=':
          if (((c) = *in++) == '=')
            return EQ;
          (--in);
          return '=';

        case '!':
          if (((c) = *in++) == '=')
            return NE;
          (--in);
          return '!';

        case '<':
          switch (((c) = *in++))
            {
            case '=':
              return LE;
            case '<':
              if (((c) = *in++) == '=')
                return LSHIFTASGN;
              (--in);
              return LSHIFT;
            }
          (--in);
          return '<';

        case '>':
          switch (((c) = *in++))
            {
            case '=':
              return GE;
            case '>':
              if (((c) = *in++) == '=')
                return RSHIFTASGN;
              (--in);
              return RSHIFT;
            }
          (--in);
          return '>';

        case '#':
          c = process_pp_line ();
          if (c == 0)
            return YYEOF;
          break;

        case '(': case ')': case '[': case ']': case '{': case '}':
        case ';': case ',': case '?': case '~':
          return c;

        case '0':
          yyival = 0;

          if (((c) = *in++) == 'x' || c == 'X')
            {
              while (((c) = *in++))
                {
                  if (is_digit[(unsigned char) (c)])
                    yyival = yyival * 16 + c - '0';
                  else if (c >= 'a' && c <= 'f')
                    yyival = yyival * 16 + c - 'a' + 10;
                  else if (c >= 'A' && c <= 'F')
                    yyival = yyival * 16 + c - 'A' + 10;
                  else
                    break;
                }

              goto int_suffixes;
            }
          else if (c == '.')
            goto mantissa;

          while (c >= '0' && c <= '7')
            {
              yyival = (yyival << 3) + c - '0';
              ((c) = *in++);
            }

        int_suffixes:

          while (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISalpha))
            ((c) = *in++);
          (--in);
          return CINT;

        case '1': case '2': case '3': case '4': case '5': case '6':
        case '7': case '8': case '9':

          yyival = c - '0';

          while (((c) = *in++) && is_digit[(unsigned char) (c)])
            yyival = 10 * yyival + c - '0';

          if (c != '.')
            goto int_suffixes;

        mantissa:

          while (is_digit[(unsigned char) (c)])
            ((c) = *in++);


          if (c == 'E' || c == 'e')
            {
              if (((c) = *in++) == '-' || c == '+')
                ((c) = *in++);

              while (is_digit[(unsigned char) (c)])
                ((c) = *in++);
            }


          while (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISalpha))
            ((c) = *in++);
   (--in);
          return CFLOAT;

        default:
          break;
        }
    }
}





static char *matching_regexp_buffer, *matching_regexp_end_buf;






static char *
matching_regexp (void)
{
  char *p;
  char *s;
  char *t;

  if (!f_regexps)
    return ((void*)0);

  if (matching_regexp_buffer == ((void*)0))
    {
      matching_regexp_buffer = (char *) xmalloc (max_regexp);
      matching_regexp_end_buf = &matching_regexp_buffer[max_regexp] - 1;
    }


  for (p = in - 1; p > inbuffer && *p != '\n'; --p)
    ;

  if (*p == '\n')
    {
      while (in - p < min_regexp && p > inbuffer)
        {

          for (--p; p > inbuffer && *p != '\n'; --p)
            ;
        }
      if (*p == '\n')
        ++p;
    }




  for (s = matching_regexp_end_buf - 1, t = in;
       s > matching_regexp_buffer && t > p;)
    {
      *--s = *--t;

      if (*s == '"' || *s == '\\')
        *--s = '\\';
    }

  *(matching_regexp_end_buf - 1) = '\0';
  return xstrdup (s);
}




static const char *
token_string (int t)
{
  static char b[3];

  switch (t)
    {
    case CSTRING: return "string constant";
    case CCHAR: return "char constant";
    case CINT: return "int constant";
    case CFLOAT: return "floating constant";
    case ELLIPSIS: return "...";
    case LSHIFTASGN: return "<<=";
    case RSHIFTASGN: return ">>=";
    case ARROWSTAR: return "->*";
    case IDENT: return "identifier";
    case DIVASGN: return "/=";
    case INC: return "++";
    case ADDASGN: return "+=";
    case DEC: return "--";
    case ARROW: return "->";
    case SUBASGN: return "-=";
    case MULASGN: return "*=";
    case MODASGN: return "%=";
    case LOR: return "||";
    case ORASGN: return "|=";
    case LAND: return "&&";
    case ANDASGN: return "&=";
    case XORASGN: return "^=";
    case POINTSTAR: return ".*";
    case DCOLON: return "::";
    case EQ: return "==";
    case NE: return "!=";
    case LE: return "<=";
    case LSHIFT: return "<<";
    case GE: return ">=";
    case RSHIFT: return ">>";
    case ASM: return "asm";
    case AUTO: return "auto";
    case BREAK: return "break";
    case CASE: return "case";
    case CATCH: return "catch";
    case CHAR: return "char";
    case CLASS: return "class";
    case CONST: return "const";
    case CONTINUE: return "continue";
    case DEFAULT: return "default";
    case DELETE: return "delete";
    case DO: return "do";
    case DOUBLE: return "double";
    case ELSE: return "else";
    case ENUM: return "enum";
    case EXTERN: return "extern";
    case FLOAT: return "float";
    case FOR: return "for";
    case FRIEND: return "friend";
    case GOTO: return "goto";
    case IF: return "if";
    case T_INLINE: return "inline";
    case INT: return "int";
    case LONG: return "long";
    case NEW: return "new";
    case OPERATOR: return "operator";
    case PRIVATE: return "private";
    case PROTECTED: return "protected";
    case PUBLIC: return "public";
    case REGISTER: return "register";
    case RETURN: return "return";
    case SHORT: return "short";
    case SIGNED: return "signed";
    case SIZEOF: return "sizeof";
    case STATIC: return "static";
    case STRUCT: return "struct";
    case SWITCH: return "switch";
    case TEMPLATE: return "template";
    case THIS: return "this";
    case THROW: return "throw";
    case TRY: return "try";
    case TYPEDEF: return "typedef";
    case UNION: return "union";
    case UNSIGNED: return "unsigned";
    case VIRTUAL: return "virtual";
    case VOID: return "void";
    case VOLATILE: return "volatile";
    case WHILE: return "while";
    case MUTABLE: return "mutable";
    case BOOL: return "bool";
    case TRUE: return "true";
    case FALSE: return "false";
    case SIGNATURE: return "signature";
    case NAMESPACE: return "namespace";
    case EXPLICIT: return "explicit";
    case TYPENAME: return "typename";
    case CONST_CAST: return "const_cast";
    case DYNAMIC_CAST: return "dynamic_cast";
    case REINTERPRET_CAST: return "reinterpret_cast";
    case STATIC_CAST: return "static_cast";
    case TYPEID: return "typeid";
    case USING: return "using";
    case WCHAR: return "wchar_t";
    case YYEOF: return "EOF";

    default:
      if (t < 255)
 {
   b[0] = t;
   b[1] = '\0';
   return b;
 }
      else
 return "???";
    }
}




static void
re_init_scanner (void)
{
  in = inbuffer;
  yyline = 1;

  if (yytext == ((void*)0))
    {
      int size = 256;
      yytext = (char *) xmalloc (size * sizeof *yytext);
      yytext_end = yytext + size;
    }
}





static void
insert_keyword (const char *name, int tkv)
{
  const char *s;
  unsigned h = 0;
  struct kw *k = (struct kw *) xmalloc (sizeof *k);

  for (s = name; *s; ++s)
    h = (h << 1) ^ *s;

  h %= 1001;
  k->name = name;
  k->tk = tkv;
  k->next = keyword_table[h];
  keyword_table[h] = k;
}





static void
init_scanner (void)
{
  int i;


  inbuffer_size = READ_CHUNK_SIZE + 1;
  inbuffer = in = (char *) xmalloc (inbuffer_size);
  yyline = 1;


  for (i = 0; i < sizeof is_ident; ++i)
    {
      if (i == '_' || ((*__ctype_b_loc ())[(int) ((i))] & (unsigned short int) _ISalnum))
        is_ident[i] = 1;

      if (i >= '0' && i <= '9')
        is_digit[i] = 1;

      if (i == ' ' || i == '\t' || i == '\f' || i == '\v')
        is_white[i] = 1;
    }


  insert_keyword ("and", LAND);
  insert_keyword ("and_eq", ANDASGN);
  insert_keyword ("asm", ASM);
  insert_keyword ("auto", AUTO);
  insert_keyword ("bitand", '&');
  insert_keyword ("bitor", '|');
  insert_keyword ("bool", BOOL);
  insert_keyword ("break", BREAK);
  insert_keyword ("case", CASE);
  insert_keyword ("catch", CATCH);
  insert_keyword ("char", CHAR);
  insert_keyword ("class", CLASS);
  insert_keyword ("compl", '~');
  insert_keyword ("const", CONST);
  insert_keyword ("const_cast", CONST_CAST);
  insert_keyword ("continue", CONTINUE);
  insert_keyword ("default", DEFAULT);
  insert_keyword ("delete", DELETE);
  insert_keyword ("do", DO);
  insert_keyword ("double", DOUBLE);
  insert_keyword ("dynamic_cast", DYNAMIC_CAST);
  insert_keyword ("else", ELSE);
  insert_keyword ("enum", ENUM);
  insert_keyword ("explicit", EXPLICIT);
  insert_keyword ("extern", EXTERN);
  insert_keyword ("false", FALSE);
  insert_keyword ("float", FLOAT);
  insert_keyword ("for", FOR);
  insert_keyword ("friend", FRIEND);
  insert_keyword ("goto", GOTO);
  insert_keyword ("if", IF);
  insert_keyword ("inline", T_INLINE);
  insert_keyword ("int", INT);
  insert_keyword ("long", LONG);
  insert_keyword ("mutable", MUTABLE);
  insert_keyword ("namespace", NAMESPACE);
  insert_keyword ("new", NEW);
  insert_keyword ("not", '!');
  insert_keyword ("not_eq", NE);
  insert_keyword ("operator", OPERATOR);
  insert_keyword ("or", LOR);
  insert_keyword ("or_eq", ORASGN);
  insert_keyword ("private", PRIVATE);
  insert_keyword ("protected", PROTECTED);
  insert_keyword ("public", PUBLIC);
  insert_keyword ("register", REGISTER);
  insert_keyword ("reinterpret_cast", REINTERPRET_CAST);
  insert_keyword ("return", RETURN);
  insert_keyword ("short", SHORT);
  insert_keyword ("signed", SIGNED);
  insert_keyword ("sizeof", SIZEOF);
  insert_keyword ("static", STATIC);
  insert_keyword ("static_cast", STATIC_CAST);
  insert_keyword ("struct", STRUCT);
  insert_keyword ("switch", SWITCH);
  insert_keyword ("template", TEMPLATE);
  insert_keyword ("this", THIS);
  insert_keyword ("throw", THROW);
  insert_keyword ("true", TRUE);
  insert_keyword ("try", TRY);
  insert_keyword ("typedef", TYPEDEF);
  insert_keyword ("typeid", TYPEID);
  insert_keyword ("typename", TYPENAME);
  insert_keyword ("union", UNION);
  insert_keyword ("unsigned", UNSIGNED);
  insert_keyword ("using", USING);
  insert_keyword ("virtual", VIRTUAL);
  insert_keyword ("void", VOID);
  insert_keyword ("volatile", VOLATILE);
  insert_keyword ("wchar_t", WCHAR);
  insert_keyword ("while", WHILE);
  insert_keyword ("xor", '^');
  insert_keyword ("xor_eq", XORASGN);
}
# 2236 "ebrowse.c"
static int
skip_to (int token)
{
  while (!(tk == (YYEOF) || tk == (token)))
    (tk = yylex ());
  return tk;
}




static void
skip_matching (void)
{
  int open, close, n;

  switch (open = (tk == -1 ? (tk = yylex ()) : tk))
    {
    case '{':
      close = '}';
      break;

    case '(':
      close = ')';
      break;

    case '<':
      close = '>';
      break;

    case '[':
      close = ']';
      break;

    default:
      abort ();
    }

  for (n = 0;;)
    {
      if ((tk == (open)))
        ++n;
      else if ((tk == (close)))
        --n;
      else if ((tk == (YYEOF)))
        break;

      (tk = yylex ());

      if (n == 0)
        break;
    }
}

static void
skip_initializer (void)
{
  for (;;)
    {
      switch ((tk == -1 ? (tk = yylex ()) : tk))
 {
 case ';':
 case ',':
 case YYEOF:
   return;

 case '{':
 case '[':
 case '(':
   skip_matching ();
   break;

 default:
   (tk = yylex ());
   break;
 }
    }
}



static struct link *
match_qualified_namespace_alias (void)
{
  struct link *head = ((void*)0);
  struct link *cur = ((void*)0);
  struct link *tmp = ((void*)0);

  for (;;)
    {
      (tk = yylex ());
      switch ((tk == -1 ? (tk = yylex ()) : tk))
        {
        case IDENT:
          tmp = (struct link *) xmalloc (sizeof *cur);
          tmp->sym = find_namespace (yytext, cur ? cur->sym : ((void*)0));
          tmp->next = ((void*)0);
          if (head)
            {
              cur = cur->next = tmp;
            }
          else
            {
              head = cur = tmp;
            }
          break;
        case DCOLON:

          break;
        default:
          return head;
          break;
        }
    }
}



static void
re_init_parser (void)
{
  tk = -1;
}
# 2367 "ebrowse.c"
static unsigned
parm_list (int *flags)
{
  unsigned hash = 0;
  int type_seen = 0;

  while (!(tk == (YYEOF) || tk == (')')))
    {
      switch ((tk == -1 ? (tk = yylex ()) : tk))
        {


        case '(':
          skip_matching ();
          break;


        case ',':
          (tk = yylex ());
          type_seen = 0;
          break;






        case IDENT:
          if (!type_seen)
            {
       char *last_id;
       unsigned ident_type_hash = 0;

       parse_qualified_param_ident_or_type (&last_id);
       if (last_id)
  {

    for (; *last_id; ++last_id)
      ident_type_hash = (ident_type_hash << 1) ^ *last_id;
    hash = (hash << 1) ^ ident_type_hash;
    type_seen = 1;
  }
            }
   else
     (tk = yylex ());
          break;

        case VOID:


          type_seen = 1;
          (tk = yylex ());
          if (!(tk == (')')))
            hash = (hash << 1) ^ VOID;
          break;

        case BOOL: case CHAR: case CLASS: case CONST:
        case DOUBLE: case ENUM: case FLOAT: case INT:
        case LONG: case SHORT: case SIGNED: case STRUCT:
        case UNION: case UNSIGNED: case VOLATILE: case WCHAR:
        case ELLIPSIS:
          type_seen = 1;
          hash = (hash << 1) ^ (tk == -1 ? (tk = yylex ()) : tk);
          (tk = yylex ());
          break;

        case '*': case '&': case '[': case ']':
          hash = (hash << 1) ^ (tk == -1 ? (tk = yylex ()) : tk);
          (tk = yylex ());
          break;

        default:
          (tk = yylex ());
          break;
        }
    }

  if ((tk == (')')))
    {
      (tk = yylex ());

      if ((tk == (CONST)))
        {

          hash = (hash << 1) ^ CONST;
          set_flag (flags, 4);
          (tk = yylex ());
        }

      if ((tk == (THROW)))
        {
          (tk = yylex ());
          if ((tk == ('('))) skip_matching (); else ((void) 0);
          set_flag (flags, 128);
        }

      if ((tk == ('=')))
        {
          (tk = yylex ());
          if ((tk == (CINT)) && yyival == 0)
            {
              (tk = yylex ());
              set_flag (flags, 8);
            }
        }
    }

  return hash;
}




static void
print_info (void)
{
  if (info_position >= 0 && (in - inbuffer) <= info_position)
    if (info_cls)
      printf ("(\"%s\" \"%s\" \"%s\" %d)\n",
       info_cls->name, sym_scope (info_cls),
       info_member->name, info_where);
}






static void
member (struct sym *cls, int vis)
{
  char *id = ((void*)0);
  int sc = SC_MEMBER;
  char *regexp = ((void*)0);
  int pos;
  int is_constructor;
  int anonymous = 0;
  int flags = 0;
  int class_tag;
  int type_seen = 0;
  int paren_seen = 0;
  unsigned hash = 0;
  int tilde = 0;

  while (!(tk == (';') || tk == ('{') || tk == ('}') || tk == (YYEOF)))
    {
      switch ((tk == -1 ? (tk = yylex ()) : tk))
        {
        default:
          (tk = yylex ());
          break;


        case TEMPLATE:
          (tk = yylex ());
          set_flag (&flags, 32);

          if ((tk == ('<'))) skip_matching (); else ((void) 0);
          break;

        case EXPLICIT:
          set_flag (&flags, 64);
          goto typeseen;

        case MUTABLE:
          set_flag (&flags, 16);
          goto typeseen;

        case T_INLINE:
          set_flag (&flags, 2);
          goto typeseen;

        case VIRTUAL:
          set_flag (&flags, 1);
          goto typeseen;

        case '[':
          skip_matching ();
          break;

        case ENUM:
          sc = SC_TYPE;
          goto typeseen;

        case TYPEDEF:
          sc = SC_TYPE;
          goto typeseen;

        case FRIEND:
          sc = SC_FRIEND;
          goto typeseen;

        case STATIC:
          sc = SC_STATIC;
          goto typeseen;

        case '~':
   tilde = 1;
          (tk = yylex ());
          break;

        case IDENT:


   id = (char *) xrealloc (id, strlen (yytext) + 2);
   if (tilde)
     {
       *id = '~';
       strcpy (id + 1, yytext);
     }
   else
     strcpy (id, yytext);
   (tk = yylex ());
   break;

        case OPERATOR:
   {
     char *s = operator_name (&sc);
     id = (char *) xrealloc (id, strlen (s) + 1);
     strcpy (id, s);
   }
          break;

        case '(':

          (tk = yylex ());
          paren_seen = 1;

          if (id && cls)
            {
              if (!(is_constructor = streq (id, cls->name)))
                regexp = matching_regexp ();
            }
          else
            is_constructor = 0;

          pos = (in - inbuffer);
          hash = parm_list (&flags);

          if (is_constructor)
            regexp = matching_regexp ();

          if (id && cls != ((void*)0))
     add_member_decl (cls, id, regexp, pos, hash, 0, sc, vis, flags);

          while (!(tk == (';') || tk == ('{') || tk == (YYEOF)))
            (tk = yylex ());

          if ((tk == ('{')) && id && cls)
     add_member_defn (cls, id, regexp, pos, hash, 0, sc, flags);

   free (id);
          id = ((void*)0);
          sc = SC_MEMBER;
          break;

        case STRUCT: case UNION: case CLASS:

          class_tag = (tk == -1 ? (tk = yylex ()) : tk);
          type_seen = 1;
          (tk = yylex ());
          anonymous = 1;




   while (!(tk == (YYEOF) || tk == (';') || tk == (':') || tk == ('{')))
     {
       if ((tk == (IDENT)))
  anonymous = 0;
       (tk = yylex ());
     }

          if ((tk == (':') || tk == ('{')))
     class_definition (anonymous ? ((void*)0) : cls, class_tag, flags, 1);
          else
            skip_to (';');
          break;

        case INT: case CHAR: case LONG: case UNSIGNED:
        case SIGNED: case CONST: case DOUBLE: case VOID:
        case SHORT: case VOLATILE: case BOOL: case WCHAR:
        case TYPENAME:
        typeseen:
          type_seen = 1;
          (tk = yylex ());
          break;
        }
    }

  if ((tk == (';')))
    {


      if (id && sc != SC_FRIEND && cls)
        {
          regexp = matching_regexp ();
          pos = (in - inbuffer);

          if (cls != ((void*)0))
            {
              if (type_seen || !paren_seen)
  add_member_decl (cls, id, regexp, pos, 0, 1, sc, vis, 0);
              else
  add_member_decl (cls, id, regexp, pos, hash, 0, sc, vis, 0);
            }
        }

      (tk = yylex ());
      print_info ();
    }
  else if ((tk == ('{')))
    {

      if (sc == SC_TYPE && id && cls)
        {
          regexp = matching_regexp ();
          pos = (in - inbuffer);

          if (cls != ((void*)0))
            {
              add_member_decl (cls, id, regexp, pos, 0, 1, sc, vis, 0);
              add_member_defn (cls, id, regexp, pos, 0, 1, sc, 0);
            }
        }

      skip_matching ();
      print_info ();
    }

  free (id);
}





static void
class_body (struct sym *cls, int tag)
{
  int vis = tag == CLASS ? PRIVATE : PUBLIC;
  int temp;

  while (!(tk == (YYEOF) || tk == ('}')))
    {
      switch ((tk == -1 ? (tk = yylex ()) : tk))
        {
        case PRIVATE: case PROTECTED: case PUBLIC:
          temp = (tk == -1 ? (tk = yylex ()) : tk);
          (tk = yylex ());

          if ((tk == (':')))
            {
              vis = temp;
              (tk = yylex ());
            }
          else
            {



              do
                {
                  (tk = yylex ());
                }
              while ((tk == (IDENT) || tk == (','))
                     || (tk == (PUBLIC) || tk == (PROTECTED) || tk == (PRIVATE)));
            }
          break;

        case TYPENAME:
        case USING:
          skip_to (';');
          break;


        case CHAR: case CLASS: case CONST:
        case DOUBLE: case ENUM: case FLOAT: case INT:
        case LONG: case SHORT: case SIGNED: case STRUCT:
        case UNION: case UNSIGNED: case VOID: case VOLATILE:
        case TYPEDEF: case STATIC: case T_INLINE: case FRIEND:
        case VIRTUAL: case TEMPLATE: case IDENT: case '~':
        case BOOL: case WCHAR: case EXPLICIT: case MUTABLE:
          member (cls, vis);
          break;

        default:
          (tk = yylex ());
          break;
        }
    }
}






static struct sym *
parse_classname (void)
{
  struct sym *last_class = ((void*)0);

  while ((tk == (IDENT)))
    {
      last_class = add_sym (yytext, last_class);
      (tk = yylex ());

      if ((tk == ('<')))
        {
          skip_matching ();
          set_flag (&last_class->flags, 32);
        }

      if (!(tk == (DCOLON)))
        break;

      (tk = yylex ());
    }

  return last_class;
}






static char *
operator_name (int *sc)
{
  static size_t id_size = 0;
  static char *id = ((void*)0);
  const char *s;
  size_t len;

  (tk = yylex ());

  if ((tk == (NEW) || tk == (DELETE)))
    {

      if (*sc != SC_FRIEND)
        *sc = SC_STATIC;

      s = token_string ((tk == -1 ? (tk = yylex ()) : tk));
      (tk = yylex ());

      ptrdiff_t slen = strlen (s);
      len = slen + 10;
      if (len > id_size)
 {
   size_t new_size = ((len) > (2 * id_size) ? (len) : (2 * id_size));
   id = (char *) xrealloc (id, new_size);
   id_size = new_size;
 }
      char *z = stpcpy (id, s);


      if ((tk == ('[')))
 {
   z = stpcpy (z, "[");
   (tk = yylex ());

   if ((tk == (']')))
     {
       strcpy (z, "]");
       (tk = yylex ());
     }
 }
    }
  else
    {
      size_t tokens_matched = 0;

      len = 20;
      if (len > id_size)
 {
   int new_size = ((len) > (2 * id_size) ? (len) : (2 * id_size));
   id = (char *) xrealloc (id, new_size);
   id_size = new_size;
 }
      char *z = stpcpy (id, "operator");




      while (!((tk == ('(')) && tokens_matched)
      && !(tk == (';') || tk == (YYEOF)))
        {
   s = token_string ((tk == -1 ? (tk = yylex ()) : tk));
   len += strlen (s) + 2;
   if (len > id_size)
     {
       ptrdiff_t idlen = z - id;
       size_t new_size = ((len) > (2 * id_size) ? (len) : (2 * id_size));
       id = (char *) xrealloc (id, new_size);
       id_size = new_size;
       z = id + idlen;
     }

   if (*s != ')' && *s != ']')
     *z++ = ' ';
          z = stpcpy (z, s);
          (tk = yylex ());


   if (!((*__ctype_b_loc ())[(int) (((unsigned char) *s))] & (unsigned short int) _ISalpha) && *s != '(' && *s != '[')
     break;

   ++tokens_matched;
        }
    }

  return id;
}






static struct sym *
parse_qualified_ident_or_type (char **last_id)
{
  struct sym *cls = ((void*)0);
  char *id = ((void*)0);
  size_t id_size = 0;
  int enter = 0;

  while ((tk == (IDENT)))
    {
      int len = strlen (yytext) + 1;
      if (len > id_size)
 {
   id = (char *) xrealloc (id, len);
   id_size = len;
 }
      strcpy (id, yytext);
      *last_id = id;
      (tk = yylex ());

      if ((tk == ('<'))) skip_matching (); else ((void) 0);

      if ((tk == (DCOLON)))
 {
   struct sym *pcn = ((void*)0);
   struct link *pna = check_namespace_alias (id);
   if (pna)
     {
       do
  {
    enter_namespace (pna->sym->name);
    enter++;
    pna = pna->next;
  }
       while (pna);
     }
   else if ((pcn = check_namespace (id, current_namespace)))
     {
       enter_namespace (pcn->name);
       enter++;
     }
   else
     cls = add_sym (id, cls);

   *last_id = ((void*)0);
   free (id);
   id = ((void*)0);
   id_size = 0;
   (tk = yylex ());
 }
      else
 break;
    }

  while (enter--)
    leave_namespace ();

  return cls;
}






static void
parse_qualified_param_ident_or_type (char **last_id)
{
  struct sym *cls = ((void*)0);
  static char *id = ((void*)0);
  static int id_size = 0;

  (((tk == (IDENT))) ? (void) (0) : __assert_fail ("(tk == (IDENT))", "ebrowse.c", 2960, __PRETTY_FUNCTION__));

  do
    {
      int len = strlen (yytext) + 1;
      if (len > id_size)
 {
   id = (char *) xrealloc (id, len);
   id_size = len;
 }
      strcpy (id, yytext);
      *last_id = id;
      (tk = yylex ());

      if ((tk == ('<'))) skip_matching (); else ((void) 0);

      if ((tk == (DCOLON)))
 {
   cls = add_sym (id, cls);
   *last_id = ((void*)0);
   (tk = yylex ());
 }
      else
 break;
    }
  while ((tk == (IDENT)));
}
# 2998 "ebrowse.c"
static void
class_definition (struct sym *containing, int tag, int flags, int nested)
{
  struct sym *current;
  struct sym *base_class;




  if ((tag != CLASS && !f_structs) || (nested && !f_nested_classes))
    current = ((void*)0);
  else
    {
      current = add_sym (yytext, containing);
      current->pos = (in - inbuffer);
      current->regexp = matching_regexp ();
      current->filename = filename;
      current->flags = flags;
    }


  if ((tk == (':')))
    {
      int done = 0;
      (tk = yylex ());

      while (!done)
        {
          switch ((tk == -1 ? (tk = yylex ()) : tk))
            {
            case VIRTUAL: case PUBLIC: case PROTECTED: case PRIVATE:
              (tk = yylex ());
              break;

            case IDENT:
              base_class = parse_classname ();
              if (base_class && current && base_class != current)
                add_link (base_class, current);
              break;
# 3045 "ebrowse.c"
            case ',':
              (tk = yylex ());
              break;

            default:
# 3059 "ebrowse.c"
              while (!(tk == (';') || tk == (YYEOF) || tk == ('{')))
                (tk = yylex ());
       done = 1;

            case '{':
              done = 1;
       break;
            }
        }
    }


  if ((tk == ('{')))
    {
      if (tag != CLASS && !f_structs)
        skip_matching ();
      else
        {
          (tk = yylex ());
          class_body (current, tag);

          if ((tk == ('}')))
            {
              (tk = yylex ());
              if ((tk == (';')) && !nested)
                (tk = yylex ());
            }
        }
    }
}






static void
add_declarator (struct sym **cls, char **id, int flags, int sc)
{
  if ((tk == (';') || tk == (',')))
    {



      if (*id)
        {
          char *regexp = matching_regexp ();
          int pos = (in - inbuffer);

          if (*cls)
     add_member_defn (*cls, *id, regexp, pos, 0, 1, SC_UNKNOWN, flags);
          else
            add_global_defn (*id, regexp, pos, 0, 1, sc, flags);
        }

      (tk = yylex ());
      print_info ();
    }
  else if ((tk == ('{')))
    {
      if (sc == SC_TYPE && *id)
        {

          char *regexp = matching_regexp ();
          int pos = (in - inbuffer);
          add_global_defn (*id, regexp, pos, 0, 1, sc, flags);
        }

      skip_matching ();
      print_info ();
    }

  free (*id);
  *id = ((void*)0);
  *cls = ((void*)0);
}



static void
declaration (int flags)
{
  char *id = ((void*)0);
  struct sym *cls = ((void*)0);
  char *regexp = ((void*)0);
  int pos = 0;
  unsigned hash = 0;
  int is_constructor;
  int sc = 0;

  while (!(tk == (';') || tk == ('{') || tk == (YYEOF)))
    {
      switch ((tk == -1 ? (tk = yylex ()) : tk))
        {
        default:
          (tk = yylex ());
          break;

        case '[':
          skip_matching ();
          break;

        case ENUM:
        case TYPEDEF:
          sc = SC_TYPE;
          (tk = yylex ());
          break;

        case STATIC:
          sc = SC_STATIC;
          (tk = yylex ());
          break;

        case INT: case CHAR: case LONG: case UNSIGNED:
        case SIGNED: case CONST: case DOUBLE: case VOID:
        case SHORT: case VOLATILE: case BOOL: case WCHAR:
          (tk = yylex ());
          break;

        case CLASS: case STRUCT: case UNION:


          if (id)
     {
       free (id);
       return;
     }

        case '=':


   skip_initializer ();
          break;

 case ',':
   add_declarator (&cls, &id, flags, sc);
   break;

        case OPERATOR:
   {
     char *s = operator_name (&sc);
     id = (char *) xrealloc (id, strlen (s) + 1);
     strcpy (id, s);
   }
          break;

        case T_INLINE:
          set_flag (&flags, 2);
          (tk = yylex ());
          break;

        case '~':
   (tk = yylex ());
   if ((tk == (IDENT)))
     {
       id = (char *) xrealloc (id, strlen (yytext) + 2);
       *id = '~';
       strcpy (id + 1, yytext);
       (tk = yylex ());
     }
          break;

        case IDENT:
   cls = parse_qualified_ident_or_type (&id);
          break;

        case '(':

          if (cls)
            {
              (tk = yylex ());

              if (id && cls)
                {
                  if (!(is_constructor = streq (id, cls->name)))
                    regexp = matching_regexp ();
                }
              else
                is_constructor = 0;

              pos = (in - inbuffer);
              hash = parm_list (&flags);

              if (is_constructor)
                regexp = matching_regexp ();

              if (id && cls)
  add_member_defn (cls, id, regexp, pos, hash, 0,
     SC_UNKNOWN, flags);
            }
          else
            {



              (tk = yylex ());

              if (id)
                {
                  regexp = matching_regexp ();
                  pos = (in - inbuffer);
                  hash = parm_list (&flags);
                  add_global_decl (id, regexp, pos, hash, 0, sc, flags);
                }




              if ((tk == (CLASS) || tk == (STRUCT) || tk == (UNION)))
                return;
            }

          while (!(tk == (';') || tk == ('{') || tk == (YYEOF)))
            (tk = yylex ());

          if (!cls && id && (tk == ('{')))
     add_global_defn (id, regexp, pos, hash, 0, sc, flags);

   free (id);
          id = ((void*)0);
          break;
        }
    }

  add_declarator (&cls, &id, flags, sc);
}







static int
globals (int start_flags)
{
  int anonymous;
  int class_tk;
  int flags = start_flags;

  for (;;)
    {
      char *prev_in = in;

      switch ((tk == -1 ? (tk = yylex ()) : tk))
        {
        case NAMESPACE:
          {
            (tk = yylex ());

            if ((tk == (IDENT)))
              {
                char *namespace_name = xstrdup (yytext);
                (tk = yylex ());

                if ((tk == ('=')))
                  {
      struct link *qna = match_qualified_namespace_alias ();
      if (qna)
                      register_namespace_alias (namespace_name, qna);

                    if (skip_to (';') == ';')
                      (tk = yylex ());
                  }
                else if ((tk == ('{')))
                  {
                    (tk = yylex ());
                    enter_namespace (namespace_name);
                    globals (0);
                    leave_namespace ();
                    if ((tk == ('}'))) (tk = yylex ()); else ((void) 0);
                  }

  free (namespace_name);
              }
          }
          break;

        case EXTERN:
          (tk = yylex ());
          if ((tk == (CSTRING)) && *string_start == 'C'
              && *(string_start + 1) == '"')
            {

              (tk = yylex ());

              if ((tk == ('{')))
                {
                  (tk = yylex ());
                  globals (256);
                  if ((tk == ('}'))) (tk = yylex ()); else ((void) 0);
                }
              else
                set_flag (&flags, 256);
            }
          break;

        case TEMPLATE:
          (tk = yylex ());
          if ((tk == ('<'))) skip_matching (); else ((void) 0);
          set_flag (&flags, 32);
          break;

        case CLASS: case STRUCT: case UNION:
          class_tk = (tk == -1 ? (tk = yylex ()) : tk);
          (tk = yylex ());
          anonymous = 1;





   while (!(tk == (YYEOF) || tk == (';') || tk == (':') || tk == ('{')))
     {
       if ((tk == (IDENT)))
  anonymous = 0;
       (tk = yylex ());
     }


          if ((tk == (':') || tk == ('{')) && !anonymous)
              class_definition (((void*)0), class_tk, flags, 0);
          else
            {
              if (skip_to (';') == ';')
                (tk = yylex ());
            }

          flags = start_flags;
          break;

        case YYEOF:
          return 1;

        case '}':
          return 0;

        default:
          declaration (flags);
          flags = start_flags;
          break;
        }

      if (prev_in == in)
        yyerror ("parse error", ((void*)0));
    }
}




static void
yyparse (void)
{
  while (globals (0) == 0)
    if ((tk == ('}'))) (tk = yylex ()); else ((void) 0);
}
# 3426 "ebrowse.c"
static void
add_search_path (char *path_list)
{
  while (*path_list)
    {
      char *start = path_list;
      struct search_path *p;

      while (*path_list && *path_list != ':')
        ++path_list;

      p = (struct search_path *) xmalloc (sizeof *p);
      p->path = (char *) xmalloc (path_list - start + 1);
      memcpy (p->path, start, path_list - start);
      p->path[path_list - start] = '\0';
      p->next = ((void*)0);

      if (search_path_tail)
        {
          search_path_tail->next = p;
          search_path_tail = p;
        }
      else
        search_path = search_path_tail = p;

      while (*path_list == ':')
        ++path_list;
    }
}






static FILE *
open_file (char *file)
{
  FILE *fp = ((void*)0);
  static char *buffer;
  static int buffer_size;
  struct search_path *path;
  int flen = strlen (file) + 1;

  filename = xstrdup (file);

  for (path = search_path; path && fp == ((void*)0); path = path->next)
    {
      int len = strlen (path->path) + flen;

      if (len + 1 >= buffer_size)
 {
   buffer_size = ((len + 1) > (2 * buffer_size) ? (len + 1) : (2 * buffer_size));
   buffer = (char *) xrealloc (buffer, buffer_size);
 }

      char *z = stpcpy (buffer, path->path);
      *z++ = '/';
      strcpy (z, file);
      fp = fopen (buffer, "r");
    }


  if (fp == ((void*)0))
     fp = fopen (file, "r");

  if (fp == ((void*)0))
    yyerror ("cannot open", ((void*)0));

  return fp;
}




static char const *const usage_message[] =
  {
    "Usage: ebrowse [options] {files}\n\n  -a, --append                  append output to existing file\n  -f, --files=FILES             read input file names from FILE\n  -I, --search-path=LIST        set search path for input files\n  -m, --min-regexp-length=N     set minimum regexp length to N\n  -M, --max-regexp-length=N     set maximum regexp length to N\n",
# 3512 "ebrowse.c"
    "  -n, --no-nested-classes       exclude nested classes\n  -o, --output-file=FILE        set output file name to FILE\n  -p, --position-info           print info about position in file\n  -s, --no-structs-or-unions    don't record structs or unions\n  -v, --verbose                 be verbose\n  -V, --very-verbose            be very verbose\n  -x, --no-regexps		don't record regular expressions\n      --help                    display this help\n      --version			display version info\n\n"
# 3524 "ebrowse.c"
  };

static _Noreturn void
usage (int error)
{
  int i;
  for (i = 0; i < sizeof usage_message / sizeof *usage_message; i++)
    fputs (usage_message[i], stdout);
  exit (error ? 1 : 0);
}
# 3543 "ebrowse.c"
static _Noreturn void
version (void)
{
  char emacs_copyright[] = "Copyright (C) 2016 Free Software Foundation, Inc.";

  printf ("ebrowse %s\n", "25.1");
  puts (emacs_copyright);
  puts ("This program is distributed under the same terms as Emacs.");
  exit (0);
}





static void
process_file (char *file)
{
  FILE *fp;

  fp = open_file (file);
  if (fp)
    {
      size_t nread, nbytes;


      if (f_very_verbose)
        {
          puts (filename);
          fflush (stdout);
        }
      else if (f_verbose)
        {
          putchar ('.');
          fflush (stdout);
        }


      for (nread = 0;;)
 {
   if (nread + READ_CHUNK_SIZE >= inbuffer_size)
     {
       inbuffer_size = nread + READ_CHUNK_SIZE + 1;
       inbuffer = (char *) xrealloc (inbuffer, inbuffer_size);
     }

   nbytes = fread (inbuffer + nread, 1, READ_CHUNK_SIZE, fp);
   if (nbytes == 0)
     break;
   nread += nbytes;
 }
      inbuffer[nread] = '\0';


      re_init_scanner ();
      re_init_parser ();


      yyparse ();
      fclose (fp);
    }
}






static char *
read_line (FILE *fp)
{
  static char *buffer;
  static int buffer_size;
  int i = 0, c;

  while ((c = _IO_getc (fp)) != (-1) && c != '\n')
    {
      if (i >= buffer_size)
 {
   buffer_size = ((100) > (buffer_size * 2) ? (100) : (buffer_size * 2));
   buffer = (char *) xrealloc (buffer, buffer_size);
 }

      buffer[i++] = c;
    }

  if (c == (-1) && i == 0)
    return ((void*)0);

  if (i == buffer_size)
    {
      buffer_size = ((100) > (buffer_size * 2) ? (100) : (buffer_size * 2));
      buffer = (char *) xrealloc (buffer, buffer_size);
    }

  buffer[i] = '\0';
  if (i > 0 && buffer[i - 1] == '\r')
    buffer[i - 1] = '\0';
  return buffer;
}




int
main (int argc, char **argv)
{
  int i;
  int any_inputfiles = 0;
  static const char *out_filename = "BROWSE";
  static char **input_filenames = ((void*)0);
  static int input_filenames_size = 0;
  static int n_input_files;

  filename = "command line";
  yyout = stdout;

  while ((i = getopt_long (argc, argv, "af:I:m:M:no:p:svVx",
                           options, ((void*)0))) != (-1))
    {
      switch (i)
        {

 case 'p':
   info_position = atoi (optarg);
   break;

        case 'n':
          f_nested_classes = 0;
          break;

        case 'x':
          f_regexps = 0;
          break;


        case 'f':
   if (n_input_files == input_filenames_size)
     {
       input_filenames_size = ((10) > (2 * input_filenames_size) ? (10) : (2 * input_filenames_size));
       input_filenames = (char **) xrealloc ((void *)input_filenames,
          input_filenames_size);
     }
          input_filenames[n_input_files++] = xstrdup (optarg);
          break;


        case 'a':
          f_append = 1;
          break;


        case 's':
          f_structs = 0;
          break;


        case 'v':
          f_verbose = 1;
          break;


        case 'V':
          f_verbose = 1;
          f_very_verbose = 1;
          break;


        case 'o':
   out_filename = optarg;
          break;



        case 'm':
          min_regexp = atoi (optarg);
          break;



        case 'M':
          max_regexp = atoi (optarg);
          break;


        case 'I':
          add_search_path (optarg);
          break;


        case -2:
          usage (0);
          break;

 case -3:
   version ();
   break;
        }
    }




  init_scanner ();
  init_sym ();


  if (*out_filename)
    {
      if (f_append)
 {




   FILE *fp;
   int rc;

   fp = fopen (out_filename, "r");
   if (fp == ((void*)0))
     {
       yyerror ("file '%s' must exist for --append", out_filename);
       exit (1);
     }

   rc = fseek (fp, 0, 2);
   if (rc == -1)
     {
       yyerror ("error seeking in file '%s'", out_filename);
       exit (1);
     }

   rc = ftell (fp);
   if (rc == -1)
     {
       yyerror ("error getting size of file '%s'", out_filename);
       exit (1);
     }

   else if (rc == 0)
     {
       yyerror ("file '%s' is empty", out_filename);


     }

   fclose (fp);
 }

      yyout = fopen (out_filename, f_append ? "a" : "w");
      if (yyout == ((void*)0))
 {
   yyerror ("cannot open output file '%s'", out_filename);
   exit (1);
 }
    }


  while (optind < argc)
    {
      process_file (argv[optind++]);
      any_inputfiles = 1;
    }


  if (!any_inputfiles && n_input_files == 0)
    {
      char *file;
      while ((file = read_line (stdin)) != ((void*)0))
 process_file (file);
    }
  else
    {


      for (i = 0; i < n_input_files; ++i)
        {
          FILE *fp = fopen (input_filenames[i], "r");

          if (fp == ((void*)0))
            yyerror ("cannot open input file '%s'", input_filenames[i]);
          else
            {
       char *file;
       while ((file = read_line (fp)) != ((void*)0))
  process_file (file);
              fclose (fp);
            }
        }
    }


  dump_roots (yyout);


  if (yyout != stdout)
    fclose (yyout);

  return 0;
}
