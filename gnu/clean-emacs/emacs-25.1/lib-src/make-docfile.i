# 1 "make-docfile.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "make-docfile.c" 2
# 37 "make-docfile.c"
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
# 38 "make-docfile.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 40 "make-docfile.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 42 "make-docfile.c" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 1 3
# 63 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 22 "/usr/include/bits/wchar.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/wchar.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 48 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 64 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 2 3
# 43 "make-docfile.c" 2
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
# 44 "make-docfile.c" 2
# 1 "../lib/stdlib.h" 1
# 21 "../lib/stdlib.h" 3
# 45 "make-docfile.c" 2








# 1 "../lib/binary-io.h" 1
# 22 "../lib/binary-io.h"
# 1 "../lib/fcntl.h" 1
# 23 "../lib/fcntl.h" 3
# 50 "../lib/fcntl.h" 3
# 1 "../lib/sys/types.h" 1 3
# 21 "../lib/sys/types.h" 3
# 51 "../lib/fcntl.h" 2 3
# 61 "../lib/fcntl.h" 3
# 1 "/usr/include/fcntl.h" 1 3 4
# 35 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 35 "/usr/include/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };


struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };




# 1 "/usr/include/bits/fcntl-linux.h" 1 3 4
# 38 "/usr/include/bits/fcntl-linux.h" 3 4
# 1 "/usr/include/bits/uio.h" 1 3 4
# 25 "/usr/include/bits/uio.h" 3 4
# 1 "../lib/sys/types.h" 1 3 4
# 21 "../lib/sys/types.h" 3
# 26 "/usr/include/bits/uio.h" 2 3 4
# 43 "/usr/include/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 39 "/usr/include/bits/fcntl-linux.h" 2 3 4
# 237 "/usr/include/bits/fcntl-linux.h" 3 4
enum __pid_type
  {
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };


struct f_owner_ex
  {
    enum __pid_type type;
    __pid_t pid;
  };
# 300 "/usr/include/bits/fcntl-linux.h" 3 4
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;

  unsigned char f_handle[0];
};
# 317 "/usr/include/bits/fcntl-linux.h" 3 4
extern ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__ ));






extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);






extern ssize_t vmsplice (int __fdout, const struct iovec *__iov,
    size_t __count, unsigned int __flags);





extern ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
         __off64_t *__offout, size_t __len,
         unsigned int __flags);





extern ssize_t tee (int __fdin, int __fdout, size_t __len,
      unsigned int __flags);






extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
# 367 "/usr/include/bits/fcntl-linux.h" 3 4
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);




extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) __attribute__ ((__nothrow__ ));





extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);
# 62 "/usr/include/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 67 "/usr/include/fcntl.h" 3 4
# 1 "../lib/time.h" 1 3 4
# 21 "../lib/time.h" 3
# 35 "../lib/time.h" 3
# 1 "/usr/include/time.h" 1 3 4
# 36 "../lib/time.h" 2 3
# 68 "/usr/include/fcntl.h" 2 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
# 46 "/usr/include/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __unused[3];
# 115 "/usr/include/bits/stat.h" 3 4
  };



struct stat64
  {
    __dev_t st_dev;

    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;






    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;





    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;







    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 164 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __unused[3];



  };
# 69 "/usr/include/fcntl.h" 2 3 4
# 154 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 163 "/usr/include/fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 173 "/usr/include/fcntl.h" 3 4
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 187 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 198 "/usr/include/fcntl.h" 3 4
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 209 "/usr/include/fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 219 "/usr/include/fcntl.h" 3 4
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 238 "/usr/include/fcntl.h" 3 4
extern int lockf (int __fd, int __cmd, off_t __len);
# 247 "/usr/include/fcntl.h" 3 4
extern int lockf64 (int __fd, int __cmd, off64_t __len);







extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ ));
# 267 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) __attribute__ ((__nothrow__ ));
# 277 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 288 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
# 62 "../lib/fcntl.h" 2 3
# 403 "../lib/fcntl.h" 3
extern int rpl_fcntl (int fd, int action, ...);
extern int _gl_cxxalias_dummy;






extern int _gl_cxxalias_dummy;
# 23 "../lib/binary-io.h" 2



# 1 "../lib/stdio.h" 1
# 21 "../lib/stdio.h" 3
# 27 "../lib/binary-io.h" 2
# 52 "../lib/binary-io.h"
inline int
set_binary_mode (int fd, int mode)
{
  (void) fd;
  (void) mode;
  return 0;
}
# 54 "make-docfile.c" 2
# 1 "../lib/intprops.h" 1
# 23 "../lib/intprops.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 1 3
# 37 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 3
# 1 "/usr/include/limits.h" 1 3 4
# 144 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 2 3 4
# 145 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 149 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/xopen_lim.h" 1 3 4
# 33 "/usr/include/bits/xopen_lim.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 34 "/usr/include/bits/xopen_lim.h" 2 3 4
# 153 "/usr/include/limits.h" 2 3 4
# 38 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 2 3
# 24 "../lib/intprops.h" 2
# 55 "make-docfile.c" 2
# 1 "../lib/min-max.h" 1
# 56 "make-docfile.c" 2
# 69 "make-docfile.c"
static void scan_file (char *filename);
static void scan_lisp_file (const char *filename, const char *mode);
static void scan_c_file (char *filename, const char *mode);
static void scan_c_stream (FILE *infile);
static void start_globals (void);
static void write_globals (void);


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
# 274 "/usr/include/unistd.h" 3 4
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
# 77 "make-docfile.c" 2


static char *progname;


static _Bool generate_globals;



static void __attribute__ ((__format__ (__printf__, 1, 0)))
verror (char const *m, va_list ap)
{
  fprintf (stderr, "%s: ", progname);
  vfprintf (stderr, m, ap);
  fprintf (stderr, "\n");
}



static void __attribute__ ((__format__ (__printf__, 1, 2)))
error (char const *m, ...)
{
  va_list ap;
  __builtin_va_start(ap, m);
  verror (m, ap);
  __builtin_va_end(ap);
}



static _Noreturn void __attribute__ ((__format__ (__printf__, 1, 2)))
fatal (char const *m, ...)
{
  va_list ap;
  __builtin_va_start(ap, m);
  verror (m, ap);
  __builtin_va_end(ap);
  exit (1);
}

static _Noreturn void
memory_exhausted (void)
{
  fatal ("virtual memory exhausted");
}



static void *
xmalloc (ptrdiff_t size)
{
  void *result = malloc (size);
  if (result == ((void*)0))
    memory_exhausted ();
  return result;
}



static void *
xrealloc (void *arg, ptrdiff_t size)
{
  void *result = realloc (arg, size);
  if (result == ((void*)0))
    memory_exhausted ();
  return result;
}


int
main (int argc, char **argv)
{
  int i;

  progname = argv[0];


  i = 1;
  if (argc > i + 1 && !strcmp (argv[i], "-o"))
    {
      if (! freopen (argv[i + 1], "w", stdout))
 {
   perror (argv[i + 1]);
   return 1;
 }
      i += 2;
    }
  if (argc > i + 1 && !strcmp (argv[i], "-a"))
    {
      if (! freopen (argv[i + 1], "a", stdout))
 {
   perror (argv[i + 1]);
   return 1;
 }
      i += 2;
    }
  if (argc > i + 1 && !strcmp (argv[i], "-d"))
    {
      if (chdir (argv[i + 1]) != 0)
 {
   perror (argv[i + 1]);
   return 1;
 }
      i += 2;
    }
  if (argc > i && !strcmp (argv[i], "-g"))
    {
      generate_globals = 1;
      ++i;
    }

  set_binary_mode (fileno (stdout), 0);

  if (generate_globals)
    start_globals ();

  if (argc <= i)
    scan_c_stream (stdin);
  else
    {
      int first_infile = i;
      for (; i < argc; i++)
 {
   int j;

   for (j = first_infile; j < i; j++)
     if (strcmp (argv[i], argv[j]) == 0)
       break;
   if (j == i)
     scan_file (argv[i]);
 }
    }

  if (generate_globals)
    write_globals ();

  if (ferror (stdout) || fclose (stdout) != 0)
    fatal ("write error");

  return 0;
}


static void
put_filename (char *filename)
{
  char *tmp;

  for (tmp = filename; *tmp; tmp++)
    {
      if (((*tmp) == '/'))
 filename = tmp + 1;
    }

  printf ("\037S%s\n", filename);
}




static void
scan_file (char *filename)
{
  ptrdiff_t len = strlen (filename);

  if (!generate_globals)
    put_filename (filename);
  if (len > 4 && !strcmp (filename + len - 4, ".elc"))
    scan_lisp_file (filename, "rb");
  else if (len > 3 && !strcmp (filename + len - 3, ".el"))
    scan_lisp_file (filename, "r");
  else
    scan_c_file (filename, "r");
}

static void
start_globals (void)
{
  puts ("/* This file was auto-generated by make-docfile.  */");
  puts ("/* DO NOT EDIT.  */");
  puts ("struct emacs_globals {");
}

static char input_buffer[128];


struct rcsoc_state
{

  intmax_t pending_spaces, pending_newlines;


  FILE *in_file;


  char *buf_ptr;

  FILE *out_file;



  const char *keyword;


  const char *cur_keyword_ptr;

  _Bool saw_keyword;
};




static void
put_char (char ch, struct rcsoc_state *state)
{
  char out_ch;
  do
    {
      if (state->pending_newlines > 0)
 {
   state->pending_newlines--;
   out_ch = '\n';
 }
      else if (state->pending_spaces > 0)
 {
   state->pending_spaces--;
   out_ch = ' ';
 }
      else
 out_ch = ch;

      if (state->out_file)
 _IO_putc (out_ch, state->out_file);
      if (state->buf_ptr)
 *state->buf_ptr++ = out_ch;
    }
  while (out_ch != ch);
}







static void
scan_keyword_or_put_char (char ch, struct rcsoc_state *state)
{
  if (state->keyword
      && *state->cur_keyword_ptr == ch
      && (state->cur_keyword_ptr > state->keyword
   || state->pending_newlines > 0))


    {
      if (*++state->cur_keyword_ptr == '\0')

 {
   state->saw_keyword = 1;


   state->cur_keyword_ptr = state->keyword;


   state->pending_newlines = 2;
   state->pending_spaces = 0;



   int c;
   do
     c = _IO_getc (state->in_file);
   while (c == ' ' || c == '\n');


   if (c != '(')
     fatal ("Missing '(' after keyword");
   put_char (c, state);


   do
     {
       c = _IO_getc (state->in_file);
       if (c == (-1))
  fatal ("Unexpected EOF after keyword");
     }
   while (c != ' ' && c != ')');
   put_char ('f', state);
   put_char ('n', state);


   ungetc (c, state->in_file);
 }
    }
  else
    {
      if (state->keyword && state->cur_keyword_ptr > state->keyword)



 {
   const char *p;

   for (p = state->keyword; p < state->cur_keyword_ptr; p++)
     put_char (*p, state);

   state->cur_keyword_ptr = state->keyword;
 }

      put_char (ch, state);
    }
}
# 400 "make-docfile.c"
static int
read_c_string_or_comment (FILE *infile, int printflag, _Bool comment,
     _Bool *saw_usage)
{
  int c;
  struct rcsoc_state state;

  state.in_file = infile;
  state.buf_ptr = (printflag < 0 ? input_buffer : 0);
  state.out_file = (printflag > 0 ? stdout : 0);
  state.pending_spaces = 0;
  state.pending_newlines = 0;
  state.keyword = (saw_usage ? "usage:" : 0);
  state.cur_keyword_ptr = state.keyword;
  state.saw_keyword = 0;

  c = _IO_getc (infile);
  if (comment)
    while (c == '\n' || c == '\r' || c == '\t' || c == ' ')
      c = _IO_getc (infile);

  while (c != (-1))
    {
      while (c != (-1) && (comment ? c != '*' : c != '"'))
 {
   if (c == '\\')
     {
       c = _IO_getc (infile);
       if (c == '\n' || c == '\r')
  {
    c = _IO_getc (infile);
    continue;
  }
       if (c == 'n')
  c = '\n';
       if (c == 't')
  c = '\t';
     }

   if (c == ' ')
     state.pending_spaces++;
   else if (c == '\n')
     {
       state.pending_newlines++;
       state.pending_spaces = 0;
     }
   else
     scan_keyword_or_put_char (c, &state);

   c = _IO_getc (infile);
 }

      if (c != (-1))
 c = _IO_getc (infile);

      if (comment)
 {
   if (c == '/')
     {
       c = _IO_getc (infile);
       break;
     }

   scan_keyword_or_put_char ('*', &state);
 }
      else
 {
   if (c != '"')
     break;


   c = _IO_getc (infile);
 }
    }

  if (printflag < 0)
    *state.buf_ptr = 0;

  if (saw_usage)
    *saw_usage = state.saw_keyword;

  return c;
}






static void
write_c_args (char *func, char *buf, int minargs, int maxargs)
{
  char *p;
  _Bool in_ident = 0;
  char *ident_start ;
  ptrdiff_t ident_length = 0;

  fputs ("(fn", stdout);

  if (*buf == '(')
    ++buf;

  for (p = buf; *p; p++)
    {
      char c = *p;


      if ((('A' <= c && c <= 'Z')
    || ('a' <= c && c <= 'z')
    || ('0' <= c && c <= '9')
    || c == '_')
   != in_ident)
 {
   if (!in_ident)
     {
       in_ident = 1;
       ident_start = p;
     }
   else
     {
       in_ident = 0;
       ident_length = p - ident_start;
     }
 }



      if (c == ',' || c == ')')
 {
   if (ident_length == 0)
     {
       error ("empty arg list for '%s' should be (void), not ()", func);
       continue;
     }

   if (strncmp (ident_start, "void", ident_length) == 0)
     continue;

   putchar (' ');

   if (minargs == 0 && maxargs > 0)
     fputs ("&optional ", stdout);

   minargs--;
   maxargs--;



   if (ident_length == 6 && memcmp (ident_start, "defalt", 6) == 0)
     fputs ("DEFAULT", stdout);
   else
     while (ident_length-- > 0)
       {
  c = *ident_start++;
  if (c >= 'a' && c <= 'z')

    c += 'A' - 'a';
  else if (c == '_')

    c = '-';
  putchar (c);
       }
 }
    }

  putchar (')');
}




enum global_type
{
  INVALID,
  LISP_OBJECT,
  EMACS_INTEGER,
  BOOLEAN,
  SYMBOL,
  FUNCTION
};


struct global
{
  enum global_type type;
  char *name;
  int flags;
  union
  {
    int value;
    char const *svalue;
  } v;
};


enum { DEFUN_noreturn = 1, DEFUN_const = 2 };



static ptrdiff_t num_globals;
static ptrdiff_t num_globals_allocated;
static struct global *globals;

static struct global *
add_global (enum global_type type, char const *name, int value,
     char const *svalue)
{

  if (strcmp (name, "..."))
    {
      if (num_globals == num_globals_allocated)
 {
   ptrdiff_t num_globals_max = ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL)))
           / sizeof *globals);
   if (num_globals_allocated == num_globals_max)
     memory_exhausted ();
   if (num_globals_allocated < num_globals_max / 2)
     num_globals_allocated = 2 * num_globals_allocated + 1;
   else
     num_globals_allocated = num_globals_max;
   globals = xrealloc (globals, num_globals_allocated * sizeof *globals);
 }

      ++num_globals;

      ptrdiff_t namesize = strlen (name) + 1;
      char *buf = xmalloc (namesize + (svalue ? strlen (svalue) + 1 : 0));
      globals[num_globals - 1].type = type;
      globals[num_globals - 1].name = strcpy (buf, name);
      if (svalue)
 globals[num_globals - 1].v.svalue = strcpy (buf + namesize, svalue);
      else
 globals[num_globals - 1].v.value = value;
      globals[num_globals - 1].flags = 0;
      return globals + num_globals - 1;
    }
  return ((void*)0);
}

static int
compare_globals (const void *a, const void *b)
{
  const struct global *ga = a;
  const struct global *gb = b;

  if (ga->type != gb->type)
    return ga->type - gb->type;



  if (ga->type == SYMBOL)
    {
      _Bool a_nil = strcmp (ga->name, "Qnil") == 0;
      _Bool b_nil = strcmp (gb->name, "Qnil") == 0;
      if (a_nil | b_nil)
 return b_nil - a_nil;
    }

  return strcmp (ga->name, gb->name);
}

static void
close_emacs_globals (ptrdiff_t num_symbols)
{
  printf (("};\n"
    "extern struct emacs_globals globals;\n"
    "\n"
    "#ifndef DEFINE_SYMBOLS\n"
    "extern\n"
    "#endif\n"
    "struct Lisp_Symbol alignas (GCALIGNMENT) lispsym[%td];\n"),
   num_symbols);
}

static void
write_globals (void)
{
  ptrdiff_t i, j;
  _Bool seen_defun = 0;
  ptrdiff_t symnum = 0;
  ptrdiff_t num_symbols = 0;
  qsort (globals, num_globals, sizeof (struct global), compare_globals);

  j = 0;
  for (i = 0; i < num_globals; i++)
    {
      while (i + 1 < num_globals
      && strcmp (globals[i].name, globals[i + 1].name) == 0)
 {
   if (globals[i].type == FUNCTION
       && globals[i].v.value != globals[i + 1].v.value)
     error ("function '%s' defined twice with differing signatures",
     globals[i].name);
   free (globals[i].name);
   i++;
 }
      num_symbols += globals[i].type == SYMBOL;
      globals[j++] = globals[i];
    }
  num_globals = j;

  for (i = 0; i < num_globals; ++i)
    {
      char const *type = 0;

      switch (globals[i].type)
 {
 case EMACS_INTEGER:
   type = "EMACS_INT";
   break;
 case BOOLEAN:
   type = "bool";
   break;
 case LISP_OBJECT:
   type = "Lisp_Object";
   break;
 case SYMBOL:
 case FUNCTION:
   if (!seen_defun)
     {
       close_emacs_globals (num_symbols);
       putchar ('\n');
       seen_defun = 1;
     }
   break;
 default:
   fatal ("not a recognized DEFVAR_");
 }

      if (type)
 {
   printf ("  %s f_%s;\n", type, globals[i].name);
   printf ("#define %s globals.f_%s\n",
    globals[i].name, globals[i].name);
 }
      else if (globals[i].type == SYMBOL)
 printf (("#define i%s %td\n"
   "DEFINE_LISP_SYMBOL (%s)\n"),
  globals[i].name, symnum++, globals[i].name);
      else
 {
   if (globals[i].flags & DEFUN_noreturn)
     fputs ("_Noreturn ", stdout);

   printf ("EXFUN (%s, ", globals[i].name);
   if (globals[i].v.value == -1)
     fputs ("MANY", stdout);
   else if (globals[i].v.value == -2)
     fputs ("UNEVALLED", stdout);
   else
     printf ("%d", globals[i].v.value);
   putchar (')');

   if (globals[i].flags & DEFUN_const)
     fputs (" ATTRIBUTE_CONST", stdout);

   puts (";");
 }
    }

  if (!seen_defun)
    close_emacs_globals (num_symbols);

  puts ("#ifdef DEFINE_SYMBOLS");
  puts ("static char const *const defsym_name[] = {");
  for (ptrdiff_t i = 0; i < num_globals; i++)
    if (globals[i].type == SYMBOL)
      printf ("\t\"%s\",\n", globals[i].v.svalue);
  puts ("};");
  puts ("#endif");

  puts ("#define Qnil builtin_lisp_symbol (0)");
  puts ("#if DEFINE_NON_NIL_Q_SYMBOL_MACROS");
  num_symbols = 0;
  for (ptrdiff_t i = 0; i < num_globals; i++)
    if (globals[i].type == SYMBOL && num_symbols++ != 0)
      printf ("# define %s builtin_lisp_symbol (%td)\n",
       globals[i].name, num_symbols - 1);
  puts ("#endif");
}







static void
scan_c_file (char *filename, const char *mode)
{
  FILE *infile;
  char extension = filename[strlen (filename) - 1];

  if (extension == 'o')
    filename[strlen (filename) - 1] = 'c';

  infile = fopen (filename, mode);

  if (infile == ((void*)0) && extension == 'o')
    {

      filename[strlen (filename) - 1] = 'm';
      infile = fopen (filename, mode);
      if (infile == ((void*)0))
        filename[strlen (filename) - 1] = 'c';
    }

  if (infile == ((void*)0))
    {
      perror (filename);
      exit (1);
    }


  filename[strlen (filename) - 1] = extension;
  scan_c_stream (infile);
}




static int
stream_match (FILE *infile, const char *p)
{
  for (; *p; p++)
    {
      int c = _IO_getc (infile);
      if (c == (-1))
       return -1;
      if (c != *p)
       return 0;
    }
  return 1;
}

static void
scan_c_stream (FILE *infile)
{
  int commas, minargs, maxargs;
  int c = '\n';

  while (!feof (infile))
    {
      _Bool doc_keyword = 0;
      _Bool defunflag = 0;
      _Bool defvarperbufferflag = 0;
      _Bool defvarflag = 0;
      enum global_type type = INVALID;
      static char *name;
      static ptrdiff_t name_size;

      if (c != '\n' && c != '\r')
 {
   c = _IO_getc (infile);
   continue;
 }
      c = _IO_getc (infile);
      if (c == ' ')
 {
   while (c == ' ')
     c = _IO_getc (infile);
   if (c != 'D')
     continue;
   c = _IO_getc (infile);
   if (c != 'E')
     continue;
   c = _IO_getc (infile);
   if (c != 'F')
     continue;
   c = _IO_getc (infile);
   if (c == 'S')
     {
       c = _IO_getc (infile);
       if (c != 'Y')
  continue;
       c = _IO_getc (infile);
       if (c != 'M')
  continue;
       c = _IO_getc (infile);
       if (c != ' ' && c != '\t' && c != '(')
  continue;
       type = SYMBOL;
     }
   else if (c == 'V')
     {
       c = _IO_getc (infile);
       if (c != 'A')
  continue;
       c = _IO_getc (infile);
       if (c != 'R')
  continue;
       c = _IO_getc (infile);
       if (c != '_')
  continue;

       defvarflag = 1;

       c = _IO_getc (infile);
       defvarperbufferflag = (c == 'P');
       if (generate_globals)
  {
    if (c == 'I')
      type = EMACS_INTEGER;
    else if (c == 'L')
      type = LISP_OBJECT;
    else if (c == 'B')
      type = BOOLEAN;
  }

       c = _IO_getc (infile);


       if (generate_globals && type == BOOLEAN && c != 'O')
  type = INVALID;
     }
   else
     continue;
 }
      else if (c == 'D')
 {
   c = _IO_getc (infile);
   if (c != 'E')
     continue;
   c = _IO_getc (infile);
   if (c != 'F')
     continue;
   c = _IO_getc (infile);
   defunflag = c == 'U';
 }
      else continue;

      if (generate_globals
   && (!defvarflag || defvarperbufferflag || type == INVALID)
   && !defunflag && type != SYMBOL)
 continue;

      while (c != '(')
 {
   if (c < 0)
     goto eof;
   c = _IO_getc (infile);
 }

      if (type != SYMBOL)
 {

   c = _IO_getc (infile);
   if (c != '"')
     continue;
   c = read_c_string_or_comment (infile, -1, 0, 0);
 }

      if (generate_globals)
 {
   ptrdiff_t i = 0;
   char const *svalue = 0;


   do
     {
       c = _IO_getc (infile);
     }
   while (c == ',' || c == ' ' || c == '\t' || c == '\n' || c == '\r');


   do
     {
       if (c < 0)
  goto eof;
       input_buffer[i++] = c;
       c = _IO_getc (infile);
     }
   while (! (c == ',' || c == ' ' || c == '\t'
      || c == '\n' || c == '\r'));
   input_buffer[i] = '\0';

   if (name_size <= i)
     {
       free (name);
       name_size = i + 1;
       ptrdiff_t doubled;
       if (! (sizeof *(&doubled) == sizeof (signed char) ? (sizeof ((name_size) * (2)) < sizeof (signed char) ? ((((((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (1)) << (sizeof ((0 * ((signed char) (2)) + ((signed char) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (0)))) == 0 && ((((signed char) (name_size)) < 0 && 0 < ((signed char) (2))) || (((signed char) (2)) < 0 && 0 < ((signed char) (name_size))))) || (((signed char) (2)) < 0 ? (((signed char) (name_size)) < 0 ? ((signed char) (name_size)) < ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (1)) << (sizeof ((0 * ((signed char) (2)) + ((signed char) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)))) / ((signed char) (2)) : ((signed char) (2)) == -1 ? 0 : ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (1)) << (sizeof ((0 * ((signed char) (2)) + ((signed char) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (0)))) / ((signed char) (2)) < ((signed char) (name_size))) : ((signed char) (2)) == 0 ? 0 : (((signed char) (name_size)) < 0 ? ((signed char) (name_size)) < ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (1)) << (sizeof ((0 * ((signed char) (2)) + ((signed char) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (0)))) / ((signed char) (2)) : ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) + (1)) << (sizeof ((0 * ((signed char) (2)) + ((signed char) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (2)) + ((signed char) (name_size))) - (1)))) / ((signed char) (2)) < ((signed char) (name_size))))) || (((0 * (((signed char) (name_size)) * ((signed char) (2))) - (1)) < 0) && (((signed char) (name_size)) * ((signed char) (2))) < ((-127 -1))) || (127) < (((signed char) (name_size)) * ((signed char) (2)))) ? (*(&doubled) = (((unsigned char) ((signed char) (name_size)) * (unsigned char) ((signed char) (2))) <= (127) ? (signed char) ((unsigned char) ((signed char) (name_size)) * (unsigned char) ((signed char) (2))) : ((signed char) (((unsigned char) ((signed char) (name_size)) * (unsigned char) ((signed char) (2))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&doubled) = (((unsigned char) ((signed char) (name_size)) * (unsigned char) ((signed char) (2))) <= (127) ? (signed char) ((unsigned char) ((signed char) (name_size)) * (unsigned char) ((signed char) (2))) : ((signed char) (((unsigned char) ((signed char) (name_size)) * (unsigned char) ((signed char) (2))) - ((-127 -1))) + ((-127 -1)))), 0)) : ((((((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) == 0 && (((name_size) < 0 && 0 < (2)) || ((2) < 0 && 0 < (name_size)))) || ((2) < 0 ? ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) : (2) == -1 ? 0 : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) < (name_size)) : (2) == 0 ? 0 : ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) < (name_size)))) || (((0 * ((name_size) * (2)) - (1)) < 0) && ((name_size) * (2)) < ((-127 -1))) || (127) < ((name_size) * (2))) ? (*(&doubled) = (((unsigned char) (name_size) * (unsigned char) (2)) <= (127) ? (signed char) ((unsigned char) (name_size) * (unsigned char) (2)) : ((signed char) (((unsigned char) (name_size) * (unsigned char) (2)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&doubled) = (((unsigned char) (name_size) * (unsigned char) (2)) <= (127) ? (signed char) ((unsigned char) (name_size) * (unsigned char) (2)) : ((signed char) (((unsigned char) (name_size) * (unsigned char) (2)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&doubled) == sizeof (short int) ? (sizeof ((name_size) * (2)) < sizeof (short int) ? ((((((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (1)) << (sizeof ((0 * ((short int) (2)) + ((short int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (0)))) == 0 && ((((short int) (name_size)) < 0 && 0 < ((short int) (2))) || (((short int) (2)) < 0 && 0 < ((short int) (name_size))))) || (((short int) (2)) < 0 ? (((short int) (name_size)) < 0 ? ((short int) (name_size)) < ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (1)) << (sizeof ((0 * ((short int) (2)) + ((short int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)))) / ((short int) (2)) : ((short int) (2)) == -1 ? 0 : ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (1)) << (sizeof ((0 * ((short int) (2)) + ((short int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (0)))) / ((short int) (2)) < ((short int) (name_size))) : ((short int) (2)) == 0 ? 0 : (((short int) (name_size)) < 0 ? ((short int) (name_size)) < ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (1)) << (sizeof ((0 * ((short int) (2)) + ((short int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (0)))) / ((short int) (2)) : ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((short int) (2)) + ((short int) (name_size))) + (1)) << (sizeof ((0 * ((short int) (2)) + ((short int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (2)) + ((short int) (name_size))) - (1)))) / ((short int) (2)) < ((short int) (name_size))))) || (((0 * (((short int) (name_size)) * ((short int) (2))) - (1)) < 0) && (((short int) (name_size)) * ((short int) (2))) < ((-32767 -1))) || (32767) < (((short int) (name_size)) * ((short int) (2)))) ? (*(&doubled) = (((unsigned short int) ((short int) (name_size)) * (unsigned short int) ((short int) (2))) <= (32767) ? (short int) ((unsigned short int) ((short int) (name_size)) * (unsigned short int) ((short int) (2))) : ((short int) (((unsigned short int) ((short int) (name_size)) * (unsigned short int) ((short int) (2))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&doubled) = (((unsigned short int) ((short int) (name_size)) * (unsigned short int) ((short int) (2))) <= (32767) ? (short int) ((unsigned short int) ((short int) (name_size)) * (unsigned short int) ((short int) (2))) : ((short int) (((unsigned short int) ((short int) (name_size)) * (unsigned short int) ((short int) (2))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : ((((((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) == 0 && (((name_size) < 0 && 0 < (2)) || ((2) < 0 && 0 < (name_size)))) || ((2) < 0 ? ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) : (2) == -1 ? 0 : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) < (name_size)) : (2) == 0 ? 0 : ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) < (name_size)))) || (((0 * ((name_size) * (2)) - (1)) < 0) && ((name_size) * (2)) < ((-32767 -1))) || (32767) < ((name_size) * (2))) ? (*(&doubled) = (((unsigned short int) (name_size) * (unsigned short int) (2)) <= (32767) ? (short int) ((unsigned short int) (name_size) * (unsigned short int) (2)) : ((short int) (((unsigned short int) (name_size) * (unsigned short int) (2)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&doubled) = (((unsigned short int) (name_size) * (unsigned short int) (2)) <= (32767) ? (short int) ((unsigned short int) (name_size) * (unsigned short int) (2)) : ((short int) (((unsigned short int) (name_size) * (unsigned short int) (2)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&doubled) == sizeof (int) ? (sizeof ((name_size) * (2)) < sizeof (int) ? ((((((((0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (2)) + ((int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((int) (2)) + ((int) (name_size))) + (1)) << (sizeof ((0 * ((int) (2)) + ((int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (2)) + ((int) (name_size))) + (0)))) == 0 && ((((int) (name_size)) < 0 && 0 < ((int) (2))) || (((int) (2)) < 0 && 0 < ((int) (name_size))))) || (((int) (2)) < 0 ? (((int) (name_size)) < 0 ? ((int) (name_size)) < ((((0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((int) (2)) + ((int) (name_size))) + (1)) << (sizeof ((0 * ((int) (2)) + ((int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)))) / ((int) (2)) : ((int) (2)) == -1 ? 0 : ((((0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (2)) + ((int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((int) (2)) + ((int) (name_size))) + (1)) << (sizeof ((0 * ((int) (2)) + ((int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (2)) + ((int) (name_size))) + (0)))) / ((int) (2)) < ((int) (name_size))) : ((int) (2)) == 0 ? 0 : (((int) (name_size)) < 0 ? ((int) (name_size)) < ((((0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (2)) + ((int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((int) (2)) + ((int) (name_size))) + (1)) << (sizeof ((0 * ((int) (2)) + ((int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (2)) + ((int) (name_size))) + (0)))) / ((int) (2)) : ((((0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((int) (2)) + ((int) (name_size))) + (1)) << (sizeof ((0 * ((int) (2)) + ((int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (2)) + ((int) (name_size))) - (1)))) / ((int) (2)) < ((int) (name_size))))) || (((0 * (((int) (name_size)) * ((int) (2))) - (1)) < 0) && (((int) (name_size)) * ((int) (2))) < ((-2147483647 -1))) || (2147483647) < (((int) (name_size)) * ((int) (2)))) ? (*(&doubled) = (((unsigned int) ((int) (name_size)) * (unsigned int) ((int) (2))) <= (2147483647) ? (int) ((unsigned int) ((int) (name_size)) * (unsigned int) ((int) (2))) : ((int) (((unsigned int) ((int) (name_size)) * (unsigned int) ((int) (2))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&doubled) = (((unsigned int) ((int) (name_size)) * (unsigned int) ((int) (2))) <= (2147483647) ? (int) ((unsigned int) ((int) (name_size)) * (unsigned int) ((int) (2))) : ((int) (((unsigned int) ((int) (name_size)) * (unsigned int) ((int) (2))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : ((((((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) == 0 && (((name_size) < 0 && 0 < (2)) || ((2) < 0 && 0 < (name_size)))) || ((2) < 0 ? ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) : (2) == -1 ? 0 : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) < (name_size)) : (2) == 0 ? 0 : ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) < (name_size)))) || (((0 * ((name_size) * (2)) - (1)) < 0) && ((name_size) * (2)) < ((-2147483647 -1))) || (2147483647) < ((name_size) * (2))) ? (*(&doubled) = (((unsigned int) (name_size) * (unsigned int) (2)) <= (2147483647) ? (int) ((unsigned int) (name_size) * (unsigned int) (2)) : ((int) (((unsigned int) (name_size) * (unsigned int) (2)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&doubled) = (((unsigned int) (name_size) * (unsigned int) (2)) <= (2147483647) ? (int) ((unsigned int) (name_size) * (unsigned int) (2)) : ((int) (((unsigned int) (name_size) * (unsigned int) (2)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&doubled) == sizeof (long int) ? (sizeof ((name_size) * (2)) < sizeof (long int) ? ((((((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (1)) << (sizeof ((0 * ((long int) (2)) + ((long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (0)))) == 0 && ((((long int) (name_size)) < 0 && 0 < ((long int) (2))) || (((long int) (2)) < 0 && 0 < ((long int) (name_size))))) || (((long int) (2)) < 0 ? (((long int) (name_size)) < 0 ? ((long int) (name_size)) < ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (1)) << (sizeof ((0 * ((long int) (2)) + ((long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)))) / ((long int) (2)) : ((long int) (2)) == -1 ? 0 : ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (1)) << (sizeof ((0 * ((long int) (2)) + ((long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (0)))) / ((long int) (2)) < ((long int) (name_size))) : ((long int) (2)) == 0 ? 0 : (((long int) (name_size)) < 0 ? ((long int) (name_size)) < ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (1)) << (sizeof ((0 * ((long int) (2)) + ((long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (0)))) / ((long int) (2)) : ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((long int) (2)) + ((long int) (name_size))) + (1)) << (sizeof ((0 * ((long int) (2)) + ((long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (2)) + ((long int) (name_size))) - (1)))) / ((long int) (2)) < ((long int) (name_size))))) || (((0 * (((long int) (name_size)) * ((long int) (2))) - (1)) < 0) && (((long int) (name_size)) * ((long int) (2))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (name_size)) * ((long int) (2)))) ? (*(&doubled) = (((unsigned long int) ((long int) (name_size)) * (unsigned long int) ((long int) (2))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (name_size)) * (unsigned long int) ((long int) (2))) : ((long int) (((unsigned long int) ((long int) (name_size)) * (unsigned long int) ((long int) (2))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&doubled) = (((unsigned long int) ((long int) (name_size)) * (unsigned long int) ((long int) (2))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (name_size)) * (unsigned long int) ((long int) (2))) : ((long int) (((unsigned long int) ((long int) (name_size)) * (unsigned long int) ((long int) (2))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : ((((((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) == 0 && (((name_size) < 0 && 0 < (2)) || ((2) < 0 && 0 < (name_size)))) || ((2) < 0 ? ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) : (2) == -1 ? 0 : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) < (name_size)) : (2) == 0 ? 0 : ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) < (name_size)))) || (((0 * ((name_size) * (2)) - (1)) < 0) && ((name_size) * (2)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((name_size) * (2))) ? (*(&doubled) = (((unsigned long int) (name_size) * (unsigned long int) (2)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (name_size) * (unsigned long int) (2)) : ((long int) (((unsigned long int) (name_size) * (unsigned long int) (2)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&doubled) = (((unsigned long int) (name_size) * (unsigned long int) (2)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (name_size) * (unsigned long int) (2)) : ((long int) (((unsigned long int) (name_size) * (unsigned long int) (2)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((name_size) * (2)) < sizeof (long long int) ? ((((((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (1)) << (sizeof ((0 * ((long long int) (2)) + ((long long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (0)))) == 0 && ((((long long int) (name_size)) < 0 && 0 < ((long long int) (2))) || (((long long int) (2)) < 0 && 0 < ((long long int) (name_size))))) || (((long long int) (2)) < 0 ? (((long long int) (name_size)) < 0 ? ((long long int) (name_size)) < ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (1)) << (sizeof ((0 * ((long long int) (2)) + ((long long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)))) / ((long long int) (2)) : ((long long int) (2)) == -1 ? 0 : ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (1)) << (sizeof ((0 * ((long long int) (2)) + ((long long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (0)))) / ((long long int) (2)) < ((long long int) (name_size))) : ((long long int) (2)) == 0 ? 0 : (((long long int) (name_size)) < 0 ? ((long long int) (name_size)) < ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (1)) << (sizeof ((0 * ((long long int) (2)) + ((long long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (0)))) / ((long long int) (2)) : ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) + (1)) << (sizeof ((0 * ((long long int) (2)) + ((long long int) (name_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (2)) + ((long long int) (name_size))) - (1)))) / ((long long int) (2)) < ((long long int) (name_size))))) || (((0 * (((long long int) (name_size)) * ((long long int) (2))) - (1)) < 0) && (((long long int) (name_size)) * ((long long int) (2))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (name_size)) * ((long long int) (2)))) ? (*(&doubled) = (((unsigned long long int) ((long long int) (name_size)) * (unsigned long long int) ((long long int) (2))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (name_size)) * (unsigned long long int) ((long long int) (2))) : ((long long int) (((unsigned long long int) ((long long int) (name_size)) * (unsigned long long int) ((long long int) (2))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&doubled) = (((unsigned long long int) ((long long int) (name_size)) * (unsigned long long int) ((long long int) (2))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (name_size)) * (unsigned long long int) ((long long int) (2))) : ((long long int) (((unsigned long long int) ((long long int) (name_size)) * (unsigned long long int) ((long long int) (2))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : ((((((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) == 0 && (((name_size) < 0 && 0 < (2)) || ((2) < 0 && 0 < (name_size)))) || ((2) < 0 ? ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) : (2) == -1 ? 0 : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) < (name_size)) : (2) == 0 ? 0 : ((name_size) < 0 ? (name_size) < ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? - (~ (0 * (0 * (2) + (name_size)) + (0)) == -1) - ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) + (0)))) / (2) : ((((0 * (0 * (2) + (name_size)) - (1)) < 0) ? ((((0 * (0 * (2) + (name_size)) + (1)) << (sizeof ((0 * (2) + (name_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (2) + (name_size)) - (1)))) / (2) < (name_size)))) || (((0 * ((name_size) * (2)) - (1)) < 0) && ((name_size) * (2)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((name_size) * (2))) ? (*(&doubled) = (((unsigned long long int) (name_size) * (unsigned long long int) (2)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (name_size) * (unsigned long long int) (2)) : ((long long int) (((unsigned long long int) (name_size) * (unsigned long long int) (2)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&doubled) = (((unsigned long long int) (name_size) * (unsigned long long int) (2)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (name_size) * (unsigned long long int) (2)) : ((long long int) (((unsigned long long int) (name_size) * (unsigned long long int) (2)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)))))
    && doubled <= (18446744073709551615UL))
  name_size = doubled;
       name = xmalloc (name_size);
     }
   memcpy (name, input_buffer, i + 1);

   if (type == SYMBOL)
     {
       do
  c = _IO_getc (infile);
       while (c == ' ' || c == '\t' || c == '\n' || c == '\r');
       if (c != '"')
  continue;
       c = read_c_string_or_comment (infile, -1, 0, 0);
       svalue = input_buffer;
     }

   if (!defunflag)
     {
       add_global (type, name, 0, svalue);
       continue;
     }
 }

      if (type == SYMBOL)
 continue;





      if (defunflag)
 commas = generate_globals ? 4 : 5;
      else if (defvarperbufferflag)
 commas = 3;
      else if (defvarflag)
 commas = 1;
      else
 commas = 2;

      while (commas)
 {
   if (c == ',')
     {
       commas--;

       if (defunflag && (commas == 1 || commas == 2))
  {
    int scanned = 0;
    do
      c = _IO_getc (infile);
    while (c == ' ' || c == '\n' || c == '\r' || c == '\t');
    if (c < 0)
      goto eof;
    ungetc (c, infile);
    if (commas == 2)
      scanned = fscanf (infile, "%d", &minargs);
    else
      if (c == 'M' || c == 'U')
        {
   if (generate_globals)
     maxargs = (c == 'M') ? -1 : -2;
   else
     maxargs = -1;
        }
      else
        scanned = fscanf (infile, "%d", &maxargs);
    if (scanned < 0)
      goto eof;
  }
     }

   if (c == (-1))
     goto eof;
   c = _IO_getc (infile);
 }

      if (generate_globals)
 {
   struct global *g = add_global (FUNCTION, name, maxargs, 0);
   if (!g)
     continue;
# 1076 "make-docfile.c"
   c = _IO_getc (infile);
   if (c == (-1))
     goto eof;
   int d = _IO_getc (infile);
   if (d == (-1))
     goto eof;
   while (1)
     {
       if (c == '*' && d == '/')
  break;
       c = d, d = _IO_getc (infile);
       if (d == (-1))
  goto eof;
     }

   do
     {
       c = _IO_getc (infile);
       if (c == (-1))
  goto eof;
     }
   while (c == ' ' || c == '\n' || c == '\r' || c == '\t');

   if (c == 'a' && stream_match (infile, "ttributes:"))
     {
       char *p = input_buffer;

       while (1)
  {
    c = _IO_getc (infile);
    if (c == (-1))
      goto eof;
    if (c == ')')
      break;
    if (p - input_buffer > sizeof (input_buffer))
      abort ();
    *p++ = c;
  }
       *p = 0;
       if (strstr (input_buffer, "noreturn"))
  g->flags |= DEFUN_noreturn;
       if (strstr (input_buffer, "const"))
  g->flags |= DEFUN_const;
     }
   continue;
 }

      while (c == ' ' || c == '\n' || c == '\r' || c == '\t')
 c = _IO_getc (infile);

      if (c == '"')
 c = read_c_string_or_comment (infile, 0, 0, 0);

      while (c != (-1) && c != ',' && c != '/')
 c = _IO_getc (infile);
      if (c == ',')
 {
   c = _IO_getc (infile);
   while (c == ' ' || c == '\n' || c == '\r' || c == '\t')
     c = _IO_getc (infile);
   while ((c >= 'a' && c <= 'z') || (c >= 'Z' && c <= 'Z'))
     c = _IO_getc (infile);
   if (c == ':')
     {
       doc_keyword = 1;
       c = _IO_getc (infile);
       while (c == ' ' || c == '\n' || c == '\r' || c == '\t')
  c = _IO_getc (infile);
     }
 }

      if (c == '"'
   || (c == '/'
       && (c = _IO_getc (infile),
    ungetc (c, infile),
    c == '*')))
 {
   _Bool comment = c != '"';
   _Bool saw_usage;

   printf ("\037%c%s\n", defvarflag ? 'V' : 'F', input_buffer);

   if (comment)
     _IO_getc (infile);
   c = read_c_string_or_comment (infile, 1, comment, &saw_usage);
# 1172 "make-docfile.c"
   if (defunflag && maxargs != -1 && !saw_usage)
     {
       char argbuf[1024], *p = argbuf;

       if (!comment || doc_keyword)
  while (c != ')')
    {
      if (c < 0)
        goto eof;
      c = _IO_getc (infile);
    }


       while (c != '(')
  {
    if (c < 0)
      goto eof;
    c = _IO_getc (infile);
  }

       *p++ = c;
       do
  *p++ = c = _IO_getc (infile);
       while (c != ')');
       *p = '\0';

       fputs ("\n\n", stdout);
       write_c_args (input_buffer, argbuf, minargs, maxargs);
     }
   else if (defunflag && maxargs == -1 && !saw_usage)

     fprintf (stderr, "Missing 'usage' for function '%s'.\n",
       input_buffer);
 }
    }
 eof:
  if (ferror (infile) || fclose (infile) != 0)
    fatal ("read error");
}
# 1248 "make-docfile.c"
static void
skip_white (FILE *infile)
{
  char c = ' ';
  while (c == ' ' || c == '\t' || c == '\n' || c == '\r')
    c = _IO_getc (infile);
  ungetc (c, infile);
}

static void
read_lisp_symbol (FILE *infile, char *buffer)
{
  char c;
  char *fillp = buffer;

  skip_white (infile);
  while (1)
    {
      c = _IO_getc (infile);
      if (c == '\\')
 *(++fillp) = _IO_getc (infile);
      else if (c == ' ' || c == '\t' || c == '\n' || c == '\r' || c == '(' || c == ')')
 {
   ungetc (c, infile);
   *fillp = 0;
   break;
 }
      else
 *fillp++ = c;
    }

  if (! buffer[0])
    fprintf (stderr, "## expected a symbol, got '%c'\n", c);

  skip_white (infile);
}

static _Bool
search_lisp_doc_at_eol (FILE *infile)
{
  int c = 0, c1 = 0, c2 = 0;


  while (c != '\n' && c != '\r' && c != (-1))
    {
      c2 = c1;
      c1 = c;
      c = _IO_getc (infile);
    }



  if (c2 != '"' || c1 != '\\')
    {



      ungetc (c, infile);
      return 0;
    }
  return 1;
}



static void
scan_lisp_file (const char *filename, const char *mode)
{
  FILE *infile;
  int c;
  char *saved_string = 0;




  static struct {
    const char *fn;
    int fl;
  } const uncompiled[] = {
    { "loaddefs.el", sizeof("loaddefs.el") - 1 },
    { "loadup.el", sizeof("loadup.el") - 1 },
    { "charprop.el", sizeof("charprop.el") - 1 },
    { "cp51932.el", sizeof("cp51932.el") - 1 },
    { "eucjp-ms.el", sizeof("eucjp-ms.el") - 1 }
  };
  int i;
  int flen = strlen (filename);

  if (generate_globals)
    fatal ("scanning lisp file when -g specified");
  if (flen > 3 && !strcmp (filename + flen - 3, ".el"))
    {
      _Bool match = 0;
      for (i = 0; i < sizeof (uncompiled) / sizeof (uncompiled[0]); i++)
 {
   if (uncompiled[i].fl <= flen
       && !strcmp (filename + flen - uncompiled[i].fl, uncompiled[i].fn)
       && (flen == uncompiled[i].fl
    || ((filename[flen - uncompiled[i].fl - 1]) == '/')))
     {
       match = 1;
       break;
     }
 }
      if (!match)
 fatal ("uncompiled lisp file %s is not supported", filename);
    }

  infile = fopen (filename, mode);
  if (infile == ((void*)0))
    {
      perror (filename);
      exit (1);
    }

  c = '\n';
  while (!feof (infile))
    {
      char buffer[8192];
      char type;


      if (c != '\n' && c != '\r')
 {
   c = _IO_getc (infile);
   continue;
 }

      while (c == '\n' || c == '\r')
 c = _IO_getc (infile);

      if (c == '#')
 {
   c = _IO_getc (infile);
   if (c == '@')
     {
       ptrdiff_t length = 0;
       ptrdiff_t i;


       while ((c = _IO_getc (infile),
        c >= '0' && c <= '9'))
  {
    if ((sizeof *(&length) == sizeof (signed char) ? (sizeof ((length) * (10)) < sizeof (signed char) ? ((((((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (0)) == -1) - ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (10)) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (0)))) == 0 && ((((signed char) (length)) < 0 && 0 < ((signed char) (10))) || (((signed char) (10)) < 0 && 0 < ((signed char) (length))))) || (((signed char) (10)) < 0 ? (((signed char) (length)) < 0 ? ((signed char) (length)) < ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (10)) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)))) / ((signed char) (10)) : ((signed char) (10)) == -1 ? 0 : ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (0)) == -1) - ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (10)) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (0)))) / ((signed char) (10)) < ((signed char) (length))) : ((signed char) (10)) == 0 ? 0 : (((signed char) (length)) < 0 ? ((signed char) (length)) < ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (0)) == -1) - ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (10)) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (0)))) / ((signed char) (10)) : ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (10)) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (10)) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (10)) + ((signed char) (length))) - (1)))) / ((signed char) (10)) < ((signed char) (length))))) || (((0 * (((signed char) (length)) * ((signed char) (10))) - (1)) < 0) && (((signed char) (length)) * ((signed char) (10))) < ((-127 -1))) || (127) < (((signed char) (length)) * ((signed char) (10)))) ? (*(&length) = (((unsigned char) ((signed char) (length)) * (unsigned char) ((signed char) (10))) <= (127) ? (signed char) ((unsigned char) ((signed char) (length)) * (unsigned char) ((signed char) (10))) : ((signed char) (((unsigned char) ((signed char) (length)) * (unsigned char) ((signed char) (10))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&length) = (((unsigned char) ((signed char) (length)) * (unsigned char) ((signed char) (10))) <= (127) ? (signed char) ((unsigned char) ((signed char) (length)) * (unsigned char) ((signed char) (10))) : ((signed char) (((unsigned char) ((signed char) (length)) * (unsigned char) ((signed char) (10))) - ((-127 -1))) + ((-127 -1)))), 0)) : ((((((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) == 0 && (((length) < 0 && 0 < (10)) || ((10) < 0 && 0 < (length)))) || ((10) < 0 ? ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) : (10) == -1 ? 0 : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) < (length)) : (10) == 0 ? 0 : ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) < (length)))) || (((0 * ((length) * (10)) - (1)) < 0) && ((length) * (10)) < ((-127 -1))) || (127) < ((length) * (10))) ? (*(&length) = (((unsigned char) (length) * (unsigned char) (10)) <= (127) ? (signed char) ((unsigned char) (length) * (unsigned char) (10)) : ((signed char) (((unsigned char) (length) * (unsigned char) (10)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&length) = (((unsigned char) (length) * (unsigned char) (10)) <= (127) ? (signed char) ((unsigned char) (length) * (unsigned char) (10)) : ((signed char) (((unsigned char) (length) * (unsigned char) (10)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&length) == sizeof (short int) ? (sizeof ((length) * (10)) < sizeof (short int) ? ((((((((0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (10)) + ((short int) (length))) + (0)) == -1) - ((((0 * (0 * ((short int) (10)) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (10)) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (10)) + ((short int) (length))) + (0)))) == 0 && ((((short int) (length)) < 0 && 0 < ((short int) (10))) || (((short int) (10)) < 0 && 0 < ((short int) (length))))) || (((short int) (10)) < 0 ? (((short int) (length)) < 0 ? ((short int) (length)) < ((((0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)) < 0) ? ((((0 * (0 * ((short int) (10)) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (10)) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)))) / ((short int) (10)) : ((short int) (10)) == -1 ? 0 : ((((0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (10)) + ((short int) (length))) + (0)) == -1) - ((((0 * (0 * ((short int) (10)) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (10)) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (10)) + ((short int) (length))) + (0)))) / ((short int) (10)) < ((short int) (length))) : ((short int) (10)) == 0 ? 0 : (((short int) (length)) < 0 ? ((short int) (length)) < ((((0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (10)) + ((short int) (length))) + (0)) == -1) - ((((0 * (0 * ((short int) (10)) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (10)) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (10)) + ((short int) (length))) + (0)))) / ((short int) (10)) : ((((0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)) < 0) ? ((((0 * (0 * ((short int) (10)) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (10)) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (10)) + ((short int) (length))) - (1)))) / ((short int) (10)) < ((short int) (length))))) || (((0 * (((short int) (length)) * ((short int) (10))) - (1)) < 0) && (((short int) (length)) * ((short int) (10))) < ((-32767 -1))) || (32767) < (((short int) (length)) * ((short int) (10)))) ? (*(&length) = (((unsigned short int) ((short int) (length)) * (unsigned short int) ((short int) (10))) <= (32767) ? (short int) ((unsigned short int) ((short int) (length)) * (unsigned short int) ((short int) (10))) : ((short int) (((unsigned short int) ((short int) (length)) * (unsigned short int) ((short int) (10))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&length) = (((unsigned short int) ((short int) (length)) * (unsigned short int) ((short int) (10))) <= (32767) ? (short int) ((unsigned short int) ((short int) (length)) * (unsigned short int) ((short int) (10))) : ((short int) (((unsigned short int) ((short int) (length)) * (unsigned short int) ((short int) (10))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : ((((((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) == 0 && (((length) < 0 && 0 < (10)) || ((10) < 0 && 0 < (length)))) || ((10) < 0 ? ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) : (10) == -1 ? 0 : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) < (length)) : (10) == 0 ? 0 : ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) < (length)))) || (((0 * ((length) * (10)) - (1)) < 0) && ((length) * (10)) < ((-32767 -1))) || (32767) < ((length) * (10))) ? (*(&length) = (((unsigned short int) (length) * (unsigned short int) (10)) <= (32767) ? (short int) ((unsigned short int) (length) * (unsigned short int) (10)) : ((short int) (((unsigned short int) (length) * (unsigned short int) (10)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&length) = (((unsigned short int) (length) * (unsigned short int) (10)) <= (32767) ? (short int) ((unsigned short int) (length) * (unsigned short int) (10)) : ((short int) (((unsigned short int) (length) * (unsigned short int) (10)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&length) == sizeof (int) ? (sizeof ((length) * (10)) < sizeof (int) ? ((((((((0 * (0 * ((int) (10)) + ((int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (10)) + ((int) (length))) + (0)) == -1) - ((((0 * (0 * ((int) (10)) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (10)) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (10)) + ((int) (length))) + (0)))) == 0 && ((((int) (length)) < 0 && 0 < ((int) (10))) || (((int) (10)) < 0 && 0 < ((int) (length))))) || (((int) (10)) < 0 ? (((int) (length)) < 0 ? ((int) (length)) < ((((0 * (0 * ((int) (10)) + ((int) (length))) - (1)) < 0) ? ((((0 * (0 * ((int) (10)) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (10)) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (10)) + ((int) (length))) - (1)))) / ((int) (10)) : ((int) (10)) == -1 ? 0 : ((((0 * (0 * ((int) (10)) + ((int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (10)) + ((int) (length))) + (0)) == -1) - ((((0 * (0 * ((int) (10)) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (10)) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (10)) + ((int) (length))) + (0)))) / ((int) (10)) < ((int) (length))) : ((int) (10)) == 0 ? 0 : (((int) (length)) < 0 ? ((int) (length)) < ((((0 * (0 * ((int) (10)) + ((int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (10)) + ((int) (length))) + (0)) == -1) - ((((0 * (0 * ((int) (10)) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (10)) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (10)) + ((int) (length))) + (0)))) / ((int) (10)) : ((((0 * (0 * ((int) (10)) + ((int) (length))) - (1)) < 0) ? ((((0 * (0 * ((int) (10)) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (10)) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (10)) + ((int) (length))) - (1)))) / ((int) (10)) < ((int) (length))))) || (((0 * (((int) (length)) * ((int) (10))) - (1)) < 0) && (((int) (length)) * ((int) (10))) < ((-2147483647 -1))) || (2147483647) < (((int) (length)) * ((int) (10)))) ? (*(&length) = (((unsigned int) ((int) (length)) * (unsigned int) ((int) (10))) <= (2147483647) ? (int) ((unsigned int) ((int) (length)) * (unsigned int) ((int) (10))) : ((int) (((unsigned int) ((int) (length)) * (unsigned int) ((int) (10))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&length) = (((unsigned int) ((int) (length)) * (unsigned int) ((int) (10))) <= (2147483647) ? (int) ((unsigned int) ((int) (length)) * (unsigned int) ((int) (10))) : ((int) (((unsigned int) ((int) (length)) * (unsigned int) ((int) (10))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : ((((((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) == 0 && (((length) < 0 && 0 < (10)) || ((10) < 0 && 0 < (length)))) || ((10) < 0 ? ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) : (10) == -1 ? 0 : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) < (length)) : (10) == 0 ? 0 : ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) < (length)))) || (((0 * ((length) * (10)) - (1)) < 0) && ((length) * (10)) < ((-2147483647 -1))) || (2147483647) < ((length) * (10))) ? (*(&length) = (((unsigned int) (length) * (unsigned int) (10)) <= (2147483647) ? (int) ((unsigned int) (length) * (unsigned int) (10)) : ((int) (((unsigned int) (length) * (unsigned int) (10)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&length) = (((unsigned int) (length) * (unsigned int) (10)) <= (2147483647) ? (int) ((unsigned int) (length) * (unsigned int) (10)) : ((int) (((unsigned int) (length) * (unsigned int) (10)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&length) == sizeof (long int) ? (sizeof ((length) * (10)) < sizeof (long int) ? ((((((((0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (10)) + ((long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long int) (10)) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (10)) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (10)) + ((long int) (length))) + (0)))) == 0 && ((((long int) (length)) < 0 && 0 < ((long int) (10))) || (((long int) (10)) < 0 && 0 < ((long int) (length))))) || (((long int) (10)) < 0 ? (((long int) (length)) < 0 ? ((long int) (length)) < ((((0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)) < 0) ? ((((0 * (0 * ((long int) (10)) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (10)) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)))) / ((long int) (10)) : ((long int) (10)) == -1 ? 0 : ((((0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (10)) + ((long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long int) (10)) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (10)) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (10)) + ((long int) (length))) + (0)))) / ((long int) (10)) < ((long int) (length))) : ((long int) (10)) == 0 ? 0 : (((long int) (length)) < 0 ? ((long int) (length)) < ((((0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (10)) + ((long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long int) (10)) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (10)) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (10)) + ((long int) (length))) + (0)))) / ((long int) (10)) : ((((0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)) < 0) ? ((((0 * (0 * ((long int) (10)) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (10)) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (10)) + ((long int) (length))) - (1)))) / ((long int) (10)) < ((long int) (length))))) || (((0 * (((long int) (length)) * ((long int) (10))) - (1)) < 0) && (((long int) (length)) * ((long int) (10))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (length)) * ((long int) (10)))) ? (*(&length) = (((unsigned long int) ((long int) (length)) * (unsigned long int) ((long int) (10))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (length)) * (unsigned long int) ((long int) (10))) : ((long int) (((unsigned long int) ((long int) (length)) * (unsigned long int) ((long int) (10))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&length) = (((unsigned long int) ((long int) (length)) * (unsigned long int) ((long int) (10))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (length)) * (unsigned long int) ((long int) (10))) : ((long int) (((unsigned long int) ((long int) (length)) * (unsigned long int) ((long int) (10))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : ((((((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) == 0 && (((length) < 0 && 0 < (10)) || ((10) < 0 && 0 < (length)))) || ((10) < 0 ? ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) : (10) == -1 ? 0 : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) < (length)) : (10) == 0 ? 0 : ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) < (length)))) || (((0 * ((length) * (10)) - (1)) < 0) && ((length) * (10)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((length) * (10))) ? (*(&length) = (((unsigned long int) (length) * (unsigned long int) (10)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (length) * (unsigned long int) (10)) : ((long int) (((unsigned long int) (length) * (unsigned long int) (10)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&length) = (((unsigned long int) (length) * (unsigned long int) (10)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (length) * (unsigned long int) (10)) : ((long int) (((unsigned long int) (length) * (unsigned long int) (10)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((length) * (10)) < sizeof (long long int) ? ((((((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (10)) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (0)))) == 0 && ((((long long int) (length)) < 0 && 0 < ((long long int) (10))) || (((long long int) (10)) < 0 && 0 < ((long long int) (length))))) || (((long long int) (10)) < 0 ? (((long long int) (length)) < 0 ? ((long long int) (length)) < ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (10)) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)))) / ((long long int) (10)) : ((long long int) (10)) == -1 ? 0 : ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (10)) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (0)))) / ((long long int) (10)) < ((long long int) (length))) : ((long long int) (10)) == 0 ? 0 : (((long long int) (length)) < 0 ? ((long long int) (length)) < ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (10)) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (0)))) / ((long long int) (10)) : ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (10)) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (10)) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (10)) + ((long long int) (length))) - (1)))) / ((long long int) (10)) < ((long long int) (length))))) || (((0 * (((long long int) (length)) * ((long long int) (10))) - (1)) < 0) && (((long long int) (length)) * ((long long int) (10))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (length)) * ((long long int) (10)))) ? (*(&length) = (((unsigned long long int) ((long long int) (length)) * (unsigned long long int) ((long long int) (10))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (length)) * (unsigned long long int) ((long long int) (10))) : ((long long int) (((unsigned long long int) ((long long int) (length)) * (unsigned long long int) ((long long int) (10))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&length) = (((unsigned long long int) ((long long int) (length)) * (unsigned long long int) ((long long int) (10))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (length)) * (unsigned long long int) ((long long int) (10))) : ((long long int) (((unsigned long long int) ((long long int) (length)) * (unsigned long long int) ((long long int) (10))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : ((((((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) == 0 && (((length) < 0 && 0 < (10)) || ((10) < 0 && 0 < (length)))) || ((10) < 0 ? ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) : (10) == -1 ? 0 : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) < (length)) : (10) == 0 ? 0 : ((length) < 0 ? (length) < ((((0 * (0 * (10) + (length)) - (1)) < 0) ? - (~ (0 * (0 * (10) + (length)) + (0)) == -1) - ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) + (0)))) / (10) : ((((0 * (0 * (10) + (length)) - (1)) < 0) ? ((((0 * (0 * (10) + (length)) + (1)) << (sizeof ((0 * (10) + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (10) + (length)) - (1)))) / (10) < (length)))) || (((0 * ((length) * (10)) - (1)) < 0) && ((length) * (10)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((length) * (10))) ? (*(&length) = (((unsigned long long int) (length) * (unsigned long long int) (10)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (length) * (unsigned long long int) (10)) : ((long long int) (((unsigned long long int) (length) * (unsigned long long int) (10)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&length) = (((unsigned long long int) (length) * (unsigned long long int) (10)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (length) * (unsigned long long int) (10)) : ((long long int) (((unsigned long long int) (length) * (unsigned long long int) (10)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)))))
        || (sizeof *(&length) == sizeof (signed char) ? (sizeof ((length) + (c - '0')) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (0)) == -1) - ((((0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (c - '0')) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (0)))) < 0 ? (((signed char) (c - '0')) < 0 ? ((signed char) (length)) < ((((0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (0)) == -1) - ((((0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (c - '0')) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (0)))) - ((signed char) (c - '0')) : ((((0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) + (1)) << (sizeof ((0 * ((signed char) (c - '0')) + ((signed char) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (c - '0')) + ((signed char) (length))) - (1)))) - ((signed char) (c - '0')) < ((signed char) (length))) : ((signed char) (length)) < 0 ? ((signed char) (c - '0')) <= ((signed char) (length)) + ((signed char) (c - '0')) : ((signed char) (c - '0')) < 0 ? ((signed char) (length)) <= ((signed char) (length)) + ((signed char) (c - '0')) : ((signed char) (length)) + ((signed char) (c - '0')) < ((signed char) (c - '0'))) || (((0 * (((signed char) (length)) + ((signed char) (c - '0'))) - (1)) < 0) && (((signed char) (length)) + ((signed char) (c - '0'))) < ((-127 -1))) || (127) < (((signed char) (length)) + ((signed char) (c - '0')))) ? (*(&length) = (((unsigned char) ((signed char) (length)) + (unsigned char) ((signed char) (c - '0'))) <= (127) ? (signed char) ((unsigned char) ((signed char) (length)) + (unsigned char) ((signed char) (c - '0'))) : ((signed char) (((unsigned char) ((signed char) (length)) + (unsigned char) ((signed char) (c - '0'))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&length) = (((unsigned char) ((signed char) (length)) + (unsigned char) ((signed char) (c - '0'))) <= (127) ? (signed char) ((unsigned char) ((signed char) (length)) + (unsigned char) ((signed char) (c - '0'))) : ((signed char) (((unsigned char) ((signed char) (length)) + (unsigned char) ((signed char) (c - '0'))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) < 0 ? ((c - '0') < 0 ? (length) < ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) - (c - '0') : ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) - (1)))) - (c - '0') < (length)) : (length) < 0 ? (c - '0') <= (length) + (c - '0') : (c - '0') < 0 ? (length) <= (length) + (c - '0') : (length) + (c - '0') < (c - '0')) || (((0 * ((length) + (c - '0')) - (1)) < 0) && ((length) + (c - '0')) < ((-127 -1))) || (127) < ((length) + (c - '0'))) ? (*(&length) = (((unsigned char) (length) + (unsigned char) (c - '0')) <= (127) ? (signed char) ((unsigned char) (length) + (unsigned char) (c - '0')) : ((signed char) (((unsigned char) (length) + (unsigned char) (c - '0')) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&length) = (((unsigned char) (length) + (unsigned char) (c - '0')) <= (127) ? (signed char) ((unsigned char) (length) + (unsigned char) (c - '0')) : ((signed char) (((unsigned char) (length) + (unsigned char) (c - '0')) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&length) == sizeof (short int) ? (sizeof ((length) + (c - '0')) < sizeof (short int) ? (((((((0 * (0 * ((short int) (c - '0')) + ((short int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (0)) == -1) - ((((0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (c - '0')) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (0)))) < 0 ? (((short int) (c - '0')) < 0 ? ((short int) (length)) < ((((0 * (0 * ((short int) (c - '0')) + ((short int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (0)) == -1) - ((((0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (c - '0')) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (0)))) - ((short int) (c - '0')) : ((((0 * (0 * ((short int) (c - '0')) + ((short int) (length))) - (1)) < 0) ? ((((0 * (0 * ((short int) (c - '0')) + ((short int) (length))) + (1)) << (sizeof ((0 * ((short int) (c - '0')) + ((short int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (c - '0')) + ((short int) (length))) - (1)))) - ((short int) (c - '0')) < ((short int) (length))) : ((short int) (length)) < 0 ? ((short int) (c - '0')) <= ((short int) (length)) + ((short int) (c - '0')) : ((short int) (c - '0')) < 0 ? ((short int) (length)) <= ((short int) (length)) + ((short int) (c - '0')) : ((short int) (length)) + ((short int) (c - '0')) < ((short int) (c - '0'))) || (((0 * (((short int) (length)) + ((short int) (c - '0'))) - (1)) < 0) && (((short int) (length)) + ((short int) (c - '0'))) < ((-32767 -1))) || (32767) < (((short int) (length)) + ((short int) (c - '0')))) ? (*(&length) = (((unsigned short int) ((short int) (length)) + (unsigned short int) ((short int) (c - '0'))) <= (32767) ? (short int) ((unsigned short int) ((short int) (length)) + (unsigned short int) ((short int) (c - '0'))) : ((short int) (((unsigned short int) ((short int) (length)) + (unsigned short int) ((short int) (c - '0'))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&length) = (((unsigned short int) ((short int) (length)) + (unsigned short int) ((short int) (c - '0'))) <= (32767) ? (short int) ((unsigned short int) ((short int) (length)) + (unsigned short int) ((short int) (c - '0'))) : ((short int) (((unsigned short int) ((short int) (length)) + (unsigned short int) ((short int) (c - '0'))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) < 0 ? ((c - '0') < 0 ? (length) < ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) - (c - '0') : ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) - (1)))) - (c - '0') < (length)) : (length) < 0 ? (c - '0') <= (length) + (c - '0') : (c - '0') < 0 ? (length) <= (length) + (c - '0') : (length) + (c - '0') < (c - '0')) || (((0 * ((length) + (c - '0')) - (1)) < 0) && ((length) + (c - '0')) < ((-32767 -1))) || (32767) < ((length) + (c - '0'))) ? (*(&length) = (((unsigned short int) (length) + (unsigned short int) (c - '0')) <= (32767) ? (short int) ((unsigned short int) (length) + (unsigned short int) (c - '0')) : ((short int) (((unsigned short int) (length) + (unsigned short int) (c - '0')) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&length) = (((unsigned short int) (length) + (unsigned short int) (c - '0')) <= (32767) ? (short int) ((unsigned short int) (length) + (unsigned short int) (c - '0')) : ((short int) (((unsigned short int) (length) + (unsigned short int) (c - '0')) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&length) == sizeof (int) ? (sizeof ((length) + (c - '0')) < sizeof (int) ? (((((((0 * (0 * ((int) (c - '0')) + ((int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (c - '0')) + ((int) (length))) + (0)) == -1) - ((((0 * (0 * ((int) (c - '0')) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (c - '0')) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (c - '0')) + ((int) (length))) + (0)))) < 0 ? (((int) (c - '0')) < 0 ? ((int) (length)) < ((((0 * (0 * ((int) (c - '0')) + ((int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (c - '0')) + ((int) (length))) + (0)) == -1) - ((((0 * (0 * ((int) (c - '0')) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (c - '0')) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (c - '0')) + ((int) (length))) + (0)))) - ((int) (c - '0')) : ((((0 * (0 * ((int) (c - '0')) + ((int) (length))) - (1)) < 0) ? ((((0 * (0 * ((int) (c - '0')) + ((int) (length))) + (1)) << (sizeof ((0 * ((int) (c - '0')) + ((int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (c - '0')) + ((int) (length))) - (1)))) - ((int) (c - '0')) < ((int) (length))) : ((int) (length)) < 0 ? ((int) (c - '0')) <= ((int) (length)) + ((int) (c - '0')) : ((int) (c - '0')) < 0 ? ((int) (length)) <= ((int) (length)) + ((int) (c - '0')) : ((int) (length)) + ((int) (c - '0')) < ((int) (c - '0'))) || (((0 * (((int) (length)) + ((int) (c - '0'))) - (1)) < 0) && (((int) (length)) + ((int) (c - '0'))) < ((-2147483647 -1))) || (2147483647) < (((int) (length)) + ((int) (c - '0')))) ? (*(&length) = (((unsigned int) ((int) (length)) + (unsigned int) ((int) (c - '0'))) <= (2147483647) ? (int) ((unsigned int) ((int) (length)) + (unsigned int) ((int) (c - '0'))) : ((int) (((unsigned int) ((int) (length)) + (unsigned int) ((int) (c - '0'))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&length) = (((unsigned int) ((int) (length)) + (unsigned int) ((int) (c - '0'))) <= (2147483647) ? (int) ((unsigned int) ((int) (length)) + (unsigned int) ((int) (c - '0'))) : ((int) (((unsigned int) ((int) (length)) + (unsigned int) ((int) (c - '0'))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) < 0 ? ((c - '0') < 0 ? (length) < ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) - (c - '0') : ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) - (1)))) - (c - '0') < (length)) : (length) < 0 ? (c - '0') <= (length) + (c - '0') : (c - '0') < 0 ? (length) <= (length) + (c - '0') : (length) + (c - '0') < (c - '0')) || (((0 * ((length) + (c - '0')) - (1)) < 0) && ((length) + (c - '0')) < ((-2147483647 -1))) || (2147483647) < ((length) + (c - '0'))) ? (*(&length) = (((unsigned int) (length) + (unsigned int) (c - '0')) <= (2147483647) ? (int) ((unsigned int) (length) + (unsigned int) (c - '0')) : ((int) (((unsigned int) (length) + (unsigned int) (c - '0')) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&length) = (((unsigned int) (length) + (unsigned int) (c - '0')) <= (2147483647) ? (int) ((unsigned int) (length) + (unsigned int) (c - '0')) : ((int) (((unsigned int) (length) + (unsigned int) (c - '0')) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&length) == sizeof (long int) ? (sizeof ((length) + (c - '0')) < sizeof (long int) ? (((((((0 * (0 * ((long int) (c - '0')) + ((long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (c - '0')) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (0)))) < 0 ? (((long int) (c - '0')) < 0 ? ((long int) (length)) < ((((0 * (0 * ((long int) (c - '0')) + ((long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (c - '0')) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (0)))) - ((long int) (c - '0')) : ((((0 * (0 * ((long int) (c - '0')) + ((long int) (length))) - (1)) < 0) ? ((((0 * (0 * ((long int) (c - '0')) + ((long int) (length))) + (1)) << (sizeof ((0 * ((long int) (c - '0')) + ((long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (c - '0')) + ((long int) (length))) - (1)))) - ((long int) (c - '0')) < ((long int) (length))) : ((long int) (length)) < 0 ? ((long int) (c - '0')) <= ((long int) (length)) + ((long int) (c - '0')) : ((long int) (c - '0')) < 0 ? ((long int) (length)) <= ((long int) (length)) + ((long int) (c - '0')) : ((long int) (length)) + ((long int) (c - '0')) < ((long int) (c - '0'))) || (((0 * (((long int) (length)) + ((long int) (c - '0'))) - (1)) < 0) && (((long int) (length)) + ((long int) (c - '0'))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (length)) + ((long int) (c - '0')))) ? (*(&length) = (((unsigned long int) ((long int) (length)) + (unsigned long int) ((long int) (c - '0'))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (length)) + (unsigned long int) ((long int) (c - '0'))) : ((long int) (((unsigned long int) ((long int) (length)) + (unsigned long int) ((long int) (c - '0'))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&length) = (((unsigned long int) ((long int) (length)) + (unsigned long int) ((long int) (c - '0'))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (length)) + (unsigned long int) ((long int) (c - '0'))) : ((long int) (((unsigned long int) ((long int) (length)) + (unsigned long int) ((long int) (c - '0'))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) < 0 ? ((c - '0') < 0 ? (length) < ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) - (c - '0') : ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) - (1)))) - (c - '0') < (length)) : (length) < 0 ? (c - '0') <= (length) + (c - '0') : (c - '0') < 0 ? (length) <= (length) + (c - '0') : (length) + (c - '0') < (c - '0')) || (((0 * ((length) + (c - '0')) - (1)) < 0) && ((length) + (c - '0')) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((length) + (c - '0'))) ? (*(&length) = (((unsigned long int) (length) + (unsigned long int) (c - '0')) <= (9223372036854775807L) ? (long int) ((unsigned long int) (length) + (unsigned long int) (c - '0')) : ((long int) (((unsigned long int) (length) + (unsigned long int) (c - '0')) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&length) = (((unsigned long int) (length) + (unsigned long int) (c - '0')) <= (9223372036854775807L) ? (long int) ((unsigned long int) (length) + (unsigned long int) (c - '0')) : ((long int) (((unsigned long int) (length) + (unsigned long int) (c - '0')) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((length) + (c - '0')) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (c - '0')) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (0)))) < 0 ? (((long long int) (c - '0')) < 0 ? ((long long int) (length)) < ((((0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (0)) == -1) - ((((0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (c - '0')) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (0)))) - ((long long int) (c - '0')) : ((((0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) + (1)) << (sizeof ((0 * ((long long int) (c - '0')) + ((long long int) (length))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (c - '0')) + ((long long int) (length))) - (1)))) - ((long long int) (c - '0')) < ((long long int) (length))) : ((long long int) (length)) < 0 ? ((long long int) (c - '0')) <= ((long long int) (length)) + ((long long int) (c - '0')) : ((long long int) (c - '0')) < 0 ? ((long long int) (length)) <= ((long long int) (length)) + ((long long int) (c - '0')) : ((long long int) (length)) + ((long long int) (c - '0')) < ((long long int) (c - '0'))) || (((0 * (((long long int) (length)) + ((long long int) (c - '0'))) - (1)) < 0) && (((long long int) (length)) + ((long long int) (c - '0'))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (length)) + ((long long int) (c - '0')))) ? (*(&length) = (((unsigned long long int) ((long long int) (length)) + (unsigned long long int) ((long long int) (c - '0'))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (length)) + (unsigned long long int) ((long long int) (c - '0'))) : ((long long int) (((unsigned long long int) ((long long int) (length)) + (unsigned long long int) ((long long int) (c - '0'))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&length) = (((unsigned long long int) ((long long int) (length)) + (unsigned long long int) ((long long int) (c - '0'))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (length)) + (unsigned long long int) ((long long int) (c - '0'))) : ((long long int) (((unsigned long long int) ((long long int) (length)) + (unsigned long long int) ((long long int) (c - '0'))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) < 0 ? ((c - '0') < 0 ? (length) < ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? - (~ (0 * (0 * (c - '0') + (length)) + (0)) == -1) - ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) + (0)))) - (c - '0') : ((((0 * (0 * (c - '0') + (length)) - (1)) < 0) ? ((((0 * (0 * (c - '0') + (length)) + (1)) << (sizeof ((0 * (c - '0') + (length)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (c - '0') + (length)) - (1)))) - (c - '0') < (length)) : (length) < 0 ? (c - '0') <= (length) + (c - '0') : (c - '0') < 0 ? (length) <= (length) + (c - '0') : (length) + (c - '0') < (c - '0')) || (((0 * ((length) + (c - '0')) - (1)) < 0) && ((length) + (c - '0')) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((length) + (c - '0'))) ? (*(&length) = (((unsigned long long int) (length) + (unsigned long long int) (c - '0')) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (length) + (unsigned long long int) (c - '0')) : ((long long int) (((unsigned long long int) (length) + (unsigned long long int) (c - '0')) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&length) = (((unsigned long long int) (length) + (unsigned long long int) (c - '0')) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (length) + (unsigned long long int) (c - '0')) : ((long long int) (((unsigned long long int) (length) + (unsigned long long int) (c - '0')) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)))))
        || (18446744073709551615UL) < length)
      memory_exhausted ();
  }

       if (length <= 1)
  fatal ("invalid dynamic doc string length");

       if (c != ' ')
  fatal ("space not found after dynamic doc string length");




       length--;


       free (saved_string);
       saved_string = xmalloc (length);
       for (i = 0; i < length; i++)
  saved_string[i] = _IO_getc (infile);



       saved_string[length - 1] = 0;

       while (c == '\n' || c == '\r')
  c = _IO_getc (infile);

       while (c != '\n' && c != '\r')
  c = _IO_getc (infile);
     }
   continue;
 }

      if (c != '(')
 continue;

      read_lisp_symbol (infile, buffer);

      if (! strcmp (buffer, "defun")
   || ! strcmp (buffer, "defmacro")
   || ! strcmp (buffer, "defsubst"))
 {
   type = 'F';
   read_lisp_symbol (infile, buffer);



   c = _IO_getc (infile);
   if (c == 'n')
     {
       if ((c = _IO_getc (infile)) != 'i'
    || (c = _IO_getc (infile)) != 'l')
  {
    fprintf (stderr, "## unparsable arglist in %s (%s)\n",
      buffer, filename);
    continue;
  }
     }
   else if (c != '(')
     {
       fprintf (stderr, "## unparsable arglist in %s (%s)\n",
         buffer, filename);
       continue;
     }
   else
     while (c != ')')
       c = _IO_getc (infile);
   skip_white (infile);




   if ((c = _IO_getc (infile)) != '"'
       || (c = _IO_getc (infile)) != '\\'
       || ((c = _IO_getc (infile)) != '\n' && c != '\r'))
     {




       continue;
     }
 }


      else if (! strcmp (buffer, "defvar")
        || ! strcmp (buffer, "defconst")
        || ! strcmp (buffer, "defcustom"))
 {
   type = 'V';
   read_lisp_symbol (infile, buffer);

   if (saved_string == 0)
     if (!search_lisp_doc_at_eol (infile))
       continue;
 }

      else if (! strcmp (buffer, "custom-declare-variable")
        || ! strcmp (buffer, "defvaralias")
        )
 {
   type = 'V';

   c = _IO_getc (infile);
   if (c == '\'')
     read_lisp_symbol (infile, buffer);
   else
     {
       if (c != '(')
  {
    fprintf (stderr,
      "## unparsable name in custom-declare-variable in %s\n",
      filename);
    continue;
  }
       read_lisp_symbol (infile, buffer);
       if (strcmp (buffer, "quote"))
  {
    fprintf (stderr,
      "## unparsable name in custom-declare-variable in %s\n",
      filename);
    continue;
  }
       read_lisp_symbol (infile, buffer);
       c = _IO_getc (infile);
       if (c != ')')
  {
    fprintf (stderr,
      "## unparsable quoted name in custom-declare-variable in %s\n",
      filename);
    continue;
  }
     }

   if (saved_string == 0)
     if (!search_lisp_doc_at_eol (infile))
       continue;
 }

      else if (! strcmp (buffer, "fset") || ! strcmp (buffer, "defalias"))
 {
   type = 'F';

   c = _IO_getc (infile);
   if (c == '\'')
     read_lisp_symbol (infile, buffer);
   else
     {
       if (c != '(')
  {
    fprintf (stderr, "## unparsable name in fset in %s\n",
      filename);
    continue;
  }
       read_lisp_symbol (infile, buffer);
       if (strcmp (buffer, "quote"))
  {
    fprintf (stderr, "## unparsable name in fset in %s\n",
      filename);
    continue;
  }
       read_lisp_symbol (infile, buffer);
       c = _IO_getc (infile);
       if (c != ')')
  {
    fprintf (stderr,
      "## unparsable quoted name in fset in %s\n",
      filename);
    continue;
  }
     }

   if (saved_string == 0)
     if (!search_lisp_doc_at_eol (infile))
       continue;
 }

      else if (! strcmp (buffer, "autoload"))
 {
   type = 'F';
   c = _IO_getc (infile);
   if (c == '\'')
     read_lisp_symbol (infile, buffer);
   else
     {
       if (c != '(')
  {
    fprintf (stderr, "## unparsable name in autoload in %s\n",
      filename);
    continue;
  }
       read_lisp_symbol (infile, buffer);
       if (strcmp (buffer, "quote"))
  {
    fprintf (stderr, "## unparsable name in autoload in %s\n",
      filename);
    continue;
  }
       read_lisp_symbol (infile, buffer);
       c = _IO_getc (infile);
       if (c != ')')
  {
    fprintf (stderr,
      "## unparsable quoted name in autoload in %s\n",
      filename);
    continue;
  }
     }
   skip_white (infile);
   if ((c = _IO_getc (infile)) != '\"')
     {
       fprintf (stderr, "## autoload of %s unparsable (%s)\n",
         buffer, filename);
       continue;
     }
   read_c_string_or_comment (infile, 0, 0, 0);

   if (saved_string == 0)
     if (!search_lisp_doc_at_eol (infile))
       continue;
 }







      else
 {




   continue;
 }






      printf ("\037%c%s\n", type, buffer);
      if (saved_string)
 {
   fputs (saved_string, stdout);

   free (saved_string);
   saved_string = 0;
 }
      else
 read_c_string_or_comment (infile, 1, 0, 0);
    }
  free (saved_string);
  if (ferror (infile) || fclose (infile) != 0)
    fatal ("%s: read error", filename);
}
