# 1 "regex.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "regex.c" 2
# 37 "regex.c"
#pragma GCC diagnostic ignored "-Wstrict-overflow"
# 50 "regex.c"
# 1 "./config.h" 1
# 1916 "./config.h"
# 1 "./conf_post.h" 1
# 35 "./conf_post.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdbool.h" 1 3
# 36 "./conf_post.h" 2







typedef _Bool bool_bf;





# 1 "../lib/alloca.h" 1
# 49 "./conf_post.h" 2
# 227 "./conf_post.h"
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
# 231 "./conf_post.h" 2
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
# 232 "./conf_post.h" 2
# 1917 "./config.h" 2
# 51 "regex.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 53 "regex.c" 2



# 1 "../lib/sys/types.h" 1
# 21 "../lib/sys/types.h" 3
# 57 "regex.c" 2
# 130 "regex.c"
# 1 "./lisp.h" 1
# 24 "./lisp.h"
# 1 "/usr/include/setjmp.h" 1 3 4
# 29 "/usr/include/setjmp.h" 3 4
# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 30 "/usr/include/setjmp.h" 2 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 31 "/usr/include/setjmp.h" 2 3 4



struct __jmp_buf_tag
  {




    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };




typedef struct __jmp_buf_tag jmp_buf[1];



extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));






extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));




extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
# 81 "/usr/include/setjmp.h" 3 4
extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));







extern void _longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));







typedef struct __jmp_buf_tag sigjmp_buf[1];
# 109 "/usr/include/setjmp.h" 3 4
extern void siglongjmp (sigjmp_buf __env, int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
# 25 "./lisp.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdalign.h" 1 3
# 26 "./lisp.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 27 "./lisp.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 28 "./lisp.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/float.h" 1 3
# 29 "./lisp.h" 2
# 1 "../lib/inttypes.h" 1
# 26 "../lib/inttypes.h" 3
# 41 "../lib/inttypes.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 1 3
# 26 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 3
# 1 "/usr/include/inttypes.h" 1 3 4
# 27 "/usr/include/inttypes.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 1 3 4
# 63 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 3 4
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
# 64 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 2 3 4
# 28 "/usr/include/inttypes.h" 2 3 4






typedef int __gwchar_t;
# 278 "/usr/include/inttypes.h" 3 4
typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 297 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ ));


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ ));


extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));


extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));
# 27 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 2 3
# 42 "../lib/inttypes.h" 2 3
# 54 "../lib/inttypes.h" 3
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
# 55 "../lib/inttypes.h" 2 3
# 1412 "../lib/inttypes.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1438 "../lib/inttypes.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 30 "./lisp.h" 2


# 1 "../lib/intprops.h" 1
# 33 "./lisp.h" 2
# 1 "../lib/verify.h" 1
# 49 "../lib/verify.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 50 "../lib/verify.h" 2
# 34 "./lisp.h" 2
# 66 "./lisp.h"
extern int const GCTYPEBITS

;
# 83 "./lisp.h"
typedef long int EMACS_INT;
typedef unsigned long EMACS_UINT;
# 99 "./lisp.h"
enum { BOOL_VECTOR_BITS_PER_CHAR =

        8
};





typedef size_t bits_word;

enum { BITS_PER_BITS_WORD = 8 * sizeof (bits_word) };





extern int (*_gl_verify_function2 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: ((18446744073709551615UL) >> (BITS_PER_BITS_WORD - 1) == 1) ? 1 : -1; }))];


enum
  {
    BITS_PER_CHAR = 8,
    BITS_PER_SHORT = 8 * sizeof (short),
    BITS_PER_LONG = 8 * sizeof (long int),
    BITS_PER_EMACS_INT = 8 * sizeof (EMACS_INT)
  };







typedef intmax_t printmax_t;
typedef uintmax_t uprintmax_t;
# 224 "./lisp.h"
enum Lisp_Bits
  {





    VALBITS = BITS_PER_EMACS_INT - 3,


    INTTYPEBITS = 3 - 1,


    FIXNUM_BITS = VALBITS + 1
  };
# 255 "./lisp.h"
extern _Bool const USE_LSB_TAG

;
# 417 "./lisp.h"
enum Lisp_Type
  {

    Lisp_Symbol = 0,



    Lisp_Misc = 1,


    Lisp_Int0 = 2,
    Lisp_Int1 = ((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? 6 : 3,



    Lisp_String = 4,





    Lisp_Vectorlike = 5,


    Lisp_Cons = ((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? 3 : 6,

    Lisp_Float = 7
  };






enum Lisp_Misc_Type
  {
    Lisp_Misc_Free = 0x5eab,
    Lisp_Misc_Marker,
    Lisp_Misc_Overlay,
    Lisp_Misc_Save_Value,
    Lisp_Misc_Finalizer,





    Lisp_Misc_Float,

    Lisp_Misc_Limit
  };




enum Lisp_Fwd_Type
  {
    Lisp_Fwd_Int,
    Lisp_Fwd_Bool,
    Lisp_Fwd_Obj,
    Lisp_Fwd_Buffer_Obj,
    Lisp_Fwd_Kboard_Obj
  };
# 546 "./lisp.h"
typedef EMACS_INT Lisp_Object;

enum CHECK_LISP_OBJECT_TYPE { CHECK_LISP_OBJECT_TYPE = 0 };







union Lisp_Fwd;
inline _Bool BOOL_VECTOR_P (Lisp_Object);
inline _Bool BUFFER_OBJFWDP (union Lisp_Fwd *);
inline _Bool BUFFERP (Lisp_Object);
inline _Bool CHAR_TABLE_P (Lisp_Object);
inline Lisp_Object CHAR_TABLE_REF_ASCII (Lisp_Object, ptrdiff_t);
inline _Bool (CONSP) (Lisp_Object);
inline _Bool (FLOATP) (Lisp_Object);
inline _Bool functionp (Lisp_Object);
inline _Bool (INTEGERP) (Lisp_Object);
inline _Bool (MARKERP) (Lisp_Object);
inline _Bool (MISCP) (Lisp_Object);
inline _Bool (NILP) (Lisp_Object);
inline _Bool OVERLAYP (Lisp_Object);
inline _Bool PROCESSP (Lisp_Object);
inline _Bool PSEUDOVECTORP (Lisp_Object, int);
inline _Bool SAVE_VALUEP (Lisp_Object);
inline _Bool FINALIZERP (Lisp_Object);






inline void set_sub_char_table_contents (Lisp_Object, ptrdiff_t,
           Lisp_Object);
inline _Bool STRINGP (Lisp_Object);
inline _Bool SUB_CHAR_TABLE_P (Lisp_Object);
inline _Bool SUBRP (Lisp_Object);
inline _Bool (SYMBOLP) (Lisp_Object);
inline _Bool (VECTORLIKEP) (Lisp_Object);
inline _Bool WINDOWP (Lisp_Object);
inline _Bool TERMINALP (Lisp_Object);
inline struct Lisp_Save_Value *XSAVE_VALUE (Lisp_Object);
inline struct Lisp_Finalizer *XFINALIZER (Lisp_Object);
inline struct Lisp_Symbol *(XSYMBOL) (Lisp_Object);
inline void *(XUNTAG) (Lisp_Object, int);


extern Lisp_Object char_table_ref (Lisp_Object, int);
extern void char_table_set (Lisp_Object, int, Lisp_Object);


extern _Noreturn Lisp_Object wrong_type_argument (Lisp_Object, Lisp_Object);
extern _Noreturn void wrong_choice (Lisp_Object, Lisp_Object);


extern _Bool might_dump;


extern _Bool initialized;


extern double extract_float (Lisp_Object);




enum symbol_interned
{
  SYMBOL_UNINTERNED = 0,
  SYMBOL_INTERNED = 1,
  SYMBOL_INTERNED_IN_INITIAL_OBARRAY = 2
};

enum symbol_redirect
{
  SYMBOL_PLAINVAL = 4,
  SYMBOL_VARALIAS = 1,
  SYMBOL_LOCALIZED = 2,
  SYMBOL_FORWARDED = 3
};

struct Lisp_Symbol
{
  bool_bf gcmarkbit : 1;






  enum symbol_redirect redirect : 3;




  unsigned constant : 2;



  unsigned interned : 2;



  bool_bf declared_special : 1;


  bool_bf pinned : 1;


  Lisp_Object name;



  union {
    Lisp_Object value;
    struct Lisp_Symbol *alias;
    struct Lisp_Buffer_Local_Value *blv;
    union Lisp_Fwd *fwd;
  } val;


  Lisp_Object function;


  Lisp_Object plist;


  struct Lisp_Symbol *next;
};
# 737 "./lisp.h"
# 1 "./globals.h" 1


struct emacs_globals {
  Lisp_Object f_Vafter_change_functions;

  Lisp_Object f_Vafter_init_time;

  Lisp_Object f_Vafter_insert_file_functions;

  Lisp_Object f_Vafter_load_alist;

  Lisp_Object f_Valternate_fontname_alist;

  Lisp_Object f_Vauto_composition_function;

  Lisp_Object f_Vauto_composition_mode;

  Lisp_Object f_Vauto_fill_chars;

  Lisp_Object f_Vauto_resize_tool_bars;

  Lisp_Object f_Vauto_save_include_big_deletions;

  Lisp_Object f_Vauto_save_list_file_name;

  Lisp_Object f_Vauto_save_timeout;

  Lisp_Object f_Vauto_save_visited_file_name;

  Lisp_Object f_Vbefore_change_functions;

  Lisp_Object f_Vbefore_init_time;

  Lisp_Object f_Vblink_cursor_alist;

  Lisp_Object f_Vbuffer_access_fontified_property;

  Lisp_Object f_Vbuffer_access_fontify_functions;

  Lisp_Object f_Vbuffer_list_update_hook;

  Lisp_Object f_Vbuild_files;

  Lisp_Object f_Vbyte_boolean_vars;

  Lisp_Object f_Vbyte_code_meter;

  Lisp_Object f_Vbytecomp_version_regexp;

  Lisp_Object f_Vcairo_version_string;

  Lisp_Object f_Vchange_major_mode_hook;

  Lisp_Object f_Vchar_code_property_alist;

  Lisp_Object f_Vchar_property_alias_alist;

  Lisp_Object f_Vchar_script_table;

  Lisp_Object f_Vchar_width_table;

  Lisp_Object f_Vcharset_list;

  Lisp_Object f_Vcharset_map_path;

  Lisp_Object f_Vcharset_revision_table;

  Lisp_Object f_Vcode_conversion_map_vector;

  Lisp_Object f_Vcoding_category_list;

  Lisp_Object f_Vcoding_system_alist;

  Lisp_Object f_Vcoding_system_for_read;

  Lisp_Object f_Vcoding_system_for_write;

  Lisp_Object f_Vcoding_system_list;

  Lisp_Object f_Vcombine_after_change_calls;

  Lisp_Object f_Vcommand_debug_status;

  Lisp_Object f_Vcommand_error_function;

  Lisp_Object f_Vcommand_history;

  Lisp_Object f_Vcommand_line_args;

  Lisp_Object f_Vcompletion_ignored_extensions;

  Lisp_Object f_Vcompletion_regexp_list;

  Lisp_Object f_Vcompose_chars_after_function;

  Lisp_Object f_Vcomposition_function_table;

  Lisp_Object f_Vconfigure_info_directory;

  Lisp_Object f_Vcurrent_iso639_language;

  Lisp_Object f_Vcurrent_load_list;

  Lisp_Object f_Vcurrent_prefix_arg;

  Lisp_Object f_Vdata_directory;

  Lisp_Object f_Vdeactivate_mark;

  Lisp_Object f_Vdebug_ignored_errors;

  Lisp_Object f_Vdebug_on_error;

  Lisp_Object f_Vdebug_on_event;

  Lisp_Object f_Vdebug_on_message;

  Lisp_Object f_Vdebug_on_signal;

  Lisp_Object f_Vdebugger;

  Lisp_Object f_Vdefault_file_name_coding_system;

  Lisp_Object f_Vdefault_frame_alist;

  Lisp_Object f_Vdefault_frame_scroll_bars;

  Lisp_Object f_Vdefault_process_coding_system;

  Lisp_Object f_Vdefault_text_properties;

  Lisp_Object f_Vdeferred_action_function;

  Lisp_Object f_Vdeferred_action_list;

  Lisp_Object f_Vdefine_key_rebound_commands;

  Lisp_Object f_Vdelayed_warnings_list;

  Lisp_Object f_Vdelete_frame_functions;

  Lisp_Object f_Vdelete_terminal_functions;

  Lisp_Object f_Vdisable_point_adjustment;

  Lisp_Object f_Vdisplay_pixels_per_inch;

  Lisp_Object f_Vdoc_directory;

  Lisp_Object f_Vdoc_file_name;

  Lisp_Object f_Vdouble_click_time;

  Lisp_Object f_Vdynamic_library_alist;

  Lisp_Object f_Vecho_keystrokes;

  Lisp_Object f_Vemacs_copyright;

  Lisp_Object f_Vemacs_version;

  Lisp_Object f_Vemulation_mode_map_alists;

  Lisp_Object f_Venable_character_translation;

  Lisp_Object f_Venable_disabled_menus_and_buttons;

  Lisp_Object f_Veval_buffer_list;

  Lisp_Object f_Vexec_directory;

  Lisp_Object f_Vexec_path;

  Lisp_Object f_Vexec_suffixes;

  Lisp_Object f_Vexecuting_kbd_macro;

  Lisp_Object f_Vface_default_stipple;

  Lisp_Object f_Vface_font_rescale_alist;

  Lisp_Object f_Vface_ignored_fonts;

  Lisp_Object f_Vface_new_frame_defaults;

  Lisp_Object f_Vface_remapping_alist;

  Lisp_Object f_Vfeatures;

  Lisp_Object f_Vfile_coding_system_alist;

  Lisp_Object f_Vfile_name_coding_system;

  Lisp_Object f_Vfile_name_handler_alist;

  Lisp_Object f_Vfind_word_boundary_function_table;

  Lisp_Object f_Vfirst_change_hook;

  Lisp_Object f_Vfloat_output_format;

  Lisp_Object f_Vfocus_in_hook;

  Lisp_Object f_Vfocus_out_hook;

  Lisp_Object f_Vfont_ccl_encoder_alist;

  Lisp_Object f_Vfont_encoding_alist;

  Lisp_Object f_Vfont_encoding_charset_alist;

  Lisp_Object f_Vfont_log;

  Lisp_Object f_Vfont_slant_table;

  Lisp_Object f_Vfont_weight_table;

  Lisp_Object f_Vfont_width_table;

  Lisp_Object f_Vfontification_functions;

  Lisp_Object f_Vfontset_alias_alist;

  Lisp_Object f_Vframe_alpha_lower_limit;

  Lisp_Object f_Vframe_title_format;

  Lisp_Object f_Vfringe_bitmaps;

  Lisp_Object f_Vfunction_key_map;

  Lisp_Object f_Vgc_cons_percentage;

  Lisp_Object f_Vgc_elapsed;

  Lisp_Object f_Vglobal_disable_point_adjustment;

  Lisp_Object f_Vglobal_mode_string;

  Lisp_Object f_Vglyph_table;

  Lisp_Object f_Vglyphless_char_display;

  Lisp_Object f_Vgtk_version_string;

  Lisp_Object f_Vhelp_char;

  Lisp_Object f_Vhelp_event_list;

  Lisp_Object f_Vhelp_form;

  Lisp_Object f_Vhistory_add_new_input;

  Lisp_Object f_Vhistory_length;

  Lisp_Object f_Vhourglass_delay;

  Lisp_Object f_Vhscroll_step;

  Lisp_Object f_Vicon_title_format;

  Lisp_Object f_Vignore_relative_composition;

  Lisp_Object f_Vimage_cache_eviction_delay;

  Lisp_Object f_Vimage_types;

  Lisp_Object f_Vinhibit_changing_match_data;

  Lisp_Object f_Vinhibit_debugger;

  Lisp_Object f_Vinhibit_field_text_motion;

  Lisp_Object f_Vinhibit_file_name_handlers;

  Lisp_Object f_Vinhibit_file_name_operation;

  Lisp_Object f_Vinhibit_point_motion_hooks;

  Lisp_Object f_Vinhibit_quit;

  Lisp_Object f_Vinhibit_read_only;

  Lisp_Object f_Vinhibit_redisplay;

  Lisp_Object f_Vinitial_environment;

  Lisp_Object f_Vinitial_window_system;

  Lisp_Object f_Vinput_method_function;

  Lisp_Object f_Vinput_method_previous_message;

  Lisp_Object f_Vinstallation_directory;

  Lisp_Object f_Vinternal__top_level_message;

  Lisp_Object f_Vinternal_interpreter_environment;

  Lisp_Object f_Vinvocation_directory;

  Lisp_Object f_Vinvocation_name;

  Lisp_Object f_Vkbd_macro_termination_hook;

  Lisp_Object f_Vkey_translation_map;

  Lisp_Object f_Vkill_buffer_query_functions;

  Lisp_Object f_Vkill_emacs_hook;

  Lisp_Object f_Vlast_code_conversion_error;

  Lisp_Object f_Vlast_coding_system_used;

  Lisp_Object f_Vlast_event_frame;

  Lisp_Object f_Vlatin_extra_code_table;

  Lisp_Object f_Vlexical_binding;

  Lisp_Object f_Vline_number_display_limit;

  Lisp_Object f_Vline_prefix;

  Lisp_Object f_Vload_file_name;

  Lisp_Object f_Vload_file_rep_suffixes;

  Lisp_Object f_Vload_history;

  Lisp_Object f_Vload_path;

  Lisp_Object f_Vload_read_function;

  Lisp_Object f_Vload_source_file_function;

  Lisp_Object f_Vload_suffixes;

  Lisp_Object f_Vlocale_coding_system;

  Lisp_Object f_Vlucid_menu_bar_dirty_flag;

  Lisp_Object f_Vmake_pointer_invisible;

  Lisp_Object f_Vmark_even_if_inactive;

  Lisp_Object f_Vmax_image_size;

  Lisp_Object f_Vmax_mini_window_height;

  Lisp_Object f_Vmemory_full;

  Lisp_Object f_Vmemory_signal_data;

  Lisp_Object f_Vmenu_bar_final_items;

  Lisp_Object f_Vmenu_bar_mode;

  Lisp_Object f_Vmenu_bar_update_hook;

  Lisp_Object f_Vmenu_updating_frame;

  Lisp_Object f_Vmessage_log_max;

  Lisp_Object f_Vminibuf_scroll_window;

  Lisp_Object f_Vminibuffer_completing_file_name;

  Lisp_Object f_Vminibuffer_completion_confirm;

  Lisp_Object f_Vminibuffer_completion_predicate;

  Lisp_Object f_Vminibuffer_completion_table;

  Lisp_Object f_Vminibuffer_exit_hook;

  Lisp_Object f_Vminibuffer_help_form;

  Lisp_Object f_Vminibuffer_history_position;

  Lisp_Object f_Vminibuffer_history_variable;

  Lisp_Object f_Vminibuffer_local_map;

  Lisp_Object f_Vminibuffer_local_ns_map;

  Lisp_Object f_Vminibuffer_message_timeout;

  Lisp_Object f_Vminibuffer_prompt_properties;

  Lisp_Object f_Vminibuffer_setup_hook;

  Lisp_Object f_Vminor_mode_map_alist;

  Lisp_Object f_Vminor_mode_overriding_map_alist;

  Lisp_Object f_Vmodule_file_suffix;

  Lisp_Object f_Vmost_negative_fixnum;

  Lisp_Object f_Vmost_positive_fixnum;

  Lisp_Object f_Vmotif_version_string;

  Lisp_Object f_Vmouse_autoselect_window;

  Lisp_Object f_Vmouse_highlight;

  Lisp_Object f_Vmouse_leave_buffer_hook;

  Lisp_Object f_Vmouse_position_function;

  Lisp_Object f_Vnetwork_coding_system_alist;

  Lisp_Object f_Vnobreak_char_display;

  Lisp_Object f_Vobarray;

  Lisp_Object f_Vold_style_backquotes;

  Lisp_Object f_Voperating_system_release;

  Lisp_Object f_Votf_script_alist;

  Lisp_Object f_Vother_window_scroll_buffer;

  Lisp_Object f_Voverflow_newline_into_fringe;

  Lisp_Object f_Voverlay_arrow_position;

  Lisp_Object f_Voverlay_arrow_string;

  Lisp_Object f_Voverlay_arrow_variable_list;

  Lisp_Object f_Voverriding_local_map;

  Lisp_Object f_Voverriding_local_map_menu_flag;

  Lisp_Object f_Vpath_separator;

  Lisp_Object f_Vpost_command_hook;

  Lisp_Object f_Vpost_gc_hook;

  Lisp_Object f_Vpost_self_insert_hook;

  Lisp_Object f_Vpre_command_hook;

  Lisp_Object f_Vpre_redisplay_function;

  Lisp_Object f_Vprefix_help_command;

  Lisp_Object f_Vpreloaded_file_list;

  Lisp_Object f_Vprevious_system_messages_locale;

  Lisp_Object f_Vprevious_system_time_locale;

  Lisp_Object f_Vprint_charset_text_property;

  Lisp_Object f_Vprint_circle;

  Lisp_Object f_Vprint_continuous_numbering;

  Lisp_Object f_Vprint_gensym;

  Lisp_Object f_Vprint_length;

  Lisp_Object f_Vprint_level;

  Lisp_Object f_Vprint_number_table;

  Lisp_Object f_Vprintable_chars;

  Lisp_Object f_Vprocess_adaptive_read_buffering;

  Lisp_Object f_Vprocess_coding_system_alist;

  Lisp_Object f_Vprocess_connection_type;

  Lisp_Object f_Vprocess_environment;

  Lisp_Object f_Vpurify_flag;

  Lisp_Object f_Vquit_flag;

  Lisp_Object f_Vread_buffer_function;

  Lisp_Object f_Vread_circle;

  Lisp_Object f_Vread_expression_history;

  Lisp_Object f_Vread_hide_char;

  Lisp_Object f_Vread_symbol_positions_list;

  Lisp_Object f_Vread_with_symbol_positions;

  Lisp_Object f_Vreal_this_command;

  Lisp_Object f_Vrecenter_redisplay;

  Lisp_Object f_Vredisplay__all_windows_cause;

  Lisp_Object f_Vredisplay__mode_lines_cause;

  Lisp_Object f_Vredisplay__variables;

  Lisp_Object f_Vredisplay_end_trigger_functions;

  Lisp_Object f_Vreport_emacs_bug_address;

  Lisp_Object f_Vresize_mini_windows;

  Lisp_Object f_Vresume_tty_functions;

  Lisp_Object f_Vring_bell_function;

  Lisp_Object f_Vsaved_region_selection;

  Lisp_Object f_Vscalable_fonts_allowed;

  Lisp_Object f_Vscript_representative_chars;

  Lisp_Object f_Vscroll_preserve_screen_position;

  Lisp_Object f_Vsearch_spaces_regexp;

  Lisp_Object f_Vselect_active_regions;

  Lisp_Object f_Vselect_safe_coding_system_function;

  Lisp_Object f_Vselection_converter_alist;

  Lisp_Object f_Vselection_inhibit_update_commands;

  Lisp_Object f_Vset_auto_coding_function;

  Lisp_Object f_Vshared_game_score_directory;

  Lisp_Object f_Vshell_file_name;

  Lisp_Object f_Vshow_help_function;

  Lisp_Object f_Vshow_trailing_whitespace;

  Lisp_Object f_Vsignal_hook_function;

  Lisp_Object f_Vsource_directory;

  Lisp_Object f_Vspecial_event_map;

  Lisp_Object f_Vstandard_display_table;

  Lisp_Object f_Vstandard_input;

  Lisp_Object f_Vstandard_output;

  Lisp_Object f_Vstandard_translation_table_for_decode;

  Lisp_Object f_Vstandard_translation_table_for_encode;

  Lisp_Object f_Vsuspend_tty_functions;

  Lisp_Object f_Vsystem_configuration;

  Lisp_Object f_Vsystem_configuration_features;

  Lisp_Object f_Vsystem_configuration_options;

  Lisp_Object f_Vsystem_messages_locale;

  Lisp_Object f_Vsystem_name;

  Lisp_Object f_Vsystem_time_locale;

  Lisp_Object f_Vsystem_type;

  Lisp_Object f_Vtemp_buffer_show_function;

  Lisp_Object f_Vtemporary_file_directory;

  Lisp_Object f_Vterminal_frame;

  Lisp_Object f_Vtext_property_default_nonsticky;

  Lisp_Object f_Vtext_quoting_style;

  Lisp_Object f_Vthis_command;

  Lisp_Object f_Vthis_command_keys_shift_translated;

  Lisp_Object f_Vthis_original_command;

  Lisp_Object f_Vthrow_on_input;

  Lisp_Object f_Vtimer_idle_list;

  Lisp_Object f_Vtimer_list;

  Lisp_Object f_Vtool_bar_border;

  Lisp_Object f_Vtool_bar_button_margin;

  Lisp_Object f_Vtool_bar_mode;

  Lisp_Object f_Vtool_bar_separator_image_expression;

  Lisp_Object f_Vtool_bar_style;

  Lisp_Object f_Vtop_level;

  Lisp_Object f_Vtransient_mark_mode;

  Lisp_Object f_Vtranslation_hash_table_vector;

  Lisp_Object f_Vtranslation_table_for_input;

  Lisp_Object f_Vtranslation_table_vector;

  Lisp_Object f_Vtruncate_partial_width_windows;

  Lisp_Object f_Vtty_defined_color_alist;

  Lisp_Object f_Vtty_erase_char;

  Lisp_Object f_Vundo_outer_limit;

  Lisp_Object f_Vundo_outer_limit_function;

  Lisp_Object f_Vunicode_category_table;

  Lisp_Object f_Vunread_command_events;

  Lisp_Object f_Vunread_input_method_events;

  Lisp_Object f_Vunread_post_input_method_events;

  Lisp_Object f_Vuse_default_ascent;

  Lisp_Object f_Vuser_full_name;

  Lisp_Object f_Vuser_init_file;

  Lisp_Object f_Vuser_login_name;

  Lisp_Object f_Vuser_real_login_name;

  Lisp_Object f_Vvalues;

  Lisp_Object f_Vvertical_centering_font_regexp;

  Lisp_Object f_Vvoid_text_area_pointer;

  Lisp_Object f_Vwhere_is_preferred_modifier;

  Lisp_Object f_Vwindow_combination_limit;

  Lisp_Object f_Vwindow_combination_resize;

  Lisp_Object f_Vwindow_configuration_change_hook;

  Lisp_Object f_Vwindow_persistent_parameters;

  Lisp_Object f_Vwindow_point_insertion_type;

  Lisp_Object f_Vwindow_scroll_functions;

  Lisp_Object f_Vwindow_size_change_functions;

  Lisp_Object f_Vwindow_system_version;

  Lisp_Object f_Vwindow_text_change_functions;

  Lisp_Object f_Vword_combining_categories;

  Lisp_Object f_Vword_separating_categories;

  Lisp_Object f_Vwrap_prefix;

  Lisp_Object f_Vwrite_region_annotate_functions;

  Lisp_Object f_Vwrite_region_annotations_so_far;

  Lisp_Object f_Vwrite_region_post_annotation_function;

  Lisp_Object f_Vx_alt_keysym;

  Lisp_Object f_Vx_bitmap_file_path;

  Lisp_Object f_Vx_cursor_fore_pixel;

  Lisp_Object f_Vx_hourglass_pointer_shape;

  Lisp_Object f_Vx_hyper_keysym;

  Lisp_Object f_Vx_keysym_table;

  Lisp_Object f_Vx_lost_selection_functions;

  Lisp_Object f_Vx_max_tooltip_size;

  Lisp_Object f_Vx_meta_keysym;

  Lisp_Object f_Vx_mode_pointer_shape;

  Lisp_Object f_Vx_no_window_manager;

  Lisp_Object f_Vx_nontext_pointer_shape;

  Lisp_Object f_Vx_pixel_size_width_font_regexp;

  Lisp_Object f_Vx_pointer_shape;

  Lisp_Object f_Vx_resource_class;

  Lisp_Object f_Vx_resource_name;

  Lisp_Object f_Vx_select_enable_clipboard_manager;

  Lisp_Object f_Vx_sensitive_text_pointer_shape;

  Lisp_Object f_Vx_sent_selection_functions;

  Lisp_Object f_Vx_session_id;

  Lisp_Object f_Vx_session_previous_id;

  Lisp_Object f_Vx_super_keysym;

  Lisp_Object f_Vx_toolkit_scroll_bars;

  Lisp_Object f_Vx_window_horizontal_drag_shape;

  Lisp_Object f_Vx_window_vertical_drag_shape;

  Lisp_Object f_Vxft_settings;

  Lisp_Object f_do_mouse_tracking;

  Lisp_Object f_eol_mnemonic_dos;

  Lisp_Object f_eol_mnemonic_mac;

  Lisp_Object f_eol_mnemonic_undecided;

  Lisp_Object f_eol_mnemonic_unix;

  Lisp_Object f_frame_inhibit_implied_resize;

  Lisp_Object f_frame_size_history;

  Lisp_Object f_last_command_event;

  Lisp_Object f_last_input_event;

  Lisp_Object f_last_nonmenu_event;

  Lisp_Object f_menu_prompt_more_char;

  Lisp_Object f_meta_prefix_char;

  EMACS_INT f_auto_save_interval;

  EMACS_INT f_baud_rate;

  EMACS_INT f_cons_cells_consed;

  EMACS_INT f_debug_end_pos;

  EMACS_INT f_double_click_fuzz;

  EMACS_INT f_emacs_scroll_step;

  EMACS_INT f_executing_kbd_macro_index;

  EMACS_INT f_extra_keyboard_modifiers;

  EMACS_INT f_floats_consed;

  EMACS_INT f_gc_cons_threshold;

  EMACS_INT f_gcs_done;

  EMACS_INT f_global_gnutls_log_level;

  EMACS_INT f_hscroll_margin;

  EMACS_INT f_imagemagick_render_type;

  EMACS_INT f_intervals_consed;

  EMACS_INT f_line_number_display_limit_width;

  EMACS_INT f_max_lisp_eval_depth;

  EMACS_INT f_max_specpdl_size;

  EMACS_INT f_misc_objects_consed;

  EMACS_INT f_next_screen_context_lines;

  EMACS_INT f_num_input_keys;

  EMACS_INT f_num_nonmacro_input_events;

  EMACS_INT f_overline_margin;

  EMACS_INT f_polling_period;

  EMACS_INT f_profiler_log_size;

  EMACS_INT f_profiler_max_stack_depth;

  EMACS_INT f_pure_bytes_used;

  EMACS_INT f_scroll_conservatively;

  EMACS_INT f_scroll_margin;

  EMACS_INT f_string_chars_consed;

  EMACS_INT f_strings_consed;

  EMACS_INT f_symbols_consed;

  EMACS_INT f_syntax_propertize__done;

  EMACS_INT f_tool_bar_button_relief;

  EMACS_INT f_tool_bar_max_label_size;

  EMACS_INT f_underline_minimum_offset;

  EMACS_INT f_undo_limit;

  EMACS_INT f_undo_strong_limit;

  EMACS_INT f_vector_cells_consed;

  EMACS_INT f_x_selection_timeout;

  _Bool f_Vcomment_end_can_be_escaped;

  _Bool f_Vfast_but_imprecise_scrolling;

  _Bool f_auto_raise_tool_bar_buttons_p;

  _Bool f_auto_window_vscroll_p;

  _Bool f_automatic_hscrolling_p;

  _Bool f_byte_metering_on;

  _Bool f_cannot_suspend;

  _Bool f_coding_system_require_warning;

  _Bool f_completion_ignore_case;

  _Bool f_create_lockfiles;

  _Bool f_cross_disabled_images;

  _Bool f_cursor_in_echo_area;

  _Bool f_debug_on_next_call;

  _Bool f_debug_on_quit;

  _Bool f_debugger_may_continue;

  _Bool f_delete_by_moving_to_trash;

  _Bool f_delete_exited_processes;

  _Bool f_disable_ascii_optimization;

  _Bool f_display_hourglass_p;

  _Bool f_enable_recursive_minibuffers;

  _Bool f_focus_follows_mouse;

  _Bool f_force_load_messages;

  _Bool f_frame_resize_pixelwise;

  _Bool f_garbage_collection_messages;

  _Bool f_highlight_nonselected_windows;

  _Bool f_history_delete_duplicates;

  _Bool f_indent_tabs_mode;

  _Bool f_inherit_process_coding_system;

  _Bool f_inhibit_bidi_mirroring;

  _Bool f_inhibit_eol_conversion;

  _Bool f_inhibit_eval_during_redisplay;

  _Bool f_inhibit_free_realized_faces;

  _Bool f_inhibit_iso_escape_detection;

  _Bool f_inhibit_load_charset_map;

  _Bool f_inhibit_menubar_update;

  _Bool f_inhibit_message;

  _Bool f_inhibit_modification_hooks;

  _Bool f_inhibit_null_byte_detection;

  _Bool f_inhibit_try_cursor_movement;

  _Bool f_inhibit_try_window_id;

  _Bool f_inhibit_try_window_reusing;

  _Bool f_inhibit_x_resources;

  _Bool f_inverse_video;

  _Bool f_load_convert_to_unibyte;

  _Bool f_load_dangerous_libraries;

  _Bool f_load_force_doc_strings;

  _Bool f_load_in_progress;

  _Bool f_load_prefer_newer;

  _Bool f_make_cursor_line_fully_visible_p;

  _Bool f_menu_prompting;

  _Bool f_message_truncate_lines;

  _Bool f_minibuffer_allow_text_properties;

  _Bool f_minibuffer_auto_raise;

  _Bool f_mode_line_in_non_selected_windows;

  _Bool f_multibyte_syntax_as_symbol;

  _Bool f_multiple_frames;

  _Bool f_no_redraw_on_reenter;

  _Bool f_noninteractive1;

  _Bool f_open_paren_in_column_0_is_defun_start;

  _Bool f_parse_sexp_ignore_comments;

  _Bool f_parse_sexp_lookup_properties;

  _Bool f_print_escape_multibyte;

  _Bool f_print_escape_newlines;

  _Bool f_print_escape_nonascii;

  _Bool f_print_quoted;

  _Bool f_read_buffer_completion_ignore_case;

  _Bool f_redisplay__inhibit_bidi;

  _Bool f_redisplay_dont_pause;

  _Bool f_scroll_bar_adjust_thumb_portion_p;

  _Bool f_system_uses_terminfo;

  _Bool f_text_quoting_flag;

  _Bool f_undo_inhibit_record_point;

  _Bool f_unibyte_display_via_language_environment;

  _Bool f_use_dialog_box;

  _Bool f_use_file_dialog;

  _Bool f_use_system_font;

  _Bool f_visible_bell;

  _Bool f_visible_cursor;

  _Bool f_window_resize_pixelwise;

  _Bool f_words_include_escapes;

  _Bool f_write_region_inhibit_fsync;

  _Bool f_x_frame_normalize_before_maximize;

  _Bool f_x_gtk_file_dialog_help_text;

  _Bool f_x_gtk_show_hidden_files;

  _Bool f_x_gtk_use_old_file_dialog;

  _Bool f_x_gtk_use_system_tooltips;

  _Bool f_x_mouse_click_focus_ignore_position;

  _Bool f_x_stretch_cursor_p;

  _Bool f_x_underline_at_descent_line;

  _Bool f_x_use_underline_position_properties;

  _Bool f_xft_font_ascent_descent_override;

};
extern struct emacs_globals globals;


extern

struct Lisp_Symbol _Alignas (8) lispsym[1074];


extern Lisp_Object const Qnil ;

extern Lisp_Object const QATOM ;

extern Lisp_Object const QCLIPBOARD ;

extern Lisp_Object const QCLIPBOARD_MANAGER ;

extern Lisp_Object const QCOMPOUND_TEXT ;

extern Lisp_Object const QCadstyle ;

extern Lisp_Object const QCadvertised_binding ;

extern Lisp_Object const QCalign_to ;

extern Lisp_Object const QCantialias ;

extern Lisp_Object const QCascent ;

extern Lisp_Object const QCascii_compatible_p ;

extern Lisp_Object const QCautohint ;

extern Lisp_Object const QCavgwidth ;

extern Lisp_Object const QCbackground ;

extern Lisp_Object const QCbold ;

extern Lisp_Object const QCbox ;

extern Lisp_Object const QCbuffer ;

extern Lisp_Object const QCbutton ;

extern Lisp_Object const QCbytesize ;

extern Lisp_Object const QCcategory ;

extern Lisp_Object const QCcoding ;

extern Lisp_Object const QCcolor ;

extern Lisp_Object const QCcolor_adjustment ;

extern Lisp_Object const QCcolor_symbols ;

extern Lisp_Object const QCcombining_capability ;

extern Lisp_Object const QCcommand ;

extern Lisp_Object const QCconnection_type ;

extern Lisp_Object const QCconversion ;

extern Lisp_Object const QCcrop ;

extern Lisp_Object const QCdata ;

extern Lisp_Object const QCdecode_translation_table ;

extern Lisp_Object const QCdefault_char ;

extern Lisp_Object const QCdevice ;

extern Lisp_Object const QCdistant_foreground ;

extern Lisp_Object const QCdocumentation ;

extern Lisp_Object const QCdpi ;

extern Lisp_Object const QCembolden ;

extern Lisp_Object const QCenable ;

extern Lisp_Object const QCencode_translation_table ;

extern Lisp_Object const QCeval ;

extern Lisp_Object const QCfamily ;

extern Lisp_Object const QCfile ;

extern Lisp_Object const QCfilter ;

extern Lisp_Object const QCflowcontrol ;

extern Lisp_Object const QCfont ;

extern Lisp_Object const QCfont_entity ;

extern Lisp_Object const QCfontset ;

extern Lisp_Object const QCforeground ;

extern Lisp_Object const QCfoundry ;

extern Lisp_Object const QCgnutls_bootprop_crlfiles ;

extern Lisp_Object const QCgnutls_bootprop_hostname ;

extern Lisp_Object const QCgnutls_bootprop_keylist ;

extern Lisp_Object const QCgnutls_bootprop_loglevel ;

extern Lisp_Object const QCgnutls_bootprop_min_prime_bits ;

extern Lisp_Object const QCgnutls_bootprop_priority ;

extern Lisp_Object const QCgnutls_bootprop_trustfiles ;

extern Lisp_Object const QCgnutls_bootprop_verify_error ;

extern Lisp_Object const QCgnutls_bootprop_verify_flags ;

extern Lisp_Object const QCheight ;

extern Lisp_Object const QChelp ;

extern Lisp_Object const QCheuristic_mask ;

extern Lisp_Object const QChinting ;

extern Lisp_Object const QChintstyle ;

extern Lisp_Object const QChost ;

extern Lisp_Object const QCignore_defface ;

extern Lisp_Object const QCimage ;

extern Lisp_Object const QCindex ;

extern Lisp_Object const QCinherit ;

extern Lisp_Object const QCinverse_video ;

extern Lisp_Object const QCitalic ;

extern Lisp_Object const QCkey_sequence ;

extern Lisp_Object const QCkeys ;

extern Lisp_Object const QClabel ;

extern Lisp_Object const QClang ;

extern Lisp_Object const QClcdfilter ;

extern Lisp_Object const QCline_width ;

extern Lisp_Object const QCloader ;

extern Lisp_Object const QClocal ;

extern Lisp_Object const QClog ;

extern Lisp_Object const QCmap ;

extern Lisp_Object const QCmargin ;

extern Lisp_Object const QCmask ;

extern Lisp_Object const QCmatrix ;

extern Lisp_Object const QCmax_height ;

extern Lisp_Object const QCmax_width ;

extern Lisp_Object const QCmnemonic ;

extern Lisp_Object const QCname ;

extern Lisp_Object const QCnoquery ;

extern Lisp_Object const QCnowait ;

extern Lisp_Object const QCotf ;

extern Lisp_Object const QCoverline ;

extern Lisp_Object const QCparity ;

extern Lisp_Object const QCplist ;

extern Lisp_Object const QCpointer ;

extern Lisp_Object const QCport ;

extern Lisp_Object const QCpost_read_conversion ;

extern Lisp_Object const QCpre_write_conversion ;

extern Lisp_Object const QCprocess ;

extern Lisp_Object const QCpropertize ;

extern Lisp_Object const QCpt_height ;

extern Lisp_Object const QCpt_width ;

extern Lisp_Object const QCradio ;

extern Lisp_Object const QCregistry ;

extern Lisp_Object const QCrehash_size ;

extern Lisp_Object const QCrehash_threshold ;

extern Lisp_Object const QCrelative_height ;

extern Lisp_Object const QCrelative_width ;

extern Lisp_Object const QCrelief ;

extern Lisp_Object const QCremote ;

extern Lisp_Object const QCreverse_video ;

extern Lisp_Object const QCrgba ;

extern Lisp_Object const QCrotation ;

extern Lisp_Object const QCrtl ;

extern Lisp_Object const QCscalable ;

extern Lisp_Object const QCscript ;

extern Lisp_Object const QCsentinel ;

extern Lisp_Object const QCserver ;

extern Lisp_Object const QCservice ;

extern Lisp_Object const QCsize ;

extern Lisp_Object const QCslant ;

extern Lisp_Object const QCspacing ;

extern Lisp_Object const QCspeed ;

extern Lisp_Object const QCstderr ;

extern Lisp_Object const QCstipple ;

extern Lisp_Object const QCstop ;

extern Lisp_Object const QCstopbits ;

extern Lisp_Object const QCstrike_through ;

extern Lisp_Object const QCstyle ;

extern Lisp_Object const QCsummary ;

extern Lisp_Object const QCtest ;

extern Lisp_Object const QCtoggle ;

extern Lisp_Object const QCtype ;

extern Lisp_Object const QCunderline ;

extern Lisp_Object const QCuser_spec ;

extern Lisp_Object const QCvert_only ;

extern Lisp_Object const QCvisible ;

extern Lisp_Object const QCvolume ;

extern Lisp_Object const QCweakness ;

extern Lisp_Object const QCweight ;

extern Lisp_Object const QCwidth ;

extern Lisp_Object const QDELETE ;

extern Lisp_Object const QEMACS_TMP ;

extern Lisp_Object const QEmacsFrameResize ;

extern Lisp_Object const QINCR ;

extern Lisp_Object const QINTEGER ;

extern Lisp_Object const QMULTIPLE ;

extern Lisp_Object const QNULL ;

extern Lisp_Object const QPRIMARY ;

extern Lisp_Object const QSAVE_TARGETS ;

extern Lisp_Object const QSECONDARY ;

extern Lisp_Object const QSTRING ;

extern Lisp_Object const QTARGETS ;

extern Lisp_Object const QTEXT ;

extern Lisp_Object const QTIMESTAMP ;

extern Lisp_Object const QUTF8_STRING ;

extern Lisp_Object const Qabove ;

extern Lisp_Object const Qabove_handle ;

extern Lisp_Object const Qaccess ;

extern Lisp_Object const Qaccess_file ;

extern Lisp_Object const Qactivate_input_method ;

extern Lisp_Object const Qactivate_menubar_hook ;

extern Lisp_Object const Qadd_name_to_file ;

extern Lisp_Object const Qadjust_frame_size_1 ;

extern Lisp_Object const Qadjust_frame_size_2 ;

extern Lisp_Object const Qadjust_frame_size_3 ;

extern Lisp_Object const Qafter_change_functions ;

extern Lisp_Object const Qafter_handle ;

extern Lisp_Object const Qafter_insert_file_set_coding ;

extern Lisp_Object const Qafter_string ;

extern Lisp_Object const Qall_events ;

extern Lisp_Object const Qalpha ;

extern Lisp_Object const Qalt ;

extern Lisp_Object const Qand_optional ;

extern Lisp_Object const Qand_rest ;

extern Lisp_Object const Qappend ;

extern Lisp_Object const Qapply ;

extern Lisp_Object const Qargs ;

extern Lisp_Object const Qargs_out_of_range ;

extern Lisp_Object const Qarith_error ;

extern Lisp_Object const Qarrayp ;

extern Lisp_Object const Qarrow ;

extern Lisp_Object const Qascii ;

extern Lisp_Object const Qascii_0 ;

extern Lisp_Object const Qascii_character ;

extern Lisp_Object const Qattrib ;

extern Lisp_Object const Qauto_composed ;

extern Lisp_Object const Qauto_fill_chars ;

extern Lisp_Object const Qauto_hscroll_mode ;

extern Lisp_Object const Qauto_lower ;

extern Lisp_Object const Qauto_raise ;

extern Lisp_Object const Qauto_save_coding ;

extern Lisp_Object const Qautoload ;

extern Lisp_Object const Qautomatic_gc ;

extern Lisp_Object const Qbackground_color ;

extern Lisp_Object const Qbackground_mode ;

extern Lisp_Object const Qbackquote ;

extern Lisp_Object const Qbar ;

extern Lisp_Object const Qbefore_change_functions ;

extern Lisp_Object const Qbefore_handle ;

extern Lisp_Object const Qbefore_string ;

extern Lisp_Object const Qbeginning_of_buffer ;

extern Lisp_Object const Qbelow_handle ;

extern Lisp_Object const Qbig ;

extern Lisp_Object const Qbig5 ;

extern Lisp_Object const Qbitmap_spec_p ;

extern Lisp_Object const Qbold ;

extern Lisp_Object const Qbool_vector ;

extern Lisp_Object const Qbool_vector_p ;

extern Lisp_Object const Qborder ;

extern Lisp_Object const Qborder_color ;

extern Lisp_Object const Qborder_width ;

extern Lisp_Object const Qboth ;

extern Lisp_Object const Qboth_horiz ;

extern Lisp_Object const Qbottom ;

extern Lisp_Object const Qbottom_divider ;

extern Lisp_Object const Qbottom_divider_width ;

extern Lisp_Object const Qbottom_margin ;

extern Lisp_Object const Qboundary ;

extern Lisp_Object const Qbox ;

extern Lisp_Object const Qbuffer ;

extern Lisp_Object const Qbuffer_access_fontify_functions ;

extern Lisp_Object const Qbuffer_file_coding_system ;

extern Lisp_Object const Qbuffer_list ;

extern Lisp_Object const Qbuffer_list_update_hook ;

extern Lisp_Object const Qbuffer_name_history ;

extern Lisp_Object const Qbuffer_or_string_p ;

extern Lisp_Object const Qbuffer_position ;

extern Lisp_Object const Qbuffer_predicate ;

extern Lisp_Object const Qbuffer_read_only ;

extern Lisp_Object const Qbufferp ;

extern Lisp_Object const Qbuffers ;

extern Lisp_Object const Qburied_buffer_list ;

extern Lisp_Object const Qbyte_code_meter ;

extern Lisp_Object const Qc ;

extern Lisp_Object const Qcall_process ;

extern Lisp_Object const Qcall_process_region ;

extern Lisp_Object const Qcancel_timer ;

extern Lisp_Object const Qcar_less_than_car ;

extern Lisp_Object const Qcase_fold_search ;

extern Lisp_Object const Qcase_table ;

extern Lisp_Object const Qcase_table_p ;

extern Lisp_Object const Qcategory ;

extern Lisp_Object const Qcategory_table ;

extern Lisp_Object const Qcategory_table_p ;

extern Lisp_Object const Qcategoryp ;

extern Lisp_Object const Qcategorysetp ;

extern Lisp_Object const Qccl ;

extern Lisp_Object const Qccl_program_idx ;

extern Lisp_Object const Qcclp ;

extern Lisp_Object const Qcdr ;

extern Lisp_Object const Qceiling ;

extern Lisp_Object const Qcenter ;

extern Lisp_Object const Qchange_frame_size ;

extern Lisp_Object const Qchange_major_mode_hook ;

extern Lisp_Object const Qchar_code_property_table ;

extern Lisp_Object const Qchar_or_string_p ;

extern Lisp_Object const Qchar_script_table ;

extern Lisp_Object const Qchar_table ;

extern Lisp_Object const Qchar_table_extra_slots ;

extern Lisp_Object const Qchar_table_p ;

extern Lisp_Object const Qcharacterp ;

extern Lisp_Object const Qcharset ;

extern Lisp_Object const Qcharsetp ;

extern Lisp_Object const Qchoice ;

extern Lisp_Object const Qcircle ;

extern Lisp_Object const Qcircular_list ;

extern Lisp_Object const Qclone_of ;

extern Lisp_Object const Qclose ;

extern Lisp_Object const Qclose_nowrite ;

extern Lisp_Object const Qclose_write ;

extern Lisp_Object const Qclosed ;

extern Lisp_Object const Qclosure ;

extern Lisp_Object const Qcmajflt ;

extern Lisp_Object const Qcminflt ;

extern Lisp_Object const Qcode_conversion_map ;

extern Lisp_Object const Qcode_conversion_map_id ;

extern Lisp_Object const Qcodeset ;

extern Lisp_Object const Qcoding_system_define_form ;

extern Lisp_Object const Qcoding_system_error ;

extern Lisp_Object const Qcoding_system_history ;

extern Lisp_Object const Qcoding_system_p ;

extern Lisp_Object const Qcomm ;

extern Lisp_Object const Qcomma ;

extern Lisp_Object const Qcomma_at ;

extern Lisp_Object const Qcomma_dot ;

extern Lisp_Object const Qcommand_execute ;

extern Lisp_Object const Qcommandp ;

extern Lisp_Object const Qcomment_end_can_be_escaped ;

extern Lisp_Object const Qcompiled_function ;

extern Lisp_Object const Qcompletion_ignore_case ;

extern Lisp_Object const Qcomposition ;

extern Lisp_Object const Qcompound_text ;

extern Lisp_Object const Qconfig_changed_event ;

extern Lisp_Object const Qconnect ;

extern Lisp_Object const Qcons ;

extern Lisp_Object const Qconses ;

extern Lisp_Object const Qconsp ;

extern Lisp_Object const Qcontinuation ;

extern Lisp_Object const Qcopy_directory ;

extern Lisp_Object const Qcopy_file ;

extern Lisp_Object const Qcount ;

extern Lisp_Object const Qcreate ;

extern Lisp_Object const Qcstime ;

extern Lisp_Object const Qctime ;

extern Lisp_Object const Qcurrent_input_method ;

extern Lisp_Object const Qcurrent_load_list ;

extern Lisp_Object const Qcursor ;

extern Lisp_Object const Qcursor_color ;

extern Lisp_Object const Qcursor_in_echo_area ;

extern Lisp_Object const Qcursor_type ;

extern Lisp_Object const Qcustom_variable_p ;

extern Lisp_Object const Qcutime ;

extern Lisp_Object const Qcyclic_function_indirection ;

extern Lisp_Object const Qcyclic_variable_indirection ;

extern Lisp_Object const Qd ;

extern Lisp_Object const Qdata ;

extern Lisp_Object const Qdatagram ;

extern Lisp_Object const Qdays ;

extern Lisp_Object const Qdbus_event ;

extern Lisp_Object const Qdeactivate_mark ;

extern Lisp_Object const Qdebug ;

extern Lisp_Object const Qdebug_on_next_call ;

extern Lisp_Object const Qdecomposed_characters ;

extern Lisp_Object const Qdefalias_fset_function ;

extern Lisp_Object const Qdefault ;

extern Lisp_Object const Qdefault_directory ;

extern Lisp_Object const Qdeferred_action_function ;

extern Lisp_Object const Qdefun ;

extern Lisp_Object const Qdelay ;

extern Lisp_Object const Qdelayed_warnings_hook ;

extern Lisp_Object const Qdelete ;

extern Lisp_Object const Qdelete_by_moving_to_trash ;

extern Lisp_Object const Qdelete_directory ;

extern Lisp_Object const Qdelete_file ;

extern Lisp_Object const Qdelete_frame ;

extern Lisp_Object const Qdelete_frame_functions ;

extern Lisp_Object const Qdelete_self ;

extern Lisp_Object const Qdelete_terminal_functions ;

extern Lisp_Object const Qdelete_window ;

extern Lisp_Object const Qdir_ok ;

extern Lisp_Object const Qdirectory_file_name ;

extern Lisp_Object const Qdirectory_files ;

extern Lisp_Object const Qdirectory_files_and_attributes ;

extern Lisp_Object const Qdisabled ;

extern Lisp_Object const Qdisplay ;

extern Lisp_Object const Qdisplay_buffer ;

extern Lisp_Object const Qdisplay_table ;

extern Lisp_Object const Qdisplay_type ;

extern Lisp_Object const Qdo_after_load_evaluation ;

extern Lisp_Object const Qdomain_error ;

extern Lisp_Object const Qdont_follow ;

extern Lisp_Object const Qdos ;

extern Lisp_Object const Qdown ;

extern Lisp_Object const Qdrag_n_drop ;

extern Lisp_Object const Qdragging ;

extern Lisp_Object const Qecho_area_clear_hook ;

extern Lisp_Object const Qecho_keystrokes ;

extern Lisp_Object const Qedge_detection ;

extern Lisp_Object const Qegid ;

extern Lisp_Object const Qeight_bit ;

extern Lisp_Object const Qemacs ;

extern Lisp_Object const Qemacs_mule ;

extern Lisp_Object const Qemboss ;

extern Lisp_Object const Qempty_box ;

extern Lisp_Object const Qempty_line ;

extern Lisp_Object const Qenable_recursive_minibuffers ;

extern Lisp_Object const Qend_of_buffer ;

extern Lisp_Object const Qend_of_file ;

extern Lisp_Object const Qend_scroll ;

extern Lisp_Object const Qeq ;

extern Lisp_Object const Qeql ;

extern Lisp_Object const Qequal ;

extern Lisp_Object const Qerror ;

extern Lisp_Object const Qerror_conditions ;

extern Lisp_Object const Qerror_message ;

extern Lisp_Object const Qescape_glyph ;

extern Lisp_Object const Qetime ;

extern Lisp_Object const Qeuid ;

extern Lisp_Object const Qeval ;

extern Lisp_Object const Qeval_buffer_list ;

extern Lisp_Object const Qevaporate ;

extern Lisp_Object const Qeven ;

extern Lisp_Object const Qevent_kind ;

extern Lisp_Object const Qevent_symbol_element_mask ;

extern Lisp_Object const Qevent_symbol_elements ;

extern Lisp_Object const Qexcl ;

extern Lisp_Object const Qexcl_unlink ;

extern Lisp_Object const Qexit ;

extern Lisp_Object const Qexpand_abbrev ;

extern Lisp_Object const Qexpand_file_name ;

extern Lisp_Object const Qexplicit ;

extern Lisp_Object const Qexplicit_name ;

extern Lisp_Object const Qextension_data ;

extern Lisp_Object const Qexternal_border_size ;

extern Lisp_Object const Qexternal_debugging_output ;

extern Lisp_Object const Qextra_bold ;

extern Lisp_Object const Qextra_light ;

extern Lisp_Object const Qface ;

extern Lisp_Object const Qface_alias ;

extern Lisp_Object const Qface_no_inherit ;

extern Lisp_Object const Qface_set_after_frame_default ;

extern Lisp_Object const Qfailed ;

extern Lisp_Object const Qfboundp ;

extern Lisp_Object const Qfield ;

extern Lisp_Object const Qfile_accessible_directory_p ;

extern Lisp_Object const Qfile_acl ;

extern Lisp_Object const Qfile_already_exists ;

extern Lisp_Object const Qfile_attributes ;

extern Lisp_Object const Qfile_attributes_lessp ;

extern Lisp_Object const Qfile_date_error ;

extern Lisp_Object const Qfile_directory_p ;

extern Lisp_Object const Qfile_error ;

extern Lisp_Object const Qfile_executable_p ;

extern Lisp_Object const Qfile_exists_p ;

extern Lisp_Object const Qfile_modes ;

extern Lisp_Object const Qfile_name_all_completions ;

extern Lisp_Object const Qfile_name_as_directory ;

extern Lisp_Object const Qfile_name_completion ;

extern Lisp_Object const Qfile_name_directory ;

extern Lisp_Object const Qfile_name_handler_alist ;

extern Lisp_Object const Qfile_name_history ;

extern Lisp_Object const Qfile_name_nondirectory ;

extern Lisp_Object const Qfile_newer_than_file_p ;

extern Lisp_Object const Qfile_notify ;

extern Lisp_Object const Qfile_notify_error ;

extern Lisp_Object const Qfile_readable_p ;

extern Lisp_Object const Qfile_regular_p ;

extern Lisp_Object const Qfile_selinux_context ;

extern Lisp_Object const Qfile_symlink_p ;

extern Lisp_Object const Qfile_truename ;

extern Lisp_Object const Qfile_writable_p ;

extern Lisp_Object const Qfinalizer ;

extern Lisp_Object const Qfirst_change_hook ;

extern Lisp_Object const Qfloat ;

extern Lisp_Object const Qfloatp ;

extern Lisp_Object const Qfloats ;

extern Lisp_Object const Qfloor ;

extern Lisp_Object const Qfocus_in ;

extern Lisp_Object const Qfocus_out ;

extern Lisp_Object const Qfont ;

extern Lisp_Object const Qfont_backend ;

extern Lisp_Object const Qfont_entity ;

extern Lisp_Object const Qfont_name ;

extern Lisp_Object const Qfont_object ;

extern Lisp_Object const Qfont_param ;

extern Lisp_Object const Qfont_render ;

extern Lisp_Object const Qfont_spec ;

extern Lisp_Object const Qfontification_functions ;

extern Lisp_Object const Qfontified ;

extern Lisp_Object const Qfontset ;

extern Lisp_Object const Qfontset_info ;

extern Lisp_Object const Qforeground_color ;

extern Lisp_Object const Qforeign_selection ;

extern Lisp_Object const Qformat_annotate_function ;

extern Lisp_Object const Qformat_decode ;

extern Lisp_Object const Qfraction ;

extern Lisp_Object const Qframe ;

extern Lisp_Object const Qframe_inhibit_resize ;

extern Lisp_Object const Qframe_live_p ;

extern Lisp_Object const Qframe_set_background_mode ;

extern Lisp_Object const Qframe_windows_min_size ;

extern Lisp_Object const Qframep ;

extern Lisp_Object const Qframes ;

extern Lisp_Object const Qfree_frame_menubar_1 ;

extern Lisp_Object const Qfree_frame_menubar_2 ;

extern Lisp_Object const Qfree_frame_tool_bar ;

extern Lisp_Object const Qfreetype ;

extern Lisp_Object const Qfringe ;

extern Lisp_Object const Qfront_sticky ;

extern Lisp_Object const Qftx ;

extern Lisp_Object const Qfullboth ;

extern Lisp_Object const Qfullheight ;

extern Lisp_Object const Qfullscreen ;

extern Lisp_Object const Qfullwidth ;

extern Lisp_Object const Qfuncall ;

extern Lisp_Object const Qfuncall_interactively ;

extern Lisp_Object const Qfunction ;

extern Lisp_Object const Qfunction_documentation ;

extern Lisp_Object const Qfunction_key ;

extern Lisp_Object const Qfundamental_mode ;

extern Lisp_Object const Qgc_cons_threshold ;

extern Lisp_Object const Qgdk_pixbuf ;

extern Lisp_Object const Qgeometry ;

extern Lisp_Object const Qget_buffer_window_list ;

extern Lisp_Object const Qget_emacs_mule_file_char ;

extern Lisp_Object const Qget_file_buffer ;

extern Lisp_Object const Qget_file_char ;

extern Lisp_Object const Qget_mru_window ;

extern Lisp_Object const Qgif ;

extern Lisp_Object const Qglib ;

extern Lisp_Object const Qglyphless_char ;

extern Lisp_Object const Qglyphless_char_display ;

extern Lisp_Object const Qgnutls_anon ;

extern Lisp_Object const Qgnutls_code ;

extern Lisp_Object const Qgnutls_e_again ;

extern Lisp_Object const Qgnutls_e_interrupted ;

extern Lisp_Object const Qgnutls_e_invalid_session ;

extern Lisp_Object const Qgnutls_e_not_ready_for_handshake ;

extern Lisp_Object const Qgnutls_x509pki ;

extern Lisp_Object const Qgobject ;

extern Lisp_Object const Qgrave ;

extern Lisp_Object const Qgroup ;

extern Lisp_Object const Qgrow_only ;

extern Lisp_Object const Qgui_set_selection ;

extern Lisp_Object const Qhand ;

extern Lisp_Object const Qhandle ;

extern Lisp_Object const Qhandle_select_window ;

extern Lisp_Object const Qhandle_shift_selection ;

extern Lisp_Object const Qhandle_switch_frame ;

extern Lisp_Object const Qhash_table ;

extern Lisp_Object const Qhash_table_p ;

extern Lisp_Object const Qhash_table_test ;

extern Lisp_Object const Qhbar ;

extern Lisp_Object const Qheader_line ;

extern Lisp_Object const Qheap ;

extern Lisp_Object const Qheight ;

extern Lisp_Object const Qhelp_echo ;

extern Lisp_Object const Qhelp_form_show ;

extern Lisp_Object const Qheuristic ;

extern Lisp_Object const Qhex_code ;

extern Lisp_Object const Qhistory_length ;

extern Lisp_Object const Qhollow ;

extern Lisp_Object const Qhollow_small ;

extern Lisp_Object const Qhorizontal_handle ;

extern Lisp_Object const Qhorizontal_scroll_bar ;

extern Lisp_Object const Qhorizontal_scroll_bars ;

extern Lisp_Object const Qhw ;

extern Lisp_Object const Qhyper ;

extern Lisp_Object const Qicon ;

extern Lisp_Object const Qicon_left ;

extern Lisp_Object const Qicon_name ;

extern Lisp_Object const Qicon_top ;

extern Lisp_Object const Qicon_type ;

extern Lisp_Object const Qiconify_frame ;

extern Lisp_Object const Qidentity ;

extern Lisp_Object const Qif ;

extern Lisp_Object const Qignored ;

extern Lisp_Object const Qimage ;

extern Lisp_Object const Qimagemagick ;

extern Lisp_Object const Qinhibit_debugger ;

extern Lisp_Object const Qinhibit_eval_during_redisplay ;

extern Lisp_Object const Qinhibit_file_name_operation ;

extern Lisp_Object const Qinhibit_free_realized_faces ;

extern Lisp_Object const Qinhibit_menubar_update ;

extern Lisp_Object const Qinhibit_modification_hooks ;

extern Lisp_Object const Qinhibit_point_motion_hooks ;

extern Lisp_Object const Qinhibit_quit ;

extern Lisp_Object const Qinhibit_read_only ;

extern Lisp_Object const Qinhibit_redisplay ;

extern Lisp_Object const Qinner_edges ;

extern Lisp_Object const Qinput_method_exit_on_first_char ;

extern Lisp_Object const Qinput_method_use_echo_area ;

extern Lisp_Object const Qinsert_behind_hooks ;

extern Lisp_Object const Qinsert_file_contents ;

extern Lisp_Object const Qinsert_in_front_hooks ;

extern Lisp_Object const Qinsufficient_source ;

extern Lisp_Object const Qintangible ;

extern Lisp_Object const Qinteger ;

extern Lisp_Object const Qinteger_or_marker_p ;

extern Lisp_Object const Qintegerp ;

extern Lisp_Object const Qinteractive ;

extern Lisp_Object const Qinteractive_form ;

extern Lisp_Object const Qinternal__syntax_propertize ;

extern Lisp_Object const Qinternal_border_width ;

extern Lisp_Object const Qinternal_default_process_filter ;

extern Lisp_Object const Qinternal_default_process_sentinel ;

extern Lisp_Object const Qinternal_echo_keystrokes_prefix ;

extern Lisp_Object const Qinternal_interpreter_environment ;

extern Lisp_Object const Qinterrupted ;

extern Lisp_Object const Qintervals ;

extern Lisp_Object const Qinvalid_function ;

extern Lisp_Object const Qinvalid_read_syntax ;

extern Lisp_Object const Qinvalid_regexp ;

extern Lisp_Object const Qinvalid_source ;

extern Lisp_Object const Qinvisible ;

extern Lisp_Object const Qipv4 ;

extern Lisp_Object const Qipv6 ;

extern Lisp_Object const Qisdir ;

extern Lisp_Object const Qiso10646_1 ;

extern Lisp_Object const Qiso8859_1 ;

extern Lisp_Object const Qiso_2022 ;

extern Lisp_Object const Qiso_8859_1 ;

extern Lisp_Object const Qitalic ;

extern Lisp_Object const Qja ;

extern Lisp_Object const Qjpeg ;

extern Lisp_Object const Qkbd_macro_termination_hook ;

extern Lisp_Object const Qkey ;

extern Lisp_Object const Qkey_and_value ;

extern Lisp_Object const Qkey_or_value ;

extern Lisp_Object const Qkeymap ;

extern Lisp_Object const Qkeymap_canonicalize ;

extern Lisp_Object const Qkeymapp ;

extern Lisp_Object const Qkill_buffer_hook ;

extern Lisp_Object const Qkill_buffer_query_functions ;

extern Lisp_Object const Qkill_emacs ;

extern Lisp_Object const Qkill_emacs_hook ;

extern Lisp_Object const Qkill_forward_chars ;

extern Lisp_Object const Qko ;

extern Lisp_Object const Qlambda ;

extern Lisp_Object const Qlandscape ;

extern Lisp_Object const Qlanguage_change ;

extern Lisp_Object const Qlaplace ;

extern Lisp_Object const Qlast_arrow_position ;

extern Lisp_Object const Qlast_arrow_string ;

extern Lisp_Object const Qlast_nonmenu_event ;

extern Lisp_Object const Qlatin ;

extern Lisp_Object const Qlatin_1 ;

extern Lisp_Object const Qleft ;

extern Lisp_Object const Qleft_fringe ;

extern Lisp_Object const Qleft_margin ;

extern Lisp_Object const Qleft_to_right ;

extern Lisp_Object const Qleftmost ;

extern Lisp_Object const Qlet ;

extern Lisp_Object const Qletx ;

extern Lisp_Object const Qlexical_binding ;

extern Lisp_Object const Qlibgif_version ;

extern Lisp_Object const Qlibgnutls_version ;

extern Lisp_Object const Qlibjpeg_version ;

extern Lisp_Object const Qlibpng_version ;

extern Lisp_Object const Qlight ;

extern Lisp_Object const Qline ;

extern Lisp_Object const Qline_height ;

extern Lisp_Object const Qline_prefix ;

extern Lisp_Object const Qline_spacing ;

extern Lisp_Object const Qlist ;

extern Lisp_Object const Qlisten ;

extern Lisp_Object const Qlistp ;

extern Lisp_Object const Qlittle ;

extern Lisp_Object const Qload ;

extern Lisp_Object const Qload_file_name ;

extern Lisp_Object const Qload_force_doc_strings ;

extern Lisp_Object const Qload_in_progress ;

extern Lisp_Object const Qlocal ;

extern Lisp_Object const Qlocal_map ;

extern Lisp_Object const Qm ;

extern Lisp_Object const Qmac ;

extern Lisp_Object const Qmacro ;

extern Lisp_Object const Qmajflt ;

extern Lisp_Object const Qmake_directory ;

extern Lisp_Object const Qmake_directory_internal ;

extern Lisp_Object const Qmake_frame_visible ;

extern Lisp_Object const Qmake_symbolic_link ;

extern Lisp_Object const Qmany ;

extern Lisp_Object const Qmargin ;

extern Lisp_Object const Qmark_inactive ;

extern Lisp_Object const Qmarker ;

extern Lisp_Object const Qmarkerp ;

extern Lisp_Object const Qmask_add ;

extern Lisp_Object const Qmaximized ;

extern Lisp_Object const Qmd5 ;

extern Lisp_Object const Qmenu ;

extern Lisp_Object const Qmenu_bar ;

extern Lisp_Object const Qmenu_bar_external ;

extern Lisp_Object const Qmenu_bar_lines ;

extern Lisp_Object const Qmenu_bar_size ;

extern Lisp_Object const Qmenu_bar_update_hook ;

extern Lisp_Object const Qmenu_enable ;

extern Lisp_Object const Qmenu_item ;

extern Lisp_Object const Qmeta ;

extern Lisp_Object const Qmetadata ;

extern Lisp_Object const Qminflt ;

extern Lisp_Object const Qminibuffer ;

extern Lisp_Object const Qminibuffer_completion_table ;

extern Lisp_Object const Qminibuffer_default ;

extern Lisp_Object const Qminibuffer_exit_hook ;

extern Lisp_Object const Qminibuffer_history ;

extern Lisp_Object const Qminibuffer_prompt ;

extern Lisp_Object const Qminibuffer_setup_hook ;

extern Lisp_Object const Qminus ;

extern Lisp_Object const Qmiscs ;

extern Lisp_Object const Qmm_size ;

extern Lisp_Object const Qmode_class ;

extern Lisp_Object const Qmode_line ;

extern Lisp_Object const Qmode_line_default_help_echo ;

extern Lisp_Object const Qmode_line_inactive ;

extern Lisp_Object const Qmodeline ;

extern Lisp_Object const Qmodification_hooks ;

extern Lisp_Object const Qmodifier_cache ;

extern Lisp_Object const Qmodifier_value ;

extern Lisp_Object const Qmodify ;

extern Lisp_Object const Qmono ;

extern Lisp_Object const Qmonospace ;

extern Lisp_Object const Qmonospace_font_name ;

extern Lisp_Object const Qmonths ;

extern Lisp_Object const Qmouse ;

extern Lisp_Object const Qmouse_click ;

extern Lisp_Object const Qmouse_color ;

extern Lisp_Object const Qmouse_face ;

extern Lisp_Object const Qmouse_fixup_help_message ;

extern Lisp_Object const Qmouse_leave_buffer_hook ;

extern Lisp_Object const Qmouse_movement ;

extern Lisp_Object const Qmove ;

extern Lisp_Object const Qmove_file_to_trash ;

extern Lisp_Object const Qmove_self ;

extern Lisp_Object const Qmoved_from ;

extern Lisp_Object const Qmoved_to ;

extern Lisp_Object const Qname ;

extern Lisp_Object const Qnative_edges ;

extern Lisp_Object const Qnatnump ;

extern Lisp_Object const Qnetwork ;

extern Lisp_Object const Qnice ;

extern Lisp_Object const Qno_catch ;

extern Lisp_Object const Qno_conversion ;

extern Lisp_Object const Qnobreak_space ;

extern Lisp_Object const Qnoelisp ;

extern Lisp_Object const Qnon_ascii ;

extern Lisp_Object const Qnone ;

extern Lisp_Object const Qnormal ;

extern Lisp_Object const Qns ;

extern Lisp_Object const Qns_parse_geometry ;

extern Lisp_Object const Qnumber_or_marker_p ;

extern Lisp_Object const Qnumberp ;

extern Lisp_Object const Qobject ;

extern Lisp_Object const Qoblique ;

extern Lisp_Object const Qodd ;

extern Lisp_Object const Qold_style_backquotes ;

extern Lisp_Object const Qoneshot ;

extern Lisp_Object const Qonly ;

extern Lisp_Object const Qonlydir ;

extern Lisp_Object const Qopen ;

extern Lisp_Object const Qopen_network_stream ;

extern Lisp_Object const Qopentype ;

extern Lisp_Object const Qoperations ;

extern Lisp_Object const Qorientation ;

extern Lisp_Object const Qouter_edges ;

extern Lisp_Object const Qouter_position ;

extern Lisp_Object const Qouter_size ;

extern Lisp_Object const Qouter_window_id ;

extern Lisp_Object const Qoverflow_error ;

extern Lisp_Object const Qoverlay ;

extern Lisp_Object const Qoverlay_arrow ;

extern Lisp_Object const Qoverlay_arrow_bitmap ;

extern Lisp_Object const Qoverlay_arrow_string ;

extern Lisp_Object const Qoverlayp ;

extern Lisp_Object const Qoverriding_local_map ;

extern Lisp_Object const Qoverriding_terminal_local_map ;

extern Lisp_Object const Qoverwrite_mode ;

extern Lisp_Object const Qoverwrite_mode_binary ;

extern Lisp_Object const Qp ;

extern Lisp_Object const Qpaper ;

extern Lisp_Object const Qparagraph_separate ;

extern Lisp_Object const Qparagraph_start ;

extern Lisp_Object const Qparent_id ;

extern Lisp_Object const Qpbm ;

extern Lisp_Object const Qpc ;

extern Lisp_Object const Qpcpu ;

extern Lisp_Object const Qpdf ;

extern Lisp_Object const Qpermanent_local ;

extern Lisp_Object const Qpermanent_local_hook ;

extern Lisp_Object const Qpgrp ;

extern Lisp_Object const Qpipe ;

extern Lisp_Object const Qplay_sound_functions ;

extern Lisp_Object const Qplus ;

extern Lisp_Object const Qpmem ;

extern Lisp_Object const Qpng ;

extern Lisp_Object const Qpoint_entered ;

extern Lisp_Object const Qpoint_left ;

extern Lisp_Object const Qpointer ;

extern Lisp_Object const Qpolling_period ;

extern Lisp_Object const Qpoly ;

extern Lisp_Object const Qportrait ;

extern Lisp_Object const Qposition ;

extern Lisp_Object const Qpost_command_hook ;

extern Lisp_Object const Qpost_gc_hook ;

extern Lisp_Object const Qpost_self_insert_hook ;

extern Lisp_Object const Qpostscript ;

extern Lisp_Object const Qppid ;

extern Lisp_Object const Qpre_command_hook ;

extern Lisp_Object const Qpressed_button ;

extern Lisp_Object const Qpri ;

extern Lisp_Object const Qprint_escape_multibyte ;

extern Lisp_Object const Qprint_escape_newlines ;

extern Lisp_Object const Qprint_escape_nonascii ;

extern Lisp_Object const Qpriority ;

extern Lisp_Object const Qprocess ;

extern Lisp_Object const Qprocessp ;

extern Lisp_Object const Qprofiler_backtrace_equal ;

extern Lisp_Object const Qprogn ;

extern Lisp_Object const Qprotected_field ;

extern Lisp_Object const Qprovide ;

extern Lisp_Object const Qpty ;

extern Lisp_Object const Qq_overflow ;

extern Lisp_Object const Qquit ;

extern Lisp_Object const Qquote ;

extern Lisp_Object const Qraise ;

extern Lisp_Object const Qrange ;

extern Lisp_Object const Qrange_error ;

extern Lisp_Object const Qratio ;

extern Lisp_Object const Qraw_text ;

extern Lisp_Object const Qread ;

extern Lisp_Object const Qread_char ;

extern Lisp_Object const Qread_number ;

extern Lisp_Object const Qread_only ;

extern Lisp_Object const Qreal ;

extern Lisp_Object const Qrear_nonsticky ;

extern Lisp_Object const Qrecompute_lucid_menubar ;

extern Lisp_Object const Qrecord_window_buffer ;

extern Lisp_Object const Qrect ;

extern Lisp_Object const Qredisplay_dont_pause ;

extern Lisp_Object const Qredisplay_end_trigger_functions ;

extern Lisp_Object const Qredisplay_internal ;

extern Lisp_Object const Qregion_extract_function ;

extern Lisp_Object const Qrehash_size ;

extern Lisp_Object const Qrehash_threshold ;

extern Lisp_Object const Qreleased_button ;

extern Lisp_Object const Qremap ;

extern Lisp_Object const Qrename_file ;

extern Lisp_Object const Qreplace_buffer_in_windows ;

extern Lisp_Object const Qrequire ;

extern Lisp_Object const Qreverse_landscape ;

extern Lisp_Object const Qreverse_portrait ;

extern Lisp_Object const Qright ;

extern Lisp_Object const Qright_divider ;

extern Lisp_Object const Qright_divider_width ;

extern Lisp_Object const Qright_fringe ;

extern Lisp_Object const Qright_margin ;

extern Lisp_Object const Qright_to_left ;

extern Lisp_Object const Qrightmost ;

extern Lisp_Object const Qrisky_local_variable ;

extern Lisp_Object const Qrss ;

extern Lisp_Object const Qrun ;

extern Lisp_Object const Qrun_hook_with_args ;

extern Lisp_Object const Qsafe ;

extern Lisp_Object const Qsans ;

extern Lisp_Object const Qsans__serif ;

extern Lisp_Object const Qsans_serif ;

extern Lisp_Object const Qsave_excursion ;

extern Lisp_Object const Qsave_session ;

extern Lisp_Object const Qscan_error ;

extern Lisp_Object const Qscreen_gamma ;

extern Lisp_Object const Qscroll_bar ;

extern Lisp_Object const Qscroll_bar_background ;

extern Lisp_Object const Qscroll_bar_foreground ;

extern Lisp_Object const Qscroll_bar_height ;

extern Lisp_Object const Qscroll_bar_movement ;

extern Lisp_Object const Qscroll_bar_width ;

extern Lisp_Object const Qscroll_command ;

extern Lisp_Object const Qscroll_down ;

extern Lisp_Object const Qscroll_up ;

extern Lisp_Object const Qsearch_failed ;

extern Lisp_Object const Qselect_window ;

extern Lisp_Object const Qsemi_bold ;

extern Lisp_Object const Qsemi_light ;

extern Lisp_Object const Qseqpacket ;

extern Lisp_Object const Qsequencep ;

extern Lisp_Object const Qserial ;

extern Lisp_Object const Qsess ;

extern Lisp_Object const Qset_file_acl ;

extern Lisp_Object const Qset_file_modes ;

extern Lisp_Object const Qset_file_selinux_context ;

extern Lisp_Object const Qset_file_times ;

extern Lisp_Object const Qset_frame_size ;

extern Lisp_Object const Qset_visited_file_modtime ;

extern Lisp_Object const Qset_window_configuration ;

extern Lisp_Object const Qsetq ;

extern Lisp_Object const Qsetting_constant ;

extern Lisp_Object const Qsha1 ;

extern Lisp_Object const Qsha224 ;

extern Lisp_Object const Qsha256 ;

extern Lisp_Object const Qsha384 ;

extern Lisp_Object const Qsha512 ;

extern Lisp_Object const Qshift_jis ;

extern Lisp_Object const Qsignal ;

extern Lisp_Object const Qsingularity_error ;

extern Lisp_Object const Qsize ;

extern Lisp_Object const Qslice ;

extern Lisp_Object const Qsound ;

extern Lisp_Object const Qsource ;

extern Lisp_Object const Qspace ;

extern Lisp_Object const Qspace_width ;

extern Lisp_Object const Qstandard_input ;

extern Lisp_Object const Qstandard_output ;

extern Lisp_Object const Qstart ;

extern Lisp_Object const Qstart_process ;

extern Lisp_Object const Qstate ;

extern Lisp_Object const Qstderr ;

extern Lisp_Object const Qstdin ;

extern Lisp_Object const Qstdout ;

extern Lisp_Object const Qsticky ;

extern Lisp_Object const Qstime ;

extern Lisp_Object const Qstop ;

extern Lisp_Object const Qstraight ;

extern Lisp_Object const Qstring ;

extern Lisp_Object const Qstring_bytes ;

extern Lisp_Object const Qstring_lessp ;

extern Lisp_Object const Qstringp ;

extern Lisp_Object const Qstrings ;

extern Lisp_Object const Qsubfeatures ;

extern Lisp_Object const Qsubr ;

extern Lisp_Object const Qsubrp ;

extern Lisp_Object const Qsubstitute_env_in_file_name ;

extern Lisp_Object const Qsubstitute_in_file_name ;

extern Lisp_Object const Qsuper ;

extern Lisp_Object const Qsvg ;

extern Lisp_Object const Qsw ;

extern Lisp_Object const Qswitch_frame ;

extern Lisp_Object const Qsymbol ;

extern Lisp_Object const Qsymbolp ;

extern Lisp_Object const Qsymbols ;

extern Lisp_Object const Qsyntax_table ;

extern Lisp_Object const Qsyntax_table_p ;

extern Lisp_Object const Qt ;

extern Lisp_Object const Qtarget_idx ;

extern Lisp_Object const Qtb_size_cb ;

extern Lisp_Object const Qtemp_buffer_setup_hook ;

extern Lisp_Object const Qtemp_buffer_show_hook ;

extern Lisp_Object const Qterminal ;

extern Lisp_Object const Qterminal_frame ;

extern Lisp_Object const Qterminal_live_p ;

extern Lisp_Object const Qtest ;

extern Lisp_Object const Qtext ;

extern Lisp_Object const Qtext_image_horiz ;

extern Lisp_Object const Qtext_pixels ;

extern Lisp_Object const Qtext_read_only ;

extern Lisp_Object const Qthcount ;

extern Lisp_Object const Qthin_space ;

extern Lisp_Object const Qtiff ;

extern Lisp_Object const Qtime ;

extern Lisp_Object const Qtimer_event_handler ;

extern Lisp_Object const Qtitle ;

extern Lisp_Object const Qtitle_bar_size ;

extern Lisp_Object const Qtool_bar ;

extern Lisp_Object const Qtool_bar_external ;

extern Lisp_Object const Qtool_bar_lines ;

extern Lisp_Object const Qtool_bar_position ;

extern Lisp_Object const Qtool_bar_size ;

extern Lisp_Object const Qtool_bar_style ;

extern Lisp_Object const Qtooltip ;

extern Lisp_Object const Qtop ;

extern Lisp_Object const Qtop_bottom ;

extern Lisp_Object const Qtop_level ;

extern Lisp_Object const Qtop_margin ;

extern Lisp_Object const Qtpgid ;

extern Lisp_Object const Qtrailing_whitespace ;

extern Lisp_Object const Qtranslation_table ;

extern Lisp_Object const Qtranslation_table_id ;

extern Lisp_Object const Qtruncation ;

extern Lisp_Object const Qttname ;

extern Lisp_Object const Qtty ;

extern Lisp_Object const Qtty_color_alist ;

extern Lisp_Object const Qtty_color_by_index ;

extern Lisp_Object const Qtty_color_desc ;

extern Lisp_Object const Qtty_color_mode ;

extern Lisp_Object const Qtty_color_standard_values ;

extern Lisp_Object const Qtty_menu_exit ;

extern Lisp_Object const Qtty_menu_ignore ;

extern Lisp_Object const Qtty_menu_mouse_movement ;

extern Lisp_Object const Qtty_menu_navigation_map ;

extern Lisp_Object const Qtty_menu_next_item ;

extern Lisp_Object const Qtty_menu_next_menu ;

extern Lisp_Object const Qtty_menu_prev_item ;

extern Lisp_Object const Qtty_menu_prev_menu ;

extern Lisp_Object const Qtty_menu_select ;

extern Lisp_Object const Qtty_mode_reset_strings ;

extern Lisp_Object const Qtty_mode_set_strings ;

extern Lisp_Object const Qtty_type ;

extern Lisp_Object const Qultra_bold ;

extern Lisp_Object const Qunbound ;

extern Lisp_Object const Qundecided ;

extern Lisp_Object const Qundefined ;

extern Lisp_Object const Qundefined_color ;

extern Lisp_Object const Qunderflow_error ;

extern Lisp_Object const Qundo_auto__add_boundary ;

extern Lisp_Object const Qundo_auto__last_boundary_cause ;

extern Lisp_Object const Qundo_auto__this_command_amalgamating ;

extern Lisp_Object const Qundo_auto__undoable_change ;

extern Lisp_Object const Qundo_auto__undoable_change_no_timer ;

extern Lisp_Object const Qundo_auto__undoably_changed_buffers ;

extern Lisp_Object const Qundo_auto_amalgamate ;

extern Lisp_Object const Qunevalled ;

extern Lisp_Object const Qunhandled_file_name_directory ;

extern Lisp_Object const Qunicode ;

extern Lisp_Object const Qunicode_bmp ;

extern Lisp_Object const Qunix ;

extern Lisp_Object const Qunmount ;

extern Lisp_Object const Qunspecified ;

extern Lisp_Object const Qunsplittable ;

extern Lisp_Object const Qup ;

extern Lisp_Object const Qupdate_frame_menubar ;

extern Lisp_Object const Qupdate_frame_tool_bar ;

extern Lisp_Object const Quser ;

extern Lisp_Object const Quser_error ;

extern Lisp_Object const Quser_position ;

extern Lisp_Object const Quser_ptr ;

extern Lisp_Object const Quser_ptrp ;

extern Lisp_Object const Quser_size ;

extern Lisp_Object const Qutf_16 ;

extern Lisp_Object const Qutf_16le ;

extern Lisp_Object const Qutf_8 ;

extern Lisp_Object const Qutf_8_emacs ;

extern Lisp_Object const Qutime ;

extern Lisp_Object const Qvalue ;

extern Lisp_Object const Qvariable_documentation ;

extern Lisp_Object const Qvector ;

extern Lisp_Object const Qvector_or_char_table_p ;

extern Lisp_Object const Qvector_slots ;

extern Lisp_Object const Qvectorp ;

extern Lisp_Object const Qvectors ;

extern Lisp_Object const Qvendor_specific_keysyms ;

extern Lisp_Object const Qverify_visited_file_modtime ;

extern Lisp_Object const Qvertical_border ;

extern Lisp_Object const Qvertical_line ;

extern Lisp_Object const Qvertical_scroll_bar ;

extern Lisp_Object const Qvertical_scroll_bars ;

extern Lisp_Object const Qvisibility ;

extern Lisp_Object const Qvisible ;

extern Lisp_Object const Qvoid_function ;

extern Lisp_Object const Qvoid_variable ;

extern Lisp_Object const Qvsize ;

extern Lisp_Object const Qw32 ;

extern Lisp_Object const Qwait_for_wm ;

extern Lisp_Object const Qwall ;

extern Lisp_Object const Qwave ;

extern Lisp_Object const Qweakness ;

extern Lisp_Object const Qwhen ;

extern Lisp_Object const Qwholenump ;

extern Lisp_Object const Qwidget_type ;

extern Lisp_Object const Qwidth ;

extern Lisp_Object const Qwindow ;

extern Lisp_Object const Qwindow_configuration ;

extern Lisp_Object const Qwindow_configuration_change_hook ;

extern Lisp_Object const Qwindow_configuration_p ;

extern Lisp_Object const Qwindow_deletable_p ;

extern Lisp_Object const Qwindow_divider ;

extern Lisp_Object const Qwindow_divider_first_pixel ;

extern Lisp_Object const Qwindow_divider_last_pixel ;

extern Lisp_Object const Qwindow_id ;

extern Lisp_Object const Qwindow_live_p ;

extern Lisp_Object const Qwindow_pixel_to_total ;

extern Lisp_Object const Qwindow_point_insertion_type ;

extern Lisp_Object const Qwindow_resize_root_window ;

extern Lisp_Object const Qwindow_resize_root_window_vertically ;

extern Lisp_Object const Qwindow_sanitize_window_sizes ;

extern Lisp_Object const Qwindow_scroll_functions ;

extern Lisp_Object const Qwindow_size ;

extern Lisp_Object const Qwindow_text_change_functions ;

extern Lisp_Object const Qwindow_valid_p ;

extern Lisp_Object const Qwindowp ;

extern Lisp_Object const Qworkarea ;

extern Lisp_Object const Qwrap_prefix ;

extern Lisp_Object const Qwrite_region ;

extern Lisp_Object const Qwrite_region_annotate_functions ;

extern Lisp_Object const Qwrong_length_argument ;

extern Lisp_Object const Qwrong_number_of_arguments ;

extern Lisp_Object const Qwrong_type_argument ;

extern Lisp_Object const Qx ;

extern Lisp_Object const Qx_check_fullscreen ;

extern Lisp_Object const Qx_create_frame_1 ;

extern Lisp_Object const Qx_create_frame_2 ;

extern Lisp_Object const Qx_frame_parameter ;

extern Lisp_Object const Qx_gtk_map_stock ;

extern Lisp_Object const Qx_handle_net_wm_state ;

extern Lisp_Object const Qx_lost_selection_functions ;

extern Lisp_Object const Qx_net_wm_state ;

extern Lisp_Object const Qx_resource_name ;

extern Lisp_Object const Qx_sent_selection_functions ;

extern Lisp_Object const Qx_set_frame_parameters ;

extern Lisp_Object const Qx_set_fullscreen ;

extern Lisp_Object const Qx_set_menu_bar_lines ;

extern Lisp_Object const Qx_set_window_size_1 ;

extern Lisp_Object const Qx_set_window_size_2 ;

extern Lisp_Object const Qx_set_window_size_3 ;

extern Lisp_Object const Qxbm ;

extern Lisp_Object const Qxft ;

extern Lisp_Object const Qxg_change_toolbar_position ;

extern Lisp_Object const Qxg_frame_resized ;

extern Lisp_Object const Qxg_frame_set_char_size ;

extern Lisp_Object const Qxg_frame_set_char_size_1 ;

extern Lisp_Object const Qxg_frame_set_char_size_2 ;

extern Lisp_Object const Qxg_frame_set_char_size_3 ;

extern Lisp_Object const Qxpm ;

extern Lisp_Object const Qxwidget_event ;

extern Lisp_Object const Qyes_or_no_p_history ;

extern Lisp_Object const Qzero_width ;
_Noreturn extern Lisp_Object Fabort_recursive_edit (void);
extern Lisp_Object Fabs (Lisp_Object);
extern Lisp_Object Faccept_process_output (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Faccess_file (Lisp_Object, Lisp_Object);
extern Lisp_Object Faccessible_keymaps (Lisp_Object, Lisp_Object);
extern Lisp_Object Facos (Lisp_Object);
extern Lisp_Object Factive_minibuffer_window (void);
extern Lisp_Object Fadd1 (Lisp_Object);
extern Lisp_Object Fadd_face_text_property (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fadd_name_to_file (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fadd_text_properties (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fall_completions (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fand (Lisp_Object);
extern Lisp_Object Fappend (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fapply (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fapropos_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Faref (Lisp_Object, Lisp_Object);
extern Lisp_Object Farrayp (Lisp_Object);
extern Lisp_Object Faset (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fash (Lisp_Object, Lisp_Object);
extern Lisp_Object Fasin (Lisp_Object);
extern Lisp_Object Fassoc (Lisp_Object, Lisp_Object);
extern Lisp_Object Fassoc_string (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fassq (Lisp_Object, Lisp_Object);
extern Lisp_Object Fatan (Lisp_Object, Lisp_Object);
extern Lisp_Object Fatom (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fautoload (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fautoload_do_load (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbacktrace (void);
extern Lisp_Object Fbacktrace__locals (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbacktrace_debug (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbacktrace_eval (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbacktrace_frame (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbackward_char (Lisp_Object);
extern Lisp_Object Fbackward_prefix_chars (void);
extern Lisp_Object Fbarf_if_buffer_read_only (Lisp_Object);
extern Lisp_Object Fbase64_decode_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbase64_decode_string (Lisp_Object);
extern Lisp_Object Fbase64_encode_region (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbase64_encode_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbeginning_of_line (Lisp_Object);
extern Lisp_Object Fbidi_find_overridden_directionality (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbidi_resolved_levels (Lisp_Object);
extern Lisp_Object Fbitmap_spec_p (Lisp_Object);
extern Lisp_Object Fbobp (void);
extern Lisp_Object Fbolp (void);
extern Lisp_Object Fbool_vector (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fbool_vector_count_consecutive (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbool_vector_count_population (Lisp_Object);
extern Lisp_Object Fbool_vector_exclusive_or (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbool_vector_intersection (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbool_vector_not (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbool_vector_p (Lisp_Object);
extern Lisp_Object Fbool_vector_set_difference (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbool_vector_subsetp (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbool_vector_union (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fborder_width (Lisp_Object);
extern Lisp_Object Fbottom_divider_width (Lisp_Object);
extern Lisp_Object Fboundp (Lisp_Object);
extern Lisp_Object Fbuffer_base_buffer (Lisp_Object);
extern Lisp_Object Fbuffer_chars_modified_tick (Lisp_Object);
extern Lisp_Object Fbuffer_enable_undo (Lisp_Object);
extern Lisp_Object Fbuffer_file_name (Lisp_Object);
extern Lisp_Object Fbuffer_has_markers_at (Lisp_Object);
extern Lisp_Object Fbuffer_list (Lisp_Object);
extern Lisp_Object Fbuffer_live_p (Lisp_Object);
extern Lisp_Object Fbuffer_local_value (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbuffer_local_variables (Lisp_Object);
extern Lisp_Object Fbuffer_modified_p (Lisp_Object);
extern Lisp_Object Fbuffer_modified_tick (Lisp_Object);
extern Lisp_Object Fbuffer_name (Lisp_Object);
extern Lisp_Object Fbuffer_size (Lisp_Object);
extern Lisp_Object Fbuffer_string (void);
extern Lisp_Object Fbuffer_substring (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbuffer_substring_no_properties (Lisp_Object, Lisp_Object);
extern Lisp_Object Fbuffer_swap_text (Lisp_Object);
extern Lisp_Object Fbufferp (Lisp_Object);
extern Lisp_Object Fbury_buffer_internal (Lisp_Object);
extern Lisp_Object Fbyte_code (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fbyte_code_function_p (Lisp_Object);
extern Lisp_Object Fbyte_to_position (Lisp_Object);
extern Lisp_Object Fbyte_to_string (Lisp_Object);
extern Lisp_Object Fbyteorder (void) __attribute__ ((__const__));
extern Lisp_Object Fcall_interactively (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcall_last_kbd_macro (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcall_process (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fcall_process_region (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fcancel_kbd_macro_events (void);
extern Lisp_Object Fcapitalize (Lisp_Object);
extern Lisp_Object Fcapitalize_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcapitalize_word (Lisp_Object);
extern Lisp_Object Fcar (Lisp_Object);
extern Lisp_Object Fcar_less_than_car (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcar_safe (Lisp_Object);
extern Lisp_Object Fcase_table_p (Lisp_Object);
extern Lisp_Object Fcatch (Lisp_Object);
extern Lisp_Object Fcategory_docstring (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcategory_set_mnemonics (Lisp_Object);
extern Lisp_Object Fcategory_table (void);
extern Lisp_Object Fcategory_table_p (Lisp_Object);
extern Lisp_Object Fccl_execute (Lisp_Object, Lisp_Object);
extern Lisp_Object Fccl_execute_on_string (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fccl_program_p (Lisp_Object);
extern Lisp_Object Fcdr (Lisp_Object);
extern Lisp_Object Fcdr_safe (Lisp_Object);
extern Lisp_Object Fceiling (Lisp_Object, Lisp_Object);
extern Lisp_Object Fchar_after (Lisp_Object);
extern Lisp_Object Fchar_before (Lisp_Object);
extern Lisp_Object Fchar_category_set (Lisp_Object);
extern Lisp_Object Fchar_charset (Lisp_Object, Lisp_Object);
extern Lisp_Object Fchar_equal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fchar_or_string_p (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fchar_resolve_modifiers (Lisp_Object);
extern Lisp_Object Fchar_syntax (Lisp_Object);
extern Lisp_Object Fchar_table_extra_slot (Lisp_Object, Lisp_Object);
extern Lisp_Object Fchar_table_p (Lisp_Object);
extern Lisp_Object Fchar_table_parent (Lisp_Object);
extern Lisp_Object Fchar_table_range (Lisp_Object, Lisp_Object);
extern Lisp_Object Fchar_table_subtype (Lisp_Object);
extern Lisp_Object Fchar_to_string (Lisp_Object);
extern Lisp_Object Fchar_width (Lisp_Object);
extern Lisp_Object Fcharacterp (Lisp_Object, Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fcharset_after (Lisp_Object);
extern Lisp_Object Fcharset_id_internal (Lisp_Object);
extern Lisp_Object Fcharset_plist (Lisp_Object);
extern Lisp_Object Fcharset_priority_list (Lisp_Object);
extern Lisp_Object Fcharsetp (Lisp_Object);
extern Lisp_Object Fcheck_coding_system (Lisp_Object);
extern Lisp_Object Fcheck_coding_systems_region (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fclear_buffer_auto_save_failure (void);
extern Lisp_Object Fclear_charset_maps (void);
extern Lisp_Object Fclear_face_cache (Lisp_Object);
extern Lisp_Object Fclear_font_cache (void);
extern Lisp_Object Fclear_image_cache (Lisp_Object);
extern Lisp_Object Fclear_string (Lisp_Object);
extern Lisp_Object Fclear_this_command_keys (Lisp_Object);
extern Lisp_Object Fclose_font (Lisp_Object, Lisp_Object);
extern Lisp_Object Fclrhash (Lisp_Object);
extern Lisp_Object Fcoding_system_aliases (Lisp_Object);
extern Lisp_Object Fcoding_system_base (Lisp_Object);
extern Lisp_Object Fcoding_system_eol_type (Lisp_Object);
extern Lisp_Object Fcoding_system_p (Lisp_Object);
extern Lisp_Object Fcoding_system_plist (Lisp_Object);
extern Lisp_Object Fcoding_system_priority_list (Lisp_Object);
extern Lisp_Object Fcoding_system_put (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcolor_distance (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcolor_gray_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcolor_supported_p (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcombine_after_change_execute (void);
extern Lisp_Object Fcommand_error_default_function (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcommand_remapping (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcommandp (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompare_buffer_substrings (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompare_strings (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompare_window_configurations (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompleting_read (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompose_region_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompose_string_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcomposition_get_gstring (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcompute_motion (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fconcat (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fcond (Lisp_Object);
extern Lisp_Object Fcondition_case (Lisp_Object);
extern Lisp_Object Fcons (Lisp_Object, Lisp_Object);
extern Lisp_Object Fconsp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fconstrain_to_field (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcontinue_process (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcontrolling_tty_p (Lisp_Object);
extern Lisp_Object Fcoordinates_in_window_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcopy_alist (Lisp_Object);
extern Lisp_Object Fcopy_category_table (Lisp_Object);
extern Lisp_Object Fcopy_file (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fcopy_hash_table (Lisp_Object);
extern Lisp_Object Fcopy_keymap (Lisp_Object);
extern Lisp_Object Fcopy_marker (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcopy_sequence (Lisp_Object);
extern Lisp_Object Fcopy_syntax_table (Lisp_Object);
extern Lisp_Object Fcopysign (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcos (Lisp_Object);
extern Lisp_Object Fcurrent_active_maps (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcurrent_bidi_paragraph_direction (Lisp_Object);
extern Lisp_Object Fcurrent_buffer (void);
extern Lisp_Object Fcurrent_case_table (void);
extern Lisp_Object Fcurrent_column (void);
extern Lisp_Object Fcurrent_global_map (void);
extern Lisp_Object Fcurrent_idle_time (void);
extern Lisp_Object Fcurrent_indentation (void);
extern Lisp_Object Fcurrent_input_mode (void);
extern Lisp_Object Fcurrent_local_map (void);
extern Lisp_Object Fcurrent_message (void);
extern Lisp_Object Fcurrent_minor_mode_maps (void);
extern Lisp_Object Fcurrent_time (void);
extern Lisp_Object Fcurrent_time_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcurrent_time_zone (Lisp_Object, Lisp_Object);
extern Lisp_Object Fcurrent_window_configuration (Lisp_Object);
extern Lisp_Object Fdaemon_initialized (void);
extern Lisp_Object Fdaemonp (void);
extern Lisp_Object Fdebug_timer_check (void);
extern Lisp_Object Fdeclare_equiv_charset (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdecode_big5_char (Lisp_Object);
extern Lisp_Object Fdecode_char (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdecode_coding_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdecode_coding_string (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdecode_sjis_char (Lisp_Object);
extern Lisp_Object Fdecode_time (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefalias (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefault_boundp (Lisp_Object);
extern Lisp_Object Fdefault_file_modes (void);
extern Lisp_Object Fdefault_toplevel_value (Lisp_Object);
extern Lisp_Object Fdefault_value (Lisp_Object);
extern Lisp_Object Fdefconst (Lisp_Object);
extern Lisp_Object Fdefine_category (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefine_charset_alias (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefine_charset_internal (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fdefine_coding_system_alias (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefine_coding_system_internal (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fdefine_fringe_bitmap (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefine_hash_table_test (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefine_key (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefine_prefix_command (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdefvar (Lisp_Object);
extern Lisp_Object Fdefvaralias (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_all_overlays (Lisp_Object);
extern Lisp_Object Fdelete_and_extract_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_char (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_directory_internal (Lisp_Object);
extern Lisp_Object Fdelete_field (Lisp_Object);
extern Lisp_Object Fdelete_file (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_frame (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_other_windows_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_overlay (Lisp_Object);
extern Lisp_Object Fdelete_process (Lisp_Object);
extern Lisp_Object Fdelete_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_terminal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdelete_window_internal (Lisp_Object);
extern Lisp_Object Fdelq (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdescribe_buffer_bindings (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdescribe_vector (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdestroy_fringe_bitmap (Lisp_Object);
extern Lisp_Object Fdetect_coding_region (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdetect_coding_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fding (Lisp_Object);
extern Lisp_Object Fdirectory_file_name (Lisp_Object);
extern Lisp_Object Fdirectory_files (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdirectory_files_and_attributes (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdiscard_input (void);
extern Lisp_Object Fdisplay_supports_face_attributes_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdo_auto_save (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdocumentation (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdocumentation_property (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdowncase (Lisp_Object);
extern Lisp_Object Fdowncase_region (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fdowncase_word (Lisp_Object);
extern Lisp_Object Fdraw_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdump_colors (void);
extern Lisp_Object Fdump_emacs (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdump_face (Lisp_Object);
extern Lisp_Object Fdump_frame_glyph_matrix (void);
extern Lisp_Object Fdump_glyph_matrix (Lisp_Object);
extern Lisp_Object Fdump_glyph_row (Lisp_Object, Lisp_Object);
extern Lisp_Object Fdump_redisplay_history (void);
extern Lisp_Object Fdump_tool_bar_row (Lisp_Object, Lisp_Object);
extern Lisp_Object Felt (Lisp_Object, Lisp_Object);
extern Lisp_Object Femacs_pid (void);
extern Lisp_Object Fencode_big5_char (Lisp_Object);
extern Lisp_Object Fencode_char (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fencode_coding_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fencode_coding_string (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fencode_sjis_char (Lisp_Object);
extern Lisp_Object Fencode_time (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fend_kbd_macro (Lisp_Object, Lisp_Object);
extern Lisp_Object Fend_of_line (Lisp_Object);
extern Lisp_Object Feobp (void);
extern Lisp_Object Feolp (void);
extern Lisp_Object Feq (Lisp_Object, Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Feql (Lisp_Object, Lisp_Object);
extern Lisp_Object Feqlsign (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fequal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fequal_including_properties (Lisp_Object, Lisp_Object);
extern Lisp_Object Ferase_buffer (void);
extern Lisp_Object Ferror_message_string (Lisp_Object);
extern Lisp_Object Feval (Lisp_Object, Lisp_Object);
extern Lisp_Object Feval_buffer (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Feval_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fevent_convert_list (Lisp_Object);
extern Lisp_Object Fevent_symbol_parse_modifiers (Lisp_Object);
extern Lisp_Object Fexecute_kbd_macro (Lisp_Object, Lisp_Object, Lisp_Object);
_Noreturn extern Lisp_Object Fexit_recursive_edit (void);
extern Lisp_Object Fexp (Lisp_Object);
extern Lisp_Object Fexpand_file_name (Lisp_Object, Lisp_Object);
extern Lisp_Object Fexpt (Lisp_Object, Lisp_Object);
extern Lisp_Object Fexternal_debugging_output (Lisp_Object);
extern Lisp_Object Fface_attribute_relative_p (Lisp_Object, Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fface_attributes_as_vector (Lisp_Object);
extern Lisp_Object Fface_font (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffboundp (Lisp_Object);
extern Lisp_Object Ffceiling (Lisp_Object);
extern Lisp_Object Ffeaturep (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffetch_bytecode (Lisp_Object);
extern Lisp_Object Fffloor (Lisp_Object);
extern Lisp_Object Ffield_beginning (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffield_end (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffield_string (Lisp_Object);
extern Lisp_Object Ffield_string_no_properties (Lisp_Object);
extern Lisp_Object Ffile_accessible_directory_p (Lisp_Object);
extern Lisp_Object Ffile_acl (Lisp_Object);
extern Lisp_Object Ffile_attributes (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffile_attributes_lessp (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffile_directory_p (Lisp_Object);
extern Lisp_Object Ffile_executable_p (Lisp_Object);
extern Lisp_Object Ffile_exists_p (Lisp_Object);
extern Lisp_Object Ffile_locked_p (Lisp_Object);
extern Lisp_Object Ffile_modes (Lisp_Object);
extern Lisp_Object Ffile_name_absolute_p (Lisp_Object);
extern Lisp_Object Ffile_name_all_completions (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffile_name_as_directory (Lisp_Object);
extern Lisp_Object Ffile_name_completion (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffile_name_directory (Lisp_Object);
extern Lisp_Object Ffile_name_nondirectory (Lisp_Object);
extern Lisp_Object Ffile_newer_than_file_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffile_readable_p (Lisp_Object);
extern Lisp_Object Ffile_regular_p (Lisp_Object);
extern Lisp_Object Ffile_selinux_context (Lisp_Object);
extern Lisp_Object Ffile_symlink_p (Lisp_Object);
extern Lisp_Object Ffile_writable_p (Lisp_Object);
extern Lisp_Object Ffillarray (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_charset_region (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_charset_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_coding_systems_region_internal (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_composition_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_file_name_handler (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_font (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffind_operation_coding_system (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Ffloat (Lisp_Object);
extern Lisp_Object Ffloat_time (Lisp_Object);
extern Lisp_Object Ffloatp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Ffloor (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffmakunbound (Lisp_Object);
extern Lisp_Object Ffollowing_char (void);
extern Lisp_Object Ffont_at (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_drive_otf (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_face_attributes (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_family_list (Lisp_Object);
extern Lisp_Object Ffont_get (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_get_glyphs (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_get_system_font (void);
extern Lisp_Object Ffont_get_system_normal_font (void);
extern Lisp_Object Ffont_info (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_match_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_otf_alternates (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_put (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_shape_gstring (Lisp_Object);
extern Lisp_Object Ffont_spec (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Ffont_variation_glyphs (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffont_xlfd_name (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffontp (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffontset_font (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ffontset_info (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffontset_list (void);
extern Lisp_Object Ffontset_list_all (void);
extern Lisp_Object Fforce_mode_line_update (Lisp_Object);
extern Lisp_Object Fforce_window_update (Lisp_Object);
extern Lisp_Object Fformat (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fformat_message (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fformat_mode_line (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fformat_network_address (Lisp_Object, Lisp_Object);
extern Lisp_Object Fformat_time_string (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fforward_char (Lisp_Object);
extern Lisp_Object Fforward_comment (Lisp_Object);
extern Lisp_Object Fforward_line (Lisp_Object);
extern Lisp_Object Fforward_point (Lisp_Object);
extern Lisp_Object Fforward_word (Lisp_Object);
extern Lisp_Object Fframe_after_make_frame (Lisp_Object, Lisp_Object);
extern Lisp_Object Fframe_char_height (Lisp_Object);
extern Lisp_Object Fframe_char_width (Lisp_Object);
extern Lisp_Object Fframe_face_alist (Lisp_Object);
extern Lisp_Object Fframe_first_window (Lisp_Object);
extern Lisp_Object Fframe_focus (Lisp_Object);
extern Lisp_Object Fframe_font_cache (Lisp_Object);
extern Lisp_Object Fframe_list (void);
extern Lisp_Object Fframe_live_p (Lisp_Object);
extern Lisp_Object Fframe_or_buffer_changed_p (Lisp_Object);
extern Lisp_Object Fframe_parameter (Lisp_Object, Lisp_Object);
extern Lisp_Object Fframe_parameters (Lisp_Object);
extern Lisp_Object Fframe_pixel_height (Lisp_Object);
extern Lisp_Object Fframe_pixel_width (Lisp_Object);
extern Lisp_Object Fframe_pointer_visible_p (Lisp_Object);
extern Lisp_Object Fframe_position (Lisp_Object);
extern Lisp_Object Fframe_root_window (Lisp_Object);
extern Lisp_Object Fframe_selected_window (Lisp_Object);
extern Lisp_Object Fframe_terminal (Lisp_Object);
extern Lisp_Object Fframe_text_cols (Lisp_Object);
extern Lisp_Object Fframe_text_height (Lisp_Object);
extern Lisp_Object Fframe_text_lines (Lisp_Object);
extern Lisp_Object Fframe_text_width (Lisp_Object);
extern Lisp_Object Fframe_total_cols (Lisp_Object);
extern Lisp_Object Fframe_total_lines (Lisp_Object);
extern Lisp_Object Fframe_visible_p (Lisp_Object);
extern Lisp_Object Fframe_windows_min_size (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fframep (Lisp_Object);
extern Lisp_Object Ffrexp (Lisp_Object);
extern Lisp_Object Ffringe_bitmaps_at_pos (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffringe_width (Lisp_Object);
extern Lisp_Object Ffround (Lisp_Object);
extern Lisp_Object Ffset (Lisp_Object, Lisp_Object);
extern Lisp_Object Fftruncate (Lisp_Object);
extern Lisp_Object Ffuncall (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Ffuncall_interactively (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Ffunction (Lisp_Object);
extern Lisp_Object Ffunction_equal (Lisp_Object, Lisp_Object);
extern Lisp_Object Ffunctionp (Lisp_Object);
extern Lisp_Object Fgap_position (void);
extern Lisp_Object Fgap_size (void);
extern Lisp_Object Fgarbage_collect (void);
extern Lisp_Object Fgenerate_new_buffer_name (Lisp_Object, Lisp_Object);
extern Lisp_Object Fgeq (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fget (Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_buffer (Lisp_Object);
extern Lisp_Object Fget_buffer_create (Lisp_Object);
extern Lisp_Object Fget_buffer_process (Lisp_Object);
extern Lisp_Object Fget_buffer_window (Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_byte (Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_char_property (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_char_property_and_overlay (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_file_buffer (Lisp_Object);
extern Lisp_Object Fget_file_char (void);
extern Lisp_Object Fget_internal_run_time (void);
extern Lisp_Object Fget_load_suffixes (void);
extern Lisp_Object Fget_pos_property (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_process (Lisp_Object);
extern Lisp_Object Fget_text_property (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_unicode_property_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fget_unused_category (Lisp_Object);
extern Lisp_Object Fget_unused_iso_final_char (Lisp_Object, Lisp_Object);
extern Lisp_Object Fgetenv_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fgethash (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fglobal_key_binding (Lisp_Object, Lisp_Object);
extern Lisp_Object Fgnutls_available_p (void);
extern Lisp_Object Fgnutls_boot (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fgnutls_bye (Lisp_Object, Lisp_Object);
extern Lisp_Object Fgnutls_deinit (Lisp_Object);
extern Lisp_Object Fgnutls_error_fatalp (Lisp_Object);
extern Lisp_Object Fgnutls_error_string (Lisp_Object);
extern Lisp_Object Fgnutls_errorp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fgnutls_get_initstage (Lisp_Object);
extern Lisp_Object Fgnutls_peer_status (Lisp_Object);
extern Lisp_Object Fgnutls_peer_status_warning_describe (Lisp_Object);
extern Lisp_Object Fgoto_char (Lisp_Object);
extern Lisp_Object Fgpm_mouse_start (void);
extern Lisp_Object Fgpm_mouse_stop (void);
extern Lisp_Object Fgroup_gid (void);
extern Lisp_Object Fgroup_real_gid (void);
extern Lisp_Object Fgtr (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fhandle_save_session (Lisp_Object);
extern Lisp_Object Fhandle_switch_frame (Lisp_Object);
extern Lisp_Object Fhash_table_count (Lisp_Object);
extern Lisp_Object Fhash_table_p (Lisp_Object);
extern Lisp_Object Fhash_table_rehash_size (Lisp_Object);
extern Lisp_Object Fhash_table_rehash_threshold (Lisp_Object);
extern Lisp_Object Fhash_table_size (Lisp_Object);
extern Lisp_Object Fhash_table_test (Lisp_Object);
extern Lisp_Object Fhash_table_weakness (Lisp_Object);
extern Lisp_Object Ficonify_frame (Lisp_Object);
extern Lisp_Object Fidentity (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fif (Lisp_Object);
extern Lisp_Object Fimage_flush (Lisp_Object, Lisp_Object);
extern Lisp_Object Fimage_mask_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fimage_metadata (Lisp_Object, Lisp_Object);
extern Lisp_Object Fimage_size (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fimagemagick_types (void);
extern Lisp_Object Fimagep (Lisp_Object);
extern Lisp_Object Findent_to (Lisp_Object, Lisp_Object);
extern Lisp_Object Findirect_function (Lisp_Object, Lisp_Object);
extern Lisp_Object Findirect_variable (Lisp_Object);
extern Lisp_Object Finit_image_library (Lisp_Object);
extern Lisp_Object Finotify_add_watch (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finotify_rm_watch (Lisp_Object);
extern Lisp_Object Finotify_valid_p (Lisp_Object);
extern Lisp_Object Finput_pending_p (Lisp_Object);
extern Lisp_Object Finsert (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Finsert_and_inherit (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Finsert_and_inherit_before_markers (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Finsert_before_markers (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Finsert_buffer_substring (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finsert_byte (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finsert_char (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finsert_file_contents (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finteger_or_marker_p (Lisp_Object);
extern Lisp_Object Fintegerp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Finteractive (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Finteractive_form (Lisp_Object);
extern Lisp_Object Fintern (Lisp_Object, Lisp_Object);
extern Lisp_Object Fintern_soft (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_char_font (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_complete_buffer (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_copy_lisp_face (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_default_process_filter (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_default_process_sentinel (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_describe_syntax_value (Lisp_Object);
extern Lisp_Object Finternal_face_x_get_resource (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_get_lisp_face_attribute (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_lisp_face_attribute_values (Lisp_Object);
extern Lisp_Object Finternal_lisp_face_empty_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_lisp_face_equal_p (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_lisp_face_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_make_lisp_face (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_merge_in_global_face (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_set_alternative_font_family_alist (Lisp_Object);
extern Lisp_Object Finternal_set_alternative_font_registry_alist (Lisp_Object);
extern Lisp_Object Finternal_set_font_selection_order (Lisp_Object);
extern Lisp_Object Finternal_set_lisp_face_attribute (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_set_lisp_face_attribute_from_resource (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_show_cursor (Lisp_Object, Lisp_Object);
extern Lisp_Object Finternal_show_cursor_p (Lisp_Object);
extern Lisp_Object Finterrupt_process (Lisp_Object, Lisp_Object);
extern Lisp_Object Finvisible_p (Lisp_Object);
extern Lisp_Object Finvocation_directory (void);
extern Lisp_Object Finvocation_name (void);
extern Lisp_Object Fisnan (Lisp_Object);
extern Lisp_Object Fiso_charset (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fkey_binding (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fkey_description (Lisp_Object, Lisp_Object);
extern Lisp_Object Fkeyboard_coding_system (Lisp_Object);
extern Lisp_Object Fkeymap_parent (Lisp_Object);
extern Lisp_Object Fkeymap_prompt (Lisp_Object);
extern Lisp_Object Fkeymapp (Lisp_Object);
extern Lisp_Object Fkeywordp (Lisp_Object);
extern Lisp_Object Fkill_all_local_variables (void);
extern Lisp_Object Fkill_buffer (Lisp_Object);
_Noreturn extern Lisp_Object Fkill_emacs (Lisp_Object);
extern Lisp_Object Fkill_local_variable (Lisp_Object);
extern Lisp_Object Fkill_process (Lisp_Object, Lisp_Object);
extern Lisp_Object Flast_nonminibuf_frame (void);
extern Lisp_Object Flax_plist_get (Lisp_Object, Lisp_Object);
extern Lisp_Object Flax_plist_put (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fldexp (Lisp_Object, Lisp_Object);
extern Lisp_Object Flength (Lisp_Object);
extern Lisp_Object Fleq (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Flet (Lisp_Object);
extern Lisp_Object FletX (Lisp_Object);
extern Lisp_Object Flibxml_parse_html_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Flibxml_parse_xml_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fline_beginning_position (Lisp_Object);
extern Lisp_Object Fline_end_position (Lisp_Object);
extern Lisp_Object Fline_pixel_height (void);
extern Lisp_Object Flist (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Flist_fonts (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Flist_system_processes (void);
extern Lisp_Object Flistp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fload (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fload_average (Lisp_Object);
extern Lisp_Object Flocal_key_binding (Lisp_Object, Lisp_Object);
extern Lisp_Object Flocal_variable_if_set_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Flocal_variable_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Flocale_info (Lisp_Object);
extern Lisp_Object Flocate_file_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Flock_buffer (Lisp_Object);
extern Lisp_Object Flog (Lisp_Object, Lisp_Object);
extern Lisp_Object Flogand (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Flogb (Lisp_Object);
extern Lisp_Object Flogior (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Flognot (Lisp_Object);
extern Lisp_Object Flogxor (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Flooking_at (Lisp_Object);
extern Lisp_Object Flookup_image (Lisp_Object);
extern Lisp_Object Flookup_image_map (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Flookup_key (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Flower_frame (Lisp_Object);
extern Lisp_Object Flsh (Lisp_Object, Lisp_Object);
extern Lisp_Object Flss (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmacroexpand (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_bool_vector (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_byte_code (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmake_category_set (Lisp_Object);
extern Lisp_Object Fmake_category_table (void);
extern Lisp_Object Fmake_char (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_char_table (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_directory_internal (Lisp_Object);
extern Lisp_Object Fmake_finalizer (Lisp_Object);
extern Lisp_Object Fmake_frame_invisible (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_frame_visible (Lisp_Object);
extern Lisp_Object Fmake_hash_table (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmake_indirect_buffer (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_keymap (Lisp_Object);
extern Lisp_Object Fmake_list (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_local_variable (Lisp_Object);
extern Lisp_Object Fmake_marker (void);
extern Lisp_Object Fmake_network_process (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmake_overlay (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_pipe_process (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmake_process (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmake_serial_process (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmake_sparse_keymap (Lisp_Object);
extern Lisp_Object Fmake_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_symbol (Lisp_Object);
extern Lisp_Object Fmake_symbolic_link (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmake_temp_name (Lisp_Object);
extern Lisp_Object Fmake_terminal_frame (Lisp_Object);
extern Lisp_Object Fmake_var_non_special (Lisp_Object);
extern Lisp_Object Fmake_variable_buffer_local (Lisp_Object);
extern Lisp_Object Fmake_variable_frame_local (Lisp_Object);
extern Lisp_Object Fmake_vector (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmakunbound (Lisp_Object);
extern Lisp_Object Fmap_char_table (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmap_charset_chars (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmap_keymap (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmap_keymap_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmapatoms (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmapc (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmapcar (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmapconcat (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmaphash (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmark_marker (void);
extern Lisp_Object Fmarker_buffer (Lisp_Object);
extern Lisp_Object Fmarker_insertion_type (Lisp_Object);
extern Lisp_Object Fmarker_position (Lisp_Object);
extern Lisp_Object Fmarkerp (Lisp_Object);
extern Lisp_Object Fmatch_beginning (Lisp_Object);
extern Lisp_Object Fmatch_data (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmatch_end (Lisp_Object);
extern Lisp_Object Fmatching_paren (Lisp_Object);
extern Lisp_Object Fmax (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmax_char (void) __attribute__ ((__const__));
extern Lisp_Object Fmd5 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmember (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmemory_info (void);
extern Lisp_Object Fmemory_limit (void);
extern Lisp_Object Fmemory_use_counts (void);
extern Lisp_Object Fmemq (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmemql (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmenu_bar_menu_at_x_y (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmenu_or_popup_active_p (void);
extern Lisp_Object Fmerge_face_attribute (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmessage (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmessage_box (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmessage_or_box (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmin (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fminibuffer_completion_contents (void);
extern Lisp_Object Fminibuffer_contents (void);
extern Lisp_Object Fminibuffer_contents_no_properties (void);
extern Lisp_Object Fminibuffer_depth (void);
extern Lisp_Object Fminibuffer_prompt (void);
extern Lisp_Object Fminibuffer_prompt_end (void);
extern Lisp_Object Fminibuffer_selected_window (void);
extern Lisp_Object Fminibuffer_window (Lisp_Object);
extern Lisp_Object Fminibufferp (Lisp_Object);
extern Lisp_Object Fminor_mode_key_binding (Lisp_Object, Lisp_Object);
extern Lisp_Object Fminus (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fmod (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmodify_category_entry (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmodify_frame_parameters (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmodify_syntax_entry (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmouse_pixel_position (void);
extern Lisp_Object Fmouse_position (void);
extern Lisp_Object Fmove_overlay (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fmove_point_visually (Lisp_Object);
extern Lisp_Object Fmove_to_column (Lisp_Object, Lisp_Object);
extern Lisp_Object Fmove_to_window_line (Lisp_Object);
extern Lisp_Object Fmultibyte_char_to_unibyte (Lisp_Object);
extern Lisp_Object Fmultibyte_string_p (Lisp_Object);
extern Lisp_Object Fnarrow_to_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnatnump (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fnconc (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fneq (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnetwork_interface_info (Lisp_Object);
extern Lisp_Object Fnetwork_interface_list (void);
extern Lisp_Object Fnew_fontset (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnewline_cache_check (Lisp_Object);
extern Lisp_Object Fnext_char_property_change (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnext_frame (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnext_overlay_change (Lisp_Object);
extern Lisp_Object Fnext_property_change (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fnext_read_file_uses_dialog_p (void);
extern Lisp_Object Fnext_single_char_property_change (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fnext_single_property_change (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fnext_window (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fnlistp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fnreverse (Lisp_Object);
extern Lisp_Object Fnth (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnthcdr (Lisp_Object, Lisp_Object);
extern Lisp_Object Fnull (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fnumber_or_marker_p (Lisp_Object);
extern Lisp_Object Fnumber_to_string (Lisp_Object);
extern Lisp_Object Fnumberp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fopen_dribble_file (Lisp_Object);
extern Lisp_Object Fopen_font (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fopen_termscript (Lisp_Object);
extern Lisp_Object Foptimize_char_table (Lisp_Object, Lisp_Object);
extern Lisp_Object For (Lisp_Object);
extern Lisp_Object Fother_buffer (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fother_window_for_scrolling (void);
extern Lisp_Object Foverlay_buffer (Lisp_Object);
extern Lisp_Object Foverlay_end (Lisp_Object);
extern Lisp_Object Foverlay_get (Lisp_Object, Lisp_Object);
extern Lisp_Object Foverlay_lists (void);
extern Lisp_Object Foverlay_properties (Lisp_Object);
extern Lisp_Object Foverlay_put (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Foverlay_recenter (Lisp_Object);
extern Lisp_Object Foverlay_start (Lisp_Object);
extern Lisp_Object Foverlayp (Lisp_Object);
extern Lisp_Object Foverlays_at (Lisp_Object, Lisp_Object);
extern Lisp_Object Foverlays_in (Lisp_Object, Lisp_Object);
extern Lisp_Object Fparse_partial_sexp (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fplay_sound_internal (Lisp_Object);
extern Lisp_Object Fplist_get (Lisp_Object, Lisp_Object);
extern Lisp_Object Fplist_member (Lisp_Object, Lisp_Object);
extern Lisp_Object Fplist_put (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fplus (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fpoint (void);
extern Lisp_Object Fpoint_marker (void);
extern Lisp_Object Fpoint_max (void);
extern Lisp_Object Fpoint_max_marker (void);
extern Lisp_Object Fpoint_min (void);
extern Lisp_Object Fpoint_min_marker (void);
extern Lisp_Object Fpos_visible_in_window_p (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fposition_bytes (Lisp_Object);
extern Lisp_Object Fposix_looking_at (Lisp_Object);
extern Lisp_Object Fposix_search_backward (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fposix_search_forward (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fposix_string_match (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fposn_at_point (Lisp_Object, Lisp_Object);
extern Lisp_Object Fposn_at_x_y (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fprefix_numeric_value (Lisp_Object);
extern Lisp_Object Fprevious_char (void);
extern Lisp_Object Fprevious_char_property_change (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprevious_frame (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprevious_overlay_change (Lisp_Object);
extern Lisp_Object Fprevious_property_change (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fprevious_single_char_property_change (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fprevious_single_property_change (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fprevious_window (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fprin1 (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprin1_to_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprinc (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprint (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprocess_attributes (Lisp_Object);
extern Lisp_Object Fprocess_buffer (Lisp_Object);
extern Lisp_Object Fprocess_coding_system (Lisp_Object);
extern Lisp_Object Fprocess_command (Lisp_Object);
extern Lisp_Object Fprocess_connection (Lisp_Object);
extern Lisp_Object Fprocess_contact (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprocess_datagram_address (Lisp_Object);
extern Lisp_Object Fprocess_exit_status (Lisp_Object);
extern Lisp_Object Fprocess_filter (Lisp_Object);
extern Lisp_Object Fprocess_filter_multibyte_p (Lisp_Object);
extern Lisp_Object Fprocess_id (Lisp_Object);
extern Lisp_Object Fprocess_inherit_coding_system_flag (Lisp_Object);
extern Lisp_Object Fprocess_list (void);
extern Lisp_Object Fprocess_mark (Lisp_Object);
extern Lisp_Object Fprocess_name (Lisp_Object);
extern Lisp_Object Fprocess_plist (Lisp_Object);
extern Lisp_Object Fprocess_query_on_exit_flag (Lisp_Object);
extern Lisp_Object Fprocess_running_child_p (Lisp_Object);
extern Lisp_Object Fprocess_send_eof (Lisp_Object);
extern Lisp_Object Fprocess_send_region (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fprocess_send_string (Lisp_Object, Lisp_Object);
extern Lisp_Object Fprocess_sentinel (Lisp_Object);
extern Lisp_Object Fprocess_status (Lisp_Object);
extern Lisp_Object Fprocess_tty_name (Lisp_Object);
extern Lisp_Object Fprocess_type (Lisp_Object);
extern Lisp_Object Fprocessp (Lisp_Object);
extern Lisp_Object Fprofiler_cpu_log (void);
extern Lisp_Object Fprofiler_cpu_running_p (void);
extern Lisp_Object Fprofiler_cpu_start (Lisp_Object);
extern Lisp_Object Fprofiler_cpu_stop (void);
extern Lisp_Object Fprofiler_memory_log (void);
extern Lisp_Object Fprofiler_memory_running_p (void);
extern Lisp_Object Fprofiler_memory_start (void);
extern Lisp_Object Fprofiler_memory_stop (void);
extern Lisp_Object Fprog1 (Lisp_Object);
extern Lisp_Object Fprog2 (Lisp_Object);
extern Lisp_Object Fprogn (Lisp_Object);
extern Lisp_Object Fpropertize (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fprovide (Lisp_Object, Lisp_Object);
extern Lisp_Object Fpurecopy (Lisp_Object);
extern Lisp_Object Fput (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fput_text_property (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fput_unicode_property_internal (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fputhash (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fquery_font (Lisp_Object);
extern Lisp_Object Fquery_fontset (Lisp_Object, Lisp_Object);
extern Lisp_Object Fquit_process (Lisp_Object, Lisp_Object);
extern Lisp_Object Fquo (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fquote (Lisp_Object);
extern Lisp_Object Fraise_frame (Lisp_Object);
extern Lisp_Object Frandom (Lisp_Object);
extern Lisp_Object Frassoc (Lisp_Object, Lisp_Object);
extern Lisp_Object Frassq (Lisp_Object, Lisp_Object);
extern Lisp_Object Fre_search_backward (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fre_search_forward (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread (Lisp_Object);
extern Lisp_Object Fread_buffer (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_char (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_char_exclusive (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_coding_system (Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_command (Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_event (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_from_minibuffer (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_from_string (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_function (Lisp_Object);
extern Lisp_Object Fread_key_sequence (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_key_sequence_vector (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_no_blanks_input (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_non_nil_coding_system (Lisp_Object);
extern Lisp_Object Fread_string (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fread_variable (Lisp_Object, Lisp_Object);
extern Lisp_Object Frecent_auto_save_p (void);
extern Lisp_Object Frecent_keys (Lisp_Object);
extern Lisp_Object Frecenter (Lisp_Object);
extern Lisp_Object Frecursion_depth (void);
extern Lisp_Object Frecursive_edit (void);
extern Lisp_Object Fredirect_debugging_output (Lisp_Object, Lisp_Object);
extern Lisp_Object Fredirect_frame_focus (Lisp_Object, Lisp_Object);
extern Lisp_Object Fredisplay (Lisp_Object);
extern Lisp_Object Fredraw_display (void);
extern Lisp_Object Fredraw_frame (Lisp_Object);
extern Lisp_Object Fregexp_quote (Lisp_Object);
extern Lisp_Object Fregion_beginning (void);
extern Lisp_Object Fregion_end (void);
extern Lisp_Object Fregister_ccl_program (Lisp_Object, Lisp_Object);
extern Lisp_Object Fregister_code_conversion_map (Lisp_Object, Lisp_Object);
extern Lisp_Object Frem (Lisp_Object, Lisp_Object);
extern Lisp_Object Fremhash (Lisp_Object, Lisp_Object);
extern Lisp_Object Fremove_list_of_text_properties (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fremove_text_properties (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Frename_buffer (Lisp_Object, Lisp_Object);
extern Lisp_Object Frename_file (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Freplace_match (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Frequire (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fresize_mini_window_internal (Lisp_Object);
extern Lisp_Object Frestore_buffer_modified_p (Lisp_Object);
extern Lisp_Object Fresume_tty (Lisp_Object);
extern Lisp_Object Freverse (Lisp_Object);
extern Lisp_Object Fright_divider_width (Lisp_Object);
extern Lisp_Object Fround (Lisp_Object, Lisp_Object);
extern Lisp_Object Frun_hook_with_args (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Frun_hook_with_args_until_failure (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Frun_hook_with_args_until_success (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Frun_hook_wrapped (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Frun_hooks (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Frun_window_configuration_change_hook (Lisp_Object);
extern Lisp_Object Frun_window_scroll_functions (Lisp_Object);
extern Lisp_Object Fsafe_length (Lisp_Object);
extern Lisp_Object Fsave_current_buffer (Lisp_Object);
extern Lisp_Object Fsave_excursion (Lisp_Object);
extern Lisp_Object Fsave_restriction (Lisp_Object);
extern Lisp_Object Fscan_lists (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fscan_sexps (Lisp_Object, Lisp_Object);
extern Lisp_Object Fscroll_bar_height (Lisp_Object);
extern Lisp_Object Fscroll_bar_width (Lisp_Object);
extern Lisp_Object Fscroll_down (Lisp_Object);
extern Lisp_Object Fscroll_left (Lisp_Object, Lisp_Object);
extern Lisp_Object Fscroll_other_window (Lisp_Object);
extern Lisp_Object Fscroll_right (Lisp_Object, Lisp_Object);
extern Lisp_Object Fscroll_up (Lisp_Object);
extern Lisp_Object Fsearch_backward (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsearch_forward (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsecure_hash (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fselect_frame (Lisp_Object, Lisp_Object);
extern Lisp_Object Fselect_window (Lisp_Object, Lisp_Object);
extern Lisp_Object Fselected_frame (void);
extern Lisp_Object Fselected_window (void);
extern Lisp_Object Fself_insert_command (Lisp_Object);
extern Lisp_Object Fsend_string_to_terminal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsequencep (Lisp_Object);
extern Lisp_Object Fserial_process_configure (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fset (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_binary_mode (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_buffer (Lisp_Object);
extern Lisp_Object Fset_buffer_auto_saved (void);
extern Lisp_Object Fset_buffer_major_mode (Lisp_Object);
extern Lisp_Object Fset_buffer_modified_p (Lisp_Object);
extern Lisp_Object Fset_buffer_multibyte (Lisp_Object);
extern Lisp_Object Fset_case_table (Lisp_Object);
extern Lisp_Object Fset_category_table (Lisp_Object);
extern Lisp_Object Fset_char_table_extra_slot (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_char_table_parent (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_char_table_range (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_charset_plist (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_charset_priority (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fset_coding_system_priority (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fset_default (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_default_file_modes (Lisp_Object);
extern Lisp_Object Fset_default_toplevel_value (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_file_acl (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_file_modes (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_file_selinux_context (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_file_times (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_fontset_font (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_frame_height (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_frame_position (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_frame_selected_window (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_frame_size (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_frame_width (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_fringe_bitmap_face (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_input_interrupt_mode (Lisp_Object);
extern Lisp_Object Fset_input_meta_mode (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_input_mode (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_keyboard_coding_system_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_keymap_parent (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_marker (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_marker_insertion_type (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_match_data (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_minibuffer_window (Lisp_Object);
extern Lisp_Object Fset_mouse_pixel_position (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_mouse_position (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_network_process_option (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_output_flow_control (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_buffer (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_coding_system (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_datagram_address (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_filter (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_filter_multibyte (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_inherit_coding_system_flag (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_plist (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_query_on_exit_flag (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_sentinel (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_process_window_size (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_quit_char (Lisp_Object);
extern Lisp_Object Fset_safe_terminal_coding_system_internal (Lisp_Object);
extern Lisp_Object Fset_standard_case_table (Lisp_Object);
extern Lisp_Object Fset_syntax_table (Lisp_Object);
extern Lisp_Object Fset_terminal_coding_system_internal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_terminal_local_value (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_terminal_parameter (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_text_properties (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_time_zone_rule (Lisp_Object);
extern Lisp_Object Fset_visited_file_modtime (Lisp_Object);
extern Lisp_Object Fset_window_buffer (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_combination_limit (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_configuration (Lisp_Object);
extern Lisp_Object Fset_window_dedicated_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_display_table (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_fringes (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_hscroll (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_margins (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_new_normal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_new_pixel (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_new_total (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_next_buffers (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_parameter (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_point (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_prev_buffers (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_redisplay_end_trigger (Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_scroll_bars (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_start (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fset_window_vscroll (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsetcar (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsetcdr (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsetplist (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsetq (Lisp_Object);
extern Lisp_Object Fsetq_default (Lisp_Object);
extern Lisp_Object Fshow_face_resources (void);
extern Lisp_Object Fsignal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsignal_process (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsin (Lisp_Object);
extern Lisp_Object Fsingle_key_description (Lisp_Object, Lisp_Object);
extern Lisp_Object Fskip_chars_backward (Lisp_Object, Lisp_Object);
extern Lisp_Object Fskip_chars_forward (Lisp_Object, Lisp_Object);
extern Lisp_Object Fskip_syntax_backward (Lisp_Object, Lisp_Object);
extern Lisp_Object Fskip_syntax_forward (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsleep_for (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsnarf_documentation (Lisp_Object);
extern Lisp_Object Fsort (Lisp_Object, Lisp_Object);
extern Lisp_Object Fsort_charsets (Lisp_Object);
extern Lisp_Object Fspecial_variable_p (Lisp_Object);
extern Lisp_Object Fsplit_char (Lisp_Object);
extern Lisp_Object Fsplit_window_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsqrt (Lisp_Object);
extern Lisp_Object Fstandard_case_table (void);
extern Lisp_Object Fstandard_category_table (void);
extern Lisp_Object Fstandard_syntax_table (void);
extern Lisp_Object Fstart_kbd_macro (Lisp_Object, Lisp_Object);
extern Lisp_Object Fstop_process (Lisp_Object, Lisp_Object);
extern Lisp_Object Fstore_kbd_macro_event (Lisp_Object);
extern Lisp_Object Fstring (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fstring_as_multibyte (Lisp_Object);
extern Lisp_Object Fstring_as_unibyte (Lisp_Object);
extern Lisp_Object Fstring_bytes (Lisp_Object);
extern Lisp_Object Fstring_collate_equalp (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fstring_collate_lessp (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fstring_equal (Lisp_Object, Lisp_Object);
extern Lisp_Object Fstring_lessp (Lisp_Object, Lisp_Object);
extern Lisp_Object Fstring_make_multibyte (Lisp_Object);
extern Lisp_Object Fstring_make_unibyte (Lisp_Object);
extern Lisp_Object Fstring_match (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fstring_to_char (Lisp_Object);
extern Lisp_Object Fstring_to_multibyte (Lisp_Object);
extern Lisp_Object Fstring_to_number (Lisp_Object, Lisp_Object);
extern Lisp_Object Fstring_to_syntax (Lisp_Object);
extern Lisp_Object Fstring_to_unibyte (Lisp_Object);
extern Lisp_Object Fstring_width (Lisp_Object);
extern Lisp_Object Fstringp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fsub1 (Lisp_Object);
extern Lisp_Object Fsubr_arity (Lisp_Object);
extern Lisp_Object Fsubr_name (Lisp_Object);
extern Lisp_Object Fsubrp (Lisp_Object);
extern Lisp_Object Fsubst_char_in_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsubstitute_command_keys (Lisp_Object);
extern Lisp_Object Fsubstitute_in_file_name (Lisp_Object);
extern Lisp_Object Fsubstring (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsubstring_no_properties (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fsuspend_emacs (Lisp_Object);
extern Lisp_Object Fsuspend_tty (Lisp_Object);
extern Lisp_Object Fsuspicious_object (Lisp_Object);
extern Lisp_Object Fsxhash (Lisp_Object);
extern Lisp_Object Fsymbol_function (Lisp_Object);
extern Lisp_Object Fsymbol_name (Lisp_Object);
extern Lisp_Object Fsymbol_plist (Lisp_Object);
extern Lisp_Object Fsymbol_value (Lisp_Object);
extern Lisp_Object Fsymbolp (Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fsyntax_table (void);
extern Lisp_Object Fsyntax_table_p (Lisp_Object);
extern Lisp_Object Fsystem_groups (void);
extern Lisp_Object Fsystem_name (void);
extern Lisp_Object Fsystem_users (void);
extern Lisp_Object Ftan (Lisp_Object);
extern Lisp_Object Fterminal_coding_system (Lisp_Object);
extern Lisp_Object Fterminal_list (void);
extern Lisp_Object Fterminal_live_p (Lisp_Object);
extern Lisp_Object Fterminal_local_value (Lisp_Object, Lisp_Object);
extern Lisp_Object Fterminal_name (Lisp_Object);
extern Lisp_Object Fterminal_parameter (Lisp_Object, Lisp_Object);
extern Lisp_Object Fterminal_parameters (Lisp_Object);
extern Lisp_Object Fterpri (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftest_completion (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ftext_char_description (Lisp_Object);
extern Lisp_Object Ftext_properties_at (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftext_property_any (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ftext_property_not_all (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fthis_command_keys (void);
extern Lisp_Object Fthis_command_keys_vector (void);
extern Lisp_Object Fthis_single_command_keys (void);
extern Lisp_Object Fthis_single_command_raw_keys (void);
_Noreturn extern Lisp_Object Fthrow (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftime_add (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftime_less_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftime_subtract (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftimes (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Ftool_bar_get_system_style (void);
extern Lisp_Object Ftool_bar_height (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftool_bar_pixel_width (Lisp_Object);
_Noreturn extern Lisp_Object Ftop_level (void);
extern Lisp_Object Ftrace_redisplay (Lisp_Object);
extern Lisp_Object Ftrace_to_stderr (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Ftrack_mouse (Lisp_Object);
extern Lisp_Object Ftranslate_region_internal (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ftranspose_regions (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ftruncate (Lisp_Object, Lisp_Object);
extern Lisp_Object Ftry_completion (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Ftty_display_color_cells (Lisp_Object);
extern Lisp_Object Ftty_display_color_p (Lisp_Object);
extern Lisp_Object Ftty_no_underline (Lisp_Object);
extern Lisp_Object Ftty_suppress_bold_inverse_default_colors (Lisp_Object);
extern Lisp_Object Ftty_top_frame (Lisp_Object);
extern Lisp_Object Ftty_type (Lisp_Object);
extern Lisp_Object Ftype_of (Lisp_Object);
extern Lisp_Object Fundo_boundary (void);
extern Lisp_Object Funencodable_char_position (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Funhandled_file_name_directory (Lisp_Object);
extern Lisp_Object Funibyte_char_to_multibyte (Lisp_Object);
extern Lisp_Object Funibyte_string (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Funicode_property_table_internal (Lisp_Object);
extern Lisp_Object Funify_charset (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Funintern (Lisp_Object, Lisp_Object);
extern Lisp_Object Funix_sync (void);
extern Lisp_Object Funlock_buffer (void);
extern Lisp_Object Funwind_protect (Lisp_Object);
extern Lisp_Object Fupcase (Lisp_Object);
extern Lisp_Object Fupcase_initials (Lisp_Object);
extern Lisp_Object Fupcase_initials_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fupcase_region (Lisp_Object, Lisp_Object);
extern Lisp_Object Fupcase_word (Lisp_Object);
extern Lisp_Object Fuse_global_map (Lisp_Object);
extern Lisp_Object Fuse_local_map (Lisp_Object);
extern Lisp_Object Fuser_full_name (Lisp_Object);
extern Lisp_Object Fuser_login_name (Lisp_Object);
extern Lisp_Object Fuser_ptrp (Lisp_Object);
extern Lisp_Object Fuser_real_login_name (void);
extern Lisp_Object Fuser_real_uid (void);
extern Lisp_Object Fuser_uid (void);
extern Lisp_Object Fvariable_binding_locus (Lisp_Object);
extern Lisp_Object Fvconcat (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fvector (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fvector_or_char_table_p (Lisp_Object);
extern Lisp_Object Fvectorp (Lisp_Object);
extern Lisp_Object Fverify_visited_file_modtime (Lisp_Object);
extern Lisp_Object Fvertical_motion (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fvisible_frame_list (void);
extern Lisp_Object Fvisited_file_modtime (void);
extern Lisp_Object Fwaiting_for_user_input_p (void);
extern Lisp_Object Fwhere_is_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fwhile (Lisp_Object);
extern Lisp_Object Fwiden (void);
extern Lisp_Object Fwidget_apply (ptrdiff_t, Lisp_Object *);
extern Lisp_Object Fwidget_get (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwidget_put (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow__sanitize_window_sizes (Lisp_Object, Lisp_Object) __attribute__ ((__const__));
extern Lisp_Object Fwindow_at (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_body_height (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_body_width (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_bottom_divider_width (Lisp_Object);
extern Lisp_Object Fwindow_buffer (Lisp_Object);
extern Lisp_Object Fwindow_combination_limit (Lisp_Object);
extern Lisp_Object Fwindow_configuration_frame (Lisp_Object);
extern Lisp_Object Fwindow_configuration_p (Lisp_Object);
extern Lisp_Object Fwindow_dedicated_p (Lisp_Object);
extern Lisp_Object Fwindow_display_table (Lisp_Object);
extern Lisp_Object Fwindow_end (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_frame (Lisp_Object);
extern Lisp_Object Fwindow_fringes (Lisp_Object);
extern Lisp_Object Fwindow_header_line_height (Lisp_Object);
extern Lisp_Object Fwindow_hscroll (Lisp_Object);
extern Lisp_Object Fwindow_left_child (Lisp_Object);
extern Lisp_Object Fwindow_left_column (Lisp_Object);
extern Lisp_Object Fwindow_line_height (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_list (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_list_1 (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_live_p (Lisp_Object);
extern Lisp_Object Fwindow_margins (Lisp_Object);
extern Lisp_Object Fwindow_minibuffer_p (Lisp_Object);
extern Lisp_Object Fwindow_mode_line_height (Lisp_Object);
extern Lisp_Object Fwindow_new_normal (Lisp_Object);
extern Lisp_Object Fwindow_new_pixel (Lisp_Object);
extern Lisp_Object Fwindow_new_total (Lisp_Object);
extern Lisp_Object Fwindow_next_buffers (Lisp_Object);
extern Lisp_Object Fwindow_next_sibling (Lisp_Object);
extern Lisp_Object Fwindow_normal_size (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_old_point (Lisp_Object);
extern Lisp_Object Fwindow_parameter (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_parameters (Lisp_Object);
extern Lisp_Object Fwindow_parent (Lisp_Object);
extern Lisp_Object Fwindow_pixel_height (Lisp_Object);
extern Lisp_Object Fwindow_pixel_left (Lisp_Object);
extern Lisp_Object Fwindow_pixel_top (Lisp_Object);
extern Lisp_Object Fwindow_pixel_width (Lisp_Object);
extern Lisp_Object Fwindow_point (Lisp_Object);
extern Lisp_Object Fwindow_prev_buffers (Lisp_Object);
extern Lisp_Object Fwindow_prev_sibling (Lisp_Object);
extern Lisp_Object Fwindow_redisplay_end_trigger (Lisp_Object);
extern Lisp_Object Fwindow_resize_apply (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_resize_apply_total (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_right_divider_width (Lisp_Object);
extern Lisp_Object Fwindow_scroll_bar_height (Lisp_Object);
extern Lisp_Object Fwindow_scroll_bar_width (Lisp_Object);
extern Lisp_Object Fwindow_scroll_bars (Lisp_Object);
extern Lisp_Object Fwindow_start (Lisp_Object);
extern Lisp_Object Fwindow_system (Lisp_Object);
extern Lisp_Object Fwindow_text_height (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_text_pixel_size (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_text_width (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_top_child (Lisp_Object);
extern Lisp_Object Fwindow_top_line (Lisp_Object);
extern Lisp_Object Fwindow_total_height (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_total_width (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindow_use_time (Lisp_Object);
extern Lisp_Object Fwindow_valid_p (Lisp_Object);
extern Lisp_Object Fwindow_vscroll (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwindowp (Lisp_Object);
extern Lisp_Object Fwrite_char (Lisp_Object, Lisp_Object);
extern Lisp_Object Fwrite_region (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_backspace_delete_keys_p (Lisp_Object);
extern Lisp_Object Fx_change_window_property (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_close_connection (Lisp_Object);
extern Lisp_Object Fx_create_frame (Lisp_Object);
extern Lisp_Object Fx_delete_window_property (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_disown_selection_internal (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_display_backing_store (Lisp_Object);
extern Lisp_Object Fx_display_color_cells (Lisp_Object);
extern Lisp_Object Fx_display_grayscale_p (Lisp_Object);
extern Lisp_Object Fx_display_list (void);
extern Lisp_Object Fx_display_mm_height (Lisp_Object);
extern Lisp_Object Fx_display_mm_width (Lisp_Object);
extern Lisp_Object Fx_display_monitor_attributes_list (Lisp_Object);
extern Lisp_Object Fx_display_pixel_height (Lisp_Object);
extern Lisp_Object Fx_display_pixel_width (Lisp_Object);
extern Lisp_Object Fx_display_planes (Lisp_Object);
extern Lisp_Object Fx_display_save_under (Lisp_Object);
extern Lisp_Object Fx_display_screens (Lisp_Object);
extern Lisp_Object Fx_display_visual_class (Lisp_Object);
extern Lisp_Object Fx_export_frames (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_family_fonts (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_file_dialog (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_focus_frame (Lisp_Object);
extern Lisp_Object Fx_frame_edges (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_frame_geometry (Lisp_Object);
extern Lisp_Object Fx_get_atom_name (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_get_page_setup (void);
extern Lisp_Object Fx_get_resource (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_get_selection_internal (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_hide_tip (void);
extern Lisp_Object Fx_list_fonts (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_load_color_file (Lisp_Object);
extern Lisp_Object Fx_menu_bar_open_internal (Lisp_Object);
extern Lisp_Object Fx_mouse_absolute_pixel_position (void);
extern Lisp_Object Fx_open_connection (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_own_selection_internal (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_page_setup_dialog (void);
extern Lisp_Object Fx_parse_geometry (Lisp_Object);
extern Lisp_Object Fx_popup_dialog (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_popup_menu (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_print_frames_dialog (Lisp_Object);
extern Lisp_Object Fx_register_dnd_atom (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_select_font (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_selection_exists_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_selection_owner_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_send_client_message (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_server_max_request_size (Lisp_Object);
extern Lisp_Object Fx_server_vendor (Lisp_Object);
extern Lisp_Object Fx_server_version (Lisp_Object);
extern Lisp_Object Fx_set_mouse_absolute_pixel_position (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_show_tip (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_synchronize (Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_uses_old_gtk_dialog (void);
extern Lisp_Object Fx_window_property (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object Fx_wm_set_size_hint (Lisp_Object);
extern Lisp_Object Fxw_color_defined_p (Lisp_Object, Lisp_Object);
extern Lisp_Object Fxw_color_values (Lisp_Object, Lisp_Object);
extern Lisp_Object Fxw_display_color_p (Lisp_Object);
extern Lisp_Object Fyes_or_no_p (Lisp_Object);
extern Lisp_Object Fzlib_available_p (void);
extern Lisp_Object Fzlib_decompress_region (Lisp_Object, Lisp_Object);
# 738 "./lisp.h" 2




inline EMACS_INT
(XLI) (Lisp_Object o)
{
  return (o);
}

inline Lisp_Object
(XIL) (EMACS_INT i)
{
  return (i);
}



extern ptrdiff_t const ARRAY_MARK_FLAG

;



extern ptrdiff_t const PSEUDOVECTOR_FLAG

;




enum pvec_type
{
  PVEC_NORMAL_VECTOR,
  PVEC_FREE,
  PVEC_PROCESS,
  PVEC_FRAME,
  PVEC_WINDOW,
  PVEC_BOOL_VECTOR,
  PVEC_BUFFER,
  PVEC_HASH_TABLE,
  PVEC_TERMINAL,
  PVEC_WINDOW_CONFIGURATION,
  PVEC_SUBR,
  PVEC_OTHER,
  PVEC_XWIDGET,
  PVEC_XWIDGET_VIEW,


  PVEC_COMPILED,
  PVEC_CHAR_TABLE,
  PVEC_SUB_CHAR_TABLE,
  PVEC_FONT
};

enum More_Lisp_Bits
  {





    PSEUDOVECTOR_SIZE_BITS = 12,
    PSEUDOVECTOR_SIZE_MASK = (1 << PSEUDOVECTOR_SIZE_BITS) - 1,



    PSEUDOVECTOR_REST_BITS = 12,
    PSEUDOVECTOR_REST_MASK = (((1 << PSEUDOVECTOR_REST_BITS) - 1)
         << PSEUDOVECTOR_SIZE_BITS),


    PSEUDOVECTOR_AREA_BITS = PSEUDOVECTOR_SIZE_BITS + PSEUDOVECTOR_REST_BITS,
    PVEC_TYPE_MASK = 0x3f << PSEUDOVECTOR_AREA_BITS
  };







extern EMACS_INT const VALMASK

;
# 831 "./lisp.h"
inline Lisp_Object
(make_number) (EMACS_INT n)
{
  return ((EMACS_INT) (((EMACS_UINT) (n) << INTTYPEBITS) + Lisp_Int0));
}

inline EMACS_INT
(XINT) (Lisp_Object a)
{
  return ((a) >> INTTYPEBITS);
}

inline EMACS_INT
(XFASTINT) (Lisp_Object a)
{
  EMACS_INT n = ((a) >> INTTYPEBITS);
  ((0 <= n) ? (void) 0 : __builtin_unreachable ());
  return n;
}

inline struct Lisp_Symbol *
(XSYMBOL) (Lisp_Object a)
{
  return (((void) (0 && ((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (a) - Lisp_Symbol + (char *) lispsym));
}

inline enum Lisp_Type
(XTYPE) (Lisp_Object a)
{
  return ((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1)))));
}

inline void *
(XUNTAG) (Lisp_Object a, int type)
{
  return ((void *) (intptr_t) ((a) - (type)));
}
# 949 "./lisp.h"
inline EMACS_UINT
XUINT (Lisp_Object a)
{
  EMACS_UINT i = (a);
  return ((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? i >> INTTYPEBITS : i & (9223372036854775807L >> (INTTYPEBITS - 1));
}





inline EMACS_INT
(XHASH) (Lisp_Object a)
{
  return XUINT (a);
}


inline Lisp_Object
make_natnum (EMACS_INT n)
{
  ((void) (0 && (0 <= n && n <= (9223372036854775807L >> INTTYPEBITS))));
  EMACS_INT int0 = Lisp_Int0;
  return ((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? ((EMACS_INT) (((EMACS_UINT) (n) << INTTYPEBITS) + Lisp_Int0)) : (n + (int0 << VALBITS));
}



inline _Bool
(EQ) (Lisp_Object x, Lisp_Object y)
{
  return ((x) == (y));
}
# 990 "./lisp.h"
inline ptrdiff_t
clip_to_bounds (ptrdiff_t lower, EMACS_INT num, ptrdiff_t upper)
{
  return num < lower ? lower : num <= upper ? num : upper;
}




inline struct Lisp_Cons *
(XCONS) (Lisp_Object a)
{
  return (((void) (0 && ((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((a) - (Lisp_Cons))));
}

inline struct Lisp_Vector *
XVECTOR (Lisp_Object a)
{
  ((void) (0 && ((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Vectorlike))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct Lisp_String *
XSTRING (Lisp_Object a)
{
  ((void) (0 && (STRINGP (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_String)));
}





inline struct Lisp_Float *
XFLOAT (Lisp_Object a)
{
  ((void) (0 && ((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Float))));
  return ((void *) (intptr_t) ((a) - (Lisp_Float)));
}



inline struct Lisp_Process *
XPROCESS (Lisp_Object a)
{
  ((void) (0 && (PROCESSP (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct window *
XWINDOW (Lisp_Object a)
{
  ((void) (0 && (WINDOWP (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct terminal *
XTERMINAL (Lisp_Object a)
{
  ((void) (0 && (TERMINALP (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct Lisp_Subr *
XSUBR (Lisp_Object a)
{
  ((void) (0 && (SUBRP (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct buffer *
XBUFFER (Lisp_Object a)
{
  ((void) (0 && (BUFFERP (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct Lisp_Char_Table *
XCHAR_TABLE (Lisp_Object a)
{
  ((void) (0 && (CHAR_TABLE_P (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct Lisp_Sub_Char_Table *
XSUB_CHAR_TABLE (Lisp_Object a)
{
  ((void) (0 && (SUB_CHAR_TABLE_P (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}

inline struct Lisp_Bool_Vector *
XBOOL_VECTOR (Lisp_Object a)
{
  ((void) (0 && (BOOL_VECTOR_P (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}



inline Lisp_Object
make_lisp_ptr (void *ptr, enum Lisp_Type type)
{
  Lisp_Object a = ((((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? (intptr_t) (ptr) + (type) : (EMACS_INT) (((EMACS_UINT) (type) << VALBITS) + (uintptr_t) (ptr))));
  ((void) (0 && (((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == type && ((void *) (intptr_t) ((a) - (type))) == ptr)));
  return a;
}

inline Lisp_Object
make_lisp_symbol (struct Lisp_Symbol *sym)
{
  Lisp_Object a = ((((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? (intptr_t) ((char *) sym - (char *) lispsym) + (Lisp_Symbol) : (EMACS_INT) (((EMACS_UINT) (Lisp_Symbol) << VALBITS) + (uintptr_t) ((char *) sym - (char *) lispsym))));
  ((void) (0 && ((((void) (0 && ((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (a) - Lisp_Symbol + (char *) lispsym)) == sym)));
  return a;
}

inline Lisp_Object
builtin_lisp_symbol (int index)
{
  return make_lisp_symbol (lispsym + index);
}
# 1160 "./lisp.h"
inline void *
XINTPTR (Lisp_Object a)
{
  return ((void *) (intptr_t) ((a) - (Lisp_Int0)));
}

inline Lisp_Object
make_pointer_integer (void *p)
{
  Lisp_Object a = ((((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? (intptr_t) (p) + (Lisp_Int0) : (EMACS_INT) (((EMACS_UINT) (Lisp_Int0) << VALBITS) + (uintptr_t) (p))));
  ((void) (0 && (((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && XINTPTR (a) == p)));
  return a;
}



inline void
(CHECK_TYPE) (int ok, Lisp_Object predicate, Lisp_Object x)
{
  ((ok) ? (void) 0 : (void) wrong_type_argument (predicate, x));
}



typedef struct interval *INTERVAL;

struct __attribute__ ((aligned (8))) Lisp_Cons
  {

    Lisp_Object car;

    union
    {

      Lisp_Object cdr;


      struct Lisp_Cons *chain;
    } u;
  };
# 1208 "./lisp.h"
inline Lisp_Object *
xcar_addr (Lisp_Object c)
{
  return &(((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->car;
}
inline Lisp_Object *
xcdr_addr (Lisp_Object c)
{
  return &(((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->u.cdr;
}



inline Lisp_Object
(XCAR) (Lisp_Object c)
{
  return (((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->car;
}

inline Lisp_Object
(XCDR) (Lisp_Object c)
{
  return (((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->u.cdr;
}





inline void
XSETCAR (Lisp_Object c, Lisp_Object n)
{
  *xcar_addr (c) = n;
}
inline void
XSETCDR (Lisp_Object c, Lisp_Object n)
{
  *xcdr_addr (c) = n;
}


inline Lisp_Object
CAR (Lisp_Object c)
{
  return ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->car
   : ((c) == (builtin_lisp_symbol (0))) ? builtin_lisp_symbol (0)
   : wrong_type_argument (builtin_lisp_symbol (626), c));
}
inline Lisp_Object
CDR (Lisp_Object c)
{
  return ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->u.cdr
   : ((c) == (builtin_lisp_symbol (0))) ? builtin_lisp_symbol (0)
   : wrong_type_argument (builtin_lisp_symbol (626), c));
}


inline Lisp_Object
CAR_SAFE (Lisp_Object c)
{
  return (((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->car : builtin_lisp_symbol (0);
}
inline Lisp_Object
CDR_SAFE (Lisp_Object c)
{
  return (((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((void) (0 && ((((enum Lisp_Type) ((c) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((c) - (Lisp_Cons))))->u.cdr : builtin_lisp_symbol (0);
}



struct __attribute__ ((aligned (8))) Lisp_String
  {
    ptrdiff_t size;
    ptrdiff_t size_byte;
    INTERVAL intervals;
    unsigned char *data;
  };


inline _Bool
STRING_MULTIBYTE (Lisp_Object str)
{
  return 0 <= XSTRING (str)->size_byte;
}
# 1330 "./lisp.h"
inline unsigned char *
SDATA (Lisp_Object string)
{
  return XSTRING (string)->data;
}
inline char *
SSDATA (Lisp_Object string)
{

  return (char *) SDATA (string);
}
inline unsigned char
SREF (Lisp_Object string, ptrdiff_t index)
{
  return SDATA (string)[index];
}
inline void
SSET (Lisp_Object string, ptrdiff_t index, unsigned char new)
{
  SDATA (string)[index] = new;
}
inline ptrdiff_t
SCHARS (Lisp_Object string)
{
  return XSTRING (string)->size;
}




inline ptrdiff_t
STRING_BYTES (struct Lisp_String *s)
{



  return s->size_byte < 0 ? s->size : s->size_byte;

}

inline ptrdiff_t
SBYTES (Lisp_Object string)
{
  return STRING_BYTES (XSTRING (string));
}
inline void
STRING_SET_CHARS (Lisp_Object string, ptrdiff_t newsize)
{
  XSTRING (string)->size = newsize;
}
# 1388 "./lisp.h"
struct vectorlike_header
  {
# 1409 "./lisp.h"
    ptrdiff_t size;
  };



struct Lisp_Vector
  {
    struct vectorlike_header header;
    Lisp_Object contents[];
  };


enum
  {
    ALIGNOF_STRUCT_LISP_VECTOR
      = _Alignof (union { struct vectorlike_header a; Lisp_Object b; })
  };



struct Lisp_Bool_Vector
  {


    struct vectorlike_header header;

    EMACS_INT size;




    bits_word data[];
  };

inline EMACS_INT
bool_vector_size (Lisp_Object a)
{
  EMACS_INT size = XBOOL_VECTOR (a)->size;
  ((0 <= size) ? (void) 0 : __builtin_unreachable ());
  return size;
}

inline bits_word *
bool_vector_data (Lisp_Object a)
{
  return XBOOL_VECTOR (a)->data;
}

inline unsigned char *
bool_vector_uchar_data (Lisp_Object a)
{
  return (unsigned char *) bool_vector_data (a);
}



inline EMACS_INT
bool_vector_words (EMACS_INT size)
{
  ((0 <= size && size <= 9223372036854775807L - (BITS_PER_BITS_WORD - 1)) ? (void) 0 : __builtin_unreachable ());
  return (size + BITS_PER_BITS_WORD - 1) / BITS_PER_BITS_WORD;
}

inline EMACS_INT
bool_vector_bytes (EMACS_INT size)
{
  ((0 <= size && size <= 9223372036854775807L - (BITS_PER_BITS_WORD - 1)) ? (void) 0 : __builtin_unreachable ());
  return (size + 8 - 1) / 8;
}



inline _Bool
bool_vector_bitref (Lisp_Object a, EMACS_INT i)
{
  ((0 <= i && i < bool_vector_size (a)) ? (void) 0 : __builtin_unreachable ());
  return !! (bool_vector_uchar_data (a)[i / 8]
      & (1 << (i % 8)));
}

inline Lisp_Object
bool_vector_ref (Lisp_Object a, EMACS_INT i)
{
  return bool_vector_bitref (a, i) ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0);
}



inline void
bool_vector_set (Lisp_Object a, EMACS_INT i, _Bool b)
{
  unsigned char *addr;

  ((0 <= i && i < bool_vector_size (a)) ? (void) 0 : __builtin_unreachable ());
  addr = &bool_vector_uchar_data (a)[i / 8];

  if (b)
    *addr |= 1 << (i % 8);
  else
    *addr &= ~ (1 << (i % 8));
}




enum
  {
    header_size = __builtin_offsetof(struct Lisp_Vector, contents),
    bool_header_size = __builtin_offsetof(struct Lisp_Bool_Vector, data),
    word_size = sizeof (Lisp_Object)
  };



inline Lisp_Object
AREF (Lisp_Object array, ptrdiff_t idx)
{
  return XVECTOR (array)->contents[idx];
}

inline Lisp_Object *
aref_addr (Lisp_Object array, ptrdiff_t idx)
{
  return & XVECTOR (array)->contents[idx];
}

inline ptrdiff_t
ASIZE (Lisp_Object array)
{
  ptrdiff_t size = XVECTOR (array)->header.size;
  ((0 <= size) ? (void) 0 : __builtin_unreachable ());
  return size;
}

inline ptrdiff_t
gc_asize (Lisp_Object array)
{

  return XVECTOR (array)->header.size & ~(-9223372036854775807L-1);
}

inline void
ASET (Lisp_Object array, ptrdiff_t idx, Lisp_Object val)
{
  ((void) (0 && (0 <= idx && idx < ASIZE (array))));
  XVECTOR (array)->contents[idx] = val;
}

inline void
gc_aset (Lisp_Object array, ptrdiff_t idx, Lisp_Object val)
{


  ((void) (0 && (0 <= idx && idx < gc_asize (array))));
  XVECTOR (array)->contents[idx] = val;
}




enum { NIL_IS_ZERO = (((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? (intptr_t) ((0) * sizeof *lispsym) + (Lisp_Symbol) : (EMACS_INT) (((EMACS_UINT) (Lisp_Symbol) << VALBITS) + (uintptr_t) ((0) * sizeof *lispsym))) == 0 };



inline void
memclear (void *p, ptrdiff_t nbytes)
{
  ((void) (0 && (0 <= nbytes)));
  extern int (*_gl_verify_function3 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (NIL_IS_ZERO) ? 1 : -1; }))];

  memset (p, 0, nbytes);
}
# 1619 "./lisp.h"
enum CHARTAB_SIZE_BITS
  {
    CHARTAB_SIZE_BITS_0 = 6,
    CHARTAB_SIZE_BITS_1 = 4,
    CHARTAB_SIZE_BITS_2 = 5,
    CHARTAB_SIZE_BITS_3 = 7
  };

extern const int chartab_size[4];

struct Lisp_Char_Table
  {




    struct vectorlike_header header;



    Lisp_Object defalt;




    Lisp_Object parent;



    Lisp_Object purpose;



    Lisp_Object ascii;

    Lisp_Object contents[(1 << CHARTAB_SIZE_BITS_0)];


    Lisp_Object extras[];
  };

struct Lisp_Sub_Char_Table
  {


    struct vectorlike_header header;







    int depth;


    int min_char;


    Lisp_Object contents[];
  };

inline Lisp_Object
CHAR_TABLE_REF_ASCII (Lisp_Object ct, ptrdiff_t idx)
{
  struct Lisp_Char_Table *tbl = ((void*)0);
  Lisp_Object val;
  do
    {
      tbl = tbl ? XCHAR_TABLE (tbl->parent) : XCHAR_TABLE (ct);
      val = (! SUB_CHAR_TABLE_P (tbl->ascii) ? tbl->ascii
      : XSUB_CHAR_TABLE (tbl->ascii)->contents[idx]);
      if (((val) == (builtin_lisp_symbol (0))))
 val = tbl->defalt;
    }
  while (((val) == (builtin_lisp_symbol (0))) && ! ((tbl->parent) == (builtin_lisp_symbol (0))));

  return val;
}



inline Lisp_Object
CHAR_TABLE_REF (Lisp_Object ct, int idx)
{
  return ((((sizeof ((idx) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((idx) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((idx) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((idx) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))
   ? CHAR_TABLE_REF_ASCII (ct, idx)
   : char_table_ref (ct, idx));
}



inline void
CHAR_TABLE_SET (Lisp_Object ct, int idx, Lisp_Object val)
{
  if ((((sizeof ((idx) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((idx) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((idx) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((idx) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && SUB_CHAR_TABLE_P (XCHAR_TABLE (ct)->ascii))
    set_sub_char_table_contents (XCHAR_TABLE (ct)->ascii, idx, val);
  else
    char_table_set (ct, idx, val);
}





struct Lisp_Subr
  {
    struct vectorlike_header header;
    union {
      Lisp_Object (*a0) (void);
      Lisp_Object (*a1) (Lisp_Object);
      Lisp_Object (*a2) (Lisp_Object, Lisp_Object);
      Lisp_Object (*a3) (Lisp_Object, Lisp_Object, Lisp_Object);
      Lisp_Object (*a4) (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
      Lisp_Object (*a5) (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
      Lisp_Object (*a6) (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
      Lisp_Object (*a7) (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
      Lisp_Object (*a8) (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
      Lisp_Object (*aUNEVALLED) (Lisp_Object args);
      Lisp_Object (*aMANY) (ptrdiff_t, Lisp_Object *);
    } function;
    short min_args, max_args;
    const char *symbol_name;
    const char *intspec;
    const char *doc;
  };

enum char_table_specials
  {



    CHAR_TABLE_STANDARD_SLOTS = ((__builtin_offsetof(struct Lisp_Char_Table, extras) - header_size) / word_size),



    SUB_CHAR_TABLE_OFFSET = ((__builtin_offsetof(struct Lisp_Sub_Char_Table, contents) - header_size) / word_size)
  };



inline int
CHAR_TABLE_EXTRA_SLOTS (struct Lisp_Char_Table *ct)
{
  return ((ct->header.size & PSEUDOVECTOR_SIZE_MASK)
   - CHAR_TABLE_STANDARD_SLOTS);
}


extern int (*_gl_verify_function4 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (__builtin_offsetof(struct Lisp_Sub_Char_Table, contents) == (__builtin_offsetof(struct Lisp_Vector, contents) + SUB_CHAR_TABLE_OFFSET * sizeof (Lisp_Object))) ? 1 : -1; }))];
# 1778 "./lisp.h"
inline Lisp_Object
(SYMBOL_VAL) (struct Lisp_Symbol *sym)
{
  return (((void) (0 && ((sym)->redirect == SYMBOL_PLAINVAL))), (sym)->val.value);
}

inline struct Lisp_Symbol *
SYMBOL_ALIAS (struct Lisp_Symbol *sym)
{
  ((void) (0 && (sym->redirect == SYMBOL_VARALIAS)));
  return sym->val.alias;
}
inline struct Lisp_Buffer_Local_Value *
SYMBOL_BLV (struct Lisp_Symbol *sym)
{
  ((void) (0 && (sym->redirect == SYMBOL_LOCALIZED)));
  return sym->val.blv;
}
inline union Lisp_Fwd *
SYMBOL_FWD (struct Lisp_Symbol *sym)
{
  ((void) (0 && (sym->redirect == SYMBOL_FORWARDED)));
  return sym->val.fwd;
}

inline void
(SET_SYMBOL_VAL) (struct Lisp_Symbol *sym, Lisp_Object v)
{
  (((void) (0 && ((sym)->redirect == SYMBOL_PLAINVAL))), (sym)->val.value = (v));
}

inline void
SET_SYMBOL_ALIAS (struct Lisp_Symbol *sym, struct Lisp_Symbol *v)
{
  ((void) (0 && (sym->redirect == SYMBOL_VARALIAS)));
  sym->val.alias = v;
}
inline void
SET_SYMBOL_BLV (struct Lisp_Symbol *sym, struct Lisp_Buffer_Local_Value *v)
{
  ((void) (0 && (sym->redirect == SYMBOL_LOCALIZED)));
  sym->val.blv = v;
}
inline void
SET_SYMBOL_FWD (struct Lisp_Symbol *sym, union Lisp_Fwd *v)
{
  ((void) (0 && (sym->redirect == SYMBOL_FORWARDED)));
  sym->val.fwd = v;
}

inline Lisp_Object
SYMBOL_NAME (Lisp_Object sym)
{
  return (((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->name;
}



inline _Bool
SYMBOL_INTERNED_P (Lisp_Object sym)
{
  return (((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->interned != SYMBOL_UNINTERNED;
}



inline _Bool
SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P (Lisp_Object sym)
{
  return (((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->interned == SYMBOL_INTERNED_IN_INITIAL_OBARRAY;
}





inline int
(SYMBOL_CONSTANT_P) (Lisp_Object sym)
{
  return ((((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->constant);
}
# 1871 "./lisp.h"
struct hash_table_test
{

  Lisp_Object name;


  Lisp_Object user_hash_function;


  Lisp_Object user_cmp_function;


  _Bool (*cmpfn) (struct hash_table_test *t, Lisp_Object, Lisp_Object);


  EMACS_UINT (*hashfn) (struct hash_table_test *t, Lisp_Object);
};

struct Lisp_Hash_Table
{

  struct vectorlike_header header;



  Lisp_Object weak;




  Lisp_Object rehash_size;



  Lisp_Object rehash_threshold;



  Lisp_Object hash;




  Lisp_Object next;


  Lisp_Object next_free;




  Lisp_Object index;






  ptrdiff_t count;




  Lisp_Object key_and_value;


  struct hash_table_test test;



  struct Lisp_Hash_Table *next_weak;
};


inline _Bool
HASH_TABLE_P (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_HASH_TABLE);
}

inline struct Lisp_Hash_Table *
XHASH_TABLE (Lisp_Object a)
{
  ((void) (0 && (HASH_TABLE_P (a))));
  return ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
}





inline Lisp_Object
HASH_KEY (struct Lisp_Hash_Table *h, ptrdiff_t idx)
{
  return AREF (h->key_and_value, 2 * idx);
}


inline Lisp_Object
HASH_VALUE (struct Lisp_Hash_Table *h, ptrdiff_t idx)
{
  return AREF (h->key_and_value, 2 * idx + 1);
}



inline Lisp_Object
HASH_NEXT (struct Lisp_Hash_Table *h, ptrdiff_t idx)
{
  return AREF (h->next, idx);
}


inline Lisp_Object
HASH_HASH (struct Lisp_Hash_Table *h, ptrdiff_t idx)
{
  return AREF (h->hash, idx);
}



inline Lisp_Object
HASH_INDEX (struct Lisp_Hash_Table *h, ptrdiff_t idx)
{
  return AREF (h->index, idx);
}


inline ptrdiff_t
HASH_TABLE_SIZE (struct Lisp_Hash_Table *h)
{
  return ASIZE (h->next);
}



enum DEFAULT_HASH_SIZE { DEFAULT_HASH_SIZE = 65 };





static double const DEFAULT_REHASH_THRESHOLD = 0.8;



static double const DEFAULT_REHASH_SIZE = 1.5;




inline EMACS_UINT
sxhash_combine (EMACS_UINT x, EMACS_UINT y)
{
  return (x << 4) + (x >> (BITS_PER_EMACS_INT - 4)) + y;
}



inline EMACS_UINT
SXHASH_REDUCE (EMACS_UINT x)
{
  return (x ^ x >> (BITS_PER_EMACS_INT - FIXNUM_BITS)) & (9223372036854775807L >> (INTTYPEBITS - 1));
}



struct Lisp_Misc_Any
{
  enum Lisp_Misc_Type type : 16;
  bool_bf gcmarkbit : 1;
  unsigned spacer : 15;
};

struct Lisp_Marker
{
  enum Lisp_Misc_Type type : 16;
  bool_bf gcmarkbit : 1;
  unsigned spacer : 13;



  bool_bf need_adjustment : 1;


  bool_bf insertion_type : 1;
# 2067 "./lisp.h"
  struct buffer *buffer;
# 2076 "./lisp.h"
  struct Lisp_Marker *next;

  ptrdiff_t charpos;




  ptrdiff_t bytepos;
};



struct Lisp_Overlay
# 2100 "./lisp.h"
  {
    enum Lisp_Misc_Type type : 16;
    bool_bf gcmarkbit : 1;
    unsigned spacer : 15;
    struct Lisp_Overlay *next;
    Lisp_Object start;
    Lisp_Object end;
    Lisp_Object plist;
  };



enum
  {
    SAVE_UNUSED,
    SAVE_INTEGER,
    SAVE_FUNCPOINTER,
    SAVE_POINTER,
    SAVE_OBJECT
  };


enum { SAVE_SLOT_BITS = 3 };


enum { SAVE_VALUE_SLOTS = 4 };



enum { SAVE_TYPE_BITS = SAVE_VALUE_SLOTS * SAVE_SLOT_BITS + 1 };

enum Lisp_Save_Type
  {
    SAVE_TYPE_INT_INT = SAVE_INTEGER + (SAVE_INTEGER << SAVE_SLOT_BITS),
    SAVE_TYPE_INT_INT_INT
      = (SAVE_INTEGER + (SAVE_TYPE_INT_INT << SAVE_SLOT_BITS)),
    SAVE_TYPE_OBJ_OBJ = SAVE_OBJECT + (SAVE_OBJECT << SAVE_SLOT_BITS),
    SAVE_TYPE_OBJ_OBJ_OBJ = SAVE_OBJECT + (SAVE_TYPE_OBJ_OBJ << SAVE_SLOT_BITS),
    SAVE_TYPE_OBJ_OBJ_OBJ_OBJ
      = SAVE_OBJECT + (SAVE_TYPE_OBJ_OBJ_OBJ << SAVE_SLOT_BITS),
    SAVE_TYPE_PTR_INT = SAVE_POINTER + (SAVE_INTEGER << SAVE_SLOT_BITS),
    SAVE_TYPE_PTR_OBJ = SAVE_POINTER + (SAVE_OBJECT << SAVE_SLOT_BITS),
    SAVE_TYPE_PTR_PTR = SAVE_POINTER + (SAVE_POINTER << SAVE_SLOT_BITS),
    SAVE_TYPE_FUNCPTR_PTR_OBJ
      = SAVE_FUNCPOINTER + (SAVE_TYPE_PTR_OBJ << SAVE_SLOT_BITS),


    SAVE_TYPE_MEMORY = SAVE_TYPE_PTR_INT + (1 << (SAVE_TYPE_BITS - 1))
  };
# 2175 "./lisp.h"
typedef void (*voidfuncptr) (void);

struct Lisp_Save_Value
  {
    enum Lisp_Misc_Type type : 16;
    bool_bf gcmarkbit : 1;
    unsigned spacer : 32 - (16 + 1 + SAVE_TYPE_BITS);
# 2190 "./lisp.h"
    enum Lisp_Save_Type save_type : SAVE_TYPE_BITS;
    union {
      void *pointer;
      voidfuncptr funcpointer;
      ptrdiff_t integer;
      Lisp_Object object;
    } data[SAVE_VALUE_SLOTS];
  };


inline int
save_type (struct Lisp_Save_Value *v, int n)
{
  ((void) (0 && (0 <= n && n < SAVE_VALUE_SLOTS)));
  return (v->save_type >> (SAVE_SLOT_BITS * n) & ((1 << SAVE_SLOT_BITS) - 1));
}



inline void *
XSAVE_POINTER (Lisp_Object obj, int n)
{
  ((void) (0 && (save_type (XSAVE_VALUE (obj), n) == SAVE_POINTER)));
  return XSAVE_VALUE (obj)->data[n].pointer;
}
inline void
set_save_pointer (Lisp_Object obj, int n, void *val)
{
  ((void) (0 && (save_type (XSAVE_VALUE (obj), n) == SAVE_POINTER)));
  XSAVE_VALUE (obj)->data[n].pointer = val;
}
inline voidfuncptr
XSAVE_FUNCPOINTER (Lisp_Object obj, int n)
{
  ((void) (0 && (save_type (XSAVE_VALUE (obj), n) == SAVE_FUNCPOINTER)));
  return XSAVE_VALUE (obj)->data[n].funcpointer;
}



inline ptrdiff_t
XSAVE_INTEGER (Lisp_Object obj, int n)
{
  ((void) (0 && (save_type (XSAVE_VALUE (obj), n) == SAVE_INTEGER)));
  return XSAVE_VALUE (obj)->data[n].integer;
}
inline void
set_save_integer (Lisp_Object obj, int n, ptrdiff_t val)
{
  ((void) (0 && (save_type (XSAVE_VALUE (obj), n) == SAVE_INTEGER)));
  XSAVE_VALUE (obj)->data[n].integer = val;
}



inline Lisp_Object
XSAVE_OBJECT (Lisp_Object obj, int n)
{
  ((void) (0 && (save_type (XSAVE_VALUE (obj), n) == SAVE_OBJECT)));
  return XSAVE_VALUE (obj)->data[n].object;
}
# 2265 "./lisp.h"
struct Lisp_Finalizer
  {
    struct Lisp_Misc_Any base;


    struct Lisp_Finalizer *prev;
    struct Lisp_Finalizer *next;




    Lisp_Object function;
  };


struct Lisp_Free
  {
    enum Lisp_Misc_Type type : 16;
    bool_bf gcmarkbit : 1;
    unsigned spacer : 15;
    union Lisp_Misc *chain;
  };




union Lisp_Misc
  {
    struct Lisp_Misc_Any u_any;
    struct Lisp_Free u_free;
    struct Lisp_Marker u_marker;
    struct Lisp_Overlay u_overlay;
    struct Lisp_Save_Value u_save_value;
    struct Lisp_Finalizer u_finalizer;



  };

inline union Lisp_Misc *
XMISC (Lisp_Object a)
{
  return ((void *) (intptr_t) ((a) - (Lisp_Misc)));
}

inline struct Lisp_Misc_Any *
XMISCANY (Lisp_Object a)
{
  ((void) (0 && ((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc))));
  return & XMISC (a)->u_any;
}

inline enum Lisp_Misc_Type
XMISCTYPE (Lisp_Object a)
{
  return XMISCANY (a)->type;
}

inline struct Lisp_Marker *
XMARKER (Lisp_Object a)
{
  ((void) (0 && (((((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (a) == Lisp_Misc_Marker))));
  return & XMISC (a)->u_marker;
}

inline struct Lisp_Overlay *
XOVERLAY (Lisp_Object a)
{
  ((void) (0 && (OVERLAYP (a))));
  return & XMISC (a)->u_overlay;
}

inline struct Lisp_Save_Value *
XSAVE_VALUE (Lisp_Object a)
{
  ((void) (0 && (SAVE_VALUEP (a))));
  return & XMISC (a)->u_save_value;
}

inline struct Lisp_Finalizer *
XFINALIZER (Lisp_Object a)
{
  ((void) (0 && (FINALIZERP (a))));
  return & XMISC (a)->u_finalizer;
}
# 2365 "./lisp.h"
struct Lisp_Intfwd
  {
    enum Lisp_Fwd_Type type;
    EMACS_INT *intvar;
  };





struct Lisp_Boolfwd
  {
    enum Lisp_Fwd_Type type;
    _Bool *boolvar;
  };





struct Lisp_Objfwd
  {
    enum Lisp_Fwd_Type type;
    Lisp_Object *objvar;
  };



struct Lisp_Buffer_Objfwd
  {
    enum Lisp_Fwd_Type type;
    int offset;

    Lisp_Object predicate;
  };
# 2425 "./lisp.h"
struct Lisp_Buffer_Local_Value
  {


    bool_bf local_if_set : 1;


    bool_bf frame_local : 1;


    bool_bf found : 1;

    union Lisp_Fwd *fwd;

    Lisp_Object where;


    Lisp_Object defcell;





    Lisp_Object valcell;
  };



struct Lisp_Kboard_Objfwd
  {
    enum Lisp_Fwd_Type type;
    int offset;
  };

union Lisp_Fwd
  {
    struct Lisp_Intfwd u_intfwd;
    struct Lisp_Boolfwd u_boolfwd;
    struct Lisp_Objfwd u_objfwd;
    struct Lisp_Buffer_Objfwd u_buffer_objfwd;
    struct Lisp_Kboard_Objfwd u_kboard_objfwd;
  };

inline enum Lisp_Fwd_Type
XFWDTYPE (union Lisp_Fwd *a)
{
  return a->u_intfwd.type;
}

inline struct Lisp_Buffer_Objfwd *
XBUFFER_OBJFWD (union Lisp_Fwd *a)
{
  ((void) (0 && (BUFFER_OBJFWDP (a))));
  return &a->u_buffer_objfwd;
}


struct Lisp_Float
  {
    union
    {
      double data;
      struct Lisp_Float *chain;
    } u;
  };

inline double
XFLOAT_DATA (Lisp_Object f)
{
  return XFLOAT (f)->u.data;
}
# 2504 "./lisp.h"
enum
  {
    IEEE_FLOATING_POINT
      = (2 == 2 && 24 == 24
  && (-125) == -125 && 128 == 128)
  };





typedef unsigned char UCHAR;




enum Lisp_Compiled
  {
    COMPILED_ARGLIST = 0,
    COMPILED_BYTECODE = 1,
    COMPILED_CONSTANTS = 2,
    COMPILED_STACK_DEPTH = 3,
    COMPILED_DOC_STRING = 4,
    COMPILED_INTERACTIVE = 5
  };





enum char_bits
  {
    CHAR_ALT = 0x0400000,
    CHAR_SUPER = 0x0800000,
    CHAR_HYPER = 0x1000000,
    CHAR_SHIFT = 0x2000000,
    CHAR_CTL = 0x4000000,
    CHAR_META = 0x8000000,

    CHAR_MODIFIER_MASK =
      CHAR_ALT | CHAR_SUPER | CHAR_HYPER | CHAR_SHIFT | CHAR_CTL | CHAR_META,



    CHARACTERBITS = 22
  };



inline _Bool
(NILP) (Lisp_Object x)
{
  return ((x) == (builtin_lisp_symbol (0)));
}

inline _Bool
NUMBERP (Lisp_Object x)
{
  return ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) || (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Float);
}
inline _Bool
NATNUMP (Lisp_Object x)
{
  return ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && 0 <= ((x) >> INTTYPEBITS);
}

inline _Bool
RANGED_INTEGERP (intmax_t lo, Lisp_Object x, intmax_t hi)
{
  return ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && lo <= ((x) >> INTTYPEBITS) && ((x) >> INTTYPEBITS) <= hi;
}






inline _Bool
(CONSP) (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons);
}
inline _Bool
(FLOATP) (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Float);
}
inline _Bool
(MISCP) (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc);
}
inline _Bool
(SYMBOLP) (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol);
}
inline _Bool
(INTEGERP) (Lisp_Object x)
{
  return ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0);
}
inline _Bool
(VECTORLIKEP) (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Vectorlike);
}
inline _Bool
(MARKERP) (Lisp_Object x)
{
  return ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (x) == Lisp_Misc_Marker);
}

inline _Bool
STRINGP (Lisp_Object x)
{
  return ((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_String;
}
inline _Bool
VECTORP (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Vectorlike) && ! (ASIZE (x) & ((9223372036854775807L) - (9223372036854775807L) / 2));
}
inline _Bool
OVERLAYP (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (x) == Lisp_Misc_Overlay;
}
inline _Bool
SAVE_VALUEP (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (x) == Lisp_Misc_Save_Value;
}

inline _Bool
FINALIZERP (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (x) == Lisp_Misc_Finalizer;
}
# 2652 "./lisp.h"
inline _Bool
AUTOLOADP (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && ((builtin_lisp_symbol (191)) == ((((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->car));
}

inline _Bool
BUFFER_OBJFWDP (union Lisp_Fwd *a)
{
  return XFWDTYPE (a) == Lisp_Fwd_Buffer_Obj;
}

inline _Bool
PSEUDOVECTOR_TYPEP (struct vectorlike_header *a, int code)
{
  return ((a->size & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK))
   == (((9223372036854775807L) - (9223372036854775807L) / 2) | (code << PSEUDOVECTOR_AREA_BITS)));
}


inline _Bool
PSEUDOVECTORP (Lisp_Object a, int code)
{
  if (! (((enum Lisp_Type) ((a) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Vectorlike))
    return 0;
  else
    {

      struct vectorlike_header *h = ((void *) (intptr_t) ((a) - (Lisp_Vectorlike)));
      return PSEUDOVECTOR_TYPEP (h, code);
    }
}




inline _Bool
WINDOW_CONFIGURATIONP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_WINDOW_CONFIGURATION);
}

inline _Bool
PROCESSP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_PROCESS);
}

inline _Bool
WINDOWP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_WINDOW);
}

inline _Bool
TERMINALP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_TERMINAL);
}

inline _Bool
SUBRP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_SUBR);
}

inline _Bool
COMPILEDP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_COMPILED);
}

inline _Bool
BUFFERP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_BUFFER);
}

inline _Bool
CHAR_TABLE_P (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_CHAR_TABLE);
}

inline _Bool
SUB_CHAR_TABLE_P (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_SUB_CHAR_TABLE);
}

inline _Bool
BOOL_VECTOR_P (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_BOOL_VECTOR);
}

inline _Bool
FRAMEP (Lisp_Object a)
{
  return PSEUDOVECTORP (a, PVEC_FRAME);
}


inline _Bool
IMAGEP (Lisp_Object x)
{
  return (((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && (((((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->car) == (builtin_lisp_symbol (537)));
}


inline _Bool
ARRAYP (Lisp_Object x)
{
  return VECTORP (x) || STRINGP (x) || CHAR_TABLE_P (x) || BOOL_VECTOR_P (x);
}

inline void
CHECK_LIST (Lisp_Object x)
{
  (((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) || ((x) == (builtin_lisp_symbol (0)))) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (626), x));
}

inline void
(CHECK_LIST_CONS) (Lisp_Object x, Lisp_Object y)
{
  (((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (626), y));
}

inline void
(CHECK_SYMBOL) (Lisp_Object x)
{
 (((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), x));
}

inline void
(CHECK_NUMBER) (Lisp_Object x)
{
  ((((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (559), x));
}

inline void
CHECK_STRING (Lisp_Object x)
{
  ((STRINGP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (885), x));
}
inline void
CHECK_STRING_CAR (Lisp_Object x)
{
  ((STRINGP ((((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->car)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (885), (((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->car));
}
inline void
CHECK_CONS (Lisp_Object x)
{
  (((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (296), x));
}
inline void
CHECK_VECTOR (Lisp_Object x)
{
  ((VECTORP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (996), x));
}
inline void
CHECK_BOOL_VECTOR (Lisp_Object x)
{
  ((BOOL_VECTOR_P (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (207), x));
}

inline ptrdiff_t
CHECK_VECTOR_OR_STRING (Lisp_Object x)
{
  if (VECTORP (x))
    return ASIZE (x);
  if (STRINGP (x))
    return SCHARS (x);
  wrong_type_argument (builtin_lisp_symbol (179), x);
}
inline void
CHECK_ARRAY (Lisp_Object x, Lisp_Object predicate)
{
  ((ARRAYP (x)) ? (void) 0 : (void) wrong_type_argument (predicate, x));
}
inline void
CHECK_BUFFER (Lisp_Object x)
{
  ((BUFFERP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (229), x));
}
inline void
CHECK_WINDOW (Lisp_Object x)
{
  ((WINDOWP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (1037), x));
}

inline void
CHECK_PROCESS (Lisp_Object x)
{
  ((PROCESSP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (775), x));
}

inline void
CHECK_NATNUM (Lisp_Object x)
{
  ((NATNUMP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (1015), x));
}
# 2882 "./lisp.h"
inline double
XFLOATINT (Lisp_Object n)
{
  return extract_float (n);
}

inline void
CHECK_NUMBER_OR_FLOAT (Lisp_Object x)
{
  ((NUMBERP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (711), x));
}
# 2904 "./lisp.h"
inline void
CHECK_NUMBER_CAR (Lisp_Object x)
{
  Lisp_Object tmp = (((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->car;
  ((((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (559), tmp));
  XSETCAR (x, tmp);
}

inline void
CHECK_NUMBER_CDR (Lisp_Object x)
{
  Lisp_Object tmp = (((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->u.cdr;
  ((((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (559), tmp));
  XSETCDR (x, tmp);
}
# 2966 "./lisp.h"
inline _Bool
FUNCTIONP (Lisp_Object obj)
{
  return functionp (obj);
}



extern void defsubr (struct Lisp_Subr *);

enum maxargs
  {
    MANY = -2,
    UNEVALLED = -1
  };
# 2991 "./lisp.h"
extern void defvar_lisp (struct Lisp_Objfwd *, const char *, Lisp_Object *);
extern void defvar_lisp_nopro (struct Lisp_Objfwd *, const char *, Lisp_Object *);
extern void defvar_bool (struct Lisp_Boolfwd *, const char *, _Bool *);
extern void defvar_int (struct Lisp_Intfwd *, const char *, EMACS_INT *);
extern void defvar_kboard (struct Lisp_Kboard_Objfwd *, const char *, int);
# 3051 "./lisp.h"
typedef jmp_buf sys_jmp_buf;
# 3088 "./lisp.h"
enum specbind_tag {
  SPECPDL_UNWIND,
  SPECPDL_UNWIND_PTR,
  SPECPDL_UNWIND_INT,
  SPECPDL_UNWIND_VOID,
  SPECPDL_BACKTRACE,
  SPECPDL_LET,

  SPECPDL_LET_LOCAL,
  SPECPDL_LET_DEFAULT
};

union specbinding
  {
    enum specbind_tag kind : 8;
    struct {
      enum specbind_tag kind : 8;
      void (*func) (Lisp_Object);
      Lisp_Object arg;
    } unwind;
    struct {
      enum specbind_tag kind : 8;
      void (*func) (void *);
      void *arg;
    } unwind_ptr;
    struct {
      enum specbind_tag kind : 8;
      void (*func) (int);
      int arg;
    } unwind_int;
    struct {
      enum specbind_tag kind : 8;
      void (*func) (void);
    } unwind_void;
    struct {
      enum specbind_tag kind : 8;

      Lisp_Object symbol, old_value, where;
    } let;
    struct {
      enum specbind_tag kind : 8;
      bool_bf debug_on_exit : 1;
      Lisp_Object function;
      Lisp_Object *args;
      ptrdiff_t nargs;
    } bt;
  };

extern union specbinding *specpdl;
extern union specbinding *specpdl_ptr;
extern ptrdiff_t specpdl_size;

inline ptrdiff_t
SPECPDL_INDEX (void)
{
  return specpdl_ptr - specpdl;
}
# 3168 "./lisp.h"
enum handlertype { CATCHER, CONDITION_CASE, CATCHER_ALL };

struct handler
{
  enum handlertype type;
  Lisp_Object tag_or_ch;
  Lisp_Object val;
  struct handler *next;
  struct handler *nextfree;






  Lisp_Object *bytecode_top;
  int bytecode_dest;



  sys_jmp_buf jmp;
  EMACS_INT lisp_eval_depth;
  ptrdiff_t pdlcount;
  int poll_suppress_count;
  int interrupt_input_blocked;
  struct byte_stack *byte_stack;
};

extern Lisp_Object memory_signal_data;



extern char *stack_bottom;
# 3218 "./lisp.h"
extern void process_pending_signals (void);
extern _Bool volatile pending_signals;

extern void process_quit_flag (void);
# 3235 "./lisp.h"
extern Lisp_Object Vascii_downcase_table;
extern Lisp_Object Vascii_canon_table;



void staticpro (Lisp_Object *);


struct window;
struct frame;



inline void
vcopy (Lisp_Object v, ptrdiff_t offset, Lisp_Object *args, ptrdiff_t count)
{
  ((void) (0 && (0 <= offset && 0 <= count && offset + count <= ASIZE (v))));
  memcpy (XVECTOR (v)->contents + offset, args, count * sizeof *args);
}



inline void
set_hash_key_slot (struct Lisp_Hash_Table *h, ptrdiff_t idx, Lisp_Object val)
{
  gc_aset (h->key_and_value, 2 * idx, val);
}

inline void
set_hash_value_slot (struct Lisp_Hash_Table *h, ptrdiff_t idx, Lisp_Object val)
{
  gc_aset (h->key_and_value, 2 * idx + 1, val);
}




inline void
set_symbol_function (Lisp_Object sym, Lisp_Object function)
{
  (((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->function = function;
}

inline void
set_symbol_plist (Lisp_Object sym, Lisp_Object plist)
{
  (((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->plist = plist;
}

inline void
set_symbol_next (Lisp_Object sym, struct Lisp_Symbol *next)
{
  (((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->next = next;
}



inline int
blv_found (struct Lisp_Buffer_Local_Value *blv)
{
  ((void) (0 && (blv->found == !((blv->defcell) == (blv->valcell)))));
  return blv->found;
}



inline void
set_overlay_plist (Lisp_Object overlay, Lisp_Object plist)
{
  XOVERLAY (overlay)->plist = plist;
}



inline INTERVAL
string_intervals (Lisp_Object s)
{
  return XSTRING (s)->intervals;
}



inline void
set_string_intervals (Lisp_Object s, INTERVAL i)
{
  XSTRING (s)->intervals = i;
}




inline void
set_char_table_defalt (Lisp_Object table, Lisp_Object val)
{
  XCHAR_TABLE (table)->defalt = val;
}
inline void
set_char_table_purpose (Lisp_Object table, Lisp_Object val)
{
  XCHAR_TABLE (table)->purpose = val;
}



inline void
set_char_table_extras (Lisp_Object table, ptrdiff_t idx, Lisp_Object val)
{
  ((void) (0 && (0 <= idx && idx < CHAR_TABLE_EXTRA_SLOTS (XCHAR_TABLE (table)))));
  XCHAR_TABLE (table)->extras[idx] = val;
}

inline void
set_char_table_contents (Lisp_Object table, ptrdiff_t idx, Lisp_Object val)
{
  ((void) (0 && (0 <= idx && idx < (1 << CHARTAB_SIZE_BITS_0))));
  XCHAR_TABLE (table)->contents[idx] = val;
}

inline void
set_sub_char_table_contents (Lisp_Object table, ptrdiff_t idx, Lisp_Object val)
{
  XSUB_CHAR_TABLE (table)->contents[idx] = val;
}


extern Lisp_Object indirect_function (Lisp_Object);
extern Lisp_Object find_symbol_value (Lisp_Object);
enum Arith_Comparison {
  ARITH_EQUAL,
  ARITH_NOTEQUAL,
  ARITH_LESS,
  ARITH_GRTR,
  ARITH_LESS_OR_EQUAL,
  ARITH_GRTR_OR_EQUAL
};
extern Lisp_Object arithcompare (Lisp_Object num1, Lisp_Object num2,
                                 enum Arith_Comparison comparison);
# 3380 "./lisp.h"
extern Lisp_Object intbig_to_lisp (intmax_t);
extern Lisp_Object uintbig_to_lisp (uintmax_t);
# 3390 "./lisp.h"
extern intmax_t cons_to_signed (Lisp_Object, intmax_t, intmax_t);
extern uintmax_t cons_to_unsigned (Lisp_Object, uintmax_t);

extern struct Lisp_Symbol *indirect_variable (struct Lisp_Symbol *);
extern _Noreturn void args_out_of_range (Lisp_Object, Lisp_Object);
extern _Noreturn void args_out_of_range_3 (Lisp_Object, Lisp_Object,
        Lisp_Object);
extern Lisp_Object do_symval_forwarding (union Lisp_Fwd *);
extern void set_internal (Lisp_Object, Lisp_Object, Lisp_Object, _Bool);
extern void syms_of_data (void);
extern void swap_in_global_binding (struct Lisp_Symbol *);


extern void syms_of_cmds (void);
extern void keys_of_cmds (void);


extern Lisp_Object detect_coding_system (const unsigned char *, ptrdiff_t,
                                         ptrdiff_t, _Bool, _Bool, Lisp_Object);
extern void init_coding (void);
extern void init_coding_once (void);
extern void syms_of_coding (void);


extern ptrdiff_t chars_in_text (const unsigned char *, ptrdiff_t);
extern ptrdiff_t multibyte_chars_in_text (const unsigned char *, ptrdiff_t);
extern void syms_of_character (void);


extern void init_charset (void);
extern void init_charset_once (void);
extern void syms_of_charset (void);

struct charset;


extern void init_syntax_once (void);
extern void syms_of_syntax (void);


enum { NEXT_ALMOST_PRIME_LIMIT = 11 };
extern EMACS_INT next_almost_prime (EMACS_INT) __attribute__ ((__const__));
extern Lisp_Object larger_vector (Lisp_Object, ptrdiff_t, ptrdiff_t);
extern void sweep_weak_hash_tables (void);
EMACS_UINT hash_string (char const *, ptrdiff_t);
EMACS_UINT sxhash (Lisp_Object, int);
Lisp_Object make_hash_table (struct hash_table_test, Lisp_Object, Lisp_Object,
                             Lisp_Object, Lisp_Object);
ptrdiff_t hash_lookup (struct Lisp_Hash_Table *, Lisp_Object, EMACS_UINT *);
ptrdiff_t hash_put (struct Lisp_Hash_Table *, Lisp_Object, Lisp_Object,
      EMACS_UINT);
void hash_remove_from_table (struct Lisp_Hash_Table *, Lisp_Object);
extern struct hash_table_test hashtest_eq, hashtest_eql, hashtest_equal;
extern void validate_subarray (Lisp_Object, Lisp_Object, Lisp_Object,
          ptrdiff_t, ptrdiff_t *, ptrdiff_t *);
extern Lisp_Object substring_both (Lisp_Object, ptrdiff_t, ptrdiff_t,
       ptrdiff_t, ptrdiff_t);
extern Lisp_Object merge (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object do_yes_or_no_p (Lisp_Object);
extern Lisp_Object concat2 (Lisp_Object, Lisp_Object);
extern Lisp_Object concat3 (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object nconc2 (Lisp_Object, Lisp_Object);
extern Lisp_Object assq_no_quit (Lisp_Object, Lisp_Object);
extern Lisp_Object assoc_no_quit (Lisp_Object, Lisp_Object);
extern void clear_string_char_byte_cache (void);
extern ptrdiff_t string_char_to_byte (Lisp_Object, ptrdiff_t);
extern ptrdiff_t string_byte_to_char (Lisp_Object, ptrdiff_t);
extern Lisp_Object string_to_multibyte (Lisp_Object);
extern Lisp_Object string_make_unibyte (Lisp_Object);
extern void syms_of_fns (void);


extern void syms_of_floatfns (void);
extern Lisp_Object fmod_float (Lisp_Object x, Lisp_Object y);


extern void syms_of_fringe (void);
extern void init_fringe (void);

extern void mark_fringe_data (void);
extern void init_fringe_once (void);



extern int x_bitmap_mask (struct frame *, ptrdiff_t);
extern void reset_image_types (void);
extern void syms_of_image (void);


extern void move_gap_both (ptrdiff_t, ptrdiff_t);
extern _Noreturn void buffer_overflow (void);
extern void make_gap (ptrdiff_t);
extern void make_gap_1 (struct buffer *, ptrdiff_t);
extern ptrdiff_t copy_text (const unsigned char *, unsigned char *,
       ptrdiff_t, _Bool, _Bool);
extern int count_combining_before (const unsigned char *,
       ptrdiff_t, ptrdiff_t, ptrdiff_t);
extern int count_combining_after (const unsigned char *,
      ptrdiff_t, ptrdiff_t, ptrdiff_t);
extern void insert (const char *, ptrdiff_t);
extern void insert_and_inherit (const char *, ptrdiff_t);
extern void insert_1_both (const char *, ptrdiff_t, ptrdiff_t,
      _Bool, _Bool, _Bool);
extern void insert_from_gap (ptrdiff_t, ptrdiff_t, _Bool text_at_gap_tail);
extern void insert_from_string (Lisp_Object, ptrdiff_t, ptrdiff_t,
    ptrdiff_t, ptrdiff_t, _Bool);
extern void insert_from_buffer (struct buffer *, ptrdiff_t, ptrdiff_t, _Bool);
extern void insert_char (int);
extern void insert_string (const char *);
extern void insert_before_markers (const char *, ptrdiff_t);
extern void insert_before_markers_and_inherit (const char *, ptrdiff_t);
extern void insert_from_string_before_markers (Lisp_Object, ptrdiff_t,
            ptrdiff_t, ptrdiff_t,
            ptrdiff_t, _Bool);
extern void del_range (ptrdiff_t, ptrdiff_t);
extern Lisp_Object del_range_1 (ptrdiff_t, ptrdiff_t, _Bool, _Bool);
extern void del_range_byte (ptrdiff_t, ptrdiff_t, _Bool);
extern void del_range_both (ptrdiff_t, ptrdiff_t, ptrdiff_t, ptrdiff_t, _Bool);
extern Lisp_Object del_range_2 (ptrdiff_t, ptrdiff_t,
    ptrdiff_t, ptrdiff_t, _Bool);
extern void modify_text (ptrdiff_t, ptrdiff_t);
extern void prepare_to_modify_buffer (ptrdiff_t, ptrdiff_t, ptrdiff_t *);
extern void prepare_to_modify_buffer_1 (ptrdiff_t, ptrdiff_t, ptrdiff_t *);
extern void invalidate_buffer_caches (struct buffer *, ptrdiff_t, ptrdiff_t);
extern void signal_after_change (ptrdiff_t, ptrdiff_t, ptrdiff_t);
extern void adjust_after_insert (ptrdiff_t, ptrdiff_t, ptrdiff_t,
     ptrdiff_t, ptrdiff_t);
extern void adjust_markers_for_delete (ptrdiff_t, ptrdiff_t,
           ptrdiff_t, ptrdiff_t);
extern void replace_range (ptrdiff_t, ptrdiff_t, Lisp_Object, _Bool, _Bool, _Bool, _Bool);
extern void replace_range_2 (ptrdiff_t, ptrdiff_t, ptrdiff_t, ptrdiff_t,
        const char *, ptrdiff_t, ptrdiff_t, _Bool);
extern void syms_of_insdel (void);






extern Lisp_Object Vwindow_system;
extern Lisp_Object sit_for (Lisp_Object, _Bool, int);


extern _Bool noninteractive_need_newline;
extern Lisp_Object echo_area_buffer[2];
extern void add_to_log (char const *, ...);
extern void vadd_to_log (char const *, va_list);
extern void check_message_stack (void);
extern void setup_echo_area_for_printing (_Bool);
extern _Bool push_message (void);
extern void pop_message_unwind (void);
extern Lisp_Object restore_message_unwind (Lisp_Object);
extern void restore_message (void);
extern Lisp_Object current_message (void);
extern void clear_message (_Bool, _Bool);
extern void message (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)));
extern void message1 (const char *);
extern void message1_nolog (const char *);
extern void message3 (Lisp_Object);
extern void message3_nolog (Lisp_Object);
extern void message_dolog (const char *, ptrdiff_t, _Bool, _Bool);
extern void message_with_string (const char *, Lisp_Object, _Bool);
extern void message_log_maybe_newline (void);
extern void update_echo_area (void);
extern void truncate_echo_area (ptrdiff_t);
extern void redisplay (void);

void set_frame_cursor_types (struct frame *, Lisp_Object);
extern void syms_of_xdisp (void);
extern void init_xdisp (void);
extern Lisp_Object safe_eval (Lisp_Object);
extern _Bool pos_visible_p (struct window *, ptrdiff_t, int *,
      int *, int *, int *, int *, int *);


extern void syms_of_xsettings (void);


extern void memory_warnings (void *, void (*warnfun) (const char *));


extern void parse_str_as_multibyte (const unsigned char *, ptrdiff_t,
        ptrdiff_t *, ptrdiff_t *);


extern void *my_heap_start (void);
extern void check_pure_size (void);
extern void free_misc (Lisp_Object);
extern void allocate_string_data (struct Lisp_String *, EMACS_INT, EMACS_INT);
extern void malloc_warning (const char *);
extern _Noreturn void memory_full (size_t);
extern _Noreturn void buffer_memory_full (ptrdiff_t);
extern _Bool survives_gc_p (Lisp_Object);
extern void mark_object (Lisp_Object);




extern void alloc_unexec_pre (void);
extern void alloc_unexec_post (void);




extern const char *pending_malloc_warning;
extern Lisp_Object zero_vector;
extern Lisp_Object *stack_base;
extern EMACS_INT consing_since_gc;
extern EMACS_INT gc_relative_threshold;
extern EMACS_INT memory_full_cons_threshold;
extern Lisp_Object list1 (Lisp_Object);
extern Lisp_Object list2 (Lisp_Object, Lisp_Object);
extern Lisp_Object list3 (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object list4 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object list5 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object,
     Lisp_Object);
enum constype {CONSTYPE_HEAP, CONSTYPE_PURE};
extern Lisp_Object listn (enum constype, ptrdiff_t, Lisp_Object, ...);



inline Lisp_Object
list2i (EMACS_INT x, EMACS_INT y)
{
  return list2 (((EMACS_INT) (((EMACS_UINT) (x) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (y) << INTTYPEBITS) + Lisp_Int0)));
}

inline Lisp_Object
list3i (EMACS_INT x, EMACS_INT y, EMACS_INT w)
{
  return list3 (((EMACS_INT) (((EMACS_UINT) (x) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (y) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (w) << INTTYPEBITS) + Lisp_Int0)));
}

inline Lisp_Object
list4i (EMACS_INT x, EMACS_INT y, EMACS_INT w, EMACS_INT h)
{
  return list4 (((EMACS_INT) (((EMACS_UINT) (x) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (y) << INTTYPEBITS) + Lisp_Int0)),
  ((EMACS_INT) (((EMACS_UINT) (w) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (h) << INTTYPEBITS) + Lisp_Int0)));
}

extern Lisp_Object make_uninit_bool_vector (EMACS_INT);
extern Lisp_Object bool_vector_fill (Lisp_Object, Lisp_Object);
extern _Noreturn void string_overflow (void);
extern Lisp_Object make_string (const char *, ptrdiff_t);
extern Lisp_Object make_formatted_string (char *, const char *, ...)
  __attribute__ ((__format__ (__printf__, 2, 3)));
extern Lisp_Object make_unibyte_string (const char *, ptrdiff_t);



inline Lisp_Object
build_unibyte_string (const char *str)
{
  return make_unibyte_string (str, strlen (str));
}

extern Lisp_Object make_multibyte_string (const char *, ptrdiff_t, ptrdiff_t);
extern Lisp_Object make_event_array (ptrdiff_t, Lisp_Object *);
extern Lisp_Object make_uninit_string (EMACS_INT);
extern Lisp_Object make_uninit_multibyte_string (EMACS_INT, EMACS_INT);
extern Lisp_Object make_string_from_bytes (const char *, ptrdiff_t, ptrdiff_t);
extern Lisp_Object make_specified_string (const char *,
       ptrdiff_t, ptrdiff_t, _Bool);
extern Lisp_Object make_pure_string (const char *, ptrdiff_t, ptrdiff_t, _Bool);
extern Lisp_Object make_pure_c_string (const char *, ptrdiff_t);



inline Lisp_Object
build_pure_c_string (const char *str)
{
  return make_pure_c_string (str, strlen (str));
}




inline Lisp_Object
build_string (const char *str)
{
  return make_string (str, strlen (str));
}

extern Lisp_Object pure_cons (Lisp_Object, Lisp_Object);
extern void make_byte_code (struct Lisp_Vector *);
extern struct Lisp_Vector *allocate_vector (EMACS_INT);
# 3686 "./lisp.h"
inline Lisp_Object
make_uninit_vector (ptrdiff_t size)
{
  Lisp_Object v;
  struct Lisp_Vector *p;

  p = allocate_vector (size);
  ((v) = make_lisp_ptr (p, Lisp_Vectorlike));
  return v;
}



inline Lisp_Object
make_uninit_sub_char_table (int depth, int min_char)
{
  int slots = SUB_CHAR_TABLE_OFFSET + chartab_size[depth];
  Lisp_Object v = make_uninit_vector (slots);

  ((XVECTOR (v))->header.size |= ((9223372036854775807L) - (9223372036854775807L) / 2) | ((PVEC_SUB_CHAR_TABLE) << PSEUDOVECTOR_AREA_BITS));
  XSUB_CHAR_TABLE (v)->depth = depth;
  XSUB_CHAR_TABLE (v)->min_char = min_char;
  return v;
}

extern struct Lisp_Vector *allocate_pseudovector (int, int, int,
        enum pvec_type);
# 3730 "./lisp.h"
extern _Bool gc_in_progress;
extern _Bool abort_on_gc;
extern Lisp_Object make_float (double);
extern void display_malloc_warning (void);
extern ptrdiff_t inhibit_garbage_collection (void);
extern Lisp_Object make_save_int_int_int (ptrdiff_t, ptrdiff_t, ptrdiff_t);
extern Lisp_Object make_save_obj_obj_obj_obj (Lisp_Object, Lisp_Object,
           Lisp_Object, Lisp_Object);
extern Lisp_Object make_save_ptr (void *);
extern Lisp_Object make_save_ptr_int (void *, ptrdiff_t);
extern Lisp_Object make_save_ptr_ptr (void *, void *);
extern Lisp_Object make_save_funcptr_ptr_obj (void (*) (void), void *,
           Lisp_Object);
extern Lisp_Object make_save_memory (Lisp_Object *, ptrdiff_t);
extern void free_save_value (Lisp_Object);
extern Lisp_Object build_overlay (Lisp_Object, Lisp_Object, Lisp_Object);
extern void free_marker (Lisp_Object);
extern void free_cons (struct Lisp_Cons *);
extern void init_alloc_once (void);
extern void init_alloc (void);
extern void syms_of_alloc (void);
extern struct buffer * allocate_buffer (void);
extern int valid_lisp_object_p (Lisp_Object);



inline void (check_cons_list) (void) { ((void) 0); }
# 3769 "./lisp.h"
extern Lisp_Object copy_char_table (Lisp_Object);
extern Lisp_Object char_table_ref_and_range (Lisp_Object, int,
                                             int *, int *);
extern void char_table_set_range (Lisp_Object, int, int, Lisp_Object);
extern void map_char_table (void (*) (Lisp_Object, Lisp_Object,
                            Lisp_Object),
                            Lisp_Object, Lisp_Object, Lisp_Object);
extern void map_char_table_for_charset (void (*c_function) (Lisp_Object, Lisp_Object),
     Lisp_Object, Lisp_Object,
     Lisp_Object, struct charset *,
     unsigned, unsigned);
extern Lisp_Object uniprop_table (Lisp_Object);
extern void syms_of_chartab (void);


extern Lisp_Object Vprin1_to_string_buffer;
extern void debug_print (Lisp_Object) ;
extern void temp_output_buffer_setup (const char *);
extern int print_level;
extern void write_string (const char *);
extern void print_error_message (Lisp_Object, Lisp_Object, const char *,
     Lisp_Object);
extern Lisp_Object internal_with_output_to_temp_buffer
        (const char *, Lisp_Object (*) (Lisp_Object), Lisp_Object);

extern int float_to_string (char *, double);
extern void init_print_once (void);
extern void syms_of_print (void);


extern ptrdiff_t doprnt (char *, ptrdiff_t, const char *, const char *,
    va_list);
extern ptrdiff_t esprintf (char *, char const *, ...)
  __attribute__ ((__format__ (__printf__, 2, 3)));
extern ptrdiff_t exprintf (char **, ptrdiff_t *, char const *, ptrdiff_t,
      char const *, ...)
  __attribute__ ((__format__ (__printf__, 5, 6)));
extern ptrdiff_t evxprintf (char **, ptrdiff_t *, char const *, ptrdiff_t,
       char const *, va_list)
  __attribute__ ((__format__ (__printf__, 5, 0)));


extern Lisp_Object check_obarray (Lisp_Object);
extern Lisp_Object intern_1 (const char *, ptrdiff_t);
extern Lisp_Object intern_c_string_1 (const char *, ptrdiff_t);
extern Lisp_Object intern_driver (Lisp_Object, Lisp_Object, Lisp_Object);
extern void init_symbol (Lisp_Object, Lisp_Object);
extern Lisp_Object oblookup (Lisp_Object, const char *, ptrdiff_t, ptrdiff_t);
inline void
LOADHIST_ATTACH (Lisp_Object x)
{
  if (initialized)
    globals.f_Vcurrent_load_list = Fcons (x, globals.f_Vcurrent_load_list);
}
extern int openp (Lisp_Object, Lisp_Object, Lisp_Object,
                  Lisp_Object *, Lisp_Object, _Bool);
extern Lisp_Object string_to_number (char const *, int, _Bool);
extern void map_obarray (Lisp_Object, void (*) (Lisp_Object, Lisp_Object),
                         Lisp_Object);
extern void dir_warning (const char *, Lisp_Object);
extern void init_obarray (void);
extern void init_lread (void);
extern void syms_of_lread (void);

inline Lisp_Object
intern (const char *str)
{
  return intern_1 (str, strlen (str));
}

inline Lisp_Object
intern_c_string (const char *str)
{
  return intern_c_string_1 (str, strlen (str));
}


extern Lisp_Object Vautoload_queue;
extern Lisp_Object Vrun_hooks;
extern Lisp_Object Vsignaling_function;
extern Lisp_Object inhibit_lisp_code;
extern struct handler *handlerlist;
# 3859 "./lisp.h"
extern void run_hook (Lisp_Object);
extern void run_hook_with_args_2 (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object run_hook_with_args (ptrdiff_t nargs, Lisp_Object *args,
           Lisp_Object (*funcall)
           (ptrdiff_t nargs, Lisp_Object *args));
extern _Noreturn void xsignal (Lisp_Object, Lisp_Object);
extern _Noreturn void xsignal0 (Lisp_Object);
extern _Noreturn void xsignal1 (Lisp_Object, Lisp_Object);
extern _Noreturn void xsignal2 (Lisp_Object, Lisp_Object, Lisp_Object);
extern _Noreturn void xsignal3 (Lisp_Object, Lisp_Object, Lisp_Object,
    Lisp_Object);
extern _Noreturn void signal_error (const char *, Lisp_Object);
extern Lisp_Object eval_sub (Lisp_Object form);
extern Lisp_Object apply1 (Lisp_Object, Lisp_Object);
extern Lisp_Object call0 (Lisp_Object);
extern Lisp_Object call1 (Lisp_Object, Lisp_Object);
extern Lisp_Object call2 (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object call3 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object call4 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object call5 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object call6 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object call7 (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object internal_catch (Lisp_Object, Lisp_Object (*) (Lisp_Object), Lisp_Object);
extern Lisp_Object internal_lisp_condition_case (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object internal_condition_case (Lisp_Object (*) (void), Lisp_Object, Lisp_Object (*) (Lisp_Object));
extern Lisp_Object internal_condition_case_1 (Lisp_Object (*) (Lisp_Object), Lisp_Object, Lisp_Object, Lisp_Object (*) (Lisp_Object));
extern Lisp_Object internal_condition_case_2 (Lisp_Object (*) (Lisp_Object, Lisp_Object), Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object (*) (Lisp_Object));
extern Lisp_Object internal_condition_case_n
    (Lisp_Object (*) (ptrdiff_t, Lisp_Object *), ptrdiff_t, Lisp_Object *,
     Lisp_Object, Lisp_Object (*) (Lisp_Object, ptrdiff_t, Lisp_Object *));
extern struct handler *push_handler (Lisp_Object, enum handlertype);
extern struct handler *push_handler_nosignal (Lisp_Object, enum handlertype);
extern void specbind (Lisp_Object, Lisp_Object);
extern void record_unwind_protect (void (*) (Lisp_Object), Lisp_Object);
extern void record_unwind_protect_ptr (void (*) (void *), void *);
extern void record_unwind_protect_int (void (*) (int), int);
extern void record_unwind_protect_void (void (*) (void));
extern void record_unwind_protect_nothing (void);
extern void clear_unwind_protect (ptrdiff_t);
extern void set_unwind_protect (ptrdiff_t, void (*) (Lisp_Object), Lisp_Object);
extern void set_unwind_protect_ptr (ptrdiff_t, void (*) (void *), void *);
extern Lisp_Object unbind_to (ptrdiff_t, Lisp_Object);
extern _Noreturn void error (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)));
extern _Noreturn void verror (const char *, va_list)
  __attribute__ ((__format__ (__printf__, 1, 0)));
extern void un_autoload (Lisp_Object);
extern Lisp_Object call_debugger (Lisp_Object arg);
extern void *near_C_stack_top (void);
extern void init_eval_once (void);
extern Lisp_Object safe_call (ptrdiff_t, Lisp_Object, ...);
extern Lisp_Object safe_call1 (Lisp_Object, Lisp_Object);
extern Lisp_Object safe_call2 (Lisp_Object, Lisp_Object, Lisp_Object);
extern void init_eval (void);
extern void syms_of_eval (void);
extern void unwind_body (Lisp_Object);
extern ptrdiff_t record_in_backtrace (Lisp_Object, Lisp_Object *, ptrdiff_t);
extern void mark_specpdl (void);
extern void get_backtrace (Lisp_Object array);
Lisp_Object backtrace_top_function (void);
extern _Bool let_shadows_buffer_binding_p (struct Lisp_Symbol *symbol);
extern _Bool let_shadows_global_binding_p (Lisp_Object symbol);
# 3931 "./lisp.h"
extern void insert1 (Lisp_Object);
extern Lisp_Object save_excursion_save (void);
extern Lisp_Object save_restriction_save (void);
extern void save_excursion_restore (Lisp_Object);
extern void save_restriction_restore (Lisp_Object);
extern _Noreturn void time_overflow (void);
extern Lisp_Object make_buffer_string (ptrdiff_t, ptrdiff_t, _Bool);
extern Lisp_Object make_buffer_string_both (ptrdiff_t, ptrdiff_t, ptrdiff_t,
         ptrdiff_t, _Bool);
extern void init_editfns (_Bool);
extern void syms_of_editfns (void);


extern _Bool mouse_face_overlay_overlaps (Lisp_Object);
extern _Noreturn void nsberror (Lisp_Object);
extern void adjust_overlays_for_insert (ptrdiff_t, ptrdiff_t);
extern void adjust_overlays_for_delete (ptrdiff_t, ptrdiff_t);
extern void fix_start_end_in_overlays (ptrdiff_t, ptrdiff_t);
extern void report_overlay_modification (Lisp_Object, Lisp_Object, _Bool,
                                         Lisp_Object, Lisp_Object, Lisp_Object);
extern _Bool overlay_touches_p (ptrdiff_t);
extern Lisp_Object other_buffer_safely (Lisp_Object);
extern Lisp_Object get_truename_buffer (Lisp_Object);
extern void init_buffer_once (void);
extern void init_buffer (int);
extern void syms_of_buffer (void);
extern void keys_of_buffer (void);



extern ptrdiff_t marker_position (Lisp_Object);
extern ptrdiff_t marker_byte_position (Lisp_Object);
extern void clear_charpos_cache (struct buffer *);
extern ptrdiff_t buf_charpos_to_bytepos (struct buffer *, ptrdiff_t);
extern ptrdiff_t buf_bytepos_to_charpos (struct buffer *, ptrdiff_t);
extern void unchain_marker (struct Lisp_Marker *marker);
extern Lisp_Object set_marker_restricted (Lisp_Object, Lisp_Object, Lisp_Object);
extern Lisp_Object set_marker_both (Lisp_Object, Lisp_Object, ptrdiff_t, ptrdiff_t);
extern Lisp_Object set_marker_restricted_both (Lisp_Object, Lisp_Object,
                                               ptrdiff_t, ptrdiff_t);
extern Lisp_Object build_marker (struct buffer *, ptrdiff_t, ptrdiff_t);
extern void syms_of_marker (void);



extern Lisp_Object expand_and_dir_to_file (Lisp_Object, Lisp_Object);
extern Lisp_Object write_region (Lisp_Object, Lisp_Object, Lisp_Object,
     Lisp_Object, Lisp_Object, Lisp_Object,
     Lisp_Object, int);
extern void close_file_unwind (int);
extern void fclose_unwind (void *);
extern void restore_point_unwind (Lisp_Object);
extern _Noreturn void report_file_errno (const char *, Lisp_Object, int);
extern _Noreturn void report_file_error (const char *, Lisp_Object);
extern _Noreturn void report_file_notify_error (const char *, Lisp_Object);
extern _Bool internal_delete_file (Lisp_Object);
extern Lisp_Object emacs_readlinkat (int, const char *);
extern _Bool file_directory_p (const char *);
extern _Bool file_accessible_directory_p (Lisp_Object);
extern void init_fileio (void);
extern void syms_of_fileio (void);
extern Lisp_Object make_temp_name (Lisp_Object, _Bool);


extern void shrink_regexp_cache (void);
extern void restore_search_regs (void);
extern void update_search_regs (ptrdiff_t oldstart,
                                ptrdiff_t oldend, ptrdiff_t newend);
extern void record_unwind_save_match_data (void);
struct re_registers;
extern struct re_pattern_buffer *compile_pattern (Lisp_Object,
        struct re_registers *,
        Lisp_Object, _Bool, _Bool);
extern ptrdiff_t fast_string_match_internal (Lisp_Object, Lisp_Object,
          Lisp_Object);

inline ptrdiff_t
fast_string_match (Lisp_Object regexp, Lisp_Object string)
{
  return fast_string_match_internal (regexp, string, builtin_lisp_symbol (0));
}

inline ptrdiff_t
fast_string_match_ignore_case (Lisp_Object regexp, Lisp_Object string)
{
  return fast_string_match_internal (regexp, string, Vascii_canon_table);
}

extern ptrdiff_t fast_c_string_match_ignore_case (Lisp_Object, const char *,
        ptrdiff_t);
extern ptrdiff_t fast_looking_at (Lisp_Object, ptrdiff_t, ptrdiff_t,
                                  ptrdiff_t, ptrdiff_t, Lisp_Object);
extern ptrdiff_t find_newline (ptrdiff_t, ptrdiff_t, ptrdiff_t, ptrdiff_t,
          ptrdiff_t, ptrdiff_t *, ptrdiff_t *, _Bool);
extern ptrdiff_t scan_newline (ptrdiff_t, ptrdiff_t, ptrdiff_t, ptrdiff_t,
          ptrdiff_t, _Bool);
extern ptrdiff_t scan_newline_from_point (ptrdiff_t, ptrdiff_t *, ptrdiff_t *);
extern ptrdiff_t find_newline_no_quit (ptrdiff_t, ptrdiff_t,
           ptrdiff_t, ptrdiff_t *);
extern ptrdiff_t find_before_next_newline (ptrdiff_t, ptrdiff_t,
        ptrdiff_t, ptrdiff_t *);
extern void syms_of_search (void);
extern void clear_regexp_cache (void);



extern Lisp_Object Vminibuffer_list;
extern Lisp_Object last_minibuf_string;
extern Lisp_Object get_minibuffer (EMACS_INT);
extern void init_minibuf_once (void);
extern void syms_of_minibuf (void);



extern void syms_of_callint (void);



extern void syms_of_casefiddle (void);
extern void keys_of_casefiddle (void);



extern void init_casetab_once (void);
extern void syms_of_casetab (void);



extern Lisp_Object echo_message_buffer;
extern struct kboard *echo_kboard;
extern void cancel_echoing (void);
extern _Bool input_pending;

extern sigjmp_buf return_to_command_loop;

extern Lisp_Object menu_bar_items (Lisp_Object);
extern Lisp_Object tool_bar_items (Lisp_Object, int *);
extern void discard_mouse_events (void);

void handle_input_available_signal (int);

extern Lisp_Object pending_funcalls;
extern _Bool detect_input_pending (void);
extern _Bool detect_input_pending_ignore_squeezables (void);
extern _Bool detect_input_pending_run_timers (_Bool);
extern void safe_run_hooks (Lisp_Object);
extern void cmd_error_internal (Lisp_Object, const char *);
extern Lisp_Object command_loop_1 (void);
extern Lisp_Object read_menu_command (void);
extern Lisp_Object recursive_edit_1 (void);
extern void record_auto_save (void);
extern void force_auto_save_soon (void);
extern void init_keyboard (void);
extern void syms_of_keyboard (void);
extern void keys_of_keyboard (void);


extern ptrdiff_t current_column (void);
extern void invalidate_current_column (void);
extern _Bool indented_beyond_p (ptrdiff_t, ptrdiff_t, EMACS_INT);
extern void syms_of_indent (void);


extern void store_frame_param (struct frame *, Lisp_Object, Lisp_Object);
extern void store_in_alist (Lisp_Object *, Lisp_Object, Lisp_Object);
extern Lisp_Object do_switch_frame (Lisp_Object, int, int, Lisp_Object);
extern Lisp_Object get_frame_param (struct frame *, Lisp_Object);
extern void frames_discard_buffer (Lisp_Object);
extern void syms_of_frame (void);


extern char **initial_argv;
extern int initial_argc;

extern _Bool display_arg;

extern Lisp_Object decode_env_path (const char *, const char *, _Bool);
extern Lisp_Object empty_unibyte_string, empty_multibyte_string;
extern _Noreturn void terminate_due_to_signal (int, int);




void fixup_locale (void);
void synchronize_system_messages_locale (void);
void synchronize_system_time_locale (void);





extern void shut_down_emacs (int, Lisp_Object);


extern _Bool noninteractive;


extern _Bool no_site_lisp;




extern int daemon_pipe[2];
# 4143 "./lisp.h"
extern _Bool fatal_error_in_progress;


extern _Bool inhibit_window_system;

extern _Bool running_asynch_code;


extern void kill_buffer_processes (Lisp_Object);
extern int wait_reading_process_output (intmax_t, int, int, _Bool, Lisp_Object,
     struct Lisp_Process *, int);
# 4163 "./lisp.h"
extern void add_timer_wait_descriptor (int);

extern void add_keyboard_wait_descriptor (int);
extern void delete_keyboard_wait_descriptor (int);




extern void init_process_emacs (void);
extern void syms_of_process (void);
extern void setup_process_coding_systems (Lisp_Object);



 _Noreturn

extern int child_setup (int, int, int, char **, _Bool, Lisp_Object);
extern void init_callproc_1 (void);
extern void init_callproc (void);
extern void set_initial_environment (void);
extern void syms_of_callproc (void);


enum text_quoting_style
  {

    CURVE_QUOTING_STYLE,


    GRAVE_QUOTING_STYLE,


    STRAIGHT_QUOTING_STYLE
  };
extern enum text_quoting_style text_quoting_style (void);
extern Lisp_Object read_doc_string (Lisp_Object);
extern Lisp_Object get_doc_string (Lisp_Object, _Bool, _Bool);
extern void syms_of_doc (void);
extern int read_bytecode_char (_Bool);


extern void syms_of_bytecode (void);
extern struct byte_stack *byte_stack_list;
extern void relocate_byte_stack (void);
extern Lisp_Object exec_byte_code (Lisp_Object, Lisp_Object, Lisp_Object,
       Lisp_Object, ptrdiff_t, Lisp_Object *);


extern void init_macros (void);
extern void syms_of_macros (void);


extern void truncate_undo_list (struct buffer *);
extern void record_insert (ptrdiff_t, ptrdiff_t);
extern void record_delete (ptrdiff_t, Lisp_Object, _Bool);
extern void record_first_change (void);
extern void record_change (ptrdiff_t, ptrdiff_t);
extern void record_property_change (ptrdiff_t, ptrdiff_t,
        Lisp_Object, Lisp_Object,
                                    Lisp_Object);
extern void syms_of_undo (void);


extern void report_interval_modification (Lisp_Object, Lisp_Object);


extern void syms_of_menu (void);


extern void syms_of_xmenu (void);


struct tty_display_info;


struct terminal;





extern void stuff_char (char c);
extern void init_foreground_group (void);
extern void sys_subshell (void);
extern void sys_suspend (void);
extern void discard_tty_input (void);
extern void init_sys_modes (struct tty_display_info *);
extern void reset_sys_modes (struct tty_display_info *);
extern void init_all_sys_modes (void);
extern void reset_all_sys_modes (void);
extern void child_setup_tty (int);
extern void setup_pty (int);
extern int set_window_size (int, int, int);
extern EMACS_INT get_random (void);
extern void seed_random (void *, ptrdiff_t);
extern void init_random (void);
extern void emacs_backtrace (int);
extern _Noreturn void emacs_abort (void) __attribute__((noinline));
extern int emacs_open (const char *, int, int);
extern int emacs_pipe (int[2]);
extern int emacs_close (int);
extern ptrdiff_t emacs_read (int, void *, ptrdiff_t);
extern ptrdiff_t emacs_write (int, void const *, ptrdiff_t);
extern ptrdiff_t emacs_write_sig (int, void const *, ptrdiff_t);
extern void emacs_perror (char const *);

extern void unlock_all_files (void);
extern void lock_file (Lisp_Object);
extern void unlock_file (Lisp_Object);
extern void unlock_buffer (struct buffer *);
extern void syms_of_filelock (void);
extern int str_collate (Lisp_Object, Lisp_Object, Lisp_Object, Lisp_Object);


extern void syms_of_sound (void);


extern void init_category_once (void);
extern Lisp_Object char_category_set (int);
extern void syms_of_category (void);


extern void syms_of_ccl (void);


extern void syms_of_dired (void);
extern Lisp_Object directory_files_internal (Lisp_Object, Lisp_Object,
                                             Lisp_Object, Lisp_Object,
                                             _Bool, Lisp_Object);


extern int *char_ins_del_vector;
extern void syms_of_term (void);
extern _Noreturn void fatal (const char *msgid, ...)
  __attribute__ ((__format__ (__printf__, 1, 2)));


extern void syms_of_terminal (void);


extern void syms_of_font (void);
extern void init_font (void);



extern void syms_of_fontset (void);




extern void syms_of_inotify (void);
# 4334 "./lisp.h"
extern Lisp_Object Vface_alternative_font_family_alist;
extern Lisp_Object Vface_alternative_font_registry_alist;
extern void syms_of_xfaces (void);



extern void syms_of_xfns (void);


extern void syms_of_xsmfns (void);


extern void syms_of_xselect (void);


extern void init_xterm (void);
extern void syms_of_xterm (void);




extern char *x_get_keysym_name (int);
# 4366 "./lisp.h"
extern void syms_of_decompress (void);
# 4377 "./lisp.h"
extern _Bool profiler_memory_running;
extern void malloc_probe (size_t);
extern void syms_of_profiler (void);
# 4388 "./lisp.h"
extern char my_edata[];
extern char my_endbss[];
extern char *my_endbss_static;


extern _Bool immediate_quit;

extern void *xmalloc (size_t) __attribute__ ((__malloc__)) ;
extern void *xzalloc (size_t) __attribute__ ((__malloc__)) ;
extern void *xrealloc (void *, size_t) ;
extern void xfree (void *);
extern void *xnmalloc (ptrdiff_t, ptrdiff_t) __attribute__ ((__malloc__)) ;
extern void *xnrealloc (void *, ptrdiff_t, ptrdiff_t)
                              ;
extern void *xpalloc (void *, ptrdiff_t *, ptrdiff_t, ptrdiff_t, ptrdiff_t);

extern char *xstrdup (const char *) __attribute__ ((__malloc__));
extern char *xlispstrdup (Lisp_Object) __attribute__ ((__malloc__));
extern void dupstring (char **, char const *);




inline char *
lispstpcpy (char *dest, Lisp_Object string)
{
  ptrdiff_t len = SBYTES (string);
  memcpy (dest, SDATA (string), len + 1);
  return dest + len;
}

extern void xputenv (const char *);

extern char *egetenv_internal (const char *, ptrdiff_t);

inline char *
egetenv (const char *var)
{

  return egetenv_internal (var, strlen (var));
}


extern void init_system_name (void);
# 4448 "./lisp.h"
enum MAX_ALLOCA { MAX_ALLOCA = 16 * 1024 };

extern void *record_xmalloc (size_t) ;
# 4541 "./lisp.h"
enum { defined_GC_CHECK_STRING_BYTES = 0 };




union Aligned_Cons
{
  struct Lisp_Cons s;
  double d; intmax_t i; void *p;
};

union Aligned_String
{
  struct Lisp_String s;
  double d; intmax_t i; void *p;
};






enum
  {
    USE_STACK_CONS = (1
        && _Alignof (union Aligned_Cons) % 8 == 0),
    USE_STACK_STRING = (USE_STACK_CONS
   && !defined_GC_CHECK_STRING_BYTES
   && _Alignof (union Aligned_String) % 8 == 0)
  };
# 4649 "./lisp.h"
inline void
maybe_gc (void)
{
  if ((consing_since_gc > globals.f_gc_cons_threshold
       && consing_since_gc > gc_relative_threshold)
      || (!((globals.f_Vmemory_full) == (builtin_lisp_symbol (0)))
   && consing_since_gc > memory_full_cons_threshold))
    Fgarbage_collect ();
}

inline _Bool
functionp (Lisp_Object object)
{
  if ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol) && !((Ffboundp (object)) == (builtin_lisp_symbol (0))))
    {
      object = Findirect_function (object, builtin_lisp_symbol (901));

      if ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && (((((void) (0 && ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((object) - (Lisp_Cons))))->car) == (builtin_lisp_symbol (191))))
 {


   int i;
   for (i = 0; i < 4 && (((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); i++)
     object = (((void) (0 && ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((object) - (Lisp_Cons))))->u.cdr;

   return ! ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && !(((((void) (0 && ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((object) - (Lisp_Cons))))->car) == (builtin_lisp_symbol (0))));
 }
    }

  if (SUBRP (object))
    return XSUBR (object)->max_args != UNEVALLED;
  else if (COMPILEDP (object))
    return 1;
  else if ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
    {
      Lisp_Object car = (((void) (0 && ((((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((object) - (Lisp_Cons))))->car;
      return ((car) == (builtin_lisp_symbol (598))) || ((car) == (builtin_lisp_symbol (271)));
    }
  else
    return 0;
}
# 131 "regex.c" 2
# 1 "./character.h" 1
# 64 "./character.h"
enum
{
  NO_BREAK_SPACE = 0x00A0,
  SOFT_HYPHEN = 0x00AD,
  ZERO_WIDTH_NON_JOINER = 0x200C,
  ZERO_WIDTH_JOINER = 0x200D,
  HYPHEN = 0x2010,
  NON_BREAKING_HYPHEN = 0x2011,
  LEFT_SINGLE_QUOTATION_MARK = 0x2018,
  RIGHT_SINGLE_QUOTATION_MARK = 0x2019,
  PARAGRAPH_SEPARATOR = 0x2029,
  LEFT_POINTING_ANGLE_BRACKET = 0x2329,
  RIGHT_POINTING_ANGLE_BRACKET = 0x232A,
  LEFT_ANGLE_BRACKET = 0x3008,
  RIGHT_ANGLE_BRACKET = 0x3009,
  OBJECT_REPLACEMENT_CHARACTER = 0xFFFC,
};
# 565 "./character.h"
inline int
sanitize_tab_width (EMACS_INT width)
{
  return 0 < width && width <= 1000 ? width : 8;
}
# 586 "./character.h"
inline int
sanitize_char_width (EMACS_INT width)
{
  return 0 <= width && width <= 1000 ? width : 1000;
}
# 626 "./character.h"
typedef enum {
  UNICODE_CATEGORY_UNKNOWN = 0,
  UNICODE_CATEGORY_Lu,
  UNICODE_CATEGORY_Ll,
  UNICODE_CATEGORY_Lt,
  UNICODE_CATEGORY_Lm,
  UNICODE_CATEGORY_Lo,
  UNICODE_CATEGORY_Mn,
  UNICODE_CATEGORY_Mc,
  UNICODE_CATEGORY_Me,
  UNICODE_CATEGORY_Nd,
  UNICODE_CATEGORY_Nl,
  UNICODE_CATEGORY_No,
  UNICODE_CATEGORY_Pc,
  UNICODE_CATEGORY_Pd,
  UNICODE_CATEGORY_Ps,
  UNICODE_CATEGORY_Pe,
  UNICODE_CATEGORY_Pi,
  UNICODE_CATEGORY_Pf,
  UNICODE_CATEGORY_Po,
  UNICODE_CATEGORY_Sm,
  UNICODE_CATEGORY_Sc,
  UNICODE_CATEGORY_Sk,
  UNICODE_CATEGORY_So,
  UNICODE_CATEGORY_Zs,
  UNICODE_CATEGORY_Zl,
  UNICODE_CATEGORY_Zp,
  UNICODE_CATEGORY_Cc,
  UNICODE_CATEGORY_Cf,
  UNICODE_CATEGORY_Cs,
  UNICODE_CATEGORY_Co,
  UNICODE_CATEGORY_Cn
} unicode_category_t;

extern EMACS_INT char_resolve_modifier_mask (EMACS_INT) __attribute__ ((__const__));
extern int char_string (unsigned, unsigned char *);
extern int string_char (const unsigned char *,
                        const unsigned char **, int *);

extern int translate_char (Lisp_Object, int c);
extern ptrdiff_t count_size_as_multibyte (const unsigned char *, ptrdiff_t);
extern ptrdiff_t str_as_multibyte (unsigned char *, ptrdiff_t, ptrdiff_t,
       ptrdiff_t *);
extern ptrdiff_t str_to_multibyte (unsigned char *, ptrdiff_t, ptrdiff_t);
extern ptrdiff_t str_as_unibyte (unsigned char *, ptrdiff_t);
extern ptrdiff_t str_to_unibyte (const unsigned char *, unsigned char *,
                                 ptrdiff_t);
extern ptrdiff_t strwidth (const char *, ptrdiff_t);
extern ptrdiff_t c_string_width (const unsigned char *, ptrdiff_t, int,
     ptrdiff_t *, ptrdiff_t *);
extern ptrdiff_t lisp_string_width (Lisp_Object, ptrdiff_t,
        ptrdiff_t *, ptrdiff_t *);

extern Lisp_Object Vchar_unify_table;
extern Lisp_Object string_escape_byte8 (Lisp_Object);

extern _Bool alphabeticp (int);
extern _Bool decimalnump (int);
extern _Bool graphicp (int);
extern _Bool printablep (int);
# 694 "./character.h"
inline int
char_table_translate (Lisp_Object obj, int ch)
{


  ((void) (0 && ((((sizeof ((ch) + 0)) > (sizeof ((0x3FFFFF) + 0)) ? (sizeof ((ch) + 0)) : (sizeof ((0x3FFFFF) + 0))) <= sizeof (unsigned) ? ((ch) + (unsigned) 0) <= ((0x3FFFFF) + (unsigned) 0) : ((ch) + (uintmax_t) 0) <= ((0x3FFFFF) + (uintmax_t) 0)))));
  ((void) (0 && (CHAR_TABLE_P (obj))));
  obj = CHAR_TABLE_REF (obj, ch);
  return (NATNUMP (obj) && ((obj) >> INTTYPEBITS) <= 0x3FFFFF) ? ((obj) >> INTTYPEBITS) : ch;
}
# 132 "regex.c" 2
# 1 "./buffer.h" 1
# 24 "./buffer.h"
# 1 "../lib/sys/types.h" 1
# 21 "../lib/sys/types.h" 3
# 25 "./buffer.h" 2
# 1 "../lib/time.h" 1
# 21 "../lib/time.h" 3
# 41 "../lib/time.h" 3
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 86 "/usr/include/bits/time.h" 3 4
# 1 "/usr/include/bits/timex.h" 1 3 4
# 25 "/usr/include/bits/timex.h" 3 4
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;

  int tai;


  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
# 87 "/usr/include/bits/time.h" 2 3 4




extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) __attribute__ ((__nothrow__ ));
# 42 "/usr/include/time.h" 2 3 4
# 133 "/usr/include/time.h" 3 4
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};
# 161 "/usr/include/time.h" 3 4
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 189 "/usr/include/time.h" 3 4
extern clock_t clock (void) __attribute__ ((__nothrow__ ));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));





extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ ));







extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));



extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    __locale_t __loc) __attribute__ ((__nothrow__ ));






extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ ));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ ));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ ));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ ));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 403 "/usr/include/time.h" 3 4
extern int getdate_err;
# 412 "/usr/include/time.h" 3 4
extern struct tm *getdate (const char *__string);
# 426 "/usr/include/time.h" 3 4
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);
# 42 "../lib/time.h" 2 3


# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 45 "../lib/time.h" 2 3
# 404 "../lib/time.h" 3
struct __time_t_must_be_integral {
  unsigned int __floating_time_t_unsupported : (time_t) 1;
};
# 444 "../lib/time.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 469 "../lib/time.h" 3
extern int _gl_cxxalias_dummy;



extern int _gl_cxxalias_dummy;
# 491 "../lib/time.h" 3
extern int _gl_cxxalias_dummy;



extern int _gl_cxxalias_dummy;
# 512 "../lib/time.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 527 "../lib/time.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 549 "../lib/time.h" 3
typedef struct tm_zone *timezone_t;
extern timezone_t tzalloc (char const *__name);
extern int _gl_cxxalias_dummy;
extern void tzfree (timezone_t __tz);
extern int _gl_cxxalias_dummy;
extern struct tm * localtime_rz (timezone_t __tz, time_t const *__restrict __timer, struct tm *__restrict __result) __attribute__ ((__nonnull__ (2, 3)));


extern int _gl_cxxalias_dummy;


extern time_t mktime_z (timezone_t __tz, struct tm *__restrict __result) __attribute__ ((__nonnull__ (2)));


extern int _gl_cxxalias_dummy;
# 580 "../lib/time.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 26 "./buffer.h" 2
# 250 "./buffer.h"
extern void set_point (ptrdiff_t);
extern void temp_set_point (struct buffer *, ptrdiff_t);
extern void set_point_both (ptrdiff_t, ptrdiff_t);
extern void temp_set_point_both (struct buffer *,
     ptrdiff_t, ptrdiff_t);
extern void set_point_from_marker (Lisp_Object);
extern void enlarge_buffer_text (struct buffer *, ptrdiff_t);
# 425 "./buffer.h"
struct buffer_text
  {




    unsigned char *beg;

    ptrdiff_t gpt;
    ptrdiff_t z;
    ptrdiff_t gpt_byte;
    ptrdiff_t z_byte;
    ptrdiff_t gap_size;
    EMACS_INT modiff;



    EMACS_INT chars_modiff;



    EMACS_INT save_modiff;


    EMACS_INT overlay_modiff;

    EMACS_INT compact;



    ptrdiff_t beg_unchanged;


    ptrdiff_t end_unchanged;



    EMACS_INT unchanged_modified;




    EMACS_INT overlay_unchanged_modified;


    INTERVAL intervals;
# 479 "./buffer.h"
    struct Lisp_Marker *markers;




    bool_bf inhibit_shrinking : 1;


    bool_bf redisplay : 1;
  };







struct buffer
{
  struct vectorlike_header header;


  Lisp_Object name_;


  Lisp_Object filename_;


  Lisp_Object directory_;



  Lisp_Object backed_up_;







  Lisp_Object save_length_;




  Lisp_Object auto_save_file_name_;


  Lisp_Object read_only_;



  Lisp_Object mark_;




  Lisp_Object local_var_alist_;


  Lisp_Object major_mode_;


  Lisp_Object mode_name_;


  Lisp_Object mode_line_format_;



  Lisp_Object header_line_format_;


  Lisp_Object keymap_;


  Lisp_Object abbrev_table_;


  Lisp_Object syntax_table_;


  Lisp_Object category_table_;




  Lisp_Object case_fold_search_;
  Lisp_Object tab_width_;
  Lisp_Object fill_column_;
  Lisp_Object left_margin_;


  Lisp_Object auto_fill_function_;



  Lisp_Object downcase_table_;


  Lisp_Object upcase_table_;


  Lisp_Object case_canon_table_;


  Lisp_Object case_eqv_table_;


  Lisp_Object truncate_lines_;


  Lisp_Object word_wrap_;


  Lisp_Object ctl_arrow_;



  Lisp_Object bidi_display_reordering_;




  Lisp_Object bidi_paragraph_direction_;



  Lisp_Object selective_display_;


  Lisp_Object selective_display_ellipses_;


  Lisp_Object minor_modes_;



  Lisp_Object overwrite_mode_;


  Lisp_Object abbrev_mode_;


  Lisp_Object display_table_;


  Lisp_Object mark_active_;



  Lisp_Object enable_multibyte_characters_;



  Lisp_Object buffer_file_coding_system_;


  Lisp_Object file_format_;


  Lisp_Object auto_save_file_format_;



  Lisp_Object cache_long_scans_;







  Lisp_Object width_table_;




  Lisp_Object pt_marker_;




  Lisp_Object begv_marker_;




  Lisp_Object zv_marker_;



  Lisp_Object point_before_scroll_;


  Lisp_Object file_truename_;





  Lisp_Object invisibility_spec_;



  Lisp_Object last_selected_window_;


  Lisp_Object display_count_;



  Lisp_Object left_margin_cols_;
  Lisp_Object right_margin_cols_;



  Lisp_Object left_fringe_width_;
  Lisp_Object right_fringe_width_;



  Lisp_Object fringes_outside_margins_;



  Lisp_Object scroll_bar_width_;
  Lisp_Object scroll_bar_height_;
  Lisp_Object vertical_scroll_bar_type_;
  Lisp_Object horizontal_scroll_bar_type_;



  Lisp_Object indicate_empty_lines_;


  Lisp_Object indicate_buffer_boundaries_;


  Lisp_Object fringe_indicator_alist_;


  Lisp_Object fringe_cursor_alist_;


  Lisp_Object display_time_;





  Lisp_Object scroll_up_aggressively_;





  Lisp_Object scroll_down_aggressively_;



  Lisp_Object cursor_type_;



  Lisp_Object extra_line_spacing_;




  Lisp_Object cursor_in_non_selected_windows_;






  struct buffer_text own_text;




  struct buffer_text *text;


  struct buffer *next;


  ptrdiff_t pt;


  ptrdiff_t pt_byte;


  ptrdiff_t begv;


  ptrdiff_t begv_byte;


  ptrdiff_t zv;


  ptrdiff_t zv_byte;



  struct buffer *base_buffer;




  int indirections;



  int window_count;







  char local_flags[50];
# 812 "./buffer.h"
  struct timespec modtime;






  off_t modtime_size;


  EMACS_INT auto_save_modified;



  EMACS_INT display_error_modiff;



  time_t auto_save_failure_time;



  ptrdiff_t last_window_start;
# 854 "./buffer.h"
  struct region_cache *newline_cache;
  struct region_cache *width_run_cache;
  struct region_cache *bidi_paragraph_cache;



  bool_bf prevent_redisplay_optimizations_p : 1;


  bool_bf clip_changed : 1;



  struct Lisp_Overlay *overlays_before;



  struct Lisp_Overlay *overlays_after;


  ptrdiff_t overlay_center;






  Lisp_Object undo_list_;
};




inline void
bset_bidi_paragraph_direction (struct buffer *b, Lisp_Object val)
{
  b->bidi_paragraph_direction_ = val;
}
inline void
bset_cache_long_scans (struct buffer *b, Lisp_Object val)
{
  b->cache_long_scans_ = val;
}
inline void
bset_case_canon_table (struct buffer *b, Lisp_Object val)
{
  b->case_canon_table_ = val;
}
inline void
bset_case_eqv_table (struct buffer *b, Lisp_Object val)
{
  b->case_eqv_table_ = val;
}
inline void
bset_directory (struct buffer *b, Lisp_Object val)
{
  b->directory_ = val;
}
inline void
bset_display_count (struct buffer *b, Lisp_Object val)
{
  b->display_count_ = val;
}
inline void
bset_display_time (struct buffer *b, Lisp_Object val)
{
  b->display_time_ = val;
}
inline void
bset_downcase_table (struct buffer *b, Lisp_Object val)
{
  b->downcase_table_ = val;
}
inline void
bset_enable_multibyte_characters (struct buffer *b, Lisp_Object val)
{
  b->enable_multibyte_characters_ = val;
}
inline void
bset_filename (struct buffer *b, Lisp_Object val)
{
  b->filename_ = val;
}
inline void
bset_keymap (struct buffer *b, Lisp_Object val)
{
  b->keymap_ = val;
}
inline void
bset_last_selected_window (struct buffer *b, Lisp_Object val)
{
  b->last_selected_window_ = val;
}
inline void
bset_local_var_alist (struct buffer *b, Lisp_Object val)
{
  b->local_var_alist_ = val;
}
inline void
bset_mark_active (struct buffer *b, Lisp_Object val)
{
  b->mark_active_ = val;
}
inline void
bset_point_before_scroll (struct buffer *b, Lisp_Object val)
{
  b->point_before_scroll_ = val;
}
inline void
bset_read_only (struct buffer *b, Lisp_Object val)
{
  b->read_only_ = val;
}
inline void
bset_truncate_lines (struct buffer *b, Lisp_Object val)
{
  b->truncate_lines_ = val;
}
inline void
bset_undo_list (struct buffer *b, Lisp_Object val)
{
  b->undo_list_ = val;
}
inline void
bset_upcase_table (struct buffer *b, Lisp_Object val)
{
  b->upcase_table_ = val;
}
inline void
bset_width_table (struct buffer *b, Lisp_Object val)
{
  b->width_table_ = val;
}
# 1036 "./buffer.h"
extern struct buffer *all_buffers;
# 1045 "./buffer.h"
extern struct buffer *current_buffer;
# 1054 "./buffer.h"
extern struct buffer buffer_defaults;
# 1070 "./buffer.h"
extern struct buffer buffer_local_flags;





extern struct buffer buffer_local_symbols;

extern void delete_all_overlays (struct buffer *);
extern void reset_buffer (struct buffer *);
extern void compact_buffer (struct buffer *);
extern void evaporate_overlays (ptrdiff_t);
extern ptrdiff_t overlays_at (EMACS_INT, _Bool, Lisp_Object **,
         ptrdiff_t *, ptrdiff_t *, ptrdiff_t *, _Bool);
extern ptrdiff_t sort_overlays (Lisp_Object *, ptrdiff_t, struct window *);
extern void recenter_overlay_lists (struct buffer *, ptrdiff_t);
extern ptrdiff_t overlay_strings (ptrdiff_t, struct window *, unsigned char **);
extern void validate_region (Lisp_Object *, Lisp_Object *);
extern void set_buffer_internal_1 (struct buffer *);
extern void set_buffer_temp (struct buffer *);
extern Lisp_Object buffer_local_value (Lisp_Object, Lisp_Object);
extern void record_buffer (Lisp_Object);
extern void fix_overlays_before (struct buffer *, ptrdiff_t, ptrdiff_t);
extern void mmap_set_vars (_Bool);
extern void restore_buffer (Lisp_Object);
extern void set_buffer_if_live (Lisp_Object);



inline struct buffer *
decode_buffer (Lisp_Object b)
{
  return ((b) == (builtin_lisp_symbol (0))) ? current_buffer : (CHECK_BUFFER (b), XBUFFER (b));
}
# 1114 "./buffer.h"
inline void
set_buffer_internal (struct buffer *b)
{
  if (current_buffer != b)
    set_buffer_internal_1 (b);
}




inline void
record_unwind_current_buffer (void)
{
  record_unwind_protect (set_buffer_if_live, Fcurrent_buffer ());
}
# 1149 "./buffer.h"
extern Lisp_Object Vbuffer_alist;
# 1159 "./buffer.h"
inline INTERVAL
buffer_intervals (struct buffer *b)
{
  ((void) (0 && (b->text != ((void*)0))));
  return b->text->intervals;
}



inline void
set_buffer_intervals (struct buffer *b, INTERVAL i)
{
  ((void) (0 && (b->text != ((void*)0))));
  b->text->intervals = i;
}



inline _Bool
buffer_has_overlays (void)
{
  return current_buffer->overlays_before || current_buffer->overlays_after;
}
# 1197 "./buffer.h"
inline int
FETCH_MULTIBYTE_CHAR (ptrdiff_t pos)
{
  unsigned char *p = ((pos >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0)
        + pos + (current_buffer->text->beg) - ((1)));
  return (!((p)[0] & 0x80) ? (p)[0] : ! ((p)[0] & 0x20) ? (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((p)[0] & 0x10) ? ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F)) : string_char ((p), ((void*)0), ((void*)0)));
}





inline int
BUF_FETCH_MULTIBYTE_CHAR (struct buffer *buf, ptrdiff_t pos)
{
  unsigned char *p
    = ((pos >= ((buf)->text->gpt_byte) ? ((buf)->text->gap_size) : 0)
       + pos + ((buf)->text->beg) - ((1)));
  return (!((p)[0] & 0x80) ? (p)[0] : ! ((p)[0] & 0x20) ? (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((p)[0] & 0x10) ? ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F)) : string_char ((p), ((void*)0), ((void*)0)));
}



inline int
buffer_window_count (struct buffer *b)
{
  if (b->base_buffer)
    b = b->base_buffer;
  ((void) (0 && (b->window_count >= 0)));
  return b->window_count;
}
# 1256 "./buffer.h"
extern int last_per_buffer_idx;
# 1327 "./buffer.h"
inline Lisp_Object
per_buffer_default (int offset)
{
  return *(Lisp_Object *)(offset + (char *) &buffer_defaults);
}

inline void
set_per_buffer_default (int offset, Lisp_Object value)
{
  *(Lisp_Object *)(offset + (char *) &buffer_defaults) = value;
}




inline Lisp_Object
per_buffer_value (struct buffer *b, int offset)
{
  return *(Lisp_Object *)(offset + (char *) b);
}

inline void
set_per_buffer_value (struct buffer *b, int offset, Lisp_Object value)
{
  *(Lisp_Object *)(offset + (char *) b) = value;
}


inline int
downcase (int c)
{
  Lisp_Object downcase_table = ((current_buffer)-> downcase_table_);
  Lisp_Object down = CHAR_TABLE_REF (downcase_table, c);
  return NATNUMP (down) ? ((down) >> INTTYPEBITS) : c;
}


inline _Bool uppercasep (int c) { return downcase (c) != c; }


inline int
upcase1 (int c)
{
  Lisp_Object upcase_table = ((current_buffer)-> upcase_table_);
  Lisp_Object up = CHAR_TABLE_REF (upcase_table, c);
  return NATNUMP (up) ? ((up) >> INTTYPEBITS) : c;
}


inline _Bool
lowercasep (int c)
{
  return !uppercasep (c) && upcase1 (c) != c;
}


inline int upcase (int c) { return uppercasep (c) ? c : upcase1 (c); }
# 133 "regex.c" 2

# 1 "./syntax.h" 1
# 29 "./syntax.h"
extern void update_syntax_table (ptrdiff_t, EMACS_INT, _Bool, Lisp_Object);
extern void update_syntax_table_forward (ptrdiff_t, _Bool, Lisp_Object);
# 42 "./syntax.h"
enum syntaxcode
  {
    Swhitespace,
    Spunct,
    Sword,
    Ssymbol,
    Sopen,
    Sclose,
    Squote,
    Sstring,
    Smath,
    Sescape,
    Scharquote,
    Scomment,
    Sendcomment,
    Sinherit,
    Scomment_fence,

    Sstring_fence,

    Smax
  };


struct gl_state_s
{
  Lisp_Object object;
  ptrdiff_t start;
  ptrdiff_t stop;
  _Bool use_global;

  Lisp_Object global_code;
  Lisp_Object current_syntax_table;
  Lisp_Object old_prop;
  ptrdiff_t b_property;
  ptrdiff_t e_property;

  _Bool e_property_truncated;

  INTERVAL forward_i;
  INTERVAL backward_i;






  ptrdiff_t offset;
};

extern struct gl_state_s gl_state;






inline Lisp_Object
syntax_property_entry (int c, _Bool via_property)
{
  if (via_property)
    return (gl_state.use_global
     ? gl_state.global_code
     : CHAR_TABLE_REF (gl_state.current_syntax_table, c));
  return CHAR_TABLE_REF (((current_buffer)-> syntax_table_), c);
}
inline Lisp_Object
SYNTAX_ENTRY (int c)
{
  return syntax_property_entry (c, 0);
}




inline int
syntax_property_with_flags (int c, _Bool via_property)
{
  Lisp_Object ent = syntax_property_entry (c, via_property);
  return (((enum Lisp_Type) ((ent) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((((void) (0 && ((((enum Lisp_Type) ((ent) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((ent) - (Lisp_Cons))))->car) >> INTTYPEBITS) : Swhitespace;
}
inline int
SYNTAX_WITH_FLAGS (int c)
{
  return syntax_property_with_flags (c, 0);
}

inline enum syntaxcode
syntax_property (int c, _Bool via_property)
{
  return syntax_property_with_flags (c, via_property) & 0xff;
}
inline enum syntaxcode
SYNTAX (int c)
{
  return syntax_property (c, 0);
}



extern _Bool syntax_prefix_flag_p (int c);





extern unsigned char const syntax_spec_code[0400];



extern char const syntax_code_spec[16];
# 161 "./syntax.h"
inline ptrdiff_t
SYNTAX_TABLE_BYTE_TO_CHAR (ptrdiff_t bytepos)
{
  return (! globals.f_parse_sexp_lookup_properties
   ? 0
   : STRINGP (gl_state.object)
   ? string_byte_to_char (gl_state.object, bytepos)
   : BUFFERP (gl_state.object)
   ? ((buf_bytepos_to_charpos
       (XBUFFER (gl_state.object),
        (bytepos + (XBUFFER (gl_state.object) == current_buffer ? (current_buffer->begv_byte) : ((((XBUFFER (gl_state.object))-> begv_marker_)) == (builtin_lisp_symbol (0))) ? XBUFFER (gl_state.object)->begv_byte : marker_byte_position (((XBUFFER (gl_state.object))-> begv_marker_))) - 1)))
      - (XBUFFER (gl_state.object) == current_buffer ? (current_buffer->begv) : ((((XBUFFER (gl_state.object))-> begv_marker_)) == (builtin_lisp_symbol (0))) ? XBUFFER (gl_state.object)->begv : marker_position (((XBUFFER (gl_state.object))-> begv_marker_))) + 1)
   : ((gl_state.object) == (builtin_lisp_symbol (0)))
   ? (buf_bytepos_to_charpos (current_buffer, bytepos + (current_buffer->begv_byte) - 1)) - (current_buffer->begv) + 1
   : bytepos);
}




inline void
UPDATE_SYNTAX_TABLE_FORWARD (ptrdiff_t charpos)
{
  if (globals.f_parse_sexp_lookup_properties && charpos >= gl_state.e_property)
    update_syntax_table_forward (charpos + gl_state.offset,
     0, gl_state.object);
}

inline void
UPDATE_SYNTAX_TABLE_FORWARD_FAST (ptrdiff_t charpos)
{
  if (globals.f_parse_sexp_lookup_properties && charpos >= gl_state.e_property)
    update_syntax_table (charpos + gl_state.offset, 1, 0, gl_state.object);
}




inline void
UPDATE_SYNTAX_TABLE_BACKWARD (ptrdiff_t charpos)
{
  if (globals.f_parse_sexp_lookup_properties && charpos < gl_state.b_property)
    update_syntax_table (charpos + gl_state.offset, -1, 0, gl_state.object);
}



inline void
UPDATE_SYNTAX_TABLE (ptrdiff_t charpos)
{
  UPDATE_SYNTAX_TABLE_BACKWARD (charpos);
  UPDATE_SYNTAX_TABLE_FORWARD (charpos);
}

inline void
UPDATE_SYNTAX_TABLE_FAST (ptrdiff_t charpos)
{
  UPDATE_SYNTAX_TABLE_BACKWARD (charpos);
  UPDATE_SYNTAX_TABLE_FORWARD_FAST (charpos);
}



inline void
SETUP_BUFFER_SYNTAX_TABLE (void)
{
  gl_state.use_global = 0;
  gl_state.e_property_truncated = 0;
  gl_state.current_syntax_table = ((current_buffer)-> syntax_table_);
}

extern ptrdiff_t scan_words (ptrdiff_t, EMACS_INT);
extern void SETUP_SYNTAX_TABLE_FOR_OBJECT (Lisp_Object, ptrdiff_t, ptrdiff_t);
# 135 "regex.c" 2
# 1 "./category.h" 1
# 81 "./category.h"
inline _Bool
CATEGORY_MEMBER (EMACS_INT category, Lisp_Object category_set)
{
  return bool_vector_bitref (category_set, category);
}


inline _Bool
CHAR_HAS_CATEGORY (int ch, int category)
{
  Lisp_Object category_set = char_category_set (ch);
  return CATEGORY_MEMBER (category, category_set);
}
# 120 "./category.h"
extern _Bool word_boundary_p (int, int);
# 136 "regex.c" 2
# 288 "regex.c"
# 1 "./regex.h" 1
# 43 "./regex.h"
typedef unsigned long reg_syntax_t;
# 167 "./regex.h"
extern reg_syntax_t re_syntax_options;





extern Lisp_Object re_match_object;



extern size_t re_max_failures;
# 295 "./regex.h"
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
# 336 "./regex.h"
struct re_pattern_buffer
{




  unsigned char *buffer;


  size_t allocated;


  size_t used;


  reg_syntax_t syntax;




  char *fastmap;





  Lisp_Object translate;


  size_t re_nsub;





  unsigned can_be_null : 1;
# 380 "./regex.h"
  unsigned regs_allocated : 2;



  unsigned fastmap_accurate : 1;



  unsigned no_sub : 1;



  unsigned not_bol : 1;


  unsigned not_eol : 1;



  unsigned used_syntax : 1;




  unsigned multibyte : 1;



  unsigned target_multibyte : 1;


  int charset_unibyte;



};

typedef struct re_pattern_buffer regex_t;






typedef ssize_t regoff_t;




struct re_registers
{
  unsigned num_regs;
  regoff_t *start;
  regoff_t *end;
};
# 448 "./regex.h"
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
# 521 "./regex.h"
extern void re_set_registers (struct re_pattern_buffer *__buffer,
         struct re_registers *__regs,
         unsigned __num_regs,
         regoff_t *__starts, regoff_t *__ends);
# 563 "./regex.h"
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
# 612 "./regex.h"
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
# 289 "regex.c" 2


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
# 292 "regex.c" 2
# 530 "regex.c"
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
# 575 "regex.c"
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


  ,before_dot,
  at_dot,
  after_dot,




  categoryspec,




  notcategoryspec

} re_opcode_t;
# 714 "regex.c"
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
# 1212 "regex.c"
reg_syntax_t re_syntax_options;
# 1222 "regex.c"
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
# 1323 "regex.c"
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
# 1621 "regex.c"
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
# 1770 "regex.c"
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
# 1817 "regex.c"
struct range_table_work_area
{
  int *table;
  int allocated;
  int used;
  int bits;
};
# 2018 "regex.c"
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
    case RECC_ALNUM: return (((ch) < 0200) ? (((ch) >= 'a' && (ch) <= 'z') || ((ch) >= 'A' && (ch) <= 'Z') || ((ch) >= '0' && (ch) <= '9')) : (alphabeticp (ch) || decimalnump (ch))) != 0;
    case RECC_ALPHA: return (((ch) < 0200) ? (((ch) >= 'a' && (ch) <= 'z') || ((ch) >= 'A' && (ch) <= 'Z')) : alphabeticp (ch)) != 0;
    case RECC_BLANK: return ((ch) == ' ' || (ch) == '\t') != 0;
    case RECC_CNTRL: return ((ch) < ' ') != 0;
    case RECC_DIGIT: return ((ch) >= '0' && (ch) <= '9') != 0;
    case RECC_GRAPH: return ((((sizeof ((ch) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((ch) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((ch) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((ch) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) ? (ch) > ' ' && !((ch) >= 0177 && (ch) <= 0240) : graphicp (ch)) != 0;
    case RECC_LOWER: return lowercasep (ch) != 0;
    case RECC_PRINT: return ((((sizeof ((ch) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((ch) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((ch) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((ch) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) ? (ch) >= ' ' && !((ch) >= 0177 && (ch) <= 0237) : printablep (ch)) != 0;
    case RECC_PUNCT: return (((ch) < 0200) ? ((ch) > ' ' && (ch) < 0177 && !(((ch) >= 'a' && (ch) <= 'z') || ((ch) >= 'A' && (ch) <= 'Z') || ((ch) >= '0' && (ch) <= '9'))) : syntax_property (ch, 1) != Sword) != 0;
    case RECC_SPACE: return (syntax_property (ch, 1) == Swhitespace) != 0;
    case RECC_UPPER: return uppercasep (ch) != 0;
    case RECC_XDIGIT: return (((ch) >= '0' && (ch) <= '9') || ((ch) >= 'a' && (ch) <= 'f') || ((ch) >= 'A' && (ch) <= 'F')) != 0;
    case RECC_ASCII: return ((ch) < 0200) != 0;
    case RECC_NONASCII: return !((ch) < 0200);
    case RECC_UNIBYTE: return ((((sizeof (((ch)) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof (((ch)) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? (((ch)) + (unsigned) 0) < ((0x100) + (unsigned) 0) : (((ch)) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0))) != 0;
    case RECC_MULTIBYTE: return !((((sizeof (((ch)) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof (((ch)) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? (((ch)) + (unsigned) 0) < ((0x100) + (unsigned) 0) : (((ch)) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)));
    case RECC_WORD: return (syntax_property (ch, 1) == Sword) != 0;
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
# 2379 "regex.c"
static boolean group_in_compile_stack (compile_stack_type compile_stack,
           regnum_t regnum);
# 2416 "regex.c"
static reg_errcode_t
regex_compile (const_re_char *pattern, size_t size, reg_syntax_t syntax,
        struct re_pattern_buffer *bufp)
{

  register re_wchar_t c, c1;


  register unsigned char *b;


  compile_stack_type compile_stack;






  re_char *p = pattern;

  re_char *pend = pattern + size;


  Lisp_Object translate = bufp->translate;





  unsigned char *pending_exact = 0;




  unsigned char *laststart = 0;


  unsigned char *begalt;



  re_char *beg_interval;




  unsigned char *fixup_alt_jump = 0;


  struct range_table_work_area range_table_work;


  const boolean multibyte = ((bufp)->multibyte);


  int in_subpattern = 0;



  re_char *main_p ;
  re_char *main_pattern ;
  re_char *main_pend ;
# 2493 "regex.c"
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
      if (!bufp->buffer) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_ESPACE; } while (0);

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

      do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);

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
  do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADRPT; } while (0);
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
        do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EESCAPE; } while (0);
      if (p[1] == '+' || p[1] == '?')
        do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
      else
        break;
    }
  else
    break;

  do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
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

     if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACK; } while (0);



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

  if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACK; } while (0);





  do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);


  if ((syntax & ((unsigned long int) 1)) && c == '\\')
    {
      if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EESCAPE; } while (0);

      do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
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

      do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
      c1 = 0;
      class_beg = p;


      if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACK; } while (0);

      for (;;)
        {
          do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
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
     do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_ECTYPE; } while (0);



                        do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);

                        if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACK; } while (0);
# 2919 "regex.c"
   SETUP_BUFFER_SYNTAX_TABLE ();

   for (ch = 0; ch < 256; ++ch)
     {
       c = ((((sizeof ((ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (ch) : ((ch) + 0x3FFF00));
       if (! ((c) > 0x3FFF7F)
    && re_iswctype (c, cc))
         {
    (b[((ch)) / 8] |= 1 << ((ch) % 8));
    c1 = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (c)) : (c));
    if (c1 == c)
      continue;
    if ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
      (b[((c1)) / 8] |= 1 << ((c1) % 8));
    else if ((c1 = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c1 : (((c1) > 0x3FFF7F) ? (c1) - 0x3FFF00 : -1))) >= 0)
      (b[((c1)) / 8] |= 1 << ((c1) % 8));
         }
     }
   (range_table_work).bits |= (re_wctype_to_bit (cc));







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


      do { int len; if (p == pend) return REG_EEND; c1 = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);


      do { int len; if (p == pend) return REG_EEND; c1 = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);

      if (((c1) > 0x3FFF7F)
   && ! (((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ! ((c) > 0x3FFF7F))


        c = c1 + 1;

    }
  else

    c1 = c;

  if (c > c1)
    {
      if (syntax & ((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
        do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_ERANGEX; } while (0);

    }
  else
    {
# 3001 "regex.c"
      if (c < 128)
        {
   ch = ((127) < (c1) ? (127) : (c1));
   do { int C0, C1; for (C0 = (c); C0 <= (ch); C0++) { C1 = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (C0)) : (C0)); if (! (((sizeof ((C1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((C1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((C1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((C1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))) { do { do { if (((((range_table_work))).used + (2)) * sizeof (int) > (((range_table_work))).allocated) { extend_range_table_work_area (&((range_table_work))); if ((((range_table_work))).table == 0) return (REG_ESPACE); } } while (0); ((range_table_work)).table[((range_table_work)).used++] = (C1); ((range_table_work)).table[((range_table_work)).used++] = (C1); } while (0); if ((C1 = ((((sizeof ((C1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((C1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((C1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((C1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? C1 : (((C1) > 0x3FFF7F) ? (C1) - 0x3FFF00 : -1))) < 0) C1 = C0; } (b[((C1)) / 8] |= 1 << ((C1) % 8)); } } while (0);
   c = ch + 1;
   if (((c1) > 0x3FFF7F))
     c = ((128) + 0x3FFF00);
        }
      if (c <= c1)
        {
   if (((c) > 0x3FFF7F))
     {
       c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
       c1 = (((c1) > 0x3FFF7F) ? (c1) - 0x3FFF00 : (c1 & 0xFF));
       for (; c <= c1; c++)
         (b[((c)) / 8] |= 1 << ((c) % 8));
     }
   else if (multibyte)
     {
       do { int C0, C1, C2, I, USED = ((range_table_work).used); do { do { if (((((range_table_work))).used + (2)) * sizeof (int) > (((range_table_work))).allocated) { extend_range_table_work_area (&((range_table_work))); if ((((range_table_work))).table == 0) return (REG_ESPACE); } } while (0); ((range_table_work)).table[((range_table_work)).used++] = ((c)); ((range_table_work)).table[((range_table_work)).used++] = ((c1)); } while (0); for (C0 = (c); C0 <= (c1); C0++) { C1 = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (C0)) : (C0)); if ((C2 = ((((sizeof ((C1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((C1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((C1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((C1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? C1 : (((C1) > 0x3FFF7F) ? (C1) - 0x3FFF00 : -1))) >= 0 || (C1 != C0 && (C2 = ((((sizeof ((C0) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((C0) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((C0) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((C0) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? C0 : (((C0) > 0x3FFF7F) ? (C0) - 0x3FFF00 : -1))) >= 0)) (b[((C2)) / 8] |= 1 << ((C2) % 8)); if (C1 >= (c) && C1 <= (c1)) continue; for (I = ((range_table_work).used) - 2; I >= USED; I -= 2) { int from = ((range_table_work).table[I]); int to = ((range_table_work).table[I + 1]); if (C1 >= from - 1 && C1 <= to + 1) { if (C1 == from - 1) ((range_table_work).table[I])--; else if (C1 == to + 1) ((range_table_work).table[I + 1])++; break; } } if (I < USED) do { do { if (((((range_table_work))).used + (2)) * sizeof (int) > (((range_table_work))).allocated) { extend_range_table_work_area (&((range_table_work))); if ((((range_table_work))).table == 0) return (REG_ESPACE); } } while (0); ((range_table_work)).table[((range_table_work)).used++] = (C1); ((range_table_work)).table[((range_table_work)).used++] = (C1); } while (0); } } while (0);
     }
   else
     {
       do { int C0, C1, C2, I; int USED = ((range_table_work).used); for (C0 = (c); C0 <= (c1); C0++) { C1 = ((((sizeof ((C0) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((C0) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((C0) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((C0) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (C0) : ((C0) + 0x3FFF00)); if (((C1) > 0x3FFF7F)) (b[((C0)) / 8] |= 1 << ((C0) % 8)); else { C2 = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (C1)) : (C1)); if (C2 == C1 || (C1 = ((((sizeof ((C2) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((C2) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((C2) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((C2) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? C2 : (((C2) > 0x3FFF7F) ? (C2) - 0x3FFF00 : -1))) < 0) C1 = C0; (b[((C1)) / 8] |= 1 << ((C1) % 8)); for (I = ((range_table_work).used) - 2; I >= USED; I -= 2) { int from = ((range_table_work).table[I]); int to = ((range_table_work).table[I + 1]); if (C2 >= from - 1 && C2 <= to + 1) { if (C2 == from - 1) ((range_table_work).table[I])--; else if (C2 == to + 1) ((range_table_work).table[I + 1])++; break; } } if (I < USED) do { do { if (((((range_table_work))).used + (2)) * sizeof (int) > (((range_table_work))).allocated) { extend_range_table_work_area (&((range_table_work))); if ((((range_table_work))).table == 0) return (REG_ESPACE); } } while (0); ((range_table_work)).table[((range_table_work)).used++] = (C2); ((range_table_work)).table[((range_table_work)).used++] = (C2); } while (0); } } } while (0);
     }
        }

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
   if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EESCAPE; } while (0);




   do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);

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
   do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
   while (!shy)
     {
       do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
       switch (c)
         {
         case ':': shy = 1; break;
         case '0':


    if (regnum == 0)
      do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADPAT; } while (0);
         case '1': case '2': case '3': case '4':
         case '5': case '6': case '7': case '8': case '9':
    regnum = 10*regnum + (c - '0'); break;
         default:

    do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADPAT; } while (0);
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
        do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADPAT; } while (0);
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
      do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_ERPAREN; } while (0);
  }

     handle_close:
       do { if (fixup_alt_jump) store_op1 (jump, fixup_alt_jump, (b) - (fixup_alt_jump) - 3); } while (0);


       if ((compile_stack.avail == 0))
  {
    if (syntax & (((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
      goto normal_char;
    else
      do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_ERPAREN; } while (0);
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
# 3286 "regex.c"
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

  do { if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACE; } while (0); else { do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0); while ('0' <= c && c <= '9') { if (lower_bound < 0) lower_bound = 0; if ((0x7fff) / 10 - ((0x7fff) % 10 < c - '0') < lower_bound) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADBR; } while (0); lower_bound = lower_bound * 10 + c - '0'; if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACE; } while (0); do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0); } } } while (0);

  if (c == ',')
    do { if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACE; } while (0); else { do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0); while ('0' <= c && c <= '9') { if (upper_bound < 0) upper_bound = 0; if ((0x7fff) / 10 - ((0x7fff) % 10 < c - '0') < upper_bound) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADBR; } while (0); upper_bound = upper_bound * 10 + c - '0'; if (p == pend) do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EBRACE; } while (0); do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0); } } } while (0);
  else

    upper_bound = lower_bound;

  if (lower_bound < 0
      || (0 <= upper_bound && upper_bound < lower_bound))
    do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADBR; } while (0);

  if (!(syntax & ((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)))
    {
      if (c != '\\')
        do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADBR; } while (0);
      if (p == pend)
        do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EESCAPE; } while (0);
      do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
    }

  if (c != '}')
    do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADBR; } while (0);




  if (!laststart)
    {
      if (syntax & (((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1))
        do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADRPT; } while (0);
      else if (syntax & ((((((unsigned long int) 1) << 1) << 1) << 1) << 1))
        laststart = b;
      else
        goto unfetch_interval;
    }

  if (upper_bound == 0)


    b = laststart;
  else if (lower_bound == 1 && upper_bound == 1)

    ;
# 3371 "regex.c"
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
# 3442 "regex.c"
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




     case '=':
       laststart = b;
       do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (at_dot); } while (0);
       break;

     case 's':
       laststart = b;
       do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (syntaxspec); *b++ = (unsigned char) (syntax_spec_code[c]); } while (0);
       break;

     case 'S':
       laststart = b;
       do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (notsyntaxspec); *b++ = (unsigned char) (syntax_spec_code[c]); } while (0);
       break;

     case 'c':
       laststart = b;
       do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (categoryspec); *b++ = (unsigned char) (c); } while (0);
       break;

     case 'C':
       laststart = b;
       do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
       do { while ((size_t) (b - bufp->buffer + (2)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (notcategoryspec); *b++ = (unsigned char) (c); } while (0);
       break;



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
              do { int len; if (p == pend) return REG_EEND; c = (multibyte ? ((!((p)[0] & 0x80) ? ((len) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((len) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((len) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &len))) : ((len) = 1, *(p))); p += len; } while (0);
              if (c == '<')
                do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (symbeg); } while (0);
              else if (c == '>')
                do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (symend); } while (0);
              else
                do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_BADPAT; } while (0);
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
    do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_ESUBREG; } while (0);

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


       || *pending_exact >= (1 << 8) - 5


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

   while ((size_t) (b - bufp->buffer + (5)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0);
   {
     int len;

     if (multibyte)
       {
  c = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (c)) : (c));
  len = ((((sizeof ((c) + 0)) > (sizeof ((0x7F) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x7F) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) <= ((0x7F) + (unsigned) 0) : ((c) + (uintmax_t) 0) <= ((0x7F) + (uintmax_t) 0)) ? ((b)[0] = (c), 1) : (((sizeof ((c) + 0)) > (sizeof ((0x7FF) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x7FF) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) <= ((0x7FF) + (unsigned) 0) : ((c) + (uintmax_t) 0) <= ((0x7FF) + (uintmax_t) 0)) ? ((b)[0] = (0xC0 | ((c) >> 6)), (b)[1] = (0x80 | ((c) & 0x3F)), 2) : (((sizeof ((c) + 0)) > (sizeof ((0xFFFF) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0xFFFF) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) <= ((0xFFFF) + (unsigned) 0) : ((c) + (uintmax_t) 0) <= ((0xFFFF) + (uintmax_t) 0)) ? ((b)[0] = (0xE0 | ((c) >> 12)), (b)[1] = (0x80 | (((c) >> 6) & 0x3F)), (b)[2] = (0x80 | ((c) & 0x3F)), 3) : ((!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; })) ? (char_string (c, b)) : (char_string (c, b))));
  b += len;
       }
     else
       {
  c1 = ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c) : ((c) + 0x3FFF00));
  if (! ((c1) > 0x3FFF7F))
    {
      re_wchar_t c2 = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (c1)) : (c1));

      if (c1 != c2 && (c1 = ((((sizeof ((c2) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c2 : (((c2) > 0x3FFF7F) ? (c2) - 0x3FFF00 : -1))) >= 0)
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
    do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_EPAREN; } while (0);



  if (syntax & ((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1))
    do { while ((size_t) (b - bufp->buffer + (1)) > bufp->allocated) do { unsigned char *old_buffer = bufp->buffer; if (bufp->allocated == (1L << 15)) return REG_ESIZE; bufp->allocated <<= 1; if (bufp->allocated > (1L << 15)) bufp->allocated = (1L << 15); ((bufp->buffer) = (unsigned char *) xrealloc (bufp->buffer, (bufp->allocated) * sizeof (unsigned char))); if (bufp->buffer == ((void*)0)) return REG_ESPACE; if (old_buffer != bufp->buffer) { unsigned char *new_buffer = bufp->buffer; ((b) = new_buffer + ((b) - old_buffer)); ((begalt) = new_buffer + ((begalt) - old_buffer)); if (fixup_alt_jump) ((fixup_alt_jump) = new_buffer + ((fixup_alt_jump) - old_buffer)); if (laststart) ((laststart) = new_buffer + ((laststart) - old_buffer)); if (pending_exact) ((pending_exact) = new_buffer + ((pending_exact) - old_buffer)); } } while (0); *b++ = (unsigned char) (succeed); } while (0);


  bufp->used = b - bufp->buffer;
# 3712 "regex.c"
  do { do { if ((range_table_work).table) xfree ((range_table_work).table); } while (0); xfree (compile_stack.stack); return REG_NOERROR; } while (0);
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
# 3858 "regex.c"
static int
analyze_first (const_re_char *p, const_re_char *pend, char *fastmap,
        const int multibyte)
{
  int j, k;
  boolean not;



  boolean match_any_multibyte_characters = 0;

            ;
# 3886 "regex.c"
  while (p < pend)
    {
# 3896 "regex.c"
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



    int c = ((((sizeof ((p[1]) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((p[1]) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((p[1]) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((p[1]) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (p[1]) : ((p[1]) + 0x3FFF00));

    fastmap[((c) <= 0x7F ? c : (c) <= 0x7FF ? (0xC0 | ((c) >> 6)) : (c) <= 0xFFFF ? (0xE0 | ((c) >> 12)) : (c) <= 0x1FFFFF ? (0xF0 | ((c) >> 18)) : (c) <= 0x3FFF7F ? 0xF8 : (0xC0 | (((c) >> 6) & 0x01)))] = 1;
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


   if (

       not
       ||


       (((&p[-2])[1] & 0x80)
        && ((&p[-2])[2 + ((&p[-2])[1] & 0x7F)] + (&p[-2])[3 + ((&p[-2])[1] & 0x7F)] * 0x100) != 0))

     {
       if (match_any_multibyte_characters == 0)
  {
    for (j = 0xC0;
         j <= 0xF8; j++)
      fastmap[j] = 1;
    match_any_multibyte_characters = 1;
  }
     }

   else if (!not && ((&p[-2])[1] & 0x80)
     && match_any_multibyte_characters == 0)
     {


       int c, count;
       unsigned char lc1, lc2;



       p += ((&p[-2])[1] & 0x7F) + 2;


       ((count) = extract_number_and_incr (&p));
       for (; count > 0; count--, p += 3)
  {

    do { (c) = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16)); } while (0);
    lc1 = ((c) <= 0x7F ? c : (c) <= 0x7FF ? (0xC0 | ((c) >> 6)) : (c) <= 0xFFFF ? (0xE0 | ((c) >> 12)) : (c) <= 0x1FFFFF ? (0xF0 | ((c) >> 18)) : (c) <= 0x3FFF7F ? 0xF8 : (0xC0 | (((c) >> 6) & 0x01)));
    p += 3;
    do { (c) = ((p)[0] | ((p)[1] << 8) | ((p)[2] << 16)); } while (0);
    lc2 = ((c) <= 0x7F ? c : (c) <= 0x7FF ? (0xC0 | ((c) >> 6)) : (c) <= 0xFFFF ? (0xE0 | ((c) >> 12)) : (c) <= 0x1FFFFF ? (0xF0 | ((c) >> 18)) : (c) <= 0x3FFF7F ? 0xF8 : (0xC0 | (((c) >> 6) & 0x01)));
    for (j = lc1; j <= lc2; j++)
      fastmap[j] = 1;
  }
     }

   break;

 case syntaxspec:
 case notsyntaxspec:
   if (!fastmap) break;
# 4023 "regex.c"
   return -1;

 case categoryspec:
 case notcategoryspec:
   if (!fastmap) break;
   not = (re_opcode_t)p[-1] == notcategoryspec;
   k = *p++;
   for (j = (1 << 8); j >= 0; j--)
     if ((CHAR_HAS_CATEGORY (j, k)) ^ not)
       fastmap[j] = 1;



   if (match_any_multibyte_characters == 0)
     {
       for (j = 0xC0;
     j <= 0xF8; j++)
  fastmap[j] = 1;
       match_any_multibyte_characters = 1;
     }
   break;




 case before_dot:
 case at_dot:
 case after_dot:

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
# 4170 "regex.c"
int
re_compile_fastmap (struct re_pattern_buffer *bufp)
{
  char *fastmap = bufp->fastmap;
  int analysis;

                                  ;

  memset (fastmap, 0, 1 << 8);
  bufp->fastmap_accurate = 1;

  analysis = analyze_first (bufp->buffer, bufp->buffer + bufp->used,
       fastmap, ((bufp)->multibyte));
  bufp->can_be_null = (analysis != 0);
  return 0;
}
# 4200 "regex.c"
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
# 4262 "regex.c"
regoff_t
re_search_2 (struct re_pattern_buffer *bufp, const char *str1, size_t size1,
      const char *str2, size_t size2, ssize_t startpos, ssize_t range,
      struct re_registers *regs, ssize_t stop)
{
  regoff_t val;
  re_char *string1 = (re_char*) str1;
  re_char *string2 = (re_char*) str2;
  register char *fastmap = bufp->fastmap;
  register Lisp_Object translate = bufp->translate;
  size_t total_size = size1 + size2;
  ssize_t endpos = startpos + range;
  boolean anchored_start;

  const boolean multibyte = ((bufp)->target_multibyte);


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




  if (bufp->used > 0 && (re_opcode_t) bufp->buffer[0] == at_dot && range > 0)
    {
      range = (current_buffer->pt_byte + 0) - (current_buffer->begv_byte) - startpos;
      if (range < 0)
 return -1;
    }



  if (fastmap && !bufp->fastmap_accurate)
    re_compile_fastmap (bufp);


  anchored_start = (bufp->buffer[0] == begline);


  gl_state.object = re_match_object;
  {
    ssize_t charpos = SYNTAX_TABLE_BYTE_TO_CHAR (((startpos) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object))));

    SETUP_SYNTAX_TABLE_FOR_OBJECT (re_match_object, charpos, 1);
  }



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



       if ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))))
  {
    if (multibyte)
      while (range > lim)
        {
   int buf_charlen;

   buf_ch = (!((d)[0] & 0x80) ? ((buf_charlen) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((buf_charlen) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((buf_charlen) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &buf_charlen));
   buf_ch = char_table_translate (translate, buf_ch);
   if (fastmap[((buf_ch) <= 0x7F ? buf_ch : (buf_ch) <= 0x7FF ? (0xC0 | ((buf_ch) >> 6)) : (buf_ch) <= 0xFFFF ? (0xE0 | ((buf_ch) >> 12)) : (buf_ch) <= 0x1FFFFF ? (0xF0 | ((buf_ch) >> 18)) : (buf_ch) <= 0x3FFF7F ? 0xF8 : (0xC0 | (((buf_ch) >> 6) & 0x01)))])
     break;

   range -= buf_charlen;
   d += buf_charlen;
        }
    else
      while (range > lim)
        {
   register re_wchar_t ch, translated;

   buf_ch = *d;
   ch = ((((sizeof ((buf_ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((buf_ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((buf_ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((buf_ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (buf_ch) : ((buf_ch) + 0x3FFF00));
   translated = char_table_translate (translate, ch);
   if (translated != ch
       && (ch = ((((sizeof ((translated) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((translated) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((translated) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((translated) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? translated : (((translated) > 0x3FFF7F) ? (translated) - 0x3FFF00 : -1))) >= 0)
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

   buf_ch = (!((d)[0] & 0x80) ? ((buf_charlen) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((buf_charlen) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((buf_charlen) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &buf_charlen));
   if (fastmap[((buf_ch) <= 0x7F ? buf_ch : (buf_ch) <= 0x7FF ? (0xC0 | ((buf_ch) >> 6)) : (buf_ch) <= 0xFFFF ? (0xE0 | ((buf_ch) >> 12)) : (buf_ch) <= 0x1FFFFF ? (0xF0 | ((buf_ch) >> 18)) : (buf_ch) <= 0x3FFF7F ? 0xF8 : (0xC0 | (((buf_ch) >> 6) & 0x01)))])
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
    buf_ch = (!((d)[0] & 0x80) ? (d)[0] : ! ((d)[0] & 0x20) ? (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((d)[0] & 0x10) ? ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F)) : string_char ((d), ((void*)0), ((void*)0)));
    buf_ch = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (buf_ch)) : (buf_ch));
    if (! fastmap[((buf_ch) <= 0x7F ? buf_ch : (buf_ch) <= 0x7FF ? (0xC0 | ((buf_ch) >> 6)) : (buf_ch) <= 0xFFFF ? (0xE0 | ((buf_ch) >> 12)) : (buf_ch) <= 0x1FFFFF ? (0xF0 | ((buf_ch) >> 18)) : (buf_ch) <= 0x3FFF7F ? 0xF8 : (0xC0 | (((buf_ch) >> 6) & 0x01)))])
      goto advance;
  }
       else
  {
    register re_wchar_t ch, translated;

    buf_ch = *d;
    ch = ((((sizeof ((buf_ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((buf_ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((buf_ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((buf_ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (buf_ch) : ((buf_ch) + 0x3FFF00));
    translated = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (ch)) : (ch));
    if (translated != ch
        && (ch = ((((sizeof ((translated) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((translated) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((translated) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((translated) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? translated : (((translated) > 0x3FFF7F) ? (translated) - 0x3FFF00 : -1))) >= 0)
      buf_ch = ch;
    if (! fastmap[((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (buf_ch)) : (buf_ch))])
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
       int len = (!((*p) & 0x80) ? 1 : !((*p) & 0x20) ? 2 : !((*p) & 0x10) ? 3 : !((*p) & 0x08) ? 4 : 5);

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


       do { if ((p) > (phead)) { const unsigned char *chp = (p); do { chp--; } while (chp >= phead && ! (((*chp) & 0xC0) != 0x80)); (p) = ((!((*chp) & 0x80) ? 1 : !((*chp) & 0x20) ? 2 : !((*chp) & 0x10) ? 3 : !((*chp) & 0x08) ? 4 : 5) == (p) - chp) ? chp : (p) - 1; } } while (0);
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
      Lisp_Object translate,
      const int multibyte);
# 4603 "regex.c"
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

    case categoryspec:
    case notcategoryspec:

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
  const boolean multibyte = ((bufp)->multibyte);
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
   : (multibyte ? ((!((p2 + 2)[0] & 0x80) ? (p2 + 2)[0] : ! ((p2 + 2)[0] & 0x20) ? (((((p2 + 2)[0] & 0x1F) << 6) | ((p2 + 2)[1] & 0x3F)) + (((unsigned char) (p2 + 2)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((p2 + 2)[0] & 0x10) ? ((((p2 + 2)[0] & 0x0F) << 12) | (((p2 + 2)[1] & 0x3F) << 6) | ((p2 + 2)[2] & 0x3F)) : string_char ((p2 + 2), ((void*)0), ((void*)0)))) : (*(p2 + 2)));

 if ((re_opcode_t) *p1 == exactn)
   {
     if (c != (multibyte ? ((!((p1 + 2)[0] & 0x80) ? (p1 + 2)[0] : ! ((p1 + 2)[0] & 0x20) ? (((((p1 + 2)[0] & 0x1F) << 6) | ((p1 + 2)[1] & 0x3F)) + (((unsigned char) (p1 + 2)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((p1 + 2)[0] & 0x10) ? ((((p1 + 2)[0] & 0x0F) << 12) | (((p1 + 2)[1] & 0x3F) << 6) | ((p1 + 2)[2] & 0x3F)) : string_char ((p1 + 2), ((void*)0), ((void*)0)))) : (*(p1 + 2))))
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
# 4780 "regex.c"
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


    case categoryspec:
      return ((re_opcode_t) *p1 == notcategoryspec && p1[1] == p2[1]);
    case notcategoryspec:
      return ((re_opcode_t) *p1 == categoryspec && p1[1] == p2[1]);


    default:
      ;
    }


  return 0;
}
# 4892 "regex.c"
Lisp_Object re_match_object;
# 4908 "regex.c"
regoff_t
re_match_2 (struct re_pattern_buffer *bufp, const char *string1,
     size_t size1, const char *string2, size_t size2, ssize_t pos,
     struct re_registers *regs, ssize_t stop)
{
  regoff_t result;


  ssize_t charpos;
  gl_state.object = re_match_object;
  charpos = SYNTAX_TABLE_BYTE_TO_CHAR (((pos) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object))));
  SETUP_SYNTAX_TABLE_FOR_OBJECT (re_match_object, charpos, 1);


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


  Lisp_Object translate = bufp->translate;


  const boolean multibyte = ((bufp)->multibyte);


  const boolean target_multibyte = ((bufp)->target_multibyte);
# 4978 "regex.c"
  fail_stack_type fail_stack;
# 4993 "regex.c"
  size_t num_regs = bufp->re_nsub + 1;
# 5003 "regex.c"
  re_char **regstart, **regend;






  unsigned best_regs_set = 0;

  re_char **best_regstart, **best_regend;
# 5023 "regex.c"
  re_char *match_end = ((void*)0);






                                            ;

  ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;

  do { fail_stack.stack = ((20 * 20 * sizeof (fail_stack_elt_t)) <= sa_avail ? (sa_avail -= (20 * 20 * sizeof (fail_stack_elt_t)), __builtin_alloca (20 * 20 * sizeof (fail_stack_elt_t))) : (sa_must_free = 1, record_xmalloc (20 * 20 * sizeof (fail_stack_elt_t)))); if (fail_stack.stack == ((void*)0)) return -2; fail_stack.size = 20; fail_stack.avail = 0; fail_stack.frame = 0; } while (0);







  if (bufp->re_nsub)
    {
      regstart = ((re_char * *) (((num_regs) * sizeof (re_char *)) <= sa_avail ? (sa_avail -= ((num_regs) * sizeof (re_char *)), __builtin_alloca ((num_regs) * sizeof (re_char *))) : (sa_must_free = 1, record_xmalloc ((num_regs) * sizeof (re_char *)))));
      regend = ((re_char * *) (((num_regs) * sizeof (re_char *)) <= sa_avail ? (sa_avail -= ((num_regs) * sizeof (re_char *)), __builtin_alloca ((num_regs) * sizeof (re_char *))) : (sa_must_free = 1, record_xmalloc ((num_regs) * sizeof (re_char *)))));
      best_regstart = ((re_char * *) (((num_regs) * sizeof (re_char *)) <= sa_avail ? (sa_avail -= ((num_regs) * sizeof (re_char *)), __builtin_alloca ((num_regs) * sizeof (re_char *))) : (sa_must_free = 1, record_xmalloc ((num_regs) * sizeof (re_char *)))));
      best_regend = ((re_char * *) (((num_regs) * sizeof (re_char *)) <= sa_avail ? (sa_avail -= ((num_regs) * sizeof (re_char *)), __builtin_alloca ((num_regs) * sizeof (re_char *))) : (sa_must_free = 1, record_xmalloc ((num_regs) * sizeof (re_char *)))));

      if (!(regstart && regend && best_regstart && best_regend))
 {
   do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0); } while (0);
   return -2;
 }
    }
  else
    {


      regstart = regend = best_regstart = best_regend = ((void*)0);
    }



  if (pos < 0 || pos > size1 + size2)
    {
      do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0); } while (0);
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
# 5115 "regex.c"
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
        do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0); } while (0);
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
     do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0); } while (0);
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

   do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0); } while (0);
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
# 5352 "regex.c"
   if (target_multibyte)
     do
       {
  int pat_charlen, buf_charlen;
  int pat_ch, buf_ch;

  while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
  if (multibyte)
    pat_ch = (!((p)[0] & 0x80) ? ((pat_charlen) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((pat_charlen) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((pat_charlen) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &pat_charlen));
  else
    {
      pat_ch = ((((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (*p) : ((*p) + 0x3FFF00));
      pat_charlen = 1;
    }
  buf_ch = (!((d)[0] & 0x80) ? ((buf_charlen) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((buf_charlen) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((buf_charlen) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &buf_charlen));

  if (((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (buf_ch)) : (buf_ch)) != pat_ch)
    {
      d = dfail;
      goto fail;
    }

  p += pat_charlen;
  d += buf_charlen;
  mcnt -= pat_charlen;
       }
     while (mcnt > 0);
   else
     do
       {
  int pat_charlen;
  int pat_ch, buf_ch;

  while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
  if (multibyte)
    {
      pat_ch = (!((p)[0] & 0x80) ? ((pat_charlen) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((pat_charlen) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((pat_charlen) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &pat_charlen));
      pat_ch = ((((sizeof ((pat_ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((pat_ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((pat_ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((pat_ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? pat_ch : (((pat_ch) > 0x3FFF7F) ? (pat_ch) - 0x3FFF00 : -1));
    }
  else
    {
      pat_ch = *p;
      pat_charlen = 1;
    }
  buf_ch = ((((sizeof ((*d) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*d) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*d) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*d) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (*d) : ((*d) + 0x3FFF00));
  if (! ((buf_ch) > 0x3FFF7F))
    {
      buf_ch = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (buf_ch)) : (buf_ch));
      buf_ch = ((((sizeof ((buf_ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((buf_ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((buf_ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((buf_ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? buf_ch : (((buf_ch) > 0x3FFF7F) ? (buf_ch) - 0x3FFF00 : -1));
      if (buf_ch < 0)
        buf_ch = *d;
    }
  else
    buf_ch = *d;
  if (buf_ch != pat_ch)
    {
      d = dfail;
      goto fail;
    }
  p += pat_charlen;
  d++;
       }
     while (--mcnt);

   break;



 case anychar:
   {
     int buf_charlen;
     re_wchar_t buf_ch;

                                         ;

     while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
     buf_ch = (target_multibyte ? ((!((d)[0] & 0x80) ? ((buf_charlen) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((buf_charlen) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((buf_charlen) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &buf_charlen))) : ((buf_charlen) = 1, *(d)));

     buf_ch = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (buf_ch)) : (buf_ch));

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
     corig = c = (target_multibyte ? ((!((d)[0] & 0x80) ? ((len) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((len) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((len) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &len))) : ((len) = 1, *(d)));
     if (target_multibyte)
       {
  int c1;

  c = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (c)) : (c));
  c1 = ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c : (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : -1));
  if (c1 >= 0)
    {
      unibyte_char = 1;
      c = c1;
    }
       }
     else
       {
  int c1 = ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c) : ((c) + 0x3FFF00));

  if (! ((c1) > 0x3FFF7F))
    {
      c1 = ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0))))) ? char_table_translate (translate, (c1)) : (c1));
      c1 = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c1 : (((c1) > 0x3FFF7F) ? (c1) - 0x3FFF00 : -1));
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

     else if (range_table_exists)
       {
  int class_bits = ((&p[-1])[2 + ((&p[-1])[1] & 0x7F)] + (&p[-1])[3 + ((&p[-1])[1] & 0x7F)] * 0x100);

  if ( (class_bits & 0x2
         && (lowercasep (c)
      || (corig != c
          && c == upcase (corig) && uppercasep (c))))
      | (class_bits & 0x20)
      | (class_bits & 0x4 && (((c) < 0200) ? ((c) > ' ' && (c) < 0177 && !(((c) >= 'a' && (c) <= 'z') || ((c) >= 'A' && (c) <= 'Z') || ((c) >= '0' && (c) <= '9'))) : syntax_property (c, 1) != Sword))
      | (class_bits & 0x8 && (syntax_property (c, 1) == Swhitespace))
      | (class_bits & 0x10
         && (uppercasep (c)
      || (corig != c
          && c == downcase (corig) && lowercasep (c))))
      | (class_bits & 0x1 && (syntax_property (c, 1) == Sword))
      | (class_bits & 0x40 && (((c) < 0200) ? (((c) >= 'a' && (c) <= 'z') || ((c) >= 'A' && (c) <= 'Z')) : alphabeticp (c)))
      | (class_bits & 0x80 && (((c) < 0200) ? (((c) >= 'a' && (c) <= 'z') || ((c) >= 'A' && (c) <= 'Z') || ((c) >= '0' && (c) <= '9')) : (alphabeticp (c) || decimalnump (c))))
      | (class_bits & 0x100 && ((((sizeof ((c) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) ? (c) > ' ' && !((c) >= 0177 && (c) <= 0240) : graphicp (c)))
      | (class_bits & 0x200 && ((((sizeof ((c) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) ? (c) >= ' ' && !((c) >= 0177 && (c) <= 0237) : printablep (c))))
    not = !not;
  else
    do { re_wchar_t range_start, range_end; re_char *rtp; re_char *range_table_end = (((range_table)) + ((count)) * 2 * 3); for (rtp = (range_table); rtp < range_table_end; rtp += 2 * 3) { do { (range_start) = ((rtp)[0] | ((rtp)[1] << 8) | ((rtp)[2] << 16)); } while (0); do { (range_end) = ((rtp + 3)[0] | ((rtp + 3)[1] << 8) | ((rtp + 3)[2] << 16)); } while (0); if (range_start <= (c) && (c) <= range_end) { (not) = !(not); break; } } } while (0);
       }


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


   do { char *destination; long n = *p; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; fail_stack.stack[fail_stack.avail++].pointer = (regstart[n]); fail_stack.stack[fail_stack.avail++].pointer = (regend[n]); fail_stack.stack[fail_stack.avail++].integer = (n); } while (0);

   regstart[*p] = d;
   regend[*p] = ((void*)0);
                                                                      ;


   p += 1;
   break;




 case stop_memory:
                                                  ;

                                     ;
# 5593 "regex.c"
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



  if ((!((translate) == (((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)))))
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
       do { if (target_multibyte) { re_char *dtemp = (d) == (string2) ? (end1) : (d); re_char *dlimit = ((d) > (string2) && (d) <= (end2)) ? (string2) : (string1); while (dtemp-- > dlimit && !(((*dtemp) & 0xC0) != 0x80)); c = (!((dtemp)[0] & 0x80) ? (dtemp)[0] : ! ((dtemp)[0] & 0x20) ? (((((dtemp)[0] & 0x1F) << 6) | ((dtemp)[1] & 0x3F)) + (((unsigned char) (dtemp)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((dtemp)[0] & 0x10) ? ((((dtemp)[0] & 0x0F) << 12) | (((dtemp)[1] & 0x3F) << 6) | ((dtemp)[2] & 0x3F)) : string_char ((dtemp), ((void*)0), ((void*)0))); } else { (c = ((d) == (string2) ? (end1) : (d))[-1]); (c) = ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c) : ((c) + 0x3FFF00)); } } while (0);
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
# 5740 "regex.c"
 case on_failure_keep_string_jump:
   ((mcnt) = extract_number_and_incr (&p));

                        ;

   do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (((void*)0)); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p - 3); fail_stack.frame = fail_stack.avail; } while (0);
   break;
# 5762 "regex.c"
 case on_failure_jump_nastyloop:
   ((mcnt) = extract_number_and_incr (&p));

                        ;

                                       ;
   {
     int cycle = 0;
     do { ssize_t failure = fail_stack.frame; while (failure > 0 && ((fail_stack.stack[(failure) - 2].pointer) == d || (fail_stack.stack[(failure) - 2].pointer) == ((void*)0))) { ; if (fail_stack.stack[(failure) - 1].pointer == p - 4) { cycle = 1; break; } ; failure = fail_stack.stack[(failure) - 3].integer; } ; } while (0);
     if (!cycle)




       do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (d); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p - 3); fail_stack.frame = fail_stack.avail; } while (0);
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
       do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (d); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p - 3); fail_stack.frame = fail_stack.avail; } while (0);
   }
   break;
# 5815 "regex.c"
 case on_failure_jump:
   ((mcnt) = extract_number_and_incr (&p));

                        ;

   do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (d); ; ; fail_stack.stack[fail_stack.avail++].pointer = (p -3); fail_stack.frame = fail_stack.avail; } while (0);
   break;
# 5830 "regex.c"
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
   do { if (immediate_quit) do { if (!((globals.f_Vquit_flag) == (builtin_lisp_symbol (0))) && ((globals.f_Vinhibit_quit) == (builtin_lisp_symbol (0)))) process_quit_flag (); else if (pending_signals) process_pending_signals (); } while (0); } while (0);
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
       do { char *destination; int c; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ((c) = extract_number (p2)); ; fail_stack.stack[fail_stack.avail++].integer = (c); fail_stack.stack[fail_stack.avail++].pointer = (p2); fail_stack.stack[fail_stack.avail++].integer = (-1); do { (p2)[0] = (mcnt) & 0377; (p2)[1] = (mcnt) >> 8; } while (0); } while (0);
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
       do { char *destination; int c; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ((c) = extract_number (p2)); ; fail_stack.stack[fail_stack.avail++].integer = (c); fail_stack.stack[fail_stack.avail++].pointer = (p2); fail_stack.stack[fail_stack.avail++].integer = (-1); do { (p2)[0] = (mcnt) & 0377; (p2)[1] = (mcnt) >> 8; } while (0); } while (0);
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
     do { char *destination; int c; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ((c) = extract_number (p2)); ; fail_stack.stack[fail_stack.avail++].integer = (c); fail_stack.stack[fail_stack.avail++].pointer = (p2); fail_stack.stack[fail_stack.avail++].integer = (-1); do { (p2)[0] = (mcnt) & 0377; (p2)[1] = (mcnt) >> 8; } while (0); } while (0);
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

  ssize_t offset = ((((size1 && string1 <= (d - 1) && (d - 1) <= string1 + size1) ? (d - 1) - string1 : (d - 1) - string2 + (ptrdiff_t) size1)) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object)));
  ssize_t charpos = SYNTAX_TABLE_BYTE_TO_CHAR (offset);
  UPDATE_SYNTAX_TABLE_FAST (charpos);

  do { if (target_multibyte) { re_char *dtemp = (d) == (string2) ? (end1) : (d); re_char *dlimit = ((d) > (string2) && (d) <= (end2)) ? (string2) : (string1); while (dtemp-- > dlimit && !(((*dtemp) & 0xC0) != 0x80)); c1 = (!((dtemp)[0] & 0x80) ? (dtemp)[0] : ! ((dtemp)[0] & 0x20) ? (((((dtemp)[0] & 0x1F) << 6) | ((dtemp)[1] & 0x3F)) + (((unsigned char) (dtemp)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((dtemp)[0] & 0x10) ? ((((dtemp)[0] & 0x0F) << 12) | (((dtemp)[1] & 0x3F) << 6) | ((dtemp)[2] & 0x3F)) : string_char ((dtemp), ((void*)0), ((void*)0))); } else { (c1 = ((d) == (string2) ? (end1) : (d))[-1]); (c1) = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c1) : ((c1) + 0x3FFF00)); } } while (0);
  s1 = syntax_property (c1, 1);

  UPDATE_SYNTAX_TABLE_FORWARD_FAST (charpos + 1);

  if (d == end1) { d = string2; dend = end_match_2; };
  do { if (target_multibyte) (c2) = (!((d)[0] & 0x80) ? ((dummy) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((dummy) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((dummy) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &dummy)); else { (c2) = *d; dummy = 1; (c2) = ((((sizeof ((c2) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c2) : ((c2) + 0x3FFF00)); } } while (0);
  s2 = syntax_property (c2, 1);

  if (
      ((s1 == Sword) != (s2 == Sword))


      || ((s1 == Sword) && (!((((sizeof ((c1) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) && (((sizeof ((c2) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0))) && word_boundary_p (c1, c2))))
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

       ssize_t offset = ((((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1)) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object)));
       ssize_t charpos = SYNTAX_TABLE_BYTE_TO_CHAR (offset);
       UPDATE_SYNTAX_TABLE_FAST (charpos);

       while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
       do { if (target_multibyte) (c2) = (!((d)[0] & 0x80) ? ((dummy) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((dummy) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((dummy) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &dummy)); else { (c2) = *d; dummy = 1; (c2) = ((((sizeof ((c2) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c2) : ((c2) + 0x3FFF00)); } } while (0);
       s2 = syntax_property (c2, 1);


       if (s2 != Sword)
  goto fail;


       if (!((d) == (size1 ? string1 : string2) || !size2))
  {
    do { if (target_multibyte) { re_char *dtemp = (d) == (string2) ? (end1) : (d); re_char *dlimit = ((d) > (string2) && (d) <= (end2)) ? (string2) : (string1); while (dtemp-- > dlimit && !(((*dtemp) & 0xC0) != 0x80)); c1 = (!((dtemp)[0] & 0x80) ? (dtemp)[0] : ! ((dtemp)[0] & 0x20) ? (((((dtemp)[0] & 0x1F) << 6) | ((dtemp)[1] & 0x3F)) + (((unsigned char) (dtemp)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((dtemp)[0] & 0x10) ? ((((dtemp)[0] & 0x0F) << 12) | (((dtemp)[1] & 0x3F) << 6) | ((dtemp)[2] & 0x3F)) : string_char ((dtemp), ((void*)0), ((void*)0))); } else { (c1 = ((d) == (string2) ? (end1) : (d))[-1]); (c1) = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c1) : ((c1) + 0x3FFF00)); } } while (0);

    UPDATE_SYNTAX_TABLE_BACKWARD (charpos - 1);

    s1 = syntax_property (c1, 1);



    if ((s1 == Sword) && !(!((((sizeof ((c1) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) && (((sizeof ((c2) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0))) && word_boundary_p (c1, c2)))
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

       ssize_t offset = ((((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1)) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object))) - 1;
       ssize_t charpos = SYNTAX_TABLE_BYTE_TO_CHAR (offset);
       UPDATE_SYNTAX_TABLE_FAST (charpos);

       do { if (target_multibyte) { re_char *dtemp = (d) == (string2) ? (end1) : (d); re_char *dlimit = ((d) > (string2) && (d) <= (end2)) ? (string2) : (string1); while (dtemp-- > dlimit && !(((*dtemp) & 0xC0) != 0x80)); c1 = (!((dtemp)[0] & 0x80) ? (dtemp)[0] : ! ((dtemp)[0] & 0x20) ? (((((dtemp)[0] & 0x1F) << 6) | ((dtemp)[1] & 0x3F)) + (((unsigned char) (dtemp)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((dtemp)[0] & 0x10) ? ((((dtemp)[0] & 0x0F) << 12) | (((dtemp)[1] & 0x3F) << 6) | ((dtemp)[2] & 0x3F)) : string_char ((dtemp), ((void*)0), ((void*)0))); } else { (c1 = ((d) == (string2) ? (end1) : (d))[-1]); (c1) = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c1) : ((c1) + 0x3FFF00)); } } while (0);
       s1 = syntax_property (c1, 1);


       if (s1 != Sword)
  goto fail;


       if (!((d) == end2))
  {
    if (d == end1) { d = string2; dend = end_match_2; };
    do { if (target_multibyte) (c2) = (!((d)[0] & 0x80) ? ((dummy) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((dummy) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((dummy) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &dummy)); else { (c2) = *d; dummy = 1; (c2) = ((((sizeof ((c2) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c2) : ((c2) + 0x3FFF00)); } } while (0);

    UPDATE_SYNTAX_TABLE_FORWARD_FAST (charpos);

    s2 = syntax_property (c2, 1);



    if ((s2 == Sword) && !(!((((sizeof ((c1) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0)) && (((sizeof ((c2) + 0)) > (sizeof ((0x100) + 0)) ? (sizeof ((c2) + 0)) : (sizeof ((0x100) + 0))) <= sizeof (unsigned) ? ((c2) + (unsigned) 0) < ((0x100) + (unsigned) 0) : ((c2) + (uintmax_t) 0) < ((0x100) + (uintmax_t) 0))) && word_boundary_p (c1, c2)))
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

       ssize_t offset = ((((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1)) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object)));
       ssize_t charpos = SYNTAX_TABLE_BYTE_TO_CHAR (offset);
       UPDATE_SYNTAX_TABLE_FAST (charpos);

       while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };
       c2 = (target_multibyte ? ((!((d)[0] & 0x80) ? (d)[0] : ! ((d)[0] & 0x20) ? (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((d)[0] & 0x10) ? ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F)) : string_char ((d), ((void*)0), ((void*)0)))) : (*(d)));
       s2 = syntax_property (c2, 1);


       if (s2 != Sword && s2 != Ssymbol)
  goto fail;


       if (!((d) == (size1 ? string1 : string2) || !size2))
  {
    do { if (target_multibyte) { re_char *dtemp = (d) == (string2) ? (end1) : (d); re_char *dlimit = ((d) > (string2) && (d) <= (end2)) ? (string2) : (string1); while (dtemp-- > dlimit && !(((*dtemp) & 0xC0) != 0x80)); c1 = (!((dtemp)[0] & 0x80) ? (dtemp)[0] : ! ((dtemp)[0] & 0x20) ? (((((dtemp)[0] & 0x1F) << 6) | ((dtemp)[1] & 0x3F)) + (((unsigned char) (dtemp)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((dtemp)[0] & 0x10) ? ((((dtemp)[0] & 0x0F) << 12) | (((dtemp)[1] & 0x3F) << 6) | ((dtemp)[2] & 0x3F)) : string_char ((dtemp), ((void*)0), ((void*)0))); } else { (c1 = ((d) == (string2) ? (end1) : (d))[-1]); (c1) = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c1) : ((c1) + 0x3FFF00)); } } while (0);

    UPDATE_SYNTAX_TABLE_BACKWARD (charpos - 1);

    s1 = syntax_property (c1, 1);


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

       ssize_t offset = ((((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1)) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object))) - 1;
       ssize_t charpos = SYNTAX_TABLE_BYTE_TO_CHAR (offset);
       UPDATE_SYNTAX_TABLE_FAST (charpos);

       do { if (target_multibyte) { re_char *dtemp = (d) == (string2) ? (end1) : (d); re_char *dlimit = ((d) > (string2) && (d) <= (end2)) ? (string2) : (string1); while (dtemp-- > dlimit && !(((*dtemp) & 0xC0) != 0x80)); c1 = (!((dtemp)[0] & 0x80) ? (dtemp)[0] : ! ((dtemp)[0] & 0x20) ? (((((dtemp)[0] & 0x1F) << 6) | ((dtemp)[1] & 0x3F)) + (((unsigned char) (dtemp)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((dtemp)[0] & 0x10) ? ((((dtemp)[0] & 0x0F) << 12) | (((dtemp)[1] & 0x3F) << 6) | ((dtemp)[2] & 0x3F)) : string_char ((dtemp), ((void*)0), ((void*)0))); } else { (c1 = ((d) == (string2) ? (end1) : (d))[-1]); (c1) = ((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c1) : ((c1) + 0x3FFF00)); } } while (0);
       s1 = syntax_property (c1, 1);


       if (s1 != Sword && s1 != Ssymbol)
  goto fail;


       if (!((d) == end2))
  {
    if (d == end1) { d = string2; dend = end_match_2; };
    c2 = (target_multibyte ? ((!((d)[0] & 0x80) ? (d)[0] : ! ((d)[0] & 0x20) ? (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0)) : ! ((d)[0] & 0x10) ? ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F)) : string_char ((d), ((void*)0), ((void*)0)))) : (*(d)));

    UPDATE_SYNTAX_TABLE_FORWARD_FAST (charpos + 1);

    s2 = syntax_property (c2, 1);


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
       ssize_t offset = ((((size1 && string1 <= (d) && (d) <= string1 + size1) ? (d) - string1 : (d) - string2 + (ptrdiff_t) size1)) + (((re_match_object) == (builtin_lisp_symbol (0))) || BUFFERP (re_match_object)));
       ssize_t pos1 = SYNTAX_TABLE_BYTE_TO_CHAR (offset);
       UPDATE_SYNTAX_TABLE_FAST (pos1);
     }

     {
       int len;
       re_wchar_t c;

       do { if (target_multibyte) (c) = (!((d)[0] & 0x80) ? ((len) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((len) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((len) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &len)); else { (c) = *d; len = 1; (c) = ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c) : ((c) + 0x3FFF00)); } } while (0);
       if ((syntax_property (c, 1) != (enum syntaxcode) mcnt) ^ not)
  goto fail;
       d += len;
     }
   }
   break;


 case before_dot:
                                          ;
   if (((d) - (current_buffer)->text->beg - (d - (current_buffer)->text->beg <= (current_buffer->text->gpt_byte) - ((1)) ? 0 : (current_buffer->text->gap_size)) + ((1))) >= (current_buffer->pt_byte + 0))
     goto fail;
   break;

 case at_dot:
                                      ;
   if (((d) - (current_buffer)->text->beg - (d - (current_buffer)->text->beg <= (current_buffer->text->gpt_byte) - ((1)) ? 0 : (current_buffer->text->gap_size)) + ((1))) != (current_buffer->pt_byte + 0))
     goto fail;
   break;

 case after_dot:
                                         ;
   if (((d) - (current_buffer)->text->beg - (d - (current_buffer)->text->beg <= (current_buffer->text->gpt_byte) - ((1)) ? 0 : (current_buffer->text->gap_size)) + ((1))) <= (current_buffer->pt_byte + 0))
     goto fail;
   break;

 case categoryspec:
 case notcategoryspec:
   {
     boolean not = (re_opcode_t) *(p - 1) == notcategoryspec;
     mcnt = *p++;

                           ;
     while (d == dend) { if (dend == end_match_2) goto fail; d = string2; dend = end_match_2; };

     {
       int len;
       re_wchar_t c;
       do { if (target_multibyte) (c) = (!((d)[0] & 0x80) ? ((len) = 1, (d)[0]) : ! ((d)[0] & 0x20) ? ((len) = 2, (((((d)[0] & 0x1F) << 6) | ((d)[1] & 0x3F)) + (((unsigned char) (d)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((d)[0] & 0x10) ? ((len) = 3, ((((d)[0] & 0x0F) << 12) | (((d)[1] & 0x3F) << 6) | ((d)[2] & 0x3F))) : string_char ((d), ((void*)0), &len)); else { (c) = *d; len = 1; (c) = ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (c) : ((c) + 0x3FFF00)); } } while (0);
       if ((!CHAR_HAS_CATEGORY (c, mcnt)) ^ not)
  goto fail;
       d += len;
     }
   }
   break;



 default:
   abort ();
 }
      continue;



    fail:
      do { if (immediate_quit) do { if (!((globals.f_Vquit_flag) == (builtin_lisp_symbol (0))) && ((globals.f_Vinhibit_quit) == (builtin_lisp_symbol (0)))) process_quit_flag (); else if (pending_signals) process_pending_signals (); } while (0); } while (0);
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
       do { char *destination; ; ; ; ; while (((fail_stack).size - (fail_stack).avail) <= 3) { if (!(((fail_stack).size * sizeof (fail_stack_elt_t) >= re_max_failures * 20) ? 0 : ((fail_stack).stack = (destination = ((((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))) <= sa_avail ? (sa_avail -= (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))), __builtin_alloca (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))))) : (sa_must_free = 1, record_xmalloc (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)))))), memcpy (destination, (fail_stack).stack, (fail_stack).size * sizeof (fail_stack_elt_t))), (fail_stack).stack == ((void*)0) ? 0 : ((fail_stack).size = (((re_max_failures * 20) < (((fail_stack).size * sizeof (fail_stack_elt_t) * 4)) ? (re_max_failures * 20) : (((fail_stack).size * sizeof (fail_stack_elt_t) * 4))) / sizeof (fail_stack_elt_t)), 1)))) return -2; ; ;}; ; ; fail_stack.stack[fail_stack.avail++].integer = (fail_stack.frame); ; ; ; fail_stack.stack[fail_stack.avail++].pointer = (str); ; ; fail_stack.stack[fail_stack.avail++].pointer = (pat - 2); fail_stack.frame = fail_stack.avail; } while (0);


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

  do { ((void)0); do { if (regstart) { ((void)0); regstart = ((void*)0); } } while (0); do { if (regend) { ((void)0); regend = ((void*)0); } } while (0); do { if (best_regstart) { ((void)0); best_regstart = ((void*)0); } } while (0); do { if (best_regend) { ((void)0); best_regend = ((void*)0); } } while (0); do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0); } while (0);

  return -1;
}






static int
bcmp_translate (const_re_char *s1, const_re_char *s2, register ssize_t len,
  Lisp_Object translate, const int target_multibyte)
{
  register re_char *p1 = s1, *p2 = s2;
  re_char *p1_end = s1 + len;
  re_char *p2_end = s2 + len;



  while (p1 < p1_end && p2 < p2_end)
    {
      int p1_charlen, p2_charlen;
      re_wchar_t p1_ch, p2_ch;

      do { if (target_multibyte) (p1_ch) = (!((p1)[0] & 0x80) ? ((p1_charlen) = 1, (p1)[0]) : ! ((p1)[0] & 0x20) ? ((p1_charlen) = 2, (((((p1)[0] & 0x1F) << 6) | ((p1)[1] & 0x3F)) + (((unsigned char) (p1)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p1)[0] & 0x10) ? ((p1_charlen) = 3, ((((p1)[0] & 0x0F) << 12) | (((p1)[1] & 0x3F) << 6) | ((p1)[2] & 0x3F))) : string_char ((p1), ((void*)0), &p1_charlen)); else { (p1_ch) = *p1; p1_charlen = 1; (p1_ch) = ((((sizeof ((p1_ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((p1_ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((p1_ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((p1_ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (p1_ch) : ((p1_ch) + 0x3FFF00)); } } while (0);
      do { if (target_multibyte) (p2_ch) = (!((p2)[0] & 0x80) ? ((p2_charlen) = 1, (p2)[0]) : ! ((p2)[0] & 0x20) ? ((p2_charlen) = 2, (((((p2)[0] & 0x1F) << 6) | ((p2)[1] & 0x3F)) + (((unsigned char) (p2)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p2)[0] & 0x10) ? ((p2_charlen) = 3, ((((p2)[0] & 0x0F) << 12) | (((p2)[1] & 0x3F) << 6) | ((p2)[2] & 0x3F))) : string_char ((p2), ((void*)0), &p2_charlen)); else { (p2_ch) = *p2; p2_charlen = 1; (p2_ch) = ((((sizeof ((p2_ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((p2_ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((p2_ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((p2_ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? (p2_ch) : ((p2_ch) + 0x3FFF00)); } } while (0);

      if (char_table_translate (translate, p1_ch)
   != char_table_translate (translate, p2_ch))
 return 1;

      p1 += p1_charlen, p2 += p2_charlen;
    }

  if (p1 != p1_end || p2 != p2_end)
    return 1;

  return 0;
}
# 6329 "regex.c"
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
