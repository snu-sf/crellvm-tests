# 1 "coding.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "coding.c" 2
# 286 "coding.c"
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
# 287 "coding.c" 2
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
# 288 "coding.c" 2


# 1 "/usr/include/wchar.h" 1 3 4
# 36 "/usr/include/wchar.h" 3 4
# 1 "../lib/stdio.h" 1 3 4
# 21 "../lib/stdio.h" 3
# 37 "/usr/include/wchar.h" 2 3 4




# 1 "/usr/include/bits/wchar.h" 1 3 4
# 22 "/usr/include/bits/wchar.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/wchar.h" 2 3 4
# 42 "/usr/include/wchar.h" 2 3 4
# 51 "/usr/include/wchar.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 132 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 52 "/usr/include/wchar.h" 2 3 4
# 106 "/usr/include/wchar.h" 3 4
typedef __mbstate_t mbstate_t;
# 137 "/usr/include/wchar.h" 3 4
struct tm;
# 147 "/usr/include/wchar.h" 3 4
extern wchar_t *wcscpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) __attribute__ ((__nothrow__ ));

extern wchar_t *wcsncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ ));


extern wchar_t *wcscat (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) __attribute__ ((__nothrow__ ));

extern wchar_t *wcsncat (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ ));


extern int wcscmp (const wchar_t *__s1, const wchar_t *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));

extern int wcsncmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));




extern int wcscasecmp (const wchar_t *__s1, const wchar_t *__s2) __attribute__ ((__nothrow__ ));


extern int wcsncasecmp (const wchar_t *__s1, const wchar_t *__s2,
   size_t __n) __attribute__ ((__nothrow__ ));





extern int wcscasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
    __locale_t __loc) __attribute__ ((__nothrow__ ));

extern int wcsncasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
     size_t __n, __locale_t __loc) __attribute__ ((__nothrow__ ));





extern int wcscoll (const wchar_t *__s1, const wchar_t *__s2) __attribute__ ((__nothrow__ ));



extern size_t wcsxfrm (wchar_t *__restrict __s1,
         const wchar_t *__restrict __s2, size_t __n) __attribute__ ((__nothrow__ ));
# 206 "/usr/include/wchar.h" 3 4
extern int wcscoll_l (const wchar_t *__s1, const wchar_t *__s2,
        __locale_t __loc) __attribute__ ((__nothrow__ ));




extern size_t wcsxfrm_l (wchar_t *__s1, const wchar_t *__s2,
    size_t __n, __locale_t __loc) __attribute__ ((__nothrow__ ));


extern wchar_t *wcsdup (const wchar_t *__s) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 227 "/usr/include/wchar.h" 3 4
extern wchar_t *wcschr (const wchar_t *__wcs, wchar_t __wc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));
# 237 "/usr/include/wchar.h" 3 4
extern wchar_t *wcsrchr (const wchar_t *__wcs, wchar_t __wc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));






extern wchar_t *wcschrnul (const wchar_t *__s, wchar_t __wc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));





extern size_t wcscspn (const wchar_t *__wcs, const wchar_t *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));


extern size_t wcsspn (const wchar_t *__wcs, const wchar_t *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));
# 266 "/usr/include/wchar.h" 3 4
extern wchar_t *wcspbrk (const wchar_t *__wcs, const wchar_t *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));
# 277 "/usr/include/wchar.h" 3 4
extern wchar_t *wcsstr (const wchar_t *__haystack, const wchar_t *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));



extern wchar_t *wcstok (wchar_t *__restrict __s,
   const wchar_t *__restrict __delim,
   wchar_t **__restrict __ptr) __attribute__ ((__nothrow__ ));


extern size_t wcslen (const wchar_t *__s) __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));
# 299 "/usr/include/wchar.h" 3 4
extern wchar_t *wcswcs (const wchar_t *__haystack, const wchar_t *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));





extern size_t wcsnlen (const wchar_t *__s, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));
# 320 "/usr/include/wchar.h" 3 4
extern wchar_t *wmemchr (const wchar_t *__s, wchar_t __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));



extern int wmemcmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));


extern wchar_t *wmemcpy (wchar_t *__restrict __s1,
    const wchar_t *__restrict __s2, size_t __n) __attribute__ ((__nothrow__ ));



extern wchar_t *wmemmove (wchar_t *__s1, const wchar_t *__s2, size_t __n)
     __attribute__ ((__nothrow__ ));


extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __attribute__ ((__nothrow__ ));





extern wchar_t *wmempcpy (wchar_t *__restrict __s1,
     const wchar_t *__restrict __s2, size_t __n)
     __attribute__ ((__nothrow__ ));






extern wint_t btowc (int __c) __attribute__ ((__nothrow__ ));



extern int wctob (wint_t __c) __attribute__ ((__nothrow__ ));



extern int mbsinit (const mbstate_t *__ps) __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));



extern size_t mbrtowc (wchar_t *__restrict __pwc,
         const char *__restrict __s, size_t __n,
         mbstate_t *__restrict __p) __attribute__ ((__nothrow__ ));


extern size_t wcrtomb (char *__restrict __s, wchar_t __wc,
         mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));


extern size_t __mbrlen (const char *__restrict __s, size_t __n,
   mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));
extern size_t mbrlen (const char *__restrict __s, size_t __n,
        mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));
# 408 "/usr/include/wchar.h" 3 4
extern size_t mbsrtowcs (wchar_t *__restrict __dst,
    const char **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));



extern size_t wcsrtombs (char *__restrict __dst,
    const wchar_t **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));






extern size_t mbsnrtowcs (wchar_t *__restrict __dst,
     const char **__restrict __src, size_t __nmc,
     size_t __len, mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));



extern size_t wcsnrtombs (char *__restrict __dst,
     const wchar_t **__restrict __src,
     size_t __nwc, size_t __len,
     mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ ));






extern int wcwidth (wchar_t __c) __attribute__ ((__nothrow__ ));



extern int wcswidth (const wchar_t *__s, size_t __n) __attribute__ ((__nothrow__ ));






extern double wcstod (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr) __attribute__ ((__nothrow__ ));





extern float wcstof (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) __attribute__ ((__nothrow__ ));
extern long double wcstold (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) __attribute__ ((__nothrow__ ));







extern long int wcstol (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, int __base) __attribute__ ((__nothrow__ ));



extern unsigned long int wcstoul (const wchar_t *__restrict __nptr,
      wchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));






__extension__
extern long long int wcstoll (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));



__extension__
extern unsigned long long int wcstoull (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr,
     int __base) __attribute__ ((__nothrow__ ));






__extension__
extern long long int wcstoq (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));



__extension__
extern unsigned long long int wcstouq (const wchar_t *__restrict __nptr,
           wchar_t **__restrict __endptr,
           int __base) __attribute__ ((__nothrow__ ));
# 530 "/usr/include/wchar.h" 3 4
extern long int wcstol_l (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr, int __base,
     __locale_t __loc) __attribute__ ((__nothrow__ ));

extern unsigned long int wcstoul_l (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr,
        int __base, __locale_t __loc) __attribute__ ((__nothrow__ ));

__extension__
extern long long int wcstoll_l (const wchar_t *__restrict __nptr,
    wchar_t **__restrict __endptr,
    int __base, __locale_t __loc) __attribute__ ((__nothrow__ ));

__extension__
extern unsigned long long int wcstoull_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ ));

extern double wcstod_l (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ ));

extern float wcstof_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ ));

extern long double wcstold_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         __locale_t __loc) __attribute__ ((__nothrow__ ));






extern wchar_t *wcpcpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) __attribute__ ((__nothrow__ ));



extern wchar_t *wcpncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ ));






extern __FILE *open_wmemstream (wchar_t **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ ));






extern int fwide (__FILE *__fp, int __mode) __attribute__ ((__nothrow__ ));






extern int fwprintf (__FILE *__restrict __stream,
       const wchar_t *__restrict __format, ...)
                                                           ;




extern int wprintf (const wchar_t *__restrict __format, ...)
                                                           ;

extern int swprintf (wchar_t *__restrict __s, size_t __n,
       const wchar_t *__restrict __format, ...)
     __attribute__ ((__nothrow__ )) ;





extern int vfwprintf (__FILE *__restrict __s,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
                                                           ;




extern int vwprintf (const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                           ;


extern int vswprintf (wchar_t *__restrict __s, size_t __n,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) ;






extern int fwscanf (__FILE *__restrict __stream,
      const wchar_t *__restrict __format, ...)
                                                          ;




extern int wscanf (const wchar_t *__restrict __format, ...)
                                                          ;

extern int swscanf (const wchar_t *__restrict __s,
      const wchar_t *__restrict __format, ...)
     __attribute__ ((__nothrow__ )) ;
# 689 "/usr/include/wchar.h" 3 4
extern int vfwscanf (__FILE *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                          ;




extern int vwscanf (const wchar_t *__restrict __format,
      __gnuc_va_list __arg)
                                                          ;

extern int vswscanf (const wchar_t *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) ;
# 745 "/usr/include/wchar.h" 3 4
extern wint_t fgetwc (__FILE *__stream);
extern wint_t getwc (__FILE *__stream);





extern wint_t getwchar (void);






extern wint_t fputwc (wchar_t __wc, __FILE *__stream);
extern wint_t putwc (wchar_t __wc, __FILE *__stream);





extern wint_t putwchar (wchar_t __wc);







extern wchar_t *fgetws (wchar_t *__restrict __ws, int __n,
   __FILE *__restrict __stream);





extern int fputws (const wchar_t *__restrict __ws,
     __FILE *__restrict __stream);






extern wint_t ungetwc (wint_t __wc, __FILE *__stream);
# 801 "/usr/include/wchar.h" 3 4
extern wint_t getwc_unlocked (__FILE *__stream);
extern wint_t getwchar_unlocked (void);







extern wint_t fgetwc_unlocked (__FILE *__stream);







extern wint_t fputwc_unlocked (wchar_t __wc, __FILE *__stream);
# 827 "/usr/include/wchar.h" 3 4
extern wint_t putwc_unlocked (wchar_t __wc, __FILE *__stream);
extern wint_t putwchar_unlocked (wchar_t __wc);
# 837 "/usr/include/wchar.h" 3 4
extern wchar_t *fgetws_unlocked (wchar_t *__restrict __ws, int __n,
     __FILE *__restrict __stream);







extern int fputws_unlocked (const wchar_t *__restrict __ws,
       __FILE *__restrict __stream);







extern size_t wcsftime (wchar_t *__restrict __s, size_t __maxsize,
   const wchar_t *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));







extern size_t wcsftime_l (wchar_t *__restrict __s, size_t __maxsize,
     const wchar_t *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));
# 291 "coding.c" 2


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
# 27 "/usr/include/stdint.h" 3 4
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
# 294 "coding.c" 2
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
# 295 "coding.c" 2
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
# 296 "coding.c" 2
# 1 "./charset.h" 1
# 37 "./charset.h"
enum define_charset_arg_index
  {
    charset_arg_name,
    charset_arg_dimension,
    charset_arg_code_space,
    charset_arg_min_code,
    charset_arg_max_code,
    charset_arg_iso_final,
    charset_arg_iso_revision,
    charset_arg_emacs_mule_id,
    charset_arg_ascii_compatible_p,
    charset_arg_supplementary_p,
    charset_arg_invalid_code,
    charset_arg_code_offset,
    charset_arg_map,
    charset_arg_subset,
    charset_arg_superset,
    charset_arg_unify_map,
    charset_arg_plist,
    charset_arg_max
  };




enum charset_attr_index
  {

    charset_id,


    charset_name,


    charset_plist,




    charset_map,






    charset_decoder,




    charset_encoder,
# 100 "./charset.h"
    charset_subset,
# 110 "./charset.h"
    charset_superset,





    charset_unify_map,




    charset_deunifier,


    charset_attr_max
  };



enum charset_method
  {



    CHARSET_METHOD_OFFSET,




    CHARSET_METHOD_MAP,


    CHARSET_METHOD_SUBSET,


    CHARSET_METHOD_SUPERSET
  };

struct charset
{

  int id;


  ptrdiff_t hash_index;


  int dimension;
# 167 "./charset.h"
  int code_space[15];




  unsigned char *code_space_mask;


  bool_bf code_linear_p : 1;



  bool_bf iso_chars_96 : 1;


  bool_bf ascii_compatible_p : 1;


  bool_bf supplementary_p : 1;


  bool_bf compact_codes_p : 1;


  bool_bf unified_p : 1;



  int iso_final;


  int iso_revision;




  int emacs_mule_id;


  enum charset_method method;


  unsigned min_code, max_code;



  unsigned char_index_offset;






  int min_char, max_char;



  unsigned invalid_code;
# 238 "./charset.h"
  unsigned char fast_map[190];



  int code_offset;
};



extern Lisp_Object Vcharset_hash_table;


extern struct charset *charset_table;



extern Lisp_Object Vcharset_ordered_list;
extern Lisp_Object Vcharset_non_preferred_head;

extern EMACS_UINT charset_ordered_list_tick;

extern Lisp_Object Viso_2022_charset_list;
extern Lisp_Object Vemacs_mule_charset_list;

extern int emacs_mule_charset[256];
# 331 "./charset.h"
inline void
set_charset_attr (struct charset *charset, enum charset_attr_index idx,
    Lisp_Object val)
{
  ASET ((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index)), idx, val);
}
# 424 "./charset.h"
extern Lisp_Object charset_work;
# 457 "./charset.h"
extern _Bool charset_map_loaded;
# 473 "./charset.h"
extern int iso_charset_table[3][2][0x80];
# 523 "./charset.h"
extern int charset_ascii, charset_eight_bit;
extern int charset_unicode;
extern int charset_jisx0201_roman;
extern int charset_jisx0208_1978;
extern int charset_jisx0208;
extern int charset_ksc5601;

extern int charset_unibyte;

extern struct charset *char_charset (int, Lisp_Object, unsigned *);
extern Lisp_Object charset_attributes (int);

extern int decode_char (struct charset *, unsigned);
extern unsigned encode_char (struct charset *, int);
extern int string_xstring_p (Lisp_Object);

extern void map_charset_chars (void (*) (Lisp_Object, Lisp_Object),
                               Lisp_Object, Lisp_Object,
                               struct charset *, unsigned, unsigned);
# 297 "coding.c" 2
# 1 "./ccl.h" 1
# 39 "./ccl.h"
struct ccl_program {
  ptrdiff_t idx;



  int size;
  Lisp_Object *prog;
  int ic;
  int eof_ic;

  int reg[8];


  int status;
  int buf_magnification;


  int stack_idx;
  int consumed;
  int produced;
  bool_bf last_block : 1;

  bool_bf quit_silently : 1;


};




struct ccl_spec {
  struct ccl_program ccl;
};





extern _Bool setup_ccl_program (struct ccl_program *, Lisp_Object);

extern void ccl_driver (struct ccl_program *, int *, int *, int, int,
                        Lisp_Object);
# 298 "coding.c" 2
# 1 "./composite.h" 1
# 28 "./composite.h"
# 1 "./font.h" 1
# 25 "./font.h"
struct composition_it;
struct face;
struct glyph_string;
# 66 "./font.h"
enum font_property_index
  {



    FONT_TYPE_INDEX,


    FONT_FOUNDRY_INDEX,


    FONT_FAMILY_INDEX,


    FONT_ADSTYLE_INDEX,



    FONT_REGISTRY_INDEX,





    FONT_WEIGHT_INDEX,





    FONT_SLANT_INDEX,





    FONT_WIDTH_INDEX,





    FONT_SIZE_INDEX,



    FONT_DPI_INDEX,



    FONT_SPACING_INDEX,



    FONT_AVGWIDTH_INDEX,
# 155 "./font.h"
    FONT_EXTRA_INDEX,


    FONT_SPEC_MAX,




    FONT_OBJLIST_INDEX = FONT_SPEC_MAX,


    FONT_ENTITY_MAX,




    FONT_NAME_INDEX = FONT_ENTITY_MAX,




    FONT_FULLNAME_INDEX,



    FONT_FILE_INDEX,


    FONT_OBJECT_MAX
  };
# 245 "./font.h"
struct font_spec
{
  struct vectorlike_header header;
  Lisp_Object props[FONT_SPEC_MAX];
};



struct font_entity
{
  struct vectorlike_header header;
  Lisp_Object props[FONT_ENTITY_MAX];
};
# 266 "./font.h"
struct font
{
  struct vectorlike_header header;




  Lisp_Object props[FONT_OBJECT_MAX];







  int min_width;
  int max_width;


  int pixel_size;



  int height;



  int space_width;





  int average_width;


  int ascent, descent;







  int underline_thickness;




  int underline_position;




  _Bool vertical_centering;
# 351 "./font.h"
  int baseline_offset;
# 364 "./font.h"
  int relative_compose;



  int default_ascent;




  int encoding_charset;




  int repertory_charset;




  struct font_driver *driver;



};

enum font_spacing
  {
    FONT_SPACING_PROPORTIONAL = 0,
    FONT_SPACING_DUAL = 90,
    FONT_SPACING_MONO = 100,
    FONT_SPACING_CHARCELL = 110
  };

struct font_metrics
{
  short lbearing, rbearing, width, ascent, descent;
};

struct font_bitmap
{
  int bits_per_pixel;
  int rows;
  int width;
  int pitch;
  unsigned char *buffer;
  int left;
  int top;
  int advance;
};




inline _Bool
FONTP (Lisp_Object x)
{
  return PSEUDOVECTORP (x, PVEC_FONT);
}


inline _Bool
FONT_SPEC_P (Lisp_Object x)
{
  return FONTP (x) && (ASIZE (x) & PSEUDOVECTOR_SIZE_MASK) == FONT_SPEC_MAX;
}


inline _Bool
GC_FONT_SPEC_P (Lisp_Object x)
{
  return FONTP (x) && (gc_asize (x) & PSEUDOVECTOR_SIZE_MASK) == FONT_SPEC_MAX;
}


inline _Bool
FONT_ENTITY_P (Lisp_Object x)
{
  return FONTP (x) && (ASIZE (x) & PSEUDOVECTOR_SIZE_MASK) == FONT_ENTITY_MAX;
}


inline _Bool
GC_FONT_ENTITY_P (Lisp_Object x)
{
  return FONTP (x) && (gc_asize (x) & PSEUDOVECTOR_SIZE_MASK) == FONT_ENTITY_MAX;
}


inline _Bool
FONT_OBJECT_P (Lisp_Object x)
{
  return FONTP (x) && (ASIZE (x) & PSEUDOVECTOR_SIZE_MASK) == FONT_OBJECT_MAX;
}


inline _Bool
GC_FONT_OBJECT_P (Lisp_Object x)
{
  return FONTP (x) && (gc_asize (x) & PSEUDOVECTOR_SIZE_MASK) == FONT_OBJECT_MAX;
}



inline void
CHECK_FONT (Lisp_Object x)
{
  ((FONTP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (439), x));
}

inline void
CHECK_FONT_SPEC (Lisp_Object x)
{
  ((FONT_SPEC_P (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (446), x));
}

inline void
CHECK_FONT_ENTITY (Lisp_Object x)
{
  ((FONT_ENTITY_P (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (441), x));
}

inline void
CHECK_FONT_OBJECT (Lisp_Object x)
{
  ((FONT_OBJECT_P (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (443), x));
}



inline struct font_spec *
XFONT_SPEC (Lisp_Object p)
{
  ((void) (0 && (FONT_SPEC_P (p))));
  return ((void *) (intptr_t) ((p) - (Lisp_Vectorlike)));
}

inline struct font_spec *
GC_XFONT_SPEC (Lisp_Object p)
{
  ((void) (0 && (GC_FONT_SPEC_P (p))));
  return ((void *) (intptr_t) ((p) - (Lisp_Vectorlike)));
}

inline struct font_entity *
XFONT_ENTITY (Lisp_Object p)
{
  ((void) (0 && (FONT_ENTITY_P (p))));
  return ((void *) (intptr_t) ((p) - (Lisp_Vectorlike)));
}

inline struct font_entity *
GC_XFONT_ENTITY (Lisp_Object p)
{
  ((void) (0 && (GC_FONT_ENTITY_P (p))));
  return ((void *) (intptr_t) ((p) - (Lisp_Vectorlike)));
}

inline struct font *
XFONT_OBJECT (Lisp_Object p)
{
  ((void) (0 && (FONT_OBJECT_P (p))));
  return ((void *) (intptr_t) ((p) - (Lisp_Vectorlike)));
}

inline struct font *
GC_XFONT_OBJECT (Lisp_Object p)
{
  ((void) (0 && (GC_FONT_OBJECT_P (p))));
  return ((void *) (intptr_t) ((p) - (Lisp_Vectorlike)));
}



inline struct font *
CHECK_FONT_GET_OBJECT (Lisp_Object x)
{
  CHECK_FONT_OBJECT (x);
  return XFONT_OBJECT (x);
}
# 566 "./font.h"
struct font_driver
{

  Lisp_Object type;



  _Bool case_sensitive;



  Lisp_Object (*get_cache) (struct frame *f);
# 600 "./font.h"
  Lisp_Object (*list) (struct frame *frame, Lisp_Object font_spec);
# 609 "./font.h"
  Lisp_Object (*match) (struct frame *f, Lisp_Object spec);




  Lisp_Object (*list_family) (struct frame *f);



  void (*free_entity) (Lisp_Object font_entity);



  Lisp_Object (*open) (struct frame *f, Lisp_Object font_entity,
                       int pixel_size);


  void (*close) (struct font *font);



  void (*prepare_face) (struct frame *f, struct face *face);



  void (*done_face) (struct frame *f, struct face *face);





  int (*has_char) (Lisp_Object font, int c);



  unsigned (*encode_char) (struct font *font, int c);




  void (*text_extents) (struct font *font,
   unsigned *code, int nglyphs,
   struct font_metrics *metrics);
# 660 "./font.h"
  int (*draw) (struct glyph_string *s, int from, int to,
               int x, int y, _Bool with_background);





  int (*get_bitmap) (struct font *font, unsigned code,
                     struct font_bitmap *bitmap,
                     int bits_per_pixel);



  void (*free_bitmap) (struct font *font, struct font_bitmap *bitmap);







  int (*anchor_point) (struct font *font, unsigned code, int index,
                       int *x, int *y);




  Lisp_Object (*otf_capability) (struct font *font);
# 704 "./font.h"
  int (*otf_drive) (struct font *font, Lisp_Object features,
                    Lisp_Object gstring_in, int from, int to,
                    Lisp_Object gstring_out, int idx, _Bool alternate_subst);





  int (*start_for_frame) (struct frame *f);




  int (*end_for_frame) (struct frame *f);
# 733 "./font.h"
  Lisp_Object (*shape) (Lisp_Object lgstring);






  int (*check) (struct frame *f, struct font *font);







  int (*get_variation_glyphs) (struct font *font,
                               int c, unsigned variations[256]);

  void (*filter_properties) (Lisp_Object font, Lisp_Object properties);





  _Bool (*cached_font_ok) (struct frame *f,
                          Lisp_Object font_object,
                          Lisp_Object entity);





  Lisp_Object (*combining_capability) (struct font *font);
};






struct font_driver_list
{


  _Bool on;

  struct font_driver *driver;

  struct font_driver_list *next;
};

extern Lisp_Object copy_font_spec (Lisp_Object);
extern Lisp_Object merge_font_spec (Lisp_Object, Lisp_Object);

extern Lisp_Object font_make_entity (void);
extern Lisp_Object font_make_object (int, Lisp_Object, int);

extern Lisp_Object font_build_object (int, Lisp_Object, Lisp_Object, double);


extern Lisp_Object find_font_encoding (Lisp_Object);
extern int font_registry_charsets (Lisp_Object, struct charset **,
                                   struct charset **);
extern int font_style_to_value (enum font_property_index prop,
                                Lisp_Object name, _Bool noerror);
extern Lisp_Object font_style_symbolic (Lisp_Object font,
                                        enum font_property_index prop,
                                        _Bool for_face);

extern _Bool font_match_p (Lisp_Object spec, Lisp_Object font);
extern Lisp_Object font_list_entities (struct frame *, Lisp_Object);

extern Lisp_Object font_get_name (Lisp_Object font_object);
extern Lisp_Object font_spec_from_name (Lisp_Object font_name);
extern Lisp_Object font_get_frame (Lisp_Object font_object);
extern int font_has_char (struct frame *, Lisp_Object, int);

extern void font_clear_prop (Lisp_Object *attrs,
                             enum font_property_index prop);
extern Lisp_Object font_find_for_lface (struct frame *f, Lisp_Object *lface,
                                        Lisp_Object spec, int c);
extern Lisp_Object font_open_for_lface (struct frame *f, Lisp_Object entity,
                                        Lisp_Object *lface,
                                        Lisp_Object spec);
extern Lisp_Object font_load_for_lface (struct frame *f, Lisp_Object *lface,
                                        Lisp_Object spec);
extern void font_prepare_for_face (struct frame *f, struct face *face);
extern void font_done_for_face (struct frame *f, struct face *face);
extern void clear_font_cache (struct frame *);

extern Lisp_Object font_open_by_spec (struct frame *f, Lisp_Object spec);
extern Lisp_Object font_open_by_name (struct frame *f, Lisp_Object name);

extern Lisp_Object font_intern_prop (const char *str, ptrdiff_t len,
         _Bool force_symbol);
extern void font_update_sort_order (int *order);

extern void font_parse_family_registry (Lisp_Object family,
                                        Lisp_Object registry,
                                        Lisp_Object spec);

extern int font_parse_xlfd (char *name, ptrdiff_t len, Lisp_Object font);
extern ptrdiff_t font_unparse_xlfd (Lisp_Object font, int pixel_size,
        char *name, int bytes);
extern void register_font_driver (struct font_driver *driver, struct frame *f);
extern void free_font_driver_list (struct frame *f);



inline _Bool
valid_font_driver (struct font_driver *d)
{
  return 1;
}

extern Lisp_Object font_update_drivers (struct frame *f, Lisp_Object list);
extern Lisp_Object font_range (ptrdiff_t, ptrdiff_t, ptrdiff_t *,
          struct window *, struct face *,
          Lisp_Object);
extern void font_fill_lglyph_metrics (Lisp_Object, Lisp_Object);

extern Lisp_Object font_put_extra (Lisp_Object font, Lisp_Object prop,
                                   Lisp_Object val);


extern void font_put_frame_data (struct frame *, Lisp_Object, void *);
extern void *font_get_frame_data (struct frame *f, Lisp_Object);


extern void font_filter_properties (Lisp_Object font,
        Lisp_Object alist,
        const char *const boolean_properties[],
        const char *const non_boolean_properties[]);


extern struct font_driver ftfont_driver;
extern void syms_of_ftfont (void);


extern struct font_driver xfont_driver;
extern void syms_of_xfont (void);
extern void syms_of_ftxfont (void);

extern struct font_driver xftfont_driver;


extern struct font_driver ftxfont_driver;
extern void syms_of_xftfont (void);
# 905 "./font.h"
extern void font_add_log (const char *, Lisp_Object, Lisp_Object);
extern void font_deferred_log (const char *, Lisp_Object, Lisp_Object);
# 29 "./composite.h" 2




enum composition_method {

  COMPOSITION_RELATIVE,



  COMPOSITION_WITH_RULE,

  COMPOSITION_WITH_ALTCHARS,

  COMPOSITION_WITH_RULE_ALTCHARS,

  COMPOSITION_NO
};
# 59 "./composite.h"
inline _Bool
composition_registered_p (Lisp_Object prop)
{
  return ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0);
}
# 147 "./composite.h"
struct composition {

  int glyph_len;


  short pixel_width, ascent, descent;

  short lbearing, rbearing;




  int width;


  enum composition_method method;


  ptrdiff_t hash_index;



  void *font;






  short *offsets;
};



extern struct composition **composition_table;

extern ptrdiff_t n_compositions;
# 193 "./composite.h"
extern Lisp_Object composition_hash_table;
extern ptrdiff_t get_composition_id (ptrdiff_t, ptrdiff_t, ptrdiff_t,
         Lisp_Object, Lisp_Object);
extern _Bool find_composition (ptrdiff_t, ptrdiff_t, ptrdiff_t *, ptrdiff_t *,
         Lisp_Object *, Lisp_Object);
extern void update_compositions (ptrdiff_t, ptrdiff_t, int);
extern void make_composition_value_copy (Lisp_Object);
extern void syms_of_composite (void);
extern void compose_text (ptrdiff_t, ptrdiff_t, Lisp_Object, Lisp_Object,
                          Lisp_Object);



inline enum composition_method
composition_method (Lisp_Object prop)
{
  if (composition_registered_p (prop))
    return composition_table[(((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) >> INTTYPEBITS)]->method;
  else
    {
      Lisp_Object temp = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr;
      return (((temp) == (builtin_lisp_symbol (0)))
       ? COMPOSITION_RELATIVE
       : ((((enum Lisp_Type) ((temp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) || STRINGP (temp)
       ? COMPOSITION_WITH_ALTCHARS
       : COMPOSITION_WITH_RULE_ALTCHARS);
    }
}




inline _Bool
composition_valid_p (ptrdiff_t start, ptrdiff_t end, Lisp_Object prop)
{
  return ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
   && (composition_registered_p (prop)
       ? ((((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) >> INTTYPEBITS) >= 0
   && (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) >> INTTYPEBITS) <= n_compositions
   && (((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
       : ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
    && ((((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr) == (builtin_lisp_symbol (0)))
        || STRINGP ((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr)
        || VECTORP ((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr)
        || ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)
        || (((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))))
   && (composition_registered_p (prop) ? (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->car) >> INTTYPEBITS) : (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->car) >> INTTYPEBITS)) == end - start);
}
# 261 "./composite.h"
inline Lisp_Object *
lgstring_glyph_addr (Lisp_Object lgs, ptrdiff_t idx)
{
  return aref_addr (lgs, idx + 2);
}


enum lglyph_indices
  {
    LGLYPH_IX_FROM, LGLYPH_IX_TO, LGLYPH_IX_CHAR, LGLYPH_IX_CODE,
    LGLYPH_IX_WIDTH, LGLYPH_IX_LBEARING, LGLYPH_IX_RBEARING,
    LGLYPH_IX_ASCENT, LGLYPH_IX_DESCENT, LGLYPH_IX_ADJUSTMENT,

    LGLYPH_SIZE
  };
# 313 "./composite.h"
extern Lisp_Object composition_gstring_put_cache (Lisp_Object, ptrdiff_t);
extern Lisp_Object composition_gstring_from_id (ptrdiff_t);
extern _Bool composition_gstring_p (Lisp_Object);
extern int composition_gstring_width (Lisp_Object, ptrdiff_t, ptrdiff_t,
                                      struct font_metrics *);

extern void composition_compute_stop_pos (struct composition_it *,
                                          ptrdiff_t, ptrdiff_t, ptrdiff_t,
                                          Lisp_Object);
extern _Bool composition_reseat_it (struct composition_it *, ptrdiff_t,
       ptrdiff_t, ptrdiff_t, struct window *,
       struct face *, Lisp_Object);
extern int composition_update_it (struct composition_it *,
                                  ptrdiff_t, ptrdiff_t, Lisp_Object);

extern ptrdiff_t composition_adjust_point (ptrdiff_t, ptrdiff_t);
# 299 "coding.c" 2
# 1 "./coding.h" 1
# 33 "./coding.h"
enum define_coding_system_arg_index
  {
    coding_arg_name,
    coding_arg_mnemonic,
    coding_arg_coding_type,
    coding_arg_charset_list,
    coding_arg_ascii_compatible_p,
    coding_arg_decode_translation_table,
    coding_arg_encode_translation_table,
    coding_arg_post_read_conversion,
    coding_arg_pre_write_conversion,
    coding_arg_default_char,
    coding_arg_for_unibyte,
    coding_arg_plist,
    coding_arg_eol_type,
    coding_arg_max
  };

enum define_coding_iso2022_arg_index
  {
    coding_arg_iso2022_initial = coding_arg_max,
    coding_arg_iso2022_reg_usage,
    coding_arg_iso2022_request,
    coding_arg_iso2022_flags,
    coding_arg_iso2022_max
  };

enum define_coding_utf8_arg_index
  {
    coding_arg_utf8_bom = coding_arg_max,
    coding_arg_utf8_max
  };

enum define_coding_utf16_arg_index
  {
    coding_arg_utf16_bom = coding_arg_max,
    coding_arg_utf16_endian,
    coding_arg_utf16_max
  };

enum define_coding_ccl_arg_index
  {
    coding_arg_ccl_decoder = coding_arg_max,
    coding_arg_ccl_encoder,
    coding_arg_ccl_valids,
    coding_arg_ccl_max
  };

enum define_coding_undecided_arg_index
  {
    coding_arg_undecided_inhibit_null_byte_detection = coding_arg_max,
    coding_arg_undecided_inhibit_iso_escape_detection,
    coding_arg_undecided_prefer_utf_8,
    coding_arg_undecided_max
  };
# 96 "./coding.h"
extern Lisp_Object Vcoding_system_hash_table;




enum coding_system_type
  {
    coding_type_charset,
    coding_type_utf_8,
    coding_type_utf_16,
    coding_type_iso_2022,
    coding_type_emacs_mule,
    coding_type_sjis,
    coding_type_ccl,
    coding_type_raw_text,
    coding_type_undecided,
    coding_type_max
  };




enum end_of_line_type
  {
    eol_lf,

    eol_crlf,

    eol_cr,
    eol_any,

    eol_undecided,

    eol_type_max
  };



enum coding_attr_index
  {
    coding_attr_base_name,
    coding_attr_docstring,
    coding_attr_mnemonic,
    coding_attr_type,
    coding_attr_charset_list,
    coding_attr_ascii_compat,
    coding_attr_decode_tbl,
    coding_attr_encode_tbl,
    coding_attr_trans_tbl,
    coding_attr_post_read,
    coding_attr_pre_write,
    coding_attr_default_char,
    coding_attr_for_unibyte,
    coding_attr_plist,

    coding_attr_category,
    coding_attr_safe_charsets,


    coding_attr_charset_valids,

    coding_attr_ccl_decoder,
    coding_attr_ccl_encoder,
    coding_attr_ccl_valids,

    coding_attr_iso_initial,
    coding_attr_iso_usage,
    coding_attr_iso_request,
    coding_attr_iso_flags,

    coding_attr_utf_bom,
    coding_attr_utf_16_endian,

    coding_attr_emacs_mule_full,

    coding_attr_undecided_inhibit_null_byte_detection,
    coding_attr_undecided_inhibit_iso_escape_detection,
    coding_attr_undecided_prefer_utf_8,

    coding_attr_last_index
  };
# 284 "./coding.h"
enum coding_result_code
  {
    CODING_RESULT_SUCCESS,
    CODING_RESULT_INSUFFICIENT_SRC,
    CODING_RESULT_INSUFFICIENT_DST,
    CODING_RESULT_INVALID_SRC,
    CODING_RESULT_INTERRUPT
  };
# 318 "./coding.h"
enum composition_state
  {
    COMPOSING_NO,
    COMPOSING_CHAR,
    COMPOSING_RULE,
    COMPOSING_COMPONENT_CHAR,
    COMPOSING_COMPONENT_RULE
  };


struct composition_status
{
  enum composition_state state;
  enum composition_method method;
  _Bool old_form;
  int length;
  int nchars;
  int ncomps;


  int carryover[4
  + 16 * 3 - 2
  + 2
  + 16
  ];
};




struct iso_2022_spec
{

  unsigned flags;


  int current_invocation[2];




  int current_designation[4];


  int ctext_extended_segment_len;



  bool_bf single_shifting : 1;


  bool_bf bol : 1;


  bool_bf embedded_utf_8 : 1;


  struct composition_status cmp_status;
};

struct emacs_mule_spec
{
  struct composition_status cmp_status;
};

struct undecided_spec
{


  int inhibit_nbd;


  int inhibit_ied;


  _Bool prefer_utf_8;
};

enum utf_bom_type
  {
    utf_detect_bom,
    utf_without_bom,
    utf_with_bom
  };

enum utf_16_endian_type
  {
    utf_16_big_endian,
    utf_16_little_endian
  };

struct utf_16_spec
{
  enum utf_bom_type bom;
  enum utf_16_endian_type endian;
  int surrogate;
};

struct coding_detection_info
{


  int checked;

  int found;

  int rejected;
};


struct coding_system
{





  ptrdiff_t id;



  unsigned common_flags : 14;



  unsigned mode : 5;





  bool_bf src_multibyte : 1;
  bool_bf dst_multibyte : 1;



  bool_bf chars_at_source : 1;



  bool_bf raw_destination : 1;


  bool_bf annotated : 1;


  unsigned eol_seen : 3;


  enum coding_result_code result : 3;

  int max_charset_id;


  union
    {
      struct iso_2022_spec iso_2022;
      struct ccl_spec *ccl;
      struct utf_16_spec utf_16;
      enum utf_bom_type utf_8_bom;
      struct emacs_mule_spec emacs_mule;
      struct undecided_spec undecided;
    } spec;

  unsigned char *safe_charsets;






  ptrdiff_t head_ascii;



  ptrdiff_t detected_utf8_bytes, detected_utf8_chars;


  ptrdiff_t produced, produced_char, consumed, consumed_char;

  ptrdiff_t src_pos, src_pos_byte, src_chars, src_bytes;
  Lisp_Object src_object;
  const unsigned char *source;

  ptrdiff_t dst_pos, dst_pos_byte, dst_bytes;
  Lisp_Object dst_object;
  unsigned char *destination;
# 518 "./coding.h"
  int *charbuf;
  int charbuf_size, charbuf_used;

  unsigned char carryover[64];
  int carryover_bytes;

  int default_char;

  _Bool (*detector) (struct coding_system *, struct coding_detection_info *);
  void (*decoder) (struct coding_system *);
  _Bool (*encoder) (struct coding_system *);
};
# 699 "./coding.h"
extern Lisp_Object code_conversion_save (_Bool, _Bool);
extern void setup_coding_system (Lisp_Object, struct coding_system *);
extern Lisp_Object coding_charset_list (struct coding_system *);
extern Lisp_Object coding_system_charset_list (Lisp_Object);
extern Lisp_Object code_convert_string (Lisp_Object, Lisp_Object,
                                        Lisp_Object, _Bool, _Bool, _Bool);
extern Lisp_Object code_convert_string_norecord (Lisp_Object, Lisp_Object,
                                                 _Bool);
extern Lisp_Object encode_file_name (Lisp_Object);
extern Lisp_Object decode_file_name (Lisp_Object);
extern Lisp_Object raw_text_coding_system (Lisp_Object);
extern _Bool raw_text_coding_system_p (struct coding_system *);
extern Lisp_Object coding_inherit_eol_type (Lisp_Object, Lisp_Object);
extern Lisp_Object complement_process_encoding_system (Lisp_Object);

extern void decode_coding_gap (struct coding_system *,
          ptrdiff_t, ptrdiff_t);
extern void decode_coding_object (struct coding_system *,
                                  Lisp_Object, ptrdiff_t, ptrdiff_t,
                                  ptrdiff_t, ptrdiff_t, Lisp_Object);
extern void encode_coding_object (struct coding_system *,
                                  Lisp_Object, ptrdiff_t, ptrdiff_t,
                                  ptrdiff_t, ptrdiff_t, Lisp_Object);
# 766 "./coding.h"
extern Lisp_Object preferred_coding_system (void);




extern char *emacs_strerror (int);



extern struct coding_system safe_terminal_coding;



extern char emacs_mule_bytes[256];
# 300 "coding.c" 2
# 1 "./termhooks.h" 1
# 27 "./termhooks.h"
# 1 "./systime.h" 1
# 22 "./systime.h"
# 1 "../lib/timespec.h" 1
# 22 "../lib/timespec.h"
# 1 "../lib/time.h" 1
# 21 "../lib/time.h" 3
# 23 "../lib/timespec.h" 2
# 35 "../lib/timespec.h"
enum { TIMESPEC_RESOLUTION = 1000000000 };
enum { LOG10_TIMESPEC_RESOLUTION = 9 };



inline struct timespec
make_timespec (time_t s, long int ns)
{
  struct timespec r;
  r.tv_sec = s;
  r.tv_nsec = ns;
  return r;
}
# 77 "../lib/timespec.h"
inline int __attribute__ ((__pure__))
timespec_cmp (struct timespec a, struct timespec b)
{
  return (a.tv_sec < b.tv_sec ? -1
          : a.tv_sec > b.tv_sec ? 1
          : (int) (a.tv_nsec - b.tv_nsec));
}



inline int __attribute__ ((__pure__))
timespec_sign (struct timespec a)
{
  return a.tv_sec < 0 ? -1 : a.tv_sec || a.tv_nsec;
}

struct timespec timespec_add (struct timespec, struct timespec)
  __attribute__ ((__const__));
struct timespec timespec_sub (struct timespec, struct timespec)
  __attribute__ ((__const__));
struct timespec dtotimespec (double)
  __attribute__ ((__const__));


inline double
timespectod (struct timespec a)
{
  return a.tv_sec + a.tv_nsec / 1e9;
}

void gettime (struct timespec *);
int settime (struct timespec const *);
# 23 "./systime.h" 2





# 1 "/usr/include/X11/X.h" 1 3 4
# 66 "/usr/include/X11/X.h" 3 4
typedef unsigned long XID;



typedef unsigned long Mask;



typedef unsigned long Atom;

typedef unsigned long VisualID;
typedef unsigned long Time;
# 96 "/usr/include/X11/X.h" 3 4
typedef XID Window;
typedef XID Drawable;


typedef XID Font;

typedef XID Pixmap;
typedef XID Cursor;
typedef XID Colormap;
typedef XID GContext;
typedef XID KeySym;

typedef unsigned char KeyCode;
# 29 "./systime.h" 2
# 44 "./systime.h"
# 1 "../lib/sys/time.h" 1
# 25 "../lib/sys/time.h" 3
# 39 "../lib/sys/time.h" 3
# 1 "/usr/include/sys/time.h" 1 3 4
# 26 "/usr/include/sys/time.h" 3 4
# 1 "../lib/time.h" 1 3 4
# 21 "../lib/time.h" 3
# 27 "/usr/include/sys/time.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 29 "/usr/include/sys/time.h" 2 3 4

# 1 "../lib/sys/select.h" 1 3 4
# 20 "../lib/sys/select.h" 3
# 31 "/usr/include/sys/time.h" 2 3 4
# 56 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 72 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ ));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ ));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };




typedef enum __itimer_which __itimer_which_t;






extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ ));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ ));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));






extern int futimesat (int __fd, const char *__file,
        const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));
# 40 "../lib/sys/time.h" 2 3
# 420 "../lib/sys/time.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 45 "./systime.h" 2
# 54 "./systime.h"
inline struct timespec
invalid_timespec (void)
{
  return make_timespec (0, -1);
}




inline _Bool
timespec_valid_p (struct timespec t)
{
  return t.tv_nsec >= 0;
}


inline struct timespec
current_timespec (void)
{
  struct timespec r;
  gettime (&r);
  return r;
}


extern int set_file_times (int, const char *, struct timespec, struct timespec);
extern struct timeval make_timeval (struct timespec) __attribute__ ((__const__));


extern void set_waiting_for_input (struct timespec *);







enum { LO_TIME_BITS = 16 };


struct lisp_time
{
  EMACS_INT hi;
  int lo, us, ps;
};


extern Lisp_Object make_lisp_time (struct timespec);
extern int decode_time_components (Lisp_Object, Lisp_Object, Lisp_Object,
       Lisp_Object, struct lisp_time *, double *);
extern struct timespec lisp_to_timespec (struct lisp_time);
extern struct timespec lisp_time_argument (Lisp_Object);
# 28 "./termhooks.h" 2

struct glyph;



enum scroll_bar_part {
  scroll_bar_nowhere,
  scroll_bar_above_handle,
  scroll_bar_handle,
  scroll_bar_below_handle,
  scroll_bar_up_arrow,
  scroll_bar_down_arrow,
  scroll_bar_to_top,
  scroll_bar_to_bottom,
  scroll_bar_end_scroll,
  scroll_bar_move_ratio,
  scroll_bar_before_handle,
  scroll_bar_horizontal_handle,
  scroll_bar_after_handle,
  scroll_bar_left_arrow,
  scroll_bar_right_arrow,
  scroll_bar_to_leftmost,
  scroll_bar_to_rightmost
};



enum output_method
{
  output_initial,
  output_termcap,
  output_x_window,
  output_msdos_raw,
  output_w32,
  output_ns
};



enum event_kind
{
  NO_EVENT,


  ASCII_KEYSTROKE_EVENT,







  MULTIBYTE_CHAR_KEYSTROKE_EVENT,



  NON_ASCII_KEYSTROKE_EVENT,
# 96 "./termhooks.h"
  TIMER_EVENT,
  MOUSE_CLICK_EVENT,
# 108 "./termhooks.h"
  WHEEL_EVENT,
# 120 "./termhooks.h"
  HORIZ_WHEEL_EVENT,
# 130 "./termhooks.h"
  SCROLL_BAR_CLICK_EVENT,
# 143 "./termhooks.h"
  HORIZONTAL_SCROLL_BAR_CLICK_EVENT,
# 156 "./termhooks.h"
  SELECTION_REQUEST_EVENT,

  SELECTION_CLEAR_EVENT,
  BUFFER_SWITCH_EVENT,
  DELETE_WINDOW_EVENT,
  MENU_BAR_EVENT,



  ICONIFY_EVENT,
  DEICONIFY_EVENT,
  MENU_BAR_ACTIVATE_EVENT,

  DRAG_N_DROP_EVENT,
# 182 "./termhooks.h"
  USER_SIGNAL_EVENT,






  HELP_EVENT,




  TOOL_BAR_EVENT,



  FOCUS_IN_EVENT,

  FOCUS_OUT_EVENT,


  SELECT_WINDOW_EVENT,



  SAVE_SESSION_EVENT
# 217 "./termhooks.h"
  , CONFIG_CHANGED_EVENT
# 249 "./termhooks.h"
  , FILE_NOTIFY_EVENT


};


enum { EVENT_KIND_WIDTH = 16 };
# 266 "./termhooks.h"
struct input_event
{

  enum event_kind kind : EVENT_KIND_WIDTH;


  enum scroll_bar_part part : 16;





  unsigned code;


  unsigned modifiers;



  Lisp_Object x, y;




  Time timestamp;



  Lisp_Object frame_or_window;




  Lisp_Object arg;
};
# 321 "./termhooks.h"
enum {
  up_modifier = 1,


  down_modifier = 2,
  drag_modifier = 4,


  click_modifier= 8,
  double_modifier= 16,
  triple_modifier= 32,
# 345 "./termhooks.h"
  alt_modifier = CHAR_ALT,
  super_modifier= CHAR_SUPER,
  hyper_modifier= CHAR_HYPER,
  shift_modifier= CHAR_SHIFT,
  ctrl_modifier = CHAR_CTL,
  meta_modifier = CHAR_META
};
# 365 "./termhooks.h"
struct terminal
{

  struct vectorlike_header header;


  Lisp_Object param_alist;




  Lisp_Object charset_list;
# 392 "./termhooks.h"
  Lisp_Object Vselection_alist;




  Lisp_Object glyph_code_table;





  struct terminal *next_terminal;


  int id;


  int reference_count;


  enum output_method type;




  char *name;


  struct kboard *kboard;



  struct image_cache *image_cache;



  union display_info
  {
    struct tty_display_info *tty;
    struct x_display_info *x;
    struct w32_display_info *w32;
    struct ns_display_info *ns;
  } display_info;






  struct coding_system *terminal_coding;




  struct coding_system *keyboard_coding;



  struct redisplay_interface *rif;





  void (*cursor_to_hook) (struct frame *f, int vpos, int hpos);
  void (*raw_cursor_to_hook) (struct frame *, int, int);

  void (*clear_to_end_hook) (struct frame *);
  void (*clear_frame_hook) (struct frame *);
  void (*clear_end_of_line_hook) (struct frame *, int);

  void (*ins_del_lines_hook) (struct frame *f, int, int);

  void (*insert_glyphs_hook) (struct frame *f, struct glyph *s, int n);
  void (*write_glyphs_hook) (struct frame *f, struct glyph *s, int n);
  void (*delete_glyphs_hook) (struct frame *, int);

  void (*ring_bell_hook) (struct frame *f);
  void (*toggle_invisible_pointer_hook) (struct frame *f, _Bool invisible);

  void (*reset_terminal_modes_hook) (struct terminal *);
  void (*set_terminal_modes_hook) (struct terminal *);

  void (*update_begin_hook) (struct frame *);
  void (*update_end_hook) (struct frame *);
  void (*set_terminal_window_hook) (struct frame *, int);
# 496 "./termhooks.h"
  void (*mouse_position_hook) (struct frame **f, int,
                               Lisp_Object *bar_window,
                               enum scroll_bar_part *part,
                               Lisp_Object *x,
                               Lisp_Object *y,
                               Time *);




  void (*frame_rehighlight_hook) (struct frame *);
# 518 "./termhooks.h"
  void (*frame_raise_lower_hook) (struct frame *f, _Bool raise_flag);




  void (*fullscreen_hook) (struct frame *f);


  Lisp_Object (*menu_show_hook) (struct frame *f, int x, int y, int menuflags,
     Lisp_Object title, const char **error_name);


  Lisp_Object (*popup_dialog_hook) (struct frame *f, Lisp_Object header,
        Lisp_Object contents);
# 560 "./termhooks.h"
  void (*set_vertical_scroll_bar_hook) (struct window *window,
                                        int portion, int whole,
                                        int position);







  void (*set_horizontal_scroll_bar_hook) (struct window *window,
       int portion, int whole,
       int position);
# 595 "./termhooks.h"
  void (*condemn_scroll_bars_hook) (struct frame *frame);



  void (*redeem_scroll_bar_hook) (struct window *window);
# 612 "./termhooks.h"
  void (*judge_scroll_bars_hook) (struct frame *FRAME);
# 625 "./termhooks.h"
  int (*read_socket_hook) (struct terminal *terminal,
                           struct input_event *hold_quit);


  void (*frame_up_to_date_hook) (struct frame *);




  void (*delete_frame_hook) (struct frame *);
# 646 "./termhooks.h"
  void (*delete_terminal_hook) (struct terminal *);
};



inline void
tset_charset_list (struct terminal *t, Lisp_Object val)
{
  t->charset_list = val;
}
inline void
tset_selection_alist (struct terminal *t, Lisp_Object val)
{
  t->Vselection_alist = val;
}


extern struct terminal *terminal_list;
# 700 "./termhooks.h"
extern struct terminal *decode_live_terminal (Lisp_Object);
extern struct terminal *decode_tty_terminal (Lisp_Object);
extern struct terminal *get_named_terminal (const char *);
extern struct terminal *create_terminal (enum output_method,
      struct redisplay_interface *);
extern void delete_terminal (struct terminal *);
extern Lisp_Object terminal_glyph_code (struct terminal *, int);


extern struct terminal *initial_terminal;

extern unsigned char *encode_terminal_code (struct glyph *, int,
         struct coding_system *);
# 301 "coding.c" 2

Lisp_Object Vcoding_system_hash_table;





static Lisp_Object system_eol_type;







struct coding_system safe_terminal_coding;




static Lisp_Object Vsjis_coding_system;
static Lisp_Object Vbig5_coding_system;
# 372 "coding.c"
enum iso_code_class_type
  {
    ISO_control_0,


    ISO_shift_out,
    ISO_shift_in,
    ISO_single_shift_2_7,
    ISO_escape,
    ISO_control_1,


    ISO_single_shift_2,
    ISO_single_shift_3,
    ISO_control_sequence_introducer,
    ISO_0x20_or_0x7F,
    ISO_graphic_plane_0,
    ISO_0xA0_or_0xFF,
    ISO_graphic_plane_1
  };
# 483 "coding.c"
enum coding_category
  {
    coding_category_iso_7,
    coding_category_iso_7_tight,
    coding_category_iso_8_1,
    coding_category_iso_8_2,
    coding_category_iso_7_else,
    coding_category_iso_8_else,
    coding_category_utf_8_auto,
    coding_category_utf_8_nosig,
    coding_category_utf_8_sig,
    coding_category_utf_16_auto,
    coding_category_utf_16_be,
    coding_category_utf_16_le,
    coding_category_utf_16_be_nosig,
    coding_category_utf_16_le_nosig,
    coding_category_charset,
    coding_category_sjis,
    coding_category_big5,
    coding_category_ccl,
    coding_category_emacs_mule,

    coding_category_raw_text,
    coding_category_undecided,
    coding_category_max
  };
# 590 "coding.c"
static Lisp_Object Vcoding_category_table;


static enum coding_category coding_priorities[coding_category_max];



static struct coding_system coding_categories[coding_category_max];



static int
encode_inhibit_flag (Lisp_Object flag)
{
  return ((flag) == (builtin_lisp_symbol (0))) ? -1 : ((flag) == (builtin_lisp_symbol (901)));
}




static _Bool
inhibit_flag (int encoded_flag, _Bool var)
{
  return 0 < encoded_flag + var;
}







static void
CHECK_NATNUM_CAR (Lisp_Object x)
{
  Lisp_Object tmp = (((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->car;
  CHECK_NATNUM (tmp);
  XSETCAR (x, tmp);
}

static void
CHECK_NATNUM_CDR (Lisp_Object x)
{
  Lisp_Object tmp = (((void) (0 && ((((enum Lisp_Type) ((x) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((x) - (Lisp_Cons))))->u.cdr;
  CHECK_NATNUM (tmp);
  XSETCDR (x, tmp);
}



static _Bool
growable_destination (struct coding_system *coding)
{
  return STRINGP (coding->dst_object) || BUFFERP (coding->dst_object);
}
# 804 "coding.c"
static void
record_conversion_result (struct coding_system *coding,
     enum coding_result_code result)
{
  coding->result = result;
  switch (result)
    {
    case CODING_RESULT_INSUFFICIENT_SRC:
      globals.f_Vlast_code_conversion_error = builtin_lisp_symbol (555);
      break;
    case CODING_RESULT_INVALID_SRC:
      globals.f_Vlast_code_conversion_error = builtin_lisp_symbol (573);
      break;
    case CODING_RESULT_INTERRUPT:
      globals.f_Vlast_code_conversion_error = builtin_lisp_symbol (568);
      break;
    case CODING_RESULT_INSUFFICIENT_DST:



      break;
    case CODING_RESULT_SUCCESS:
      break;
    default:
      globals.f_Vlast_code_conversion_error = intern ("Unknown error");
    }
}
# 928 "coding.c"
static void
coding_set_source (struct coding_system *coding)
{
  if (BUFFERP (coding->src_object))
    {
      struct buffer *buf = XBUFFER (coding->src_object);

      if (coding->src_pos < 0)
 coding->source = ((buf)->text->beg + (buf)->text->gpt_byte + (buf)->text->gap_size - ((1))) + coding->src_pos_byte;
      else
 coding->source = ((buf)->text->beg + (coding->src_pos_byte) - ((1)) + ((coding->src_pos_byte) >= (buf)->text->gpt_byte ? (buf)->text->gap_size : 0));
    }
  else if (STRINGP (coding->src_object))
    {
      coding->source = SDATA (coding->src_object) + coding->src_pos_byte;
    }
  else
    {


    }
}





static ptrdiff_t
coding_change_source (struct coding_system *coding)
{
  const unsigned char *orig = coding->source;
  coding_set_source (coding);
  return coding->source - orig;
}




static void
coding_set_destination (struct coding_system *coding)
{
  if (BUFFERP (coding->dst_object))
    {
      if (BUFFERP (coding->src_object) && coding->src_pos < 0)
 {
   coding->destination = (current_buffer->text->beg) + coding->dst_pos_byte - ((1));
   coding->dst_bytes = ((current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)))
          - (coding->src_bytes - coding->consumed)
          - coding->destination);
 }
      else
 {


   coding->destination = (((XBUFFER (coding->dst_object))->text->beg)
     + coding->dst_pos_byte - ((1)));
   coding->dst_bytes = (((XBUFFER (coding->dst_object))->text->beg + (XBUFFER (coding->dst_object))->text->gpt_byte + (XBUFFER (coding->dst_object))->text->gap_size - ((1)))
          - coding->destination);
 }
    }
  else
    {


    }
}





static ptrdiff_t
coding_change_destination (struct coding_system *coding)
{
  const unsigned char *orig = coding->destination;
  coding_set_destination (coding);
  return coding->destination - orig;
}


static void
coding_alloc_by_realloc (struct coding_system *coding, ptrdiff_t bytes)
{
  ptrdiff_t newbytes;
  if ((sizeof *(&newbytes) == sizeof (signed char) ? (sizeof ((coding->dst_bytes) + (bytes)) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (0)))) < 0 ? (((signed char) (bytes)) < 0 ? ((signed char) (coding->dst_bytes)) < ((((0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (0)))) - ((signed char) (bytes)) : ((((0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (bytes)) + ((signed char) (coding->dst_bytes))) - (1)))) - ((signed char) (bytes)) < ((signed char) (coding->dst_bytes))) : ((signed char) (coding->dst_bytes)) < 0 ? ((signed char) (bytes)) <= ((signed char) (coding->dst_bytes)) + ((signed char) (bytes)) : ((signed char) (bytes)) < 0 ? ((signed char) (coding->dst_bytes)) <= ((signed char) (coding->dst_bytes)) + ((signed char) (bytes)) : ((signed char) (coding->dst_bytes)) + ((signed char) (bytes)) < ((signed char) (bytes))) || (((0 * (((signed char) (coding->dst_bytes)) + ((signed char) (bytes))) - (1)) < 0) && (((signed char) (coding->dst_bytes)) + ((signed char) (bytes))) < ((-127 -1))) || (127) < (((signed char) (coding->dst_bytes)) + ((signed char) (bytes)))) ? (*(&newbytes) = (((unsigned char) ((signed char) (coding->dst_bytes)) + (unsigned char) ((signed char) (bytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (coding->dst_bytes)) + (unsigned char) ((signed char) (bytes))) : ((signed char) (((unsigned char) ((signed char) (coding->dst_bytes)) + (unsigned char) ((signed char) (bytes))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&newbytes) = (((unsigned char) ((signed char) (coding->dst_bytes)) + (unsigned char) ((signed char) (bytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (coding->dst_bytes)) + (unsigned char) ((signed char) (bytes))) : ((signed char) (((unsigned char) ((signed char) (coding->dst_bytes)) + (unsigned char) ((signed char) (bytes))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) < 0 ? ((bytes) < 0 ? (coding->dst_bytes) < ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) - (bytes) : ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) - (1)))) - (bytes) < (coding->dst_bytes)) : (coding->dst_bytes) < 0 ? (bytes) <= (coding->dst_bytes) + (bytes) : (bytes) < 0 ? (coding->dst_bytes) <= (coding->dst_bytes) + (bytes) : (coding->dst_bytes) + (bytes) < (bytes)) || (((0 * ((coding->dst_bytes) + (bytes)) - (1)) < 0) && ((coding->dst_bytes) + (bytes)) < ((-127 -1))) || (127) < ((coding->dst_bytes) + (bytes))) ? (*(&newbytes) = (((unsigned char) (coding->dst_bytes) + (unsigned char) (bytes)) <= (127) ? (signed char) ((unsigned char) (coding->dst_bytes) + (unsigned char) (bytes)) : ((signed char) (((unsigned char) (coding->dst_bytes) + (unsigned char) (bytes)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&newbytes) = (((unsigned char) (coding->dst_bytes) + (unsigned char) (bytes)) <= (127) ? (signed char) ((unsigned char) (coding->dst_bytes) + (unsigned char) (bytes)) : ((signed char) (((unsigned char) (coding->dst_bytes) + (unsigned char) (bytes)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&newbytes) == sizeof (short int) ? (sizeof ((coding->dst_bytes) + (bytes)) < sizeof (short int) ? (((((((0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (0)))) < 0 ? (((short int) (bytes)) < 0 ? ((short int) (coding->dst_bytes)) < ((((0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (0)))) - ((short int) (bytes)) : ((((0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) - (1)) < 0) ? ((((0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (bytes)) + ((short int) (coding->dst_bytes))) - (1)))) - ((short int) (bytes)) < ((short int) (coding->dst_bytes))) : ((short int) (coding->dst_bytes)) < 0 ? ((short int) (bytes)) <= ((short int) (coding->dst_bytes)) + ((short int) (bytes)) : ((short int) (bytes)) < 0 ? ((short int) (coding->dst_bytes)) <= ((short int) (coding->dst_bytes)) + ((short int) (bytes)) : ((short int) (coding->dst_bytes)) + ((short int) (bytes)) < ((short int) (bytes))) || (((0 * (((short int) (coding->dst_bytes)) + ((short int) (bytes))) - (1)) < 0) && (((short int) (coding->dst_bytes)) + ((short int) (bytes))) < ((-32767 -1))) || (32767) < (((short int) (coding->dst_bytes)) + ((short int) (bytes)))) ? (*(&newbytes) = (((unsigned short int) ((short int) (coding->dst_bytes)) + (unsigned short int) ((short int) (bytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (coding->dst_bytes)) + (unsigned short int) ((short int) (bytes))) : ((short int) (((unsigned short int) ((short int) (coding->dst_bytes)) + (unsigned short int) ((short int) (bytes))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&newbytes) = (((unsigned short int) ((short int) (coding->dst_bytes)) + (unsigned short int) ((short int) (bytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (coding->dst_bytes)) + (unsigned short int) ((short int) (bytes))) : ((short int) (((unsigned short int) ((short int) (coding->dst_bytes)) + (unsigned short int) ((short int) (bytes))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) < 0 ? ((bytes) < 0 ? (coding->dst_bytes) < ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) - (bytes) : ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) - (1)))) - (bytes) < (coding->dst_bytes)) : (coding->dst_bytes) < 0 ? (bytes) <= (coding->dst_bytes) + (bytes) : (bytes) < 0 ? (coding->dst_bytes) <= (coding->dst_bytes) + (bytes) : (coding->dst_bytes) + (bytes) < (bytes)) || (((0 * ((coding->dst_bytes) + (bytes)) - (1)) < 0) && ((coding->dst_bytes) + (bytes)) < ((-32767 -1))) || (32767) < ((coding->dst_bytes) + (bytes))) ? (*(&newbytes) = (((unsigned short int) (coding->dst_bytes) + (unsigned short int) (bytes)) <= (32767) ? (short int) ((unsigned short int) (coding->dst_bytes) + (unsigned short int) (bytes)) : ((short int) (((unsigned short int) (coding->dst_bytes) + (unsigned short int) (bytes)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&newbytes) = (((unsigned short int) (coding->dst_bytes) + (unsigned short int) (bytes)) <= (32767) ? (short int) ((unsigned short int) (coding->dst_bytes) + (unsigned short int) (bytes)) : ((short int) (((unsigned short int) (coding->dst_bytes) + (unsigned short int) (bytes)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&newbytes) == sizeof (int) ? (sizeof ((coding->dst_bytes) + (bytes)) < sizeof (int) ? (((((((0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (0)))) < 0 ? (((int) (bytes)) < 0 ? ((int) (coding->dst_bytes)) < ((((0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (0)))) - ((int) (bytes)) : ((((0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) - (1)) < 0) ? ((((0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (bytes)) + ((int) (coding->dst_bytes))) - (1)))) - ((int) (bytes)) < ((int) (coding->dst_bytes))) : ((int) (coding->dst_bytes)) < 0 ? ((int) (bytes)) <= ((int) (coding->dst_bytes)) + ((int) (bytes)) : ((int) (bytes)) < 0 ? ((int) (coding->dst_bytes)) <= ((int) (coding->dst_bytes)) + ((int) (bytes)) : ((int) (coding->dst_bytes)) + ((int) (bytes)) < ((int) (bytes))) || (((0 * (((int) (coding->dst_bytes)) + ((int) (bytes))) - (1)) < 0) && (((int) (coding->dst_bytes)) + ((int) (bytes))) < ((-2147483647 -1))) || (2147483647) < (((int) (coding->dst_bytes)) + ((int) (bytes)))) ? (*(&newbytes) = (((unsigned int) ((int) (coding->dst_bytes)) + (unsigned int) ((int) (bytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (coding->dst_bytes)) + (unsigned int) ((int) (bytes))) : ((int) (((unsigned int) ((int) (coding->dst_bytes)) + (unsigned int) ((int) (bytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&newbytes) = (((unsigned int) ((int) (coding->dst_bytes)) + (unsigned int) ((int) (bytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (coding->dst_bytes)) + (unsigned int) ((int) (bytes))) : ((int) (((unsigned int) ((int) (coding->dst_bytes)) + (unsigned int) ((int) (bytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) < 0 ? ((bytes) < 0 ? (coding->dst_bytes) < ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) - (bytes) : ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) - (1)))) - (bytes) < (coding->dst_bytes)) : (coding->dst_bytes) < 0 ? (bytes) <= (coding->dst_bytes) + (bytes) : (bytes) < 0 ? (coding->dst_bytes) <= (coding->dst_bytes) + (bytes) : (coding->dst_bytes) + (bytes) < (bytes)) || (((0 * ((coding->dst_bytes) + (bytes)) - (1)) < 0) && ((coding->dst_bytes) + (bytes)) < ((-2147483647 -1))) || (2147483647) < ((coding->dst_bytes) + (bytes))) ? (*(&newbytes) = (((unsigned int) (coding->dst_bytes) + (unsigned int) (bytes)) <= (2147483647) ? (int) ((unsigned int) (coding->dst_bytes) + (unsigned int) (bytes)) : ((int) (((unsigned int) (coding->dst_bytes) + (unsigned int) (bytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&newbytes) = (((unsigned int) (coding->dst_bytes) + (unsigned int) (bytes)) <= (2147483647) ? (int) ((unsigned int) (coding->dst_bytes) + (unsigned int) (bytes)) : ((int) (((unsigned int) (coding->dst_bytes) + (unsigned int) (bytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&newbytes) == sizeof (long int) ? (sizeof ((coding->dst_bytes) + (bytes)) < sizeof (long int) ? (((((((0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (0)))) < 0 ? (((long int) (bytes)) < 0 ? ((long int) (coding->dst_bytes)) < ((((0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (0)))) - ((long int) (bytes)) : ((((0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) - (1)) < 0) ? ((((0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (bytes)) + ((long int) (coding->dst_bytes))) - (1)))) - ((long int) (bytes)) < ((long int) (coding->dst_bytes))) : ((long int) (coding->dst_bytes)) < 0 ? ((long int) (bytes)) <= ((long int) (coding->dst_bytes)) + ((long int) (bytes)) : ((long int) (bytes)) < 0 ? ((long int) (coding->dst_bytes)) <= ((long int) (coding->dst_bytes)) + ((long int) (bytes)) : ((long int) (coding->dst_bytes)) + ((long int) (bytes)) < ((long int) (bytes))) || (((0 * (((long int) (coding->dst_bytes)) + ((long int) (bytes))) - (1)) < 0) && (((long int) (coding->dst_bytes)) + ((long int) (bytes))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (coding->dst_bytes)) + ((long int) (bytes)))) ? (*(&newbytes) = (((unsigned long int) ((long int) (coding->dst_bytes)) + (unsigned long int) ((long int) (bytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (coding->dst_bytes)) + (unsigned long int) ((long int) (bytes))) : ((long int) (((unsigned long int) ((long int) (coding->dst_bytes)) + (unsigned long int) ((long int) (bytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&newbytes) = (((unsigned long int) ((long int) (coding->dst_bytes)) + (unsigned long int) ((long int) (bytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (coding->dst_bytes)) + (unsigned long int) ((long int) (bytes))) : ((long int) (((unsigned long int) ((long int) (coding->dst_bytes)) + (unsigned long int) ((long int) (bytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) < 0 ? ((bytes) < 0 ? (coding->dst_bytes) < ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) - (bytes) : ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) - (1)))) - (bytes) < (coding->dst_bytes)) : (coding->dst_bytes) < 0 ? (bytes) <= (coding->dst_bytes) + (bytes) : (bytes) < 0 ? (coding->dst_bytes) <= (coding->dst_bytes) + (bytes) : (coding->dst_bytes) + (bytes) < (bytes)) || (((0 * ((coding->dst_bytes) + (bytes)) - (1)) < 0) && ((coding->dst_bytes) + (bytes)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((coding->dst_bytes) + (bytes))) ? (*(&newbytes) = (((unsigned long int) (coding->dst_bytes) + (unsigned long int) (bytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (coding->dst_bytes) + (unsigned long int) (bytes)) : ((long int) (((unsigned long int) (coding->dst_bytes) + (unsigned long int) (bytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&newbytes) = (((unsigned long int) (coding->dst_bytes) + (unsigned long int) (bytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (coding->dst_bytes) + (unsigned long int) (bytes)) : ((long int) (((unsigned long int) (coding->dst_bytes) + (unsigned long int) (bytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((coding->dst_bytes) + (bytes)) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (0)))) < 0 ? (((long long int) (bytes)) < 0 ? ((long long int) (coding->dst_bytes)) < ((((0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (0)))) - ((long long int) (bytes)) : ((((0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + (1)) << (sizeof ((0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (bytes)) + ((long long int) (coding->dst_bytes))) - (1)))) - ((long long int) (bytes)) < ((long long int) (coding->dst_bytes))) : ((long long int) (coding->dst_bytes)) < 0 ? ((long long int) (bytes)) <= ((long long int) (coding->dst_bytes)) + ((long long int) (bytes)) : ((long long int) (bytes)) < 0 ? ((long long int) (coding->dst_bytes)) <= ((long long int) (coding->dst_bytes)) + ((long long int) (bytes)) : ((long long int) (coding->dst_bytes)) + ((long long int) (bytes)) < ((long long int) (bytes))) || (((0 * (((long long int) (coding->dst_bytes)) + ((long long int) (bytes))) - (1)) < 0) && (((long long int) (coding->dst_bytes)) + ((long long int) (bytes))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (coding->dst_bytes)) + ((long long int) (bytes)))) ? (*(&newbytes) = (((unsigned long long int) ((long long int) (coding->dst_bytes)) + (unsigned long long int) ((long long int) (bytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (coding->dst_bytes)) + (unsigned long long int) ((long long int) (bytes))) : ((long long int) (((unsigned long long int) ((long long int) (coding->dst_bytes)) + (unsigned long long int) ((long long int) (bytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&newbytes) = (((unsigned long long int) ((long long int) (coding->dst_bytes)) + (unsigned long long int) ((long long int) (bytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (coding->dst_bytes)) + (unsigned long long int) ((long long int) (bytes))) : ((long long int) (((unsigned long long int) ((long long int) (coding->dst_bytes)) + (unsigned long long int) ((long long int) (bytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) < 0 ? ((bytes) < 0 ? (coding->dst_bytes) < ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? - (~ (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)) == -1) - ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) + (0)))) - (bytes) : ((((0 * (0 * (bytes) + (coding->dst_bytes)) - (1)) < 0) ? ((((0 * (0 * (bytes) + (coding->dst_bytes)) + (1)) << (sizeof ((0 * (bytes) + (coding->dst_bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (bytes) + (coding->dst_bytes)) - (1)))) - (bytes) < (coding->dst_bytes)) : (coding->dst_bytes) < 0 ? (bytes) <= (coding->dst_bytes) + (bytes) : (bytes) < 0 ? (coding->dst_bytes) <= (coding->dst_bytes) + (bytes) : (coding->dst_bytes) + (bytes) < (bytes)) || (((0 * ((coding->dst_bytes) + (bytes)) - (1)) < 0) && ((coding->dst_bytes) + (bytes)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((coding->dst_bytes) + (bytes))) ? (*(&newbytes) = (((unsigned long long int) (coding->dst_bytes) + (unsigned long long int) (bytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (coding->dst_bytes) + (unsigned long long int) (bytes)) : ((long long int) (((unsigned long long int) (coding->dst_bytes) + (unsigned long long int) (bytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&newbytes) = (((unsigned long long int) (coding->dst_bytes) + (unsigned long long int) (bytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (coding->dst_bytes) + (unsigned long long int) (bytes)) : ((long long int) (((unsigned long long int) (coding->dst_bytes) + (unsigned long long int) (bytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)))))
      || (18446744073709551615UL) < newbytes)
    string_overflow ();
  coding->destination = xrealloc (coding->destination, newbytes);
  coding->dst_bytes = newbytes;
}

static void
coding_alloc_by_making_gap (struct coding_system *coding,
       ptrdiff_t gap_head_used, ptrdiff_t bytes)
{
  if (((coding->src_object) == (coding->dst_object)))
    {




      ptrdiff_t add = (current_buffer->text->gap_size);

      (current_buffer->text->gpt) += gap_head_used, (current_buffer->text->gpt_byte) += gap_head_used;
      (current_buffer->text->gap_size) = 0; (current_buffer->zv) += add; (current_buffer->text->z) += add; (current_buffer->zv_byte) += add; (current_buffer->text->z_byte) += add;
      make_gap (bytes);
      (current_buffer->text->gap_size) += add; (current_buffer->zv) -= add; (current_buffer->text->z) -= add; (current_buffer->zv_byte) -= add; (current_buffer->text->z_byte) -= add;
      (current_buffer->text->gpt) -= gap_head_used, (current_buffer->text->gpt_byte) -= gap_head_used;
    }
  else
    make_gap_1 (XBUFFER (coding->dst_object), bytes);
}


static unsigned char *
alloc_destination (struct coding_system *coding, ptrdiff_t nbytes,
     unsigned char *dst)
{
  ptrdiff_t offset = dst - coding->destination;

  if (BUFFERP (coding->dst_object))
    {
      struct buffer *buf = XBUFFER (coding->dst_object);

      coding_alloc_by_making_gap (coding, dst - ((buf)->text->beg + (buf)->text->gpt_byte - ((1))), nbytes);
    }
  else
    coding_alloc_by_realloc (coding, nbytes);
  coding_set_destination (coding);
  dst = coding->destination + offset;
  return dst;
}
# 1150 "coding.c"
static _Bool
detect_coding_utf_8 (struct coding_system *coding,
       struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t consumed_chars = 0;
  _Bool bom_found = 0;
  ptrdiff_t nchars = coding->head_ascii;
  int eol_seen = coding->eol_seen;

  detect_info->checked |= ((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));

  src += nchars;

  if (src == coding->source
      && src + 3 < src_end
      && src[0] == 0xEF
      && src[1] == 0xBB
      && src[2] == 0xBF)
    {
      bom_found = 1;
      src += 3;
      nchars++;
    }

  while (1)
    {
      int c, c1, c2, c3, c4;

      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0 || ((c) < 0x80))
 {
   nchars++;
   if (c == '\r')
     {
       if (src < src_end && *src == '\n')
  {
    eol_seen |= 4;
    src++;
    nchars++;
  }
       else
  eol_seen |= 2;
     }
   else if (c == '\n')
     eol_seen |= 1;
   continue;
 }
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c1 < 0 || ! (((c1) & 0xC0) == 0x80))
 break;
      if ((((c) & 0xE0) == 0xC0))
 {
   nchars++;
   continue;
 }
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else { src--; c2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c2 < 0 || ! (((c2) & 0xC0) == 0x80))
 break;
      if ((((c) & 0xF0) == 0xE0))
 {
   nchars++;
   continue;
 }
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c3 = *src++; if (multibytep && (c3 & 0x80)) { if ((c3 & 0xFE) == 0xC0) c3 = ((c3 & 1) << 6) | *src++; else { src--; c3 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c3 < 0 || ! (((c3) & 0xC0) == 0x80))
 break;
      if ((((c) & 0xF8) == 0xF0))
 {
   nchars++;
   continue;
 }
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c4 = *src++; if (multibytep && (c4 & 0x80)) { if ((c4 & 0xFE) == 0xC0) c4 = ((c4 & 1) << 6) | *src++; else { src--; c4 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c4 < 0 || ! (((c4) & 0xC0) == 0x80))
 break;
      if ((((c) & 0xFC) == 0xF8))
 {
   nchars++;
   continue;
 }
      break;
    }
  detect_info->rejected |= ((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));
  return 0;

 no_more_source:
  if (src_base < src && coding->mode & 0x01)
    {
      detect_info->rejected |= ((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));
      return 0;
    }
  if (bom_found)
    {

      detect_info->found |= (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_sig) | (1 << coding_category_utf_8_nosig);
    }
  else
    {
      detect_info->rejected |= (1 << coding_category_utf_8_sig);
      if (nchars < src_end - coding->source)


 detect_info->found |= (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig);
    }
  coding->detected_utf8_bytes = src_base - coding->source;
  coding->detected_utf8_chars = nchars;
  return 1;
}


static void
decode_coding_utf_8 (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;
  int *charbuf_end = coding->charbuf + coding->charbuf_size;
  ptrdiff_t consumed_chars = 0, consumed_chars_base = 0;
  _Bool multibytep = coding->src_multibyte;
  enum utf_bom_type bom = ((coding)->spec.utf_8_bom);
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr = -1;

  if (bom != utf_without_bom)
    {
      int c1, c2, c3;

      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (! (((c1) & 0xF0) == 0xE0))
 src = src_base;
      else
 {
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else { src--; c2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (! (((c2) & 0xC0) == 0x80))
     src = src_base;
   else
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c3 = *src++; if (multibytep && (c3 & 0x80)) { if ((c3 & 0xFE) == 0xC0) c3 = ((c3 & 1) << 6) | *src++; else { src--; c3 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (! (((c3) & 0xC0) == 0x80))
  src = src_base;
       else
  {
    if ((c1 != 0xEF)
        || (c2 != 0xBB) || (c3 != 0xBF))
      src = src_base;
    else
      ((coding)->spec.utf_8_bom) = utf_without_bom;
  }
     }
 }
    }
  ((coding)->spec.utf_8_bom) = utf_without_bom;

  while (1)
    {
      int c, c1, c2, c3, c4, c5;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr >= 0)
     src_base--;
   break;
 }


      if (multibytep && ! eol_dos
   && charbuf < charbuf_end - 6 && src < src_end - 6)
 {
   while (charbuf < charbuf_end - 6 && src < src_end - 6)
     {
       c1 = *src;
       if (c1 & 0x80)
  break;
       src++;
       consumed_chars++;
       *charbuf++ = c1;

       c1 = *src;
       if (c1 & 0x80)
  break;
       src++;
       consumed_chars++;
       *charbuf++ = c1;

       c1 = *src;
       if (c1 & 0x80)
  break;
       src++;
       consumed_chars++;
       *charbuf++ = c1;

       c1 = *src;
       if (c1 & 0x80)
  break;
       src++;
       consumed_chars++;
       *charbuf++ = c1;
     }

   if (src != src_base)
     continue;
 }

      if (byte_after_cr >= 0)
 c1 = byte_after_cr, byte_after_cr = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c1 < 0)
 {
   c = - c1;
 }
      else if (((c1) < 0x80))
 {
   if (eol_dos && c1 == '\r')
     do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr = *src++; if (multibytep && (byte_after_cr & 0x80)) { if ((byte_after_cr & 0xFE) == 0xC0) byte_after_cr = ((byte_after_cr & 1) << 6) | *src++; else { src--; byte_after_cr = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   c = c1;
 }
      else
 {
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else { src--; c2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c2 < 0 || ! (((c2) & 0xC0) == 0x80))
     goto invalid_code;
   if ((((c1) & 0xE0) == 0xC0))
     {
       c = ((c1 & 0x1F) << 6) | (c2 & 0x3F);



       if (c < 128)
  goto invalid_code;
     }
   else
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c3 = *src++; if (multibytep && (c3 & 0x80)) { if ((c3 & 0xFE) == 0xC0) c3 = ((c3 & 1) << 6) | *src++; else { src--; c3 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c3 < 0 || ! (((c3) & 0xC0) == 0x80))
  goto invalid_code;
       if ((((c1) & 0xF0) == 0xE0))
  {
    c = (((c1 & 0xF) << 12)
         | ((c2 & 0x3F) << 6) | (c3 & 0x3F));
    if (c < 0x800
        || (c >= 0xd800 && c < 0xe000))
      goto invalid_code;
  }
       else
  {
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c4 = *src++; if (multibytep && (c4 & 0x80)) { if ((c4 & 0xFE) == 0xC0) c4 = ((c4 & 1) << 6) | *src++; else { src--; c4 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (c4 < 0 || ! (((c4) & 0xC0) == 0x80))
      goto invalid_code;
    if ((((c1) & 0xF8) == 0xF0))
      {
      c = (((c1 & 0x7) << 18) | ((c2 & 0x3F) << 12)
    | ((c3 & 0x3F) << 6) | (c4 & 0x3F));
      if (c < 0x10000)
        goto invalid_code;
      }
    else
      {
        do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c5 = *src++; if (multibytep && (c5 & 0x80)) { if ((c5 & 0xFE) == 0xC0) c5 = ((c5 & 1) << 6) | *src++; else { src--; c5 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
        if (c5 < 0 || ! (((c5) & 0xC0) == 0x80))
   goto invalid_code;
        if ((((c1) & 0xFC) == 0xF8))
   {
     c = (((c1 & 0x3) << 24) | ((c2 & 0x3F) << 18)
          | ((c3 & 0x3F) << 12) | ((c4 & 0x3F) << 6)
          | (c5 & 0x3F));
     if ((c > 0x3FFFFF) || (c < 0x200000))
       goto invalid_code;
   }
        else
   goto invalid_code;
      }
  }
     }
 }

      *charbuf++ = c;
      continue;

    invalid_code:
      src = src_base;
      consumed_chars = consumed_chars_base;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      *charbuf++ = (((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c : ((c) + 0x3FFF00);
    }

 no_more_source:
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}


static _Bool
encode_coding_utf_8 (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  ptrdiff_t produced_chars = 0;
  int c;

  if (((coding)->spec.utf_8_bom) == utf_with_bom)
    {
      do { if (dst + (3) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (3); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      do { do { produced_chars++; if (multibytep) { unsigned ch = (0xEF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function5 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (0xEF); } while (0); do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (0xBB); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function6 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (0xBF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function7 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (0xBB); *dst++ = (0xBF); } } while (0); } while (0);
      ((coding)->spec.utf_8_bom) = utf_without_bom;
    }

  if (multibytep)
    {
      int safe_room = 5 * 2;

      while (charbuf < charbuf_end)
 {
   unsigned char str[5], *p, *pend = str;

   do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
   c = *charbuf++;
   if (((c) > 0x3FFF7F))
     {
       c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
       do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function8 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
     }
   else
     {
       do { if ((c) <= 0x7F) *(pend)++ = (c); else if ((c) <= 0x7FF) *(pend)++ = (0xC0 | ((c) >> 6)), *(pend)++ = (0x80 | ((c) & 0x3F)); else if ((c) <= 0xFFFF) *(pend)++ = (0xE0 | ((c) >> 12)), *(pend)++ = (0x80 | (((c) >> 6) & 0x3F)), *(pend)++ = (0x80 | ((c) & 0x3F)); else { extern int (*_gl_verify_function9 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; }))]; (pend) += char_string (c, pend); } } while (0);
       for (p = str; p < pend; p++)
  do { produced_chars++; if (multibytep) { unsigned ch = (*p); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function10 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (*p); } while (0);
     }
 }
    }
  else
    {
      int safe_room = 5;

      while (charbuf < charbuf_end)
 {
   do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
   c = *charbuf++;
   if (((c) > 0x3FFF7F))
     *dst++ = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
   else
     do { if ((c) <= 0x7F) *(dst)++ = (c); else if ((c) <= 0x7FF) *(dst)++ = (0xC0 | ((c) >> 6)), *(dst)++ = (0x80 | ((c) & 0x3F)); else if ((c) <= 0xFFFF) *(dst)++ = (0xE0 | ((c) >> 12)), *(dst)++ = (0x80 | (((c) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((c) & 0x3F)); else { extern int (*_gl_verify_function11 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (c, dst); } } while (0);
 }
      produced_chars = dst - (coding->destination + coding->produced);
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}
# 1525 "coding.c"
static _Bool
detect_coding_utf_16 (struct coding_system *coding,
        struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  int c1, c2;

  detect_info->checked |= ((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
  if (coding->mode & 0x01
      && (coding->src_chars & 1))
    {
      detect_info->rejected |= ((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
      return 0;
    }

  do { do { if (src == src_end) goto no_more_source; c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src += (!((c1) & 0x80) ? 1 : !((c1) & 0x20) ? 2 : !((c1) & 0x10) ? 3 : !((c1) & 0x08) ? 4 : 5) - 1; c1 = -1; } } } while (c1 < 0); if (src == src_end) goto no_more_source; c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else c2 = -1; } } while (0);
  if ((c1 == 0xFF) && (c2 == 0xFE))
    {
      detect_info->found |= ((1 << coding_category_utf_16_le)
        | (1 << coding_category_utf_16_auto));
      detect_info->rejected |= ((1 << coding_category_utf_16_be)
    | (1 << coding_category_utf_16_be_nosig)
    | (1 << coding_category_utf_16_le_nosig));
    }
  else if ((c1 == 0xFE) && (c2 == 0xFF))
    {
      detect_info->found |= ((1 << coding_category_utf_16_be)
        | (1 << coding_category_utf_16_auto));
      detect_info->rejected |= ((1 << coding_category_utf_16_le)
    | (1 << coding_category_utf_16_be_nosig)
    | (1 << coding_category_utf_16_le_nosig));
    }
  else if (c2 < 0)
    {
      detect_info->rejected |= ((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
      return 0;
    }
  else
    {


      unsigned char e[256], o[256];
      unsigned e_num = 1, o_num = 1;

      memset (e, 0, 256);
      memset (o, 0, 256);
      e[c1] = 1;
      o[c2] = 1;

      detect_info->rejected |= ((1 << coding_category_utf_16_auto)
    |(1 << coding_category_utf_16_be)
    | (1 << coding_category_utf_16_le));

      while ((detect_info->rejected & ((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig)))
      != ((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig)))
 {
   do { do { if (src == src_end) goto no_more_source; c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src += (!((c1) & 0x80) ? 1 : !((c1) & 0x20) ? 2 : !((c1) & 0x10) ? 3 : !((c1) & 0x08) ? 4 : 5) - 1; c1 = -1; } } } while (c1 < 0); if (src == src_end) goto no_more_source; c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else c2 = -1; } } while (0);
   if (c2 < 0)
     break;
   if (! e[c1])
     {
       e[c1] = 1;
       e_num++;
       if (e_num >= 128)
  detect_info->rejected |= (1 << coding_category_utf_16_be_nosig);
     }
   if (! o[c2])
     {
       o[c2] = 1;
       o_num++;
       if (o_num >= 128)
  detect_info->rejected |= (1 << coding_category_utf_16_le_nosig);
     }
 }
      return 0;
    }

 no_more_source:
  return 1;
}

static void
decode_coding_utf_16 (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;

  int *charbuf_end = coding->charbuf + coding->charbuf_size - 2;
  ptrdiff_t consumed_chars = 0, consumed_chars_base = 0;
  _Bool multibytep = coding->src_multibyte;
  enum utf_bom_type bom = ((coding)->spec.utf_16.bom);
  enum utf_16_endian_type endian = ((coding)->spec.utf_16.endian);
  int surrogate = ((coding)->spec.utf_16.surrogate);
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr1 = -1, byte_after_cr2 = -1;

  if (bom == utf_with_bom)
    {
      int c, c1, c2;

      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else { src--; c2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      c = (c1 << 8) | c2;

      if (endian == utf_16_big_endian
   ? c != 0xFEFF : c != 0xFFFE)
 {


   src = src_base;
 }
      ((coding)->spec.utf_16.bom) = utf_without_bom;
    }
  else if (bom == utf_detect_bom)
    {


      ((coding)->spec.utf_16.bom) = utf_without_bom;
    }

  while (1)
    {
      int c, c1, c2;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr1 >= 0)
     src_base -= 2;
   break;
 }

      if (byte_after_cr1 >= 0)
 c1 = byte_after_cr1, byte_after_cr1 = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c1 < 0)
 {
   *charbuf++ = -c1;
   continue;
 }
      if (byte_after_cr2 >= 0)
 c2 = byte_after_cr2, byte_after_cr2 = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else { src--; c2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c2 < 0)
 {
   *charbuf++ = (((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c1 : ((c1) + 0x3FFF00);
   *charbuf++ = -c2;
   continue;
 }
      c = (endian == utf_16_big_endian
    ? ((c1 << 8) | c2) : ((c2 << 8) | c1));

      if (surrogate)
 {
   if (! (((c) & 0xFC00) == 0xDC00))
     {
       if (endian == utf_16_big_endian)
  c1 = surrogate >> 8, c2 = surrogate & 0xFF;
       else
  c1 = surrogate & 0xFF, c2 = surrogate >> 8;
       *charbuf++ = c1;
       *charbuf++ = c2;
       if ((((c) & 0xFC00) == 0xD800))
  ((coding)->spec.utf_16.surrogate) = surrogate = c;
       else
  *charbuf++ = c;
     }
   else
     {
       c = ((surrogate - 0xD800) << 10) | (c - 0xDC00);
       ((coding)->spec.utf_16.surrogate) = surrogate = 0;
       *charbuf++ = 0x10000 + c;
     }
 }
      else
 {
   if ((((c) & 0xFC00) == 0xD800))
     ((coding)->spec.utf_16.surrogate) = surrogate = c;
   else
     {
       if (eol_dos && c == '\r')
  {
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr1 = *src++; if (multibytep && (byte_after_cr1 & 0x80)) { if ((byte_after_cr1 & 0xFE) == 0xC0) byte_after_cr1 = ((byte_after_cr1 & 1) << 6) | *src++; else { src--; byte_after_cr1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr2 = *src++; if (multibytep && (byte_after_cr2 & 0x80)) { if ((byte_after_cr2 & 0xFE) == 0xC0) byte_after_cr2 = ((byte_after_cr2 & 1) << 6) | *src++; else { src--; byte_after_cr2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
  }
       *charbuf++ = c;
     }
 }
    }

 no_more_source:
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}

static _Bool
encode_coding_utf_16 (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int safe_room = 8;
  enum utf_bom_type bom = ((coding)->spec.utf_16.bom);
  _Bool big_endian = ((coding)->spec.utf_16.endian) == utf_16_big_endian;
  ptrdiff_t produced_chars = 0;
  int c;

  if (bom != utf_without_bom)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      if (big_endian)
 do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (0xFE); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function12 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function13 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (0xFE); *dst++ = (0xFF); } } while (0);
      else
 do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function14 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (0xFE); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function15 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (0xFF); *dst++ = (0xFE); } } while (0);
      ((coding)->spec.utf_16.bom) = utf_without_bom;
    }

  while (charbuf < charbuf_end)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      c = *charbuf++;
      if (c > 0x10FFFF)
 c = coding->default_char;

      if (c < 0x10000)
 {
   if (big_endian)
     do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function16 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function17 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c >> 8); *dst++ = (c & 0xFF); } } while (0);
   else
     do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function18 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function19 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c & 0xFF); *dst++ = (c >> 8); } } while (0);
 }
      else
 {
   int c1, c2;

   c -= 0x10000;
   c1 = (c >> 10) + 0xD800;
   c2 = (c & 0x3FF) + 0xDC00;
   if (big_endian)
     do { do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c1 >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function20 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c1 & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function21 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c1 >> 8); *dst++ = (c1 & 0xFF); } } while (0); do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c2 >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function22 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c2 & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function23 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c2 >> 8); *dst++ = (c2 & 0xFF); } } while (0); } while (0);
   else
     do { do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c1 & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function24 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c1 >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function25 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c1 & 0xFF); *dst++ = (c1 >> 8); } } while (0); do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c2 & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function26 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c2 >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function27 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c2 & 0xFF); *dst++ = (c2 >> 8); } } while (0); } while (0);
 }
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced = dst - coding->destination;
  coding->produced_char += produced_chars;
  return 0;
}
# 1862 "coding.c"
char emacs_mule_bytes[256];





static _Bool
detect_coding_emacs_mule (struct coding_system *coding,
     struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t consumed_chars = 0;
  int c;
  int found = 0;

  detect_info->checked |= (1 << coding_category_emacs_mule);

  src += coding->head_ascii;

  while (1)
    {
      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0)
 continue;
      if (c == 0x80)
 {




   const unsigned char *src_start;

 repeat:
   src_start = src;
   do
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
     }
   while (c >= 0xA0);

   if (src - src_start <= 4)
     break;
   found = (1 << coding_category_emacs_mule);
   if (c == 0x80)
     goto repeat;
 }

      if (c < 0x80)
 {
   if (c < 0x20
       && (c == 0x1B || c == 0x0F || c == 0x0E))
     break;
 }
      else
 {
   int more_bytes = emacs_mule_bytes[c] - 1;

   while (more_bytes > 0)
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c < 0xA0)
  {
    src--;
    break;
  }
       more_bytes--;
     }
   if (more_bytes != 0)
     break;
   found = (1 << coding_category_emacs_mule);
 }
    }
  detect_info->rejected |= (1 << coding_category_emacs_mule);
  return 0;

 no_more_source:
  if (src_base < src && coding->mode & 0x01)
    {
      detect_info->rejected |= (1 << coding_category_emacs_mule);
      return 0;
    }
  detect_info->found |= found;
  return 1;
}
# 1957 "coding.c"
static int
emacs_mule_char (struct coding_system *coding, const unsigned char *src,
   int *nbytes, int *nchars, int *id,
   struct composition_status *cmp_status)
{
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base = src;
  _Bool multibytep = coding->src_multibyte;
  int charset_ID;
  unsigned code;
  int c;
  ptrdiff_t consumed_chars = 0;
  _Bool mseq_found = 0;

  do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
  if (c < 0)
    {
      c = -c;
      charset_ID = emacs_mule_charset[0];
    }
  else
    {
      if (c >= 0xA0)
 {
   if (cmp_status->state != COMPOSING_NO
       && cmp_status->old_form)
     {
       if (cmp_status->state == COMPOSING_CHAR)
  {
    if (c == 0xA0)
      {
        do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
        c -= 0x80;
        if (c < 0)
   goto invalid_code;
      }
    else
      c -= 0x20;
    mseq_found = 1;
  }
       else
  {
    *nbytes = src - src_base;
    *nchars = consumed_chars;
    return -c;
  }
     }
   else
     goto invalid_code;
 }

      switch (emacs_mule_bytes[c])
 {
 case 2:
   if ((charset_ID = emacs_mule_charset[c]) < 0)
     goto invalid_code;
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c < 0xA0)
     goto invalid_code;
   code = c & 0x7F;
   break;

 case 3:
   if (c == 0x9A
       || c == 0x9B)
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c < 0xA0 || (charset_ID = emacs_mule_charset[c]) < 0)
  goto invalid_code;
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c < 0xA0)
  goto invalid_code;
       code = c & 0x7F;
     }
   else
     {
       if ((charset_ID = emacs_mule_charset[c]) < 0)
  goto invalid_code;
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c < 0xA0)
  goto invalid_code;
       code = (c & 0x7F) << 8;
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c < 0xA0)
  goto invalid_code;
       code |= c & 0x7F;
     }
   break;

 case 4:
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c < 0 || (charset_ID = emacs_mule_charset[c]) < 0)
     goto invalid_code;
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c < 0xA0)
     goto invalid_code;
   code = (c & 0x7F) << 8;
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c < 0xA0)
     goto invalid_code;
   code |= c & 0x7F;
   break;

 case 1:
   code = c;
   charset_ID = (((sizeof ((code) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((code) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((code) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((code) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? charset_ascii : charset_eight_bit;
   break;

 default:
   emacs_abort ();
 }
      do { ptrdiff_t offset; charset_map_loaded = 0; c = (((((sizeof ((code) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((code) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((code) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((code) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ((charset_table + (charset_ID)))->ascii_compatible_p) ? (code) : ((code) < ((charset_table + (charset_ID)))->min_code || (code) > ((charset_table + (charset_ID)))->max_code) ? -1 : ((charset_table + (charset_ID)))->unified_p ? decode_char (((charset_table + (charset_ID))), (code)) : ((charset_table + (charset_ID)))->method == CHARSET_METHOD_OFFSET ? (((charset_table + (charset_ID)))->code_linear_p ? (int) ((code) - ((charset_table + (charset_ID)))->min_code) + ((charset_table + (charset_ID)))->code_offset : decode_char (((charset_table + (charset_ID))), (code))) : ((charset_table + (charset_ID)))->method == CHARSET_METHOD_MAP ? ((((charset_table + (charset_ID)))->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset_table + (charset_ID)))->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset_table + (charset_ID)))->hash_index))), charset_decoder)), (code) - ((charset_table + (charset_ID)))->min_code)) >> INTTYPEBITS) : decode_char (((charset_table + (charset_ID))), (code))) : decode_char (((charset_table + (charset_ID))), (code))); if (charset_map_loaded && (offset = coding_change_source (coding))) { src += offset; src_base += offset; src_end += offset; } } while (0);

      if (c < 0)
 goto invalid_code;
    }
  *nbytes = src - src_base;
  *nchars = consumed_chars;
  if (id)
    *id = charset_ID;
  return (mseq_found ? -c : c);

 no_more_source:
  return -2;

 invalid_code:
  return -1;
}
# 2276 "coding.c"
static int
emacs_mule_finish_composition (int *charbuf,
          struct composition_status *cmp_status)
{
  int idx = - cmp_status->length;
  int new_chars;

  if (cmp_status->old_form && cmp_status->nchars > 0)
    {
      charbuf[idx + 2] = cmp_status->nchars;
      new_chars = 0;
      if (cmp_status->method == COMPOSITION_WITH_RULE
   && cmp_status->state == COMPOSING_CHAR)
 {

   int rule = charbuf[-1] + 0xA0;

   charbuf[-2] = ((rule) + 0x3FFF00);
   charbuf[-1] = -1;
   new_chars = 1;
 }
    }
  else
    {
      charbuf[idx++] = ((0x80) + 0x3FFF00);

      if (cmp_status->method == COMPOSITION_WITH_RULE)
 {
   charbuf[idx++] = ((0xFF) + 0x3FFF00);
   charbuf[idx++] = -3;
   charbuf[idx++] = 0;
   new_chars = 1;
 }
      else
 {
   int nchars = charbuf[idx + 1] + 0xA0;
   int nbytes = charbuf[idx + 2] + 0xA0;

   charbuf[idx++] = ((0xF2 + cmp_status->method) + 0x3FFF00);
   charbuf[idx++] = ((nbytes) + 0x3FFF00);
   charbuf[idx++] = ((nchars) + 0x3FFF00);
   charbuf[idx++] = -1;
   new_chars = 4;
 }
    }
  cmp_status->state = COMPOSING_NO;
  return new_chars;
}
# 2332 "coding.c"
static void
decode_coding_emacs_mule (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;


  int *charbuf_end
    = coding->charbuf + coding->charbuf_size - (5 * 3)

      - 1;
  ptrdiff_t consumed_chars = 0, consumed_chars_base;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t char_offset = coding->produced_char;
  ptrdiff_t last_offset = char_offset;
  int last_id = charset_ascii;
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr = -1;
  struct composition_status *cmp_status = &coding->spec.emacs_mule.cmp_status;

  if (cmp_status->state != COMPOSING_NO)
    {
      int i;

      if (charbuf_end - charbuf < cmp_status->length)
 emacs_abort ();
      for (i = 0; i < cmp_status->length; i++)
 *charbuf++ = cmp_status->carryover[i];
      coding->annotated = 1;
    }

  while (1)
    {
      int c, id ;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr >= 0)
     src_base--;
   break;
 }

      if (byte_after_cr >= 0)
 c = byte_after_cr, byte_after_cr = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);

      if (c < 0 || c == 0x80)
 {
   do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
   if (c < 0)
     {
       *charbuf++ = -c;
       char_offset++;
     }
   else
     do { const unsigned char *current_src = src; do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0); if (c < 0) goto invalid_code; if (c - 0xF2 >= COMPOSITION_RELATIVE && c - 0xF2 <= COMPOSITION_WITH_RULE_ALTCHARS) do { enum composition_method method = c - 0xF2; int nbytes, nchars; do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0); if (c < 0) goto invalid_code; nbytes = c - 0xA0; if (nbytes < 3 || (method == COMPOSITION_RELATIVE && nbytes != 4)) goto invalid_code; do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0); nchars = c - 0xA0; if (nchars <= 0 || nchars >= 16) goto invalid_code; cmp_status->old_form = 0; cmp_status->method = method; if (method == COMPOSITION_RELATIVE) cmp_status->state = COMPOSING_CHAR; else cmp_status->state = COMPOSING_COMPONENT_CHAR; cmp_status->length = 5; cmp_status->nchars = nchars; cmp_status->ncomps = nbytes - 4; do { do { *(charbuf)++ = -(5); *(charbuf)++ = (0x0001); *(charbuf)++ = (nchars); coding->annotated = 1; } while (0);; *charbuf++ = nbytes; *charbuf++ = method; } while (0); } while (0); else if (c < 0xA0) goto invalid_code; else if (c < 0xC0) { do { cmp_status->old_form = 1; cmp_status->method = COMPOSITION_RELATIVE; cmp_status->state = COMPOSING_CHAR; cmp_status->length = 5; cmp_status->nchars = cmp_status->ncomps = 0; do { do { *(charbuf)++ = -(5); *(charbuf)++ = (0x0001); *(charbuf)++ = (0); coding->annotated = 1; } while (0);; *charbuf++ = 0; *charbuf++ = cmp_status->method; } while (0); } while (0); src = current_src; } else if (c == 0xFF) do { cmp_status->old_form = 1; cmp_status->method = COMPOSITION_WITH_RULE; cmp_status->state = COMPOSING_CHAR; cmp_status->length = 5; cmp_status->nchars = cmp_status->ncomps = 0; do { do { *(charbuf)++ = -(5); *(charbuf)++ = (0x0001); *(charbuf)++ = (0); coding->annotated = 1; } while (0);; *charbuf++ = 0; *charbuf++ = cmp_status->method; } while (0); } while (0); else goto invalid_code; } while (0);
   continue;
 }

      if (c < 0x80)
 {
   if (eol_dos && c == '\r')
     do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr = *src++; if (multibytep && (byte_after_cr & 0x80)) { if ((byte_after_cr & 0xFE) == 0xC0) byte_after_cr = ((byte_after_cr & 1) << 6) | *src++; else { src--; byte_after_cr = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   id = charset_ascii;
   if (cmp_status->state != COMPOSING_NO)
     {
       if (cmp_status->old_form)
  do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
       else if (cmp_status->state >= COMPOSING_COMPONENT_CHAR)
  cmp_status->ncomps--;
     }
 }
      else
 {
   int nchars , nbytes ;





   const unsigned char *orig = coding->source;
   ptrdiff_t offset;

   c = emacs_mule_char (coding, src_base, &nbytes, &nchars, &id,
          cmp_status);
   offset = coding->source - orig;
   if (offset)
     {
       src += offset;
       src_base += offset;
       src_end += offset;
     }
   if (c < 0)
     {
       if (c == -1)
  goto invalid_code;
       if (c == -2)
  break;
     }
   src = src_base + nbytes;
   consumed_chars = consumed_chars_base + nchars;
   if (cmp_status->state >= COMPOSING_COMPONENT_CHAR)
     cmp_status->ncomps -= nchars;
 }





      if (cmp_status->state == COMPOSING_NO)
 {
   if (last_id != id)
     {
       if (last_id != charset_ascii)
  do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);

       last_id = id;
       last_offset = char_offset;
     }
   *charbuf++ = c;
   char_offset++;
 }
      else if (cmp_status->state == COMPOSING_CHAR)
 {
   if (cmp_status->old_form)
     {
       if (c >= 0)
  {
    do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
    *charbuf++ = c;
    char_offset++;
  }
       else
  {
    *charbuf++ = -c;
    cmp_status->nchars++;
    cmp_status->length++;
    if (cmp_status->nchars == 16)
      do { int idx = - cmp_status->length; if (cmp_status->old_form) charbuf[idx + 2] = cmp_status->nchars; else if (cmp_status->method > COMPOSITION_RELATIVE) charbuf[idx] = charbuf[idx + 2] - cmp_status->length; cmp_status->state = COMPOSING_NO; } while (0);
    else if (cmp_status->method == COMPOSITION_WITH_RULE)
      cmp_status->state = COMPOSING_RULE;
  }
     }
   else
     {
       *charbuf++ = c;
       cmp_status->length++;
       cmp_status->nchars--;
       if (cmp_status->nchars == 0)
  do { int idx = - cmp_status->length; if (cmp_status->old_form) charbuf[idx + 2] = cmp_status->nchars; else if (cmp_status->method > COMPOSITION_RELATIVE) charbuf[idx] = charbuf[idx + 2] - cmp_status->length; cmp_status->state = COMPOSING_NO; } while (0);
     }
 }
      else if (cmp_status->state == COMPOSING_RULE)
 {
   int rule;

   if (c >= 0)
     {
       do { int idx = - cmp_status->length; if (cmp_status->old_form) charbuf[idx + 2] = cmp_status->nchars; else if (cmp_status->method > COMPOSITION_RELATIVE) charbuf[idx] = charbuf[idx + 2] - cmp_status->length; cmp_status->state = COMPOSING_NO; } while (0);
       *charbuf++ = c;
       char_offset++;
     }
   else
     {
       c = -c;
       do { int gref, nref; c -= 0xA0; if (c < 0 || c >= 81) goto invalid_code; gref = c / 9, nref = c % 9; if (gref == 4) gref = 10; if (nref == 4) nref = 10; rule = ((gref) * 12 + (nref)); } while (0);
       if (rule < 0)
  goto invalid_code;
       *charbuf++ = -2;
       *charbuf++ = rule;
       cmp_status->length += 2;
       cmp_status->state = COMPOSING_CHAR;
     }
 }
      else if (cmp_status->state == COMPOSING_COMPONENT_CHAR)
 {
   *charbuf++ = c;
   cmp_status->length++;
   if (cmp_status->ncomps == 0)
     cmp_status->state = COMPOSING_CHAR;
   else if (cmp_status->ncomps > 0)
     {
       if (cmp_status->method == COMPOSITION_WITH_RULE_ALTCHARS)
  cmp_status->state = COMPOSING_COMPONENT_RULE;
     }
   else
     do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
 }
      else
 {
   int rule;

   do { int gref, nref; gref = c - 0x20; if (gref < 0 || gref >= 81) goto invalid_code; do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0); nref = c - 0x20; if (nref < 0 || nref >= 81) goto invalid_code; rule = ((gref) * 12 + (nref)); } while (0);
   if (rule < 0)
     goto invalid_code;
   *charbuf++ = -2;
   *charbuf++ = rule;
   cmp_status->length += 2;
   cmp_status->ncomps--;
   if (cmp_status->ncomps > 0)
     cmp_status->state = COMPOSING_COMPONENT_CHAR;
   else
     do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
 }
      continue;

    invalid_code:
      do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
      src = src_base;
      consumed_chars = consumed_chars_base;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      *charbuf++ = (((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c : ((c) + 0x3FFF00);
      char_offset++;
    }

 no_more_source:
  if (cmp_status->state != COMPOSING_NO)
    {
      if (coding->mode & 0x01)
 do { if (cmp_status->state != COMPOSING_NO) char_offset += emacs_mule_finish_composition (charbuf, cmp_status); } while (0);
      else
 {
   int i;

   charbuf -= cmp_status->length;
   for (i = 0; i < cmp_status->length; i++)
     cmp_status->carryover[i] = charbuf[i];
 }
    }
  if (last_id != charset_ascii)
    do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}
# 2591 "coding.c"
static _Bool
encode_coding_emacs_mule (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int safe_room = 8;
  ptrdiff_t produced_chars = 0;
  Lisp_Object attrs, charset_list;
  int c;
  int preferred_charset_id = -1;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  if (! ((charset_list) == (Vemacs_mule_charset_list)))
    {
      charset_list = Vemacs_mule_charset_list;
      ASET (attrs, coding_attr_charset_list, charset_list);
    }

  while (charbuf < charbuf_end)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      c = *charbuf++;

      if (c < 0)
 {

   switch (*charbuf)
     {
     case 0x0001:

       break;
     case 0x0003:
       preferred_charset_id = charbuf[3];
       if (preferred_charset_id >= 0
    && ((Fmemq (((EMACS_INT) (((EMACS_UINT) (preferred_charset_id) << INTTYPEBITS) + Lisp_Int0)), charset_list)) == (builtin_lisp_symbol (0))))

  preferred_charset_id = -1;
       break;
     default:
       emacs_abort ();
     }
   charbuf += -c - 1;
   continue;
 }

      if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
 do { produced_chars++; *dst++ = (c); } while (0);
      else if (((c) > 0x3FFF7F))
 {
   c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
   do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function28 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
 }
      else
 {
   struct charset *charset;
   unsigned code;
   int dimension;
   int emacs_mule_id;
   unsigned char leading_codes[2];

   if (preferred_charset_id >= 0)
     {
       _Bool result;

       charset = (charset_table + (preferred_charset_id));
       do { ptrdiff_t offset; charset_map_loaded = 0; result = (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) || ((((charset)->unified_p) || (charset)->method == CHARSET_METHOD_SUBSET || (charset)->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) != (charset)->invalid_code : ((((c)) < 0x10000 ? (charset)->fast_map[((c)) >> 10] & (1 << ((((c)) >> 7) & 7)) : (charset)->fast_map[(((c)) >> 15) + 62] & (1 << ((((c)) >> 12) & 7))) && ((charset)->method == CHARSET_METHOD_OFFSET ? (c) >= (charset)->min_char && (c) <= (charset)->max_char : ((charset)->method == CHARSET_METHOD_MAP && (charset)->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)))) ? ! ((CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)), (c))) == (builtin_lisp_symbol (0))) : encode_char ((charset), (c)) != (charset)->invalid_code)))); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);
       if (result)
  code = (((!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (int)) ? 1 : -1; })) ? (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p ? (unsigned) (c) : ((charset)->unified_p || (charset)->method == CHARSET_METHOD_SUBSET || (charset)->method == CHARSET_METHOD_SUPERSET) ? encode_char (charset, c) : (c) < (charset)->min_char || (c) > (charset)->max_char ? (charset)->invalid_code : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (unsigned) ((c) - (charset)->code_offset) + (charset)->min_code : encode_char (charset, c)) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)))) ? (charset_work = CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)), c), (((charset_work) == (builtin_lisp_symbol (0))) ? (charset)->invalid_code : (unsigned) ((charset_work) >> INTTYPEBITS))) : encode_char (charset, c)) : encode_char (charset, c))) : (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p ? (unsigned) (c) : ((charset)->unified_p || (charset)->method == CHARSET_METHOD_SUBSET || (charset)->method == CHARSET_METHOD_SUPERSET) ? encode_char (charset, c) : (c) < (charset)->min_char || (c) > (charset)->max_char ? (charset)->invalid_code : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (unsigned) ((c) - (charset)->code_offset) + (charset)->min_code : encode_char (charset, c)) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)))) ? (charset_work = CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)), c), (((charset_work) == (builtin_lisp_symbol (0))) ? (charset)->invalid_code : (unsigned) ((charset_work) >> INTTYPEBITS))) : encode_char (charset, c)) : encode_char (charset, c)))));
       else
  do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

     }
   else
     do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

   if (! charset)
     {
       c = coding->default_char;
       if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
  {
    do { produced_chars++; *dst++ = (c); } while (0);
    continue;
  }
       do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

     }
   dimension = ((charset)->dimension);
   emacs_mule_id = ((charset)->emacs_mule_id);
   do { if (emacs_mule_id < 0xA0) leading_codes[0] = emacs_mule_id, leading_codes[1] = 0; else if (emacs_mule_id < 0xE0) leading_codes[0] = 0x9A, leading_codes[1] = emacs_mule_id; else if (emacs_mule_id < 0xF0) leading_codes[0] = 0x9B, leading_codes[1] = emacs_mule_id; else if (emacs_mule_id < 0xF5) leading_codes[0] = 0x9C, leading_codes[1] = emacs_mule_id; else leading_codes[0] = 0x9D, leading_codes[1] = emacs_mule_id; } while (0);;
   do { produced_chars++; if (multibytep) { unsigned ch = (leading_codes[0]); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function29 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (leading_codes[0]); } while (0);
   if (leading_codes[1])
     do { produced_chars++; if (multibytep) { unsigned ch = (leading_codes[1]); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function30 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (leading_codes[1]); } while (0);
   if (dimension == 1)
     do { produced_chars++; if (multibytep) { unsigned ch = (code | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function31 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code | 0x80); } while (0);
   else
     {
       code |= 0x8080;
       do { produced_chars++; if (multibytep) { unsigned ch = (code >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function32 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code >> 8); } while (0);
       do { produced_chars++; if (multibytep) { unsigned ch = (code & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function33 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code & 0xFF); } while (0);
     }
 }
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}
# 2880 "coding.c"
static enum iso_code_class_type iso_code_class[256];





static void
setup_iso_safe_charsets (Lisp_Object attrs)
{
  Lisp_Object charset_list, safe_charsets;
  Lisp_Object request;
  Lisp_Object reg_usage;
  Lisp_Object tail;
  EMACS_INT reg94, reg96;
  int flags = ((AREF (attrs, coding_attr_iso_flags)) >> INTTYPEBITS);
  int max_charset_id;

  charset_list = AREF (attrs, coding_attr_charset_list);
  if ((flags & 0x100000)
      && ! ((charset_list) == (Viso_2022_charset_list)))
    {
      charset_list = Viso_2022_charset_list;
      ASET (attrs, coding_attr_charset_list, charset_list);
      ASET (attrs, coding_attr_safe_charsets, builtin_lisp_symbol (0));
    }

  if (STRINGP (AREF (attrs, coding_attr_safe_charsets)))
    return;

  max_charset_id = 0;
  for (tail = charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      int id = (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS);
      if (max_charset_id < id)
 max_charset_id = id;
    }

  safe_charsets = make_uninit_string (max_charset_id + 1);
  memset (SDATA (safe_charsets), 255, max_charset_id + 1);
  request = AREF (attrs, coding_attr_iso_request);
  reg_usage = AREF (attrs, coding_attr_iso_usage);
  reg94 = (((((void) (0 && ((((enum Lisp_Type) ((reg_usage) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((reg_usage) - (Lisp_Cons))))->car) >> INTTYPEBITS);
  reg96 = (((((void) (0 && ((((enum Lisp_Type) ((reg_usage) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((reg_usage) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS);

  for (tail = charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      Lisp_Object id;
      Lisp_Object reg;
      struct charset *charset;

      id = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
      charset = (charset_table + (((id) >> INTTYPEBITS)));
      reg = Fcdr (Fassq (id, request));
      if (! ((reg) == (builtin_lisp_symbol (0))))
 SSET (safe_charsets, ((id) >> INTTYPEBITS), ((reg) >> INTTYPEBITS));
      else if (charset->iso_chars_96)
 {
   if (reg96 < 4)
     SSET (safe_charsets, ((id) >> INTTYPEBITS), reg96);
 }
      else
 {
   if (reg94 < 4)
     SSET (safe_charsets, ((id) >> INTTYPEBITS), reg94);
 }
    }
  ASET (attrs, coding_attr_safe_charsets, safe_charsets);
}






static _Bool
detect_coding_iso_2022 (struct coding_system *coding,
   struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base = src;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  _Bool single_shifting = 0;
  int id;
  int c, c1;
  ptrdiff_t consumed_chars = 0;
  int i;
  int rejected = 0;
  int found = 0;
  int composition_count = -1;

  detect_info->checked |= ( ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2)) | ((1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else)));

  for (i = coding_category_iso_7; i <= coding_category_iso_8_else; i++)
    {
      struct coding_system *this = &(coding_categories[i]);
      Lisp_Object attrs, val;

      if (this->id < 0)
 continue;
      attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), this->id), 0));
      if (((this)->spec.iso_2022.flags) & 0x100000
   && ! ((AREF (attrs, coding_attr_charset_list)) == (Viso_2022_charset_list)))
 setup_iso_safe_charsets (attrs);
      val = AREF (attrs, coding_attr_safe_charsets);
      this->max_charset_id = SCHARS (val) - 1;
      this->safe_charsets = SDATA (val);
    }


  src += coding->head_ascii;

  while (rejected != ( ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2)) | ((1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else))))
    {
      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      switch (c)
 {
 case 0x1B:
   if (globals.f_inhibit_iso_escape_detection)
     break;
   single_shifting = 0;
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c == 'N' || c == 'O')
     {

       single_shifting = 1;
       rejected |= ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2));
     }
   else if (c == '1')
     {

       if (composition_count < 0
    || composition_count > 16)

  break;
       composition_count = -1;
       found |= ( ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2)) | ((1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else)));
     }
   else if (c >= '0' && c <= '4')
     {

       composition_count = 0;
     }
   else
     {
       if (c >= '(' && c <= '/')
  {

    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (c1 < ' ' || c1 >= 0x80
        || (id = iso_charset_table[0][c >= ','][c1]) < 0)
      {

        if (c1 >= 0x80)
   rejected |= (((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight))
         | (1 << coding_category_iso_7_else));
        break;
      }
  }
       else if (c == '$')
  {

    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (c >= '@' && c <= 'B')

      id = iso_charset_table[1][0][c];
    else if (c >= '(' && c <= '/')
      {
        do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
        if (c1 < ' ' || c1 >= 0x80
     || (id = iso_charset_table[1][c >= ','][c1]) < 0)
   {

     if (c1 >= 0x80)
       rejected |= (((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight))
      | (1 << coding_category_iso_7_else));
     break;
   }
      }
    else
      {

        if (c >= 0x80)
   rejected |= (((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight))
         | (1 << coding_category_iso_7_else));
        break;
      }
  }
       else
  {

    if (c >= 0x80)
      rejected |= (((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight))
     | (1 << coding_category_iso_7_else));
    break;
  }


       rejected |= ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2));
       if (((id) <= (&coding_categories[coding_category_iso_7])->max_charset_id && (&coding_categories[coding_category_iso_7])->safe_charsets[id] != 255))

  found |= (1 << coding_category_iso_7);
       else
  rejected |= (1 << coding_category_iso_7);
       if (((id) <= (&coding_categories[coding_category_iso_7_tight])->max_charset_id && (&coding_categories[coding_category_iso_7_tight])->safe_charsets[id] != 255))

  found |= (1 << coding_category_iso_7_tight);
       else
  rejected |= (1 << coding_category_iso_7_tight);
       if (((id) <= (&coding_categories[coding_category_iso_7_else])->max_charset_id && (&coding_categories[coding_category_iso_7_else])->safe_charsets[id] != 255))

  found |= (1 << coding_category_iso_7_else);
       else
  rejected |= (1 << coding_category_iso_7_else);
       if (((id) <= (&coding_categories[coding_category_iso_8_else])->max_charset_id && (&coding_categories[coding_category_iso_8_else])->safe_charsets[id] != 255))

  found |= (1 << coding_category_iso_8_else);
       else
  rejected |= (1 << coding_category_iso_8_else);
     }
   break;

 case 0x0E:
 case 0x0F:

   if (globals.f_inhibit_iso_escape_detection)
     break;
   single_shifting = 0;
   rejected |= ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2));
   break;

 case 0x9B:

   single_shifting = 0;
   rejected |= ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | (1 << coding_category_iso_7_else);
   found |= (1 << coding_category_iso_8_else);
   goto check_extra_latin;

 case 0x8E:
 case 0x8F:

   if (globals.f_inhibit_iso_escape_detection)
     break;
   single_shifting = 0;
   rejected |= ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | (1 << coding_category_iso_7_else);
   if (((&coding_categories[coding_category_iso_8_1])->spec.iso_2022.flags)
       & 0x0020)
     {
       found |= (1 << coding_category_iso_8_1);
       single_shifting = 1;
     }
   if (((&coding_categories[coding_category_iso_8_2])->spec.iso_2022.flags)
       & 0x0020)
     {
       found |= (1 << coding_category_iso_8_2);
       single_shifting = 1;
     }
   if (single_shifting)
     break;
   goto check_extra_latin;

 default:
   if (c < 0)
     continue;
   if (c < 0x80)
     {
       if (composition_count >= 0)
  composition_count++;
       single_shifting = 0;
       break;
     }
   rejected |= ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | (1 << coding_category_iso_7_else);
   if (c >= 0xA0)
     {
       found |= (1 << coding_category_iso_8_1);




       if (! single_shifting
    && ! (rejected & (1 << coding_category_iso_8_2)))
  {
    ptrdiff_t len = 1;
    while (src < src_end)
      {
        src_base = src;
        do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
        if (c < 0xA0)
   {
     src = src_base;
     break;
   }
        len++;
      }

    if (len & 1 && src < src_end)
      {
        rejected |= (1 << coding_category_iso_8_2);
        if (composition_count >= 0)
   composition_count += len;
      }
    else
      {
        found |= (1 << coding_category_iso_8_2);
        if (composition_count >= 0)
   composition_count += len / 2;
      }
  }
       break;
     }
 check_extra_latin:
   if (! VECTORP (globals.f_Vlatin_extra_code_table)
       || ((AREF (globals.f_Vlatin_extra_code_table, c)) == (builtin_lisp_symbol (0))))
     {
       rejected = ( ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2)) | ((1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else)));
       break;
     }
   if (((&coding_categories[coding_category_iso_8_1])->spec.iso_2022.flags)
       & 0x1000)
     found |= (1 << coding_category_iso_8_1);
   else
     rejected |= (1 << coding_category_iso_8_1);
   rejected |= (1 << coding_category_iso_8_2);
   break;
 }
    }
  detect_info->rejected |= ( ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight)) | ((1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2)) | ((1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else)));
  return 0;

 no_more_source:
  detect_info->rejected |= rejected;
  detect_info->found |= (found & ~rejected);
  return 1;
}
# 3343 "coding.c"
static int
finish_composition (int *charbuf, struct composition_status *cmp_status)
{
  int idx = - cmp_status->length;
  int new_chars;


  charbuf[idx++] = 0x1B;
  charbuf[idx++] = (cmp_status->method == COMPOSITION_RELATIVE ? '0'
      : cmp_status->method == COMPOSITION_WITH_RULE ? '2'
      : cmp_status->method == COMPOSITION_WITH_ALTCHARS ? '3'

      : '4');
  charbuf[idx++] = -2;
  charbuf[idx++] = 0;
  charbuf[idx++] = -1;
  new_chars = cmp_status->nchars;
  if (cmp_status->method >= COMPOSITION_WITH_RULE)
    for (; idx < 0; idx++)
      {
 int elt = charbuf[idx];

 if (elt == -2)
   {
     do { int gref = (charbuf[idx + 1] % 0x100) / 12, nref = (charbuf[idx + 1] % 0x100) % 12; if (charbuf[idx + 1] < 0x100) { if (gref == 10) gref = 4; if (nref == 10) nref = 4; charbuf[idx] = 32 + gref * 9 + nref; charbuf[idx + 1] = -1; new_chars++; } else { charbuf[idx] = 32 + 81 + gref; charbuf[idx + 1] = 32 + nref; new_chars += 2; } } while (0);
     idx++;
   }
 else if (elt == -1)
   {
     charbuf[idx++] = 0x1B;
     charbuf[idx] = '0';
     new_chars += 2;
   }
      }
  cmp_status->state = COMPOSING_NO;
  return new_chars;
}
# 3480 "coding.c"
static void
decode_coding_iso_2022 (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;


  int *charbuf_end
    = coding->charbuf + coding->charbuf_size - (5 * 3);
  ptrdiff_t consumed_chars = 0, consumed_chars_base;
  _Bool multibytep = coding->src_multibyte;

  int charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
  int charset_id_1 = (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]));
  int charset_id_2, charset_id_3;
  struct charset *charset;
  int c;
  struct composition_status *cmp_status = (&(coding)->spec.iso_2022.cmp_status);
  Lisp_Object attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  ptrdiff_t char_offset = coding->produced_char;
  ptrdiff_t last_offset = char_offset;
  int last_id = charset_ascii;
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr = -1;
  int i;

  setup_iso_safe_charsets (attrs);
  coding->safe_charsets = SDATA (AREF (attrs, coding_attr_safe_charsets));

  if (cmp_status->state != COMPOSING_NO)
    {
      if (charbuf_end - charbuf < cmp_status->length)
 emacs_abort ();
      for (i = 0; i < cmp_status->length; i++)
 *charbuf++ = cmp_status->carryover[i];
      coding->annotated = 1;
    }

  while (1)
    {
      int c1, c2, c3;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr >= 0)
     src_base--;
   break;
 }

      if (byte_after_cr >= 0)
 c1 = byte_after_cr, byte_after_cr = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c1 < 0)
 goto invalid_code;

      if (((coding)->spec.iso_2022.ctext_extended_segment_len) > 0)
 {
   *charbuf++ = (((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c1 : ((c1) + 0x3FFF00);
   char_offset++;
   ((coding)->spec.iso_2022.ctext_extended_segment_len)--;
   continue;
 }

      if (((coding)->spec.iso_2022.embedded_utf_8))
 {
   if (c1 == 0x1B)
     {
       if (src + 1 >= src_end)
  goto no_more_source;
       *charbuf++ = 0x1B;
       char_offset++;
       if (src[0] == '%' && src[1] == '@')
  {
    src += 2;
    consumed_chars += 2;
    char_offset += 2;

    *charbuf++ = '%';
    *charbuf++ = '@';
    ((coding)->spec.iso_2022.embedded_utf_8) = 0;
  }
     }
   else
     {
       *charbuf++ = (((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c1 : ((c1) + 0x3FFF00);
       char_offset++;
     }
   continue;
 }

      if ((cmp_status->state == COMPOSING_RULE
    || cmp_status->state == COMPOSING_COMPONENT_RULE)
   && c1 != 0x1B)
 {
   int rule;

   do { rule = c1 - 32; if (rule < 0) goto invalid_code; if (rule < 81) { int gref = (rule) / 9; int nref = (rule) % 9; if (gref == 4) gref = 10; if (nref == 4) nref = 10; rule = ((gref) * 12 + (nref)); } else { int b; do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } b = *src++; if (multibytep && (b & 0x80)) { if ((b & 0xFE) == 0xC0) b = ((b & 1) << 6) | *src++; else { src--; b = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0); if (! ((((sizeof ((rule - 81) + 0)) > (sizeof ((12) + 0)) ? (sizeof ((rule - 81) + 0)) : (sizeof ((12) + 0))) <= sizeof (unsigned) ? ((rule - 81) + (unsigned) 0) < ((12) + (unsigned) 0) : ((rule - 81) + (uintmax_t) 0) < ((12) + (uintmax_t) 0)) && (((sizeof ((b - 32) + 0)) > (sizeof ((12) + 0)) ? (sizeof ((b - 32) + 0)) : (sizeof ((12) + 0))) <= sizeof (unsigned) ? ((b - 32) + (unsigned) 0) < ((12) + (unsigned) 0) : ((b - 32) + (uintmax_t) 0) < ((12) + (uintmax_t) 0)))) goto invalid_code; rule = ((rule - 81) * 12 + (b - 32)); rule += 0x100; } } while (0);
   do { *charbuf++ = -2; *charbuf++ = rule; cmp_status->length += 2; cmp_status->state--; } while (0);
   continue;
 }


      switch (iso_code_class [c1])
 {
 case ISO_0x20_or_0x7F:
   if (charset_id_0 < 0
       || ! (((charset_table + (charset_id_0)))->iso_chars_96))

     charset = (charset_table + (charset_ascii));
   else
     charset = (charset_table + (charset_id_0));
   break;

 case ISO_graphic_plane_0:
   if (charset_id_0 < 0)
     charset = (charset_table + (charset_ascii));
   else
     charset = (charset_table + (charset_id_0));
   break;

 case ISO_0xA0_or_0xFF:
   if (charset_id_1 < 0
       || ! (((charset_table + (charset_id_1)))->iso_chars_96)
       || ((coding)->spec.iso_2022.flags) & 0x0008)
     goto invalid_code;


 case ISO_graphic_plane_1:
   if (charset_id_1 < 0)
     goto invalid_code;
   charset = (charset_table + (charset_id_1));
   break;

 case ISO_control_0:
   if (eol_dos && c1 == '\r')
     do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr = *src++; if (multibytep && (byte_after_cr & 0x80)) { if ((byte_after_cr & 0xFE) == 0xC0) byte_after_cr = ((byte_after_cr & 1) << 6) | *src++; else { src--; byte_after_cr = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0);
   charset = (charset_table + (charset_ascii));
   break;

 case ISO_control_1:
   goto invalid_code;

 case ISO_shift_out:
   if (! (((coding)->spec.iso_2022.flags) & 0x0010)
       || ((coding)->spec.iso_2022.current_designation[1]) < 0)
     goto invalid_code;
   ((coding)->spec.iso_2022.current_invocation[0]) = 1;
   charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
   continue;

 case ISO_shift_in:
   if (! (((coding)->spec.iso_2022.flags) & 0x0010))
     goto invalid_code;
   ((coding)->spec.iso_2022.current_invocation[0]) = 0;
   charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
   continue;

 case ISO_single_shift_2_7:
   if (! (((coding)->spec.iso_2022.flags) & 0x0008))
     goto invalid_code;
 case ISO_single_shift_2:
   if (! (((coding)->spec.iso_2022.flags) & 0x0020))
     goto invalid_code;

   c1 = 'N';
   goto label_escape_sequence;

 case ISO_single_shift_3:
   if (! (((coding)->spec.iso_2022.flags) & 0x0020))
     goto invalid_code;

   c1 = 'O';
   goto label_escape_sequence;

 case ISO_control_sequence_introducer:

   c1 = '[';
   goto label_escape_sequence;

 case ISO_escape:
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
 label_escape_sequence:



   switch (c1)
     {
     case '&':
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (!(c1 >= '@' && c1 <= '~'))
  goto invalid_code;
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c1 != 0x1B)
  goto invalid_code;
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       goto label_escape_sequence;

     case '$':
       if (! (((coding)->spec.iso_2022.flags) & 0x0040))
  goto invalid_code;
       {
  int reg, chars96;

  do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
  if (c1 >= '@' && c1 <= 'B')
    {

      reg = 0, chars96 = 0;
    }
  else if (c1 >= 0x28 && c1 <= 0x2B)
    {
      reg = c1 - 0x28, chars96 = 0;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    }
  else if (c1 >= 0x2C && c1 <= 0x2F)
    {
      reg = c1 - 0x2C, chars96 = 1;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    }
  else
    goto invalid_code;
  do { int id, prev; if (c1 < '0' || c1 >= 128 || ((id = iso_charset_table[(2) - 1][chars96][c1]) < 0) || !((id) <= (coding)->max_charset_id && (coding)->safe_charsets[id] != 255)) { ((coding)->spec.iso_2022.current_designation[reg]) = -2; chars96 = -1; break; } prev = ((coding)->spec.iso_2022.current_designation[reg]); if (id == charset_jisx0201_roman) { if (((coding)->spec.iso_2022.flags) & 0x8000) id = charset_ascii; } else if (id == charset_jisx0208_1978) { if (((coding)->spec.iso_2022.flags) & 0x10000) id = charset_jisx0208; } ((coding)->spec.iso_2022.current_designation[reg]) = id; if (prev == -2 && id == charset_ascii) chars96 = -1; } while (0);

  if (reg == 0)
    charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
  else if (reg == 1)
    charset_id_1 = (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]));
  if (chars96 < 0)
    goto invalid_code;
       }
       continue;

     case 'n':
       if (! (((coding)->spec.iso_2022.flags) & 0x0010)
    || ((coding)->spec.iso_2022.current_designation[2]) < 0)
  goto invalid_code;
       ((coding)->spec.iso_2022.current_invocation[0]) = 2;
       charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
       continue;

     case 'o':
       if (! (((coding)->spec.iso_2022.flags) & 0x0010)
    || ((coding)->spec.iso_2022.current_designation[3]) < 0)
  goto invalid_code;
       ((coding)->spec.iso_2022.current_invocation[0]) = 3;
       charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
       continue;

     case 'N':
       if (! (((coding)->spec.iso_2022.flags) & 0x0020)
    || ((coding)->spec.iso_2022.current_designation[2]) < 0)
  goto invalid_code;
       charset_id_2 = ((coding)->spec.iso_2022.current_designation[2]);
       if (charset_id_2 < 0)
  charset = (charset_table + (charset_ascii));
       else
  charset = (charset_table + (charset_id_2));
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c1 < 0x20 || (c1 >= 0x80 && c1 < 0xA0)
    || (! (((coding)->spec.iso_2022.flags) & 0x0008)
        && ((((coding)->spec.iso_2022.flags) & 0x20000)
     ? c1 >= 0x80 : c1 < 0x80)))
  goto invalid_code;
       break;

     case 'O':
       if (! (((coding)->spec.iso_2022.flags) & 0x0020)
    || ((coding)->spec.iso_2022.current_designation[3]) < 0)
  goto invalid_code;
       charset_id_3 = ((coding)->spec.iso_2022.current_designation[3]);
       if (charset_id_3 < 0)
  charset = (charset_table + (charset_ascii));
       else
  charset = (charset_table + (charset_id_3));
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c1 < 0x20 || (c1 >= 0x80 && c1 < 0xA0)
    || (! (((coding)->spec.iso_2022.flags) & 0x0008)
        && ((((coding)->spec.iso_2022.flags) & 0x20000)
     ? c1 >= 0x80 : c1 < 0x80)))
  goto invalid_code;
       break;

     case '0': case '2': case '3': case '4':
       if (! (coding->common_flags & 0x0001))
  goto invalid_code;
       if (last_id != charset_ascii)
  {
    do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset- last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
    last_id = charset_ascii;
    last_offset = char_offset;
  }
       do { if (c1 == '0' && ((cmp_status->state == COMPOSING_COMPONENT_CHAR && cmp_status->method == COMPOSITION_WITH_ALTCHARS) || (cmp_status->state == COMPOSING_COMPONENT_RULE && cmp_status->method == COMPOSITION_WITH_RULE_ALTCHARS))) { *charbuf++ = -1; *charbuf++= -1; cmp_status->state = COMPOSING_CHAR; cmp_status->length += 2; } else { do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0); cmp_status->method = (c1 == '0' ? COMPOSITION_RELATIVE : c1 == '2' ? COMPOSITION_WITH_RULE : c1 == '3' ? COMPOSITION_WITH_ALTCHARS : COMPOSITION_WITH_RULE_ALTCHARS); cmp_status->state = (c1 <= '2' ? COMPOSING_CHAR : COMPOSING_COMPONENT_CHAR); do { do { *(charbuf)++ = -(5); *(charbuf)++ = (0x0001); *(charbuf)++ = (0); coding->annotated = 1; } while (0);; *charbuf++ = 0; *charbuf++ = cmp_status->method; } while (0); cmp_status->length = 5; cmp_status->nchars = cmp_status->ncomps = 0; coding->annotated = 1; } } while (0);
       continue;

     case '1':
       if (cmp_status->state == COMPOSING_NO)
  goto invalid_code;
       do { if (cmp_status->nchars == 0 || ((cmp_status->state == COMPOSING_CHAR) == (cmp_status->method == COMPOSITION_WITH_RULE))) { do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0); goto invalid_code; } if (cmp_status->method == COMPOSITION_WITH_ALTCHARS) charbuf[- cmp_status->length] -= cmp_status->ncomps + 2; else if (cmp_status->method == COMPOSITION_WITH_RULE_ALTCHARS) charbuf[- cmp_status->length] -= cmp_status->ncomps * 3; charbuf[- cmp_status->length + 2] = cmp_status->nchars; char_offset += cmp_status->nchars; cmp_status->state = COMPOSING_NO; } while (0);
       continue;

     case '[':
       if (! (((coding)->spec.iso_2022.flags) & 0x0100))
  goto invalid_code;



       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       switch (c1)
  {
  case ']':
    coding->mode &= ~0x04;

  case '0':
  case '1':
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (c1 == ']')
      coding->mode &= ~0x04;
    else
      goto invalid_code;
    break;

  case '2':
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (c1 == ']')
      coding->mode |= 0x04;
    else
      goto invalid_code;
    break;

  default:
    goto invalid_code;
  }
       continue;

     case '%':
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c1 == '/')
  {




    int dim, M, L;
    int size;

    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } dim = *src++; if (multibytep && (dim & 0x80)) { if ((dim & 0xFE) == 0xC0) dim = ((dim & 1) << 6) | *src++; else { src--; dim = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (dim < '0' || dim > '4')
      goto invalid_code;
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } M = *src++; if (multibytep && (M & 0x80)) { if ((M & 0xFE) == 0xC0) M = ((M & 1) << 6) | *src++; else { src--; M = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (M < 128)
      goto invalid_code;
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } L = *src++; if (multibytep && (L & 0x80)) { if ((L & 0xFE) == 0xC0) L = ((L & 1) << 6) | *src++; else { src--; L = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (L < 128)
      goto invalid_code;
    size = ((M - 128) * 128) + (L - 128);
    if (charbuf + 6 > charbuf_end)
      goto break_loop;
    *charbuf++ = 0x1B;
    *charbuf++ = '%';
    *charbuf++ = '/';
    *charbuf++ = dim;
    *charbuf++ = ((M) + 0x3FFF00);
    *charbuf++ = ((L) + 0x3FFF00);
    ((coding)->spec.iso_2022.ctext_extended_segment_len) = size;
  }
       else if (c1 == 'G')
  {




    if (charbuf + 3 > charbuf_end)
      goto break_loop;
    *charbuf++ = 0x1B;
    *charbuf++ = '%';
    *charbuf++ = 'G';
    ((coding)->spec.iso_2022.embedded_utf_8) = 1;
  }
       else
  goto invalid_code;
       continue;
       break;

     default:
       if (! (((coding)->spec.iso_2022.flags) & 0x0040))
  goto invalid_code;
       {
  int reg, chars96;

  if (c1 >= 0x28 && c1 <= 0x2B)
    {
      reg = c1 - 0x28, chars96 = 0;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    }
  else if (c1 >= 0x2C && c1 <= 0x2F)
    {
      reg = c1 - 0x2C, chars96 = 1;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    }
  else
    goto invalid_code;
  do { int id, prev; if (c1 < '0' || c1 >= 128 || ((id = iso_charset_table[(1) - 1][chars96][c1]) < 0) || !((id) <= (coding)->max_charset_id && (coding)->safe_charsets[id] != 255)) { ((coding)->spec.iso_2022.current_designation[reg]) = -2; chars96 = -1; break; } prev = ((coding)->spec.iso_2022.current_designation[reg]); if (id == charset_jisx0201_roman) { if (((coding)->spec.iso_2022.flags) & 0x8000) id = charset_ascii; } else if (id == charset_jisx0208_1978) { if (((coding)->spec.iso_2022.flags) & 0x10000) id = charset_jisx0208; } ((coding)->spec.iso_2022.current_designation[reg]) = id; if (prev == -2 && id == charset_ascii) chars96 = -1; } while (0);

  if (reg == 0)
    charset_id_0 = (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]));
  else if (reg == 1)
    charset_id_1 = (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]));
  if (chars96 < 0)
    goto invalid_code;
       }
       continue;
     }
   break;

 default:
   emacs_abort ();
 }

      if (cmp_status->state == COMPOSING_NO
   && charset->id != charset_ascii
   && last_id != charset->id)
 {
   if (last_id != charset_ascii)
     do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
   last_id = charset->id;
   last_offset = char_offset;
 }




      if (((charset)->dimension) > 1)
 {
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c2 = *src++; if (multibytep && (c2 & 0x80)) { if ((c2 & 0xFE) == 0xC0) c2 = ((c2 & 1) << 6) | *src++; else { src--; c2 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c2 < 0x20 || (c2 >= 0x80 && c2 < 0xA0)
       || ((c1 & 0x80) != (c2 & 0x80)))

     goto invalid_code;
   if (((charset)->dimension) == 2)
     c1 = (c1 << 8) | c2;
   else
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c3 = *src++; if (multibytep && (c3 & 0x80)) { if ((c3 & 0xFE) == 0xC0) c3 = ((c3 & 1) << 6) | *src++; else { src--; c3 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c3 < 0x20 || (c3 >= 0x80 && c3 < 0xA0)
    || ((c1 & 0x80) != (c3 & 0x80)))

  goto invalid_code;
       c1 = (c1 << 16) | (c2 << 8) | c2;
     }
 }
      c1 &= 0x7F7F7F;
      do { ptrdiff_t offset; charset_map_loaded = 0; c = (((((sizeof ((c1) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c1) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c1) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c1) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (c1) : ((c1) < (charset)->min_code || (c1) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (c1)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((c1) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (c1))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (c1) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (c1))) : decode_char ((charset), (c1))); if (charset_map_loaded && (offset = coding_change_source (coding))) { src += offset; src_base += offset; src_end += offset; } } while (0);
      if (c < 0)
 {
   do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0);
   for (; src_base < src; src_base++, char_offset++)
     {
       if ((((sizeof ((*src_base) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*src_base) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*src_base) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*src_base) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
  *charbuf++ = *src_base;
       else
  *charbuf++ = ((*src_base) + 0x3FFF00);
     }
 }
      else if (cmp_status->state == COMPOSING_NO)
 {
   *charbuf++ = c;
   char_offset++;
 }
      else if ((cmp_status->state == COMPOSING_CHAR
  ? cmp_status->nchars
  : cmp_status->ncomps)
        >= 16)
 {

   do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0);
   *charbuf++ = c;
   char_offset++;
 }
      else
 do { *charbuf++ = (c); cmp_status->length++; if (cmp_status->state == COMPOSING_CHAR) cmp_status->nchars++; else cmp_status->ncomps++; if (cmp_status->method == COMPOSITION_WITH_RULE || (cmp_status->method == COMPOSITION_WITH_RULE_ALTCHARS && cmp_status->state == COMPOSING_COMPONENT_CHAR)) cmp_status->state++; } while (0);
      continue;

    invalid_code:
      do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0);
      src = src_base;
      consumed_chars = consumed_chars_base;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      *charbuf++ = c < 0 ? -c : (((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c : ((c) + 0x3FFF00);
      char_offset++;





      ((coding)->spec.iso_2022.current_invocation[0]) = 0;
      ((coding)->spec.iso_2022.current_designation[0]) = charset_ascii;
      charset_id_0 = charset_ascii;
      continue;

    break_loop:
      break;
    }

 no_more_source:
  if (cmp_status->state != COMPOSING_NO)
    {
      if (coding->mode & 0x01)
 do { if (cmp_status->state != COMPOSING_NO) char_offset += finish_composition (charbuf, cmp_status); } while (0);
      else
 {
   charbuf -= cmp_status->length;
   for (i = 0; i < cmp_status->length; i++)
     cmp_status->carryover[i] = charbuf[i];
 }
    }
  else if (last_id != charset_ascii)
    do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}
# 4241 "coding.c"
static unsigned char *
encode_invocation_designation (struct charset *charset,
          struct coding_system *coding,
          unsigned char *dst, ptrdiff_t *p_nchars)
{
  _Bool multibytep = coding->dst_multibyte;
  ptrdiff_t produced_chars = *p_nchars;
  int reg;
  int id = ((charset)->id);


  for (reg = 0; reg < 4; reg++)
    if (id == ((coding)->spec.iso_2022.current_designation[reg]))
      break;

  if (reg >= 4)
    {


      reg = (((id) <= (coding)->max_charset_id ? ((coding)->safe_charsets[id] != 255 ? (coding)->safe_charsets[id] : -1) : -1));
      if (reg < 0)


 reg = 0;

      do { unsigned char final_char = ((charset)->iso_final); const char *intermediate_char_94 = "()*+"; const char *intermediate_char_96 = ",-./"; int revision = -1; if (((coding)->spec.iso_2022.flags) & 0x0080) revision = ((charset)->iso_revision); if (revision >= 0) { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('&'); } while (0); do { produced_chars++; if (multibytep) { unsigned ch = ('@' + revision); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function34 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = ('@' + revision); } while (0); } do { produced_chars++; *dst++ = (0x1B); } while (0); if (((charset)->dimension) == 1) { int b; if (! ((charset)->iso_chars_96)) b = intermediate_char_94[reg]; else b = intermediate_char_96[reg]; do { produced_chars++; *dst++ = (b); } while (0); } else { do { produced_chars++; *dst++ = ('$'); } while (0); if (! ((charset)->iso_chars_96)) { if (((coding)->spec.iso_2022.flags) & 0x0001 || reg != 0 || final_char < '@' || final_char > 'B') do { produced_chars++; *dst++ = (intermediate_char_94[reg]); } while (0); } else do { produced_chars++; *dst++ = (intermediate_char_96[reg]); } while (0); } do { produced_chars++; *dst++ = (final_char); } while (0); ((coding)->spec.iso_2022.current_designation[reg]) = ((charset)->id); } while (0);
    }

  if (((coding)->spec.iso_2022.current_invocation[0]) != reg
      && ((coding)->spec.iso_2022.current_invocation[1]) != reg)
    {


      switch (reg)
 {
 case 0:
   do { do { produced_chars++; *dst++ = (0x0F); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 0; } while (0);
   break;

 case 1:
   do { do { produced_chars++; *dst++ = (0x0E); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 1; } while (0);
   break;

 case 2:
   if (((coding)->spec.iso_2022.flags) & 0x0020)
     do { if (((coding)->spec.iso_2022.flags) & 0x0008) do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('N'); } while (0); else do { produced_chars++; if (multibytep) { unsigned ch = (0x8E); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function35 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (0x8E); } while (0); ((coding)->spec.iso_2022.single_shifting) = 1; } while (0);
   else
     do { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('n'); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 2; } while (0);
   break;

 case 3:
   if (((coding)->spec.iso_2022.flags) & 0x0020)
     do { if (((coding)->spec.iso_2022.flags) & 0x0008) do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('O'); } while (0); else do { produced_chars++; if (multibytep) { unsigned ch = (0x8F); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function36 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (0x8F); } while (0); ((coding)->spec.iso_2022.single_shifting) = 1; } while (0);
   else
     do { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('n'); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 3; } while (0);
   break;

 default:
   break;
 }
    }

  *p_nchars = produced_chars;
  return dst;
}
# 4336 "coding.c"
static ptrdiff_t
encode_designation_at_bol (struct coding_system *coding,
      int *charbuf, int *charbuf_end,
      unsigned char *dst)
{
  unsigned char *orig = dst;
  struct charset *charset;

  int r[4];
  int c, found = 0, reg;
  ptrdiff_t produced_chars = 0;
  _Bool multibytep = coding->dst_multibyte;
  Lisp_Object attrs;
  Lisp_Object charset_list;

  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  charset_list = AREF (attrs, coding_attr_charset_list);
  if (((charset_list) == (builtin_lisp_symbol (580))))
    charset_list = Viso_2022_charset_list;

  for (reg = 0; reg < 4; reg++)
    r[reg] = -1;

  while (charbuf < charbuf_end && found < 4)
    {
      int id;

      c = *charbuf++;
      if (c == '\n')
 break;
      charset = char_charset (c, charset_list, ((void*)0));
      id = ((charset)->id);
      reg = (((id) <= (coding)->max_charset_id ? ((coding)->safe_charsets[id] != 255 ? (coding)->safe_charsets[id] : -1) : -1));
      if (reg >= 0 && r[reg] < 0)
 {
   found++;
   r[reg] = id;
 }
    }

  if (found)
    {
      for (reg = 0; reg < 4; reg++)
 if (r[reg] >= 0
     && ((coding)->spec.iso_2022.current_designation[reg]) != r[reg])
   do { unsigned char final_char = (((charset_table + (r[reg])))->iso_final); const char *intermediate_char_94 = "()*+"; const char *intermediate_char_96 = ",-./"; int revision = -1; if (((coding)->spec.iso_2022.flags) & 0x0080) revision = (((charset_table + (r[reg])))->iso_revision); if (revision >= 0) { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('&'); } while (0); do { produced_chars++; if (multibytep) { unsigned ch = ('@' + revision); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function37 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = ('@' + revision); } while (0); } do { produced_chars++; *dst++ = (0x1B); } while (0); if ((((charset_table + (r[reg])))->dimension) == 1) { int b; if (! (((charset_table + (r[reg])))->iso_chars_96)) b = intermediate_char_94[reg]; else b = intermediate_char_96[reg]; do { produced_chars++; *dst++ = (b); } while (0); } else { do { produced_chars++; *dst++ = ('$'); } while (0); if (! (((charset_table + (r[reg])))->iso_chars_96)) { if (((coding)->spec.iso_2022.flags) & 0x0001 || reg != 0 || final_char < '@' || final_char > 'B') do { produced_chars++; *dst++ = (intermediate_char_94[reg]); } while (0); } else do { produced_chars++; *dst++ = (intermediate_char_96[reg]); } while (0); } do { produced_chars++; *dst++ = (final_char); } while (0); ((coding)->spec.iso_2022.current_designation[reg]) = (((charset_table + (r[reg])))->id); } while (0);
    }

  return dst - orig;
}



static _Bool
encode_coding_iso_2022 (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int safe_room = 16;
  _Bool bol_designation
    = (((coding)->spec.iso_2022.flags) & 0x0400
       && ((coding)->spec.iso_2022.bol));
  ptrdiff_t produced_chars = 0;
  Lisp_Object attrs, eol_type, charset_list;
  _Bool ascii_compatible;
  int c;
  int preferred_charset_id = -1;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  eol_type = globals.f_inhibit_eol_conversion ? builtin_lisp_symbol (973) : (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));
  if (VECTORP (eol_type))
    eol_type = builtin_lisp_symbol (973);

  setup_iso_safe_charsets (attrs);

  charset_list = AREF (attrs, coding_attr_charset_list);
  coding->safe_charsets = SDATA (AREF (attrs, coding_attr_safe_charsets));

  ascii_compatible
    = (! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0)))
       && ! (((coding)->spec.iso_2022.flags) & (0x0040
       | 0x0010)));

  while (charbuf < charbuf_end)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);

      if (bol_designation)
 {

   unsigned char desig_buf[16];
   ptrdiff_t nbytes;
   ptrdiff_t offset;

   charset_map_loaded = 0;
   nbytes = encode_designation_at_bol (coding, charbuf, charbuf_end,
           desig_buf);
   if (charset_map_loaded
       && (offset = coding_change_destination (coding)))
     {
       dst += offset;
       dst_end += offset;
     }
   memcpy (dst, desig_buf, nbytes);
   dst += nbytes;

   produced_chars += nbytes;
   bol_designation = 0;
   do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
 }

      c = *charbuf++;

      if (c < 0)
 {

   switch (*charbuf)
     {
     case 0x0001:

       break;
     case 0x0003:
       preferred_charset_id = charbuf[2];
       if (preferred_charset_id >= 0
    && ((Fmemq (((EMACS_INT) (((EMACS_UINT) (preferred_charset_id) << INTTYPEBITS) + Lisp_Int0)), charset_list)) == (builtin_lisp_symbol (0))))

  preferred_charset_id = -1;
       break;
     default:
       emacs_abort ();
     }
   charbuf += -c - 1;
   continue;
 }


      if (c < 0x20 || c == 0x7F)
 {
   if (c == '\n'
       || (c == '\r' && ((eol_type) == (builtin_lisp_symbol (635)))))
     {
       if (((coding)->spec.iso_2022.flags) & 0x0002)
  do { int reg; struct charset *charset; if (((coding)->spec.iso_2022.current_invocation[0]) != 0) do { do { produced_chars++; *dst++ = (0x0F); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 0; } while (0); for (reg = 0; reg < 4; reg++) if ((((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)) >= 0 && (((coding)->spec.iso_2022.current_designation[reg]) != (((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)))) { charset = (charset_table + ((((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)))); do { unsigned char final_char = ((charset)->iso_final); const char *intermediate_char_94 = "()*+"; const char *intermediate_char_96 = ",-./"; int revision = -1; if (((coding)->spec.iso_2022.flags) & 0x0080) revision = ((charset)->iso_revision); if (revision >= 0) { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('&'); } while (0); do { produced_chars++; if (multibytep) { unsigned ch = ('@' + revision); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function38 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = ('@' + revision); } while (0); } do { produced_chars++; *dst++ = (0x1B); } while (0); if (((charset)->dimension) == 1) { int b; if (! ((charset)->iso_chars_96)) b = intermediate_char_94[reg]; else b = intermediate_char_96[reg]; do { produced_chars++; *dst++ = (b); } while (0); } else { do { produced_chars++; *dst++ = ('$'); } while (0); if (! ((charset)->iso_chars_96)) { if (((coding)->spec.iso_2022.flags) & 0x0001 || reg != 0 || final_char < '@' || final_char > 'B') do { produced_chars++; *dst++ = (intermediate_char_94[reg]); } while (0); } else do { produced_chars++; *dst++ = (intermediate_char_96[reg]); } while (0); } do { produced_chars++; *dst++ = (final_char); } while (0); ((coding)->spec.iso_2022.current_designation[reg]) = ((charset)->id); } while (0); } } while (0);
       if (((coding)->spec.iso_2022.flags) & 0x0200)
  {
    int i;

    for (i = 0; i < 4; i++)
      ((coding)->spec.iso_2022.current_designation[i])
        = (((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), i)) >> INTTYPEBITS));
  }
       bol_designation = ((((coding)->spec.iso_2022.flags)
      & 0x0400)
     != 0);
     }
   else if (((coding)->spec.iso_2022.flags) & 0x0004)
     do { int reg; struct charset *charset; if (((coding)->spec.iso_2022.current_invocation[0]) != 0) do { do { produced_chars++; *dst++ = (0x0F); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 0; } while (0); for (reg = 0; reg < 4; reg++) if ((((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)) >= 0 && (((coding)->spec.iso_2022.current_designation[reg]) != (((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)))) { charset = (charset_table + ((((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)))); do { unsigned char final_char = ((charset)->iso_final); const char *intermediate_char_94 = "()*+"; const char *intermediate_char_96 = ",-./"; int revision = -1; if (((coding)->spec.iso_2022.flags) & 0x0080) revision = ((charset)->iso_revision); if (revision >= 0) { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('&'); } while (0); do { produced_chars++; if (multibytep) { unsigned ch = ('@' + revision); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function39 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = ('@' + revision); } while (0); } do { produced_chars++; *dst++ = (0x1B); } while (0); if (((charset)->dimension) == 1) { int b; if (! ((charset)->iso_chars_96)) b = intermediate_char_94[reg]; else b = intermediate_char_96[reg]; do { produced_chars++; *dst++ = (b); } while (0); } else { do { produced_chars++; *dst++ = ('$'); } while (0); if (! ((charset)->iso_chars_96)) { if (((coding)->spec.iso_2022.flags) & 0x0001 || reg != 0 || final_char < '@' || final_char > 'B') do { produced_chars++; *dst++ = (intermediate_char_94[reg]); } while (0); } else do { produced_chars++; *dst++ = (intermediate_char_96[reg]); } while (0); } do { produced_chars++; *dst++ = (final_char); } while (0); ((coding)->spec.iso_2022.current_designation[reg]) = ((charset)->id); } while (0); } } while (0);
   do { produced_chars++; *dst++ = (c); } while (0);
 }
      else if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
 {
   if (ascii_compatible)
     do { produced_chars++; *dst++ = (c); } while (0);
   else
     {
       struct charset *charset = (charset_table + (charset_ascii));
       do { unsigned code; do { ptrdiff_t offset; charset_map_loaded = 0; code = (((!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof ((c)) <= sizeof (int)) ? 1 : -1; })) ? (((((sizeof (((c)) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof (((c)) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? (((c)) + (unsigned) 0) < ((0x80) + (unsigned) 0) : (((c)) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ((charset))->ascii_compatible_p ? (unsigned) ((c)) : (((charset))->unified_p || ((charset))->method == CHARSET_METHOD_SUBSET || ((charset))->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) : ((c)) < ((charset))->min_char || ((c)) > ((charset))->max_char ? ((charset))->invalid_code : ((charset))->method == CHARSET_METHOD_OFFSET ? (((charset))->code_linear_p ? (unsigned) (((c)) - ((charset))->code_offset) + ((charset))->min_code : encode_char ((charset), (c))) : ((charset))->method == CHARSET_METHOD_MAP ? ((((charset))->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)))) ? (charset_work = CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)), (c)), (((charset_work) == (builtin_lisp_symbol (0))) ? ((charset))->invalid_code : (unsigned) ((charset_work) >> INTTYPEBITS))) : encode_char ((charset), (c))) : encode_char ((charset), (c)))) : (((((sizeof (((c)) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof (((c)) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? (((c)) + (unsigned) 0) < ((0x80) + (unsigned) 0) : (((c)) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ((charset))->ascii_compatible_p ? (unsigned) ((c)) : (((charset))->unified_p || ((charset))->method == CHARSET_METHOD_SUBSET || ((charset))->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) : ((c)) < ((charset))->min_char || ((c)) > ((charset))->max_char ? ((charset))->invalid_code : ((charset))->method == CHARSET_METHOD_OFFSET ? (((charset))->code_linear_p ? (unsigned) (((c)) - ((charset))->code_offset) + ((charset))->min_code : encode_char ((charset), (c))) : ((charset))->method == CHARSET_METHOD_MAP ? ((((charset))->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)))) ? (charset_work = CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)), (c)), (((charset_work) == (builtin_lisp_symbol (0))) ? ((charset))->invalid_code : (unsigned) ((charset_work) >> INTTYPEBITS))) : encode_char ((charset), (c))) : encode_char ((charset), (c)))))); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0); if (((charset)->dimension) == 1) do { int id = (((charset))->id); if ((((coding)->spec.iso_2022.flags) & 0x8000) && id == charset_ascii) { id = charset_jisx0201_roman; (charset) = (charset_table + (id)); } if (((coding)->spec.iso_2022.single_shifting)) { if (((coding)->spec.iso_2022.flags) & 0x0008) do { produced_chars++; *dst++ = (code & 0x7F); } while (0); else do { produced_chars++; if (multibytep) { unsigned ch = (code | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function40 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code | 0x80); } while (0); ((coding)->spec.iso_2022.single_shifting) = 0; break; } else if (id == (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]))) { do { produced_chars++; *dst++ = (code & 0x7F); } while (0); break; } else if (id == (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]))) { do { produced_chars++; if (multibytep) { unsigned ch = (code | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function41 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code | 0x80); } while (0); break; } else dst = encode_invocation_designation ((charset), coding, dst, &produced_chars); } while (1); else do { int id = (((charset))->id); if ((((coding)->spec.iso_2022.flags) & 0x10000) && id == charset_jisx0208) { id = charset_jisx0208_1978; (charset) = (charset_table + (id)); } if (((coding)->spec.iso_2022.single_shifting)) { if (((coding)->spec.iso_2022.flags) & 0x0008) do { produced_chars += 2; *dst++ = ((code >> 8) & 0x7F), *dst++ = ((code & 0xFF) & 0x7F); } while (0); else do { produced_chars += 2; if (multibytep) { unsigned ch; ch = ((code >> 8) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function42 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = ((code & 0xFF) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function43 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = ((code >> 8) | 0x80); *dst++ = ((code & 0xFF) | 0x80); } } while (0); ((coding)->spec.iso_2022.single_shifting) = 0; break; } else if (id == (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]))) { do { produced_chars += 2; *dst++ = ((code >> 8) & 0x7F), *dst++ = ((code & 0xFF) & 0x7F); } while (0); break; } else if (id == (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]))) { do { produced_chars += 2; if (multibytep) { unsigned ch; ch = ((code >> 8) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function44 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = ((code & 0xFF) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function45 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = ((code >> 8) | 0x80); *dst++ = ((code & 0xFF) | 0x80); } } while (0); break; } else dst = encode_invocation_designation ((charset), coding, dst, &produced_chars); } while (1); } while (0);
     }
 }
      else if (((c) > 0x3FFF7F))
 {
   c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
   do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function46 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
 }
      else
 {
   struct charset *charset;

   if (preferred_charset_id >= 0)
     {
       _Bool result;

       charset = (charset_table + (preferred_charset_id));
       do { ptrdiff_t offset; charset_map_loaded = 0; result = (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) || ((((charset)->unified_p) || (charset)->method == CHARSET_METHOD_SUBSET || (charset)->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) != (charset)->invalid_code : ((((c)) < 0x10000 ? (charset)->fast_map[((c)) >> 10] & (1 << ((((c)) >> 7) & 7)) : (charset)->fast_map[(((c)) >> 15) + 62] & (1 << ((((c)) >> 12) & 7))) && ((charset)->method == CHARSET_METHOD_OFFSET ? (c) >= (charset)->min_char && (c) <= (charset)->max_char : ((charset)->method == CHARSET_METHOD_MAP && (charset)->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)))) ? ! ((CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)), (c))) == (builtin_lisp_symbol (0))) : encode_char ((charset), (c)) != (charset)->invalid_code)))); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);
       if (! result)
  do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, ((void*)0)); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

     }
   else
     do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, ((void*)0)); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

   if (!charset)
     {
       if (coding->mode & 0x10)
  {
    c = '?';
    charset = (charset_table + (charset_ascii));
  }
       else
  {
    c = coding->default_char;
    do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, ((void*)0)); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

  }
     }
   do { unsigned code; do { ptrdiff_t offset; charset_map_loaded = 0; code = (((!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof ((c)) <= sizeof (int)) ? 1 : -1; })) ? (((((sizeof (((c)) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof (((c)) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? (((c)) + (unsigned) 0) < ((0x80) + (unsigned) 0) : (((c)) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ((charset))->ascii_compatible_p ? (unsigned) ((c)) : (((charset))->unified_p || ((charset))->method == CHARSET_METHOD_SUBSET || ((charset))->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) : ((c)) < ((charset))->min_char || ((c)) > ((charset))->max_char ? ((charset))->invalid_code : ((charset))->method == CHARSET_METHOD_OFFSET ? (((charset))->code_linear_p ? (unsigned) (((c)) - ((charset))->code_offset) + ((charset))->min_code : encode_char ((charset), (c))) : ((charset))->method == CHARSET_METHOD_MAP ? ((((charset))->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)))) ? (charset_work = CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)), (c)), (((charset_work) == (builtin_lisp_symbol (0))) ? ((charset))->invalid_code : (unsigned) ((charset_work) >> INTTYPEBITS))) : encode_char ((charset), (c))) : encode_char ((charset), (c)))) : (((((sizeof (((c)) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof (((c)) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? (((c)) + (unsigned) 0) < ((0x80) + (unsigned) 0) : (((c)) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ((charset))->ascii_compatible_p ? (unsigned) ((c)) : (((charset))->unified_p || ((charset))->method == CHARSET_METHOD_SUBSET || ((charset))->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) : ((c)) < ((charset))->min_char || ((c)) > ((charset))->max_char ? ((charset))->invalid_code : ((charset))->method == CHARSET_METHOD_OFFSET ? (((charset))->code_linear_p ? (unsigned) (((c)) - ((charset))->code_offset) + ((charset))->min_code : encode_char ((charset), (c))) : ((charset))->method == CHARSET_METHOD_MAP ? ((((charset))->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)))) ? (charset_work = CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), ((charset))->hash_index))), charset_encoder)), (c)), (((charset_work) == (builtin_lisp_symbol (0))) ? ((charset))->invalid_code : (unsigned) ((charset_work) >> INTTYPEBITS))) : encode_char ((charset), (c))) : encode_char ((charset), (c)))))); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0); if (((charset)->dimension) == 1) do { int id = (((charset))->id); if ((((coding)->spec.iso_2022.flags) & 0x8000) && id == charset_ascii) { id = charset_jisx0201_roman; (charset) = (charset_table + (id)); } if (((coding)->spec.iso_2022.single_shifting)) { if (((coding)->spec.iso_2022.flags) & 0x0008) do { produced_chars++; *dst++ = (code & 0x7F); } while (0); else do { produced_chars++; if (multibytep) { unsigned ch = (code | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function47 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code | 0x80); } while (0); ((coding)->spec.iso_2022.single_shifting) = 0; break; } else if (id == (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]))) { do { produced_chars++; *dst++ = (code & 0x7F); } while (0); break; } else if (id == (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]))) { do { produced_chars++; if (multibytep) { unsigned ch = (code | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function48 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code | 0x80); } while (0); break; } else dst = encode_invocation_designation ((charset), coding, dst, &produced_chars); } while (1); else do { int id = (((charset))->id); if ((((coding)->spec.iso_2022.flags) & 0x10000) && id == charset_jisx0208) { id = charset_jisx0208_1978; (charset) = (charset_table + (id)); } if (((coding)->spec.iso_2022.single_shifting)) { if (((coding)->spec.iso_2022.flags) & 0x0008) do { produced_chars += 2; *dst++ = ((code >> 8) & 0x7F), *dst++ = ((code & 0xFF) & 0x7F); } while (0); else do { produced_chars += 2; if (multibytep) { unsigned ch; ch = ((code >> 8) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function49 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = ((code & 0xFF) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function50 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = ((code >> 8) | 0x80); *dst++ = ((code & 0xFF) | 0x80); } } while (0); ((coding)->spec.iso_2022.single_shifting) = 0; break; } else if (id == (((coding)->spec.iso_2022.current_invocation[0]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[0])]))) { do { produced_chars += 2; *dst++ = ((code >> 8) & 0x7F), *dst++ = ((code & 0xFF) & 0x7F); } while (0); break; } else if (id == (((coding)->spec.iso_2022.current_invocation[1]) < 0 ? -1 : ((coding)->spec.iso_2022.current_designation[((coding)->spec.iso_2022.current_invocation[1])]))) { do { produced_chars += 2; if (multibytep) { unsigned ch; ch = ((code >> 8) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function51 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = ((code & 0xFF) | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function52 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = ((code >> 8) | 0x80); *dst++ = ((code & 0xFF) | 0x80); } } while (0); break; } else dst = encode_invocation_designation ((charset), coding, dst, &produced_chars); } while (1); } while (0);
 }
    }

  if (coding->mode & 0x01
      && ((coding)->spec.iso_2022.flags) & 0x0002)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      do { int reg; struct charset *charset; if (((coding)->spec.iso_2022.current_invocation[0]) != 0) do { do { produced_chars++; *dst++ = (0x0F); } while (0); ((coding)->spec.iso_2022.current_invocation[0]) = 0; } while (0); for (reg = 0; reg < 4; reg++) if ((((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)) >= 0 && (((coding)->spec.iso_2022.current_designation[reg]) != (((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)))) { charset = (charset_table + ((((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), reg)) >> INTTYPEBITS)))); do { unsigned char final_char = ((charset)->iso_final); const char *intermediate_char_94 = "()*+"; const char *intermediate_char_96 = ",-./"; int revision = -1; if (((coding)->spec.iso_2022.flags) & 0x0080) revision = ((charset)->iso_revision); if (revision >= 0) { do { produced_chars += 2; *dst++ = (0x1B), *dst++ = ('&'); } while (0); do { produced_chars++; if (multibytep) { unsigned ch = ('@' + revision); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function53 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = ('@' + revision); } while (0); } do { produced_chars++; *dst++ = (0x1B); } while (0); if (((charset)->dimension) == 1) { int b; if (! ((charset)->iso_chars_96)) b = intermediate_char_94[reg]; else b = intermediate_char_96[reg]; do { produced_chars++; *dst++ = (b); } while (0); } else { do { produced_chars++; *dst++ = ('$'); } while (0); if (! ((charset)->iso_chars_96)) { if (((coding)->spec.iso_2022.flags) & 0x0001 || reg != 0 || final_char < '@' || final_char > 'B') do { produced_chars++; *dst++ = (intermediate_char_94[reg]); } while (0); } else do { produced_chars++; *dst++ = (intermediate_char_96[reg]); } while (0); } do { produced_chars++; *dst++ = (final_char); } while (0); ((coding)->spec.iso_2022.current_designation[reg]) = ((charset)->id); } while (0); } } while (0);
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  ((coding)->spec.iso_2022.bol) = bol_designation;
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}
# 4601 "coding.c"
static _Bool
detect_coding_sjis (struct coding_system *coding,
      struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t consumed_chars = 0;
  int found = 0;
  int c;
  Lisp_Object attrs, charset_list;
  int max_first_byte_of_2_byte_code;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  max_first_byte_of_2_byte_code
    = (((Flength (charset_list)) >> INTTYPEBITS) > 3 ? 0xFC : 0xEF);

  detect_info->checked |= (1 << coding_category_sjis);

  src += coding->head_ascii;

  while (1)
    {
      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0x80)
 continue;
      if ((c >= 0x81 && c <= 0x9F)
   || (c >= 0xE0 && c <= max_first_byte_of_2_byte_code))
 {
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c < 0x40 || c == 0x7F || c > 0xFC)
     break;
   found = (1 << coding_category_sjis);
 }
      else if (c >= 0xA0 && c < 0xE0)
 found = (1 << coding_category_sjis);
      else
 break;
    }
  detect_info->rejected |= (1 << coding_category_sjis);
  return 0;

 no_more_source:
  if (src_base < src && coding->mode & 0x01)
    {
      detect_info->rejected |= (1 << coding_category_sjis);
      return 0;
    }
  detect_info->found |= found;
  return 1;
}




static _Bool
detect_coding_big5 (struct coding_system *coding,
      struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t consumed_chars = 0;
  int found = 0;
  int c;

  detect_info->checked |= (1 << coding_category_big5);

  src += coding->head_ascii;

  while (1)
    {
      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0x80)
 continue;
      if (c >= 0xA1)
 {
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c < 0x40 || (c >= 0x7F && c <= 0xA0))
     return 0;
   found = (1 << coding_category_big5);
 }
      else
 break;
    }
  detect_info->rejected |= (1 << coding_category_big5);
  return 0;

 no_more_source:
  if (src_base < src && coding->mode & 0x01)
    {
      detect_info->rejected |= (1 << coding_category_big5);
      return 0;
    }
  detect_info->found |= found;
  return 1;
}



static void
decode_coding_sjis (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;


  int *charbuf_end
    = coding->charbuf + coding->charbuf_size - (5 * 2);
  ptrdiff_t consumed_chars = 0, consumed_chars_base;
  _Bool multibytep = coding->src_multibyte;
  struct charset *charset_roman, *charset_kanji, *charset_kana;
  struct charset *charset_kanji2;
  Lisp_Object attrs, charset_list, val;
  ptrdiff_t char_offset = coding->produced_char;
  ptrdiff_t last_offset = char_offset;
  int last_id = charset_ascii;
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr = -1;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);

  val = charset_list;
  charset_roman = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kana = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kanji = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kanji2 = ((val) == (builtin_lisp_symbol (0))) ? ((void*)0) : (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));

  while (1)
    {
      int c, c1;
      struct charset *charset;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr >= 0)
     src_base--;
   break;
 }

      if (byte_after_cr >= 0)
 c = byte_after_cr, byte_after_cr = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0)
 goto invalid_code;
      if (c < 0x80)
 {
   if (eol_dos && c == '\r')
     do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr = *src++; if (multibytep && (byte_after_cr & 0x80)) { if ((byte_after_cr & 0xFE) == 0xC0) byte_after_cr = ((byte_after_cr & 1) << 6) | *src++; else { src--; byte_after_cr = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   charset = charset_roman;
 }
      else if (c == 0x80 || c == 0xA0)
 goto invalid_code;
      else if (c >= 0xA1 && c <= 0xDF)
 {

   c &= 0x7F;
   charset = charset_kana;
 }
      else if (c <= 0xEF)
 {

   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c1 < 0x40 || c1 == 0x7F || c1 > 0xFC)
     goto invalid_code;
   c = (c << 8) | c1;
   do { int s1, s2, j1, j2; s1 = (c) >> 8, s2 = (c) & 0xFF; if (s2 >= 0x9F) (j1 = s1 * 2 - (s1 >= 0xE0 ? 0x160 : 0xE0), j2 = s2 - 0x7E); else (j1 = s1 * 2 - ((s1 >= 0xE0) ? 0x161 : 0xE1), j2 = s2 - ((s2 >= 0x7F) ? 0x20 : 0x1F)); (c) = (j1 << 8) | j2; } while (0);
   charset = charset_kanji;
 }
      else if (c <= 0xFC && charset_kanji2)
 {

   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c1 < 0x40 || c1 == 0x7F || c1 > 0xFC)
     goto invalid_code;
   c = (c << 8) | c1;
   do { int s1, s2, j1, j2; s1 = (c) >> 8, s2 = (c) & 0xFF; if (s2 >= 0x9F) { j1 = (s1 == 0xF0 ? 0x28 : s1 == 0xF1 ? 0x24 : s1 == 0xF2 ? 0x2C : s1 == 0xF3 ? 0x2E : 0x6E + (s1 - 0xF4) * 2); j2 = s2 - 0x7E; } else { j1 = (s1 <= 0xF2 ? 0x21 + (s1 - 0xF0) * 2 : s1 <= 0xF4 ? 0x2D + (s1 - 0xF3) * 2 : 0x6F + (s1 - 0xF5) * 2); j2 = s2 - ((s2 >= 0x7F ? 0x20 : 0x1F)); } (c) = (j1 << 8) | j2; } while (0);
   charset = charset_kanji2;
 }
      else
 goto invalid_code;
      if (charset->id != charset_ascii
   && last_id != charset->id)
 {
   if (last_id != charset_ascii)
     do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
   last_id = charset->id;
   last_offset = char_offset;
 }
      do { ptrdiff_t offset; charset_map_loaded = 0; c = (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (c) : ((c) < (charset)->min_code || (c) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (c)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((c) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (c))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (c) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (c))) : decode_char ((charset), (c))); if (charset_map_loaded && (offset = coding_change_source (coding))) { src += offset; src_base += offset; src_end += offset; } } while (0);
      *charbuf++ = c;
      char_offset++;
      continue;

    invalid_code:
      src = src_base;
      consumed_chars = consumed_chars_base;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      *charbuf++ = c < 0 ? -c : ((c) + 0x3FFF00);
      char_offset++;
    }

 no_more_source:
  if (last_id != charset_ascii)
    do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}

static void
decode_coding_big5 (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;


  int *charbuf_end
    = coding->charbuf + coding->charbuf_size - (5 * 2);
  ptrdiff_t consumed_chars = 0, consumed_chars_base;
  _Bool multibytep = coding->src_multibyte;
  struct charset *charset_roman, *charset_big5;
  Lisp_Object attrs, charset_list, val;
  ptrdiff_t char_offset = coding->produced_char;
  ptrdiff_t last_offset = char_offset;
  int last_id = charset_ascii;
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr = -1;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  val = charset_list;
  charset_roman = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_big5 = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));

  while (1)
    {
      int c, c1;
      struct charset *charset;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr >= 0)
     src_base--;
   break;
 }

      if (byte_after_cr >= 0)
 c = byte_after_cr, byte_after_cr = -1;
      else
 do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);

      if (c < 0)
 goto invalid_code;
      if (c < 0x80)
 {
   if (eol_dos && c == '\r')
     do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr = *src++; if (multibytep && (byte_after_cr & 0x80)) { if ((byte_after_cr & 0xFE) == 0xC0) byte_after_cr = ((byte_after_cr & 1) << 6) | *src++; else { src--; byte_after_cr = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   charset = charset_roman;
 }
      else
 {

   if (c < 0xA1 || c > 0xFE)
     goto invalid_code;
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c1 = *src++; if (multibytep && (c1 & 0x80)) { if ((c1 & 0xFE) == 0xC0) c1 = ((c1 & 1) << 6) | *src++; else { src--; c1 = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (c1 < 0x40 || (c1 > 0x7E && c1 < 0xA1) || c1 > 0xFE)
     goto invalid_code;
   c = c << 8 | c1;
   charset = charset_big5;
 }
      if (charset->id != charset_ascii
   && last_id != charset->id)
 {
   if (last_id != charset_ascii)
     do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
   last_id = charset->id;
   last_offset = char_offset;
 }
      do { ptrdiff_t offset; charset_map_loaded = 0; c = (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (c) : ((c) < (charset)->min_code || (c) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (c)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((c) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (c))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (c) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (c))) : decode_char ((charset), (c))); if (charset_map_loaded && (offset = coding_change_source (coding))) { src += offset; src_base += offset; src_end += offset; } } while (0);
      *charbuf++ = c;
      char_offset++;
      continue;

    invalid_code:
      src = src_base;
      consumed_chars = consumed_chars_base;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      *charbuf++ = c < 0 ? -c : ((c) + 0x3FFF00);
      char_offset++;
    }

 no_more_source:
  if (last_id != charset_ascii)
    do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}
# 4922 "coding.c"
static _Bool
encode_coding_sjis (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int safe_room = 4;
  ptrdiff_t produced_chars = 0;
  Lisp_Object attrs, charset_list, val;
  _Bool ascii_compatible;
  struct charset *charset_kanji, *charset_kana;
  struct charset *charset_kanji2;
  int c;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  val = (((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->u.cdr;
  charset_kana = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kanji = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kanji2 = ((val) == (builtin_lisp_symbol (0))) ? ((void*)0) : (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));

  ascii_compatible = ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0)));

  while (charbuf < charbuf_end)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      c = *charbuf++;

      if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ascii_compatible)
 do { produced_chars++; *dst++ = (c); } while (0);
      else if (((c) > 0x3FFF7F))
 {
   c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
   do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function54 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
 }
      else
 {
   unsigned code;
   struct charset *charset;
   do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);


   if (!charset)
     {
       if (coding->mode & 0x10)
  {
    code = '?';
    charset = (charset_table + (charset_ascii));
  }
       else
  {
    c = coding->default_char;
    do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

  }
     }
   if (code == ((charset)->invalid_code))
     emacs_abort ();
   if (charset == charset_kanji)
     {
       int c1, c2;
       do { int s1, s2, j1, j2; j1 = (code) >> 8, j2 = (code) & 0xFF; if (j1 & 1) (s1 = j1 / 2 + ((j1 < 0x5F) ? 0x71 : 0xB1), s2 = j2 + ((j2 >= 0x60) ? 0x20 : 0x1F)); else (s1 = j1 / 2 + ((j1 < 0x5F) ? 0x70 : 0xB0), s2 = j2 + 0x7E); (code) = (s1 << 8) | s2; } while (0);
       c1 = code >> 8, c2 = code & 0xFF;
       do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c1); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function55 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c2); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function56 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c1); *dst++ = (c2); } } while (0);
     }
   else if (charset == charset_kana)
     do { produced_chars++; if (multibytep) { unsigned ch = (code | 0x80); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function57 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code | 0x80); } while (0);
   else if (charset_kanji2 && charset == charset_kanji2)
     {
       int c1, c2;

       c1 = code >> 8;
       if (c1 == 0x21 || (c1 >= 0x23 && c1 <= 0x25)
    || c1 == 0x28
    || (c1 >= 0x2C && c1 <= 0x2F) || c1 >= 0x6E)
  {
    do { int s1, s2, j1, j2; j1 = (code) >> 8, j2 = (code) & 0xFF; if (j1 & 1) { s1 = (j1 <= 0x25 ? 0xF0 + (j1 - 0x21) / 2 : j1 <= 0x2F ? 0xF3 + (j1 - 0x2D) / 2 : 0xF5 + (j1 - 0x6F) / 2); s2 = j2 + ((j2 >= 0x60) ? 0x20 : 0x1F); } else { s1 = (j1 == 0x28 ? 0xF0 : j1 == 0x24 ? 0xF1 : j1 == 0x2C ? 0xF2 : j1 == 0x2E ? 0xF3 : 0xF4 + (j1 - 0x6E) / 2); s2 = j2 + 0x7E; } (code) = (s1 << 8) | s2; } while (0);
    c1 = code >> 8, c2 = code & 0xFF;
    do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c1); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function58 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c2); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function59 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c1); *dst++ = (c2); } } while (0);
  }
       else
  do { produced_chars++; *dst++ = (code & 0x7F); } while (0);
     }
   else
     do { produced_chars++; *dst++ = (code & 0x7F); } while (0);
 }
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}

static _Bool
encode_coding_big5 (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int safe_room = 4;
  ptrdiff_t produced_chars = 0;
  Lisp_Object attrs, charset_list, val;
  _Bool ascii_compatible;
  struct charset *charset_big5;
  int c;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  val = (((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->u.cdr;
  charset_big5 = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
  ascii_compatible = ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0)));

  while (charbuf < charbuf_end)
    {
      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      c = *charbuf++;

      if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ascii_compatible)
 do { produced_chars++; *dst++ = (c); } while (0);
      else if (((c) > 0x3FFF7F))
 {
   c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
   do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function60 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
 }
      else
 {
   unsigned code;
   struct charset *charset;
   do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);


   if (! charset)
     {
       if (coding->mode & 0x10)
  {
    code = '?';
    charset = (charset_table + (charset_ascii));
  }
       else
  {
    c = coding->default_char;
    do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);

  }
     }
   if (code == ((charset)->invalid_code))
     emacs_abort ();
   if (charset == charset_big5)
     {
       int c1, c2;

       c1 = code >> 8, c2 = code & 0xFF;
       do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (c1); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function61 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (c2); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function62 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (c1); *dst++ = (c2); } } while (0);
     }
   else
     do { produced_chars++; *dst++ = (code & 0x7F); } while (0);
 }
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}
# 5095 "coding.c"
static _Bool
detect_coding_ccl (struct coding_system *coding,
     struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t consumed_chars = 0;
  int found = 0;
  unsigned char *valids;
  ptrdiff_t head_ascii = coding->head_ascii;
  Lisp_Object attrs;

  detect_info->checked |= (1 << coding_category_ccl);

  coding = &coding_categories[coding_category_ccl];
  valids = (SDATA (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_ccl_valids)));
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  if (! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0))))
    src += head_ascii;

  while (1)
    {
      int c;

      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0 || ! valids[c])
 break;
      if ((valids[c] > 1))
 found = (1 << coding_category_ccl);
    }
  detect_info->rejected |= (1 << coding_category_ccl);
  return 0;

 no_more_source:
  detect_info->found |= found;
  return 1;
}

static void
decode_coding_ccl (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  int *charbuf = coding->charbuf + coding->charbuf_used;
  int *charbuf_end = coding->charbuf + coding->charbuf_size;
  ptrdiff_t consumed_chars = 0;
  _Bool multibytep = coding->src_multibyte;
  struct ccl_program *ccl = &coding->spec.ccl->ccl;
  int source_charbuf[1024];
  int source_byteidx[1025];
  Lisp_Object attrs, charset_list;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);

  while (1)
    {
      const unsigned char *p = src;
      ptrdiff_t offset;
      int i = 0;

      if (multibytep)
 {
   while (i < 1024 && p < src_end)
     {
       source_byteidx[i] = p - src;
       source_charbuf[i++] = (!((p)[0] & 0x80) ? *(p)++ : ! ((p)[0] & 0x20) ? ((p) += 2, ((((p)[-2] & 0x1F) << 6) | ((p)[-1] & 0x3F) | ((unsigned char) ((p)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((p) += 3, ((((p)[-3] & 0x0F) << 12) | (((p)[-2] & 0x3F) << 6) | ((p)[-1] & 0x3F))) : string_char ((p), &(p), ((void*)0)));
     }
   source_byteidx[i] = p - src;
 }
      else
 while (i < 1024 && p < src_end)
   source_charbuf[i++] = *p++;

      if (p == src_end && coding->mode & 0x01)
 ccl->last_block = 1;

      charset_map_loaded = 0;
      ccl_driver (ccl, source_charbuf, charbuf, i, charbuf_end - charbuf,
    charset_list);
      if (charset_map_loaded
   && (offset = coding_change_source (coding)))
 {
   p += offset;
   src += offset;
   src_end += offset;
 }
      charbuf += ccl->produced;
      if (multibytep)
 src += source_byteidx[ccl->consumed];
      else
 src += ccl->consumed;
      consumed_chars += ccl->consumed;
      if (p == src_end || ccl->status != 1)
 break;
    }

  switch (ccl->status)
    {
    case 1:
      record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC);
      break;
    case 2:
      record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_DST);
      break;
    case 4:
    case 3:
      record_conversion_result (coding, CODING_RESULT_INTERRUPT);
      break;
    default:
      record_conversion_result (coding, CODING_RESULT_SUCCESS);
      break;
    }
  coding->consumed_char += consumed_chars;
  coding->consumed = src - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}

static _Bool
encode_coding_ccl (struct coding_system *coding)
{
  struct ccl_program *ccl = &coding->spec.ccl->ccl;
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int destination_charbuf[1024];
  ptrdiff_t produced_chars = 0;
  int i;
  Lisp_Object attrs, charset_list;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  if (coding->consumed_char == coding->src_chars
      && coding->mode & 0x01)
    ccl->last_block = 1;

  do
    {
      ptrdiff_t offset;


      charset_map_loaded = 0;
      ccl_driver (ccl, charbuf, destination_charbuf,
    charbuf_end - charbuf, 1024, charset_list);
      if (charset_map_loaded
   && (offset = coding_change_destination (coding)))
 dst += offset;
      if (multibytep)
 {
   do { if (dst + (ccl->produced * 2) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (ccl->produced * 2); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
   for (i = 0; i < ccl->produced; i++)
     do { produced_chars++; if (multibytep) { unsigned ch = (destination_charbuf[i] & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function63 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (destination_charbuf[i] & 0xFF); } while (0);
 }
      else
 {
   do { if (dst + (ccl->produced) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (ccl->produced); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
   for (i = 0; i < ccl->produced; i++)
     *dst++ = destination_charbuf[i] & 0xFF;
   produced_chars += ccl->produced;
 }
      charbuf += ccl->consumed;
      if (ccl->status == 4
   || ccl->status == 3)
 break;
    }
  while (charbuf < charbuf_end);

  switch (ccl->status)
    {
    case 1:
      record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC);
      break;
    case 2:
      record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_DST);
      break;
    case 4:
    case 3:
      record_conversion_result (coding, CODING_RESULT_INTERRUPT);
      break;
    default:
      record_conversion_result (coding, CODING_RESULT_SUCCESS);
      break;
    }

  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}






static void
decode_coding_raw_text (struct coding_system *coding)
{
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));

  coding->chars_at_source = 1;
  coding->consumed_char = coding->src_chars;
  coding->consumed = coding->src_bytes;
  if (eol_dos && coding->source[coding->src_bytes - 1] == '\r')
    {
      coding->consumed_char--;
      coding->consumed--;
      record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC);
    }
  else
    record_conversion_result (coding, CODING_RESULT_SUCCESS);
}

static _Bool
encode_coding_raw_text (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = coding->charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  ptrdiff_t produced_chars = 0;
  int c;

  if (multibytep)
    {
      int safe_room = 5 * 2;

      if (coding->src_multibyte)
 while (charbuf < charbuf_end)
   {
     do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
     c = *charbuf++;
     if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
       do { produced_chars++; *dst++ = (c); } while (0);
     else if (((c) > 0x3FFF7F))
       {
  c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
  do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function64 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
       }
     else
       {
  unsigned char str[5], *p0 = str, *p1 = str;

  do { if ((c) <= 0x7F) *(p1)++ = (c); else if ((c) <= 0x7FF) *(p1)++ = (0xC0 | ((c) >> 6)), *(p1)++ = (0x80 | ((c) & 0x3F)); else if ((c) <= 0xFFFF) *(p1)++ = (0xE0 | ((c) >> 12)), *(p1)++ = (0x80 | (((c) >> 6) & 0x3F)), *(p1)++ = (0x80 | ((c) & 0x3F)); else { extern int (*_gl_verify_function65 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; }))]; (p1) += char_string (c, p1); } } while (0);
  do
    {
      do { produced_chars++; if (multibytep) { unsigned ch = (*p0); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function66 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (*p0); } while (0);
      p0++;
    }
  while (p0 < p1);
       }
   }
      else
 while (charbuf < charbuf_end)
   {
     do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
     c = *charbuf++;
     do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function67 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
   }
    }
  else
    {
      if (coding->src_multibyte)
 {
   int safe_room = 5;

   while (charbuf < charbuf_end)
     {
       do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
       c = *charbuf++;
       if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
  *dst++ = c;
       else if (((c) > 0x3FFF7F))
  *dst++ = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
       else
  do { if ((c) <= 0x7F) *(dst)++ = (c); else if ((c) <= 0x7FF) *(dst)++ = (0xC0 | ((c) >> 6)), *(dst)++ = (0x80 | ((c) & 0x3F)); else if ((c) <= 0xFFFF) *(dst)++ = (0xE0 | ((c) >> 12)), *(dst)++ = (0x80 | (((c) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((c) & 0x3F)); else { extern int (*_gl_verify_function68 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (c, dst); } } while (0);
     }
 }
      else
 {
   do { if (dst + (charbuf_end - charbuf) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (charbuf_end - charbuf); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
   while (charbuf < charbuf_end && dst < dst_end)
     *dst++ = *charbuf++;
 }
      produced_chars = dst - (coding->destination + coding->produced);
    }
  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}




static _Bool
detect_coding_charset (struct coding_system *coding,
         struct coding_detection_info *detect_info)
{
  const unsigned char *src = coding->source, *src_base;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  _Bool multibytep = coding->src_multibyte;
  ptrdiff_t consumed_chars = 0;
  Lisp_Object attrs, valids, name;
  int found = 0;
  ptrdiff_t head_ascii = coding->head_ascii;
  _Bool check_latin_extra = 0;

  detect_info->checked |= (1 << coding_category_charset);

  coding = &coding_categories[coding_category_charset];
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  valids = AREF (attrs, coding_attr_charset_valids);
  name = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), coding->id));
  if (strncmp (SSDATA (SYMBOL_NAME (name)),
        "iso-8859-", sizeof ("iso-8859-") - 1) == 0
      || strncmp (SSDATA (SYMBOL_NAME (name)),
    "iso-latin-", sizeof ("iso-latin-") - 1) == 0)
    check_latin_extra = 1;

  if (! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0))))
    src += head_ascii;

  while (1)
    {
      int c;
      Lisp_Object val;
      struct charset *charset;
      int dim, idx;

      src_base = src;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      if (c < 0)
 continue;
      val = AREF (valids, c);
      if (((val) == (builtin_lisp_symbol (0))))
 break;
      if (c >= 0x80)
 {
   if (c < 0xA0
       && check_latin_extra
       && (!VECTORP (globals.f_Vlatin_extra_code_table)
    || ((AREF (globals.f_Vlatin_extra_code_table, c)) == (builtin_lisp_symbol (0)))))
     break;
   found = (1 << coding_category_charset);
 }
      if (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
 {
   charset = (charset_table + (((val) >> INTTYPEBITS)));
   dim = ((charset)->dimension);
   for (idx = 1; idx < dim; idx++)
     {
       if (src == src_end)
  goto too_short;
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       if (c < charset->code_space[(dim - 1 - idx) * 4]
    || c > charset->code_space[(dim - 1 - idx) * 4 + 1])
  break;
     }
   if (idx < dim)
     break;
 }
      else
 {
   idx = 1;
   for (; (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr)
     {
       charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
       dim = ((charset)->dimension);
       while (idx < dim)
  {
    if (src == src_end)
      goto too_short;
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (c < charset->code_space[(dim - 1 - idx) * 4]
        || c > charset->code_space[(dim - 1 - idx) * 4 + 1])
      break;
    idx++;
  }
       if (idx == dim)
  {
    val = builtin_lisp_symbol (0);
    break;
  }
     }
   if ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     break;
 }
    }
 too_short:
  detect_info->rejected |= (1 << coding_category_charset);
  return 0;

 no_more_source:
  detect_info->found |= found;
  return 1;
}

static void
decode_coding_charset (struct coding_system *coding)
{
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  const unsigned char *src_base;
  int *charbuf = coding->charbuf + coding->charbuf_used;


  int *charbuf_end
    = coding->charbuf + coding->charbuf_size - (5 * 2);
  ptrdiff_t consumed_chars = 0, consumed_chars_base;
  _Bool multibytep = coding->src_multibyte;
  Lisp_Object attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  Lisp_Object valids;
  ptrdiff_t char_offset = coding->produced_char;
  ptrdiff_t last_offset = char_offset;
  int last_id = charset_ascii;
  _Bool eol_dos
    = !globals.f_inhibit_eol_conversion && (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (351)));
  int byte_after_cr = -1;

  valids = AREF (attrs, coding_attr_charset_valids);

  while (1)
    {
      int c;
      Lisp_Object val;
      struct charset *charset;
      int dim;
      int len = 1;
      unsigned code;

      src_base = src;
      consumed_chars_base = consumed_chars;

      if (charbuf >= charbuf_end)
 {
   if (byte_after_cr >= 0)
     src_base--;
   break;
 }

      if (byte_after_cr >= 0)
 {
   c = byte_after_cr;
   byte_after_cr = -1;
 }
      else
 {
   do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
   if (eol_dos && c == '\r')
     do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } byte_after_cr = *src++; if (multibytep && (byte_after_cr & 0x80)) { if ((byte_after_cr & 0xFE) == 0xC0) byte_after_cr = ((byte_after_cr & 1) << 6) | *src++; else { src--; byte_after_cr = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
 }
      if (c < 0)
 goto invalid_code;
      code = c;

      val = AREF (valids, c);
      if (! ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && ! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 goto invalid_code;
      if (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
 {
   charset = (charset_table + (((val) >> INTTYPEBITS)));
   dim = ((charset)->dimension);
   while (len < dim)
     {
       do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
       code = (code << 8) | c;
       len++;
     }
   do { ptrdiff_t offset; charset_map_loaded = 0; c = (((((sizeof ((code) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((code) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((code) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((code) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (code) : ((code) < (charset)->min_code || (code) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (code)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((code) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (code))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (code) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (code))) : decode_char ((charset), (code))); if (charset_map_loaded && (offset = coding_change_source (coding))) { src += offset; src_base += offset; src_end += offset; } } while (0);

 }
      else
 {



   while ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     {
       charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
       dim = ((charset)->dimension);
       while (len < dim)
  {
    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    code = (code << 8) | c;
    len++;
  }
       do { ptrdiff_t offset; charset_map_loaded = 0; c = (((((sizeof ((code) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((code) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((code) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((code) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (code) : ((code) < (charset)->min_code || (code) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (code)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((code) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (code))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (code) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (code))) : decode_char ((charset), (code))); if (charset_map_loaded && (offset = coding_change_source (coding))) { src += offset; src_base += offset; src_end += offset; } } while (0);

       if (c >= 0)
  break;
       val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
     }
 }
      if (c < 0)
 goto invalid_code;
      if (charset->id != charset_ascii
   && last_id != charset->id)
 {
   if (last_id != charset_ascii)
     do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
   last_id = charset->id;
   last_offset = char_offset;
 }

      *charbuf++ = c;
      char_offset++;
      continue;

    invalid_code:
      src = src_base;
      consumed_chars = consumed_chars_base;
      do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
      *charbuf++ = c < 0 ? -c : (((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) ? c : ((c) + 0x3FFF00);
      char_offset++;
    }

 no_more_source:
  if (last_id != charset_ascii)
    do { do { *(charbuf)++ = -(4); *(charbuf)++ = (0x0003); *(charbuf)++ = (char_offset - last_offset); coding->annotated = 1; } while (0);; *charbuf++ = last_id; } while (0);
  coding->consumed_char += consumed_chars_base;
  coding->consumed = src_base - coding->source;
  coding->charbuf_used = charbuf - coding->charbuf;
}

static _Bool
encode_coding_charset (struct coding_system *coding)
{
  _Bool multibytep = coding->dst_multibyte;
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  int safe_room = 5;
  ptrdiff_t produced_chars = 0;
  Lisp_Object attrs, charset_list;
  _Bool ascii_compatible;
  int c;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  ascii_compatible = ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0)));

  while (charbuf < charbuf_end)
    {
      struct charset *charset;
      unsigned code;

      do { if (dst + (safe_room) >= dst_end) { ptrdiff_t more_bytes = charbuf_end - charbuf + (safe_room); dst = alloc_destination (coding, more_bytes, dst); dst_end = coding->destination + coding->dst_bytes; } } while (0);
      c = *charbuf++;
      if (ascii_compatible && (((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
 do { produced_chars++; *dst++ = (c); } while (0);
      else if (((c) > 0x3FFF7F))
 {
   c = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
   do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function69 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
 }
      else
 {
   do { ptrdiff_t offset; charset_map_loaded = 0; charset = char_charset (c, charset_list, &code); if (charset_map_loaded && (offset = coding_change_destination (coding))) { dst += offset; dst_end += offset; } } while (0);


   if (charset)
     {
       if (((charset)->dimension) == 1)
  do { produced_chars++; if (multibytep) { unsigned ch = (code); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function70 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code); } while (0);
       else if (((charset)->dimension) == 2)
  do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (code >> 8); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function71 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (code & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function72 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (code >> 8); *dst++ = (code & 0xFF); } } while (0);
       else if (((charset)->dimension) == 3)
  do { do { produced_chars++; if (multibytep) { unsigned ch = (code >> 16); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function73 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (code >> 16); } while (0); do { produced_chars += 2; if (multibytep) { unsigned ch; ch = ((code >> 8) & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function74 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (code & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function75 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = ((code >> 8) & 0xFF); *dst++ = (code & 0xFF); } } while (0); } while (0);
       else
  do { do { produced_chars += 2; if (multibytep) { unsigned ch; ch = (code >> 24); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function76 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = ((code >> 16) & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function77 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = (code >> 24); *dst++ = ((code >> 16) & 0xFF); } } while (0); do { produced_chars += 2; if (multibytep) { unsigned ch; ch = ((code >> 8) & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function78 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); ch = (code & 0xFF); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function79 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else { *dst++ = ((code >> 8) & 0xFF); *dst++ = (code & 0xFF); } } while (0); } while (0);

     }
   else
     {
       if (coding->mode & 0x10)
  c = '?';
       else
  c = coding->default_char;
       do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function80 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
     }
 }
    }

  record_conversion_result (coding, CODING_RESULT_SUCCESS);
  coding->produced_char += produced_chars;
  coding->produced = dst - coding->destination;
  return 0;
}
# 5695 "coding.c"
void
setup_coding_system (Lisp_Object coding_system, struct coding_system *coding)
{
  Lisp_Object attrs;
  Lisp_Object eol_type;
  Lisp_Object coding_type;
  Lisp_Object val;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (958);

  do { coding->id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)); if (coding->id < 0) { Fcheck_coding_system (coding_system); coding->id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)); } if (coding->id < 0) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);

  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  eol_type = globals.f_inhibit_eol_conversion ? builtin_lisp_symbol (973) : (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));

  coding->mode = 0;
  if (VECTORP (eol_type))
    coding->common_flags = (0x0400
       | 0x1000);
  else if (! ((eol_type) == (builtin_lisp_symbol (973))))
    coding->common_flags = (0x0400
       | 0x0800);
  else
    coding->common_flags = 0;
  if (! ((AREF (attrs, coding_attr_post_read)) == (builtin_lisp_symbol (0))))
    coding->common_flags |= 0x0400;
  if (! ((AREF (attrs, coding_attr_pre_write)) == (builtin_lisp_symbol (0))))
    coding->common_flags |= 0x0800;
  if (! ((AREF (attrs, coding_attr_for_unibyte)) == (builtin_lisp_symbol (0))))
    coding->common_flags |= 0x0100;

  val = AREF (attrs, coding_attr_safe_charsets);
  coding->max_charset_id = SCHARS (val) - 1;
  coding->safe_charsets = SDATA (val);
  coding->default_char = ((AREF (attrs, coding_attr_default_char)) >> INTTYPEBITS);
  coding->carryover_bytes = 0;
  coding->raw_destination = 0;

  coding_type = AREF (attrs, coding_attr_type);
  if (((coding_type) == (builtin_lisp_symbol (958))))
    {
      coding->detector = ((void*)0);
      coding->decoder = decode_coding_raw_text;
      coding->encoder = encode_coding_raw_text;
      coding->common_flags |= 0x1000;
      coding->spec.undecided.inhibit_nbd
 = (encode_inhibit_flag
    (AREF (attrs, coding_attr_undecided_inhibit_null_byte_detection)));
      coding->spec.undecided.inhibit_ied
 = (encode_inhibit_flag
    (AREF (attrs, coding_attr_undecided_inhibit_iso_escape_detection)));
      coding->spec.undecided.prefer_utf_8
 = ! ((AREF (attrs, coding_attr_undecided_prefer_utf_8)) == (builtin_lisp_symbol (0)));
    }
  else if (((coding_type) == (builtin_lisp_symbol (580))))
    {
      int i;
      int flags = ((AREF (attrs, coding_attr_iso_flags)) >> INTTYPEBITS);


      ((coding)->spec.iso_2022.current_invocation[0]) = 0;

      ((coding)->spec.iso_2022.current_invocation[1])
 = (flags & 0x0008 ? -1 : 1);

      for (i = 0; i < 4; i++)
 ((coding)->spec.iso_2022.current_designation[i]) = (((AREF (AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_iso_initial), i)) >> INTTYPEBITS));

      ((coding)->spec.iso_2022.single_shifting) = 0;

      ((coding)->spec.iso_2022.bol) = 1;
      coding->detector = detect_coding_iso_2022;
      coding->decoder = decode_coding_iso_2022;
      coding->encoder = encode_coding_iso_2022;
      if (flags & 0x0800)
 coding->mode |= 0x10;
      coding->common_flags
 |= (0x0400 | 0x0800
     | 0x0200);
      if (flags & 0x2000)
 coding->common_flags |= 0x0001;
      if (flags & 0x0040)
 coding->common_flags |= 0x0003;
      if (flags & 0x100000)
 {
   setup_iso_safe_charsets (attrs);
   val = AREF (attrs, coding_attr_safe_charsets);
   coding->max_charset_id = SCHARS (val) - 1;
   coding->safe_charsets = SDATA (val);
 }
      ((coding)->spec.iso_2022.flags) = flags;
      (&(coding)->spec.iso_2022.cmp_status)->state = COMPOSING_NO;
      (&(coding)->spec.iso_2022.cmp_status)->method = COMPOSITION_NO;
      ((coding)->spec.iso_2022.ctext_extended_segment_len) = 0;
      ((coding)->spec.iso_2022.embedded_utf_8) = 0;
    }
  else if (((coding_type) == (builtin_lisp_symbol (261))))
    {
      coding->detector = detect_coding_charset;
      coding->decoder = decode_coding_charset;
      coding->encoder = encode_coding_charset;
      coding->common_flags
 |= (0x0400 | 0x0800);
    }
  else if (((coding_type) == (builtin_lisp_symbol (988))))
    {
      val = AREF (attrs, coding_attr_utf_bom);
      ((coding)->spec.utf_8_bom) = ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? utf_detect_bom
       : ((val) == (builtin_lisp_symbol (901))) ? utf_with_bom
       : utf_without_bom);
      coding->detector = detect_coding_utf_8;
      coding->decoder = decode_coding_utf_8;
      coding->encoder = encode_coding_utf_8;
      coding->common_flags
 |= (0x0400 | 0x0800);
      if (((coding)->spec.utf_8_bom) == utf_detect_bom)
 coding->common_flags |= 0x1000;
    }
  else if (((coding_type) == (builtin_lisp_symbol (986))))
    {
      val = AREF (attrs, coding_attr_utf_bom);
      ((coding)->spec.utf_16.bom) = ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? utf_detect_bom
        : ((val) == (builtin_lisp_symbol (901))) ? utf_with_bom
        : utf_without_bom);
      val = AREF (attrs, coding_attr_utf_16_endian);
      ((coding)->spec.utf_16.endian) = (((val) == (builtin_lisp_symbol (202))) ? utf_16_big_endian
           : utf_16_little_endian);
      ((coding)->spec.utf_16.surrogate) = 0;
      coding->detector = detect_coding_utf_16;
      coding->decoder = decode_coding_utf_16;
      coding->encoder = encode_coding_utf_16;
      coding->common_flags
 |= (0x0400 | 0x0800);
      if (((coding)->spec.utf_16.bom) == utf_detect_bom)
 coding->common_flags |= 0x1000;
    }
  else if (((coding_type) == (builtin_lisp_symbol (246))))
    {
      coding->detector = detect_coding_ccl;
      coding->decoder = decode_coding_ccl;
      coding->encoder = encode_coding_ccl;
      coding->common_flags
 |= (0x0400 | 0x0800
     | 0x0200);
    }
  else if (((coding_type) == (builtin_lisp_symbol (361))))
    {
      coding->detector = detect_coding_emacs_mule;
      coding->decoder = decode_coding_emacs_mule;
      coding->encoder = encode_coding_emacs_mule;
      coding->common_flags
 |= (0x0400 | 0x0800);
      if (! ((AREF (attrs, coding_attr_emacs_mule_full)) == (builtin_lisp_symbol (0)))
   && ! ((AREF (attrs, coding_attr_charset_list)) == (Vemacs_mule_charset_list)))
 {
   Lisp_Object tail, safe_charsets;
   int max_charset_id = 0;

   for (tail = Vemacs_mule_charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons);
        tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
     if (max_charset_id < (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS))
       max_charset_id = (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS);
   safe_charsets = make_uninit_string (max_charset_id + 1);
   memset (SDATA (safe_charsets), 255, max_charset_id + 1);
   for (tail = Vemacs_mule_charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons);
        tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
     SSET (safe_charsets, (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS), 0);
   coding->max_charset_id = max_charset_id;
   coding->safe_charsets = SDATA (safe_charsets);
 }
      coding->spec.emacs_mule.cmp_status.state = COMPOSING_NO;
      coding->spec.emacs_mule.cmp_status.method = COMPOSITION_NO;
    }
  else if (((coding_type) == (builtin_lisp_symbol (861))))
    {
      coding->detector = detect_coding_sjis;
      coding->decoder = decode_coding_sjis;
      coding->encoder = encode_coding_sjis;
      coding->common_flags
 |= (0x0400 | 0x0800);
    }
  else if (((coding_type) == (builtin_lisp_symbol (203))))
    {
      coding->detector = detect_coding_big5;
      coding->decoder = decode_coding_big5;
      coding->encoder = encode_coding_big5;
      coding->common_flags
 |= (0x0400 | 0x0800);
    }
  else
    {
      coding->detector = ((void*)0);
      coding->decoder = decode_coding_raw_text;
      coding->encoder = encode_coding_raw_text;
      if (! ((eol_type) == (builtin_lisp_symbol (973))))
 {
   coding->common_flags |= 0x0400;
   if (! VECTORP (eol_type))
     coding->common_flags |= 0x0800;
 }

    }

  return;
}



Lisp_Object
coding_charset_list (struct coding_system *coding)
{
  Lisp_Object attrs, charset_list;

  do { (attrs) = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)); (charset_list) = AREF (attrs, coding_attr_charset_list); } while (0);
  if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (580))))
    {
      int flags = ((AREF (attrs, coding_attr_iso_flags)) >> INTTYPEBITS);

      if (flags & 0x100000)
 charset_list = Viso_2022_charset_list;
    }
  else if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (361))))
    {
      charset_list = Vemacs_mule_charset_list;
    }
  return charset_list;
}




Lisp_Object
coding_system_charset_list (Lisp_Object coding_system)
{
  ptrdiff_t id;
  Lisp_Object attrs, charset_list;

  do { id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)); if (id < 0) { Fcheck_coding_system (coding_system); id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)); } if (id < 0) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), id), 0));

  if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (580))))
    {
      int flags = ((AREF (attrs, coding_attr_iso_flags)) >> INTTYPEBITS);

      if (flags & 0x100000)
 charset_list = Viso_2022_charset_list;
      else
 charset_list = AREF (attrs, coding_attr_charset_list);
    }
  else if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (361))))
    {
      charset_list = Vemacs_mule_charset_list;
    }
  else
    {
      charset_list = AREF (attrs, coding_attr_charset_list);
    }
  return charset_list;
}





Lisp_Object
raw_text_coding_system (Lisp_Object coding_system)
{
  Lisp_Object spec, attrs;
  Lisp_Object eol_type, raw_text_eol_type;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    return builtin_lisp_symbol (788);
  spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0)));
  attrs = AREF (spec, 0);

  if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (788))))
    return coding_system;

  eol_type = AREF (spec, 2);
  if (VECTORP (eol_type))
    return builtin_lisp_symbol (788);
  spec = (Fgethash (builtin_lisp_symbol (788), Vcoding_system_hash_table, builtin_lisp_symbol (0)));
  raw_text_eol_type = AREF (spec, 2);
  return (((eol_type) == (builtin_lisp_symbol (973))) ? AREF (raw_text_eol_type, 0)
   : ((eol_type) == (builtin_lisp_symbol (351))) ? AREF (raw_text_eol_type, 1)
   : AREF (raw_text_eol_type, 2));
}



_Bool
raw_text_coding_system_p (struct coding_system *coding)
{
  return (coding->decoder == decode_coding_raw_text
   && coding->encoder == encode_coding_raw_text) ? 1 : 0;
}







Lisp_Object
coding_inherit_eol_type (Lisp_Object coding_system, Lisp_Object parent)
{
  Lisp_Object spec, eol_type;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (788);
  else
    do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)) < 0 && ((Fcheck_coding_system (coding_system)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0)));
  eol_type = AREF (spec, 2);
  if (VECTORP (eol_type))
    {
      Lisp_Object parent_eol_type;

      if (! ((parent) == (builtin_lisp_symbol (0))))
 {
   Lisp_Object parent_spec;

   do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), parent, ((void*)0)) < 0 && ((Fcheck_coding_system (parent)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (parent)); } while (0);
   parent_spec = (Fgethash (parent, Vcoding_system_hash_table, builtin_lisp_symbol (0)));
   parent_eol_type = AREF (parent_spec, 2);
   if (VECTORP (parent_eol_type))
     parent_eol_type = system_eol_type;
 }
      else
 parent_eol_type = system_eol_type;
      if (((parent_eol_type) == (builtin_lisp_symbol (973))))
 coding_system = AREF (eol_type, 0);
      else if (((parent_eol_type) == (builtin_lisp_symbol (351))))
 coding_system = AREF (eol_type, 1);
      else if (((parent_eol_type) == (builtin_lisp_symbol (635))))
 coding_system = AREF (eol_type, 2);
    }
  return coding_system;
}






Lisp_Object
complement_process_encoding_system (Lisp_Object coding_system)
{
  Lisp_Object coding_base = builtin_lisp_symbol (0), eol_base = builtin_lisp_symbol (0);
  Lisp_Object spec, attrs;
  int i;

  for (i = 0; i < 3; i++)
    {
      if (i == 1)
 coding_system = CDR_SAFE (globals.f_Vdefault_process_coding_system);
      else if (i == 2)
 coding_system = preferred_coding_system ();
      spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0)));
      if (((spec) == (builtin_lisp_symbol (0))))
 continue;
      attrs = AREF (spec, 0);
      if (((coding_base) == (builtin_lisp_symbol (0))) && ! ((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (958))))
 coding_base = AREF (attrs, coding_attr_base_name);
      if (((eol_base) == (builtin_lisp_symbol (0))) && ! VECTORP (AREF (spec, 2)))
 eol_base = coding_system;
      if (! ((coding_base) == (builtin_lisp_symbol (0))) && ! ((eol_base) == (builtin_lisp_symbol (0))))
 break;
    }

  if (i > 0)



    coding_system = coding_inherit_eol_type (coding_base, eol_base);
  return coding_system;
}
# 6184 "coding.c"
static Lisp_Object adjust_coding_eol_type (struct coding_system *coding,
        int eol_seen);
# 6194 "coding.c"
static ptrdiff_t
check_ascii (struct coding_system *coding)
{
  const unsigned char *src, *end;
  Lisp_Object eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));
  int eol_seen = coding->eol_seen;

  coding_set_source (coding);
  src = coding->source;
  end = src + coding->src_bytes;

  if (globals.f_inhibit_eol_conversion
      || (((enum Lisp_Type) ((eol_type) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
    {

      while (src < end && !( *src & 0x80))
 {
   if (*src++ == '\n')
     eol_seen |= 1;
 }
    }
  else
    {
      end--;
      while (src < end)
 {
   int c = *src;

   if (c & 0x80)
     break;
   src++;
   if (c == '\r')
     {
       if (*src == '\n')
  {
    eol_seen |= 4;
    src++;
  }
       else
  eol_seen |= 2;
     }
   else if (c == '\n')
     eol_seen |= 1;
 }
      if (src == end)
 {
   int c = *src;


   if (! (c & 0x80))
     {
       if (c == '\r')
  eol_seen |= 2;
       else if (c == '\n')
  eol_seen |= 1;
       src++;
     }
 }
    }
  coding->head_ascii = src - coding->source;
  coding->eol_seen = eol_seen;
  return (coding->head_ascii);
}
# 6266 "coding.c"
static ptrdiff_t
check_utf_8 (struct coding_system *coding)
{
  const unsigned char *src, *end;
  int eol_seen;
  ptrdiff_t nchars = coding->head_ascii;

  if (coding->head_ascii < 0)
    check_ascii (coding);
  else
    coding_set_source (coding);
  src = coding->source + coding->head_ascii;

  end = coding->source + coding->src_bytes - 1;
  eol_seen = coding->eol_seen;
  while (src < end)
    {
      int c = *src;

      if (((*src) < 0x80))
 {
   src++;
   if (c < 0x20)
     {
       if (c == '\r')
  {
    if (*src == '\n')
      {
        eol_seen |= 4;
        src++;
        nchars++;
      }
    else
      eol_seen |= 2;
  }
       else if (c == '\n')
  eol_seen |= 1;
     }
 }
      else if ((((c) & 0xE0) == 0xC0))
 {
   if (c < 0xC2
       || src + 1 >= end
       || ! (((src[1]) & 0xC0) == 0x80))
     return -1;
   src += 2;
 }
      else if ((((c) & 0xF0) == 0xE0))
 {
   if (src + 2 >= end
       || ! ((((src[1]) & 0xC0) == 0x80)
      && (((src[2]) & 0xC0) == 0x80)))
     return -1;
   c = (((c & 0xF) << 12)
        | ((src[1] & 0x3F) << 6) | (src[2] & 0x3F));
   if (c < 0x800
       || (c >= 0xd800 && c < 0xe000))
     return -1;
   src += 3;
 }
      else if ((((c) & 0xF8) == 0xF0))
 {
   if (src + 3 >= end
       || ! ((((src[1]) & 0xC0) == 0x80)
      && (((src[2]) & 0xC0) == 0x80)
      && (((src[3]) & 0xC0) == 0x80)))
     return -1;
   c = (((c & 0x7) << 18) | ((src[1] & 0x3F) << 12)
        | ((src[2] & 0x3F) << 6) | (src[3] & 0x3F));
   if (c < 0x10000
       || c >= 0x110000)
     return -1;
   src += 4;
 }
      else
 return -1;
      nchars++;
    }

  if (src == end)
    {
      if (! ((*src) < 0x80))
 return -1;
      nchars++;
      if (*src == '\r')
 eol_seen |= 2;
      else if (*src == '\n')
 eol_seen |= 1;
    }
  coding->eol_seen = eol_seen;
  return nchars;
}
# 6369 "coding.c"
static int
detect_eol (const unsigned char *source, ptrdiff_t src_bytes,
     enum coding_category category)
{
  const unsigned char *src = source, *src_end = src + src_bytes;
  unsigned char c;
  int total = 0;
  int eol_seen = 0;

  if ((1 << category) & ((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig)))
    {
      _Bool msb = category == (coding_category_utf_16_le
         | coding_category_utf_16_le_nosig);
      _Bool lsb = !msb;

      while (src + 1 < src_end)
 {
   c = src[lsb];
   if (src[msb] == 0 && (c == '\n' || c == '\r'))
     {
       int this_eol;

       if (c == '\n')
  this_eol = 1;
       else if (src + 3 >= src_end
         || src[msb + 2] != 0
         || src[lsb + 2] != '\n')
  this_eol = 2;
       else
  {
    this_eol = 4;
    src += 2;
  }

       if (eol_seen == 0)

  eol_seen = this_eol;
       else if (eol_seen != this_eol)
  {


    if ((eol_seen == 2 && this_eol == 4)
        || (eol_seen == 4
     && this_eol == 2))
      eol_seen = 4;
    else
      {
        eol_seen = 1;
        break;
      }
  }
       if (++total == 3)
  break;
     }
   src += 2;
 }
    }
  else
    while (src < src_end)
      {
 c = *src++;
 if (c == '\n' || c == '\r')
   {
     int this_eol;

     if (c == '\n')
       this_eol = 1;
     else if (src >= src_end || *src != '\n')
       this_eol = 2;
     else
       this_eol = 4, src++;

     if (eol_seen == 0)

       eol_seen = this_eol;
     else if (eol_seen != this_eol)
       {


  if ((eol_seen == 2 && this_eol == 4)
      || (eol_seen == 4 && this_eol == 2))
    eol_seen = 4;
  else
    {
      eol_seen = 1;
      break;
    }
       }
     if (++total == 3)
       break;
   }
      }
  return eol_seen;
}


static Lisp_Object
adjust_coding_eol_type (struct coding_system *coding, int eol_seen)
{
  Lisp_Object eol_type;

  eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));
  if (! VECTORP (eol_type))

    return eol_type;
  if (eol_seen & 1)
    {
      coding->id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), AREF (eol_type, 0), ((void*)0));
      eol_type = builtin_lisp_symbol (973);
    }
  else if (eol_seen & 4)
    {
      coding->id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), AREF (eol_type, 1), ((void*)0));
      eol_type = builtin_lisp_symbol (351);
    }
  else if (eol_seen & 2)
    {
      coding->id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), AREF (eol_type, 2), ((void*)0));
      eol_type = builtin_lisp_symbol (635);
    }
  return eol_type;
}





static void
detect_coding (struct coding_system *coding)
{
  const unsigned char *src, *src_end;
  unsigned int saved_mode = coding->mode;
  Lisp_Object found = builtin_lisp_symbol (0);
  Lisp_Object eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));

  coding->consumed = coding->consumed_char = 0;
  coding->produced = coding->produced_char = 0;
  coding_set_source (coding);

  src_end = coding->source + coding->src_bytes;

  coding->eol_seen = 0;


  if (((AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0)), coding_attr_type)) == (builtin_lisp_symbol (958))))
    {
      int c, i;
      struct coding_detection_info detect_info;
      _Bool null_byte_found = 0, eight_bit_found = 0;
      _Bool inhibit_nbd = inhibit_flag (coding->spec.undecided.inhibit_nbd,
           globals.f_inhibit_null_byte_detection);
      _Bool inhibit_ied = inhibit_flag (coding->spec.undecided.inhibit_ied,
           globals.f_inhibit_iso_escape_detection);
      _Bool prefer_utf_8 = coding->spec.undecided.prefer_utf_8;

      coding->head_ascii = 0;
      detect_info.checked = detect_info.found = detect_info.rejected = 0;
      for (src = coding->source; src < src_end; src++)
 {
   c = *src;
   if (c & 0x80)
     {
       eight_bit_found = 1;
       if (null_byte_found)
  break;
     }
   else if (c < 0x20)
     {
       if ((c == 0x1B || c == 0x0F || c == 0x0E)
    && ! inhibit_ied
    && ! detect_info.checked)
  {
    if (detect_coding_iso_2022 (coding, &detect_info))
      {

        if (! (detect_info.rejected & (1 << coding_category_iso_7_else)))
   {




     src = src_end;
     coding->head_ascii = src - coding->source;
   }
        detect_info.rejected |= ~((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else));
        break;
      }
  }
       else if (! c && !inhibit_nbd)
  {
    null_byte_found = 1;
    if (eight_bit_found)
      break;
  }
       else if (! globals.f_disable_ascii_optimization
         && ! globals.f_inhibit_eol_conversion)
  {
    if (c == '\r')
      {
        if (src < src_end && src[1] == '\n')
   {
     coding->eol_seen |= 4;
     src++;
     if (! eight_bit_found)
       coding->head_ascii++;
   }
        else
   coding->eol_seen |= 2;
      }
    else if (c == '\n')
      {
        coding->eol_seen |= 1;
      }
  }

       if (! eight_bit_found)
  coding->head_ascii++;
     }
   else if (! eight_bit_found)
     coding->head_ascii++;
 }

      if (null_byte_found || eight_bit_found
   || coding->head_ascii < coding->src_bytes
   || detect_info.found)
 {
   enum coding_category category;
   struct coding_system *this;

   if (coding->head_ascii == coding->src_bytes)

     for (i = 0; i < coding_category_raw_text; i++)
       {
  category = coding_priorities[i];
  this = coding_categories + category;
  if (detect_info.found & (1 << category))
    break;
       }
   else
     {
       if (null_byte_found)
  {
    detect_info.checked |= ~((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
    detect_info.rejected |= ~((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
  }
       else if (prefer_utf_8
         && detect_coding_utf_8 (coding, &detect_info))
  {
    detect_info.checked |= ~((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));
    detect_info.rejected |= ~((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));
  }
       for (i = 0; i < coding_category_raw_text; i++)
  {
    category = coding_priorities[i];
    this = coding_categories + category;


    coding->id = this->id;
    if (this->id < 0)
      {

        detect_info.rejected |= (1 << category);
      }
    else if (category >= coding_category_raw_text)
      continue;
    else if (detect_info.checked & (1 << category))
      {
        if (detect_info.found & (1 << category))
   break;
      }
    else if ((*(this->detector)) (coding, &detect_info)
      && detect_info.found & (1 << category))
      break;
  }
     }

   if (i < coding_category_raw_text)
     {
       if (category == coding_category_utf_8_auto)
  {
    Lisp_Object coding_systems;

    coding_systems = AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), this->id), 0)),
      coding_attr_utf_bom);
    if ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
      {
        if (detect_info.found & (1 << coding_category_utf_8_sig))
   found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->car;
        else
   found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->u.cdr;
      }
    else
      found = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), this->id));
  }
       else if (category == coding_category_utf_16_auto)
  {
    Lisp_Object coding_systems;

    coding_systems = AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), this->id), 0)),
      coding_attr_utf_bom);
    if ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
      {
        if (detect_info.found & (1 << coding_category_utf_16_le))
   found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->car;
        else if (detect_info.found & (1 << coding_category_utf_16_be))
   found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->u.cdr;
      }
    else
      found = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), this->id));
  }
       else
  found = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), this->id));
     }
   else if (null_byte_found)
     found = builtin_lisp_symbol (702);
   else if ((detect_info.rejected & ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else) | (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig) | (1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig) | (1 << coding_category_charset) | (1 << coding_category_sjis) | (1 << coding_category_big5) | (1 << coding_category_ccl) | (1 << coding_category_emacs_mule)))
     == ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else) | (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig) | (1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig) | (1 << coding_category_charset) | (1 << coding_category_sjis) | (1 << coding_category_big5) | (1 << coding_category_ccl) | (1 << coding_category_emacs_mule)))
     found = builtin_lisp_symbol (788);
   else if (detect_info.rejected)
     for (i = 0; i < coding_category_raw_text; i++)
       if (! (detect_info.rejected & (1 << coding_priorities[i])))
  {
    this = coding_categories + coding_priorities[i];
    found = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), this->id));
    break;
  }
 }
    }
  else if (((AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0)), coding_attr_category)) >> INTTYPEBITS)
    == coding_category_utf_8_auto)
    {
      Lisp_Object coding_systems;
      struct coding_detection_info detect_info;

      coding_systems
 = AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0)), coding_attr_utf_bom);
      detect_info.found = detect_info.rejected = 0;
      if (check_ascii (coding) == coding->src_bytes)
 {
   if ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->u.cdr;
 }
      else
 {
   if ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
       && detect_coding_utf_8 (coding, &detect_info))
     {
       if (detect_info.found & (1 << coding_category_utf_8_sig))
  found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->car;
       else
  found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->u.cdr;
     }
 }
    }
  else if (((AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0)), coding_attr_category)) >> INTTYPEBITS)
    == coding_category_utf_16_auto)
    {
      Lisp_Object coding_systems;
      struct coding_detection_info detect_info;

      coding_systems
 = AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0)), coding_attr_utf_bom);
      detect_info.found = detect_info.rejected = 0;
      coding->head_ascii = 0;
      if ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
   && detect_coding_utf_16 (coding, &detect_info))
 {
   if (detect_info.found & (1 << coding_category_utf_16_le))
     found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->car;
   else if (detect_info.found & (1 << coding_category_utf_16_be))
     found = (((void) (0 && ((((enum Lisp_Type) ((coding_systems) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((coding_systems) - (Lisp_Cons))))->u.cdr;
 }
    }

  if (! ((found) == (builtin_lisp_symbol (0))))
    {
      int specified_eol = (VECTORP (eol_type) ? 0
      : ((eol_type) == (builtin_lisp_symbol (351))) ? 4
      : ((eol_type) == (builtin_lisp_symbol (635))) ? 2
      : 1);

      setup_coding_system (found, coding);
      if (specified_eol != 0)
 adjust_coding_eol_type (coding, specified_eol);
    }

  coding->mode = saved_mode;
}


static void
decode_eol (struct coding_system *coding)
{
  Lisp_Object eol_type;
  unsigned char *p, *pbeg, *pend;

  eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));
  if (((eol_type) == (builtin_lisp_symbol (973))) || globals.f_inhibit_eol_conversion)
    return;

  if (((coding->dst_object) == (builtin_lisp_symbol (0))))
    pbeg = coding->destination;
  else
    pbeg = (((coding->dst_pos_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (coding->dst_pos_byte) + (current_buffer->text->beg) - ((1)));
  pend = pbeg + coding->produced;

  if (VECTORP (eol_type))
    {
      int eol_seen = 0;

      for (p = pbeg; p < pend; p++)
 {
   if (*p == '\n')
     eol_seen |= 1;
   else if (*p == '\r')
     {
       if (p + 1 < pend && *(p + 1) == '\n')
  {
    eol_seen |= 4;
    p++;
  }
       else
  eol_seen |= 2;
     }
 }

      if ((eol_seen & 4) != 0
   && (eol_seen & 2) != 0
   && (eol_seen & 1) == 0)
 eol_seen = 4;
      else if (eol_seen != 0
   && eol_seen != 1
   && eol_seen != 4
   && eol_seen != 2)
 eol_seen = 1;
      if (eol_seen != 0)
 eol_type = adjust_coding_eol_type (coding, eol_seen);
    }

  if (((eol_type) == (builtin_lisp_symbol (635))))
    {
      for (p = pbeg; p < pend; p++)
 if (*p == '\r')
   *p = '\n';
    }
  else if (((eol_type) == (builtin_lisp_symbol (351))))
    {
      ptrdiff_t n = 0;

      if (((coding->dst_object) == (builtin_lisp_symbol (0))))
 {


   for (p = pend - 2; p >= pbeg; p--)
     if (*p == '\r')
       {
  memmove (p, p + 1, pend-- - p - 1);
  n++;
       }
 }
      else
 {
   ptrdiff_t pos = coding->dst_pos;
   ptrdiff_t pos_byte = coding->dst_pos_byte;
   ptrdiff_t pos_end = pos_byte + coding->produced - 1;

   while (pos_byte < pos_end)
     {
       p = (((pos_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (pos_byte) + (current_buffer->text->beg) - ((1)));
       if (*p == '\r' && p[1] == '\n')
  {
    del_range_2 (pos, pos_byte, pos + 1, pos_byte + 1, 0);
    n++;
    pos_end--;
  }
       pos++;
       if (coding->dst_multibyte)
  pos_byte += (!((*p) & 0x80) ? 1 : !((*p) & 0x20) ? 2 : !((*p) & 0x10) ? 3 : !((*p) & 0x08) ? 4 : 5);
       else
  pos_byte++;
     }
 }
      coding->produced -= n;
      coding->produced_char -= n;
    }
}





enum { MAX_LOOKUP_MAX = ((2147483647) < (MAX_ALLOCA / sizeof (int)) ? (2147483647) : (MAX_ALLOCA / sizeof (int))) };





static Lisp_Object
get_translation_table (Lisp_Object attrs, _Bool encodep, int *max_lookup)
{
  Lisp_Object standard, translation_table;
  Lisp_Object val;

  if (((globals.f_Venable_character_translation) == (builtin_lisp_symbol (0))))
    {
      if (max_lookup)
 *max_lookup = 0;
      return builtin_lisp_symbol (0);
    }
  if (encodep)
    translation_table = AREF (attrs, coding_attr_encode_tbl),
      standard = globals.f_Vstandard_translation_table_for_encode;
  else
    translation_table = AREF (attrs, coding_attr_decode_tbl),
      standard = globals.f_Vstandard_translation_table_for_decode;
  if (((translation_table) == (builtin_lisp_symbol (0))))
    translation_table = standard;
  else
    {
      if ((((enum Lisp_Type) ((translation_table) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
 translation_table = Fget (translation_table, builtin_lisp_symbol (934));
      else if ((((enum Lisp_Type) ((translation_table) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 {
   translation_table = Fcopy_sequence (translation_table);
   for (val = translation_table; (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr)
     if ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
       XSETCAR (val, Fget ((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car, builtin_lisp_symbol (934)));
 }
      if (CHAR_TABLE_P (standard))
 {
   if ((((enum Lisp_Type) ((translation_table) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     translation_table = nconc2 (translation_table, list1 (standard));
   else
     translation_table = list2 (translation_table, standard);
 }
    }

  if (max_lookup)
    {
      *max_lookup = 1;
      if (CHAR_TABLE_P (translation_table)
   && CHAR_TABLE_EXTRA_SLOTS (XCHAR_TABLE (translation_table)) > 1)
 {
   val = XCHAR_TABLE (translation_table)->extras[1];
   if (NATNUMP (val) && *max_lookup < ((val) >> INTTYPEBITS))
     *max_lookup = ((((val) >> INTTYPEBITS)) < (MAX_LOOKUP_MAX) ? (((val) >> INTTYPEBITS)) : (MAX_LOOKUP_MAX));
 }
      else if ((((enum Lisp_Type) ((translation_table) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 {
   Lisp_Object tail;

   for (tail = translation_table; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
     if (CHAR_TABLE_P ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car)
  && CHAR_TABLE_EXTRA_SLOTS (XCHAR_TABLE ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car)) > 1)
       {
  Lisp_Object tailval = XCHAR_TABLE ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car)->extras[1];
  if (NATNUMP (tailval) && *max_lookup < ((tailval) >> INTTYPEBITS))
    *max_lookup = ((((tailval) >> INTTYPEBITS)) < (MAX_LOOKUP_MAX) ? (((tailval) >> INTTYPEBITS)) : (MAX_LOOKUP_MAX));
       }
 }
    }
  return translation_table;
}
# 6966 "coding.c"
static Lisp_Object
get_translation (Lisp_Object trans, int *buf, int *buf_end)
{

  if (((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
    return trans;
  for (; (((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); trans = (((void) (0 && ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((trans) - (Lisp_Cons))))->u.cdr)
    {
      Lisp_Object val = (((void) (0 && ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((trans) - (Lisp_Cons))))->car;
      Lisp_Object from = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car;
      ptrdiff_t len = ASIZE (from);
      ptrdiff_t i;

      for (i = 0; i < len; i++)
 {
   if (buf + i == buf_end)
     return builtin_lisp_symbol (901);
   if (((AREF (from, i)) >> INTTYPEBITS) != buf[i])
     break;
 }
      if (i == len)
 return val;
    }
  return builtin_lisp_symbol (0);
}


static int
produce_chars (struct coding_system *coding, Lisp_Object translation_table,
        _Bool last_block)
{
  unsigned char *dst = coding->destination + coding->produced;
  unsigned char *dst_end = coding->destination + coding->dst_bytes;
  ptrdiff_t produced;
  ptrdiff_t produced_chars = 0;
  int carryover = 0;

  if (! coding->chars_at_source)
    {

      int *buf = coding->charbuf;
      int *buf_end = buf + coding->charbuf_used;

      if (((coding->src_object) == (coding->dst_object))
   && ! ((coding->dst_object) == (builtin_lisp_symbol (0))))
 {
   ((void) (0 && (growable_destination (coding))));
   coding_set_source (coding);
   dst_end = ((unsigned char *) coding->source) + coding->consumed;
 }

      while (buf < buf_end)
 {
   int c = *buf;
   ptrdiff_t i;

   if (c >= 0)
     {
       ptrdiff_t from_nchars = 1, to_nchars = 1;
       Lisp_Object trans = builtin_lisp_symbol (0);

       do { trans = builtin_lisp_symbol (0); if (CHAR_TABLE_P (translation_table)) { trans = CHAR_TABLE_REF (translation_table, c); if ((NATNUMP (trans) && ((trans) >> INTTYPEBITS) <= 0x3FFFFF)) c = ((trans) >> INTTYPEBITS), trans = builtin_lisp_symbol (0); } else if ((((enum Lisp_Type) ((translation_table) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)) { Lisp_Object tail; for (tail = translation_table; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) if (CHAR_TABLE_P ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car)) { trans = CHAR_TABLE_REF ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, c); if ((NATNUMP (trans) && ((trans) >> INTTYPEBITS) <= 0x3FFFFF)) c = ((trans) >> INTTYPEBITS), trans = builtin_lisp_symbol (0); else if (! ((trans) == (builtin_lisp_symbol (0)))) break; } } } while (0);
       if (! ((trans) == (builtin_lisp_symbol (0))))
  {
    trans = get_translation (trans, buf, buf_end);
    if (((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
      c = ((trans) >> INTTYPEBITS);
    else if ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
      {
        from_nchars = ASIZE ((((void) (0 && ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((trans) - (Lisp_Cons))))->car);
        trans = (((void) (0 && ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((trans) - (Lisp_Cons))))->u.cdr;
        if (((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
   c = ((trans) >> INTTYPEBITS);
        else
   {
     to_nchars = ASIZE (trans);
     c = ((AREF (trans, 0)) >> INTTYPEBITS);
   }
      }
    else if (((trans) == (builtin_lisp_symbol (901))) && ! last_block)
      break;
  }

       if ((dst_end - dst) / 5 < to_nchars)
  {
    ((void) (0 && (growable_destination (coding))));
    ptrdiff_t dst_size;
    if ((sizeof *(&dst_size) == sizeof (signed char) ? (sizeof ((to_nchars) * (5)) < sizeof (signed char) ? ((((((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (1)) << (sizeof ((0 * ((signed char) (5)) + ((signed char) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (0)))) == 0 && ((((signed char) (to_nchars)) < 0 && 0 < ((signed char) (5))) || (((signed char) (5)) < 0 && 0 < ((signed char) (to_nchars))))) || (((signed char) (5)) < 0 ? (((signed char) (to_nchars)) < 0 ? ((signed char) (to_nchars)) < ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (1)) << (sizeof ((0 * ((signed char) (5)) + ((signed char) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)))) / ((signed char) (5)) : ((signed char) (5)) == -1 ? 0 : ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (1)) << (sizeof ((0 * ((signed char) (5)) + ((signed char) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (0)))) / ((signed char) (5)) < ((signed char) (to_nchars))) : ((signed char) (5)) == 0 ? 0 : (((signed char) (to_nchars)) < 0 ? ((signed char) (to_nchars)) < ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (1)) << (sizeof ((0 * ((signed char) (5)) + ((signed char) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (0)))) / ((signed char) (5)) : ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) + (1)) << (sizeof ((0 * ((signed char) (5)) + ((signed char) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (5)) + ((signed char) (to_nchars))) - (1)))) / ((signed char) (5)) < ((signed char) (to_nchars))))) || (((0 * (((signed char) (to_nchars)) * ((signed char) (5))) - (1)) < 0) && (((signed char) (to_nchars)) * ((signed char) (5))) < ((-127 -1))) || (127) < (((signed char) (to_nchars)) * ((signed char) (5)))) ? (*(&dst_size) = (((unsigned char) ((signed char) (to_nchars)) * (unsigned char) ((signed char) (5))) <= (127) ? (signed char) ((unsigned char) ((signed char) (to_nchars)) * (unsigned char) ((signed char) (5))) : ((signed char) (((unsigned char) ((signed char) (to_nchars)) * (unsigned char) ((signed char) (5))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&dst_size) = (((unsigned char) ((signed char) (to_nchars)) * (unsigned char) ((signed char) (5))) <= (127) ? (signed char) ((unsigned char) ((signed char) (to_nchars)) * (unsigned char) ((signed char) (5))) : ((signed char) (((unsigned char) ((signed char) (to_nchars)) * (unsigned char) ((signed char) (5))) - ((-127 -1))) + ((-127 -1)))), 0)) : ((((((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) == 0 && (((to_nchars) < 0 && 0 < (5)) || ((5) < 0 && 0 < (to_nchars)))) || ((5) < 0 ? ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) : (5) == -1 ? 0 : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) < (to_nchars)) : (5) == 0 ? 0 : ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) < (to_nchars)))) || (((0 * ((to_nchars) * (5)) - (1)) < 0) && ((to_nchars) * (5)) < ((-127 -1))) || (127) < ((to_nchars) * (5))) ? (*(&dst_size) = (((unsigned char) (to_nchars) * (unsigned char) (5)) <= (127) ? (signed char) ((unsigned char) (to_nchars) * (unsigned char) (5)) : ((signed char) (((unsigned char) (to_nchars) * (unsigned char) (5)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&dst_size) = (((unsigned char) (to_nchars) * (unsigned char) (5)) <= (127) ? (signed char) ((unsigned char) (to_nchars) * (unsigned char) (5)) : ((signed char) (((unsigned char) (to_nchars) * (unsigned char) (5)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&dst_size) == sizeof (short int) ? (sizeof ((to_nchars) * (5)) < sizeof (short int) ? ((((((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (1)) << (sizeof ((0 * ((short int) (5)) + ((short int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (0)))) == 0 && ((((short int) (to_nchars)) < 0 && 0 < ((short int) (5))) || (((short int) (5)) < 0 && 0 < ((short int) (to_nchars))))) || (((short int) (5)) < 0 ? (((short int) (to_nchars)) < 0 ? ((short int) (to_nchars)) < ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (1)) << (sizeof ((0 * ((short int) (5)) + ((short int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)))) / ((short int) (5)) : ((short int) (5)) == -1 ? 0 : ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (1)) << (sizeof ((0 * ((short int) (5)) + ((short int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (0)))) / ((short int) (5)) < ((short int) (to_nchars))) : ((short int) (5)) == 0 ? 0 : (((short int) (to_nchars)) < 0 ? ((short int) (to_nchars)) < ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (1)) << (sizeof ((0 * ((short int) (5)) + ((short int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (0)))) / ((short int) (5)) : ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) + (1)) << (sizeof ((0 * ((short int) (5)) + ((short int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (5)) + ((short int) (to_nchars))) - (1)))) / ((short int) (5)) < ((short int) (to_nchars))))) || (((0 * (((short int) (to_nchars)) * ((short int) (5))) - (1)) < 0) && (((short int) (to_nchars)) * ((short int) (5))) < ((-32767 -1))) || (32767) < (((short int) (to_nchars)) * ((short int) (5)))) ? (*(&dst_size) = (((unsigned short int) ((short int) (to_nchars)) * (unsigned short int) ((short int) (5))) <= (32767) ? (short int) ((unsigned short int) ((short int) (to_nchars)) * (unsigned short int) ((short int) (5))) : ((short int) (((unsigned short int) ((short int) (to_nchars)) * (unsigned short int) ((short int) (5))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&dst_size) = (((unsigned short int) ((short int) (to_nchars)) * (unsigned short int) ((short int) (5))) <= (32767) ? (short int) ((unsigned short int) ((short int) (to_nchars)) * (unsigned short int) ((short int) (5))) : ((short int) (((unsigned short int) ((short int) (to_nchars)) * (unsigned short int) ((short int) (5))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : ((((((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) == 0 && (((to_nchars) < 0 && 0 < (5)) || ((5) < 0 && 0 < (to_nchars)))) || ((5) < 0 ? ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) : (5) == -1 ? 0 : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) < (to_nchars)) : (5) == 0 ? 0 : ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) < (to_nchars)))) || (((0 * ((to_nchars) * (5)) - (1)) < 0) && ((to_nchars) * (5)) < ((-32767 -1))) || (32767) < ((to_nchars) * (5))) ? (*(&dst_size) = (((unsigned short int) (to_nchars) * (unsigned short int) (5)) <= (32767) ? (short int) ((unsigned short int) (to_nchars) * (unsigned short int) (5)) : ((short int) (((unsigned short int) (to_nchars) * (unsigned short int) (5)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&dst_size) = (((unsigned short int) (to_nchars) * (unsigned short int) (5)) <= (32767) ? (short int) ((unsigned short int) (to_nchars) * (unsigned short int) (5)) : ((short int) (((unsigned short int) (to_nchars) * (unsigned short int) (5)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&dst_size) == sizeof (int) ? (sizeof ((to_nchars) * (5)) < sizeof (int) ? ((((((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (1)) << (sizeof ((0 * ((int) (5)) + ((int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (0)))) == 0 && ((((int) (to_nchars)) < 0 && 0 < ((int) (5))) || (((int) (5)) < 0 && 0 < ((int) (to_nchars))))) || (((int) (5)) < 0 ? (((int) (to_nchars)) < 0 ? ((int) (to_nchars)) < ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (1)) << (sizeof ((0 * ((int) (5)) + ((int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)))) / ((int) (5)) : ((int) (5)) == -1 ? 0 : ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (1)) << (sizeof ((0 * ((int) (5)) + ((int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (0)))) / ((int) (5)) < ((int) (to_nchars))) : ((int) (5)) == 0 ? 0 : (((int) (to_nchars)) < 0 ? ((int) (to_nchars)) < ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (1)) << (sizeof ((0 * ((int) (5)) + ((int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (0)))) / ((int) (5)) : ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((int) (5)) + ((int) (to_nchars))) + (1)) << (sizeof ((0 * ((int) (5)) + ((int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (5)) + ((int) (to_nchars))) - (1)))) / ((int) (5)) < ((int) (to_nchars))))) || (((0 * (((int) (to_nchars)) * ((int) (5))) - (1)) < 0) && (((int) (to_nchars)) * ((int) (5))) < ((-2147483647 -1))) || (2147483647) < (((int) (to_nchars)) * ((int) (5)))) ? (*(&dst_size) = (((unsigned int) ((int) (to_nchars)) * (unsigned int) ((int) (5))) <= (2147483647) ? (int) ((unsigned int) ((int) (to_nchars)) * (unsigned int) ((int) (5))) : ((int) (((unsigned int) ((int) (to_nchars)) * (unsigned int) ((int) (5))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&dst_size) = (((unsigned int) ((int) (to_nchars)) * (unsigned int) ((int) (5))) <= (2147483647) ? (int) ((unsigned int) ((int) (to_nchars)) * (unsigned int) ((int) (5))) : ((int) (((unsigned int) ((int) (to_nchars)) * (unsigned int) ((int) (5))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : ((((((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) == 0 && (((to_nchars) < 0 && 0 < (5)) || ((5) < 0 && 0 < (to_nchars)))) || ((5) < 0 ? ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) : (5) == -1 ? 0 : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) < (to_nchars)) : (5) == 0 ? 0 : ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) < (to_nchars)))) || (((0 * ((to_nchars) * (5)) - (1)) < 0) && ((to_nchars) * (5)) < ((-2147483647 -1))) || (2147483647) < ((to_nchars) * (5))) ? (*(&dst_size) = (((unsigned int) (to_nchars) * (unsigned int) (5)) <= (2147483647) ? (int) ((unsigned int) (to_nchars) * (unsigned int) (5)) : ((int) (((unsigned int) (to_nchars) * (unsigned int) (5)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&dst_size) = (((unsigned int) (to_nchars) * (unsigned int) (5)) <= (2147483647) ? (int) ((unsigned int) (to_nchars) * (unsigned int) (5)) : ((int) (((unsigned int) (to_nchars) * (unsigned int) (5)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&dst_size) == sizeof (long int) ? (sizeof ((to_nchars) * (5)) < sizeof (long int) ? ((((((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long int) (5)) + ((long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (0)))) == 0 && ((((long int) (to_nchars)) < 0 && 0 < ((long int) (5))) || (((long int) (5)) < 0 && 0 < ((long int) (to_nchars))))) || (((long int) (5)) < 0 ? (((long int) (to_nchars)) < 0 ? ((long int) (to_nchars)) < ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long int) (5)) + ((long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)))) / ((long int) (5)) : ((long int) (5)) == -1 ? 0 : ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long int) (5)) + ((long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (0)))) / ((long int) (5)) < ((long int) (to_nchars))) : ((long int) (5)) == 0 ? 0 : (((long int) (to_nchars)) < 0 ? ((long int) (to_nchars)) < ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long int) (5)) + ((long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (0)))) / ((long int) (5)) : ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long int) (5)) + ((long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (5)) + ((long int) (to_nchars))) - (1)))) / ((long int) (5)) < ((long int) (to_nchars))))) || (((0 * (((long int) (to_nchars)) * ((long int) (5))) - (1)) < 0) && (((long int) (to_nchars)) * ((long int) (5))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (to_nchars)) * ((long int) (5)))) ? (*(&dst_size) = (((unsigned long int) ((long int) (to_nchars)) * (unsigned long int) ((long int) (5))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (to_nchars)) * (unsigned long int) ((long int) (5))) : ((long int) (((unsigned long int) ((long int) (to_nchars)) * (unsigned long int) ((long int) (5))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&dst_size) = (((unsigned long int) ((long int) (to_nchars)) * (unsigned long int) ((long int) (5))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (to_nchars)) * (unsigned long int) ((long int) (5))) : ((long int) (((unsigned long int) ((long int) (to_nchars)) * (unsigned long int) ((long int) (5))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : ((((((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) == 0 && (((to_nchars) < 0 && 0 < (5)) || ((5) < 0 && 0 < (to_nchars)))) || ((5) < 0 ? ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) : (5) == -1 ? 0 : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) < (to_nchars)) : (5) == 0 ? 0 : ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) < (to_nchars)))) || (((0 * ((to_nchars) * (5)) - (1)) < 0) && ((to_nchars) * (5)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((to_nchars) * (5))) ? (*(&dst_size) = (((unsigned long int) (to_nchars) * (unsigned long int) (5)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (to_nchars) * (unsigned long int) (5)) : ((long int) (((unsigned long int) (to_nchars) * (unsigned long int) (5)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&dst_size) = (((unsigned long int) (to_nchars) * (unsigned long int) (5)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (to_nchars) * (unsigned long int) (5)) : ((long int) (((unsigned long int) (to_nchars) * (unsigned long int) (5)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((to_nchars) * (5)) < sizeof (long long int) ? ((((((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long long int) (5)) + ((long long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (0)))) == 0 && ((((long long int) (to_nchars)) < 0 && 0 < ((long long int) (5))) || (((long long int) (5)) < 0 && 0 < ((long long int) (to_nchars))))) || (((long long int) (5)) < 0 ? (((long long int) (to_nchars)) < 0 ? ((long long int) (to_nchars)) < ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long long int) (5)) + ((long long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)))) / ((long long int) (5)) : ((long long int) (5)) == -1 ? 0 : ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long long int) (5)) + ((long long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (0)))) / ((long long int) (5)) < ((long long int) (to_nchars))) : ((long long int) (5)) == 0 ? 0 : (((long long int) (to_nchars)) < 0 ? ((long long int) (to_nchars)) < ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (0)) == -1) - ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long long int) (5)) + ((long long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (0)))) / ((long long int) (5)) : ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) + (1)) << (sizeof ((0 * ((long long int) (5)) + ((long long int) (to_nchars))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (5)) + ((long long int) (to_nchars))) - (1)))) / ((long long int) (5)) < ((long long int) (to_nchars))))) || (((0 * (((long long int) (to_nchars)) * ((long long int) (5))) - (1)) < 0) && (((long long int) (to_nchars)) * ((long long int) (5))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (to_nchars)) * ((long long int) (5)))) ? (*(&dst_size) = (((unsigned long long int) ((long long int) (to_nchars)) * (unsigned long long int) ((long long int) (5))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (to_nchars)) * (unsigned long long int) ((long long int) (5))) : ((long long int) (((unsigned long long int) ((long long int) (to_nchars)) * (unsigned long long int) ((long long int) (5))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&dst_size) = (((unsigned long long int) ((long long int) (to_nchars)) * (unsigned long long int) ((long long int) (5))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (to_nchars)) * (unsigned long long int) ((long long int) (5))) : ((long long int) (((unsigned long long int) ((long long int) (to_nchars)) * (unsigned long long int) ((long long int) (5))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : ((((((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) == 0 && (((to_nchars) < 0 && 0 < (5)) || ((5) < 0 && 0 < (to_nchars)))) || ((5) < 0 ? ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) : (5) == -1 ? 0 : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) < (to_nchars)) : (5) == 0 ? 0 : ((to_nchars) < 0 ? (to_nchars) < ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? - (~ (0 * (0 * (5) + (to_nchars)) + (0)) == -1) - ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) + (0)))) / (5) : ((((0 * (0 * (5) + (to_nchars)) - (1)) < 0) ? ((((0 * (0 * (5) + (to_nchars)) + (1)) << (sizeof ((0 * (5) + (to_nchars)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (5) + (to_nchars)) - (1)))) / (5) < (to_nchars)))) || (((0 * ((to_nchars) * (5)) - (1)) < 0) && ((to_nchars) * (5)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((to_nchars) * (5))) ? (*(&dst_size) = (((unsigned long long int) (to_nchars) * (unsigned long long int) (5)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (to_nchars) * (unsigned long long int) (5)) : ((long long int) (((unsigned long long int) (to_nchars) * (unsigned long long int) (5)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&dst_size) = (((unsigned long long int) (to_nchars) * (unsigned long long int) (5)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (to_nchars) * (unsigned long long int) (5)) : ((long long int) (((unsigned long long int) (to_nchars) * (unsigned long long int) (5)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)))))

        || (sizeof *(&dst_size) == sizeof (signed char) ? (sizeof ((buf_end - buf) + (dst_size)) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (1)) << (sizeof ((0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (0)))) < 0 ? (((signed char) (dst_size)) < 0 ? ((signed char) (buf_end - buf)) < ((((0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (1)) << (sizeof ((0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (0)))) - ((signed char) (dst_size)) : ((((0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + (1)) << (sizeof ((0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (dst_size)) + ((signed char) (buf_end - buf))) - (1)))) - ((signed char) (dst_size)) < ((signed char) (buf_end - buf))) : ((signed char) (buf_end - buf)) < 0 ? ((signed char) (dst_size)) <= ((signed char) (buf_end - buf)) + ((signed char) (dst_size)) : ((signed char) (dst_size)) < 0 ? ((signed char) (buf_end - buf)) <= ((signed char) (buf_end - buf)) + ((signed char) (dst_size)) : ((signed char) (buf_end - buf)) + ((signed char) (dst_size)) < ((signed char) (dst_size))) || (((0 * (((signed char) (buf_end - buf)) + ((signed char) (dst_size))) - (1)) < 0) && (((signed char) (buf_end - buf)) + ((signed char) (dst_size))) < ((-127 -1))) || (127) < (((signed char) (buf_end - buf)) + ((signed char) (dst_size)))) ? (*(&dst_size) = (((unsigned char) ((signed char) (buf_end - buf)) + (unsigned char) ((signed char) (dst_size))) <= (127) ? (signed char) ((unsigned char) ((signed char) (buf_end - buf)) + (unsigned char) ((signed char) (dst_size))) : ((signed char) (((unsigned char) ((signed char) (buf_end - buf)) + (unsigned char) ((signed char) (dst_size))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&dst_size) = (((unsigned char) ((signed char) (buf_end - buf)) + (unsigned char) ((signed char) (dst_size))) <= (127) ? (signed char) ((unsigned char) ((signed char) (buf_end - buf)) + (unsigned char) ((signed char) (dst_size))) : ((signed char) (((unsigned char) ((signed char) (buf_end - buf)) + (unsigned char) ((signed char) (dst_size))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) < 0 ? ((dst_size) < 0 ? (buf_end - buf) < ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) - (dst_size) : ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) - (1)))) - (dst_size) < (buf_end - buf)) : (buf_end - buf) < 0 ? (dst_size) <= (buf_end - buf) + (dst_size) : (dst_size) < 0 ? (buf_end - buf) <= (buf_end - buf) + (dst_size) : (buf_end - buf) + (dst_size) < (dst_size)) || (((0 * ((buf_end - buf) + (dst_size)) - (1)) < 0) && ((buf_end - buf) + (dst_size)) < ((-127 -1))) || (127) < ((buf_end - buf) + (dst_size))) ? (*(&dst_size) = (((unsigned char) (buf_end - buf) + (unsigned char) (dst_size)) <= (127) ? (signed char) ((unsigned char) (buf_end - buf) + (unsigned char) (dst_size)) : ((signed char) (((unsigned char) (buf_end - buf) + (unsigned char) (dst_size)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&dst_size) = (((unsigned char) (buf_end - buf) + (unsigned char) (dst_size)) <= (127) ? (signed char) ((unsigned char) (buf_end - buf) + (unsigned char) (dst_size)) : ((signed char) (((unsigned char) (buf_end - buf) + (unsigned char) (dst_size)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&dst_size) == sizeof (short int) ? (sizeof ((buf_end - buf) + (dst_size)) < sizeof (short int) ? (((((((0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (0)))) < 0 ? (((short int) (dst_size)) < 0 ? ((short int) (buf_end - buf)) < ((((0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (0)))) - ((short int) (dst_size)) : ((((0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) - (1)) < 0) ? ((((0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (dst_size)) + ((short int) (buf_end - buf))) - (1)))) - ((short int) (dst_size)) < ((short int) (buf_end - buf))) : ((short int) (buf_end - buf)) < 0 ? ((short int) (dst_size)) <= ((short int) (buf_end - buf)) + ((short int) (dst_size)) : ((short int) (dst_size)) < 0 ? ((short int) (buf_end - buf)) <= ((short int) (buf_end - buf)) + ((short int) (dst_size)) : ((short int) (buf_end - buf)) + ((short int) (dst_size)) < ((short int) (dst_size))) || (((0 * (((short int) (buf_end - buf)) + ((short int) (dst_size))) - (1)) < 0) && (((short int) (buf_end - buf)) + ((short int) (dst_size))) < ((-32767 -1))) || (32767) < (((short int) (buf_end - buf)) + ((short int) (dst_size)))) ? (*(&dst_size) = (((unsigned short int) ((short int) (buf_end - buf)) + (unsigned short int) ((short int) (dst_size))) <= (32767) ? (short int) ((unsigned short int) ((short int) (buf_end - buf)) + (unsigned short int) ((short int) (dst_size))) : ((short int) (((unsigned short int) ((short int) (buf_end - buf)) + (unsigned short int) ((short int) (dst_size))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&dst_size) = (((unsigned short int) ((short int) (buf_end - buf)) + (unsigned short int) ((short int) (dst_size))) <= (32767) ? (short int) ((unsigned short int) ((short int) (buf_end - buf)) + (unsigned short int) ((short int) (dst_size))) : ((short int) (((unsigned short int) ((short int) (buf_end - buf)) + (unsigned short int) ((short int) (dst_size))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) < 0 ? ((dst_size) < 0 ? (buf_end - buf) < ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) - (dst_size) : ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) - (1)))) - (dst_size) < (buf_end - buf)) : (buf_end - buf) < 0 ? (dst_size) <= (buf_end - buf) + (dst_size) : (dst_size) < 0 ? (buf_end - buf) <= (buf_end - buf) + (dst_size) : (buf_end - buf) + (dst_size) < (dst_size)) || (((0 * ((buf_end - buf) + (dst_size)) - (1)) < 0) && ((buf_end - buf) + (dst_size)) < ((-32767 -1))) || (32767) < ((buf_end - buf) + (dst_size))) ? (*(&dst_size) = (((unsigned short int) (buf_end - buf) + (unsigned short int) (dst_size)) <= (32767) ? (short int) ((unsigned short int) (buf_end - buf) + (unsigned short int) (dst_size)) : ((short int) (((unsigned short int) (buf_end - buf) + (unsigned short int) (dst_size)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&dst_size) = (((unsigned short int) (buf_end - buf) + (unsigned short int) (dst_size)) <= (32767) ? (short int) ((unsigned short int) (buf_end - buf) + (unsigned short int) (dst_size)) : ((short int) (((unsigned short int) (buf_end - buf) + (unsigned short int) (dst_size)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&dst_size) == sizeof (int) ? (sizeof ((buf_end - buf) + (dst_size)) < sizeof (int) ? (((((((0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (0)))) < 0 ? (((int) (dst_size)) < 0 ? ((int) (buf_end - buf)) < ((((0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (0)))) - ((int) (dst_size)) : ((((0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) - (1)) < 0) ? ((((0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((int) (dst_size)) + ((int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (dst_size)) + ((int) (buf_end - buf))) - (1)))) - ((int) (dst_size)) < ((int) (buf_end - buf))) : ((int) (buf_end - buf)) < 0 ? ((int) (dst_size)) <= ((int) (buf_end - buf)) + ((int) (dst_size)) : ((int) (dst_size)) < 0 ? ((int) (buf_end - buf)) <= ((int) (buf_end - buf)) + ((int) (dst_size)) : ((int) (buf_end - buf)) + ((int) (dst_size)) < ((int) (dst_size))) || (((0 * (((int) (buf_end - buf)) + ((int) (dst_size))) - (1)) < 0) && (((int) (buf_end - buf)) + ((int) (dst_size))) < ((-2147483647 -1))) || (2147483647) < (((int) (buf_end - buf)) + ((int) (dst_size)))) ? (*(&dst_size) = (((unsigned int) ((int) (buf_end - buf)) + (unsigned int) ((int) (dst_size))) <= (2147483647) ? (int) ((unsigned int) ((int) (buf_end - buf)) + (unsigned int) ((int) (dst_size))) : ((int) (((unsigned int) ((int) (buf_end - buf)) + (unsigned int) ((int) (dst_size))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&dst_size) = (((unsigned int) ((int) (buf_end - buf)) + (unsigned int) ((int) (dst_size))) <= (2147483647) ? (int) ((unsigned int) ((int) (buf_end - buf)) + (unsigned int) ((int) (dst_size))) : ((int) (((unsigned int) ((int) (buf_end - buf)) + (unsigned int) ((int) (dst_size))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) < 0 ? ((dst_size) < 0 ? (buf_end - buf) < ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) - (dst_size) : ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) - (1)))) - (dst_size) < (buf_end - buf)) : (buf_end - buf) < 0 ? (dst_size) <= (buf_end - buf) + (dst_size) : (dst_size) < 0 ? (buf_end - buf) <= (buf_end - buf) + (dst_size) : (buf_end - buf) + (dst_size) < (dst_size)) || (((0 * ((buf_end - buf) + (dst_size)) - (1)) < 0) && ((buf_end - buf) + (dst_size)) < ((-2147483647 -1))) || (2147483647) < ((buf_end - buf) + (dst_size))) ? (*(&dst_size) = (((unsigned int) (buf_end - buf) + (unsigned int) (dst_size)) <= (2147483647) ? (int) ((unsigned int) (buf_end - buf) + (unsigned int) (dst_size)) : ((int) (((unsigned int) (buf_end - buf) + (unsigned int) (dst_size)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&dst_size) = (((unsigned int) (buf_end - buf) + (unsigned int) (dst_size)) <= (2147483647) ? (int) ((unsigned int) (buf_end - buf) + (unsigned int) (dst_size)) : ((int) (((unsigned int) (buf_end - buf) + (unsigned int) (dst_size)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&dst_size) == sizeof (long int) ? (sizeof ((buf_end - buf) + (dst_size)) < sizeof (long int) ? (((((((0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (0)))) < 0 ? (((long int) (dst_size)) < 0 ? ((long int) (buf_end - buf)) < ((((0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (0)))) - ((long int) (dst_size)) : ((((0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) - (1)) < 0) ? ((((0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (dst_size)) + ((long int) (buf_end - buf))) - (1)))) - ((long int) (dst_size)) < ((long int) (buf_end - buf))) : ((long int) (buf_end - buf)) < 0 ? ((long int) (dst_size)) <= ((long int) (buf_end - buf)) + ((long int) (dst_size)) : ((long int) (dst_size)) < 0 ? ((long int) (buf_end - buf)) <= ((long int) (buf_end - buf)) + ((long int) (dst_size)) : ((long int) (buf_end - buf)) + ((long int) (dst_size)) < ((long int) (dst_size))) || (((0 * (((long int) (buf_end - buf)) + ((long int) (dst_size))) - (1)) < 0) && (((long int) (buf_end - buf)) + ((long int) (dst_size))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (buf_end - buf)) + ((long int) (dst_size)))) ? (*(&dst_size) = (((unsigned long int) ((long int) (buf_end - buf)) + (unsigned long int) ((long int) (dst_size))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (buf_end - buf)) + (unsigned long int) ((long int) (dst_size))) : ((long int) (((unsigned long int) ((long int) (buf_end - buf)) + (unsigned long int) ((long int) (dst_size))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&dst_size) = (((unsigned long int) ((long int) (buf_end - buf)) + (unsigned long int) ((long int) (dst_size))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (buf_end - buf)) + (unsigned long int) ((long int) (dst_size))) : ((long int) (((unsigned long int) ((long int) (buf_end - buf)) + (unsigned long int) ((long int) (dst_size))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) < 0 ? ((dst_size) < 0 ? (buf_end - buf) < ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) - (dst_size) : ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) - (1)))) - (dst_size) < (buf_end - buf)) : (buf_end - buf) < 0 ? (dst_size) <= (buf_end - buf) + (dst_size) : (dst_size) < 0 ? (buf_end - buf) <= (buf_end - buf) + (dst_size) : (buf_end - buf) + (dst_size) < (dst_size)) || (((0 * ((buf_end - buf) + (dst_size)) - (1)) < 0) && ((buf_end - buf) + (dst_size)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((buf_end - buf) + (dst_size))) ? (*(&dst_size) = (((unsigned long int) (buf_end - buf) + (unsigned long int) (dst_size)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (buf_end - buf) + (unsigned long int) (dst_size)) : ((long int) (((unsigned long int) (buf_end - buf) + (unsigned long int) (dst_size)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&dst_size) = (((unsigned long int) (buf_end - buf) + (unsigned long int) (dst_size)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (buf_end - buf) + (unsigned long int) (dst_size)) : ((long int) (((unsigned long int) (buf_end - buf) + (unsigned long int) (dst_size)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((buf_end - buf) + (dst_size)) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (0)))) < 0 ? (((long long int) (dst_size)) < 0 ? ((long long int) (buf_end - buf)) < ((((0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (0)) == -1) - ((((0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (0)))) - ((long long int) (dst_size)) : ((((0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + (1)) << (sizeof ((0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (dst_size)) + ((long long int) (buf_end - buf))) - (1)))) - ((long long int) (dst_size)) < ((long long int) (buf_end - buf))) : ((long long int) (buf_end - buf)) < 0 ? ((long long int) (dst_size)) <= ((long long int) (buf_end - buf)) + ((long long int) (dst_size)) : ((long long int) (dst_size)) < 0 ? ((long long int) (buf_end - buf)) <= ((long long int) (buf_end - buf)) + ((long long int) (dst_size)) : ((long long int) (buf_end - buf)) + ((long long int) (dst_size)) < ((long long int) (dst_size))) || (((0 * (((long long int) (buf_end - buf)) + ((long long int) (dst_size))) - (1)) < 0) && (((long long int) (buf_end - buf)) + ((long long int) (dst_size))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (buf_end - buf)) + ((long long int) (dst_size)))) ? (*(&dst_size) = (((unsigned long long int) ((long long int) (buf_end - buf)) + (unsigned long long int) ((long long int) (dst_size))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (buf_end - buf)) + (unsigned long long int) ((long long int) (dst_size))) : ((long long int) (((unsigned long long int) ((long long int) (buf_end - buf)) + (unsigned long long int) ((long long int) (dst_size))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&dst_size) = (((unsigned long long int) ((long long int) (buf_end - buf)) + (unsigned long long int) ((long long int) (dst_size))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (buf_end - buf)) + (unsigned long long int) ((long long int) (dst_size))) : ((long long int) (((unsigned long long int) ((long long int) (buf_end - buf)) + (unsigned long long int) ((long long int) (dst_size))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) < 0 ? ((dst_size) < 0 ? (buf_end - buf) < ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? - (~ (0 * (0 * (dst_size) + (buf_end - buf)) + (0)) == -1) - ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) + (0)))) - (dst_size) : ((((0 * (0 * (dst_size) + (buf_end - buf)) - (1)) < 0) ? ((((0 * (0 * (dst_size) + (buf_end - buf)) + (1)) << (sizeof ((0 * (dst_size) + (buf_end - buf)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (dst_size) + (buf_end - buf)) - (1)))) - (dst_size) < (buf_end - buf)) : (buf_end - buf) < 0 ? (dst_size) <= (buf_end - buf) + (dst_size) : (dst_size) < 0 ? (buf_end - buf) <= (buf_end - buf) + (dst_size) : (buf_end - buf) + (dst_size) < (dst_size)) || (((0 * ((buf_end - buf) + (dst_size)) - (1)) < 0) && ((buf_end - buf) + (dst_size)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((buf_end - buf) + (dst_size))) ? (*(&dst_size) = (((unsigned long long int) (buf_end - buf) + (unsigned long long int) (dst_size)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (buf_end - buf) + (unsigned long long int) (dst_size)) : ((long long int) (((unsigned long long int) (buf_end - buf) + (unsigned long long int) (dst_size)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&dst_size) = (((unsigned long long int) (buf_end - buf) + (unsigned long long int) (dst_size)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (buf_end - buf) + (unsigned long long int) (dst_size)) : ((long long int) (((unsigned long long int) (buf_end - buf) + (unsigned long long int) (dst_size)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0))))))
      memory_full ((18446744073709551615UL));
    dst = alloc_destination (coding, dst_size, dst);
    if (((coding->src_object) == (coding->dst_object)))
      {
        coding_set_source (coding);
        dst_end = (((unsigned char *) coding->source)
     + coding->consumed);
      }
    else
      dst_end = coding->destination + coding->dst_bytes;
  }

       for (i = 0; i < to_nchars; i++)
  {
    if (i > 0)
      c = ((AREF (trans, i)) >> INTTYPEBITS);
    if (coding->dst_multibyte
        || ! ((c) > 0x3FFF7F))
      do { if ((c) <= 0x7F) *(dst)++ = (c); else if ((c) <= 0x7FF) *(dst)++ = (0xC0 | ((c) >> 6)), *(dst)++ = (0x80 | ((c) & 0x3F)); else if ((c) <= 0xFFFF) *(dst)++ = (0xE0 | ((c) >> 12)), *(dst)++ = (0x80 | (((c) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((c) & 0x3F)); else { extern int (*_gl_verify_function81 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (c, dst); } } while (0);
    else
      *dst++ = (((c) > 0x3FFF7F) ? (c) - 0x3FFF00 : (c & 0xFF));
  }
       produced_chars += to_nchars;
       buf += from_nchars;
     }
   else

     buf += -c;
 }
      carryover = buf_end - buf;
    }
  else
    {

      const unsigned char *src = coding->source;
      const unsigned char *src_end = src + coding->consumed;

      if (((coding->dst_object) == (coding->src_object)))
 {
   ((void) (0 && (growable_destination (coding))));
   dst_end = (unsigned char *) src;
 }
      if (coding->src_multibyte != coding->dst_multibyte)
 {
   if (coding->src_multibyte)
     {
       _Bool multibytep = 1;
       ptrdiff_t consumed_chars = 0;

       while (1)
  {
    const unsigned char *src_base = src;
    int c;

    do { if (src == src_end) { if (src_base < src) record_conversion_result (coding, CODING_RESULT_INSUFFICIENT_SRC); goto no_more_source; } c = *src++; if (multibytep && (c & 0x80)) { if ((c & 0xFE) == 0xC0) c = ((c & 1) << 6) | *src++; else { src--; c = - string_char (src, &src, ((void*)0)); record_conversion_result (coding, CODING_RESULT_INVALID_SRC); } } consumed_chars++; } while (0);
    if (dst == dst_end)
      {
        ((void) (0 && (growable_destination (coding))));
        if (((coding->src_object) == (coding->dst_object)))
   dst_end = (unsigned char *) src;
        if (dst == dst_end)
   {
     ptrdiff_t offset = src - coding->source;

     dst = alloc_destination (coding, src_end - src + 1,
         dst);
     dst_end = coding->destination + coding->dst_bytes;
     coding_set_source (coding);
     src = coding->source + offset;
     src_end = coding->source + coding->consumed;
     if (((coding->src_object) == (coding->dst_object)))
       dst_end = (unsigned char *) src;
   }
      }
    *dst++ = c;
    produced_chars++;
  }
     no_more_source:
       ;
     }
   else
     while (src < src_end)
       {
  _Bool multibytep = 1;
  int c = *src++;

  if (dst >= dst_end - 1)
    {
      ((void) (0 && (growable_destination (coding))));
      if (((coding->src_object) == (coding->dst_object)))
        dst_end = (unsigned char *) src;
      if (dst >= dst_end - 1)
        {
   ptrdiff_t offset = src - coding->source;
   ptrdiff_t more_bytes;

   if (((coding->src_object) == (coding->dst_object)))
     more_bytes = ((src_end - src) / 2) + 2;
   else
     more_bytes = src_end - src + 2;
   dst = alloc_destination (coding, more_bytes, dst);
   dst_end = coding->destination + coding->dst_bytes;
   coding_set_source (coding);
   src = coding->source + offset;
   src_end = coding->source + coding->consumed;
   if (((coding->src_object) == (coding->dst_object)))
     dst_end = (unsigned char *) src;
        }
    }
  do { produced_chars++; if (multibytep) { unsigned ch = (c); if (ch >= 0x80) ch = ((ch) + 0x3FFF00); do { if ((ch) <= 0x7F) *(dst)++ = (ch); else if ((ch) <= 0x7FF) *(dst)++ = (0xC0 | ((ch) >> 6)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else if ((ch) <= 0xFFFF) *(dst)++ = (0xE0 | ((ch) >> 12)), *(dst)++ = (0x80 | (((ch) >> 6) & 0x3F)), *(dst)++ = (0x80 | ((ch) & 0x3F)); else { extern int (*_gl_verify_function82 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (ch) <= sizeof (unsigned)) ? 1 : -1; }))]; (dst) += char_string (ch, dst); } } while (0); } else *dst++ = (c); } while (0);
       }
 }
      else
 {
   if (!((coding->src_object) == (coding->dst_object)))
     {
       ptrdiff_t require = coding->src_bytes - coding->dst_bytes;

       if (require > 0)
  {
    ptrdiff_t offset = src - coding->source;

    dst = alloc_destination (coding, require, dst);
    coding_set_source (coding);
    src = coding->source + offset;
    src_end = coding->source + coding->consumed;
  }
     }
   produced_chars = coding->consumed_char;
   while (src < src_end)
     *dst++ = *src++;
 }
    }

  produced = dst - (coding->destination + coding->produced);
  if (BUFFERP (coding->dst_object) && produced_chars > 0)
    insert_from_gap (produced_chars, produced, 0);
  coding->produced += produced;
  coding->produced_char += produced_chars;
  return carryover;
}






static void
produce_composition (struct coding_system *coding, int *charbuf, ptrdiff_t pos)
{
  int len;
  ptrdiff_t to;
  enum composition_method method;
  Lisp_Object components;

  len = -charbuf[0] - 5;
  to = pos + charbuf[2];
  method = (enum composition_method) (charbuf[4]);

  if (method == COMPOSITION_RELATIVE)
    components = builtin_lisp_symbol (0);
  else
    {
      Lisp_Object args[16 * 2 - 1];
      int i, j;

      if (method == COMPOSITION_WITH_RULE)
 len = charbuf[2] * 3 - 2;
      charbuf += 5;

      for (i = j = 0; i < len && charbuf[i] != -1; i++, j++)
 {
   if (charbuf[i] >= 0)
     args[j] = ((EMACS_INT) (((EMACS_UINT) (charbuf[i]) << INTTYPEBITS) + Lisp_Int0));
   else
     {
       i++;
       args[j] = ((EMACS_INT) (((EMACS_UINT) (charbuf[i] % 0x100) << INTTYPEBITS) + Lisp_Int0));
     }
 }
      components = (i == j ? Fstring (j, args) : Fvector (j, args));
    }
  compose_text (pos, to, components, builtin_lisp_symbol (0), coding->dst_object);
}







static void
produce_charset (struct coding_system *coding, int *charbuf, ptrdiff_t pos)
{
  ptrdiff_t from = pos - charbuf[2];
  struct charset *charset = (charset_table + (charbuf[3]));

  Fput_text_property (((EMACS_INT) (((EMACS_UINT) (from) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (pos) << INTTYPEBITS) + Lisp_Int0)),
        builtin_lisp_symbol (261), (AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)),
        coding->dst_object);
}
# 7272 "coding.c"
static void
produce_annotation (struct coding_system *coding, ptrdiff_t pos)
{
  int *charbuf = coding->charbuf;
  int *charbuf_end = charbuf + coding->charbuf_used;

  if (((coding->dst_object) == (builtin_lisp_symbol (0))))
    return;

  while (charbuf < charbuf_end)
    {
      if (*charbuf >= 0)
 pos++, charbuf++;
      else
 {
   int len = -*charbuf;

   if (len > 2)
     switch (charbuf[1])
       {
       case 0x0001:
  produce_composition (coding, charbuf, pos);
  break;
       case 0x0003:
  produce_charset (coding, charbuf, pos);
  break;
       default:
  break;
       }
   charbuf += len;
 }
    }
}
# 7329 "coding.c"
static void
decode_coding (struct coding_system *coding)
{
  Lisp_Object attrs;
  Lisp_Object undo_list;
  Lisp_Object translation_table;
  struct ccl_spec cclspec;
  int carryover;
  int i;

  ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;

  if (BUFFERP (coding->src_object)
      && coding->src_pos > 0
      && coding->src_pos < (current_buffer->text->gpt)
      && coding->src_pos + coding->src_chars > (current_buffer->text->gpt))
    move_gap_both (coding->src_pos, coding->src_pos_byte);

  undo_list = builtin_lisp_symbol (901);
  if (BUFFERP (coding->dst_object))
    {
      set_buffer_internal (XBUFFER (coding->dst_object));
      if ((current_buffer->text->gpt) != (current_buffer->pt + 0))
 move_gap_both ((current_buffer->pt + 0), (current_buffer->pt_byte + 0));






      if ((current_buffer->text->modiff) <= (current_buffer->text->save_modiff))
 record_first_change ();

      undo_list = ((current_buffer)-> undo_list_);
      bset_undo_list (current_buffer, builtin_lisp_symbol (901));
    }

  coding->consumed = coding->consumed_char = 0;
  coding->produced = coding->produced_char = 0;
  coding->chars_at_source = 0;
  record_conversion_result (coding, CODING_RESULT_SUCCESS);

  do { ptrdiff_t units = (((coding->src_bytes) + ((5 * 3) + 1)) < (0x4000) ? ((coding->src_bytes) + ((5 * 3) + 1)) : (0x4000)); coding->charbuf = ((units * sizeof (int)) <= sa_avail ? (sa_avail -= (units * sizeof (int)), __builtin_alloca (units * sizeof (int))) : (sa_must_free = 1, record_xmalloc (units * sizeof (int)))); coding->charbuf_size = units; } while (0);

  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  translation_table = get_translation_table (attrs, 0, ((void*)0));

  carryover = 0;
  if (coding->decoder == decode_coding_ccl)
    {
      coding->spec.ccl = &cclspec;
      setup_ccl_program (&cclspec.ccl, AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_ccl_decoder));
    }
  do
    {
      ptrdiff_t pos = coding->dst_pos + coding->produced_char;

      coding_set_source (coding);
      coding->annotated = 0;
      coding->charbuf_used = carryover;
      (*(coding->decoder)) (coding);
      coding_set_destination (coding);
      carryover = produce_chars (coding, translation_table, 0);
      if (coding->annotated)
 produce_annotation (coding, pos);
      for (i = 0; i < carryover; i++)
 coding->charbuf[i]
   = coding->charbuf[coding->charbuf_used - carryover + i];
    }
  while (coding->result == CODING_RESULT_INSUFFICIENT_DST
  || (coding->consumed < coding->src_bytes
      && (coding->result == CODING_RESULT_SUCCESS
   || coding->result == CODING_RESULT_INVALID_SRC)));

  if (carryover > 0)
    {
      coding_set_destination (coding);
      coding->charbuf_used = carryover;
      produce_chars (coding, translation_table, 1);
    }

  coding->carryover_bytes = 0;
  if (coding->consumed < coding->src_bytes)
    {
      ptrdiff_t nbytes = coding->src_bytes - coding->consumed;
      const unsigned char *src;

      coding_set_source (coding);
      coding_set_destination (coding);
      src = coding->source + coding->consumed;

      if (coding->mode & 0x01)
 {



   coding->charbuf_used = 0;
   coding->chars_at_source = 0;

   while (nbytes-- > 0)
     {
       int c = *src++;

       if (c & 0x80)
  c = ((c) + 0x3FFF00);
       coding->charbuf[coding->charbuf_used++] = c;
     }
   produce_chars (coding, builtin_lisp_symbol (0), 1);
 }
      else
 {



   unsigned char *p = coding->carryover;

   if (nbytes > sizeof coding->carryover)
     nbytes = sizeof coding->carryover;
   coding->carryover_bytes = nbytes;
   while (nbytes-- > 0)
     *p++ = *src++;
 }
      coding->consumed = coding->src_bytes;
    }

  if (! (((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2))) == (builtin_lisp_symbol (973)))
      && !globals.f_inhibit_eol_conversion)
    decode_eol (coding);
  if (BUFFERP (coding->dst_object))
    {
      bset_undo_list (current_buffer, undo_list);
      record_insert (coding->dst_pos, coding->produced_char);
    }

  do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0);
}
# 7477 "coding.c"
static int *
handle_composition_annotation (ptrdiff_t pos, ptrdiff_t limit,
          struct coding_system *coding, int *buf,
          ptrdiff_t *stop)
{
  ptrdiff_t start, end;
  Lisp_Object prop;

  if (! find_composition (pos, limit, &start, &end, &prop, coding->src_object)
      || end > limit)
    *stop = limit;
  else if (start > pos)
    *stop = start;
  else
    {
      if (start == pos)
 {


   int *head = buf;
   enum composition_method method = composition_method (prop);
   int nchars = (composition_registered_p (prop) ? (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->car) >> INTTYPEBITS) : (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->car) >> INTTYPEBITS));

   do { do { *(buf)++ = -(5); *(buf)++ = (0x0001); *(buf)++ = (nchars); coding->annotated = 1; } while (0);; *buf++ = 0; *buf++ = method; } while (0);
   if (method != COMPOSITION_RELATIVE)
     {
       Lisp_Object components;
       ptrdiff_t i, len, i_byte;

       components = (composition_registered_p (prop) ? (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->car : (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((prop) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((prop) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr);
       if (VECTORP (components))
  {
    len = ASIZE (components);
    for (i = 0; i < len; i++)
      *buf++ = ((AREF (components, i)) >> INTTYPEBITS);
  }
       else if (STRINGP (components))
  {
    len = SCHARS (components);
    i = i_byte = 0;
    while (i < len)
      {
        do { i++; if (STRING_MULTIBYTE (components)) { unsigned char *chp = &SDATA (components)[i_byte]; int chlen; *buf = (!((chp)[0] & 0x80) ? ((chlen) = 1, (chp)[0]) : ! ((chp)[0] & 0x20) ? ((chlen) = 2, (((((chp)[0] & 0x1F) << 6) | ((chp)[1] & 0x3F)) + (((unsigned char) (chp)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((chp)[0] & 0x10) ? ((chlen) = 3, ((((chp)[0] & 0x0F) << 12) | (((chp)[1] & 0x3F) << 6) | ((chp)[2] & 0x3F))) : string_char ((chp), ((void*)0), &chlen)); i_byte += chlen; } else { *buf = SREF (components, i_byte); i_byte++; } } while (0);
        buf++;
      }
  }
       else if (((((enum Lisp_Type) ((components) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
  {
    len = 1;
    *buf++ = ((components) >> INTTYPEBITS);
  }
       else if ((((enum Lisp_Type) ((components) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
  {
    for (len = 0; (((enum Lisp_Type) ((components) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons);
         len++, components = (((void) (0 && ((((enum Lisp_Type) ((components) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((components) - (Lisp_Cons))))->u.cdr)
      *buf++ = (((((void) (0 && ((((enum Lisp_Type) ((components) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((components) - (Lisp_Cons))))->car) >> INTTYPEBITS);
  }
       else
  emacs_abort ();
       *head -= len;
     }
 }

      if (find_composition (end, limit, &start, &end, &prop,
       coding->src_object)
   && end <= limit)
 *stop = start;
      else
 *stop = limit;
    }
  return buf;
}
# 7560 "coding.c"
static int *
handle_charset_annotation (ptrdiff_t pos, ptrdiff_t limit,
      struct coding_system *coding, int *buf,
      ptrdiff_t *stop)
{
  Lisp_Object val, next;
  int id;

  val = Fget_text_property (((EMACS_INT) (((EMACS_UINT) (pos) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (261), coding->src_object);
  if (! ((val) == (builtin_lisp_symbol (0))) && (hash_lookup (XHASH_TABLE (Vcharset_hash_table), val, ((void*)0)) >= 0))
    id = ((AREF ((Fgethash ((val), Vcharset_hash_table, builtin_lisp_symbol (0))), charset_id)) >> INTTYPEBITS);
  else
    id = -1;
  do { do { *(buf)++ = -(4); *(buf)++ = (0x0003); *(buf)++ = (0); coding->annotated = 1; } while (0);; *buf++ = id; } while (0);
  next = Fnext_single_property_change (((EMACS_INT) (((EMACS_UINT) (pos) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (261),
           coding->src_object,
           ((EMACS_INT) (((EMACS_UINT) (limit) << INTTYPEBITS) + Lisp_Int0)));
  *stop = ((next) >> INTTYPEBITS);
  return buf;
}


static void
consume_chars (struct coding_system *coding, Lisp_Object translation_table,
        int max_lookup)
{
  int *buf = coding->charbuf;
  int *buf_end = coding->charbuf + coding->charbuf_size;
  const unsigned char *src = coding->source + coding->consumed;
  const unsigned char *src_end = coding->source + coding->src_bytes;
  ptrdiff_t pos = coding->src_pos + coding->consumed_char;
  ptrdiff_t end_pos = coding->src_pos + coding->src_chars;
  _Bool multibytep = coding->src_multibyte;
  Lisp_Object eol_type;
  int c;
  ptrdiff_t stop, stop_composition, stop_charset;
  int *lookup_buf = ((void*)0);

  if (! ((translation_table) == (builtin_lisp_symbol (0))))
    lookup_buf = __builtin_alloca (sizeof (int) * max_lookup);

  eol_type = globals.f_inhibit_eol_conversion ? builtin_lisp_symbol (973) : (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));
  if (VECTORP (eol_type))
    eol_type = builtin_lisp_symbol (973);


  coding->common_flags &= ~0x0001;

  if (((coding->src_object) == (builtin_lisp_symbol (0))))
    stop = stop_composition = stop_charset = end_pos;
  else
    {
      if (coding->common_flags & 0x0001)
 stop = stop_composition = pos;
      else
 stop = stop_composition = end_pos;
      if (coding->common_flags & 0x0003)
 stop = stop_charset = pos;
      else
 stop_charset = end_pos;
    }


  buf_end -= 1 + 5;
  while (buf < buf_end)
    {
      Lisp_Object trans;

      if (pos == stop)
 {
   if (pos == end_pos)
     break;
   if (pos == stop_composition)
     buf = handle_composition_annotation (pos, end_pos, coding,
       buf, &stop_composition);
   if (pos == stop_charset)
     buf = handle_charset_annotation (pos, end_pos, coding,
          buf, &stop_charset);
   stop = (stop_composition < stop_charset
    ? stop_composition : stop_charset);
 }

      if (! multibytep)
 {
   int bytes;

   if (coding->encoder == encode_coding_raw_text
       || coding->encoder == encode_coding_ccl)
     c = *src++, pos++;
   else if ((bytes = (src >= src_end ? 0 : !((src)[0] & 0x80) ? 1 : ((src + 1 >= src_end) || (((src)[1] & 0xC0) != 0x80)) ? 0 : ((src)[0] & 0xE0) == 0xC0 ? 2 : ((src + 2 >= src_end) || (((src)[2] & 0xC0) != 0x80)) ? 0 : ((src)[0] & 0xF0) == 0xE0 ? 3 : ((src + 3 >= src_end) || (((src)[3] & 0xC0) != 0x80)) ? 0 : ((src)[0] & 0xF8) == 0xF0 ? 4 : ((src + 4 >= src_end) || (((src)[4] & 0xC0) != 0x80)) ? 0 : (src)[0] == 0xF8 && ((src)[1] & 0xF0) == 0x80 ? 5 : 0)) > 0)
     c = (!((src)[0] & 0x80) ? *(src)++ : ! ((src)[0] & 0x20) ? ((src) += 2, ((((src)[-2] & 0x1F) << 6) | ((src)[-1] & 0x3F) | ((unsigned char) ((src)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((src)[0] & 0x10) ? ((src) += 3, ((((src)[-3] & 0x0F) << 12) | (((src)[-2] & 0x3F) << 6) | ((src)[-1] & 0x3F))) : string_char ((src), &(src), ((void*)0))), pos += bytes;
   else
     c = ((*src) + 0x3FFF00), src++, pos++;
 }
      else
 c = (!((src)[0] & 0x80) ? *(src)++ : ! ((src)[0] & 0x20) ? ((src) += 2, ((((src)[-2] & 0x1F) << 6) | ((src)[-1] & 0x3F) | ((unsigned char) ((src)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((src)[0] & 0x10) ? ((src) += 3, ((((src)[-3] & 0x0F) << 12) | (((src)[-2] & 0x3F) << 6) | ((src)[-1] & 0x3F))) : string_char ((src), &(src), ((void*)0))), pos++;
      if ((c == '\r') && (coding->mode & 0x02))
 c = '\n';
      if (! ((eol_type) == (builtin_lisp_symbol (973))))
 {
   if (c == '\n')
     {
       if (((eol_type) == (builtin_lisp_symbol (351))))
  *buf++ = '\r';
       else
  c = '\r';
     }
 }

      trans = builtin_lisp_symbol (0);
      do { trans = builtin_lisp_symbol (0); if (CHAR_TABLE_P (translation_table)) { trans = CHAR_TABLE_REF (translation_table, c); if ((NATNUMP (trans) && ((trans) >> INTTYPEBITS) <= 0x3FFFFF)) c = ((trans) >> INTTYPEBITS), trans = builtin_lisp_symbol (0); } else if ((((enum Lisp_Type) ((translation_table) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)) { Lisp_Object tail; for (tail = translation_table; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) if (CHAR_TABLE_P ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car)) { trans = CHAR_TABLE_REF ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, c); if ((NATNUMP (trans) && ((trans) >> INTTYPEBITS) <= 0x3FFFFF)) c = ((trans) >> INTTYPEBITS), trans = builtin_lisp_symbol (0); else if (! ((trans) == (builtin_lisp_symbol (0)))) break; } } } while (0);
      if (((trans) == (builtin_lisp_symbol (0))))
 *buf++ = c;
      else
 {
   ptrdiff_t from_nchars = 1, to_nchars = 1;
   int *lookup_buf_end;
   const unsigned char *p = src;
   int i;

   lookup_buf[0] = c;
   for (i = 1; i < max_lookup && p < src_end; i++)
     lookup_buf[i] = (!((p)[0] & 0x80) ? *(p)++ : ! ((p)[0] & 0x20) ? ((p) += 2, ((((p)[-2] & 0x1F) << 6) | ((p)[-1] & 0x3F) | ((unsigned char) ((p)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((p) += 3, ((((p)[-3] & 0x0F) << 12) | (((p)[-2] & 0x3F) << 6) | ((p)[-1] & 0x3F))) : string_char ((p), &(p), ((void*)0)));
   lookup_buf_end = lookup_buf + i;
   trans = get_translation (trans, lookup_buf, lookup_buf_end);
   if (((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
     c = ((trans) >> INTTYPEBITS);
   else if ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     {
       from_nchars = ASIZE ((((void) (0 && ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((trans) - (Lisp_Cons))))->car);
       trans = (((void) (0 && ((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((trans) - (Lisp_Cons))))->u.cdr;
       if (((((enum Lisp_Type) ((trans) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
  c = ((trans) >> INTTYPEBITS);
       else
  {
    to_nchars = ASIZE (trans);
    if (buf_end - buf < to_nchars)
      break;
    c = ((AREF (trans, 0)) >> INTTYPEBITS);
  }
     }
   else
     break;
   *buf++ = c;
   for (i = 1; i < to_nchars; i++)
     *buf++ = ((AREF (trans, i)) >> INTTYPEBITS);
   for (i = 1; i < from_nchars; i++, pos++)
     src += (!((src)[0] & 0x80) ? 1 : ((src)[1] & 0xC0) != 0x80 ? 0 : ((src)[0] & 0xE0) == 0xC0 ? 2 : ((src)[2] & 0xC0) != 0x80 ? 0 : ((src)[0] & 0xF0) == 0xE0 ? 3 : ((src)[3] & 0xC0) != 0x80 ? 0 : ((src)[0] & 0xF8) == 0xF0 ? 4 : ((src)[4] & 0xC0) != 0x80 ? 0 : (src)[0] == 0xF8 && ((src)[1] & 0xF0) == 0x80 ? 5 : 0);
 }
    }

  coding->consumed = src - coding->source;
  coding->consumed_char = pos - coding->src_pos;
  coding->charbuf_used = buf - coding->charbuf;
  coding->chars_at_source = 0;
}
# 7739 "coding.c"
static void
encode_coding (struct coding_system *coding)
{
  Lisp_Object attrs;
  Lisp_Object translation_table;
  int max_lookup;
  struct ccl_spec cclspec;

  ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;

  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  if (coding->encoder == encode_coding_raw_text)
    translation_table = builtin_lisp_symbol (0), max_lookup = 0;
  else
    translation_table = get_translation_table (attrs, 1, &max_lookup);

  if (BUFFERP (coding->dst_object))
    {
      set_buffer_internal (XBUFFER (coding->dst_object));
      coding->dst_multibyte
 = ! ((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)));
    }

  coding->consumed = coding->consumed_char = 0;
  coding->produced = coding->produced_char = 0;
  record_conversion_result (coding, CODING_RESULT_SUCCESS);

  do { ptrdiff_t units = (((coding->src_chars) + ((5 * 3) + 1)) < (0x4000) ? ((coding->src_chars) + ((5 * 3) + 1)) : (0x4000)); coding->charbuf = ((units * sizeof (int)) <= sa_avail ? (sa_avail -= (units * sizeof (int)), __builtin_alloca (units * sizeof (int))) : (sa_must_free = 1, record_xmalloc (units * sizeof (int)))); coding->charbuf_size = units; } while (0);

  if (coding->encoder == encode_coding_ccl)
    {
      coding->spec.ccl = &cclspec;
      setup_ccl_program (&cclspec.ccl, AREF ((AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), (coding)->id), 0)), coding_attr_ccl_encoder));
    }
  do {
    coding_set_source (coding);
    consume_chars (coding, translation_table, max_lookup);
    coding_set_destination (coding);
    (*(coding->encoder)) (coding);
  } while (coding->consumed_char < coding->src_chars);

  if (BUFFERP (coding->dst_object) && coding->produced_char > 0)
    insert_from_gap (coding->produced_char, coding->produced, 0);

  do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0);
}



static Lisp_Object Vcode_conversion_workbuf_name;






static Lisp_Object Vcode_conversion_reused_workbuf;


static _Bool reused_workbuf_in_use;





static Lisp_Object
make_conversion_work_buffer (_Bool multibyte)
{
  Lisp_Object name, workbuf;
  struct buffer *current;

  if (reused_workbuf_in_use)
    {
      name = Fgenerate_new_buffer_name (Vcode_conversion_workbuf_name, builtin_lisp_symbol (0));
      workbuf = Fget_buffer_create (name);
    }
  else
    {
      reused_workbuf_in_use = 1;
      if (((Fbuffer_live_p (Vcode_conversion_reused_workbuf)) == (builtin_lisp_symbol (0))))
 Vcode_conversion_reused_workbuf
   = Fget_buffer_create (Vcode_conversion_workbuf_name);
      workbuf = Vcode_conversion_reused_workbuf;
    }
  current = current_buffer;
  set_buffer_internal (XBUFFER (workbuf));



  Fset (Fmake_local_variable (builtin_lisp_symbol (544)), builtin_lisp_symbol (901));
  Ferase_buffer ();
  bset_undo_list (current_buffer, builtin_lisp_symbol (901));
  bset_enable_multibyte_characters (current_buffer, multibyte ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0));
  set_buffer_internal (current);
  return workbuf;
}


static void
code_conversion_restore (Lisp_Object arg)
{
  Lisp_Object current, workbuf;

  current = (((void) (0 && ((((enum Lisp_Type) ((arg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((arg) - (Lisp_Cons))))->car;
  workbuf = (((void) (0 && ((((enum Lisp_Type) ((arg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((arg) - (Lisp_Cons))))->u.cdr;
  if (! ((workbuf) == (builtin_lisp_symbol (0))))
    {
      if (((workbuf) == (Vcode_conversion_reused_workbuf)))
 reused_workbuf_in_use = 0;
      else
 Fkill_buffer (workbuf);
    }
  set_buffer_internal (XBUFFER (current));
}

Lisp_Object
code_conversion_save (_Bool with_work_buf, _Bool multibyte)
{
  Lisp_Object workbuf = builtin_lisp_symbol (0);

  if (with_work_buf)
    workbuf = make_conversion_work_buffer (multibyte);
  record_unwind_protect (code_conversion_restore,
    Fcons (Fcurrent_buffer (), workbuf));
  return workbuf;
}

void
decode_coding_gap (struct coding_system *coding,
     ptrdiff_t chars, ptrdiff_t bytes)
{
  ptrdiff_t count = SPECPDL_INDEX ();
  Lisp_Object attrs;

  coding->src_object = Fcurrent_buffer ();
  coding->src_chars = chars;
  coding->src_bytes = bytes;
  coding->src_pos = -chars;
  coding->src_pos_byte = -bytes;
  coding->src_multibyte = chars < bytes;
  coding->dst_object = coding->src_object;
  coding->dst_pos = (current_buffer->pt + 0);
  coding->dst_pos_byte = (current_buffer->pt_byte + 0);
  coding->dst_multibyte = ! ((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)));

  coding->head_ascii = -1;
  coding->detected_utf8_bytes = coding->detected_utf8_chars = -1;
  coding->eol_seen = 0;
  if (((coding)->common_flags & 0x1000))
    detect_coding (coding);
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));
  if (! globals.f_disable_ascii_optimization
      && ! coding->src_multibyte
      && ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0)))
      && ((AREF (attrs, coding_attr_post_read)) == (builtin_lisp_symbol (0)))
      && ((get_translation_table (attrs, 0, ((void*)0))) == (builtin_lisp_symbol (0))))
    {
      chars = coding->head_ascii;
      if (chars < 0)
 chars = check_ascii (coding);
      if (chars != bytes)
 {

   if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (988)))
       && coding->detected_utf8_bytes == coding->src_bytes)
     {
       if (coding->detected_utf8_chars >= 0)
  chars = coding->detected_utf8_chars;
       else
  chars = check_utf_8 (coding);
       if (((coding)->spec.utf_8_bom) != utf_without_bom
    && coding->head_ascii == 0
    && coding->source[0] == 0xEF
    && coding->source[1] == 0xBB
    && coding->source[2] == 0xBF)
  {
    chars--;
    bytes -= 3;
    coding->src_bytes -= 3;
  }
     }
   else
     chars = -1;
 }
      if (chars >= 0)
 {
   Lisp_Object eol_type;

   eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 2));
   if (VECTORP (eol_type))
     {
       if (coding->eol_seen != 0)
  eol_type = adjust_coding_eol_type (coding, coding->eol_seen);
     }
   if (((eol_type) == (builtin_lisp_symbol (635))))
     {
       unsigned char *src_end = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
       unsigned char *src = src_end - coding->src_bytes;

       while (src < src_end)
  {
    if (*src++ == '\r')
      src[-1] = '\n';
  }
     }
   else if (((eol_type) == (builtin_lisp_symbol (351))))
     {
       unsigned char *src = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
       unsigned char *src_beg = src - coding->src_bytes;
       unsigned char *dst = src;
       ptrdiff_t diff;

       while (src_beg < src)
  {
    *--dst = *--src;
    if (*src == '\n' && src > src_beg && src[-1] == '\r')
      src--;
  }
       diff = dst - src;
       bytes -= diff;
       chars -= diff;
     }
   coding->produced = bytes;
   coding->produced_char = chars;
   insert_from_gap (chars, bytes, 1);
   return;
 }
    }
  code_conversion_save (0, 0);

  coding->mode |= 0x01;
  current_buffer->text->inhibit_shrinking = 1;
  decode_coding (coding);
  current_buffer->text->inhibit_shrinking = 0;

  if (! ((AREF (attrs, coding_attr_post_read)) == (builtin_lisp_symbol (0))))
    {
      ptrdiff_t prev_Z = (current_buffer->text->z), prev_Z_BYTE = (current_buffer->text->z_byte);
      Lisp_Object val;

      (temp_set_point_both (current_buffer, (coding->dst_pos), (coding->dst_pos_byte)));
      val = call1 (AREF (attrs, coding_attr_post_read),
     ((EMACS_INT) (((EMACS_UINT) (coding->produced_char) << INTTYPEBITS) + Lisp_Int0)));
      CHECK_NATNUM (val);
      coding->produced_char += (current_buffer->text->z) - prev_Z;
      coding->produced += (current_buffer->text->z_byte) - prev_Z_BYTE;
    }

  unbind_to (count, builtin_lisp_symbol (0));
}
# 8020 "coding.c"
void
decode_coding_object (struct coding_system *coding,
        Lisp_Object src_object,
        ptrdiff_t from, ptrdiff_t from_byte,
        ptrdiff_t to, ptrdiff_t to_byte,
        Lisp_Object dst_object)
{
  ptrdiff_t count = SPECPDL_INDEX ();
  unsigned char *destination ;
  ptrdiff_t dst_bytes ;
  ptrdiff_t chars = to - from;
  ptrdiff_t bytes = to_byte - from_byte;
  Lisp_Object attrs;
  ptrdiff_t saved_pt = -1, saved_pt_byte ;
  _Bool need_marker_adjustment = 0;
  Lisp_Object old_deactivate_mark;

  old_deactivate_mark = globals.f_Vdeactivate_mark;

  if (((dst_object) == (builtin_lisp_symbol (0))))
    {
      destination = coding->destination;
      dst_bytes = coding->dst_bytes;
    }

  coding->src_object = src_object;
  coding->src_chars = chars;
  coding->src_bytes = bytes;
  coding->src_multibyte = chars < bytes;

  if (STRINGP (src_object))
    {
      coding->src_pos = from;
      coding->src_pos_byte = from_byte;
    }
  else if (BUFFERP (src_object))
    {
      set_buffer_internal (XBUFFER (src_object));
      if (from != (current_buffer->text->gpt))
 move_gap_both (from, from_byte);
      if (((src_object) == (dst_object)))
 {
   struct Lisp_Marker *tail;

   for (tail = ((current_buffer)->text->markers); tail; tail = tail->next)
     {
       tail->need_adjustment
  = tail->charpos == (tail->insertion_type ? from : to);
       need_marker_adjustment |= tail->need_adjustment;
     }
   saved_pt = (current_buffer->pt + 0), saved_pt_byte = (current_buffer->pt_byte + 0);
   (temp_set_point_both (current_buffer, (from), (from_byte)));
   current_buffer->text->inhibit_shrinking = 1;
   del_range_both (from, from_byte, to, to_byte, 1);
   coding->src_pos = -chars;
   coding->src_pos_byte = -bytes;
 }
      else
 {
   coding->src_pos = from;
   coding->src_pos_byte = from_byte;
 }
    }

  if (((coding)->common_flags & 0x1000))
    detect_coding (coding);
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));

  if (((dst_object) == (builtin_lisp_symbol (901)))
      || (! ((AREF (attrs, coding_attr_post_read)) == (builtin_lisp_symbol (0)))
   && ((dst_object) == (builtin_lisp_symbol (0)))))
    {
      coding->dst_multibyte = !((coding)->common_flags & 0x0100);
      coding->dst_object = code_conversion_save (1, coding->dst_multibyte);
      coding->dst_pos = (1);
      coding->dst_pos_byte = ((1));
    }
  else if (BUFFERP (dst_object))
    {
      code_conversion_save (0, 0);
      coding->dst_object = dst_object;
      coding->dst_pos = (XBUFFER (dst_object) == current_buffer ? (current_buffer->pt + 0) : ((((XBUFFER (dst_object))-> pt_marker_)) == (builtin_lisp_symbol (0))) ? XBUFFER (dst_object)->pt : marker_position (((XBUFFER (dst_object))-> pt_marker_)));
      coding->dst_pos_byte = (XBUFFER (dst_object) == current_buffer ? (current_buffer->pt_byte + 0) : ((((XBUFFER (dst_object))-> pt_marker_)) == (builtin_lisp_symbol (0))) ? XBUFFER (dst_object)->pt_byte : marker_byte_position (((XBUFFER (dst_object))-> pt_marker_)));
      coding->dst_multibyte
 = ! ((((XBUFFER (dst_object))-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)));
    }
  else
    {
      code_conversion_save (0, 0);
      coding->dst_object = builtin_lisp_symbol (0);



      coding->dst_multibyte = 1;
    }

  decode_coding (coding);

  if (BUFFERP (coding->dst_object))
    set_buffer_internal (XBUFFER (coding->dst_object));

  if (! ((AREF (attrs, coding_attr_post_read)) == (builtin_lisp_symbol (0))))
    {
      ptrdiff_t prev_Z = (current_buffer->text->z), prev_Z_BYTE = (current_buffer->text->z_byte);
      Lisp_Object val;

      (temp_set_point_both (current_buffer, (coding->dst_pos), (coding->dst_pos_byte)));
      val = safe_call1 (AREF (attrs, coding_attr_post_read),
   ((EMACS_INT) (((EMACS_UINT) (coding->produced_char) << INTTYPEBITS) + Lisp_Int0)));
      CHECK_NATNUM (val);
      coding->produced_char += (current_buffer->text->z) - prev_Z;
      coding->produced += (current_buffer->text->z_byte) - prev_Z_BYTE;
    }

  if (((dst_object) == (builtin_lisp_symbol (901))))
    {
      coding->dst_object = Fbuffer_string ();
    }
  else if (((dst_object) == (builtin_lisp_symbol (0))) && BUFFERP (coding->dst_object))
    {
      set_buffer_internal (XBUFFER (coding->dst_object));
      if (dst_bytes < coding->produced)
 {
   ((void) (0 && (coding->produced > 0)));
   destination = xrealloc (destination, coding->produced);
   if ((current_buffer->begv) < (current_buffer->text->gpt) && (current_buffer->text->gpt) < (current_buffer->begv) + coding->produced_char)
     move_gap_both ((current_buffer->begv), (current_buffer->begv_byte));
   memcpy (destination, ((((current_buffer->begv_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (current_buffer->begv_byte) + (current_buffer->text->beg) - ((1)))), coding->produced);
   coding->destination = destination;
 }
    }

  if (saved_pt >= 0)
    {




      set_buffer_internal (XBUFFER (src_object));
      current_buffer->text->inhibit_shrinking = 0;
      if (saved_pt < from)
 (temp_set_point_both (current_buffer, (saved_pt), (saved_pt_byte)));
      else if (saved_pt < from + chars)
 (temp_set_point_both (current_buffer, (from), (from_byte)));
      else if (! ((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
 (temp_set_point_both (current_buffer, (saved_pt + (coding->produced_char - chars)), (saved_pt_byte + (coding->produced - bytes))));

      else
 (temp_set_point_both (current_buffer, (saved_pt + (coding->produced - bytes)), (saved_pt_byte + (coding->produced - bytes))));


      if (need_marker_adjustment)
 {
   struct Lisp_Marker *tail;

   for (tail = ((current_buffer)->text->markers); tail; tail = tail->next)
     if (tail->need_adjustment)
       {
  tail->need_adjustment = 0;
  if (tail->insertion_type)
    {
      tail->bytepos = from_byte;
      tail->charpos = from;
    }
  else
    {
      tail->bytepos = from_byte + coding->produced;
      tail->charpos
        = (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)))
    ? tail->bytepos : from + coding->produced_char);
    }
       }
 }
    }

  globals.f_Vdeactivate_mark = old_deactivate_mark;
  unbind_to (count, coding->dst_object);
}


void
encode_coding_object (struct coding_system *coding,
        Lisp_Object src_object,
        ptrdiff_t from, ptrdiff_t from_byte,
        ptrdiff_t to, ptrdiff_t to_byte,
        Lisp_Object dst_object)
{
  ptrdiff_t count = SPECPDL_INDEX ();
  ptrdiff_t chars = to - from;
  ptrdiff_t bytes = to_byte - from_byte;
  Lisp_Object attrs;
  ptrdiff_t saved_pt = -1, saved_pt_byte ;
  _Bool need_marker_adjustment = 0;
  _Bool kill_src_buffer = 0;
  Lisp_Object old_deactivate_mark;

  old_deactivate_mark = globals.f_Vdeactivate_mark;

  coding->src_object = src_object;
  coding->src_chars = chars;
  coding->src_bytes = bytes;
  coding->src_multibyte = chars < bytes;

  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding->id), 0));

  if (((src_object) == (dst_object)))
    {
      struct Lisp_Marker *tail;

      for (tail = ((current_buffer)->text->markers); tail; tail = tail->next)
 {
   tail->need_adjustment
     = tail->charpos == (tail->insertion_type ? from : to);
   need_marker_adjustment |= tail->need_adjustment;
 }
    }

  if (! ((AREF (attrs, coding_attr_pre_write)) == (builtin_lisp_symbol (0))))
    {
      coding->src_object = code_conversion_save (1, coding->src_multibyte);
      set_buffer_internal (XBUFFER (coding->src_object));
      if (STRINGP (src_object))
 insert_from_string (src_object, from, from_byte, chars, bytes, 0);
      else if (BUFFERP (src_object))
 insert_from_buffer (XBUFFER (src_object), from, chars, 0);
      else
 insert_1_both ((char *) coding->source + from, chars, bytes, 0, 0, 0);

      if (((src_object) == (dst_object)))
 {
   set_buffer_internal (XBUFFER (src_object));
   saved_pt = (current_buffer->pt + 0), saved_pt_byte = (current_buffer->pt_byte + 0);
   del_range_both (from, from_byte, to, to_byte, 1);
   set_buffer_internal (XBUFFER (coding->src_object));
 }

      safe_call2 (AREF (attrs, coding_attr_pre_write),
    ((EMACS_INT) (((EMACS_UINT) ((1)) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) ((current_buffer->text->z)) << INTTYPEBITS) + Lisp_Int0)));
      if (XBUFFER (coding->src_object) != current_buffer)
 kill_src_buffer = 1;
      coding->src_object = Fcurrent_buffer ();
      if ((1) != (current_buffer->text->gpt))
 move_gap_both ((1), ((1)));
      coding->src_chars = (current_buffer->text->z) - (1);
      coding->src_bytes = (current_buffer->text->z_byte) - ((1));
      coding->src_pos = (1);
      coding->src_pos_byte = ((1));
      coding->src_multibyte = (current_buffer->text->z) < (current_buffer->text->z_byte);
    }
  else if (STRINGP (src_object))
    {
      code_conversion_save (0, 0);
      coding->src_pos = from;
      coding->src_pos_byte = from_byte;
    }
  else if (BUFFERP (src_object))
    {
      code_conversion_save (0, 0);
      set_buffer_internal (XBUFFER (src_object));
      if (((src_object) == (dst_object)))
 {
   saved_pt = (current_buffer->pt + 0), saved_pt_byte = (current_buffer->pt_byte + 0);
   coding->src_object = del_range_1 (from, to, 1, 1);
   coding->src_pos = 0;
   coding->src_pos_byte = 0;
 }
      else
 {
   if (from < (current_buffer->text->gpt) && to >= (current_buffer->text->gpt))
     move_gap_both (from, from_byte);
   coding->src_pos = from;
   coding->src_pos_byte = from_byte;
 }
    }
  else
    {
      code_conversion_save (0, 0);
      coding->src_pos = from;
      coding->src_pos_byte = from_byte;
    }

  if (BUFFERP (dst_object))
    {
      coding->dst_object = dst_object;
      if (((src_object) == (dst_object)))
 {
   coding->dst_pos = from;
   coding->dst_pos_byte = from_byte;
 }
      else
 {
   struct buffer *current = current_buffer;

   set_buffer_temp (XBUFFER (dst_object));
   coding->dst_pos = (current_buffer->pt + 0);
   coding->dst_pos_byte = (current_buffer->pt_byte + 0);
   move_gap_both (coding->dst_pos, coding->dst_pos_byte);
   set_buffer_temp (current);
 }
      coding->dst_multibyte
 = ! ((((XBUFFER (dst_object))-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)));
    }
  else if (((dst_object) == (builtin_lisp_symbol (901))))
    {
      ptrdiff_t dst_bytes = ((1) > (coding->src_chars) ? (1) : (coding->src_chars));
      coding->dst_object = builtin_lisp_symbol (0);
      coding->destination = xmalloc (dst_bytes);
      coding->dst_bytes = dst_bytes;
      coding->dst_multibyte = 0;
    }
  else
    {
      coding->dst_object = builtin_lisp_symbol (0);
      coding->dst_multibyte = 0;
    }

  encode_coding (coding);

  if (((dst_object) == (builtin_lisp_symbol (901))))
    {
      if (BUFFERP (coding->dst_object))
 coding->dst_object = Fbuffer_string ();
      else if (coding->raw_destination)



 coding->dst_object = builtin_lisp_symbol (0);
      else
 {
   coding->dst_object
     = make_unibyte_string ((char *) coding->destination,
       coding->produced);
   xfree (coding->destination);
 }
    }

  if (saved_pt >= 0)
    {




      set_buffer_internal (XBUFFER (src_object));
      if (saved_pt < from)
 (temp_set_point_both (current_buffer, (saved_pt), (saved_pt_byte)));
      else if (saved_pt < from + chars)
 (temp_set_point_both (current_buffer, (from), (from_byte)));
      else if (! ((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
 (temp_set_point_both (current_buffer, (saved_pt + (coding->produced_char - chars)), (saved_pt_byte + (coding->produced - bytes))));

      else
 (temp_set_point_both (current_buffer, (saved_pt + (coding->produced - bytes)), (saved_pt_byte + (coding->produced - bytes))));


      if (need_marker_adjustment)
 {
   struct Lisp_Marker *tail;

   for (tail = ((current_buffer)->text->markers); tail; tail = tail->next)
     if (tail->need_adjustment)
       {
  tail->need_adjustment = 0;
  if (tail->insertion_type)
    {
      tail->bytepos = from_byte;
      tail->charpos = from;
    }
  else
    {
      tail->bytepos = from_byte + coding->produced;
      tail->charpos
        = (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)))
    ? tail->bytepos : from + coding->produced_char);
    }
       }
 }
    }

  if (kill_src_buffer)
    Fkill_buffer (coding->src_object);

  globals.f_Vdeactivate_mark = old_deactivate_mark;
  unbind_to (count, builtin_lisp_symbol (0));
}


Lisp_Object
preferred_coding_system (void)
{
  int id = coding_categories[coding_priorities[0]].id;

  return (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), id));
}
# 8462 "coding.c"
static struct Lisp_Subr _Alignas (8) Scoding_system_p = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcoding_system_p }, 1, 1, "coding-system-p", 0, 0}; Lisp_Object Fcoding_system_p



  (Lisp_Object object)
{
  if (((object) == (builtin_lisp_symbol (0)))
      || hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), object, ((void*)0)) >= 0)
    return builtin_lisp_symbol (901);
  if (! (((enum Lisp_Type) ((object) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)
      || ((Fget (object, builtin_lisp_symbol (277))) == (builtin_lisp_symbol (0))))
    return builtin_lisp_symbol (0);
  return builtin_lisp_symbol (901);
}

static struct Lisp_Subr _Alignas (8) Sread_non_nil_coding_system = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fread_non_nil_coding_system }, 1, 1, "read-non-nil-coding-system", 0, 0}; Lisp_Object Fread_non_nil_coding_system


  (Lisp_Object prompt)
{
  Lisp_Object val;
  do
    {
      val = Fcompleting_read (prompt, globals.f_Vcoding_system_alist, builtin_lisp_symbol (0),
         builtin_lisp_symbol (901), builtin_lisp_symbol (0), builtin_lisp_symbol (279), builtin_lisp_symbol (0), builtin_lisp_symbol (0));
    }
  while (SCHARS (val) == 0);
  return (Fintern (val, builtin_lisp_symbol (0)));
}

static struct Lisp_Subr _Alignas (8) Sread_coding_system = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fread_coding_system }, 1, 2, "read-coding-system", 0, 0}; Lisp_Object Fread_coding_system




  (Lisp_Object prompt, Lisp_Object default_coding_system)
{
  Lisp_Object val;
  ptrdiff_t count = SPECPDL_INDEX ();

  if ((((enum Lisp_Type) ((default_coding_system) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
    default_coding_system = SYMBOL_NAME (default_coding_system);
  specbind (builtin_lisp_symbol (289), builtin_lisp_symbol (901));
  val = Fcompleting_read (prompt, globals.f_Vcoding_system_alist, builtin_lisp_symbol (0),
     builtin_lisp_symbol (901), builtin_lisp_symbol (0), builtin_lisp_symbol (279),
     default_coding_system, builtin_lisp_symbol (0));
  unbind_to (count, builtin_lisp_symbol (0));
  return (SCHARS (val) == 0 ? builtin_lisp_symbol (0) : Fintern (val, builtin_lisp_symbol (0)));
}

static struct Lisp_Subr _Alignas (8) Scheck_coding_system = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcheck_coding_system }, 1, 1, "check-coding-system", 0, 0}; Lisp_Object Fcheck_coding_system





  (Lisp_Object coding_system)
{
  Lisp_Object define_form;

  define_form = Fget (coding_system, builtin_lisp_symbol (277));
  if (! ((define_form) == (builtin_lisp_symbol (0))))
    {
      Fput (coding_system, builtin_lisp_symbol (277), builtin_lisp_symbol (0));
      safe_eval (define_form);
    }
  if (!((Fcoding_system_p (coding_system)) == (builtin_lisp_symbol (0))))
    return coding_system;
  xsignal1 (builtin_lisp_symbol (278), coding_system);
}
# 8550 "coding.c"
Lisp_Object
detect_coding_system (const unsigned char *src,
        ptrdiff_t src_chars, ptrdiff_t src_bytes,
        _Bool highest, _Bool multibytep,
        Lisp_Object coding_system)
{
  const unsigned char *src_end = src + src_bytes;
  Lisp_Object attrs, eol_type;
  Lisp_Object val = builtin_lisp_symbol (0);
  struct coding_system coding;
  ptrdiff_t id;
  struct coding_detection_info detect_info;
  enum coding_category base_category;
  _Bool null_byte_found = 0, eight_bit_found = 0;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (958);
  setup_coding_system (coding_system, &coding);
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding.id), 0));
  eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding.id), 2));
  coding_system = AREF (attrs, coding_attr_base_name);

  coding.source = src;
  coding.src_chars = src_chars;
  coding.src_bytes = src_bytes;
  coding.src_multibyte = multibytep;
  coding.consumed = 0;
  coding.mode |= 0x01;
  coding.head_ascii = 0;

  detect_info.checked = detect_info.found = detect_info.rejected = 0;


  base_category = ((AREF (attrs, coding_attr_category)) >> INTTYPEBITS);
  if (base_category == coding_category_undecided)
    {
      enum coding_category category ;
      struct coding_system *this ;
      int c, i;
      _Bool inhibit_nbd = inhibit_flag (coding.spec.undecided.inhibit_nbd,
           globals.f_inhibit_null_byte_detection);
      _Bool inhibit_ied = inhibit_flag (coding.spec.undecided.inhibit_ied,
           globals.f_inhibit_iso_escape_detection);
      _Bool prefer_utf_8 = coding.spec.undecided.prefer_utf_8;


      for (; src < src_end; src++)
 {
   c = *src;
   if (c & 0x80)
     {
       eight_bit_found = 1;
       if (null_byte_found)
  break;
     }
   else if (c < 0x20)
     {
       if ((c == 0x1B || c == 0x0F || c == 0x0E)
    && ! inhibit_ied
    && ! detect_info.checked)
  {
    if (detect_coding_iso_2022 (&coding, &detect_info))
      {

        if (! (detect_info.rejected & (1 << coding_category_iso_7_else)))
   {




     src = src_end;
     coding.head_ascii = src - coding.source;
   }
        detect_info.rejected |= ~((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else));
        break;
      }
  }
       else if (! c && !inhibit_nbd)
  {
    null_byte_found = 1;
    if (eight_bit_found)
      break;
  }
       if (! eight_bit_found)
  coding.head_ascii++;
     }
   else if (! eight_bit_found)
     coding.head_ascii++;
 }

      if (null_byte_found || eight_bit_found
   || coding.head_ascii < coding.src_bytes
   || detect_info.found)
 {
   if (coding.head_ascii == coding.src_bytes)

     for (i = 0; i < coding_category_raw_text; i++)
       {
  category = coding_priorities[i];
  this = coding_categories + category;
  if (detect_info.found & (1 << category))
    break;
       }
   else
     {
       if (null_byte_found)
  {
    detect_info.checked |= ~((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
    detect_info.rejected |= ~((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig));
  }
       else if (prefer_utf_8
         && detect_coding_utf_8 (&coding, &detect_info))
  {
    detect_info.checked |= ~((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));
    detect_info.rejected |= ~((1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig));
  }
       for (i = 0; i < coding_category_raw_text; i++)
  {
    category = coding_priorities[i];
    this = coding_categories + category;

    if (this->id < 0)
      {

        detect_info.rejected |= (1 << category);
      }
    else if (category >= coding_category_raw_text)
      continue;
    else if (detect_info.checked & (1 << category))
      {
        if (highest
     && (detect_info.found & (1 << category)))
   break;
      }
    else if ((*(this->detector)) (&coding, &detect_info)
      && highest
      && (detect_info.found & (1 << category)))
      {
        if (category == coding_category_utf_16_auto)
   {
     if (detect_info.found & (1 << coding_category_utf_16_le))
       category = coding_category_utf_16_le;
     else
       category = coding_category_utf_16_be;
   }
        break;
      }
  }
     }
 }

      if ((detect_info.rejected & ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else) | (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig) | (1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig) | (1 << coding_category_charset) | (1 << coding_category_sjis) | (1 << coding_category_big5) | (1 << coding_category_ccl) | (1 << coding_category_emacs_mule))) == ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else) | (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig) | (1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig) | (1 << coding_category_charset) | (1 << coding_category_sjis) | (1 << coding_category_big5) | (1 << coding_category_ccl) | (1 << coding_category_emacs_mule))
   || null_byte_found)
 {
   detect_info.found = (1 << coding_category_raw_text);
   id = hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), builtin_lisp_symbol (702), ((void*)0));
   val = list1 (((EMACS_INT) (((EMACS_UINT) (id) << INTTYPEBITS) + Lisp_Int0)));
 }
      else if (! detect_info.rejected && ! detect_info.found)
 {
   detect_info.found = ((1 << coding_category_iso_7) | (1 << coding_category_iso_7_tight) | (1 << coding_category_iso_8_1) | (1 << coding_category_iso_8_2) | (1 << coding_category_iso_7_else) | (1 << coding_category_iso_8_else) | (1 << coding_category_utf_8_auto) | (1 << coding_category_utf_8_nosig) | (1 << coding_category_utf_8_sig) | (1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig) | (1 << coding_category_charset) | (1 << coding_category_sjis) | (1 << coding_category_big5) | (1 << coding_category_ccl) | (1 << coding_category_emacs_mule));
   id = coding_categories[coding_category_undecided].id;
   val = list1 (((EMACS_INT) (((EMACS_UINT) (id) << INTTYPEBITS) + Lisp_Int0)));
 }
      else if (highest)
 {
   if (detect_info.found)
     {
       detect_info.found = 1 << category;
       val = list1 (((EMACS_INT) (((EMACS_UINT) (this->id) << INTTYPEBITS) + Lisp_Int0)));
     }
   else
     for (i = 0; i < coding_category_raw_text; i++)
       if (! (detect_info.rejected & (1 << coding_priorities[i])))
  {
    detect_info.found = 1 << coding_priorities[i];
    id = coding_categories[coding_priorities[i]].id;
    val = list1 (((EMACS_INT) (((EMACS_UINT) (id) << INTTYPEBITS) + Lisp_Int0)));
    break;
  }
 }
      else
 {
   int mask = detect_info.rejected | detect_info.found;
   int found = 0;

   for (i = coding_category_raw_text - 1; i >= 0; i--)
     {
       category = coding_priorities[i];
       if (! (mask & (1 << category)))
  {
    found |= 1 << category;
    id = coding_categories[category].id;
    if (id >= 0)
      val = list1 (((EMACS_INT) (((EMACS_UINT) (id) << INTTYPEBITS) + Lisp_Int0)));
  }
     }
   for (i = coding_category_raw_text - 1; i >= 0; i--)
     {
       category = coding_priorities[i];
       if (detect_info.found & (1 << category))
  {
    id = coding_categories[category].id;
    val = Fcons (((EMACS_INT) (((EMACS_UINT) (id) << INTTYPEBITS) + Lisp_Int0)), val);
  }
     }
   detect_info.found |= found;
 }
    }
  else if (base_category == coding_category_utf_8_auto)
    {
      if (detect_coding_utf_8 (&coding, &detect_info))
 {
   struct coding_system *this;

   if (detect_info.found & (1 << coding_category_utf_8_sig))
     this = coding_categories + coding_category_utf_8_sig;
   else
     this = coding_categories + coding_category_utf_8_nosig;
   val = list1 (((EMACS_INT) (((EMACS_UINT) (this->id) << INTTYPEBITS) + Lisp_Int0)));
 }
    }
  else if (base_category == coding_category_utf_16_auto)
    {
      if (detect_coding_utf_16 (&coding, &detect_info))
 {
   struct coding_system *this;

   if (detect_info.found & (1 << coding_category_utf_16_le))
     this = coding_categories + coding_category_utf_16_le;
   else if (detect_info.found & (1 << coding_category_utf_16_be))
     this = coding_categories + coding_category_utf_16_be;
   else if (detect_info.rejected & (1 << coding_category_utf_16_le_nosig))
     this = coding_categories + coding_category_utf_16_be_nosig;
   else
     this = coding_categories + coding_category_utf_16_le_nosig;
   val = list1 (((EMACS_INT) (((EMACS_UINT) (this->id) << INTTYPEBITS) + Lisp_Int0)));
 }
    }
  else
    {
      detect_info.found = 1 << ((AREF (attrs, coding_attr_category)) >> INTTYPEBITS);
      val = list1 (((EMACS_INT) (((EMACS_UINT) (coding.id) << INTTYPEBITS) + Lisp_Int0)));
    }


  {
    int normal_eol = -1, utf_16_be_eol = -1, utf_16_le_eol = -1;
    Lisp_Object tail;

    if (VECTORP (eol_type))
      {
 if (detect_info.found & ~((1 << coding_category_utf_16_auto) | (1 << coding_category_utf_16_be) | (1 << coding_category_utf_16_le) | (1 << coding_category_utf_16_be_nosig) | (1 << coding_category_utf_16_le_nosig)))
   {
     if (null_byte_found)
       normal_eol = 1;
     else
       normal_eol = detect_eol (coding.source, src_bytes,
           coding_category_raw_text);
   }
 if (detect_info.found & ((1 << coding_category_utf_16_be)
     | (1 << coding_category_utf_16_be_nosig)))
   utf_16_be_eol = detect_eol (coding.source, src_bytes,
          coding_category_utf_16_be);
 if (detect_info.found & ((1 << coding_category_utf_16_le)
     | (1 << coding_category_utf_16_le_nosig)))
   utf_16_le_eol = detect_eol (coding.source, src_bytes,
          coding_category_utf_16_le);
      }
    else
      {
 if (((eol_type) == (builtin_lisp_symbol (973))))
   normal_eol = utf_16_be_eol = utf_16_le_eol = 1;
 else if (((eol_type) == (builtin_lisp_symbol (351))))
   normal_eol = utf_16_be_eol = utf_16_le_eol = 4;
 else
   normal_eol = utf_16_be_eol = utf_16_le_eol = 2;
      }

    for (tail = val; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
      {
 enum coding_category category;
 int this_eol;

 id = (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS);
 attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), id), 0));
 category = ((AREF (attrs, coding_attr_category)) >> INTTYPEBITS);
 eol_type = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), id), 2));
 if (VECTORP (eol_type))
   {
     if (category == coding_category_utf_16_be
  || category == coding_category_utf_16_be_nosig)
       this_eol = utf_16_be_eol;
     else if (category == coding_category_utf_16_le
       || category == coding_category_utf_16_le_nosig)
       this_eol = utf_16_le_eol;
     else
       this_eol = normal_eol;

     if (this_eol == 1)
       XSETCAR (tail, AREF (eol_type, 0));
     else if (this_eol == 4)
       XSETCAR (tail, AREF (eol_type, 1));
     else if (this_eol == 2)
       XSETCAR (tail, AREF (eol_type, 2));
     else
       XSETCAR (tail, (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), id)));
   }
 else
   XSETCAR (tail, (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), id)));
      }
  }

  return (highest ? ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car : builtin_lisp_symbol (0)) : val);
}


static struct Lisp_Subr _Alignas (8) Sdetect_coding_region = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Fdetect_coding_region }, 2, 3, "detect-coding-region", 0, 0}; Lisp_Object Fdetect_coding_region
# 8881 "coding.c"
  (Lisp_Object start, Lisp_Object end, Lisp_Object highest)
{
  ptrdiff_t from, to;
  ptrdiff_t from_byte, to_byte;

  validate_region (&start, &end);
  from = ((start) >> INTTYPEBITS), to = ((end) >> INTTYPEBITS);
  from_byte = (buf_charpos_to_bytepos (current_buffer, from));
  to_byte = (buf_charpos_to_bytepos (current_buffer, to));

  if (from < (current_buffer->text->gpt) && to >= (current_buffer->text->gpt))
    move_gap_both (to, to_byte);

  return detect_coding_system ((((from_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (from_byte) + (current_buffer->text->beg) - ((1))),
          to - from, to_byte - from_byte,
          !((highest) == (builtin_lisp_symbol (0))),
          !((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))),

          builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Sdetect_coding_string = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fdetect_coding_string }, 1, 2, "detect-coding-string", 0, 0}; Lisp_Object Fdetect_coding_string
# 8916 "coding.c"
  (Lisp_Object string, Lisp_Object highest)
{
  CHECK_STRING (string);

  return detect_coding_system (SDATA (string),
          SCHARS (string), SBYTES (string),
          !((highest) == (builtin_lisp_symbol (0))), STRING_MULTIBYTE (string),
          builtin_lisp_symbol (0));
}


static _Bool
char_encodable_p (int c, Lisp_Object attrs)
{
  Lisp_Object tail;
  struct charset *charset;
  Lisp_Object translation_table;

  translation_table = AREF (attrs, coding_attr_trans_tbl);
  if (! ((translation_table) == (builtin_lisp_symbol (0))))
    c = translate_char (translation_table, c);
  for (tail = AREF (attrs, coding_attr_charset_list);
       (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
      if ((((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) || ((((charset)->unified_p) || (charset)->method == CHARSET_METHOD_SUBSET || (charset)->method == CHARSET_METHOD_SUPERSET) ? encode_char ((charset), (c)) != (charset)->invalid_code : ((((c)) < 0x10000 ? (charset)->fast_map[((c)) >> 10] & (1 << ((((c)) >> 7) & 7)) : (charset)->fast_map[(((c)) >> 15) + 62] & (1 << ((((c)) >> 12) & 7))) && ((charset)->method == CHARSET_METHOD_OFFSET ? (c) >= (charset)->min_char && (c) <= (charset)->max_char : ((charset)->method == CHARSET_METHOD_MAP && (charset)->compact_codes_p && CHAR_TABLE_P ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)))) ? ! ((CHAR_TABLE_REF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_encoder)), (c))) == (builtin_lisp_symbol (0))) : encode_char ((charset), (c)) != (charset)->invalid_code)))))
 break;
    }
  return (! ((tail) == (builtin_lisp_symbol (0))));
}
# 8954 "coding.c"
static struct Lisp_Subr _Alignas (8) Sfind_coding_systems_region_internal = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Ffind_coding_systems_region_internal }, 2, 3, "find-coding-systems-region-internal", 0, 0}; Lisp_Object Ffind_coding_systems_region_internal



  (Lisp_Object start, Lisp_Object end, Lisp_Object exclude)
{
  Lisp_Object coding_attrs_list, safe_codings;
  ptrdiff_t start_byte, end_byte;
  const unsigned char *p, *pbeg, *pend;
  int c;
  Lisp_Object tail, elt, work_table;

  if (STRINGP (start))
    {
      if (!STRING_MULTIBYTE (start)
   || SCHARS (start) == SBYTES (start))
 return builtin_lisp_symbol (901);
      start_byte = 0;
      end_byte = SBYTES (start);
    }
  else
    {
      do { if (((((enum Lisp_Type) (((start)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((start)) == Lisp_Misc_Marker)) ((start) = make_natnum (marker_position (start))); else ((((((enum Lisp_Type) ((start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), start)); } while (0);
      do { if (((((enum Lisp_Type) (((end)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((end)) == Lisp_Misc_Marker)) ((end) = make_natnum (marker_position (end))); else ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), end)); } while (0);
      if (((start) >> INTTYPEBITS) < (1) || ((end) >> INTTYPEBITS) > (current_buffer->text->z) || ((start) >> INTTYPEBITS) > ((end) >> INTTYPEBITS))
 args_out_of_range (start, end);
      if (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
 return builtin_lisp_symbol (901);
      start_byte = (buf_charpos_to_bytepos (current_buffer, ((start) >> INTTYPEBITS)));
      end_byte = (buf_charpos_to_bytepos (current_buffer, ((end) >> INTTYPEBITS)));
      if (((end) >> INTTYPEBITS) - ((start) >> INTTYPEBITS) == end_byte - start_byte)
 return builtin_lisp_symbol (901);

      if (((start) >> INTTYPEBITS) < (current_buffer->text->gpt) && ((end) >> INTTYPEBITS) > (current_buffer->text->gpt))
 {
   if (((current_buffer->text->gpt) - ((start) >> INTTYPEBITS)) < (((end) >> INTTYPEBITS) - (current_buffer->text->gpt)))
     move_gap_both (((start) >> INTTYPEBITS), start_byte);
   else
     move_gap_both (((end) >> INTTYPEBITS), end_byte);
 }
    }

  coding_attrs_list = builtin_lisp_symbol (0);
  for (tail = globals.f_Vcoding_system_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    if (((exclude) == (builtin_lisp_symbol (0)))
 || ((Fmemq ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, exclude)) == (builtin_lisp_symbol (0))))
      {
 Lisp_Object attrs;

 attrs = AREF ((Fgethash ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, Vcoding_system_hash_table, builtin_lisp_symbol (0))), 0);
 if ((((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) == (AREF (attrs, coding_attr_base_name))))
   {
     ASET (attrs, coding_attr_trans_tbl,
    get_translation_table (attrs, 1, ((void*)0)));
     coding_attrs_list = Fcons (attrs, coding_attrs_list);
   }
      }

  if (STRINGP (start))
    p = pbeg = SDATA (start);
  else
    p = pbeg = (((start_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (start_byte) + (current_buffer->text->beg) - ((1)));
  pend = p + (end_byte - start_byte);

  while (p < pend && (((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))) p++;
  while (p < pend && (((sizeof ((*(pend - 1)) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*(pend - 1)) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*(pend - 1)) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*(pend - 1)) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))) pend--;

  work_table = Fmake_char_table (builtin_lisp_symbol (0), builtin_lisp_symbol (0));
  while (p < pend)
    {
      if ((((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
 p++;
      else
 {
   c = (!((p)[0] & 0x80) ? *(p)++ : ! ((p)[0] & 0x20) ? ((p) += 2, ((((p)[-2] & 0x1F) << 6) | ((p)[-1] & 0x3F) | ((unsigned char) ((p)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((p) += 3, ((((p)[-3] & 0x0F) << 12) | (((p)[-2] & 0x3F) << 6) | ((p)[-1] & 0x3F))) : string_char ((p), &(p), ((void*)0)));
   if (!((char_table_ref (work_table, c)) == (builtin_lisp_symbol (0))))

     continue;

   charset_map_loaded = 0;
   for (tail = coding_attrs_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons);)
     {
       elt = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
       if (((elt) == (builtin_lisp_symbol (0))))
  tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr;
       else if (char_encodable_p (c, elt))
  tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr;
       else if ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
  {
    XSETCAR (tail, (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->car);
    XSETCDR (tail, (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->u.cdr);
  }
       else
  {
    XSETCAR (tail, builtin_lisp_symbol (0));
    tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr;
  }
     }
   if (charset_map_loaded)
     {
       ptrdiff_t p_offset = p - pbeg, pend_offset = pend - pbeg;

       if (STRINGP (start))
  pbeg = SDATA (start);
       else
  pbeg = (((start_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (start_byte) + (current_buffer->text->beg) - ((1)));
       p = pbeg + p_offset;
       pend = pbeg + pend_offset;
     }
   char_table_set (work_table, c, builtin_lisp_symbol (901));
 }
    }

  safe_codings = list2 (builtin_lisp_symbol (788), builtin_lisp_symbol (702));
  for (tail = coding_attrs_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    if (! (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) == (builtin_lisp_symbol (0))))
      safe_codings = Fcons (AREF ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, coding_attr_base_name), safe_codings);

  return safe_codings;
}


static struct Lisp_Subr _Alignas (8) Sunencodable_char_position = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a5 = Funencodable_char_position }, 3, 5, "unencodable-char-position", 0, 0}; Lisp_Object Funencodable_char_position
# 9089 "coding.c"
  (Lisp_Object start, Lisp_Object end, Lisp_Object coding_system,
   Lisp_Object count, Lisp_Object string)
{
  EMACS_INT n;
  struct coding_system coding;
  Lisp_Object attrs, charset_list, translation_table;
  Lisp_Object positions;
  ptrdiff_t from, to;
  const unsigned char *p, *stop, *pend;
  _Bool ascii_compatible;

  setup_coding_system (Fcheck_coding_system (coding_system), &coding);
  attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), coding.id), 0));
  if (((AREF (attrs, coding_attr_type)) == (builtin_lisp_symbol (788))))
    return builtin_lisp_symbol (0);
  ascii_compatible = ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0)));
  charset_list = AREF (attrs, coding_attr_charset_list);
  translation_table = get_translation_table (attrs, 1, ((void*)0));

  if (((string) == (builtin_lisp_symbol (0))))
    {
      validate_region (&start, &end);
      from = ((start) >> INTTYPEBITS);
      to = ((end) >> INTTYPEBITS);
      if (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)))
   || (ascii_compatible
       && (to - from) == ((buf_charpos_to_bytepos (current_buffer, to)) - ((buf_charpos_to_bytepos (current_buffer, from))))))
 return builtin_lisp_symbol (0);
      p = (((from) >= (current_buffer->text->gpt) ? (current_buffer->text->gap_size) : 0) + buf_charpos_to_bytepos (current_buffer, from) + (current_buffer->text->beg) - ((1)));
      pend = (((to) >= (current_buffer->text->gpt) ? (current_buffer->text->gap_size) : 0) + buf_charpos_to_bytepos (current_buffer, to) + (current_buffer->text->beg) - ((1)));
      if (from < (current_buffer->text->gpt) && to >= (current_buffer->text->gpt))
 stop = (current_buffer->text->beg + current_buffer->text->gpt_byte - ((1)));
      else
 stop = pend;
    }
  else
    {
      CHECK_STRING (string);
      validate_subarray (string, start, end, SCHARS (string), &from, &to);
      if (! STRING_MULTIBYTE (string))
 return builtin_lisp_symbol (0);
      p = SDATA (string) + string_char_to_byte (string, from);
      stop = pend = SDATA (string) + string_char_to_byte (string, to);
      if (ascii_compatible && (to - from) == (pend - p))
 return builtin_lisp_symbol (0);
    }

  if (((count) == (builtin_lisp_symbol (0))))
    n = 1;
  else
    {
      CHECK_NATNUM (count);
      n = ((count) >> INTTYPEBITS);
    }

  positions = builtin_lisp_symbol (0);
  charset_map_loaded = 0;
  while (1)
    {
      int c;

      if (ascii_compatible)
 while (p < stop && (((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
   p++, from++;
      if (p >= stop)
 {
   if (p >= pend)
     break;
   stop = pend;
   p = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
 }

      c = (!((p)[0] & 0x80) ? *(p)++ : ! ((p)[0] & 0x20) ? ((p) += 2, ((((p)[-2] & 0x1F) << 6) | ((p)[-1] & 0x3F) | ((unsigned char) ((p)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((p) += 3, ((((p)[-3] & 0x0F) << 12) | (((p)[-2] & 0x3F) << 6) | ((p)[-1] & 0x3F))) : string_char ((p), &(p), ((void*)0)));
      if (! ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && ascii_compatible)
   && ! char_charset (translate_char (translation_table, c),
        charset_list, ((void*)0)))
 {
   positions = Fcons (((EMACS_INT) (((EMACS_UINT) (from) << INTTYPEBITS) + Lisp_Int0)), positions);
   n--;
   if (n == 0)
     break;
 }

      from++;
      if (charset_map_loaded && ((string) == (builtin_lisp_symbol (0))))
 {
   p = (((from) >= (current_buffer->text->gpt) ? (current_buffer->text->gap_size) : 0) + buf_charpos_to_bytepos (current_buffer, from) + (current_buffer->text->beg) - ((1)));
   pend = (((to) >= (current_buffer->text->gpt) ? (current_buffer->text->gap_size) : 0) + buf_charpos_to_bytepos (current_buffer, to) + (current_buffer->text->beg) - ((1)));
   if (from < (current_buffer->text->gpt) && to >= (current_buffer->text->gpt))
     stop = (current_buffer->text->beg + current_buffer->text->gpt_byte - ((1)));
   else
     stop = pend;
   charset_map_loaded = 0;
 }
    }

  return (((count) == (builtin_lisp_symbol (0))) ? Fcar (positions) : Fnreverse (positions));
}


static struct Lisp_Subr _Alignas (8) Scheck_coding_systems_region = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Fcheck_coding_systems_region }, 3, 3, "check-coding-systems-region", 0, 0}; Lisp_Object Fcheck_coding_systems_region
# 9210 "coding.c"
  (Lisp_Object start, Lisp_Object end, Lisp_Object coding_system_list)
{
  Lisp_Object list;
  ptrdiff_t start_byte, end_byte;
  ptrdiff_t pos;
  const unsigned char *p, *pbeg, *pend;
  int c;
  Lisp_Object tail, elt, attrs;

  if (STRINGP (start))
    {
      if (!STRING_MULTIBYTE (start)
   || SCHARS (start) == SBYTES (start))
 return builtin_lisp_symbol (0);
      start_byte = 0;
      end_byte = SBYTES (start);
      pos = 0;
    }
  else
    {
      do { if (((((enum Lisp_Type) (((start)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((start)) == Lisp_Misc_Marker)) ((start) = make_natnum (marker_position (start))); else ((((((enum Lisp_Type) ((start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), start)); } while (0);
      do { if (((((enum Lisp_Type) (((end)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((end)) == Lisp_Misc_Marker)) ((end) = make_natnum (marker_position (end))); else ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), end)); } while (0);
      if (((start) >> INTTYPEBITS) < (1) || ((end) >> INTTYPEBITS) > (current_buffer->text->z) || ((start) >> INTTYPEBITS) > ((end) >> INTTYPEBITS))
 args_out_of_range (start, end);
      if (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
 return builtin_lisp_symbol (0);
      start_byte = (buf_charpos_to_bytepos (current_buffer, ((start) >> INTTYPEBITS)));
      end_byte = (buf_charpos_to_bytepos (current_buffer, ((end) >> INTTYPEBITS)));
      if (((end) >> INTTYPEBITS) - ((start) >> INTTYPEBITS) == end_byte - start_byte)
 return builtin_lisp_symbol (0);

      if (((start) >> INTTYPEBITS) < (current_buffer->text->gpt) && ((end) >> INTTYPEBITS) > (current_buffer->text->gpt))
 {
   if (((current_buffer->text->gpt) - ((start) >> INTTYPEBITS)) < (((end) >> INTTYPEBITS) - (current_buffer->text->gpt)))
     move_gap_both (((start) >> INTTYPEBITS), start_byte);
   else
     move_gap_both (((end) >> INTTYPEBITS), end_byte);
 }
      pos = ((start) >> INTTYPEBITS);
    }

  list = builtin_lisp_symbol (0);
  for (tail = coding_system_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      elt = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
      attrs = AREF ((Fgethash (elt, Vcoding_system_hash_table, builtin_lisp_symbol (0))), 0);
      ASET (attrs, coding_attr_trans_tbl,
     get_translation_table (attrs, 1, ((void*)0)));
      list = Fcons (list2 (elt, attrs), list);
    }

  if (STRINGP (start))
    p = pbeg = SDATA (start);
  else
    p = pbeg = (((start_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (start_byte) + (current_buffer->text->beg) - ((1)));
  pend = p + (end_byte - start_byte);

  while (p < pend && (((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))) p++, pos++;
  while (p < pend && (((sizeof ((*(pend - 1)) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*(pend - 1)) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*(pend - 1)) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*(pend - 1)) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))) pend--;

  while (p < pend)
    {
      if ((((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
 p++;
      else
 {
   c = (!((p)[0] & 0x80) ? *(p)++ : ! ((p)[0] & 0x20) ? ((p) += 2, ((((p)[-2] & 0x1F) << 6) | ((p)[-1] & 0x3F) | ((unsigned char) ((p)[-2]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((p) += 3, ((((p)[-3] & 0x0F) << 12) | (((p)[-2] & 0x3F) << 6) | ((p)[-1] & 0x3F))) : string_char ((p), &(p), ((void*)0)));

   charset_map_loaded = 0;
   for (tail = list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
     {
       elt = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr;
       if (! char_encodable_p (c, (((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car))
  XSETCDR (elt, Fcons (((EMACS_INT) (((EMACS_UINT) (pos) << INTTYPEBITS) + Lisp_Int0)), (((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr));
     }
   if (charset_map_loaded)
     {
       ptrdiff_t p_offset = p - pbeg, pend_offset = pend - pbeg;

       if (STRINGP (start))
  pbeg = SDATA (start);
       else
  pbeg = (((start_byte) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (start_byte) + (current_buffer->text->beg) - ((1)));
       p = pbeg + p_offset;
       pend = pbeg + pend_offset;
     }
 }
      pos++;
    }

  tail = list;
  list = builtin_lisp_symbol (0);
  for (; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      elt = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
      if ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 list = Fcons (Fcons ((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car, Fnreverse ((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->u.cdr)),
        list);
    }

  return list;
}


static Lisp_Object
code_convert_region (Lisp_Object start, Lisp_Object end,
       Lisp_Object coding_system, Lisp_Object dst_object,
       _Bool encodep, _Bool norecord)
{
  struct coding_system coding;
  ptrdiff_t from, from_byte, to, to_byte;
  Lisp_Object src_object;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (702);
  else
    do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)) < 0 && ((Fcheck_coding_system (coding_system)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  src_object = Fcurrent_buffer ();
  if (((dst_object) == (builtin_lisp_symbol (0))))
    dst_object = src_object;
  else if (! ((dst_object) == (builtin_lisp_symbol (901))))
    CHECK_BUFFER (dst_object);

  validate_region (&start, &end);
  from = ((start) >> INTTYPEBITS);
  from_byte = (buf_charpos_to_bytepos (current_buffer, from));
  to = ((end) >> INTTYPEBITS);
  to_byte = (buf_charpos_to_bytepos (current_buffer, to));

  setup_coding_system (coding_system, &coding);
  coding.mode |= 0x01;

  if (BUFFERP (dst_object) && !((dst_object) == (src_object)))
    {
      struct buffer *buf = XBUFFER (dst_object);
      ptrdiff_t buf_pt = (buf == current_buffer ? (current_buffer->pt + 0) : ((((buf)-> pt_marker_)) == (builtin_lisp_symbol (0))) ? buf->pt : marker_position (((buf)-> pt_marker_)));

      invalidate_buffer_caches (buf, buf_pt, buf_pt);
    }

  if (encodep)
    encode_coding_object (&coding, src_object, from, from_byte, to, to_byte,
     dst_object);
  else
    decode_coding_object (&coding, src_object, from, from_byte, to, to_byte,
     dst_object);
  if (! norecord)
    globals.f_Vlast_coding_system_used = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), coding.id));

  return (BUFFERP (dst_object)
   ? ((EMACS_INT) (((EMACS_UINT) (coding.produced_char) << INTTYPEBITS) + Lisp_Int0))
   : coding.dst_object);
}


static struct Lisp_Subr _Alignas (8) Sdecode_coding_region = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a4 = Fdecode_coding_region }, 3, 4, "decode-coding-region", "r\nzCoding system: ", 0}; Lisp_Object Fdecode_coding_region
# 9382 "coding.c"
  (Lisp_Object start, Lisp_Object end, Lisp_Object coding_system, Lisp_Object destination)
{
  return code_convert_region (start, end, coding_system, destination, 0, 0);
}

static struct Lisp_Subr _Alignas (8) Sencode_coding_region = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a4 = Fencode_coding_region }, 3, 4, "encode-coding-region", "r\nzCoding system: ", 0}; Lisp_Object Fencode_coding_region
# 9404 "coding.c"
  (Lisp_Object start, Lisp_Object end, Lisp_Object coding_system, Lisp_Object destination)
{
  return code_convert_region (start, end, coding_system, destination, 1, 0);
}

Lisp_Object
code_convert_string (Lisp_Object string, Lisp_Object coding_system,
       Lisp_Object dst_object, _Bool encodep, _Bool nocopy,
       _Bool norecord)
{
  struct coding_system coding;
  ptrdiff_t chars, bytes;

  CHECK_STRING (string);
  if (((coding_system) == (builtin_lisp_symbol (0))))
    {
      if (! norecord)
 globals.f_Vlast_coding_system_used = builtin_lisp_symbol (702);
      if (((dst_object) == (builtin_lisp_symbol (0))))
 return (nocopy ? Fcopy_sequence (string) : string);
    }

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (702);
  else
    do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)) < 0 && ((Fcheck_coding_system (coding_system)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  if (((dst_object) == (builtin_lisp_symbol (0))))
    dst_object = builtin_lisp_symbol (901);
  else if (! ((dst_object) == (builtin_lisp_symbol (901))))
    CHECK_BUFFER (dst_object);

  setup_coding_system (coding_system, &coding);
  coding.mode |= 0x01;
  chars = SCHARS (string);
  bytes = SBYTES (string);

  if (BUFFERP (dst_object))
    {
      struct buffer *buf = XBUFFER (dst_object);
      ptrdiff_t buf_pt = (buf == current_buffer ? (current_buffer->pt + 0) : ((((buf)-> pt_marker_)) == (builtin_lisp_symbol (0))) ? buf->pt : marker_position (((buf)-> pt_marker_)));

      invalidate_buffer_caches (buf, buf_pt, buf_pt);
    }

  if (encodep)
    encode_coding_object (&coding, string, 0, 0, chars, bytes, dst_object);
  else
    decode_coding_object (&coding, string, 0, 0, chars, bytes, dst_object);
  if (! norecord)
    globals.f_Vlast_coding_system_used = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), coding.id));

  return (BUFFERP (dst_object)
   ? ((EMACS_INT) (((EMACS_UINT) (coding.produced_char) << INTTYPEBITS) + Lisp_Int0))
   : coding.dst_object);
}
# 9467 "coding.c"
Lisp_Object
code_convert_string_norecord (Lisp_Object string, Lisp_Object coding_system,
         _Bool encodep)
{
  return code_convert_string (string, coding_system, builtin_lisp_symbol (901), encodep, 0, 1);
}



Lisp_Object
decode_file_name (Lisp_Object fname)
{
# 9487 "coding.c"
  if (! ((globals.f_Vfile_name_coding_system) == (builtin_lisp_symbol (0))))
    return code_convert_string_norecord (fname, globals.f_Vfile_name_coding_system, 0);
  else if (! ((globals.f_Vdefault_file_name_coding_system) == (builtin_lisp_symbol (0))))
    return code_convert_string_norecord (fname,
      globals.f_Vdefault_file_name_coding_system, 0);
  else
    return fname;

}

Lisp_Object
encode_file_name (Lisp_Object fname)
{




  if (!STRING_MULTIBYTE (fname))
    return fname;
# 9514 "coding.c"
  if (! ((globals.f_Vfile_name_coding_system) == (builtin_lisp_symbol (0))))
    return code_convert_string_norecord (fname, globals.f_Vfile_name_coding_system, 1);
  else if (! ((globals.f_Vdefault_file_name_coding_system) == (builtin_lisp_symbol (0))))
    return code_convert_string_norecord (fname,
      globals.f_Vdefault_file_name_coding_system, 1);
  else
    return fname;

}

static struct Lisp_Subr _Alignas (8) Sdecode_coding_string = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a4 = Fdecode_coding_string }, 2, 4, "decode-coding-string", 0, 0}; Lisp_Object Fdecode_coding_string
# 9538 "coding.c"
  (Lisp_Object string, Lisp_Object coding_system, Lisp_Object nocopy, Lisp_Object buffer)
{
  return code_convert_string (string, coding_system, buffer,
         0, ! ((nocopy) == (builtin_lisp_symbol (0))), 0);
}

static struct Lisp_Subr _Alignas (8) Sencode_coding_string = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a4 = Fencode_coding_string }, 2, 4, "encode-coding-string", 0, 0}; Lisp_Object Fencode_coding_string
# 9558 "coding.c"
  (Lisp_Object string, Lisp_Object coding_system, Lisp_Object nocopy, Lisp_Object buffer)
{
  return code_convert_string (string, coding_system, buffer,
         1, ! ((nocopy) == (builtin_lisp_symbol (0))), 0);
}


static struct Lisp_Subr _Alignas (8) Sdecode_sjis_char = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fdecode_sjis_char }, 1, 1, "decode-sjis-char", 0, 0}; Lisp_Object Fdecode_sjis_char


  (Lisp_Object code)
{
  Lisp_Object spec, attrs, val;
  struct charset *charset_roman, *charset_kanji, *charset_kana, *charset;
  EMACS_INT ch;
  int c;

  CHECK_NATNUM (code);
  ch = ((code) >> INTTYPEBITS);
  do { spec = (Fgethash (Vsjis_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (Vsjis_coding_system); spec = (Fgethash (Vsjis_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (Vsjis_coding_system)); } while (0);
  attrs = AREF (spec, 0);

  if ((((sizeof ((ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))
      && ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0))))
    return code;

  val = AREF (attrs, coding_attr_charset_list);
  charset_roman = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kana = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_kanji = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));

  if (ch <= 0x7F)
    {
      c = ch;
      charset = charset_roman;
    }
  else if (ch >= 0xA0 && ch < 0xDF)
    {
      c = ch - 0x80;
      charset = charset_kana;
    }
  else
    {
      EMACS_INT c1 = ch >> 8;
      int c2 = ch & 0xFF;

      if (c1 < 0x81 || (c1 > 0x9F && c1 < 0xE0) || c1 > 0xEF
   || c2 < 0x40 || c2 == 0x7F || c2 > 0xFC)
 error ("Invalid code: %""l""d", ch);
      c = ch;
      do { int s1, s2, j1, j2; s1 = (c) >> 8, s2 = (c) & 0xFF; if (s2 >= 0x9F) (j1 = s1 * 2 - (s1 >= 0xE0 ? 0x160 : 0xE0), j2 = s2 - 0x7E); else (j1 = s1 * 2 - ((s1 >= 0xE0) ? 0x161 : 0xE1), j2 = s2 - ((s2 >= 0x7F) ? 0x20 : 0x1F)); (c) = (j1 << 8) | j2; } while (0);
      charset = charset_kanji;
    }
  c = (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (c) : ((c) < (charset)->min_code || (c) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (c)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((c) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (c))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (c) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (c))) : decode_char ((charset), (c)));
  if (c < 0)
    error ("Invalid code: %""l""d", ch);
  return ((EMACS_INT) (((EMACS_UINT) (c) << INTTYPEBITS) + Lisp_Int0));
}


static struct Lisp_Subr _Alignas (8) Sencode_sjis_char = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fencode_sjis_char }, 1, 1, "encode-sjis-char", 0, 0}; Lisp_Object Fencode_sjis_char


  (Lisp_Object ch)
{
  Lisp_Object spec, attrs, charset_list;
  int c;
  struct charset *charset;
  unsigned code;

  (((NATNUMP (ch) && ((ch) >> INTTYPEBITS) <= 0x3FFFFF)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (260), ch));
  c = ((ch) >> INTTYPEBITS);
  do { spec = (Fgethash (Vsjis_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (Vsjis_coding_system); spec = (Fgethash (Vsjis_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (Vsjis_coding_system)); } while (0);
  attrs = AREF (spec, 0);

  if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))
      && ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0))))
    return ch;

  charset_list = AREF (attrs, coding_attr_charset_list);
  charset = char_charset (c, charset_list, &code);
  if (code == ((charset)->invalid_code))
    error ("Can't encode by shift_jis encoding: %c", c);
  do { int s1, s2, j1, j2; j1 = (code) >> 8, j2 = (code) & 0xFF; if (j1 & 1) (s1 = j1 / 2 + ((j1 < 0x5F) ? 0x71 : 0xB1), s2 = j2 + ((j2 >= 0x60) ? 0x20 : 0x1F)); else (s1 = j1 / 2 + ((j1 < 0x5F) ? 0x70 : 0xB0), s2 = j2 + 0x7E); (code) = (s1 << 8) | s2; } while (0);

  return ((EMACS_INT) (((EMACS_UINT) (code) << INTTYPEBITS) + Lisp_Int0));
}

static struct Lisp_Subr _Alignas (8) Sdecode_big5_char = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fdecode_big5_char }, 1, 1, "decode-big5-char", 0, 0}; Lisp_Object Fdecode_big5_char


  (Lisp_Object code)
{
  Lisp_Object spec, attrs, val;
  struct charset *charset_roman, *charset_big5, *charset;
  EMACS_INT ch;
  int c;

  CHECK_NATNUM (code);
  ch = ((code) >> INTTYPEBITS);
  do { spec = (Fgethash (Vbig5_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (Vbig5_coding_system); spec = (Fgethash (Vbig5_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (Vbig5_coding_system)); } while (0);
  attrs = AREF (spec, 0);

  if ((((sizeof ((ch) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((ch) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((ch) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((ch) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))
      && ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0))))
    return code;

  val = AREF (attrs, coding_attr_charset_list);
  charset_roman = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS))), val = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr;
  charset_big5 = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS)));

  if (ch <= 0x7F)
    {
      c = ch;
      charset = charset_roman;
    }
  else
    {
      EMACS_INT b1 = ch >> 8;
      int b2 = ch & 0x7F;
      if (b1 < 0xA1 || b1 > 0xFE
   || b2 < 0x40 || (b2 > 0x7E && b2 < 0xA1) || b2 > 0xFE)
 error ("Invalid code: %""l""d", ch);
      c = ch;
      charset = charset_big5;
    }
  c = (((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)) && (charset)->ascii_compatible_p) ? (c) : ((c) < (charset)->min_code || (c) > (charset)->max_code) ? -1 : (charset)->unified_p ? decode_char ((charset), (c)) : (charset)->method == CHARSET_METHOD_OFFSET ? ((charset)->code_linear_p ? (int) ((c) - (charset)->min_code) + (charset)->code_offset : decode_char ((charset), (c))) : (charset)->method == CHARSET_METHOD_MAP ? (((charset)->code_linear_p && VECTORP ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)))) ? ((AREF ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_decoder)), (c) - (charset)->min_code)) >> INTTYPEBITS) : decode_char ((charset), (c))) : decode_char ((charset), (c)));
  if (c < 0)
    error ("Invalid code: %""l""d", ch);
  return ((EMACS_INT) (((EMACS_UINT) (c) << INTTYPEBITS) + Lisp_Int0));
}

static struct Lisp_Subr _Alignas (8) Sencode_big5_char = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fencode_big5_char }, 1, 1, "encode-big5-char", 0, 0}; Lisp_Object Fencode_big5_char


  (Lisp_Object ch)
{
  Lisp_Object spec, attrs, charset_list;
  struct charset *charset;
  int c;
  unsigned code;

  (((NATNUMP (ch) && ((ch) >> INTTYPEBITS) <= 0x3FFFFF)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (260), ch));
  c = ((ch) >> INTTYPEBITS);
  do { spec = (Fgethash (Vbig5_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (Vbig5_coding_system); spec = (Fgethash (Vbig5_coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (Vbig5_coding_system)); } while (0);
  attrs = AREF (spec, 0);
  if ((((sizeof ((c) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((c) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0))
      && ! ((AREF (attrs, coding_attr_ascii_compat)) == (builtin_lisp_symbol (0))))
    return ch;

  charset_list = AREF (attrs, coding_attr_charset_list);
  charset = char_charset (c, charset_list, &code);
  if (code == ((charset)->invalid_code))
    error ("Can't encode by Big5 encoding: %c", c);

  return ((EMACS_INT) (((EMACS_UINT) (code) << INTTYPEBITS) + Lisp_Int0));
}


static struct Lisp_Subr _Alignas (8) Sset_terminal_coding_system_internal = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fset_terminal_coding_system_internal }, 1, 2, "set-terminal-coding-system-internal", 0, 0}; Lisp_Object Fset_terminal_coding_system_internal


  (Lisp_Object coding_system, Lisp_Object terminal)
{
  struct terminal *term = decode_live_terminal (terminal);
  struct coding_system *terminal_coding = ((term)->terminal_coding);
  (((((enum Lisp_Type) ((coding_system) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), coding_system));
  setup_coding_system (Fcheck_coding_system (coding_system), terminal_coding);

  terminal_coding->mode |= 0x10;

  terminal_coding->common_flags &= ~0x0001;
  terminal_coding->src_multibyte = 1;
  terminal_coding->dst_multibyte = 0;
  tset_charset_list
    (term, (terminal_coding->common_flags & 0x0800
     ? coding_charset_list (terminal_coding)
     : list1 (((EMACS_INT) (((EMACS_UINT) (charset_ascii) << INTTYPEBITS) + Lisp_Int0)))));
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sset_safe_terminal_coding_system_internal = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fset_safe_terminal_coding_system_internal }, 1, 1, "set-safe-terminal-coding-system-internal", 0, 0}; Lisp_Object Fset_safe_terminal_coding_system_internal



  (Lisp_Object coding_system)
{
  (((((enum Lisp_Type) ((coding_system) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), coding_system));
  setup_coding_system (Fcheck_coding_system (coding_system),
         &safe_terminal_coding);

  safe_terminal_coding.common_flags &= ~0x0001;
  safe_terminal_coding.src_multibyte = 1;
  safe_terminal_coding.dst_multibyte = 0;
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sterminal_coding_system = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fterminal_coding_system }, 0, 1, "terminal-coding-system", 0, 0}; Lisp_Object Fterminal_coding_system




  (Lisp_Object terminal)
{
  struct coding_system *terminal_coding
    = ((decode_live_terminal (terminal))->terminal_coding);
  Lisp_Object coding_system = (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), terminal_coding->id));


  return (! ((coding_system) == (builtin_lisp_symbol (958))) ? coding_system : builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Sset_keyboard_coding_system_internal = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fset_keyboard_coding_system_internal }, 1, 2, "set-keyboard-coding-system-internal", 0, 0}; Lisp_Object Fset_keyboard_coding_system_internal


  (Lisp_Object coding_system, Lisp_Object terminal)
{
  struct terminal *t = decode_live_terminal (terminal);
  (((((enum Lisp_Type) ((coding_system) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), coding_system));
  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (702);
  else
    Fcheck_coding_system (coding_system);
  setup_coding_system (coding_system, ((t)->keyboard_coding));

  ((t)->keyboard_coding)->common_flags
    &= ~0x0001;
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Skeyboard_coding_system = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fkeyboard_coding_system }, 0, 1, "keyboard-coding-system", 0, 0}; Lisp_Object Fkeyboard_coding_system


  (Lisp_Object terminal)
{
  return (HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), ((decode_live_terminal (terminal))->keyboard_coding)->id));

}


static struct Lisp_Subr _Alignas (8) Sfind_operation_coding_system = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .aMANY = Ffind_operation_coding_system }, 1, MANY, "find-operation-coding-system", 0, 0}; Lisp_Object Ffind_operation_coding_system
# 9839 "coding.c"
  (ptrdiff_t nargs, Lisp_Object *args)
{
  Lisp_Object operation, target_idx, target, val;
  register Lisp_Object chain;

  if (nargs < 2)
    error ("Too few arguments");
  operation = args[0];
  if (!(((enum Lisp_Type) ((operation) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)
      || (target_idx = Fget (operation, builtin_lisp_symbol (902)), !NATNUMP (target_idx)))
    error ("Invalid first argument");
  if (nargs <= 1 + ((target_idx) >> INTTYPEBITS))
    error ("Too few arguments for operation `%s'",
    SDATA (SYMBOL_NAME (operation)));
  target = args[((target_idx) >> INTTYPEBITS) + 1];
  if (!(STRINGP (target)
 || (((operation) == (builtin_lisp_symbol (553))) && (((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
     && STRINGP ((((void) (0 && ((((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((target) - (Lisp_Cons))))->car) && BUFFERP ((((void) (0 && ((((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((target) - (Lisp_Cons))))->u.cdr))
 || (((operation) == (builtin_lisp_symbol (720))) && ((((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))))
    error ("Invalid argument %""l""d of operation `%s'",
    ((target_idx) >> INTTYPEBITS) + 1, SDATA (SYMBOL_NAME (operation)));
  if ((((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
    target = (((void) (0 && ((((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((target) - (Lisp_Cons))))->car;

  chain = ((((operation) == (builtin_lisp_symbol (553)))
     || ((operation) == (builtin_lisp_symbol (1040))))
    ? globals.f_Vfile_coding_system_alist
    : (((operation) == (builtin_lisp_symbol (720)))
       ? globals.f_Vnetwork_coding_system_alist
       : globals.f_Vprocess_coding_system_alist));
  if (((chain) == (builtin_lisp_symbol (0))))
    return builtin_lisp_symbol (0);

  for (; (((enum Lisp_Type) ((chain) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); chain = (((void) (0 && ((((enum Lisp_Type) ((chain) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((chain) - (Lisp_Cons))))->u.cdr)
    {
      Lisp_Object elt;

      elt = (((void) (0 && ((((enum Lisp_Type) ((chain) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((chain) - (Lisp_Cons))))->car;
      if ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
   && ((STRINGP (target)
        && STRINGP ((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car)
        && fast_string_match ((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car, target) >= 0)
       || (((((enum Lisp_Type) ((target) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && ((target) == ((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car)))))
 {
   val = (((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr;


   if ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     return val;
   if (! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
     return builtin_lisp_symbol (0);
   if (! ((Fcoding_system_p (val)) == (builtin_lisp_symbol (0))))
     return Fcons (val, val);
   if (! ((Ffboundp (val)) == (builtin_lisp_symbol (0))))
     {



       val = call1 (val, Flist (nargs, args));
       if ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
  return val;
       if ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol) && ! ((Fcoding_system_p (val)) == (builtin_lisp_symbol (0))))
  return Fcons (val, val);
     }
   return builtin_lisp_symbol (0);
 }
    }
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sset_coding_system_priority = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .aMANY = Fset_coding_system_priority }, 0, MANY, "set-coding-system-priority", 0, 0}; Lisp_Object Fset_coding_system_priority






  (ptrdiff_t nargs, Lisp_Object *args)
{
  ptrdiff_t i, j;
  _Bool changed[coding_category_max];
  enum coding_category priorities[coding_category_max];

  memset (changed, 0, sizeof changed);

  for (i = j = 0; i < nargs; i++)
    {
      enum coding_category category;
      Lisp_Object spec, attrs;

      do { spec = (Fgethash (args[i], Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (args[i]); spec = (Fgethash (args[i], Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (args[i])); } while (0);
      attrs = AREF (spec, 0);
      category = ((AREF (attrs, coding_attr_category)) >> INTTYPEBITS);
      if (changed[category])


 continue;
      changed[category] = 1;
      priorities[j++] = category;
      if (coding_categories[category].id >= 0
   && ! ((args[i]) == ((HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), coding_categories[category].id)))))
 setup_coding_system (args[i], &coding_categories[category]);
      Fset (AREF (Vcoding_category_table, category), args[i]);
    }




  for (i = j, j = 0; i < coding_category_max; i++, j++)
    {
      while (j < coding_category_max
      && changed[coding_priorities[j]])
 j++;
      if (j == coding_category_max)
 emacs_abort ();
      priorities[i] = coding_priorities[j];
    }

  memcpy (coding_priorities, priorities, sizeof priorities);


  globals.f_Vcoding_category_list = builtin_lisp_symbol (0);
  for (i = coding_category_max; i-- > 0; )
    globals.f_Vcoding_category_list
      = Fcons (AREF (Vcoding_category_table, priorities[i]),
        globals.f_Vcoding_category_list);

  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Scoding_system_priority_list = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcoding_system_priority_list }, 0, 1, "coding-system-priority-list", 0, 0}; Lisp_Object Fcoding_system_priority_list






  (Lisp_Object highestp)
{
  int i;
  Lisp_Object val;

  for (i = 0, val = builtin_lisp_symbol (0); i < coding_category_max; i++)
    {
      enum coding_category category = coding_priorities[i];
      int id = coding_categories[category].id;
      Lisp_Object attrs;

      if (id < 0)
 continue;
      attrs = (AREF (HASH_VALUE (XHASH_TABLE (Vcoding_system_hash_table), id), 0));
      if (! ((highestp) == (builtin_lisp_symbol (0))))
 return AREF (attrs, coding_attr_base_name);
      val = Fcons (AREF (attrs, coding_attr_base_name), val);
    }
  return Fnreverse (val);
}

static const char *const suffixes[] = { "-unix", "-dos", "-mac" };

static Lisp_Object
make_subsidiaries (Lisp_Object base)
{
  Lisp_Object subsidiaries;
  ptrdiff_t base_name_len = SBYTES (SYMBOL_NAME (base));
  ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;
  char *buf = ((base_name_len + 6) <= sa_avail ? (sa_avail -= (base_name_len + 6), __builtin_alloca (base_name_len + 6)) : (sa_must_free = 1, record_xmalloc (base_name_len + 6)));
  int i;

  memcpy (buf, SDATA (SYMBOL_NAME (base)), base_name_len);
  subsidiaries = make_uninit_vector (3);
  for (i = 0; i < 3; i++)
    {
      strcpy (buf + base_name_len, suffixes[i]);
      ASET (subsidiaries, i, intern (buf));
    }
  do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0);
  return subsidiaries;
}


static struct Lisp_Subr _Alignas (8) Sdefine_coding_system_internal = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .aMANY = Fdefine_coding_system_internal }, coding_arg_max, MANY, "define-coding-system-internal", 0, 0}; Lisp_Object Fdefine_coding_system_internal



  (ptrdiff_t nargs, Lisp_Object *args)
{
  Lisp_Object name;
  Lisp_Object spec_vec;
  Lisp_Object attrs;
  Lisp_Object eol_type;
  Lisp_Object aliases;
  Lisp_Object coding_type, charset_list, safe_charsets;
  enum coding_category category;
  Lisp_Object tail, val;
  int max_charset_id = 0;
  int i;

  if (nargs < coding_arg_max)
    goto short_args;

  attrs = Fmake_vector (((EMACS_INT) (((EMACS_UINT) (coding_attr_last_index) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (0));

  name = args[coding_arg_name];
  (((((enum Lisp_Type) ((name) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), name));
  ASET (attrs, coding_attr_base_name, name);

  val = args[coding_arg_mnemonic];
  if (! STRINGP (val))
    (((NATNUMP (val) && ((val) >> INTTYPEBITS) <= 0x3FFFFF)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (260), val));
  ASET (attrs, coding_attr_mnemonic, val);

  coding_type = args[coding_arg_coding_type];
  (((((enum Lisp_Type) ((coding_type) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), coding_type));
  ASET (attrs, coding_attr_type, coding_type);

  charset_list = args[coding_arg_charset_list];
  if ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
    {
      if (((charset_list) == (builtin_lisp_symbol (580))))
 {
   if (! ((coding_type) == (builtin_lisp_symbol (580))))
     error ("Invalid charset-list");
   charset_list = Viso_2022_charset_list;
 }
      else if (((charset_list) == (builtin_lisp_symbol (361))))
 {
   if (! ((coding_type) == (builtin_lisp_symbol (361))))
     error ("Invalid charset-list");
   charset_list = Vemacs_mule_charset_list;
 }
      for (tail = charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   if (! RANGED_INTEGERP (0, (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, 2147483647 - 1))
     error ("Invalid charset-list");
   if (max_charset_id < (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS))
     max_charset_id = (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS);
 }
    }
  else
    {
      charset_list = Fcopy_sequence (charset_list);
      for (tail = charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   struct charset *charset;

   val = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
   do { int csid; do { ptrdiff_t idx; if (! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol) || (idx = hash_lookup (XHASH_TABLE (Vcharset_hash_table), val, ((void*)0))) < 0) wrong_type_argument (builtin_lisp_symbol (262), (val)); csid = ((AREF (HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), idx), charset_id)) >> INTTYPEBITS); } while (0); charset = (charset_table + (csid)); } while (0);
   if (((coding_type) == (builtin_lisp_symbol (580)))
       ? ((charset)->iso_final) < 0
       : ((coding_type) == (builtin_lisp_symbol (361)))
       ? ((charset)->emacs_mule_id) < 0
       : 0)
     error ("Can't handle charset `%s'",
     SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));

   XSETCAR (tail, ((EMACS_INT) (((EMACS_UINT) (charset->id) << INTTYPEBITS) + Lisp_Int0)));
   if (max_charset_id < charset->id)
     max_charset_id = charset->id;
 }
    }
  ASET (attrs, coding_attr_charset_list, charset_list);

  safe_charsets = make_uninit_string (max_charset_id + 1);
  memset (SDATA (safe_charsets), 255, max_charset_id + 1);
  for (tail = charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    SSET (safe_charsets, (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS), 0);
  ASET (attrs, coding_attr_safe_charsets, safe_charsets);

  ASET (attrs, coding_attr_ascii_compat, args[coding_arg_ascii_compatible_p]);

  val = args[coding_arg_decode_translation_table];
  if (! CHAR_TABLE_P (val) && ! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
    (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
  ASET (attrs, coding_attr_decode_tbl, val);

  val = args[coding_arg_encode_translation_table];
  if (! CHAR_TABLE_P (val) && ! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
    (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
  ASET (attrs, coding_attr_encode_tbl, val);

  val = args[coding_arg_post_read_conversion];
  (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
  ASET (attrs, coding_attr_post_read, val);

  val = args[coding_arg_pre_write_conversion];
  (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
  ASET (attrs, coding_attr_pre_write, val);

  val = args[coding_arg_default_char];
  if (((val) == (builtin_lisp_symbol (0))))
    ASET (attrs, coding_attr_default_char, ((EMACS_INT) (((EMACS_UINT) (' ') << INTTYPEBITS) + Lisp_Int0)));
  else
    {
      (((NATNUMP (val) && ((val) >> INTTYPEBITS) <= 0x3FFFFF)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (260), val));
      ASET (attrs, coding_attr_default_char, val);
    }

  val = args[coding_arg_for_unibyte];
  ASET (attrs, coding_attr_for_unibyte, ((val) == (builtin_lisp_symbol (0))) ? builtin_lisp_symbol (0) : builtin_lisp_symbol (901));

  val = args[coding_arg_plist];
  CHECK_LIST (val);
  ASET (attrs, coding_attr_plist, val);

  if (((coding_type) == (builtin_lisp_symbol (261))))
    {
# 10158 "coding.c"
      val = Fmake_vector (((EMACS_INT) (((EMACS_UINT) (256) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (0));

      for (tail = charset_list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   struct charset *charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
   int dim = ((charset)->dimension);
   int idx = (dim - 1) * 4;

   if (((charset)->ascii_compatible_p))
     ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));

   for (i = charset->code_space[idx];
        i <= charset->code_space[idx + 1]; i++)
     {
       Lisp_Object tmp, tmp2;
       int dim2;

       tmp = AREF (val, i);
       if (((tmp) == (builtin_lisp_symbol (0))))
  tmp = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
       else if (NUMBERP (tmp))
  {
    dim2 = (((charset_table + (((tmp) >> INTTYPEBITS))))->dimension);
    if (dim < dim2)
      tmp = list2 ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, tmp);
    else
      tmp = list2 (tmp, (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car);
  }
       else
  {
    for (tmp2 = tmp; (((enum Lisp_Type) ((tmp2) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tmp2 = (((void) (0 && ((((enum Lisp_Type) ((tmp2) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp2) - (Lisp_Cons))))->u.cdr)
      {
        dim2 = (((charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((tmp2) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp2) - (Lisp_Cons))))->car) >> INTTYPEBITS))))->dimension);
        if (dim < dim2)
   break;
      }
    if (((tmp2) == (builtin_lisp_symbol (0))))
      tmp = nconc2 (tmp, list1 ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car));
    else
      {
        XSETCDR (tmp2, Fcons ((((void) (0 && ((((enum Lisp_Type) ((tmp2) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp2) - (Lisp_Cons))))->car, (((void) (0 && ((((enum Lisp_Type) ((tmp2) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp2) - (Lisp_Cons))))->u.cdr));
        XSETCAR (tmp2, (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car);
      }
  }
       ASET (val, i, tmp);
     }
 }
      ASET (attrs, coding_attr_charset_valids, val);
      category = coding_category_charset;
    }
  else if (((coding_type) == (builtin_lisp_symbol (246))))
    {
      Lisp_Object valids;

      if (nargs < coding_arg_ccl_max)
 goto short_args;

      val = args[coding_arg_ccl_decoder];
      do { if (((Fccl_program_p (val)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (248), (val)); } while (0);;
      if (VECTORP (val))
 val = Fcopy_sequence (val);
      ASET (attrs, coding_attr_ccl_decoder, val);

      val = args[coding_arg_ccl_encoder];
      do { if (((Fccl_program_p (val)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (248), (val)); } while (0);;
      if (VECTORP (val))
 val = Fcopy_sequence (val);
      ASET (attrs, coding_attr_ccl_encoder, val);

      val = args[coding_arg_ccl_valids];
      valids = Fmake_string (((EMACS_INT) (((EMACS_UINT) (256) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
      for (tail = val; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   int from, to;

   val = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
   if (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
     {
       if (! (0 <= ((val) >> INTTYPEBITS) && ((val) >> INTTYPEBITS) <= 255))
  args_out_of_range_3 (val, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (255) << INTTYPEBITS) + Lisp_Int0)));
       from = to = ((val) >> INTTYPEBITS);
     }
   else
     {
       CHECK_CONS (val);
       CHECK_NATNUM_CAR (val);
       CHECK_NUMBER_CDR (val);
       if ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS) > 255)
  args_out_of_range_3 ((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car,
         ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (255) << INTTYPEBITS) + Lisp_Int0)));
       from = (((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car) >> INTTYPEBITS);
       if (! (from <= (((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS) && (((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS) <= 255))
  args_out_of_range_3 ((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr,
         (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car, ((EMACS_INT) (((EMACS_UINT) (255) << INTTYPEBITS) + Lisp_Int0)));
       to = (((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS);
     }
   for (i = from; i <= to; i++)
     SSET (valids, i, 1);
 }
      ASET (attrs, coding_attr_ccl_valids, valids);

      category = coding_category_ccl;
    }
  else if (((coding_type) == (builtin_lisp_symbol (986))))
    {
      Lisp_Object bom, endian;

      ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (0));

      if (nargs < coding_arg_utf16_max)
 goto short_args;

      bom = args[coding_arg_utf16_bom];
      if (! ((bom) == (builtin_lisp_symbol (0))) && ! ((bom) == (builtin_lisp_symbol (901))))
 {
   CHECK_CONS (bom);
   val = (((void) (0 && ((((enum Lisp_Type) ((bom) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((bom) - (Lisp_Cons))))->car;
   do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), val, ((void*)0)) < 0 && ((Fcheck_coding_system (val)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (val)); } while (0);
   val = (((void) (0 && ((((enum Lisp_Type) ((bom) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((bom) - (Lisp_Cons))))->u.cdr;
   do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), val, ((void*)0)) < 0 && ((Fcheck_coding_system (val)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (val)); } while (0);
 }
      ASET (attrs, coding_attr_utf_bom, bom);

      endian = args[coding_arg_utf16_endian];
      (((((enum Lisp_Type) ((endian) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), endian));
      if (((endian) == (builtin_lisp_symbol (0))))
 endian = builtin_lisp_symbol (202);
      else if (! ((endian) == (builtin_lisp_symbol (202))) && ! ((endian) == (builtin_lisp_symbol (627))))
 error ("Invalid endian: %s", SDATA (SYMBOL_NAME (endian)));
      ASET (attrs, coding_attr_utf_16_endian, endian);

      category = ((((enum Lisp_Type) ((bom) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
    ? coding_category_utf_16_auto
    : ((bom) == (builtin_lisp_symbol (0)))
    ? (((endian) == (builtin_lisp_symbol (202)))
       ? coding_category_utf_16_be_nosig
       : coding_category_utf_16_le_nosig)
    : (((endian) == (builtin_lisp_symbol (202)))
       ? coding_category_utf_16_be
       : coding_category_utf_16_le));
    }
  else if (((coding_type) == (builtin_lisp_symbol (580))))
    {
      Lisp_Object initial, reg_usage, request, flags;

      if (nargs < coding_arg_iso2022_max)
 goto short_args;

      initial = Fcopy_sequence (args[coding_arg_iso2022_initial]);
      CHECK_VECTOR (initial);
      for (i = 0; i < 4; i++)
 {
   val = AREF (initial, i);
   if (! ((val) == (builtin_lisp_symbol (0))))
     {
       struct charset *charset;

       do { int csid; do { ptrdiff_t idx; if (! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol) || (idx = hash_lookup (XHASH_TABLE (Vcharset_hash_table), val, ((void*)0))) < 0) wrong_type_argument (builtin_lisp_symbol (262), (val)); csid = ((AREF (HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), idx), charset_id)) >> INTTYPEBITS); } while (0); charset = (charset_table + (csid)); } while (0);
       ASET (initial, i, ((EMACS_INT) (((EMACS_UINT) (((charset)->id)) << INTTYPEBITS) + Lisp_Int0)));
       if (i == 0 && ((charset)->ascii_compatible_p))
  ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));
     }
   else
     ASET (initial, i, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
 }

      reg_usage = args[coding_arg_iso2022_reg_usage];
      CHECK_CONS (reg_usage);
      CHECK_NUMBER_CAR (reg_usage);
      CHECK_NUMBER_CDR (reg_usage);

      request = Fcopy_sequence (args[coding_arg_iso2022_request]);
      for (tail = request; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   int id;
   Lisp_Object tmp1;

   val = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
   CHECK_CONS (val);
   tmp1 = (((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->car;
   do { ptrdiff_t idx; if (! (((enum Lisp_Type) ((tmp1) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol) || (idx = hash_lookup (XHASH_TABLE (Vcharset_hash_table), tmp1, ((void*)0))) < 0) wrong_type_argument (builtin_lisp_symbol (262), (tmp1)); id = ((AREF (HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), idx), charset_id)) >> INTTYPEBITS); } while (0);
   CHECK_NATNUM_CDR (val);
   if ((((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS) >= 4)
     error ("Invalid graphic register number: %""l""d", (((((void) (0 && ((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((val) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS));
   XSETCAR (val, ((EMACS_INT) (((EMACS_UINT) (id) << INTTYPEBITS) + Lisp_Int0)));
 }

      flags = args[coding_arg_iso2022_flags];
      CHECK_NATNUM (flags);
      i = ((flags) >> INTTYPEBITS) & 2147483647;
      if (((args[coding_arg_charset_list]) == (builtin_lisp_symbol (580))))
 i |= 0x100000;
      flags = ((EMACS_INT) (((EMACS_UINT) (i) << INTTYPEBITS) + Lisp_Int0));

      ASET (attrs, coding_attr_iso_initial, initial);
      ASET (attrs, coding_attr_iso_usage, reg_usage);
      ASET (attrs, coding_attr_iso_request, request);
      ASET (attrs, coding_attr_iso_flags, flags);
      setup_iso_safe_charsets (attrs);

      if (i & 0x0008)
 category = ((i & (0x0010
     | 0x0020))
      ? coding_category_iso_7_else
      : ((args[coding_arg_charset_list]) == (builtin_lisp_symbol (580)))
      ? coding_category_iso_7
      : coding_category_iso_7_tight);
      else
 {
   int id = ((AREF (initial, 1)) >> INTTYPEBITS);

   category = (((i & 0x0010)
         || ((args[coding_arg_charset_list]) == (builtin_lisp_symbol (580)))
         || id < 0)
        ? coding_category_iso_8_else
        : ((((charset_table + (id)))->dimension) == 1)
        ? coding_category_iso_8_1
        : coding_category_iso_8_2);
 }
      if (category != coding_category_iso_8_1
   && category != coding_category_iso_8_2)
 ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (0));
    }
  else if (((coding_type) == (builtin_lisp_symbol (361))))
    {
      if (((args[coding_arg_charset_list]) == (builtin_lisp_symbol (361))))
 ASET (attrs, coding_attr_emacs_mule_full, builtin_lisp_symbol (901));
      ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));
      category = coding_category_emacs_mule;
    }
  else if (((coding_type) == (builtin_lisp_symbol (861))))
    {

      struct charset *charset;

      if (((Flength (charset_list)) >> INTTYPEBITS) != 3
   && ((Flength (charset_list)) >> INTTYPEBITS) != 4)
 error ("There should be three or four charsets");

      charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
      if (((charset)->dimension) != 1)
 error ("Dimension of charset %s is not one",
        SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));
      if (((charset)->ascii_compatible_p))
 ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));

      charset_list = (((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->u.cdr;
      charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
      if (((charset)->dimension) != 1)
 error ("Dimension of charset %s is not one",
        SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));

      charset_list = (((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->u.cdr;
      charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
      if (((charset)->dimension) != 2)
 error ("Dimension of charset %s is not two",
        SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));

      charset_list = (((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->u.cdr;
      if (! ((charset_list) == (builtin_lisp_symbol (0))))
 {
   charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
   if (((charset)->dimension) != 2)
     error ("Dimension of charset %s is not two",
     SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));
 }

      category = coding_category_sjis;
      Vsjis_coding_system = name;
    }
  else if (((coding_type) == (builtin_lisp_symbol (203))))
    {
      struct charset *charset;

      if (((Flength (charset_list)) >> INTTYPEBITS) != 2)
 error ("There should be just two charsets");

      charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
      if (((charset)->dimension) != 1)
 error ("Dimension of charset %s is not one",
        SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));
      if (((charset)->ascii_compatible_p))
 ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));

      charset_list = (((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->u.cdr;
      charset = (charset_table + ((((((void) (0 && ((((enum Lisp_Type) ((charset_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((charset_list) - (Lisp_Cons))))->car) >> INTTYPEBITS)));
      if (((charset)->dimension) != 2)
 error ("Dimension of charset %s is not two",
        SDATA (SYMBOL_NAME ((AREF (((HASH_VALUE (XHASH_TABLE (Vcharset_hash_table), (charset)->hash_index))), charset_name)))));

      category = coding_category_big5;
      Vbig5_coding_system = name;
    }
  else if (((coding_type) == (builtin_lisp_symbol (788))))
    {
      category = coding_category_raw_text;
      ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));
    }
  else if (((coding_type) == (builtin_lisp_symbol (988))))
    {
      Lisp_Object bom;

      if (nargs < coding_arg_utf8_max)
 goto short_args;

      bom = args[coding_arg_utf8_bom];
      if (! ((bom) == (builtin_lisp_symbol (0))) && ! ((bom) == (builtin_lisp_symbol (901))))
 {
   CHECK_CONS (bom);
   val = (((void) (0 && ((((enum Lisp_Type) ((bom) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((bom) - (Lisp_Cons))))->car;
   do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), val, ((void*)0)) < 0 && ((Fcheck_coding_system (val)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (val)); } while (0);
   val = (((void) (0 && ((((enum Lisp_Type) ((bom) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((bom) - (Lisp_Cons))))->u.cdr;
   do { if (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), val, ((void*)0)) < 0 && ((Fcheck_coding_system (val)) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (val)); } while (0);
 }
      ASET (attrs, coding_attr_utf_bom, bom);
      if (((bom) == (builtin_lisp_symbol (0))))
 ASET (attrs, coding_attr_ascii_compat, builtin_lisp_symbol (901));

      category = ((((enum Lisp_Type) ((bom) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? coding_category_utf_8_auto
    : ((bom) == (builtin_lisp_symbol (0))) ? coding_category_utf_8_nosig
    : coding_category_utf_8_sig);
    }
  else if (((coding_type) == (builtin_lisp_symbol (958))))
    {
      if (nargs < coding_arg_undecided_max)
 goto short_args;
      ASET (attrs, coding_attr_undecided_inhibit_null_byte_detection,
     args[coding_arg_undecided_inhibit_null_byte_detection]);
      ASET (attrs, coding_attr_undecided_inhibit_iso_escape_detection,
     args[coding_arg_undecided_inhibit_iso_escape_detection]);
      ASET (attrs, coding_attr_undecided_prefer_utf_8,
     args[coding_arg_undecided_prefer_utf_8]);
      category = coding_category_undecided;
    }
  else
    error ("Invalid coding system type: %s",
    SDATA (SYMBOL_NAME (coding_type)));

  ASET (attrs, coding_attr_category, ((EMACS_INT) (((EMACS_UINT) (category) << INTTYPEBITS) + Lisp_Int0)));
  ASET (attrs, coding_attr_plist,
 Fcons (builtin_lisp_symbol (19),
        Fcons (AREF (Vcoding_category_table, category),
        AREF (attrs, coding_attr_plist))));
  ASET (attrs, coding_attr_plist,
 Fcons (builtin_lisp_symbol (10),
        Fcons (AREF (attrs, coding_attr_ascii_compat),
        AREF (attrs, coding_attr_plist))));

  eol_type = args[coding_arg_eol_type];
  if (! ((eol_type) == (builtin_lisp_symbol (0)))
      && ! ((eol_type) == (builtin_lisp_symbol (973)))
      && ! ((eol_type) == (builtin_lisp_symbol (351)))
      && ! ((eol_type) == (builtin_lisp_symbol (635))))
    error ("Invalid eol-type");

  aliases = list1 (name);

  if (((eol_type) == (builtin_lisp_symbol (0))))
    {
      eol_type = make_subsidiaries (name);
      for (i = 0; i < 3; i++)
 {
   Lisp_Object this_spec, this_name, this_aliases, this_eol_type;

   this_name = AREF (eol_type, i);
   this_aliases = list1 (this_name);
   this_eol_type = (i == 0 ? builtin_lisp_symbol (973) : i == 1 ? builtin_lisp_symbol (351) : builtin_lisp_symbol (635));
   this_spec = make_uninit_vector (3);
   ASET (this_spec, 0, attrs);
   ASET (this_spec, 1, this_aliases);
   ASET (this_spec, 2, this_eol_type);
   Fputhash (this_name, this_spec, Vcoding_system_hash_table);
   globals.f_Vcoding_system_list = Fcons (this_name, globals.f_Vcoding_system_list);
   val = Fassoc (Fsymbol_name (this_name), globals.f_Vcoding_system_alist);
   if (((val) == (builtin_lisp_symbol (0))))
     globals.f_Vcoding_system_alist
       = Fcons (Fcons (Fsymbol_name (this_name), builtin_lisp_symbol (0)),
         globals.f_Vcoding_system_alist);
 }
    }

  spec_vec = make_uninit_vector (3);
  ASET (spec_vec, 0, attrs);
  ASET (spec_vec, 1, aliases);
  ASET (spec_vec, 2, eol_type);

  Fputhash (name, spec_vec, Vcoding_system_hash_table);
  globals.f_Vcoding_system_list = Fcons (name, globals.f_Vcoding_system_list);
  val = Fassoc (Fsymbol_name (name), globals.f_Vcoding_system_alist);
  if (((val) == (builtin_lisp_symbol (0))))
    globals.f_Vcoding_system_alist = Fcons (Fcons (Fsymbol_name (name), builtin_lisp_symbol (0)),
      globals.f_Vcoding_system_alist);

  {
    int id = coding_categories[category].id;

    if (id < 0 || ((name) == ((HASH_KEY (XHASH_TABLE (Vcoding_system_hash_table), id)))))
      setup_coding_system (name, &coding_categories[category]);
  }

  return builtin_lisp_symbol (0);

 short_args:
  return Fsignal (builtin_lisp_symbol (1043),
    Fcons (intern ("define-coding-system-internal"),
    ((EMACS_INT) (((EMACS_UINT) (nargs) << INTTYPEBITS) + Lisp_Int0))));
}


static struct Lisp_Subr _Alignas (8) Scoding_system_put = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Fcoding_system_put }, 3, 3, "coding-system-put", 0, 0}; Lisp_Object Fcoding_system_put


  (Lisp_Object coding_system, Lisp_Object prop, Lisp_Object val)
{
  Lisp_Object spec, attrs;

  do { spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (coding_system); spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  attrs = AREF (spec, 0);
  if (((prop) == (builtin_lisp_symbol (85))))
    {
      if (! STRINGP (val))
 (((NATNUMP (val) && ((val) >> INTTYPEBITS) <= 0x3FFFFF)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (260), val));
      ASET (attrs, coding_attr_mnemonic, val);
    }
  else if (((prop) == (builtin_lisp_symbol (31))))
    {
      if (((val) == (builtin_lisp_symbol (0))))
 val = ((EMACS_INT) (((EMACS_UINT) (' ') << INTTYPEBITS) + Lisp_Int0));
      else
 (((NATNUMP (val) && ((val) >> INTTYPEBITS) <= 0x3FFFFF)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (260), val));
      ASET (attrs, coding_attr_default_char, val);
    }
  else if (((prop) == (builtin_lisp_symbol (30))))
    {
      if (! CHAR_TABLE_P (val) && ! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
      ASET (attrs, coding_attr_decode_tbl, val);
    }
  else if (((prop) == (builtin_lisp_symbol (38))))
    {
      if (! CHAR_TABLE_P (val) && ! (((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
      ASET (attrs, coding_attr_encode_tbl, val);
    }
  else if (((prop) == (builtin_lisp_symbol (95))))
    {
      (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
      ASET (attrs, coding_attr_post_read, val);
    }
  else if (((prop) == (builtin_lisp_symbol (96))))
    {
      (((((enum Lisp_Type) ((val) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), val));
      ASET (attrs, coding_attr_pre_write, val);
    }
  else if (((prop) == (builtin_lisp_symbol (10))))
    {
      ASET (attrs, coding_attr_ascii_compat, val);
    }

  ASET (attrs, coding_attr_plist,
 Fplist_put (AREF (attrs, coding_attr_plist), prop, val));
  return val;
}


static struct Lisp_Subr _Alignas (8) Sdefine_coding_system_alias = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fdefine_coding_system_alias }, 2, 2, "define-coding-system-alias", 0, 0}; Lisp_Object Fdefine_coding_system_alias


  (Lisp_Object alias, Lisp_Object coding_system)
{
  Lisp_Object spec, aliases, eol_type, val;

  (((((enum Lisp_Type) ((alias) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), alias));
  do { spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (coding_system); spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  aliases = AREF (spec, 1);



  while (!(((((void) (0 && ((((enum Lisp_Type) ((aliases) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((aliases) - (Lisp_Cons))))->u.cdr) == (builtin_lisp_symbol (0))))
    aliases = (((void) (0 && ((((enum Lisp_Type) ((aliases) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((aliases) - (Lisp_Cons))))->u.cdr;
  XSETCDR (aliases, list1 (alias));

  eol_type = AREF (spec, 2);
  if (VECTORP (eol_type))
    {
      Lisp_Object subsidiaries;
      int i;

      subsidiaries = make_subsidiaries (alias);
      for (i = 0; i < 3; i++)
 Fdefine_coding_system_alias (AREF (subsidiaries, i),
         AREF (eol_type, i));
    }

  Fputhash (alias, spec, Vcoding_system_hash_table);
  globals.f_Vcoding_system_list = Fcons (alias, globals.f_Vcoding_system_list);
  val = Fassoc (Fsymbol_name (alias), globals.f_Vcoding_system_alist);
  if (((val) == (builtin_lisp_symbol (0))))
    globals.f_Vcoding_system_alist = Fcons (Fcons (Fsymbol_name (alias), builtin_lisp_symbol (0)),
      globals.f_Vcoding_system_alist);

  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Scoding_system_base = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcoding_system_base }, 1, 1, "coding-system-base", 0, 0}; Lisp_Object Fcoding_system_base



  (Lisp_Object coding_system)
{
  Lisp_Object spec, attrs;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    return (builtin_lisp_symbol (702));
  do { spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (coding_system); spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  attrs = AREF (spec, 0);
  return AREF (attrs, coding_attr_base_name);
}

static struct Lisp_Subr _Alignas (8) Scoding_system_plist = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcoding_system_plist }, 1, 1, "coding-system-plist", 0, 0}; Lisp_Object Fcoding_system_plist


  (Lisp_Object coding_system)
{
  Lisp_Object spec, attrs;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (702);
  do { spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (coding_system); spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  attrs = AREF (spec, 0);
  return AREF (attrs, coding_attr_plist);
}


static struct Lisp_Subr _Alignas (8) Scoding_system_aliases = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcoding_system_aliases }, 1, 1, "coding-system-aliases", 0, 0}; Lisp_Object Fcoding_system_aliases


  (Lisp_Object coding_system)
{
  Lisp_Object spec;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (702);
  do { spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); if (((spec) == (builtin_lisp_symbol (0)))) { Fcheck_coding_system (coding_system); spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0))); } if (((spec) == (builtin_lisp_symbol (0)))) wrong_type_argument (builtin_lisp_symbol (280), (coding_system)); } while (0);
  return AREF (spec, 1);
}

static struct Lisp_Subr _Alignas (8) Scoding_system_eol_type = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fcoding_system_eol_type }, 1, 1, "coding-system-eol-type", 0, 0}; Lisp_Object Fcoding_system_eol_type
# 10716 "coding.c"
  (Lisp_Object coding_system)
{
  Lisp_Object spec, eol_type;
  int n;

  if (((coding_system) == (builtin_lisp_symbol (0))))
    coding_system = builtin_lisp_symbol (702);
  if (! (hash_lookup (XHASH_TABLE (Vcoding_system_hash_table), coding_system, ((void*)0)) >= 0 || (! ((coding_system) == (builtin_lisp_symbol (0))) && ! ((Fcoding_system_p (coding_system)) == (builtin_lisp_symbol (0))))))
    return builtin_lisp_symbol (0);
  spec = (Fgethash (coding_system, Vcoding_system_hash_table, builtin_lisp_symbol (0)));
  eol_type = AREF (spec, 2);
  if (VECTORP (eol_type))
    return Fcopy_sequence (eol_type);
  n = ((eol_type) == (builtin_lisp_symbol (973))) ? 0 : ((eol_type) == (builtin_lisp_symbol (351))) ? 1 : 2;
  return ((EMACS_INT) (((EMACS_UINT) (n) << INTTYPEBITS) + Lisp_Int0));
}






void
init_coding_once (void)
{
  int i;

  for (i = 0; i < coding_category_max; i++)
    {
      coding_categories[i].id = -1;
      coding_priorities[i] = i;
    }


  for (i = 0; i < 0x20; i++)
    iso_code_class[i] = ISO_control_0;
  for (i = 0x21; i < 0x7F; i++)
    iso_code_class[i] = ISO_graphic_plane_0;
  for (i = 0x80; i < 0xA0; i++)
    iso_code_class[i] = ISO_control_1;
  for (i = 0xA1; i < 0xFF; i++)
    iso_code_class[i] = ISO_graphic_plane_1;
  iso_code_class[0x20] = iso_code_class[0x7F] = ISO_0x20_or_0x7F;
  iso_code_class[0xA0] = iso_code_class[0xFF] = ISO_0xA0_or_0xFF;
  iso_code_class[0x0E] = ISO_shift_out;
  iso_code_class[0x0F] = ISO_shift_in;
  iso_code_class[0x19] = ISO_single_shift_2_7;
  iso_code_class[0x1B] = ISO_escape;
  iso_code_class[0x8E] = ISO_single_shift_2;
  iso_code_class[0x8F] = ISO_single_shift_3;
  iso_code_class[0x9B] = ISO_control_sequence_introducer;

  for (i = 0; i < 256; i++)
    {
      emacs_mule_bytes[i] = 1;
    }
  emacs_mule_bytes[0x9A] = 3;
  emacs_mule_bytes[0x9B] = 3;
  emacs_mule_bytes[0x9C] = 4;
  emacs_mule_bytes[0x9D] = 4;
}



void
syms_of_coding (void)
{
  staticpro (&Vcoding_system_hash_table);
  Vcoding_system_hash_table = (Fmake_hash_table) ((sizeof (((Lisp_Object []) {builtin_lisp_symbol (129), builtin_lisp_symbol (369)})) / sizeof (((Lisp_Object []) {builtin_lisp_symbol (129), builtin_lisp_symbol (369)}))[0]), ((Lisp_Object []) {builtin_lisp_symbol (129), builtin_lisp_symbol (369)}));

  staticpro (&Vsjis_coding_system);
  Vsjis_coding_system = builtin_lisp_symbol (0);

  staticpro (&Vbig5_coding_system);
  Vbig5_coding_system = builtin_lisp_symbol (0);

  staticpro (&Vcode_conversion_reused_workbuf);
  Vcode_conversion_reused_workbuf = builtin_lisp_symbol (0);

  staticpro (&Vcode_conversion_workbuf_name);
  Vcode_conversion_workbuf_name = build_pure_c_string (" *code-conversion-work*");

  reused_workbuf_in_use = 0;

                              ;
                                    ;
                                                          ;
  Fset (builtin_lisp_symbol (279), builtin_lisp_symbol (0));


  Fput (builtin_lisp_symbol (553), builtin_lisp_symbol (902), ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));

  Fput (builtin_lisp_symbol (1040), builtin_lisp_symbol (902), ((EMACS_INT) (((EMACS_UINT) (2) << INTTYPEBITS) + Lisp_Int0)));

                                        ;

  Fput (builtin_lisp_symbol (234), builtin_lisp_symbol (902), ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));

                                                      ;

  Fput (builtin_lisp_symbol (235), builtin_lisp_symbol (902), ((EMACS_INT) (((EMACS_UINT) (2) << INTTYPEBITS) + Lisp_Int0)));

                                          ;

  Fput (builtin_lisp_symbol (873), builtin_lisp_symbol (902), ((EMACS_INT) (((EMACS_UINT) (2) << INTTYPEBITS) + Lisp_Int0)));

                                                      ;

  Fput (builtin_lisp_symbol (720), builtin_lisp_symbol (902), ((EMACS_INT) (((EMACS_UINT) (3) << INTTYPEBITS) + Lisp_Int0)));

                        ;
                      ;
                      ;

                                                                  ;
                                  ;
                                          ;
                                ;

                                ;

                          ;
                                      ;






                            ;
                      ;
                            ;

                                  ;
                        ;

                                              ;


                                                      ;
  Fput (builtin_lisp_symbol (278), builtin_lisp_symbol (373),
 listn (CONSTYPE_PURE, 2, builtin_lisp_symbol (278), builtin_lisp_symbol (372)));
  Fput (builtin_lisp_symbol (278), builtin_lisp_symbol (374),
 build_pure_c_string ("Invalid coding system"));

                                                  ;
  Fput (builtin_lisp_symbol (934), builtin_lisp_symbol (258), ((EMACS_INT) (((EMACS_UINT) (2) << INTTYPEBITS) + Lisp_Int0)));
                                                        ;



                                    ;

                                  ;
                                  ;
                                          ;
                                                                  ;
                                                                  ;
                                                          ;
                                                          ;
                                                      ;

  Vcoding_category_table
    = Fmake_vector (((EMACS_INT) (((EMACS_UINT) (coding_category_max) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (0));
  staticpro (&Vcoding_category_table);

  ASET (Vcoding_category_table, coding_category_iso_7,
 intern_c_string ("coding-category-iso-7"));
  ASET (Vcoding_category_table, coding_category_iso_7_tight,
 intern_c_string ("coding-category-iso-7-tight"));
  ASET (Vcoding_category_table, coding_category_iso_8_1,
 intern_c_string ("coding-category-iso-8-1"));
  ASET (Vcoding_category_table, coding_category_iso_8_2,
 intern_c_string ("coding-category-iso-8-2"));
  ASET (Vcoding_category_table, coding_category_iso_7_else,
 intern_c_string ("coding-category-iso-7-else"));
  ASET (Vcoding_category_table, coding_category_iso_8_else,
 intern_c_string ("coding-category-iso-8-else"));
  ASET (Vcoding_category_table, coding_category_utf_8_auto,
 intern_c_string ("coding-category-utf-8-auto"));
  ASET (Vcoding_category_table, coding_category_utf_8_nosig,
 intern_c_string ("coding-category-utf-8"));
  ASET (Vcoding_category_table, coding_category_utf_8_sig,
 intern_c_string ("coding-category-utf-8-sig"));
  ASET (Vcoding_category_table, coding_category_utf_16_be,
 intern_c_string ("coding-category-utf-16-be"));
  ASET (Vcoding_category_table, coding_category_utf_16_auto,
 intern_c_string ("coding-category-utf-16-auto"));
  ASET (Vcoding_category_table, coding_category_utf_16_le,
 intern_c_string ("coding-category-utf-16-le"));
  ASET (Vcoding_category_table, coding_category_utf_16_be_nosig,
 intern_c_string ("coding-category-utf-16-be-nosig"));
  ASET (Vcoding_category_table, coding_category_utf_16_le_nosig,
 intern_c_string ("coding-category-utf-16-le-nosig"));
  ASET (Vcoding_category_table, coding_category_charset,
 intern_c_string ("coding-category-charset"));
  ASET (Vcoding_category_table, coding_category_sjis,
 intern_c_string ("coding-category-sjis"));
  ASET (Vcoding_category_table, coding_category_big5,
 intern_c_string ("coding-category-big5"));
  ASET (Vcoding_category_table, coding_category_ccl,
 intern_c_string ("coding-category-ccl"));
  ASET (Vcoding_category_table, coding_category_emacs_mule,
 intern_c_string ("coding-category-emacs-mule"));

  ASET (Vcoding_category_table, coding_category_raw_text,
 intern_c_string ("coding-category-raw-text"));
  ASET (Vcoding_category_table, coding_category_undecided,
 intern_c_string ("coding-category-undecided"));

                                                      ;
                                            ;
                                      ;



                                                                  ;

  defsubr (&Scoding_system_p);
  defsubr (&Sread_coding_system);
  defsubr (&Sread_non_nil_coding_system);
  defsubr (&Scheck_coding_system);
  defsubr (&Sdetect_coding_region);
  defsubr (&Sdetect_coding_string);
  defsubr (&Sfind_coding_systems_region_internal);
  defsubr (&Sunencodable_char_position);
  defsubr (&Scheck_coding_systems_region);
  defsubr (&Sdecode_coding_region);
  defsubr (&Sencode_coding_region);
  defsubr (&Sdecode_coding_string);
  defsubr (&Sencode_coding_string);
  defsubr (&Sdecode_sjis_char);
  defsubr (&Sencode_sjis_char);
  defsubr (&Sdecode_big5_char);
  defsubr (&Sencode_big5_char);
  defsubr (&Sset_terminal_coding_system_internal);
  defsubr (&Sset_safe_terminal_coding_system_internal);
  defsubr (&Sterminal_coding_system);
  defsubr (&Sset_keyboard_coding_system_internal);
  defsubr (&Skeyboard_coding_system);
  defsubr (&Sfind_operation_coding_system);
  defsubr (&Sset_coding_system_priority);
  defsubr (&Sdefine_coding_system_internal);
  defsubr (&Sdefine_coding_system_alias);
  defsubr (&Scoding_system_put);
  defsubr (&Scoding_system_base);
  defsubr (&Scoding_system_plist);
  defsubr (&Scoding_system_aliases);
  defsubr (&Scoding_system_eol_type);
  defsubr (&Scoding_system_priority_list);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "coding-system-list", &globals.f_Vcoding_system_list); } while (0);





  globals.f_Vcoding_system_list = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "coding-system-alist", &globals.f_Vcoding_system_alist); } while (0);







  globals.f_Vcoding_system_alist = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "coding-category-list", &globals.f_Vcoding_category_list); } while (0);
# 10994 "coding.c"
  {
    int i;

    globals.f_Vcoding_category_list = builtin_lisp_symbol (0);
    for (i = coding_category_max - 1; i >= 0; i--)
      globals.f_Vcoding_category_list
 = Fcons (AREF (Vcoding_category_table, i),
   globals.f_Vcoding_category_list);
  }

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "coding-system-for-read", &globals.f_Vcoding_system_for_read); } while (0);






  globals.f_Vcoding_system_for_read = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "coding-system-for-write", &globals.f_Vcoding_system_for_write); } while (0);
# 11025 "coding.c"
  globals.f_Vcoding_system_for_write = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "last-coding-system-used", &globals.f_Vlast_coding_system_used); } while (0);


  globals.f_Vlast_coding_system_used = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "last-code-conversion-error", &globals.f_Vlast_code_conversion_error); } while (0);
# 11047 "coding.c"
  globals.f_Vlast_code_conversion_error = builtin_lisp_symbol (0);

  do { static struct Lisp_Boolfwd b_fwd; defvar_bool (&b_fwd, "inhibit-eol-conversion", &globals.f_inhibit_eol_conversion); } while (0);




  globals.f_inhibit_eol_conversion = 0;

  do { static struct Lisp_Boolfwd b_fwd; defvar_bool (&b_fwd, "inherit-process-coding-system", &globals.f_inherit_process_coding_system); } while (0);




  globals.f_inherit_process_coding_system = 0;

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "file-coding-system-alist", &globals.f_Vfile_coding_system_alist); } while (0);
# 11082 "coding.c"
  globals.f_Vfile_coding_system_alist = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "process-coding-system-alist", &globals.f_Vprocess_coding_system_alist); } while (0);
# 11098 "coding.c"
  globals.f_Vprocess_coding_system_alist = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "network-coding-system-alist", &globals.f_Vnetwork_coding_system_alist); } while (0);
# 11115 "coding.c"
  globals.f_Vnetwork_coding_system_alist = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "locale-coding-system", &globals.f_Vlocale_coding_system); } while (0);



  globals.f_Vlocale_coding_system = builtin_lisp_symbol (0);


  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "eol-mnemonic-unix", &globals.f_eol_mnemonic_unix); } while (0);


  globals.f_eol_mnemonic_unix = build_pure_c_string (":");

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "eol-mnemonic-dos", &globals.f_eol_mnemonic_dos); } while (0);


  globals.f_eol_mnemonic_dos = build_pure_c_string ("\\");

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "eol-mnemonic-mac", &globals.f_eol_mnemonic_mac); } while (0);


  globals.f_eol_mnemonic_mac = build_pure_c_string ("/");

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "eol-mnemonic-undecided", &globals.f_eol_mnemonic_undecided); } while (0);


  globals.f_eol_mnemonic_undecided = build_pure_c_string (":");

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "enable-character-translation", &globals.f_Venable_character_translation); } while (0);


  globals.f_Venable_character_translation = builtin_lisp_symbol (901);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "standard-translation-table-for-decode", &globals.f_Vstandard_translation_table_for_decode); } while (0);


  globals.f_Vstandard_translation_table_for_decode = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "standard-translation-table-for-encode", &globals.f_Vstandard_translation_table_for_encode); } while (0);


  globals.f_Vstandard_translation_table_for_encode = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "charset-revision-table", &globals.f_Vcharset_revision_table); } while (0);




  globals.f_Vcharset_revision_table = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "default-process-coding-system", &globals.f_Vdefault_process_coding_system); } while (0);




  globals.f_Vdefault_process_coding_system = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "latin-extra-code-table", &globals.f_Vlatin_extra_code_table); } while (0);
# 11183 "coding.c"
  globals.f_Vlatin_extra_code_table = Fmake_vector (((EMACS_INT) (((EMACS_UINT) (256) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (0));

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "select-safe-coding-system-function", &globals.f_Vselect_safe_coding_system_function); } while (0);
# 11197 "coding.c"
  globals.f_Vselect_safe_coding_system_function = builtin_lisp_symbol (0);

  do { static struct Lisp_Boolfwd b_fwd; defvar_bool (&b_fwd, "coding-system-require-warning", &globals.f_coding_system_require_warning); } while (0);





  globals.f_coding_system_require_warning = 0;


  do { static struct Lisp_Boolfwd b_fwd; defvar_bool (&b_fwd, "inhibit-iso-escape-detection", &globals.f_inhibit_iso_escape_detection); } while (0);
# 11234 "coding.c"
  globals.f_inhibit_iso_escape_detection = 0;

  do { static struct Lisp_Boolfwd b_fwd; defvar_bool (&b_fwd, "inhibit-null-byte-detection", &globals.f_inhibit_null_byte_detection); } while (0);
# 11247 "coding.c"
  globals.f_inhibit_null_byte_detection = 0;

  do { static struct Lisp_Boolfwd b_fwd; defvar_bool (&b_fwd, "disable-ascii-optimization", &globals.f_disable_ascii_optimization); } while (0);


  globals.f_disable_ascii_optimization = 0;

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "translation-table-for-input", &globals.f_Vtranslation_table_for_input); } while (0);







  globals.f_Vtranslation_table_for_input = builtin_lisp_symbol (0);

  Lisp_Object args[coding_arg_undecided_max];
  memclear (args, sizeof args);

  Lisp_Object plist[] =
    {
      builtin_lisp_symbol (86),
      args[coding_arg_name] = builtin_lisp_symbol (702),
      builtin_lisp_symbol (85),
      args[coding_arg_mnemonic] = ((EMACS_INT) (((EMACS_UINT) ('=') << INTTYPEBITS) + Lisp_Int0)),
      intern_c_string (":coding-type"),
      args[coding_arg_coding_type] = builtin_lisp_symbol (788),
      builtin_lisp_symbol (10),
      args[coding_arg_ascii_compatible_p] = builtin_lisp_symbol (901),
      builtin_lisp_symbol (31),
      args[coding_arg_default_char] = ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)),
      intern_c_string (":for-unibyte"),
      args[coding_arg_for_unibyte] = builtin_lisp_symbol (901),
      intern_c_string (":docstring"),
      (build_pure_c_string
       ("Do no conversion.\n"
 "\n"
 "When you visit a file with this coding, the file is read into a\n"
 "unibyte buffer as is, thus each byte of a file is treated as a\n"
 "character.")),
      intern_c_string (":eol-type"),
      args[coding_arg_eol_type] = builtin_lisp_symbol (973),
    };
  args[coding_arg_plist] = (Flist) ((sizeof (plist) / sizeof (plist)[0]), plist);
  Fdefine_coding_system_internal (coding_arg_max, args);

  plist[1] = args[coding_arg_name] = builtin_lisp_symbol (958);
  plist[3] = args[coding_arg_mnemonic] = ((EMACS_INT) (((EMACS_UINT) ('-') << INTTYPEBITS) + Lisp_Int0));
  plist[5] = args[coding_arg_coding_type] = builtin_lisp_symbol (958);


  plist[8] = intern_c_string (":charset-list");
  plist[9] = args[coding_arg_charset_list] = Fcons (builtin_lisp_symbol (181), builtin_lisp_symbol (0));
  plist[11] = args[coding_arg_for_unibyte] = builtin_lisp_symbol (0);
  plist[13] = build_pure_c_string ("No conversion on encoding, "
       "automatic conversion on decoding.");
  plist[15] = args[coding_arg_eol_type] = builtin_lisp_symbol (0);
  args[coding_arg_plist] = (Flist) ((sizeof (plist) / sizeof (plist)[0]), plist);
  args[coding_arg_undecided_inhibit_null_byte_detection] = ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0));
  args[coding_arg_undecided_inhibit_iso_escape_detection] = ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0));
  Fdefine_coding_system_internal (coding_arg_undecided_max, args);

  setup_coding_system (builtin_lisp_symbol (702), &safe_terminal_coding);

  for (int i = 0; i < coding_category_max; i++)
    Fset (AREF (Vcoding_category_table, i), builtin_lisp_symbol (702));




  system_eol_type = builtin_lisp_symbol (973);

  staticpro (&system_eol_type);
}

char *
emacs_strerror (int error_number)
{
  char *str;

  synchronize_system_messages_locale ();
  str = strerror (error_number);

  if (! ((globals.f_Vlocale_coding_system) == (builtin_lisp_symbol (0))))
    {
      Lisp_Object dec = code_convert_string_norecord (build_string (str),
            globals.f_Vlocale_coding_system,
            0);
      str = SSDATA (dec);
    }

  return str;
}
