# 1 "gnutls.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "gnutls.c" 2
# 19 "gnutls.c"
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
# 20 "gnutls.c" 2
# 1 "/usr/include/errno.h" 1 3 4
# 35 "/usr/include/errno.h" 3 4
# 1 "/usr/include/bits/errno.h" 1 3 4
# 24 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 2 "/usr/include/asm/errno.h" 2 3 4
# 2 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/bits/errno.h" 2 3 4
# 50 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 54 "/usr/include/errno.h" 3 4
extern char *program_invocation_name, *program_invocation_short_name;
# 68 "/usr/include/errno.h" 3 4
typedef int error_t;
# 21 "gnutls.c" 2
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
# 22 "gnutls.c" 2

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
# 24 "gnutls.c" 2
# 1 "./process.h" 1
# 23 "./process.h"
# 1 "../lib/sys/types.h" 1
# 21 "../lib/sys/types.h" 3
# 24 "./process.h" 2


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
# 27 "./process.h" 2


# 1 "./gnutls.h" 1
# 23 "./gnutls.h"
# 1 "/usr/include/gnutls/gnutls.h" 1 3 4
# 40 "/usr/include/gnutls/gnutls.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 41 "/usr/include/gnutls/gnutls.h" 2 3 4




# 1 "../lib/sys/types.h" 1 3 4
# 21 "../lib/sys/types.h" 3
# 46 "/usr/include/gnutls/gnutls.h" 2 3 4



# 1 "../lib/time.h" 1 3 4
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
# 50 "/usr/include/gnutls/gnutls.h" 2 3 4
# 101 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum gnutls_cipher_algorithm {
 GNUTLS_CIPHER_UNKNOWN = 0,
 GNUTLS_CIPHER_NULL = 1,
 GNUTLS_CIPHER_ARCFOUR_128 = 2,
 GNUTLS_CIPHER_3DES_CBC = 3,
 GNUTLS_CIPHER_AES_128_CBC = 4,
 GNUTLS_CIPHER_AES_256_CBC = 5,
 GNUTLS_CIPHER_ARCFOUR_40 = 6,
 GNUTLS_CIPHER_CAMELLIA_128_CBC = 7,
 GNUTLS_CIPHER_CAMELLIA_256_CBC = 8,
 GNUTLS_CIPHER_RC2_40_CBC = 90,
 GNUTLS_CIPHER_DES_CBC = 91,
 GNUTLS_CIPHER_AES_192_CBC = 92,
 GNUTLS_CIPHER_AES_128_GCM = 93,
 GNUTLS_CIPHER_AES_256_GCM = 94,
 GNUTLS_CIPHER_CAMELLIA_192_CBC = 95,
 GNUTLS_CIPHER_SALSA20_256 = 96,
 GNUTLS_CIPHER_ESTREAM_SALSA20_256 = 97,
 GNUTLS_CIPHER_CAMELLIA_128_GCM = 98,
 GNUTLS_CIPHER_CAMELLIA_256_GCM = 99,



 GNUTLS_CIPHER_IDEA_PGP_CFB = 200,
 GNUTLS_CIPHER_3DES_PGP_CFB = 201,
 GNUTLS_CIPHER_CAST5_PGP_CFB = 202,
 GNUTLS_CIPHER_BLOWFISH_PGP_CFB = 203,
 GNUTLS_CIPHER_SAFER_SK128_PGP_CFB = 204,
 GNUTLS_CIPHER_AES128_PGP_CFB = 205,
 GNUTLS_CIPHER_AES192_PGP_CFB = 206,
 GNUTLS_CIPHER_AES256_PGP_CFB = 207,
 GNUTLS_CIPHER_TWOFISH_PGP_CFB = 208
} gnutls_cipher_algorithm_t;
# 156 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_KX_UNKNOWN = 0,
 GNUTLS_KX_RSA = 1,
 GNUTLS_KX_DHE_DSS = 2,
 GNUTLS_KX_DHE_RSA = 3,
 GNUTLS_KX_ANON_DH = 4,
 GNUTLS_KX_SRP = 5,
 GNUTLS_KX_RSA_EXPORT = 6,
 GNUTLS_KX_SRP_RSA = 7,
 GNUTLS_KX_SRP_DSS = 8,
 GNUTLS_KX_PSK = 9,
 GNUTLS_KX_DHE_PSK = 10,
 GNUTLS_KX_ANON_ECDH = 11,
 GNUTLS_KX_ECDHE_RSA = 12,
 GNUTLS_KX_ECDHE_ECDSA = 13,
 GNUTLS_KX_ECDHE_PSK = 14,
 GNUTLS_KX_RSA_PSK = 15
} gnutls_kx_algorithm_t;
# 183 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_PARAMS_RSA_EXPORT = 1,
 GNUTLS_PARAMS_DH = 2,
 GNUTLS_PARAMS_ECDH = 3
} gnutls_params_type_t;
# 199 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_CRD_CERTIFICATE = 1,
 GNUTLS_CRD_ANON,
 GNUTLS_CRD_SRP,
 GNUTLS_CRD_PSK,
 GNUTLS_CRD_IA
} gnutls_credentials_type_t;
# 229 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_MAC_UNKNOWN = 0,
 GNUTLS_MAC_NULL = 1,
 GNUTLS_MAC_MD5 = 2,
 GNUTLS_MAC_SHA1 = 3,
 GNUTLS_MAC_RMD160 = 4,
 GNUTLS_MAC_MD2 = 5,
 GNUTLS_MAC_SHA256 = 6,
 GNUTLS_MAC_SHA384 = 7,
 GNUTLS_MAC_SHA512 = 8,
 GNUTLS_MAC_SHA224 = 9,


 GNUTLS_MAC_AEAD = 200,
 GNUTLS_MAC_UMAC_96 = 201,
 GNUTLS_MAC_UMAC_128 = 202
} gnutls_mac_algorithm_t;
# 262 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_DIG_UNKNOWN = GNUTLS_MAC_UNKNOWN,
 GNUTLS_DIG_NULL = GNUTLS_MAC_NULL,
 GNUTLS_DIG_MD5 = GNUTLS_MAC_MD5,
 GNUTLS_DIG_SHA1 = GNUTLS_MAC_SHA1,
 GNUTLS_DIG_RMD160 = GNUTLS_MAC_RMD160,
 GNUTLS_DIG_MD2 = GNUTLS_MAC_MD2,
 GNUTLS_DIG_SHA256 = GNUTLS_MAC_SHA256,
 GNUTLS_DIG_SHA384 = GNUTLS_MAC_SHA384,
 GNUTLS_DIG_SHA512 = GNUTLS_MAC_SHA512,
 GNUTLS_DIG_SHA224 = GNUTLS_MAC_SHA224


} gnutls_digest_algorithm_t;
# 291 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_COMP_UNKNOWN = 0,
 GNUTLS_COMP_NULL = 1,
 GNUTLS_COMP_DEFLATE = 2,
 GNUTLS_COMP_ZLIB = GNUTLS_COMP_DEFLATE
} gnutls_compression_method_t;
# 323 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_AL_WARNING = 1,
 GNUTLS_AL_FATAL
} gnutls_alert_level_t;
# 365 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_A_CLOSE_NOTIFY,
 GNUTLS_A_UNEXPECTED_MESSAGE = 10,
 GNUTLS_A_BAD_RECORD_MAC = 20,
 GNUTLS_A_DECRYPTION_FAILED,
 GNUTLS_A_RECORD_OVERFLOW,
 GNUTLS_A_DECOMPRESSION_FAILURE = 30,
 GNUTLS_A_HANDSHAKE_FAILURE = 40,
 GNUTLS_A_SSL3_NO_CERTIFICATE = 41,
 GNUTLS_A_BAD_CERTIFICATE = 42,
 GNUTLS_A_UNSUPPORTED_CERTIFICATE,
 GNUTLS_A_CERTIFICATE_REVOKED,
 GNUTLS_A_CERTIFICATE_EXPIRED,
 GNUTLS_A_CERTIFICATE_UNKNOWN,
 GNUTLS_A_ILLEGAL_PARAMETER,
 GNUTLS_A_UNKNOWN_CA,
 GNUTLS_A_ACCESS_DENIED,
 GNUTLS_A_DECODE_ERROR = 50,
 GNUTLS_A_DECRYPT_ERROR,
 GNUTLS_A_EXPORT_RESTRICTION = 60,
 GNUTLS_A_PROTOCOL_VERSION = 70,
 GNUTLS_A_INSUFFICIENT_SECURITY,
 GNUTLS_A_INTERNAL_ERROR = 80,
 GNUTLS_A_USER_CANCELED = 90,
 GNUTLS_A_NO_RENEGOTIATION = 100,
 GNUTLS_A_UNSUPPORTED_EXTENSION = 110,
 GNUTLS_A_CERTIFICATE_UNOBTAINABLE = 111,
 GNUTLS_A_UNRECOGNIZED_NAME = 112,
 GNUTLS_A_UNKNOWN_PSK_IDENTITY = 115,
 GNUTLS_A_NO_APPLICATION_PROTOCOL = 120
} gnutls_alert_description_t;
# 418 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_HANDSHAKE_HELLO_REQUEST = 0,
 GNUTLS_HANDSHAKE_CLIENT_HELLO = 1,
 GNUTLS_HANDSHAKE_SERVER_HELLO = 2,
 GNUTLS_HANDSHAKE_HELLO_VERIFY_REQUEST = 3,
 GNUTLS_HANDSHAKE_NEW_SESSION_TICKET = 4,
 GNUTLS_HANDSHAKE_CERTIFICATE_PKT = 11,
 GNUTLS_HANDSHAKE_SERVER_KEY_EXCHANGE = 12,
 GNUTLS_HANDSHAKE_CERTIFICATE_REQUEST = 13,
 GNUTLS_HANDSHAKE_SERVER_HELLO_DONE = 14,
 GNUTLS_HANDSHAKE_CERTIFICATE_VERIFY = 15,
 GNUTLS_HANDSHAKE_CLIENT_KEY_EXCHANGE = 16,
 GNUTLS_HANDSHAKE_FINISHED = 20,
 GNUTLS_HANDSHAKE_CERTIFICATE_STATUS = 22,
 GNUTLS_HANDSHAKE_SUPPLEMENTAL = 23,
 GNUTLS_HANDSHAKE_CHANGE_CIPHER_SPEC = 254,
 GNUTLS_HANDSHAKE_CLIENT_HELLO_V2 = 1024
} gnutls_handshake_description_t;



const char
    *gnutls_handshake_description_get_name(gnutls_handshake_description_t
        type);
# 472 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_CERT_INVALID = 1 << 1,
 GNUTLS_CERT_REVOKED = 1 << 5,
 GNUTLS_CERT_SIGNER_NOT_FOUND = 1 << 6,
 GNUTLS_CERT_SIGNER_NOT_CA = 1 << 7,
 GNUTLS_CERT_INSECURE_ALGORITHM = 1 << 8,
 GNUTLS_CERT_NOT_ACTIVATED = 1 << 9,
 GNUTLS_CERT_EXPIRED = 1 << 10,
 GNUTLS_CERT_SIGNATURE_FAILURE = 1 << 11,
 GNUTLS_CERT_REVOCATION_DATA_SUPERSEDED = 1 << 12,
 GNUTLS_CERT_UNEXPECTED_OWNER = 1 << 14,
 GNUTLS_CERT_REVOCATION_DATA_ISSUED_IN_FUTURE = 1 << 15,
 GNUTLS_CERT_SIGNER_CONSTRAINTS_FAILURE = 1 << 16,
 GNUTLS_CERT_MISMATCH = 1 << 17
} gnutls_certificate_status_t;
# 496 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_CERT_IGNORE = 0,
 GNUTLS_CERT_REQUEST = 1,
 GNUTLS_CERT_REQUIRE = 2
} gnutls_certificate_request_t;
# 509 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_OPENPGP_CERT = 0,
 GNUTLS_OPENPGP_CERT_FINGERPRINT = 1
} gnutls_openpgp_crt_status_t;
# 521 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_SHUT_RDWR = 0,
 GNUTLS_SHUT_WR = 1
} gnutls_close_request_t;
# 541 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_SSL3 = 1,
 GNUTLS_TLS1_0 = 2,
 GNUTLS_TLS1 = GNUTLS_TLS1_0,
 GNUTLS_TLS1_1 = 3,
 GNUTLS_TLS1_2 = 4,
 GNUTLS_DTLS0_9 = 6,
 GNUTLS_DTLS1_0 = 5,
 GNUTLS_DTLS1_2 = 202,
 GNUTLS_DTLS_VERSION_MIN = GNUTLS_DTLS1_0,
 GNUTLS_DTLS_VERSION_MAX = GNUTLS_DTLS1_2,
 GNUTLS_TLS_VERSION_MAX = GNUTLS_TLS1_2,
 GNUTLS_VERSION_UNKNOWN = 0xff
} gnutls_protocol_t;
# 565 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_CRT_UNKNOWN = 0,
 GNUTLS_CRT_X509 = 1,
 GNUTLS_CRT_OPENPGP = 2,
 GNUTLS_CRT_RAW = 3
} gnutls_certificate_type_t;
# 579 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_X509_FMT_DER = 0,
 GNUTLS_X509_FMT_PEM = 1
} gnutls_x509_crt_fmt_t;
# 594 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum gnutls_certificate_print_formats {
 GNUTLS_CRT_PRINT_FULL = 0,
 GNUTLS_CRT_PRINT_ONELINE = 1,
 GNUTLS_CRT_PRINT_UNSIGNED_FULL = 2,
 GNUTLS_CRT_PRINT_COMPACT = 3,
 GNUTLS_CRT_PRINT_FULL_NUMBERS = 4
} gnutls_certificate_print_formats_t;
# 613 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_PK_UNKNOWN = 0,
 GNUTLS_PK_RSA = 1,
 GNUTLS_PK_DSA = 2,
 GNUTLS_PK_DH = 3,
 GNUTLS_PK_EC = 4
} gnutls_pk_algorithm_t;

const char *gnutls_pk_algorithm_get_name(gnutls_pk_algorithm_t algorithm);
# 647 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_SIGN_UNKNOWN = 0,
 GNUTLS_SIGN_RSA_SHA1 = 1,
 GNUTLS_SIGN_RSA_SHA = GNUTLS_SIGN_RSA_SHA1,
 GNUTLS_SIGN_DSA_SHA1 = 2,
 GNUTLS_SIGN_DSA_SHA = GNUTLS_SIGN_DSA_SHA1,
 GNUTLS_SIGN_RSA_MD5 = 3,
 GNUTLS_SIGN_RSA_MD2 = 4,
 GNUTLS_SIGN_RSA_RMD160 = 5,
 GNUTLS_SIGN_RSA_SHA256 = 6,
 GNUTLS_SIGN_RSA_SHA384 = 7,
 GNUTLS_SIGN_RSA_SHA512 = 8,
 GNUTLS_SIGN_RSA_SHA224 = 9,
 GNUTLS_SIGN_DSA_SHA224 = 10,
 GNUTLS_SIGN_DSA_SHA256 = 11,
 GNUTLS_SIGN_ECDSA_SHA1 = 12,
 GNUTLS_SIGN_ECDSA_SHA224 = 13,
 GNUTLS_SIGN_ECDSA_SHA256 = 14,
 GNUTLS_SIGN_ECDSA_SHA384 = 15,
 GNUTLS_SIGN_ECDSA_SHA512 = 16,
 GNUTLS_SIGN_DSA_SHA384 = 17,
 GNUTLS_SIGN_DSA_SHA512 = 18
} gnutls_sign_algorithm_t;
# 682 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_ECC_CURVE_INVALID = 0,
 GNUTLS_ECC_CURVE_SECP224R1,
 GNUTLS_ECC_CURVE_SECP256R1,
 GNUTLS_ECC_CURVE_SECP384R1,
 GNUTLS_ECC_CURVE_SECP521R1,
 GNUTLS_ECC_CURVE_SECP192R1
} gnutls_ecc_curve_t;
# 712 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_SEC_PARAM_INSECURE = -20,
 GNUTLS_SEC_PARAM_EXPORT = -15,
 GNUTLS_SEC_PARAM_VERY_WEAK = -12,
 GNUTLS_SEC_PARAM_WEAK = -10,
 GNUTLS_SEC_PARAM_UNKNOWN = 0,
 GNUTLS_SEC_PARAM_LOW = 1,
 GNUTLS_SEC_PARAM_LEGACY = 2,
 GNUTLS_SEC_PARAM_MEDIUM = 3,
 GNUTLS_SEC_PARAM_HIGH = 4,
 GNUTLS_SEC_PARAM_ULTRA = 5
} gnutls_sec_param_t;
# 734 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_CB_TLS_UNIQUE
} gnutls_channel_binding_t;





typedef void *gnutls_transport_ptr_t;

struct gnutls_session_int;
typedef struct gnutls_session_int *gnutls_session_t;

struct gnutls_dh_params_int;
typedef struct gnutls_dh_params_int *gnutls_dh_params_t;

struct gnutls_ecdh_params_int;
typedef struct gnutls_ecdh_params_int *gnutls_ecdh_params_t;


struct gnutls_x509_privkey_int;
typedef struct gnutls_x509_privkey_int *gnutls_rsa_params_t;

struct gnutls_priority_st;
typedef struct gnutls_priority_st *gnutls_priority_t;

typedef struct {
 unsigned char *data;
 unsigned int size;
} gnutls_datum_t;


typedef struct gnutls_params_st {
 gnutls_params_type_t type;
 union params {
  gnutls_dh_params_t dh;
  gnutls_ecdh_params_t ecdh;
  gnutls_rsa_params_t rsa_export;
 } params;
 int deinit;
} gnutls_params_st;

typedef int gnutls_params_function(gnutls_session_t, gnutls_params_type_t,
       gnutls_params_st *);



int gnutls_init(gnutls_session_t * session, unsigned int flags);
void gnutls_deinit(gnutls_session_t session);


int gnutls_bye(gnutls_session_t session, gnutls_close_request_t how);

int gnutls_handshake(gnutls_session_t session);


void gnutls_handshake_set_timeout(gnutls_session_t session,
      unsigned int ms);
int gnutls_rehandshake(gnutls_session_t session);

gnutls_alert_description_t gnutls_alert_get(gnutls_session_t session);
int gnutls_alert_send(gnutls_session_t session,
        gnutls_alert_level_t level,
        gnutls_alert_description_t desc);
int gnutls_alert_send_appropriate(gnutls_session_t session, int err);
const char *gnutls_alert_get_name(gnutls_alert_description_t alert);
const char *gnutls_alert_get_strname(gnutls_alert_description_t alert);

gnutls_sec_param_t gnutls_pk_bits_to_sec_param(gnutls_pk_algorithm_t algo,
            unsigned int bits);
const char *gnutls_sec_param_get_name(gnutls_sec_param_t param);
unsigned int gnutls_sec_param_to_pk_bits(gnutls_pk_algorithm_t algo,
      gnutls_sec_param_t param);
unsigned int
gnutls_sec_param_to_symmetric_bits(gnutls_sec_param_t param);


const char *gnutls_ecc_curve_get_name(gnutls_ecc_curve_t curve);
int gnutls_ecc_curve_get_size(gnutls_ecc_curve_t curve);
gnutls_ecc_curve_t gnutls_ecc_curve_get(gnutls_session_t session);


gnutls_cipher_algorithm_t gnutls_cipher_get(gnutls_session_t session);
gnutls_kx_algorithm_t gnutls_kx_get(gnutls_session_t session);
gnutls_mac_algorithm_t gnutls_mac_get(gnutls_session_t session);
gnutls_compression_method_t
gnutls_compression_get(gnutls_session_t session);
gnutls_certificate_type_t
gnutls_certificate_type_get(gnutls_session_t session);

int gnutls_sign_algorithm_get(gnutls_session_t session);
int gnutls_sign_algorithm_get_client(gnutls_session_t session);

int gnutls_sign_algorithm_get_requested(gnutls_session_t session,
     size_t indx,
     gnutls_sign_algorithm_t * algo);


const char *gnutls_cipher_get_name(gnutls_cipher_algorithm_t algorithm);
const char *gnutls_mac_get_name(gnutls_mac_algorithm_t algorithm);
const char *gnutls_digest_get_name(gnutls_digest_algorithm_t algorithm);
const char *gnutls_compression_get_name(gnutls_compression_method_t
     algorithm);
const char *gnutls_kx_get_name(gnutls_kx_algorithm_t algorithm);
const char *gnutls_certificate_type_get_name(gnutls_certificate_type_t
          type);
const char *gnutls_pk_get_name(gnutls_pk_algorithm_t algorithm);
const char *gnutls_sign_get_name(gnutls_sign_algorithm_t algorithm);

size_t gnutls_cipher_get_key_size(gnutls_cipher_algorithm_t algorithm);
size_t gnutls_mac_get_key_size(gnutls_mac_algorithm_t algorithm);

int gnutls_sign_is_secure(gnutls_sign_algorithm_t algorithm);
gnutls_digest_algorithm_t
gnutls_sign_get_hash_algorithm(gnutls_sign_algorithm_t sign);
gnutls_pk_algorithm_t
gnutls_sign_get_pk_algorithm(gnutls_sign_algorithm_t sign);
gnutls_sign_algorithm_t
gnutls_pk_to_sign(gnutls_pk_algorithm_t pk,
    gnutls_digest_algorithm_t hash);



gnutls_mac_algorithm_t gnutls_mac_get_id(const char *name);
gnutls_digest_algorithm_t gnutls_digest_get_id(const char *name);
gnutls_compression_method_t gnutls_compression_get_id(const char *name);
gnutls_cipher_algorithm_t gnutls_cipher_get_id(const char *name);
gnutls_kx_algorithm_t gnutls_kx_get_id(const char *name);
gnutls_protocol_t gnutls_protocol_get_id(const char *name);
gnutls_certificate_type_t gnutls_certificate_type_get_id(const char *name);
gnutls_pk_algorithm_t gnutls_pk_get_id(const char *name);
gnutls_sign_algorithm_t gnutls_sign_get_id(const char *name);


const gnutls_ecc_curve_t *gnutls_ecc_curve_list(void);
const gnutls_cipher_algorithm_t *gnutls_cipher_list(void);
const gnutls_mac_algorithm_t *gnutls_mac_list(void);
const gnutls_digest_algorithm_t *gnutls_digest_list(void);
const gnutls_compression_method_t *gnutls_compression_list(void);
const gnutls_protocol_t *gnutls_protocol_list(void);
const gnutls_certificate_type_t *gnutls_certificate_type_list(void);
const gnutls_kx_algorithm_t *gnutls_kx_list(void);
const gnutls_pk_algorithm_t *gnutls_pk_list(void);
const gnutls_sign_algorithm_t *gnutls_sign_list(void);
const char *gnutls_cipher_suite_info(size_t idx,
         unsigned char *cs_id,
         gnutls_kx_algorithm_t * kx,
         gnutls_cipher_algorithm_t * cipher,
         gnutls_mac_algorithm_t * mac,
         gnutls_protocol_t * min_version);


int gnutls_error_is_fatal(int error);
int gnutls_error_to_alert(int err, int *level);

void gnutls_perror(int error);
const char *gnutls_strerror(int error);
const char *gnutls_strerror_name(int error);



void gnutls_handshake_set_private_extensions(gnutls_session_t session,
          int allow);
int gnutls_handshake_set_random(gnutls_session_t session,
    const gnutls_datum_t * random);

gnutls_handshake_description_t
gnutls_handshake_get_last_out(gnutls_session_t session);
gnutls_handshake_description_t
gnutls_handshake_get_last_in(gnutls_session_t session);




int gnutls_heartbeat_ping(gnutls_session_t session, size_t data_size,
     unsigned int max_tries, unsigned int flags);
int gnutls_heartbeat_pong(gnutls_session_t session, unsigned int flags);

void gnutls_record_set_timeout(gnutls_session_t session, unsigned int ms);
void gnutls_record_disable_padding(gnutls_session_t session);

void gnutls_record_cork(gnutls_session_t session);

int gnutls_record_uncork(gnutls_session_t session, unsigned int flags);

typedef struct {
 size_t low;
 size_t high;
} gnutls_range_st;

int gnutls_range_split(gnutls_session_t session,
         const gnutls_range_st * orig,
         gnutls_range_st * small_range,
         gnutls_range_st * rem_range);

ssize_t gnutls_record_send(gnutls_session_t session, const void *data,
      size_t data_size);
ssize_t gnutls_record_send_range(gnutls_session_t session,
     const void *data, size_t data_size,
     const gnutls_range_st * range);
ssize_t gnutls_record_recv(gnutls_session_t session, void *data,
      size_t data_size);

typedef struct mbuffer_st *gnutls_packet_t;

ssize_t
gnutls_record_recv_packet(gnutls_session_t session,
        gnutls_packet_t *packet);

void gnutls_packet_get(gnutls_packet_t packet, gnutls_datum_t *data, unsigned char *sequence);
void gnutls_packet_deinit(gnutls_packet_t packet);



ssize_t gnutls_record_recv_seq(gnutls_session_t session, void *data,
          size_t data_size, unsigned char *seq);

size_t gnutls_record_overhead_size(gnutls_session_t session);

size_t gnutls_est_record_overhead_size(gnutls_protocol_t version,
           gnutls_cipher_algorithm_t cipher,
           gnutls_mac_algorithm_t mac,
           gnutls_compression_method_t comp,
           unsigned int flags);

void gnutls_session_enable_compatibility_mode(gnutls_session_t session);
void gnutls_record_set_max_empty_records(gnutls_session_t session,
      const unsigned int i);

int gnutls_record_can_use_length_hiding(gnutls_session_t session);

int gnutls_record_get_direction(gnutls_session_t session);

size_t gnutls_record_get_max_size(gnutls_session_t session);
ssize_t gnutls_record_set_max_size(gnutls_session_t session, size_t size);

size_t gnutls_record_check_pending(gnutls_session_t session);
size_t gnutls_record_check_corked(gnutls_session_t session);

void gnutls_session_force_valid(gnutls_session_t session);

int gnutls_prf(gnutls_session_t session,
        size_t label_size, const char *label,
        int server_random_first,
        size_t extra_size, const char *extra,
        size_t outsize, char *out);

int gnutls_prf_raw(gnutls_session_t session,
     size_t label_size, const char *label,
     size_t seed_size, const char *seed,
     size_t outsize, char *out);







typedef enum {
 GNUTLS_NAME_DNS = 1
} gnutls_server_name_type_t;

int gnutls_server_name_set(gnutls_session_t session,
      gnutls_server_name_type_t type,
      const void *name, size_t name_length);

int gnutls_server_name_get(gnutls_session_t session,
      void *data, size_t * data_length,
      unsigned int *type, unsigned int indx);

unsigned int gnutls_heartbeat_get_timeout(gnutls_session_t session);
void gnutls_heartbeat_set_timeouts(gnutls_session_t session,
       unsigned int retrans_timeout,
       unsigned int total_timeout);





void gnutls_heartbeat_enable(gnutls_session_t session, unsigned int type);


int gnutls_heartbeat_allowed(gnutls_session_t session, unsigned int type);


int gnutls_safe_renegotiation_status(gnutls_session_t session);







typedef enum {
 GNUTLS_SUPPLEMENTAL_USER_MAPPING_DATA = 0
} gnutls_supplemental_data_format_type_t;

const char
*gnutls_supplemental_get_name(gnutls_supplemental_data_format_type_t type);


int gnutls_session_ticket_key_generate(gnutls_datum_t * key);
int gnutls_session_ticket_enable_client(gnutls_session_t session);
int gnutls_session_ticket_enable_server(gnutls_session_t session,
     const gnutls_datum_t * key);
# 1051 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_SRTP_AES128_CM_HMAC_SHA1_80 = 0x0001,
 GNUTLS_SRTP_AES128_CM_HMAC_SHA1_32 = 0x0002,
 GNUTLS_SRTP_NULL_HMAC_SHA1_80 = 0x0005,
 GNUTLS_SRTP_NULL_HMAC_SHA1_32 = 0x0006
} gnutls_srtp_profile_t;

int gnutls_srtp_set_profile(gnutls_session_t session,
       gnutls_srtp_profile_t profile);
int gnutls_srtp_set_profile_direct(gnutls_session_t session,
       const char *profiles,
       const char **err_pos);
int gnutls_srtp_get_selected_profile(gnutls_session_t session,
         gnutls_srtp_profile_t * profile);

const char *gnutls_srtp_get_profile_name(gnutls_srtp_profile_t profile);
int gnutls_srtp_get_profile_id(const char *name,
          gnutls_srtp_profile_t * profile);
int gnutls_srtp_get_keys(gnutls_session_t session,
    void *key_material,
    unsigned int key_material_size,
    gnutls_datum_t * client_key,
    gnutls_datum_t * client_salt,
    gnutls_datum_t * server_key,
    gnutls_datum_t * server_salt);

int gnutls_srtp_set_mki(gnutls_session_t session,
   const gnutls_datum_t * mki);
int gnutls_srtp_get_mki(gnutls_session_t session, gnutls_datum_t * mki);



int gnutls_alpn_get_selected_protocol(gnutls_session_t session,
          gnutls_datum_t * protocol);
int gnutls_alpn_set_protocols(gnutls_session_t session,
         const gnutls_datum_t * protocols,
         unsigned protocols_size, unsigned flags);

int gnutls_key_generate(gnutls_datum_t * key, unsigned int key_size);




int gnutls_priority_init(gnutls_priority_t * priority_cache,
    const char *priorities, const char **err_pos);
void gnutls_priority_deinit(gnutls_priority_t priority_cache);
int gnutls_priority_get_cipher_suite_index(gnutls_priority_t pcache,
        unsigned int idx,
        unsigned int *sidx);

int gnutls_priority_set(gnutls_session_t session,
   gnutls_priority_t priority);
int gnutls_priority_set_direct(gnutls_session_t session,
          const char *priorities,
          const char **err_pos);

int gnutls_priority_certificate_type_list(gnutls_priority_t pcache,
       const unsigned int **list);
int gnutls_priority_sign_list(gnutls_priority_t pcache,
         const unsigned int **list);
int gnutls_priority_protocol_list(gnutls_priority_t pcache,
      const unsigned int **list);
int gnutls_priority_compression_list(gnutls_priority_t pcache,
         const unsigned int **list);
int gnutls_priority_ecc_curve_list(gnutls_priority_t pcache,
       const unsigned int **list);

int gnutls_priority_kx_list(gnutls_priority_t pcache,
       const unsigned int **list);
int gnutls_priority_cipher_list(gnutls_priority_t pcache,
    const unsigned int **list);
int gnutls_priority_mac_list(gnutls_priority_t pcache,
        const unsigned int **list);



int gnutls_set_default_priority(gnutls_session_t session);


const char *gnutls_cipher_suite_get_name(gnutls_kx_algorithm_t
      kx_algorithm,
      gnutls_cipher_algorithm_t
      cipher_algorithm,
      gnutls_mac_algorithm_t
      mac_algorithm);


gnutls_protocol_t gnutls_protocol_get_version(gnutls_session_t session);

const char *gnutls_protocol_get_name(gnutls_protocol_t version);




int gnutls_session_set_data(gnutls_session_t session,
       const void *session_data,
       size_t session_data_size);
int gnutls_session_get_data(gnutls_session_t session, void *session_data,
       size_t * session_data_size);
int gnutls_session_get_data2(gnutls_session_t session,
        gnutls_datum_t * data);
void gnutls_session_get_random(gnutls_session_t session,
          gnutls_datum_t * client,
          gnutls_datum_t * server);
char *gnutls_session_get_desc(gnutls_session_t session);

int gnutls_session_set_premaster(gnutls_session_t session,
     unsigned int entity,
     gnutls_protocol_t version,
     gnutls_kx_algorithm_t kx,
     gnutls_cipher_algorithm_t cipher,
     gnutls_mac_algorithm_t mac,
     gnutls_compression_method_t comp,
     const gnutls_datum_t * master,
     const gnutls_datum_t * session_id);



int gnutls_session_get_id(gnutls_session_t session, void *session_id,
     size_t * session_id_size);
int gnutls_session_get_id2(gnutls_session_t session,
      gnutls_datum_t * session_id);

int gnutls_session_set_id(gnutls_session_t session,
     const gnutls_datum_t * sid);

int gnutls_session_channel_binding(gnutls_session_t session,
       gnutls_channel_binding_t cbtype,
       gnutls_datum_t * cb);



int gnutls_session_is_resumed(gnutls_session_t session);
int gnutls_session_resumption_requested(gnutls_session_t session);

typedef int (*gnutls_db_store_func) (void *, gnutls_datum_t key,
         gnutls_datum_t data);
typedef int (*gnutls_db_remove_func) (void *, gnutls_datum_t key);
typedef gnutls_datum_t(*gnutls_db_retr_func) (void *, gnutls_datum_t key);

void gnutls_db_set_cache_expiration(gnutls_session_t session, int seconds);
unsigned gnutls_db_get_default_cache_expiration(void);

void gnutls_db_remove_session(gnutls_session_t session);
void gnutls_db_set_retrieve_function(gnutls_session_t session,
         gnutls_db_retr_func retr_func);
void gnutls_db_set_remove_function(gnutls_session_t session,
       gnutls_db_remove_func rem_func);
void gnutls_db_set_store_function(gnutls_session_t session,
      gnutls_db_store_func store_func);
void gnutls_db_set_ptr(gnutls_session_t session, void *ptr);
void *gnutls_db_get_ptr(gnutls_session_t session);
int gnutls_db_check_entry(gnutls_session_t session,
     gnutls_datum_t session_entry);
time_t gnutls_db_check_entry_time(gnutls_datum_t * entry);
# 1223 "/usr/include/gnutls/gnutls.h" 3 4
typedef int (*gnutls_handshake_hook_func) (gnutls_session_t,
        unsigned int htype,
        unsigned post,
        unsigned int incoming);
void gnutls_handshake_set_hook_function(gnutls_session_t session,
     unsigned int htype, int post,
     gnutls_handshake_hook_func func);

typedef int (*gnutls_handshake_post_client_hello_func) (gnutls_session_t);
void
gnutls_handshake_set_post_client_hello_function(gnutls_session_t session,
      gnutls_handshake_post_client_hello_func
      func);

void gnutls_handshake_set_max_packet_length(gnutls_session_t session,
         size_t max);



const char *gnutls_check_version(const char *req_version);



void gnutls_credentials_clear(gnutls_session_t session);



int gnutls_credentials_set(gnutls_session_t session,
      gnutls_credentials_type_t type, void *cred);
int gnutls_credentials_get(gnutls_session_t session,
      gnutls_credentials_type_t type, void **cred);




struct gnutls_pubkey_st;
typedef struct gnutls_pubkey_st *gnutls_pubkey_t;

struct gnutls_privkey_st;
typedef struct gnutls_privkey_st *gnutls_privkey_t;

struct gnutls_x509_privkey_int;
typedef struct gnutls_x509_privkey_int *gnutls_x509_privkey_t;

struct gnutls_x509_crl_int;
typedef struct gnutls_x509_crl_int *gnutls_x509_crl_t;

struct gnutls_x509_crt_int;
typedef struct gnutls_x509_crt_int *gnutls_x509_crt_t;

struct gnutls_x509_crq_int;
typedef struct gnutls_x509_crq_int *gnutls_x509_crq_t;

struct gnutls_openpgp_keyring_int;
typedef struct gnutls_openpgp_keyring_int *gnutls_openpgp_keyring_t;




struct gnutls_certificate_credentials_st;
typedef struct gnutls_certificate_credentials_st
*gnutls_certificate_credentials_t;
typedef gnutls_certificate_credentials_t
    gnutls_certificate_server_credentials;
typedef gnutls_certificate_credentials_t
    gnutls_certificate_client_credentials;

typedef struct gnutls_anon_server_credentials_st
*gnutls_anon_server_credentials_t;
typedef struct gnutls_anon_client_credentials_st
*gnutls_anon_client_credentials_t;

void gnutls_anon_free_server_credentials(gnutls_anon_server_credentials_t
      sc);
int
gnutls_anon_allocate_server_credentials(gnutls_anon_server_credentials_t
     * sc);

void gnutls_anon_set_server_dh_params(gnutls_anon_server_credentials_t res,
          gnutls_dh_params_t dh_params);

void
gnutls_anon_set_server_params_function(gnutls_anon_server_credentials_t
           res, gnutls_params_function * func);

void
gnutls_anon_free_client_credentials(gnutls_anon_client_credentials_t sc);
int
gnutls_anon_allocate_client_credentials(gnutls_anon_client_credentials_t
     * sc);




void
gnutls_certificate_free_credentials(gnutls_certificate_credentials_t sc);
int
gnutls_certificate_allocate_credentials(gnutls_certificate_credentials_t
     * res);

int
gnutls_certificate_get_issuer(gnutls_certificate_credentials_t sc,
         gnutls_x509_crt_t cert,
         gnutls_x509_crt_t * issuer,
         unsigned int flags);

int gnutls_certificate_get_crt_raw(gnutls_certificate_credentials_t sc,
       unsigned idx1, unsigned idx2,
       gnutls_datum_t * cert);

void gnutls_certificate_free_keys(gnutls_certificate_credentials_t sc);
void gnutls_certificate_free_cas(gnutls_certificate_credentials_t sc);
void gnutls_certificate_free_ca_names(gnutls_certificate_credentials_t sc);
void gnutls_certificate_free_crls(gnutls_certificate_credentials_t sc);

void gnutls_certificate_set_dh_params(gnutls_certificate_credentials_t res,
          gnutls_dh_params_t dh_params);
void gnutls_certificate_set_verify_flags(gnutls_certificate_credentials_t
      res, unsigned int flags);
void gnutls_certificate_set_verify_limits(gnutls_certificate_credentials_t
       res, unsigned int max_bits,
       unsigned int max_depth);

int
gnutls_certificate_set_x509_system_trust(gnutls_certificate_credentials_t
      cred);

int
gnutls_certificate_set_x509_trust_file(gnutls_certificate_credentials_t
           cred, const char *cafile,
           gnutls_x509_crt_fmt_t type);
int
gnutls_certificate_set_x509_trust_dir(gnutls_certificate_credentials_t cred,
          const char *ca_dir,
          gnutls_x509_crt_fmt_t type);

int gnutls_certificate_set_x509_trust_mem(gnutls_certificate_credentials_t
       res, const gnutls_datum_t * ca,
       gnutls_x509_crt_fmt_t type);

int
gnutls_certificate_set_x509_crl_file(gnutls_certificate_credentials_t
         res, const char *crlfile,
         gnutls_x509_crt_fmt_t type);
int gnutls_certificate_set_x509_crl_mem(gnutls_certificate_credentials_t
     res, const gnutls_datum_t * CRL,
     gnutls_x509_crt_fmt_t type);

int
gnutls_certificate_set_x509_key_file(gnutls_certificate_credentials_t
         res, const char *certfile,
         const char *keyfile,
         gnutls_x509_crt_fmt_t type);

int
gnutls_certificate_set_x509_key_file2(gnutls_certificate_credentials_t
          res, const char *certfile,
          const char *keyfile,
          gnutls_x509_crt_fmt_t type,
          const char *pass,
          unsigned int flags);

int gnutls_certificate_set_x509_key_mem(gnutls_certificate_credentials_t
     res, const gnutls_datum_t * cert,
     const gnutls_datum_t * key,
     gnutls_x509_crt_fmt_t type);

int gnutls_certificate_set_x509_key_mem2(gnutls_certificate_credentials_t
      res, const gnutls_datum_t * cert,
      const gnutls_datum_t * key,
      gnutls_x509_crt_fmt_t type,
      const char *pass,
      unsigned int flags);

void gnutls_certificate_send_x509_rdn_sequence(gnutls_session_t session,
            int status);

int
gnutls_certificate_set_x509_simple_pkcs12_file
(gnutls_certificate_credentials_t res, const char *pkcs12file,
 gnutls_x509_crt_fmt_t type, const char *password);
int
gnutls_certificate_set_x509_simple_pkcs12_mem
(gnutls_certificate_credentials_t res, const gnutls_datum_t * p12blob,
 gnutls_x509_crt_fmt_t type, const char *password);




int gnutls_certificate_set_x509_key(gnutls_certificate_credentials_t res,
        gnutls_x509_crt_t * cert_list,
        int cert_list_size,
        gnutls_x509_privkey_t key);
int gnutls_certificate_set_x509_trust(gnutls_certificate_credentials_t res,
          gnutls_x509_crt_t * ca_list,
          int ca_list_size);
int gnutls_certificate_set_x509_crl(gnutls_certificate_credentials_t res,
        gnutls_x509_crl_t * crl_list,
        int crl_list_size);


typedef int (*gnutls_status_request_ocsp_func)
 (gnutls_session_t session, void *ptr, gnutls_datum_t * ocsp_response);

void
gnutls_certificate_set_ocsp_status_request_function
(gnutls_certificate_credentials_t res,
gnutls_status_request_ocsp_func ocsp_func, void *ptr);

int
gnutls_certificate_set_ocsp_status_request_file
(gnutls_certificate_credentials_t res, const char *response_file,
 unsigned int flags);

int gnutls_ocsp_status_request_enable_client(gnutls_session_t session,
          gnutls_datum_t * responder_id,
          size_t responder_id_size,
          gnutls_datum_t *
          request_extensions);

int gnutls_ocsp_status_request_get(gnutls_session_t session,
       gnutls_datum_t * response);

int gnutls_ocsp_status_request_is_checked(gnutls_session_t session,
       unsigned int flags);



int gnutls_global_init(void);
void gnutls_global_deinit(void);
# 1463 "/usr/include/gnutls/gnutls.h" 3 4
typedef time_t(*gnutls_time_func) (time_t * t);

typedef int (*mutex_init_func) (void **mutex);
typedef int (*mutex_lock_func) (void **mutex);
typedef int (*mutex_unlock_func) (void **mutex);
typedef int (*mutex_deinit_func) (void **mutex);

void gnutls_global_set_mutex(mutex_init_func init,
        mutex_deinit_func deinit,
        mutex_lock_func lock,
        mutex_unlock_func unlock);

typedef void *(*gnutls_alloc_function) (size_t);
typedef void *(*gnutls_calloc_function) (size_t, size_t);
typedef int (*gnutls_is_secure_function) (const void *);
typedef void (*gnutls_free_function) (void *);
typedef void *(*gnutls_realloc_function) (void *, size_t);

void gnutls_global_set_time_function(gnutls_time_func time_func);


extern gnutls_alloc_function gnutls_malloc;
extern gnutls_realloc_function gnutls_realloc;
extern gnutls_calloc_function gnutls_calloc;
extern gnutls_free_function gnutls_free;

extern char *(*gnutls_strdup) (const char *);

typedef void (*gnutls_log_func) (int, const char *);
typedef void (*gnutls_audit_log_func) (gnutls_session_t, const char *);
void gnutls_global_set_log_function(gnutls_log_func log_func);
void gnutls_global_set_audit_log_function(gnutls_audit_log_func log_func);
void gnutls_global_set_log_level(int level);



int gnutls_dh_params_init(gnutls_dh_params_t * dh_params);
void gnutls_dh_params_deinit(gnutls_dh_params_t dh_params);
int gnutls_dh_params_import_raw(gnutls_dh_params_t dh_params,
    const gnutls_datum_t * prime,
    const gnutls_datum_t * generator);
int gnutls_dh_params_import_pkcs3(gnutls_dh_params_t params,
      const gnutls_datum_t * pkcs3_params,
      gnutls_x509_crt_fmt_t format);
int gnutls_dh_params_generate2(gnutls_dh_params_t params,
          unsigned int bits);
int gnutls_dh_params_export_pkcs3(gnutls_dh_params_t params,
      gnutls_x509_crt_fmt_t format,
      unsigned char *params_data,
      size_t * params_data_size);
int gnutls_dh_params_export2_pkcs3(gnutls_dh_params_t params,
       gnutls_x509_crt_fmt_t format,
       gnutls_datum_t * out);
int gnutls_dh_params_export_raw(gnutls_dh_params_t params,
    gnutls_datum_t * prime,
    gnutls_datum_t * generator,
    unsigned int *bits);
int gnutls_dh_params_cpy(gnutls_dh_params_t dst, gnutls_dh_params_t src);





typedef struct {
 void *iov_base;
 size_t iov_len;
} giovec_t;

typedef ssize_t(*gnutls_pull_func) (gnutls_transport_ptr_t, void *,
        size_t);
typedef ssize_t(*gnutls_push_func) (gnutls_transport_ptr_t, const void *,
        size_t);

typedef int (*gnutls_pull_timeout_func) (gnutls_transport_ptr_t,
      unsigned int ms);

typedef ssize_t(*gnutls_vec_push_func) (gnutls_transport_ptr_t,
     const giovec_t * iov, int iovcnt);

typedef int (*gnutls_errno_func) (gnutls_transport_ptr_t);






void gnutls_transport_set_int2(gnutls_session_t session, int r, int s);


void gnutls_transport_get_int2(gnutls_session_t session, int *r, int *s);
int gnutls_transport_get_int(gnutls_session_t session);

void gnutls_transport_set_ptr(gnutls_session_t session,
         gnutls_transport_ptr_t ptr);
void gnutls_transport_set_ptr2(gnutls_session_t session,
          gnutls_transport_ptr_t recv_ptr,
          gnutls_transport_ptr_t send_ptr);

gnutls_transport_ptr_t gnutls_transport_get_ptr(gnutls_session_t session);
void gnutls_transport_get_ptr2(gnutls_session_t session,
          gnutls_transport_ptr_t * recv_ptr,
          gnutls_transport_ptr_t * send_ptr);

void gnutls_transport_set_vec_push_function(gnutls_session_t session,
         gnutls_vec_push_func vec_func);
void gnutls_transport_set_push_function(gnutls_session_t session,
     gnutls_push_func push_func);
void gnutls_transport_set_pull_function(gnutls_session_t session,
     gnutls_pull_func pull_func);

void gnutls_transport_set_pull_timeout_function(gnutls_session_t session,
      gnutls_pull_timeout_func
      func);

void gnutls_transport_set_errno_function(gnutls_session_t session,
      gnutls_errno_func errno_func);

void gnutls_transport_set_errno(gnutls_session_t session, int err);



void gnutls_session_set_ptr(gnutls_session_t session, void *ptr);
void *gnutls_session_get_ptr(gnutls_session_t session);

void gnutls_openpgp_send_cert(gnutls_session_t session,
         gnutls_openpgp_crt_status_t status);



int gnutls_fingerprint(gnutls_digest_algorithm_t algo,
         const gnutls_datum_t * data, void *result,
         size_t * result_size);







typedef enum gnutls_random_art {
 GNUTLS_RANDOM_ART_OPENSSH = 1
} gnutls_random_art_t;

int gnutls_random_art(gnutls_random_art_t type,
        const char *key_type, unsigned int key_size,
        void *fpr, size_t fpr_size, gnutls_datum_t * art);




typedef struct gnutls_srp_server_credentials_st
*gnutls_srp_server_credentials_t;
typedef struct gnutls_srp_client_credentials_st
*gnutls_srp_client_credentials_t;

void
gnutls_srp_free_client_credentials(gnutls_srp_client_credentials_t sc);
int
gnutls_srp_allocate_client_credentials(gnutls_srp_client_credentials_t *
           sc);
int gnutls_srp_set_client_credentials(gnutls_srp_client_credentials_t res,
          const char *username,
          const char *password);

void
gnutls_srp_free_server_credentials(gnutls_srp_server_credentials_t sc);
int
gnutls_srp_allocate_server_credentials(gnutls_srp_server_credentials_t *
           sc);
int gnutls_srp_set_server_credentials_file(gnutls_srp_server_credentials_t
        res, const char *password_file,
        const char *password_conf_file);

const char *gnutls_srp_server_get_username(gnutls_session_t session);

void gnutls_srp_set_prime_bits(gnutls_session_t session,
                               unsigned int bits);

int gnutls_srp_verifier(const char *username,
   const char *password,
   const gnutls_datum_t * salt,
   const gnutls_datum_t * generator,
   const gnutls_datum_t * prime,
   gnutls_datum_t * res);




extern const gnutls_datum_t gnutls_srp_4096_group_prime;
extern const gnutls_datum_t gnutls_srp_4096_group_generator;

extern const gnutls_datum_t gnutls_srp_3072_group_prime;
extern const gnutls_datum_t gnutls_srp_3072_group_generator;

extern const gnutls_datum_t gnutls_srp_2048_group_prime;
extern const gnutls_datum_t gnutls_srp_2048_group_generator;

extern const gnutls_datum_t gnutls_srp_1536_group_prime;
extern const gnutls_datum_t gnutls_srp_1536_group_generator;

extern const gnutls_datum_t gnutls_srp_1024_group_prime;
extern const gnutls_datum_t gnutls_srp_1024_group_generator;

typedef int gnutls_srp_server_credentials_function(gnutls_session_t,
         const char *username,
         gnutls_datum_t * salt,
         gnutls_datum_t *
         verifier,
         gnutls_datum_t *
         generator,
         gnutls_datum_t * prime);
void
gnutls_srp_set_server_credentials_function(gnutls_srp_server_credentials_t
        cred,
        gnutls_srp_server_credentials_function
        * func);

typedef int gnutls_srp_client_credentials_function(gnutls_session_t,
         char **, char **);
void
gnutls_srp_set_client_credentials_function(gnutls_srp_client_credentials_t
        cred,
        gnutls_srp_client_credentials_function
        * func);

int gnutls_srp_base64_encode(const gnutls_datum_t * data, char *result,
        size_t * result_size);
int gnutls_srp_base64_encode_alloc(const gnutls_datum_t * data,
       gnutls_datum_t * result);

int gnutls_srp_base64_decode(const gnutls_datum_t * b64_data, char *result,
        size_t * result_size);
int gnutls_srp_base64_decode_alloc(const gnutls_datum_t * b64_data,
       gnutls_datum_t * result);

void
gnutls_srp_set_server_fake_salt_seed(gnutls_srp_server_credentials_t
         sc,
         const gnutls_datum_t * seed,
         unsigned int salt_length);


typedef struct gnutls_psk_server_credentials_st
*gnutls_psk_server_credentials_t;
typedef struct gnutls_psk_client_credentials_st
*gnutls_psk_client_credentials_t;
# 1717 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum gnutls_psk_key_flags {
 GNUTLS_PSK_KEY_RAW = 0,
 GNUTLS_PSK_KEY_HEX
} gnutls_psk_key_flags;

void
gnutls_psk_free_client_credentials(gnutls_psk_client_credentials_t sc);
int
gnutls_psk_allocate_client_credentials(gnutls_psk_client_credentials_t *
           sc);
int gnutls_psk_set_client_credentials(gnutls_psk_client_credentials_t res,
          const char *username,
          const gnutls_datum_t * key,
          gnutls_psk_key_flags flags);

void
gnutls_psk_free_server_credentials(gnutls_psk_server_credentials_t sc);
int
gnutls_psk_allocate_server_credentials(gnutls_psk_server_credentials_t *
           sc);
int gnutls_psk_set_server_credentials_file(gnutls_psk_server_credentials_t
        res, const char *password_file);

int
gnutls_psk_set_server_credentials_hint(gnutls_psk_server_credentials_t
           res, const char *hint);

const char *gnutls_psk_server_get_username(gnutls_session_t session);
const char *gnutls_psk_client_get_hint(gnutls_session_t session);

typedef int gnutls_psk_server_credentials_function(gnutls_session_t,
         const char *username,
         gnutls_datum_t * key);
void
gnutls_psk_set_server_credentials_function(gnutls_psk_server_credentials_t
        cred,
        gnutls_psk_server_credentials_function
        * func);

typedef int gnutls_psk_client_credentials_function(gnutls_session_t,
         char **username,
         gnutls_datum_t * key);
void
gnutls_psk_set_client_credentials_function(gnutls_psk_client_credentials_t
        cred,
        gnutls_psk_client_credentials_function
        * func);

int gnutls_hex_encode(const gnutls_datum_t * data, char *result,
        size_t * result_size);
int gnutls_hex_decode(const gnutls_datum_t * hex_data, void *result,
        size_t * result_size);

void
gnutls_psk_set_server_dh_params(gnutls_psk_server_credentials_t res,
    gnutls_dh_params_t dh_params);

void
gnutls_psk_set_server_params_function(gnutls_psk_server_credentials_t
          res, gnutls_params_function * func);
# 1791 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum gnutls_x509_subject_alt_name_t {
 GNUTLS_SAN_DNSNAME = 1,
 GNUTLS_SAN_RFC822NAME = 2,
 GNUTLS_SAN_URI = 3,
 GNUTLS_SAN_IPADDRESS = 4,
 GNUTLS_SAN_OTHERNAME = 5,
 GNUTLS_SAN_DN = 6,



 GNUTLS_SAN_OTHERNAME_XMPP = 1000
} gnutls_x509_subject_alt_name_t;

struct gnutls_openpgp_crt_int;
typedef struct gnutls_openpgp_crt_int *gnutls_openpgp_crt_t;

struct gnutls_openpgp_privkey_int;
typedef struct gnutls_openpgp_privkey_int *gnutls_openpgp_privkey_t;

struct gnutls_pkcs11_privkey_st;
typedef struct gnutls_pkcs11_privkey_st *gnutls_pkcs11_privkey_t;
# 1822 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_PRIVKEY_X509,
 GNUTLS_PRIVKEY_OPENPGP,
 GNUTLS_PRIVKEY_PKCS11,
 GNUTLS_PRIVKEY_EXT
} gnutls_privkey_type_t;

typedef struct gnutls_retr2_st {
 gnutls_certificate_type_t cert_type;
 gnutls_privkey_type_t key_type;

 union {
  gnutls_x509_crt_t *x509;
  gnutls_openpgp_crt_t pgp;
 } cert;
 unsigned int ncerts;

 union {
  gnutls_x509_privkey_t x509;
  gnutls_openpgp_privkey_t pgp;
  gnutls_pkcs11_privkey_t pkcs11;
 } key;

 unsigned int deinit_all;
} gnutls_retr2_st;





gnutls_credentials_type_t gnutls_auth_get_type(gnutls_session_t session);
gnutls_credentials_type_t
gnutls_auth_server_get_type(gnutls_session_t session);
gnutls_credentials_type_t
gnutls_auth_client_get_type(gnutls_session_t session);



void gnutls_dh_set_prime_bits(gnutls_session_t session, unsigned int bits);
int gnutls_dh_get_secret_bits(gnutls_session_t session);
int gnutls_dh_get_peers_public_bits(gnutls_session_t session);
int gnutls_dh_get_prime_bits(gnutls_session_t session);

int gnutls_dh_get_group(gnutls_session_t session, gnutls_datum_t * raw_gen,
   gnutls_datum_t * raw_prime);
int gnutls_dh_get_pubkey(gnutls_session_t session,
    gnutls_datum_t * raw_key);
# 1880 "/usr/include/gnutls/gnutls.h" 3 4
typedef int gnutls_certificate_retrieve_function(gnutls_session_t,
       const
       gnutls_datum_t *
       req_ca_rdn,
       int nreqs,
       const
       gnutls_pk_algorithm_t
       * pk_algos,
       int
       pk_algos_length,
       gnutls_retr2_st *);


void
gnutls_certificate_set_retrieve_function(gnutls_certificate_credentials_t
      cred,
      gnutls_certificate_retrieve_function
      * func);

typedef int gnutls_certificate_verify_function(gnutls_session_t);
void
gnutls_certificate_set_verify_function(gnutls_certificate_credentials_t
           cred,
           gnutls_certificate_verify_function
           * func);

void
gnutls_certificate_server_set_request(gnutls_session_t session,
          gnutls_certificate_request_t req);



const gnutls_datum_t *gnutls_certificate_get_peers(gnutls_session_t
         session, unsigned int
         *list_size);
const gnutls_datum_t *gnutls_certificate_get_ours(gnutls_session_t
        session);

int gnutls_certificate_get_peers_subkey_id(gnutls_session_t session,
        gnutls_datum_t * id);

time_t gnutls_certificate_activation_time_peers(gnutls_session_t session);
time_t gnutls_certificate_expiration_time_peers(gnutls_session_t session);

int gnutls_certificate_client_get_request_status(gnutls_session_t session);
int gnutls_certificate_verify_peers2(gnutls_session_t session,
         unsigned int *status);
int gnutls_certificate_verify_peers3(gnutls_session_t session,
         const char *hostname,
         unsigned int *status);
# 1939 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_DT_UNKNOWN = 0,
 GNUTLS_DT_DNS_HOSTNAME = 1,
 GNUTLS_DT_KEY_PURPOSE_OID = 2
} gnutls_vdata_types_t;

typedef struct {
 gnutls_vdata_types_t type;
 unsigned char *data;
 unsigned int size;
} gnutls_typed_vdata_st;

int
gnutls_certificate_verify_peers(gnutls_session_t session,
    gnutls_typed_vdata_st * data,
    unsigned int elements,
    unsigned int *status);

int gnutls_certificate_verification_status_print(unsigned int status,
       gnutls_certificate_type_t
       type,
       gnutls_datum_t * out,
       unsigned int flags);

int gnutls_pem_base64_encode(const char *msg, const gnutls_datum_t * data,
        char *result, size_t * result_size);
int gnutls_pem_base64_decode(const char *header,
        const gnutls_datum_t * b64_data,
        unsigned char *result, size_t * result_size);

int gnutls_pem_base64_encode_alloc(const char *msg,
       const gnutls_datum_t * data,
       gnutls_datum_t * result);
int gnutls_pem_base64_decode_alloc(const char *header,
       const gnutls_datum_t * b64_data,
       gnutls_datum_t * result);
# 1991 "/usr/include/gnutls/gnutls.h" 3 4
void
gnutls_certificate_set_params_function(gnutls_certificate_credentials_t
           res, gnutls_params_function * func);
void gnutls_anon_set_params_function(gnutls_anon_server_credentials_t res,
         gnutls_params_function * func);
void gnutls_psk_set_params_function(gnutls_psk_server_credentials_t res,
        gnutls_params_function * func);

int gnutls_hex2bin(const char *hex_data, size_t hex_size,
     void *bin_data, size_t * bin_size);





typedef int (*gnutls_tdb_store_func) (const char *db_name,
          const char *host,
          const char *service,
          time_t expiration,
          const gnutls_datum_t * pubkey);

typedef int (*gnutls_tdb_store_commitment_func) (const char *db_name,
       const char *host,
       const char *service,
       time_t expiration,
       gnutls_digest_algorithm_t
       hash_algo,
       const gnutls_datum_t *
       hash);



typedef int (*gnutls_tdb_verify_func) (const char *db_name,
           const char *host,
           const char *service,
           const gnutls_datum_t * pubkey);


struct gnutls_tdb_int;
typedef struct gnutls_tdb_int *gnutls_tdb_t;

int gnutls_tdb_init(gnutls_tdb_t * tdb);
void gnutls_tdb_set_store_func(gnutls_tdb_t tdb,
          gnutls_tdb_store_func store);
void gnutls_tdb_set_store_commitment_func(gnutls_tdb_t tdb,
       gnutls_tdb_store_commitment_func
       cstore);
void gnutls_tdb_set_verify_func(gnutls_tdb_t tdb,
    gnutls_tdb_verify_func verify);
void gnutls_tdb_deinit(gnutls_tdb_t tdb);

int gnutls_verify_stored_pubkey(const char *db_name,
    gnutls_tdb_t tdb,
    const char *host,
    const char *service,
    gnutls_certificate_type_t cert_type,
    const gnutls_datum_t * cert,
    unsigned int flags);

int gnutls_store_commitment(const char *db_name,
       gnutls_tdb_t tdb,
       const char *host,
       const char *service,
       gnutls_digest_algorithm_t hash_algo,
       const gnutls_datum_t * hash,
       time_t expiration, unsigned int flags);

int gnutls_store_pubkey(const char *db_name,
   gnutls_tdb_t tdb,
   const char *host,
   const char *service,
   gnutls_certificate_type_t cert_type,
   const gnutls_datum_t * cert,
   time_t expiration, unsigned int flags);


int gnutls_load_file(const char *filename, gnutls_datum_t * data);

int gnutls_url_is_supported(const char *url);
# 2084 "/usr/include/gnutls/gnutls.h" 3 4
typedef enum {
 GNUTLS_PIN_USER = (1 << 0),
 GNUTLS_PIN_SO = (1 << 1),
 GNUTLS_PIN_FINAL_TRY = (1 << 2),
 GNUTLS_PIN_COUNT_LOW = (1 << 3),
 GNUTLS_PIN_CONTEXT_SPECIFIC = (1 << 4),
 GNUTLS_PIN_WRONG = (1 << 5)
} gnutls_pin_flag_t;
# 2133 "/usr/include/gnutls/gnutls.h" 3 4
typedef int (*gnutls_pin_callback_t) (void *userdata, int attempt,
          const char *token_url,
          const char *token_label,
          unsigned int flags,
          char *pin, size_t pin_max);

void gnutls_certificate_set_pin_function(gnutls_certificate_credentials_t,
      gnutls_pin_callback_t fn,
      void *userdata);


int gnutls_fips140_mode_enabled(void);
# 2355 "/usr/include/gnutls/gnutls.h" 3 4
# 1 "/usr/include/gnutls/compat.h" 1 3 4
# 51 "/usr/include/gnutls/compat.h" 3 4
typedef unsigned int gnutls_connection_end_t __attribute__ ((__deprecated__));


typedef gnutls_cipher_algorithm_t gnutls_cipher_algorithm
    __attribute__ ((__deprecated__));
typedef gnutls_kx_algorithm_t gnutls_kx_algorithm
    __attribute__ ((__deprecated__));
typedef gnutls_mac_algorithm_t gnutls_mac_algorithm
    __attribute__ ((__deprecated__));
typedef gnutls_digest_algorithm_t gnutls_digest_algorithm
    __attribute__ ((__deprecated__));
typedef gnutls_compression_method_t gnutls_compression_method
    __attribute__ ((__deprecated__));
typedef gnutls_connection_end_t gnutls_connection_end
    __attribute__ ((__deprecated__));
typedef gnutls_x509_crt_fmt_t gnutls_x509_crt_fmt
    __attribute__ ((__deprecated__));
typedef gnutls_pk_algorithm_t gnutls_pk_algorithm
    __attribute__ ((__deprecated__));
typedef gnutls_sign_algorithm_t gnutls_sign_algorithm
    __attribute__ ((__deprecated__));
typedef gnutls_close_request_t gnutls_close_request
    __attribute__ ((__deprecated__));
typedef gnutls_certificate_request_t gnutls_certificate_request
    __attribute__ ((__deprecated__));
typedef gnutls_certificate_status_t gnutls_certificate_status
    __attribute__ ((__deprecated__));
typedef gnutls_session_t gnutls_session __attribute__ ((__deprecated__));
typedef gnutls_alert_level_t gnutls_alert_level
    __attribute__ ((__deprecated__));
typedef gnutls_alert_description_t gnutls_alert_description
    __attribute__ ((__deprecated__));
typedef gnutls_x509_subject_alt_name_t gnutls_x509_subject_alt_name
    __attribute__ ((__deprecated__));
typedef gnutls_openpgp_privkey_t gnutls_openpgp_privkey
    __attribute__ ((__deprecated__));
typedef gnutls_openpgp_keyring_t gnutls_openpgp_keyring
    __attribute__ ((__deprecated__));
typedef gnutls_x509_crt_t gnutls_x509_crt __attribute__ ((__deprecated__));
typedef gnutls_x509_privkey_t gnutls_x509_privkey
    __attribute__ ((__deprecated__));
typedef gnutls_x509_crl_t gnutls_x509_crl __attribute__ ((__deprecated__));
typedef gnutls_x509_crq_t gnutls_x509_crq __attribute__ ((__deprecated__));
typedef gnutls_certificate_credentials_t
    gnutls_certificate_credentials __attribute__ ((__deprecated__));
typedef gnutls_anon_server_credentials_t
    gnutls_anon_server_credentials __attribute__ ((__deprecated__));
typedef gnutls_anon_client_credentials_t
    gnutls_anon_client_credentials __attribute__ ((__deprecated__));
typedef gnutls_srp_client_credentials_t
    gnutls_srp_client_credentials __attribute__ ((__deprecated__));
typedef gnutls_srp_server_credentials_t
    gnutls_srp_server_credentials __attribute__ ((__deprecated__));
typedef gnutls_dh_params_t gnutls_dh_params __attribute__ ((__deprecated__));
typedef gnutls_rsa_params_t gnutls_rsa_params __attribute__ ((__deprecated__));
typedef gnutls_params_type_t gnutls_params_type
    __attribute__ ((__deprecated__));
typedef gnutls_credentials_type_t gnutls_credentials_type
    __attribute__ ((__deprecated__));
typedef gnutls_certificate_type_t gnutls_certificate_type
    __attribute__ ((__deprecated__));
typedef gnutls_datum_t gnutls_datum __attribute__ ((__deprecated__));
typedef gnutls_transport_ptr_t gnutls_transport_ptr
    __attribute__ ((__deprecated__));
# 128 "/usr/include/gnutls/compat.h" 3 4
typedef gnutls_openpgp_crt_status_t gnutls_openpgp_key_status_t
    __attribute__ ((__deprecated__));
typedef gnutls_openpgp_crt_t gnutls_openpgp_key_t
    __attribute__ ((__deprecated__));
# 166 "/usr/include/gnutls/compat.h" 3 4
typedef struct gnutls_retr_st {
 gnutls_certificate_type_t type;
 union {
  gnutls_x509_crt_t *x509;
  gnutls_openpgp_crt_t pgp;
 } cert;
 unsigned int ncerts;

 union {
  gnutls_x509_privkey_t x509;
  gnutls_openpgp_privkey_t pgp;
 } key;

 unsigned int deinit_all;
} gnutls_retr_st;

typedef int
gnutls_certificate_client_retrieve_function(gnutls_session_t,
         const
         gnutls_datum_t *
         req_ca_rdn,
         int nreqs, const
         gnutls_pk_algorithm_t
         * pk_algos, int
         pk_algos_length,
         gnutls_retr_st *);
typedef int
gnutls_certificate_server_retrieve_function(gnutls_session_t,
         gnutls_retr_st *);

void gnutls_certificate_client_set_retrieve_function
    (gnutls_certificate_credentials_t cred,
     gnutls_certificate_client_retrieve_function *
     func) __attribute__ ((__deprecated__));
void
 gnutls_certificate_server_set_retrieve_function
    (gnutls_certificate_credentials_t cred,
     gnutls_certificate_server_retrieve_function *
     func) __attribute__ ((__deprecated__));



typedef int (*gnutls_sign_func) (gnutls_session_t session,
     void *userdata,
     gnutls_certificate_type_t
     cert_type,
     const gnutls_datum_t * cert,
     const gnutls_datum_t * hash,
     gnutls_datum_t * signature);

void
gnutls_sign_callback_set(gnutls_session_t session,
    gnutls_sign_func sign_func,
    void *userdata) __attribute__ ((__deprecated__));
gnutls_sign_func
gnutls_sign_callback_get(gnutls_session_t session,
    void **userdata) __attribute__ ((__deprecated__));




int gnutls_x509_privkey_sign_hash(gnutls_x509_privkey_t key,
      const gnutls_datum_t * hash,
      gnutls_datum_t * signature)
    __attribute__ ((__deprecated__));

int gnutls_openpgp_privkey_sign_hash(gnutls_openpgp_privkey_t key,
         const gnutls_datum_t * hash,
         gnutls_datum_t * signature)
    __attribute__ ((__deprecated__));



int gnutls_x509_privkey_sign_data(gnutls_x509_privkey_t key,
      gnutls_digest_algorithm_t digest,
      unsigned int flags,
      const gnutls_datum_t * data,
      void *signature,
      size_t * signature_size)
    __attribute__ ((__deprecated__));


int gnutls_x509_crt_verify_data(gnutls_x509_crt_t crt,
    unsigned int flags,
    const gnutls_datum_t * data,
    const gnutls_datum_t * signature)
    __attribute__ ((__deprecated__));



int gnutls_x509_crt_verify_hash(gnutls_x509_crt_t crt,
    unsigned int flags,
    const gnutls_datum_t * hash,
    const gnutls_datum_t * signature)
    __attribute__ ((__deprecated__));


int gnutls_x509_crt_get_verify_algorithm(gnutls_x509_crt_t crt,
      const gnutls_datum_t *
      signature,
      gnutls_digest_algorithm_t
      * hash)
    __attribute__ ((__deprecated__));


int gnutls_x509_crt_get_preferred_hash_algorithm(gnutls_x509_crt_t
       crt,
       gnutls_digest_algorithm_t
       * hash, unsigned int
       *mand)
    __attribute__ ((__deprecated__));


int gnutls_x509_crq_sign(gnutls_x509_crq_t crq,
    gnutls_x509_privkey_t key)
    __attribute__ ((__deprecated__));




int gnutls_x509_crl_sign(gnutls_x509_crl_t crl,
    gnutls_x509_crt_t issuer,
    gnutls_x509_privkey_t issuer_key)
    __attribute__ ((__deprecated__));



int gnutls_cipher_set_priority(gnutls_session_t session,
          const int *list)
    __attribute__ ((__deprecated__));
int gnutls_mac_set_priority(gnutls_session_t session,
       const int *list) __attribute__ ((__deprecated__));
int gnutls_compression_set_priority(gnutls_session_t session,
        const int *list)
    __attribute__ ((__deprecated__));
int gnutls_kx_set_priority(gnutls_session_t session,
      const int *list) __attribute__ ((__deprecated__));
int gnutls_protocol_set_priority(gnutls_session_t session,
     const int *list)
    __attribute__ ((__deprecated__));
int gnutls_certificate_type_set_priority(gnutls_session_t session,
      const int *list)
    __attribute__ ((__deprecated__));



int gnutls_rsa_params_init(gnutls_rsa_params_t *
      rsa_params) __attribute__ ((__deprecated__));
void gnutls_rsa_params_deinit(gnutls_rsa_params_t rsa_params)
    __attribute__ ((__deprecated__));
int gnutls_rsa_params_cpy(gnutls_rsa_params_t dst,
     gnutls_rsa_params_t src)
    __attribute__ ((__deprecated__));
int gnutls_rsa_params_import_raw(gnutls_rsa_params_t rsa_params,
     const gnutls_datum_t * m,
     const gnutls_datum_t * e,
     const gnutls_datum_t * d,
     const gnutls_datum_t * p,
     const gnutls_datum_t * q,
     const gnutls_datum_t * u);
int gnutls_rsa_params_generate2(gnutls_rsa_params_t params,
    unsigned int bits)
    __attribute__ ((__deprecated__));
int gnutls_rsa_params_export_raw(gnutls_rsa_params_t rsa,
     gnutls_datum_t * m,
     gnutls_datum_t * e,
     gnutls_datum_t * d,
     gnutls_datum_t * p,
     gnutls_datum_t * q,
     gnutls_datum_t * u,
     unsigned int *bits)
    __attribute__ ((__deprecated__));
int gnutls_rsa_params_export_pkcs1(gnutls_rsa_params_t params,
       gnutls_x509_crt_fmt_t format,
       unsigned char *params_data,
       size_t *
       params_data_size)
    __attribute__ ((__deprecated__));
int gnutls_rsa_params_import_pkcs1(gnutls_rsa_params_t params,
       const gnutls_datum_t *
       pkcs1_params,
       gnutls_x509_crt_fmt_t format)
    __attribute__ ((__deprecated__));

int gnutls_rsa_export_get_pubkey(gnutls_session_t session,
     gnutls_datum_t * exponent,
     gnutls_datum_t *
     modulus) __attribute__ ((__deprecated__));
int gnutls_rsa_export_get_modulus_bits(gnutls_session_t session)
    __attribute__ ((__deprecated__));
int gnutls_set_default_export_priority(gnutls_session_t session)
    __attribute__ ((__deprecated__));

void gnutls_certificate_set_rsa_export_params
    (gnutls_certificate_credentials_t res,
     gnutls_rsa_params_t rsa_params) __attribute__ ((__deprecated__));


int gnutls_privkey_sign_raw_data(gnutls_privkey_t key,
     unsigned flags,
     const gnutls_datum_t * data,
     gnutls_datum_t *
     signature) __attribute__ ((__deprecated__));





static inline const void
*gnutls_session_get_server_random(gnutls_session_t session)
    __attribute__ ((__deprecated__));
static inline const void
*gnutls_session_get_server_random(gnutls_session_t session)
{
 gnutls_datum_t rnd;
 gnutls_session_get_random(session, ((void*)0), &rnd);
 return rnd.data;
}

static inline const void
*gnutls_session_get_client_random(gnutls_session_t session)
    __attribute__ ((__deprecated__));
static inline const void
*gnutls_session_get_client_random(gnutls_session_t session)
{
 gnutls_datum_t rnd;
 gnutls_session_get_random(session, &rnd, ((void*)0));
 return rnd.data;
}


void
gnutls_global_set_mem_functions(gnutls_alloc_function alloc_func,
    gnutls_alloc_function secure_alloc_func,
    gnutls_is_secure_function is_secure_func,
    gnutls_realloc_function realloc_func,
    gnutls_free_function free_func) __attribute__ ((__deprecated__));
# 2356 "/usr/include/gnutls/gnutls.h" 2 3 4
# 24 "./gnutls.h" 2
# 1 "/usr/include/gnutls/x509.h" 1 3 4
# 118 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_certificate_import_flags {
 GNUTLS_X509_CRT_LIST_IMPORT_FAIL_IF_EXCEED = 1,
 GNUTLS_X509_CRT_LIST_FAIL_IF_UNSORTED = 2
} gnutls_certificate_import_flags;

int gnutls_x509_crt_init(gnutls_x509_crt_t * cert);
void gnutls_x509_crt_deinit(gnutls_x509_crt_t cert);
int gnutls_x509_crt_import(gnutls_x509_crt_t cert,
      const gnutls_datum_t * data,
      gnutls_x509_crt_fmt_t format);
int gnutls_x509_crt_list_import2(gnutls_x509_crt_t ** certs,
     unsigned int *size,
     const gnutls_datum_t * data,
     gnutls_x509_crt_fmt_t format,
     unsigned int flags);
int gnutls_x509_crt_list_import(gnutls_x509_crt_t * certs,
    unsigned int *cert_max,
    const gnutls_datum_t * data,
    gnutls_x509_crt_fmt_t format,
    unsigned int flags);
int gnutls_x509_crt_export(gnutls_x509_crt_t cert,
      gnutls_x509_crt_fmt_t format,
      void *output_data, size_t * output_data_size);
int gnutls_x509_crt_export2(gnutls_x509_crt_t cert,
       gnutls_x509_crt_fmt_t format,
       gnutls_datum_t * out);
int gnutls_x509_crt_get_private_key_usage_period(gnutls_x509_crt_t
       cert,
       time_t *
       activation,
       time_t *
       expiration, unsigned int
       *critical);

int gnutls_x509_crt_get_issuer_dn(gnutls_x509_crt_t cert,
      char *buf, size_t * buf_size);
int gnutls_x509_crt_get_issuer_dn2(gnutls_x509_crt_t cert,
       gnutls_datum_t * dn);
int gnutls_x509_crt_get_issuer_dn_oid(gnutls_x509_crt_t cert,
          int indx, void *oid,
          size_t * oid_size);
int gnutls_x509_crt_get_issuer_dn_by_oid(gnutls_x509_crt_t cert,
      const char *oid, int indx,
      unsigned int raw_flag,
      void *buf, size_t * buf_size);
int gnutls_x509_crt_get_dn(gnutls_x509_crt_t cert, char *buf,
      size_t * buf_size);
int gnutls_x509_crt_get_dn2(gnutls_x509_crt_t cert, gnutls_datum_t * dn);
int gnutls_x509_crt_get_dn_oid(gnutls_x509_crt_t cert, int indx,
          void *oid, size_t * oid_size);
int gnutls_x509_crt_get_dn_by_oid(gnutls_x509_crt_t cert,
      const char *oid, int indx,
      unsigned int raw_flag, void *buf,
      size_t * buf_size);
int gnutls_x509_crt_check_hostname(gnutls_x509_crt_t cert,
       const char *hostname);
int gnutls_x509_crt_check_hostname2(gnutls_x509_crt_t cert,
         const char *hostname, unsigned int flags);

int gnutls_x509_crt_get_signature_algorithm(gnutls_x509_crt_t cert);
int gnutls_x509_crt_get_signature(gnutls_x509_crt_t cert,
      char *sig, size_t * sizeof_sig);
int gnutls_x509_crt_get_version(gnutls_x509_crt_t cert);
int gnutls_x509_crt_get_key_id(gnutls_x509_crt_t crt,
          unsigned int flags,
          unsigned char *output_data,
          size_t * output_data_size);

int gnutls_x509_crt_set_private_key_usage_period(gnutls_x509_crt_t
       crt,
       time_t activation,
       time_t expiration);
int gnutls_x509_crt_set_authority_key_id(gnutls_x509_crt_t cert,
      const void *id, size_t id_size);
int gnutls_x509_crt_get_authority_key_id(gnutls_x509_crt_t cert,
      void *id,
      size_t * id_size,
      unsigned int *critical);
int gnutls_x509_crt_get_authority_key_gn_serial(gnutls_x509_crt_t
      cert,
      unsigned int seq,
      void *alt,
      size_t * alt_size,
      unsigned int
      *alt_type,
      void *serial,
      size_t *
      serial_size, unsigned int
      *critical);

int gnutls_x509_crt_get_subject_key_id(gnutls_x509_crt_t cert,
           void *ret,
           size_t * ret_size,
           unsigned int *critical);

int gnutls_x509_crt_get_subject_unique_id(gnutls_x509_crt_t crt,
       char *buf, size_t * buf_size);

int gnutls_x509_crt_get_issuer_unique_id(gnutls_x509_crt_t crt,
      char *buf, size_t * buf_size);

void gnutls_x509_crt_set_pin_function(gnutls_x509_crt_t crt,
          gnutls_pin_callback_t fn,
          void *userdata);
# 234 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_info_access_what_t {
 GNUTLS_IA_ACCESSMETHOD_OID = 1,
 GNUTLS_IA_ACCESSLOCATION_GENERALNAME_TYPE = 2,

 GNUTLS_IA_URI = 106,

 GNUTLS_IA_UNKNOWN = 10000,
 GNUTLS_IA_OCSP_URI = 10006,
 GNUTLS_IA_CAISSUERS_URI = 10106
} gnutls_info_access_what_t;

int gnutls_x509_crt_get_authority_info_access(gnutls_x509_crt_t
           crt,
           unsigned int seq,
           int what,
           gnutls_datum_t *
           data, unsigned int
           *critical);

typedef struct gnutls_name_constraints_st *gnutls_x509_name_constraints_t;

unsigned gnutls_x509_name_constraints_check(gnutls_x509_name_constraints_t nc,
           gnutls_x509_subject_alt_name_t type,
           const gnutls_datum_t * name);
unsigned gnutls_x509_name_constraints_check_crt(gnutls_x509_name_constraints_t nc,
           gnutls_x509_subject_alt_name_t type,
           gnutls_x509_crt_t crt);

int gnutls_x509_name_constraints_init(gnutls_x509_name_constraints_t *nc);
void gnutls_x509_name_constraints_deinit(gnutls_x509_name_constraints_t nc);


int gnutls_x509_crt_get_name_constraints(gnutls_x509_crt_t crt,
      gnutls_x509_name_constraints_t nc,
      unsigned int flags,
      unsigned int *critical);
int gnutls_x509_name_constraints_add_permitted(gnutls_x509_name_constraints_t nc,
            gnutls_x509_subject_alt_name_t type,
            const gnutls_datum_t * name);
int gnutls_x509_name_constraints_add_excluded(gnutls_x509_name_constraints_t nc,
           gnutls_x509_subject_alt_name_t type,
           const gnutls_datum_t * name);
int gnutls_x509_crt_set_name_constraints(gnutls_x509_crt_t crt,
      gnutls_x509_name_constraints_t nc,
      unsigned int critical);
int gnutls_x509_name_constraints_get_permitted(gnutls_x509_name_constraints_t nc,
         unsigned idx,
         unsigned *type, gnutls_datum_t * name);
int gnutls_x509_name_constraints_get_excluded(gnutls_x509_name_constraints_t nc,
         unsigned idx,
         unsigned *type, gnutls_datum_t * name);
# 302 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_x509_crl_reason_flags_t {
 GNUTLS_CRL_REASON_UNSPECIFIED = 0,
 GNUTLS_CRL_REASON_PRIVILEGE_WITHDRAWN = 1,
 GNUTLS_CRL_REASON_CERTIFICATE_HOLD = 2,
 GNUTLS_CRL_REASON_CESSATION_OF_OPERATION = 4,
 GNUTLS_CRL_REASON_SUPERSEDED = 8,
 GNUTLS_CRL_REASON_AFFILIATION_CHANGED = 16,
 GNUTLS_CRL_REASON_CA_COMPROMISE = 32,
 GNUTLS_CRL_REASON_KEY_COMPROMISE = 64,
 GNUTLS_CRL_REASON_UNUSED = 128,
 GNUTLS_CRL_REASON_AA_COMPROMISE = 32768
} gnutls_x509_crl_reason_flags_t;

int gnutls_x509_crt_get_crl_dist_points(gnutls_x509_crt_t cert,
     unsigned int seq,
     void *ret,
     size_t * ret_size,
     unsigned int *reason_flags,
     unsigned int *critical);
int gnutls_x509_crt_set_crl_dist_points2(gnutls_x509_crt_t crt,
      gnutls_x509_subject_alt_name_t
      type, const void *data,
      unsigned int data_size,
      unsigned int reason_flags);
int gnutls_x509_crt_set_crl_dist_points(gnutls_x509_crt_t crt,
     gnutls_x509_subject_alt_name_t
     type,
     const void *data_string,
     unsigned int reason_flags);
int gnutls_x509_crt_cpy_crl_dist_points(gnutls_x509_crt_t dst,
     gnutls_x509_crt_t src);

int gnutls_x509_crl_sign2(gnutls_x509_crl_t crl,
     gnutls_x509_crt_t issuer,
     gnutls_x509_privkey_t issuer_key,
     gnutls_digest_algorithm_t dig,
     unsigned int flags);

time_t gnutls_x509_crt_get_activation_time(gnutls_x509_crt_t cert);



time_t gnutls_x509_crt_get_expiration_time(gnutls_x509_crt_t cert);
int gnutls_x509_crt_get_serial(gnutls_x509_crt_t cert,
          void *result, size_t * result_size);

int gnutls_x509_crt_get_pk_algorithm(gnutls_x509_crt_t cert,
         unsigned int *bits);
int gnutls_x509_crt_get_pk_rsa_raw(gnutls_x509_crt_t crt,
       gnutls_datum_t * m, gnutls_datum_t * e);
int gnutls_x509_crt_get_pk_dsa_raw(gnutls_x509_crt_t crt,
       gnutls_datum_t * p,
       gnutls_datum_t * q,
       gnutls_datum_t * g, gnutls_datum_t * y);

int gnutls_x509_crt_get_subject_alt_name(gnutls_x509_crt_t cert,
      unsigned int seq,
      void *san,
      size_t * san_size,
      unsigned int *critical);
int gnutls_x509_crt_get_subject_alt_name2(gnutls_x509_crt_t cert,
       unsigned int seq,
       void *san,
       size_t * san_size,
       unsigned int *san_type,
       unsigned int *critical);

int gnutls_x509_crt_get_subject_alt_othername_oid(gnutls_x509_crt_t
        cert,
        unsigned int seq,
        void *oid,
        size_t * oid_size);

int gnutls_x509_crt_get_issuer_alt_name(gnutls_x509_crt_t cert,
     unsigned int seq,
     void *ian,
     size_t * ian_size,
     unsigned int *critical);
int gnutls_x509_crt_get_issuer_alt_name2(gnutls_x509_crt_t cert,
      unsigned int seq,
      void *ian,
      size_t * ian_size,
      unsigned int *ian_type,
      unsigned int *critical);

int gnutls_x509_crt_get_issuer_alt_othername_oid(gnutls_x509_crt_t
       cert,
       unsigned int seq,
       void *ret,
       size_t * ret_size);

int gnutls_x509_crt_get_ca_status(gnutls_x509_crt_t cert,
      unsigned int *critical);
int gnutls_x509_crt_get_basic_constraints(gnutls_x509_crt_t cert,
       unsigned int *critical,
       unsigned int *ca, int *pathlen);




int gnutls_x509_crt_get_key_usage(gnutls_x509_crt_t cert,
      unsigned int *key_usage,
      unsigned int *critical);
int gnutls_x509_crt_set_key_usage(gnutls_x509_crt_t crt,
      unsigned int usage);
int gnutls_x509_crt_set_authority_info_access(gnutls_x509_crt_t
           crt, int what,
           gnutls_datum_t * data);

int gnutls_x509_crt_get_proxy(gnutls_x509_crt_t cert,
         unsigned int *critical,
         int *pathlen,
         char **policyLanguage,
         char **policy, size_t * sizeof_policy);
# 427 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_x509_qualifier_t {
 GNUTLS_X509_QUALIFIER_UNKNOWN = 0, GNUTLS_X509_QUALIFIER_URI,
 GNUTLS_X509_QUALIFIER_NOTICE
} gnutls_x509_qualifier_t;

typedef struct gnutls_x509_policy_st {
 char *oid;
 unsigned int qualifiers;
 struct {
  gnutls_x509_qualifier_t type;
  char *data;
  unsigned int size;
 } qualifier[8];
} gnutls_x509_policy_st;

void gnutls_x509_policy_release(struct gnutls_x509_policy_st
    *policy);
int gnutls_x509_crt_get_policy(gnutls_x509_crt_t crt, int indx, struct gnutls_x509_policy_st
          *policy, unsigned int *critical);
int gnutls_x509_crt_set_policy(gnutls_x509_crt_t crt, const struct gnutls_x509_policy_st
          *policy, unsigned int critical);

int gnutls_x509_dn_oid_known(const char *oid);


const char *gnutls_x509_dn_oid_name(const char *oid, unsigned int flags);


int gnutls_x509_crt_get_extension_oid(gnutls_x509_crt_t cert,
          int indx, void *oid,
          size_t * oid_size);
int gnutls_x509_crt_get_extension_by_oid(gnutls_x509_crt_t cert,
      const char *oid, int indx,
      void *buf,
      size_t * buf_size,
      unsigned int *critical);
int
gnutls_x509_crq_get_extension_by_oid2(gnutls_x509_crq_t crq,
         const char *oid, int indx,
         gnutls_datum_t *output,
         unsigned int *critical);


int gnutls_x509_crt_get_extension_info(gnutls_x509_crt_t cert,
           int indx, void *oid,
           size_t * oid_size,
           unsigned int *critical);
int gnutls_x509_crt_get_extension_data(gnutls_x509_crt_t cert,
           int indx, void *data,
           size_t * sizeof_data);
int
gnutls_x509_crt_get_extension_data2(gnutls_x509_crt_t cert,
          unsigned indx, gnutls_datum_t * data);


int gnutls_x509_crt_set_extension_by_oid(gnutls_x509_crt_t crt,
      const char *oid,
      const void *buf,
      size_t sizeof_buf,
      unsigned int critical);



int gnutls_x509_crt_set_dn(gnutls_x509_crt_t crt, const char *dn,
      const char **err);

int gnutls_x509_crt_set_dn_by_oid(gnutls_x509_crt_t crt,
      const char *oid,
      unsigned int raw_flag,
      const void *name,
      unsigned int sizeof_name);
int gnutls_x509_crt_set_issuer_dn_by_oid(gnutls_x509_crt_t crt,
      const char *oid,
      unsigned int raw_flag,
      const void *name,
      unsigned int sizeof_name);
int gnutls_x509_crt_set_issuer_dn(gnutls_x509_crt_t crt,
      const char *dn, const char **err);

int gnutls_x509_crt_set_version(gnutls_x509_crt_t crt,
    unsigned int version);
int gnutls_x509_crt_set_key(gnutls_x509_crt_t crt,
       gnutls_x509_privkey_t key);
int gnutls_x509_crt_set_ca_status(gnutls_x509_crt_t crt, unsigned int ca);
int gnutls_x509_crt_set_basic_constraints(gnutls_x509_crt_t crt,
       unsigned int ca,
       int pathLenConstraint);
int gnutls_x509_crt_set_subject_alternative_name(gnutls_x509_crt_t
       crt,
       gnutls_x509_subject_alt_name_t
       type, const char
       *data_string);
int gnutls_x509_crt_set_subject_alt_name(gnutls_x509_crt_t crt,
      gnutls_x509_subject_alt_name_t
      type, const void *data,
      unsigned int data_size,
      unsigned int flags);

int gnutls_x509_crt_set_issuer_alt_name(gnutls_x509_crt_t crt,
      gnutls_x509_subject_alt_name_t
      type, const void *data,
      unsigned int data_size,
      unsigned int flags);

int gnutls_x509_crt_sign(gnutls_x509_crt_t crt,
    gnutls_x509_crt_t issuer,
    gnutls_x509_privkey_t issuer_key);
int gnutls_x509_crt_sign2(gnutls_x509_crt_t crt,
     gnutls_x509_crt_t issuer,
     gnutls_x509_privkey_t issuer_key,
     gnutls_digest_algorithm_t dig,
     unsigned int flags);
int gnutls_x509_crt_set_activation_time(gnutls_x509_crt_t cert,
     time_t act_time);
int gnutls_x509_crt_set_expiration_time(gnutls_x509_crt_t cert,
     time_t exp_time);
int gnutls_x509_crt_set_serial(gnutls_x509_crt_t cert,
          const void *serial, size_t serial_size);

int gnutls_x509_crt_set_subject_key_id(gnutls_x509_crt_t cert,
           const void *id, size_t id_size);

int gnutls_x509_crt_set_proxy_dn(gnutls_x509_crt_t crt,
     gnutls_x509_crt_t eecrt,
     unsigned int raw_flag,
     const void *name,
     unsigned int sizeof_name);
int gnutls_x509_crt_set_proxy(gnutls_x509_crt_t crt,
         int pathLenConstraint,
         const char *policyLanguage,
         const char *policy, size_t sizeof_policy);

int gnutls_x509_crt_print(gnutls_x509_crt_t cert,
     gnutls_certificate_print_formats_t
     format, gnutls_datum_t * out);
int gnutls_x509_crl_print(gnutls_x509_crl_t crl,
     gnutls_certificate_print_formats_t
     format, gnutls_datum_t * out);



int gnutls_x509_crt_get_raw_issuer_dn(gnutls_x509_crt_t cert,
          gnutls_datum_t * start);
int gnutls_x509_crt_get_raw_dn(gnutls_x509_crt_t cert,
          gnutls_datum_t * start);



int gnutls_x509_rdn_get(const gnutls_datum_t * idn,
   char *buf, size_t * sizeof_buf);
int gnutls_x509_rdn_get_oid(const gnutls_datum_t * idn,
       int indx, void *buf, size_t * sizeof_buf);

int gnutls_x509_rdn_get_by_oid(const gnutls_datum_t * idn,
          const char *oid, int indx,
          unsigned int raw_flag, void *buf,
          size_t * sizeof_buf);

typedef void *gnutls_x509_dn_t;

typedef struct gnutls_x509_ava_st {
 gnutls_datum_t oid;
 gnutls_datum_t value;
 unsigned long value_tag;
} gnutls_x509_ava_st;

int gnutls_x509_crt_get_subject(gnutls_x509_crt_t cert,
    gnutls_x509_dn_t * dn);
int gnutls_x509_crt_get_issuer(gnutls_x509_crt_t cert,
          gnutls_x509_dn_t * dn);
int gnutls_x509_dn_get_rdn_ava(gnutls_x509_dn_t dn, int irdn,
          int iava, gnutls_x509_ava_st * ava);

int gnutls_x509_dn_init(gnutls_x509_dn_t * dn);

int gnutls_x509_dn_import(gnutls_x509_dn_t dn,
     const gnutls_datum_t * data);

int gnutls_x509_dn_export(gnutls_x509_dn_t dn,
     gnutls_x509_crt_fmt_t format,
     void *output_data, size_t * output_data_size);
int gnutls_x509_dn_export2(gnutls_x509_dn_t dn,
      gnutls_x509_crt_fmt_t format,
      gnutls_datum_t * out);

void gnutls_x509_dn_deinit(gnutls_x509_dn_t dn);




int gnutls_x509_crl_init(gnutls_x509_crl_t * crl);
void gnutls_x509_crl_deinit(gnutls_x509_crl_t crl);

int gnutls_x509_crl_import(gnutls_x509_crl_t crl,
      const gnutls_datum_t * data,
      gnutls_x509_crt_fmt_t format);
int gnutls_x509_crl_export(gnutls_x509_crl_t crl,
      gnutls_x509_crt_fmt_t format,
      void *output_data, size_t * output_data_size);
int gnutls_x509_crl_export2(gnutls_x509_crl_t crl,
       gnutls_x509_crt_fmt_t format,
       gnutls_datum_t * out);

int
gnutls_x509_crl_get_raw_issuer_dn(gnutls_x509_crl_t crl,
      gnutls_datum_t * dn);

int gnutls_x509_crl_get_issuer_dn(gnutls_x509_crl_t crl,
      char *buf, size_t * sizeof_buf);
int gnutls_x509_crl_get_issuer_dn2(gnutls_x509_crl_t crl,
       gnutls_datum_t * dn);
int gnutls_x509_crl_get_issuer_dn_by_oid(gnutls_x509_crl_t crl,
      const char *oid, int indx,
      unsigned int raw_flag,
      void *buf, size_t * sizeof_buf);
int gnutls_x509_crl_get_dn_oid(gnutls_x509_crl_t crl, int indx,
          void *oid, size_t * sizeof_oid);

int gnutls_x509_crl_get_signature_algorithm(gnutls_x509_crl_t crl);
int gnutls_x509_crl_get_signature(gnutls_x509_crl_t crl,
      char *sig, size_t * sizeof_sig);
int gnutls_x509_crl_get_version(gnutls_x509_crl_t crl);

time_t gnutls_x509_crl_get_this_update(gnutls_x509_crl_t crl);
time_t gnutls_x509_crl_get_next_update(gnutls_x509_crl_t crl);

int gnutls_x509_crl_get_crt_count(gnutls_x509_crl_t crl);
int gnutls_x509_crl_get_crt_serial(gnutls_x509_crl_t crl, int indx,
       unsigned char *serial,
       size_t * serial_size, time_t * t);

typedef struct gnutls_x509_crl_iter * gnutls_x509_crl_iter_t;

int gnutls_x509_crl_iter_crt_serial(gnutls_x509_crl_t crl,
        gnutls_x509_crl_iter_t *,
        unsigned char *serial,
        size_t * serial_size, time_t * t);

void gnutls_x509_crl_iter_deinit(gnutls_x509_crl_iter_t);




int gnutls_x509_crl_check_issuer(gnutls_x509_crl_t crl,
     gnutls_x509_crt_t issuer);

int gnutls_x509_crl_list_import2(gnutls_x509_crl_t ** crls,
     unsigned int *size,
     const gnutls_datum_t * data,
     gnutls_x509_crt_fmt_t format,
     unsigned int flags);

int gnutls_x509_crl_list_import(gnutls_x509_crl_t * crls,
    unsigned int *crl_max,
    const gnutls_datum_t * data,
    gnutls_x509_crt_fmt_t format,
    unsigned int flags);


int gnutls_x509_crl_set_version(gnutls_x509_crl_t crl,
    unsigned int version);
int gnutls_x509_crl_set_this_update(gnutls_x509_crl_t crl,
        time_t act_time);
int gnutls_x509_crl_set_next_update(gnutls_x509_crl_t crl,
        time_t exp_time);
int gnutls_x509_crl_set_crt_serial(gnutls_x509_crl_t crl,
       const void *serial,
       size_t serial_size,
       time_t revocation_time);
int gnutls_x509_crl_set_crt(gnutls_x509_crl_t crl,
       gnutls_x509_crt_t crt, time_t revocation_time);

int gnutls_x509_crl_get_authority_key_id(gnutls_x509_crl_t crl,
      void *id,
      size_t * id_size,
      unsigned int *critical);
int gnutls_x509_crl_get_authority_key_gn_serial(gnutls_x509_crl_t
      crl,
      unsigned int seq,
      void *alt,
      size_t * alt_size,
      unsigned int
      *alt_type,
      void *serial,
      size_t *
      serial_size, unsigned int
      *critical);

int gnutls_x509_crl_get_number(gnutls_x509_crl_t crl, void *ret,
          size_t * ret_size, unsigned int *critical);

int gnutls_x509_crl_get_extension_oid(gnutls_x509_crl_t crl,
          int indx, void *oid,
          size_t * sizeof_oid);

int gnutls_x509_crl_get_extension_info(gnutls_x509_crl_t crl,
           int indx, void *oid,
           size_t * sizeof_oid,
           unsigned int *critical);

int gnutls_x509_crl_get_extension_data(gnutls_x509_crl_t crl,
           int indx, void *data,
           size_t * sizeof_data);
int
gnutls_x509_crl_get_extension_data2(gnutls_x509_crl_t crl,
          unsigned indx, gnutls_datum_t * data);

int gnutls_x509_crl_set_authority_key_id(gnutls_x509_crl_t crl,
      const void *id, size_t id_size);

int gnutls_x509_crl_set_number(gnutls_x509_crl_t crl,
          const void *nr, size_t nr_size);




struct gnutls_pkcs7_int;
typedef struct gnutls_pkcs7_int *gnutls_pkcs7_t;

int gnutls_pkcs7_init(gnutls_pkcs7_t * pkcs7);
void gnutls_pkcs7_deinit(gnutls_pkcs7_t pkcs7);
int gnutls_pkcs7_import(gnutls_pkcs7_t pkcs7,
   const gnutls_datum_t * data,
   gnutls_x509_crt_fmt_t format);
int gnutls_pkcs7_export(gnutls_pkcs7_t pkcs7,
   gnutls_x509_crt_fmt_t format,
   void *output_data, size_t * output_data_size);
int gnutls_pkcs7_export2(gnutls_pkcs7_t pkcs7,
    gnutls_x509_crt_fmt_t format,
    gnutls_datum_t * out);

int gnutls_pkcs7_get_crt_count(gnutls_pkcs7_t pkcs7);
int gnutls_pkcs7_get_crt_raw(gnutls_pkcs7_t pkcs7, int indx,
        void *certificate, size_t * certificate_size);

int gnutls_pkcs7_set_crt_raw(gnutls_pkcs7_t pkcs7,
        const gnutls_datum_t * crt);
int gnutls_pkcs7_set_crt(gnutls_pkcs7_t pkcs7, gnutls_x509_crt_t crt);
int gnutls_pkcs7_delete_crt(gnutls_pkcs7_t pkcs7, int indx);

int gnutls_pkcs7_get_crl_raw(gnutls_pkcs7_t pkcs7,
        int indx, void *crl, size_t * crl_size);
int gnutls_pkcs7_get_crl_count(gnutls_pkcs7_t pkcs7);

int gnutls_pkcs7_set_crl_raw(gnutls_pkcs7_t pkcs7,
        const gnutls_datum_t * crl);
int gnutls_pkcs7_set_crl(gnutls_pkcs7_t pkcs7, gnutls_x509_crl_t crl);
int gnutls_pkcs7_delete_crl(gnutls_pkcs7_t pkcs7, int indx);
# 817 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_certificate_verify_flags {
 GNUTLS_VERIFY_DISABLE_CA_SIGN = 1 << 0,
 GNUTLS_VERIFY_DO_NOT_ALLOW_SAME = 1 << 2,
 GNUTLS_VERIFY_ALLOW_ANY_X509_V1_CA_CRT = 1 << 3,
 GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD2 = 1 << 4,
 GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5 = 1 << 5,
 GNUTLS_VERIFY_DISABLE_TIME_CHECKS = 1 << 6,
 GNUTLS_VERIFY_DISABLE_TRUSTED_TIME_CHECKS = 1 << 7,
 GNUTLS_VERIFY_DO_NOT_ALLOW_X509_V1_CA_CRT = 1 << 8,
 GNUTLS_VERIFY_DISABLE_CRL_CHECKS = 1 << 9,
 GNUTLS_VERIFY_ALLOW_UNSORTED_CHAIN = 1 << 10,
 GNUTLS_VERIFY_DO_NOT_ALLOW_UNSORTED_CHAIN = 1 << 11,
 GNUTLS_VERIFY_DO_NOT_ALLOW_WILDCARDS = 1 << 12
} gnutls_certificate_verify_flags;
# 853 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_certificate_verification_profiles_t {
 GNUTLS_PROFILE_VERY_WEAK = 1,
 GNUTLS_PROFILE_LOW = 2,
 GNUTLS_PROFILE_LEGACY = 4,
 GNUTLS_PROFILE_MEDIUM = 5,
 GNUTLS_PROFILE_HIGH = 6,
 GNUTLS_PROFILE_ULTRA = 7,

 GNUTLS_PROFILE_SUITEB128=32,
 GNUTLS_PROFILE_SUITEB192=33

} gnutls_certificate_verification_profiles_t;
# 875 "/usr/include/gnutls/x509.h" 3 4
int gnutls_x509_crt_check_issuer(gnutls_x509_crt_t cert,
     gnutls_x509_crt_t issuer);

int gnutls_x509_crt_list_verify(const gnutls_x509_crt_t *
    cert_list, int cert_list_length,
    const gnutls_x509_crt_t * CA_list,
    int CA_list_length,
    const gnutls_x509_crl_t * CRL_list,
    int CRL_list_length,
    unsigned int flags, unsigned int *verify);

int gnutls_x509_crt_verify(gnutls_x509_crt_t cert,
      const gnutls_x509_crt_t * CA_list,
      int CA_list_length, unsigned int flags,
      unsigned int *verify);
int gnutls_x509_crl_verify(gnutls_x509_crl_t crl,
      const gnutls_x509_crt_t * CA_list,
      int CA_list_length, unsigned int flags,
      unsigned int *verify);

int gnutls_x509_crt_check_revocation(gnutls_x509_crt_t cert,
         const gnutls_x509_crl_t *
         crl_list, int crl_list_length);

int gnutls_x509_crt_get_fingerprint(gnutls_x509_crt_t cert,
        gnutls_digest_algorithm_t algo,
        void *buf, size_t * buf_size);

int gnutls_x509_crt_get_key_purpose_oid(gnutls_x509_crt_t cert,
     int indx, void *oid,
     size_t * oid_size,
     unsigned int *critical);
int gnutls_x509_crt_set_key_purpose_oid(gnutls_x509_crt_t cert,
     const void *oid,
     unsigned int critical);
# 936 "/usr/include/gnutls/x509.h" 3 4
typedef enum gnutls_pkcs_encrypt_flags_t {
 GNUTLS_PKCS_PLAIN = 1,
 GNUTLS_PKCS_USE_PKCS12_3DES = 2,
 GNUTLS_PKCS_USE_PKCS12_ARCFOUR = 4,
 GNUTLS_PKCS_USE_PKCS12_RC2_40 = 8,
 GNUTLS_PKCS_USE_PBES2_3DES = 16,
 GNUTLS_PKCS_USE_PBES2_AES_128 = 32,
 GNUTLS_PKCS_USE_PBES2_AES_192 = 64,
 GNUTLS_PKCS_USE_PBES2_AES_256 = 128,
 GNUTLS_PKCS_NULL_PASSWORD = 256
} gnutls_pkcs_encrypt_flags_t;

int gnutls_x509_privkey_init(gnutls_x509_privkey_t * key);
void gnutls_x509_privkey_deinit(gnutls_x509_privkey_t key);
gnutls_sec_param_t
gnutls_x509_privkey_sec_param(gnutls_x509_privkey_t key);
int gnutls_x509_privkey_cpy(gnutls_x509_privkey_t dst,
       gnutls_x509_privkey_t src);
int gnutls_x509_privkey_import(gnutls_x509_privkey_t key,
          const gnutls_datum_t * data,
          gnutls_x509_crt_fmt_t format);
int gnutls_x509_privkey_import_pkcs8(gnutls_x509_privkey_t key,
         const gnutls_datum_t * data,
         gnutls_x509_crt_fmt_t format,
         const char *password,
         unsigned int flags);
int gnutls_x509_privkey_import_openssl(gnutls_x509_privkey_t key,
           const gnutls_datum_t * data,
           const char *password);

int gnutls_x509_privkey_import2(gnutls_x509_privkey_t key,
    const gnutls_datum_t * data,
    gnutls_x509_crt_fmt_t format,
    const char *password, unsigned int flags);

int gnutls_x509_privkey_import_rsa_raw(gnutls_x509_privkey_t key,
           const gnutls_datum_t * m,
           const gnutls_datum_t * e,
           const gnutls_datum_t * d,
           const gnutls_datum_t * p,
           const gnutls_datum_t * q,
           const gnutls_datum_t * u);
int gnutls_x509_privkey_import_rsa_raw2(gnutls_x509_privkey_t key,
     const gnutls_datum_t * m,
     const gnutls_datum_t * e,
     const gnutls_datum_t * d,
     const gnutls_datum_t * p,
     const gnutls_datum_t * q,
     const gnutls_datum_t * u,
     const gnutls_datum_t * e1,
     const gnutls_datum_t * e2);
int gnutls_x509_privkey_import_ecc_raw(gnutls_x509_privkey_t key,
           gnutls_ecc_curve_t curve,
           const gnutls_datum_t * x,
           const gnutls_datum_t * y,
           const gnutls_datum_t * k);

int gnutls_x509_privkey_fix(gnutls_x509_privkey_t key);

int gnutls_x509_privkey_export_dsa_raw(gnutls_x509_privkey_t key,
           gnutls_datum_t * p,
           gnutls_datum_t * q,
           gnutls_datum_t * g,
           gnutls_datum_t * y,
           gnutls_datum_t * x);
int gnutls_x509_privkey_import_dsa_raw(gnutls_x509_privkey_t key,
           const gnutls_datum_t * p,
           const gnutls_datum_t * q,
           const gnutls_datum_t * g,
           const gnutls_datum_t * y,
           const gnutls_datum_t * x);

int gnutls_x509_privkey_get_pk_algorithm(gnutls_x509_privkey_t key);
int gnutls_x509_privkey_get_pk_algorithm2(gnutls_x509_privkey_t
       key, unsigned int *bits);
int gnutls_x509_privkey_get_key_id(gnutls_x509_privkey_t key,
       unsigned int flags,
       unsigned char *output_data,
       size_t * output_data_size);

int gnutls_x509_privkey_generate(gnutls_x509_privkey_t key,
     gnutls_pk_algorithm_t algo,
     unsigned int bits, unsigned int flags);
int gnutls_x509_privkey_verify_params(gnutls_x509_privkey_t key);

int gnutls_x509_privkey_export(gnutls_x509_privkey_t key,
          gnutls_x509_crt_fmt_t format,
          void *output_data,
          size_t * output_data_size);
int gnutls_x509_privkey_export2(gnutls_x509_privkey_t key,
    gnutls_x509_crt_fmt_t format,
    gnutls_datum_t * out);
int gnutls_x509_privkey_export_pkcs8(gnutls_x509_privkey_t key,
         gnutls_x509_crt_fmt_t format,
         const char *password,
         unsigned int flags,
         void *output_data,
         size_t * output_data_size);
int gnutls_x509_privkey_export2_pkcs8(gnutls_x509_privkey_t key,
          gnutls_x509_crt_fmt_t format,
          const char *password,
          unsigned int flags,
          gnutls_datum_t * out);
int gnutls_x509_privkey_export_rsa_raw2(gnutls_x509_privkey_t key,
     gnutls_datum_t * m,
     gnutls_datum_t * e,
     gnutls_datum_t * d,
     gnutls_datum_t * p,
     gnutls_datum_t * q,
     gnutls_datum_t * u,
     gnutls_datum_t * e1,
     gnutls_datum_t * e2);
int gnutls_x509_privkey_export_rsa_raw(gnutls_x509_privkey_t key,
           gnutls_datum_t * m,
           gnutls_datum_t * e,
           gnutls_datum_t * d,
           gnutls_datum_t * p,
           gnutls_datum_t * q,
           gnutls_datum_t * u);
int gnutls_x509_privkey_export_ecc_raw(gnutls_x509_privkey_t key,
           gnutls_ecc_curve_t * curve,
           gnutls_datum_t * x,
           gnutls_datum_t * y,
           gnutls_datum_t * k);



int gnutls_x509_crq_sign2(gnutls_x509_crq_t crq,
     gnutls_x509_privkey_t key,
     gnutls_digest_algorithm_t dig,
     unsigned int flags);

int gnutls_x509_crq_print(gnutls_x509_crq_t crq,
     gnutls_certificate_print_formats_t
     format, gnutls_datum_t * out);

int gnutls_x509_crq_verify(gnutls_x509_crq_t crq, unsigned int flags);

int gnutls_x509_crq_init(gnutls_x509_crq_t * crq);
void gnutls_x509_crq_deinit(gnutls_x509_crq_t crq);
int gnutls_x509_crq_import(gnutls_x509_crq_t crq,
      const gnutls_datum_t * data,
      gnutls_x509_crt_fmt_t format);

int gnutls_x509_crq_get_private_key_usage_period(gnutls_x509_crq_t
       cert,
       time_t *
       activation,
       time_t *
       expiration, unsigned int
       *critical);

int gnutls_x509_crq_get_dn(gnutls_x509_crq_t crq, char *buf,
      size_t * sizeof_buf);
int gnutls_x509_crq_get_dn2(gnutls_x509_crq_t crq, gnutls_datum_t * dn);
int gnutls_x509_crq_get_dn_oid(gnutls_x509_crq_t crq, int indx,
          void *oid, size_t * sizeof_oid);
int gnutls_x509_crq_get_dn_by_oid(gnutls_x509_crq_t crq,
      const char *oid, int indx,
      unsigned int raw_flag, void *buf,
      size_t * sizeof_buf);
int gnutls_x509_crq_set_dn(gnutls_x509_crq_t crq, const char *dn,
      const char **err);
int gnutls_x509_crq_set_dn_by_oid(gnutls_x509_crq_t crq,
      const char *oid,
      unsigned int raw_flag,
      const void *data,
      unsigned int sizeof_data);
int gnutls_x509_crq_set_version(gnutls_x509_crq_t crq,
    unsigned int version);
int gnutls_x509_crq_get_version(gnutls_x509_crq_t crq);
int gnutls_x509_crq_set_key(gnutls_x509_crq_t crq,
       gnutls_x509_privkey_t key);

int gnutls_x509_crq_set_challenge_password(gnutls_x509_crq_t crq,
        const char *pass);
int gnutls_x509_crq_get_challenge_password(gnutls_x509_crq_t crq,
        char *pass,
        size_t * sizeof_pass);

int gnutls_x509_crq_set_attribute_by_oid(gnutls_x509_crq_t crq,
      const char *oid,
      void *buf, size_t sizeof_buf);
int gnutls_x509_crq_get_attribute_by_oid(gnutls_x509_crq_t crq,
      const char *oid, int indx,
      void *buf, size_t * sizeof_buf);

int gnutls_x509_crq_export(gnutls_x509_crq_t crq,
      gnutls_x509_crt_fmt_t format,
      void *output_data, size_t * output_data_size);
int gnutls_x509_crq_export2(gnutls_x509_crq_t crq,
       gnutls_x509_crt_fmt_t format,
       gnutls_datum_t * out);

int gnutls_x509_crt_set_crq(gnutls_x509_crt_t crt, gnutls_x509_crq_t crq);
int gnutls_x509_crt_set_crq_extensions(gnutls_x509_crt_t crt,
           gnutls_x509_crq_t crq);

int gnutls_x509_crq_set_private_key_usage_period(gnutls_x509_crq_t
       crq,
       time_t activation,
       time_t expiration);
int gnutls_x509_crq_set_key_rsa_raw(gnutls_x509_crq_t crq,
        const gnutls_datum_t * m,
        const gnutls_datum_t * e);
int gnutls_x509_crq_set_subject_alt_name(gnutls_x509_crq_t crq,
      gnutls_x509_subject_alt_name_t
      nt, const void *data,
      unsigned int data_size,
      unsigned int flags);

int gnutls_x509_crq_set_key_usage(gnutls_x509_crq_t crq,
      unsigned int usage);
int gnutls_x509_crq_set_basic_constraints(gnutls_x509_crq_t crq,
       unsigned int ca,
       int pathLenConstraint);
int gnutls_x509_crq_set_key_purpose_oid(gnutls_x509_crq_t crq,
     const void *oid,
     unsigned int critical);
int gnutls_x509_crq_get_key_purpose_oid(gnutls_x509_crq_t crq,
     int indx, void *oid,
     size_t * sizeof_oid,
     unsigned int *critical);

int gnutls_x509_crq_get_extension_data(gnutls_x509_crq_t crq,
           int indx, void *data,
           size_t * sizeof_data);
int
gnutls_x509_crq_get_extension_data2(gnutls_x509_crq_t crq,
          unsigned indx,
          gnutls_datum_t * data);
int gnutls_x509_crq_get_extension_info(gnutls_x509_crq_t crq,
           int indx, void *oid,
           size_t * sizeof_oid,
           unsigned int *critical);
int gnutls_x509_crq_get_attribute_data(gnutls_x509_crq_t crq,
           int indx, void *data,
           size_t * sizeof_data);
int gnutls_x509_crq_get_attribute_info(gnutls_x509_crq_t crq,
           int indx, void *oid,
           size_t * sizeof_oid);
int gnutls_x509_crq_get_pk_algorithm(gnutls_x509_crq_t crq,
         unsigned int *bits);

int gnutls_x509_crq_get_key_id(gnutls_x509_crq_t crq,
          unsigned int flags,
          unsigned char *output_data,
          size_t * output_data_size);
int gnutls_x509_crq_get_key_rsa_raw(gnutls_x509_crq_t crq,
        gnutls_datum_t * m,
        gnutls_datum_t * e);

int gnutls_x509_crq_get_key_usage(gnutls_x509_crq_t crq,
      unsigned int *key_usage,
      unsigned int *critical);
int gnutls_x509_crq_get_basic_constraints(gnutls_x509_crq_t crq,
       unsigned int *critical,
       unsigned int *ca, int *pathlen);
int gnutls_x509_crq_get_subject_alt_name(gnutls_x509_crq_t crq,
      unsigned int seq,
      void *ret,
      size_t * ret_size,
      unsigned int *ret_type,
      unsigned int *critical);
int gnutls_x509_crq_get_subject_alt_othername_oid(gnutls_x509_crq_t
        crq,
        unsigned int seq,
        void *ret,
        size_t * ret_size);

int gnutls_x509_crq_get_extension_by_oid(gnutls_x509_crq_t crq,
      const char *oid, int indx,
      void *buf,
      size_t * sizeof_buf,
      unsigned int *critical);
int
gnutls_x509_crt_get_extension_by_oid2(gnutls_x509_crt_t cert,
         const char *oid, int indx,
         gnutls_datum_t *output,
         unsigned int *critical);

typedef struct gnutls_x509_trust_list_st *gnutls_x509_trust_list_t;

int
gnutls_x509_trust_list_init(gnutls_x509_trust_list_t * list,
       unsigned int size);

void
gnutls_x509_trust_list_deinit(gnutls_x509_trust_list_t list,
         unsigned int all);

int gnutls_x509_trust_list_get_issuer(gnutls_x509_trust_list_t
          list, gnutls_x509_crt_t cert,
          gnutls_x509_crt_t * issuer,
          unsigned int flags);





int
gnutls_x509_trust_list_add_cas(gnutls_x509_trust_list_t list,
          const gnutls_x509_crt_t * clist,
          unsigned clist_size, unsigned int flags);
int gnutls_x509_trust_list_remove_cas(gnutls_x509_trust_list_t
          list,
          const gnutls_x509_crt_t *
          clist, int clist_size);

int gnutls_x509_trust_list_add_named_crt(gnutls_x509_trust_list_t
      list,
      gnutls_x509_crt_t cert,
      const void *name,
      size_t name_size,
      unsigned int flags);

int
gnutls_x509_trust_list_add_crls(gnutls_x509_trust_list_t list,
    const gnutls_x509_crl_t *
    crl_list, int crl_size,
    unsigned int flags,
    unsigned int verification_flags);

typedef int gnutls_verify_output_function(gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,


       gnutls_x509_crl_t crl,


       unsigned int
       verification_output);

int gnutls_x509_trust_list_verify_named_crt
    (gnutls_x509_trust_list_t list, gnutls_x509_crt_t cert,
     const void *name, size_t name_size, unsigned int flags,
     unsigned int *verify, gnutls_verify_output_function func);

int
gnutls_x509_trust_list_verify_crt2(gnutls_x509_trust_list_t list,
      gnutls_x509_crt_t * cert_list,
      unsigned int cert_list_size,
      gnutls_typed_vdata_st * data,
      unsigned int elements,
      unsigned int flags,
      unsigned int *voutput,
      gnutls_verify_output_function func);

int
gnutls_x509_trust_list_verify_crt(gnutls_x509_trust_list_t list,
      gnutls_x509_crt_t * cert_list,
      unsigned int cert_list_size,
      unsigned int flags,
      unsigned int *verify,
      gnutls_verify_output_function func);


int
gnutls_x509_trust_list_add_trust_mem(gnutls_x509_trust_list_t
         list,
         const gnutls_datum_t * cas,
         const gnutls_datum_t * crls,
         gnutls_x509_crt_fmt_t type,
         unsigned int tl_flags,
         unsigned int tl_vflags);

int
gnutls_x509_trust_list_add_trust_file(gnutls_x509_trust_list_t
          list, const char *ca_file,
          const char *crl_file,
          gnutls_x509_crt_fmt_t type,
          unsigned int tl_flags,
          unsigned int tl_vflags);

int
gnutls_x509_trust_list_add_trust_dir(gnutls_x509_trust_list_t list,
          const char *ca_dir,
          const char *crl_dir,
          gnutls_x509_crt_fmt_t type,
          unsigned int tl_flags,
          unsigned int tl_vflags);

int
gnutls_x509_trust_list_remove_trust_file(gnutls_x509_trust_list_t
      list,
      const char *ca_file,
      gnutls_x509_crt_fmt_t type);

int
gnutls_x509_trust_list_remove_trust_mem(gnutls_x509_trust_list_t
     list,
     const gnutls_datum_t *
     cas, gnutls_x509_crt_fmt_t type);

int
gnutls_x509_trust_list_add_system_trust(gnutls_x509_trust_list_t
     list,
     unsigned int tl_flags,
     unsigned int tl_vflags);

void gnutls_certificate_set_trust_list
    (gnutls_certificate_credentials_t res,
     gnutls_x509_trust_list_t tlist, unsigned flags);

typedef struct gnutls_x509_ext_st {
 char *oid;
 unsigned int critical;
 gnutls_datum_t data;
} gnutls_x509_ext_st;

void gnutls_x509_ext_deinit(gnutls_x509_ext_st *ext);

int
gnutls_x509_ext_print(gnutls_x509_ext_st *exts, unsigned int exts_size,
        gnutls_certificate_print_formats_t format,
        gnutls_datum_t * out);
# 25 "./gnutls.h" 2






typedef enum
{

  GNUTLS_STAGE_EMPTY = 0,
  GNUTLS_STAGE_CRED_ALLOC,
  GNUTLS_STAGE_FILES,
  GNUTLS_STAGE_CALLBACKS,
  GNUTLS_STAGE_INIT,
  GNUTLS_STAGE_PRIORITY,
  GNUTLS_STAGE_CRED_SET,


  GNUTLS_STAGE_HANDSHAKE_CANDO = GNUTLS_STAGE_CRED_SET,
  GNUTLS_STAGE_TRANSPORT_POINTERS_SET,
  GNUTLS_STAGE_HANDSHAKE_TRIED,

  GNUTLS_STAGE_READY
} gnutls_initstage_t;
# 76 "./gnutls.h"
extern ptrdiff_t
emacs_gnutls_write (struct Lisp_Process *proc, const char *buf, ptrdiff_t nbyte);
extern ptrdiff_t
emacs_gnutls_read (struct Lisp_Process *proc, char *buf, ptrdiff_t nbyte);

extern ptrdiff_t emacs_gnutls_record_check_pending (gnutls_session_t state);



extern Lisp_Object emacs_gnutls_deinit (Lisp_Object);
extern Lisp_Object emacs_gnutls_global_init (void);



extern void syms_of_gnutls (void);
# 30 "./process.h" 2







enum { PROCESS_OPEN_FDS = 6 };




struct Lisp_Process
  {
    struct vectorlike_header header;


    Lisp_Object tty_name;


    Lisp_Object name;



    Lisp_Object command;



    Lisp_Object filter;


    Lisp_Object sentinel;



    Lisp_Object log;


    Lisp_Object buffer;





    Lisp_Object childp;


    Lisp_Object plist;


    Lisp_Object type;


    Lisp_Object mark;






    Lisp_Object status;


    Lisp_Object decode_coding_system;


    Lisp_Object decoding_buf;


    Lisp_Object encode_coding_system;


    Lisp_Object encoding_buf;


    Lisp_Object write_queue;


    Lisp_Object gnutls_cred_type;



    Lisp_Object stderrproc;
# 121 "./process.h"
    pid_t pid;

    int infd;

    int outfd;


    int open_fd[PROCESS_OPEN_FDS];

    EMACS_INT tick;

    EMACS_INT update_tick;

    int decoding_carryover;






    int read_output_delay;



    unsigned int adaptive_read_buffering : 2;

    bool_bf read_output_skip : 1;


    bool_bf kill_without_query : 1;

    bool_bf pty_flag : 1;


    bool_bf inherit_coding_system_flag : 1;


    bool_bf alive : 1;




    bool_bf raw_status_new : 1;
    int raw_status;


    gnutls_initstage_t gnutls_initstage;
    gnutls_session_t gnutls_state;
    gnutls_certificate_client_credentials gnutls_x509_cred;
    gnutls_anon_client_credentials_t gnutls_anon_cred;
    gnutls_x509_crt_t gnutls_certificate;
    unsigned int gnutls_peer_verification;
    unsigned int gnutls_extra_peer_verification;
    int gnutls_log_level;
    int gnutls_handshakes_tried;
    bool_bf gnutls_p : 1;

};
# 188 "./process.h"
inline void
pset_childp (struct Lisp_Process *p, Lisp_Object val)
{
  p->childp = val;
}


inline void
pset_gnutls_cred_type (struct Lisp_Process *p, Lisp_Object val)
{
  p->gnutls_cred_type = val;
}




extern _Bool inhibit_sentinels;


enum
{
  EXIT_CANCELED = 125,
  EXIT_CANNOT_INVOKE = 126,
  EXIT_ENOENT = 127
};



extern Lisp_Object encode_current_directory (void);
extern void record_kill_process (struct Lisp_Process *, Lisp_Object);



extern Lisp_Object list_system_processes (void);
extern Lisp_Object system_process_attributes (Lisp_Object);



extern void record_deleted_pid (pid_t, Lisp_Object);
struct sockaddr;
extern Lisp_Object conv_sockaddr_to_lisp (struct sockaddr *, int);
extern void hold_keyboard_input (void);
extern void unhold_keyboard_input (void);
extern _Bool kbd_on_hold_p (void);

typedef void (*fd_callback) (int fd, void *data);

extern void add_read_fd (int fd, fd_callback func, void *data);
extern void delete_read_fd (int fd);
extern void add_write_fd (int fd, fd_callback func, void *data);
extern void delete_write_fd (int fd);
extern void catch_child_signal (void);






extern Lisp_Object remove_slash_colon (Lisp_Object);
# 25 "gnutls.c" 2

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
# 316 "./coding.h"
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
# 317 "./coding.h" 2

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
# 27 "gnutls.c" 2
# 36 "gnutls.c"
static _Bool emacs_gnutls_handle_error (gnutls_session_t, int);

static _Bool gnutls_global_initialized;

static void gnutls_log_function (int, const char *);
static void gnutls_log_function2 (int, const char *, const char *);

static void gnutls_audit_log_function (gnutls_session_t, const char *);


enum extra_peer_verification
{
    CERTIFICATE_NOT_MATCHING = 2
};
# 357 "gnutls.c"
static void
check_memory_full (int err)
{



  if (err == -25)
    memory_full (0);
}



static void
gnutls_audit_log_function (gnutls_session_t session, const char *string)
{
  if (globals.f_global_gnutls_log_level >= 1)
    {
      message ("gnutls.c: [audit] %s", string);
    }
}



static void
gnutls_log_function (int level, const char *string)
{
  message ("gnutls.c: [%d] %s", level, string);
}


static void
gnutls_log_function2 (int level, const char *string, const char *extra)
{
  message ("gnutls.c: [%d] %s %s", level, string, extra);
}


static void
gnutls_log_function2i (int level, const char *string, int extra)
{
  message ("gnutls.c: [%d] %s %d", level, string, extra);
}

static int
emacs_gnutls_handshake (struct Lisp_Process *proc)
{
  gnutls_session_t state = proc->gnutls_state;
  int ret;

  if (proc->gnutls_initstage < GNUTLS_STAGE_HANDSHAKE_CANDO)
    return -1;

  if (proc->gnutls_initstage < GNUTLS_STAGE_TRANSPORT_POINTERS_SET)
    {
# 438 "gnutls.c"
      gnutls_transport_set_ptr2 (state,
     (void *) (intptr_t) proc->infd,
     (void *) (intptr_t) proc->outfd);


      proc->gnutls_initstage = GNUTLS_STAGE_TRANSPORT_POINTERS_SET;
    }

  do
    {
      ret = gnutls_handshake (state);
      emacs_gnutls_handle_error (state, ret);
      do { if (!((globals.f_Vquit_flag) == (builtin_lisp_symbol (0))) && ((globals.f_Vinhibit_quit) == (builtin_lisp_symbol (0)))) process_quit_flag (); else if (pending_signals) process_pending_signals (); } while (0);
    }
  while (ret < 0 && gnutls_error_is_fatal (ret) == 0);

  proc->gnutls_initstage = GNUTLS_STAGE_HANDSHAKE_TRIED;

  if (ret == 0)
    {

      proc->gnutls_initstage = GNUTLS_STAGE_READY;
    }
  else
    {
      check_memory_full (gnutls_alert_send_appropriate (state, ret));
    }
  return ret;
}

ptrdiff_t
emacs_gnutls_record_check_pending (gnutls_session_t state)
{
  return gnutls_record_check_pending (state);
}
# 482 "gnutls.c"
ptrdiff_t
emacs_gnutls_write (struct Lisp_Process *proc, const char *buf, ptrdiff_t nbyte)
{
  ssize_t rtnval = 0;
  ptrdiff_t bytes_written;
  gnutls_session_t state = proc->gnutls_state;

  if (proc->gnutls_initstage != GNUTLS_STAGE_READY)
    {
      (*__errno_location ()) = 11;
      return 0;
    }

  bytes_written = 0;

  while (nbyte > 0)
    {
      rtnval = gnutls_record_send (state, buf, nbyte);

      if (rtnval < 0)
 {
   if (rtnval == -52)
     continue;
   else
     {



       if (rtnval == -28)
  (*__errno_location ()) = 11;
       break;
     }
 }

      buf += rtnval;
      nbyte -= rtnval;
      bytes_written += rtnval;
    }

  emacs_gnutls_handle_error (state, rtnval);
  return (bytes_written);
}

ptrdiff_t
emacs_gnutls_read (struct Lisp_Process *proc, char *buf, ptrdiff_t nbyte)
{
  ssize_t rtnval;
  gnutls_session_t state = proc->gnutls_state;

  int log_level = proc->gnutls_log_level;

  if (proc->gnutls_initstage != GNUTLS_STAGE_READY)
    {



      if (proc->gnutls_handshakes_tried < 100)
        {
          proc->gnutls_handshakes_tried++;
          emacs_gnutls_handshake (proc);
          do { if ((5) <= (log_level)) gnutls_log_function2i (5, "(Emacs) " "Retried handshake", proc->gnutls_handshakes_tried); } while (0);

          return -1;
        }

      do { if ((2) <= (log_level)) gnutls_log_function (2, "(Emacs) " "Giving up on handshake; resetting retries"); } while (0);
      proc->gnutls_handshakes_tried = 0;
      return 0;
    }
  rtnval = gnutls_record_recv (state, buf, nbyte);
  if (rtnval >= 0)
    return rtnval;
  else if (rtnval == -9)

    return 0;
  else if (emacs_gnutls_handle_error (state, rtnval))

    return -1;
  else {

    return 0;
  }
}



static _Bool
emacs_gnutls_handle_error (gnutls_session_t session, int err)
{
  int max_log_level = 0;

  _Bool ret;
  const char *str;


  if (err >= 0)
    return 1;

  check_memory_full (err);

  max_log_level = globals.f_global_gnutls_log_level;



  str = gnutls_strerror (err);
  if (!str)
    str = "unknown";

  if (gnutls_error_is_fatal (err))
    {
      ret = 0;
      do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "fatal error:", str); } while (0);
    }
  else
    {
      ret = 1;

      switch (err)
        {
        case -28:
          do { if ((3) <= (max_log_level)) gnutls_log_function2 (3, "(Emacs) " "retry:", str); } while (0);



        default:
          do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "non-fatal error:", str); } while (0);



        }
    }

  if (err == -16
      || err == -12)
    {
      int alert = gnutls_alert_get (session);
      int level = (err == -12) ? 0 : 1;
      str = gnutls_alert_get_name (alert);
      if (!str)
 str = "unknown";

      do { if ((level) <= (max_log_level)) gnutls_log_function2 (level, "(Emacs) " "Received alert: ", str); } while (0);
    }
  return ret;
}





static Lisp_Object
gnutls_make_error (int err)
{
  switch (err)
    {
    case 0:
      return builtin_lisp_symbol (901);
    case -28:
      return builtin_lisp_symbol (494);
    case -52:
      return builtin_lisp_symbol (495);
    case -10:
      return builtin_lisp_symbol (496);
    }

  check_memory_full (err);
  return ((EMACS_INT) (((EMACS_UINT) (err) << INTTYPEBITS) + Lisp_Int0));
}

Lisp_Object
emacs_gnutls_deinit (Lisp_Object proc)
{
  int log_level;

  CHECK_PROCESS (proc);

  if (XPROCESS (proc)->gnutls_p == 0)
    return builtin_lisp_symbol (0);

  log_level = XPROCESS (proc)->gnutls_log_level;

  if (XPROCESS (proc)->gnutls_x509_cred)
    {
      do { if ((2) <= (log_level)) gnutls_log_function (2, "(Emacs) " "Deallocating x509 credentials"); } while (0);
      gnutls_certificate_free_credentials (XPROCESS (proc)->gnutls_x509_cred);
      XPROCESS (proc)->gnutls_x509_cred = ((void*)0);
    }

  if (XPROCESS (proc)->gnutls_anon_cred)
    {
      do { if ((2) <= (log_level)) gnutls_log_function (2, "(Emacs) " "Deallocating anon credentials"); } while (0);
      gnutls_anon_free_client_credentials (XPROCESS (proc)->gnutls_anon_cred);
      XPROCESS (proc)->gnutls_anon_cred = ((void*)0);
    }

  if (XPROCESS (proc)->gnutls_state)
    {
      gnutls_deinit (XPROCESS (proc)->gnutls_state);
      XPROCESS (proc)->gnutls_state = ((void*)0);
      if ((XPROCESS (proc)->gnutls_initstage) >= GNUTLS_STAGE_INIT)
 (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_INIT - 1;
    }

  XPROCESS (proc)->gnutls_p = 0;
  return builtin_lisp_symbol (901);
}

static struct Lisp_Subr _Alignas (8) Sgnutls_get_initstage = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_get_initstage }, 1, 1, "gnutls-get-initstage", 0, 0}; Lisp_Object Fgnutls_get_initstage


  (Lisp_Object proc)
{
  CHECK_PROCESS (proc);

  return ((EMACS_INT) (((EMACS_UINT) ((XPROCESS (proc)->gnutls_initstage)) << INTTYPEBITS) + Lisp_Int0));
}

static struct Lisp_Subr _Alignas (8) Sgnutls_errorp = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_errorp }, 1, 1, "gnutls-errorp", 0, 0}; Lisp_Object Fgnutls_errorp




  (Lisp_Object err)
{
  if (((err) == (builtin_lisp_symbol (901)))) return builtin_lisp_symbol (0);

  return builtin_lisp_symbol (901);
}

static struct Lisp_Subr _Alignas (8) Sgnutls_error_fatalp = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_error_fatalp }, 1, 1, "gnutls-error-fatalp", 0, 0}; Lisp_Object Fgnutls_error_fatalp



  (Lisp_Object err)
{
  Lisp_Object code;

  if (((err) == (builtin_lisp_symbol (901)))) return builtin_lisp_symbol (0);

  if ((((enum Lisp_Type) ((err) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
    {
      code = Fget (err, builtin_lisp_symbol (493));
      if (NUMBERP (code))
 {
   err = code;
 }
      else
 {
   error ("Symbol has no numeric gnutls-code property");
 }
    }

  if (! (((((enum Lisp_Type) ((err) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && ((! ((int) 0 < (int) -1)) ? ((int) (! (! ((int) 0 < (int) -1)) ? (int) 0 : ((int) ~ (int) 0 < (int) -1) ? ~ (int) 0 : ~ ((int) (! (! ((int) 0 < (int) -1)) ? (int) -1 : ((((int) 1 << (sizeof (int) * 8 - 2)) - 1) * 2 + 1))))) <= ((err) >> INTTYPEBITS) : 0 <= ((err) >> INTTYPEBITS)) && ((err) >> INTTYPEBITS) <= ((int) (! (! ((int) 0 < (int) -1)) ? (int) -1 : ((((int) 1 << (sizeof (int) * 8 - 2)) - 1) * 2 + 1)))))
    error ("Not an error symbol or code");

  if (0 == gnutls_error_is_fatal (((err) >> INTTYPEBITS)))
    return builtin_lisp_symbol (0);

  return builtin_lisp_symbol (901);
}

static struct Lisp_Subr _Alignas (8) Sgnutls_error_string = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_error_string }, 1, 1, "gnutls-error-string", 0, 0}; Lisp_Object Fgnutls_error_string



  (Lisp_Object err)
{
  Lisp_Object code;

  if (((err) == (builtin_lisp_symbol (901)))) return build_string ("Not an error");

  if ((((enum Lisp_Type) ((err) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
    {
      code = Fget (err, builtin_lisp_symbol (493));
      if (NUMBERP (code))
 {
   err = code;
 }
      else
 {
   return build_string ("Symbol has no numeric gnutls-code property");
 }
    }

  if (! (((((enum Lisp_Type) ((err) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && ((! ((int) 0 < (int) -1)) ? ((int) (! (! ((int) 0 < (int) -1)) ? (int) 0 : ((int) ~ (int) 0 < (int) -1) ? ~ (int) 0 : ~ ((int) (! (! ((int) 0 < (int) -1)) ? (int) -1 : ((((int) 1 << (sizeof (int) * 8 - 2)) - 1) * 2 + 1))))) <= ((err) >> INTTYPEBITS) : 0 <= ((err) >> INTTYPEBITS)) && ((err) >> INTTYPEBITS) <= ((int) (! (! ((int) 0 < (int) -1)) ? (int) -1 : ((((int) 1 << (sizeof (int) * 8 - 2)) - 1) * 2 + 1)))))
    return build_string ("Not an error symbol or code");

  return build_string (gnutls_strerror (((err) >> INTTYPEBITS)));
}

static struct Lisp_Subr _Alignas (8) Sgnutls_deinit = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_deinit }, 1, 1, "gnutls-deinit", 0, 0}; Lisp_Object Fgnutls_deinit


  (Lisp_Object proc)
{
  return emacs_gnutls_deinit (proc);
}

static Lisp_Object
gnutls_hex_string (unsigned char *buf, ptrdiff_t buf_size, const char *prefix)
{
  ptrdiff_t prefix_length = strlen (prefix);
  ptrdiff_t retlen;
  if ((sizeof *(&retlen) == sizeof (signed char) ? (sizeof ((buf_size) * (3)) < sizeof (signed char) ? ((((((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (1)) << (sizeof ((0 * ((signed char) (3)) + ((signed char) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (0)))) == 0 && ((((signed char) (buf_size)) < 0 && 0 < ((signed char) (3))) || (((signed char) (3)) < 0 && 0 < ((signed char) (buf_size))))) || (((signed char) (3)) < 0 ? (((signed char) (buf_size)) < 0 ? ((signed char) (buf_size)) < ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (1)) << (sizeof ((0 * ((signed char) (3)) + ((signed char) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)))) / ((signed char) (3)) : ((signed char) (3)) == -1 ? 0 : ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (1)) << (sizeof ((0 * ((signed char) (3)) + ((signed char) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (0)))) / ((signed char) (3)) < ((signed char) (buf_size))) : ((signed char) (3)) == 0 ? 0 : (((signed char) (buf_size)) < 0 ? ((signed char) (buf_size)) < ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (1)) << (sizeof ((0 * ((signed char) (3)) + ((signed char) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (0)))) / ((signed char) (3)) : ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) + (1)) << (sizeof ((0 * ((signed char) (3)) + ((signed char) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (3)) + ((signed char) (buf_size))) - (1)))) / ((signed char) (3)) < ((signed char) (buf_size))))) || (((0 * (((signed char) (buf_size)) * ((signed char) (3))) - (1)) < 0) && (((signed char) (buf_size)) * ((signed char) (3))) < ((-127 -1))) || (127) < (((signed char) (buf_size)) * ((signed char) (3)))) ? (*(&retlen) = (((unsigned char) ((signed char) (buf_size)) * (unsigned char) ((signed char) (3))) <= (127) ? (signed char) ((unsigned char) ((signed char) (buf_size)) * (unsigned char) ((signed char) (3))) : ((signed char) (((unsigned char) ((signed char) (buf_size)) * (unsigned char) ((signed char) (3))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&retlen) = (((unsigned char) ((signed char) (buf_size)) * (unsigned char) ((signed char) (3))) <= (127) ? (signed char) ((unsigned char) ((signed char) (buf_size)) * (unsigned char) ((signed char) (3))) : ((signed char) (((unsigned char) ((signed char) (buf_size)) * (unsigned char) ((signed char) (3))) - ((-127 -1))) + ((-127 -1)))), 0)) : ((((((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) == 0 && (((buf_size) < 0 && 0 < (3)) || ((3) < 0 && 0 < (buf_size)))) || ((3) < 0 ? ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) : (3) == -1 ? 0 : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) < (buf_size)) : (3) == 0 ? 0 : ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) < (buf_size)))) || (((0 * ((buf_size) * (3)) - (1)) < 0) && ((buf_size) * (3)) < ((-127 -1))) || (127) < ((buf_size) * (3))) ? (*(&retlen) = (((unsigned char) (buf_size) * (unsigned char) (3)) <= (127) ? (signed char) ((unsigned char) (buf_size) * (unsigned char) (3)) : ((signed char) (((unsigned char) (buf_size) * (unsigned char) (3)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&retlen) = (((unsigned char) (buf_size) * (unsigned char) (3)) <= (127) ? (signed char) ((unsigned char) (buf_size) * (unsigned char) (3)) : ((signed char) (((unsigned char) (buf_size) * (unsigned char) (3)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&retlen) == sizeof (short int) ? (sizeof ((buf_size) * (3)) < sizeof (short int) ? ((((((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (1)) << (sizeof ((0 * ((short int) (3)) + ((short int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (0)))) == 0 && ((((short int) (buf_size)) < 0 && 0 < ((short int) (3))) || (((short int) (3)) < 0 && 0 < ((short int) (buf_size))))) || (((short int) (3)) < 0 ? (((short int) (buf_size)) < 0 ? ((short int) (buf_size)) < ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (1)) << (sizeof ((0 * ((short int) (3)) + ((short int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)))) / ((short int) (3)) : ((short int) (3)) == -1 ? 0 : ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (1)) << (sizeof ((0 * ((short int) (3)) + ((short int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (0)))) / ((short int) (3)) < ((short int) (buf_size))) : ((short int) (3)) == 0 ? 0 : (((short int) (buf_size)) < 0 ? ((short int) (buf_size)) < ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (1)) << (sizeof ((0 * ((short int) (3)) + ((short int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (0)))) / ((short int) (3)) : ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((short int) (3)) + ((short int) (buf_size))) + (1)) << (sizeof ((0 * ((short int) (3)) + ((short int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (3)) + ((short int) (buf_size))) - (1)))) / ((short int) (3)) < ((short int) (buf_size))))) || (((0 * (((short int) (buf_size)) * ((short int) (3))) - (1)) < 0) && (((short int) (buf_size)) * ((short int) (3))) < ((-32767 -1))) || (32767) < (((short int) (buf_size)) * ((short int) (3)))) ? (*(&retlen) = (((unsigned short int) ((short int) (buf_size)) * (unsigned short int) ((short int) (3))) <= (32767) ? (short int) ((unsigned short int) ((short int) (buf_size)) * (unsigned short int) ((short int) (3))) : ((short int) (((unsigned short int) ((short int) (buf_size)) * (unsigned short int) ((short int) (3))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&retlen) = (((unsigned short int) ((short int) (buf_size)) * (unsigned short int) ((short int) (3))) <= (32767) ? (short int) ((unsigned short int) ((short int) (buf_size)) * (unsigned short int) ((short int) (3))) : ((short int) (((unsigned short int) ((short int) (buf_size)) * (unsigned short int) ((short int) (3))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : ((((((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) == 0 && (((buf_size) < 0 && 0 < (3)) || ((3) < 0 && 0 < (buf_size)))) || ((3) < 0 ? ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) : (3) == -1 ? 0 : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) < (buf_size)) : (3) == 0 ? 0 : ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) < (buf_size)))) || (((0 * ((buf_size) * (3)) - (1)) < 0) && ((buf_size) * (3)) < ((-32767 -1))) || (32767) < ((buf_size) * (3))) ? (*(&retlen) = (((unsigned short int) (buf_size) * (unsigned short int) (3)) <= (32767) ? (short int) ((unsigned short int) (buf_size) * (unsigned short int) (3)) : ((short int) (((unsigned short int) (buf_size) * (unsigned short int) (3)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&retlen) = (((unsigned short int) (buf_size) * (unsigned short int) (3)) <= (32767) ? (short int) ((unsigned short int) (buf_size) * (unsigned short int) (3)) : ((short int) (((unsigned short int) (buf_size) * (unsigned short int) (3)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&retlen) == sizeof (int) ? (sizeof ((buf_size) * (3)) < sizeof (int) ? ((((((((0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (3)) + ((int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) + (1)) << (sizeof ((0 * ((int) (3)) + ((int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (3)) + ((int) (buf_size))) + (0)))) == 0 && ((((int) (buf_size)) < 0 && 0 < ((int) (3))) || (((int) (3)) < 0 && 0 < ((int) (buf_size))))) || (((int) (3)) < 0 ? (((int) (buf_size)) < 0 ? ((int) (buf_size)) < ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) + (1)) << (sizeof ((0 * ((int) (3)) + ((int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)))) / ((int) (3)) : ((int) (3)) == -1 ? 0 : ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (3)) + ((int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) + (1)) << (sizeof ((0 * ((int) (3)) + ((int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (3)) + ((int) (buf_size))) + (0)))) / ((int) (3)) < ((int) (buf_size))) : ((int) (3)) == 0 ? 0 : (((int) (buf_size)) < 0 ? ((int) (buf_size)) < ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (3)) + ((int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) + (1)) << (sizeof ((0 * ((int) (3)) + ((int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (3)) + ((int) (buf_size))) + (0)))) / ((int) (3)) : ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((int) (3)) + ((int) (buf_size))) + (1)) << (sizeof ((0 * ((int) (3)) + ((int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (3)) + ((int) (buf_size))) - (1)))) / ((int) (3)) < ((int) (buf_size))))) || (((0 * (((int) (buf_size)) * ((int) (3))) - (1)) < 0) && (((int) (buf_size)) * ((int) (3))) < ((-2147483647 -1))) || (2147483647) < (((int) (buf_size)) * ((int) (3)))) ? (*(&retlen) = (((unsigned int) ((int) (buf_size)) * (unsigned int) ((int) (3))) <= (2147483647) ? (int) ((unsigned int) ((int) (buf_size)) * (unsigned int) ((int) (3))) : ((int) (((unsigned int) ((int) (buf_size)) * (unsigned int) ((int) (3))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&retlen) = (((unsigned int) ((int) (buf_size)) * (unsigned int) ((int) (3))) <= (2147483647) ? (int) ((unsigned int) ((int) (buf_size)) * (unsigned int) ((int) (3))) : ((int) (((unsigned int) ((int) (buf_size)) * (unsigned int) ((int) (3))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : ((((((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) == 0 && (((buf_size) < 0 && 0 < (3)) || ((3) < 0 && 0 < (buf_size)))) || ((3) < 0 ? ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) : (3) == -1 ? 0 : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) < (buf_size)) : (3) == 0 ? 0 : ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) < (buf_size)))) || (((0 * ((buf_size) * (3)) - (1)) < 0) && ((buf_size) * (3)) < ((-2147483647 -1))) || (2147483647) < ((buf_size) * (3))) ? (*(&retlen) = (((unsigned int) (buf_size) * (unsigned int) (3)) <= (2147483647) ? (int) ((unsigned int) (buf_size) * (unsigned int) (3)) : ((int) (((unsigned int) (buf_size) * (unsigned int) (3)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&retlen) = (((unsigned int) (buf_size) * (unsigned int) (3)) <= (2147483647) ? (int) ((unsigned int) (buf_size) * (unsigned int) (3)) : ((int) (((unsigned int) (buf_size) * (unsigned int) (3)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&retlen) == sizeof (long int) ? (sizeof ((buf_size) * (3)) < sizeof (long int) ? ((((((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (1)) << (sizeof ((0 * ((long int) (3)) + ((long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (0)))) == 0 && ((((long int) (buf_size)) < 0 && 0 < ((long int) (3))) || (((long int) (3)) < 0 && 0 < ((long int) (buf_size))))) || (((long int) (3)) < 0 ? (((long int) (buf_size)) < 0 ? ((long int) (buf_size)) < ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (1)) << (sizeof ((0 * ((long int) (3)) + ((long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)))) / ((long int) (3)) : ((long int) (3)) == -1 ? 0 : ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (1)) << (sizeof ((0 * ((long int) (3)) + ((long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (0)))) / ((long int) (3)) < ((long int) (buf_size))) : ((long int) (3)) == 0 ? 0 : (((long int) (buf_size)) < 0 ? ((long int) (buf_size)) < ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (1)) << (sizeof ((0 * ((long int) (3)) + ((long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (0)))) / ((long int) (3)) : ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((long int) (3)) + ((long int) (buf_size))) + (1)) << (sizeof ((0 * ((long int) (3)) + ((long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (3)) + ((long int) (buf_size))) - (1)))) / ((long int) (3)) < ((long int) (buf_size))))) || (((0 * (((long int) (buf_size)) * ((long int) (3))) - (1)) < 0) && (((long int) (buf_size)) * ((long int) (3))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (buf_size)) * ((long int) (3)))) ? (*(&retlen) = (((unsigned long int) ((long int) (buf_size)) * (unsigned long int) ((long int) (3))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (buf_size)) * (unsigned long int) ((long int) (3))) : ((long int) (((unsigned long int) ((long int) (buf_size)) * (unsigned long int) ((long int) (3))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&retlen) = (((unsigned long int) ((long int) (buf_size)) * (unsigned long int) ((long int) (3))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (buf_size)) * (unsigned long int) ((long int) (3))) : ((long int) (((unsigned long int) ((long int) (buf_size)) * (unsigned long int) ((long int) (3))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : ((((((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) == 0 && (((buf_size) < 0 && 0 < (3)) || ((3) < 0 && 0 < (buf_size)))) || ((3) < 0 ? ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) : (3) == -1 ? 0 : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) < (buf_size)) : (3) == 0 ? 0 : ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) < (buf_size)))) || (((0 * ((buf_size) * (3)) - (1)) < 0) && ((buf_size) * (3)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((buf_size) * (3))) ? (*(&retlen) = (((unsigned long int) (buf_size) * (unsigned long int) (3)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (buf_size) * (unsigned long int) (3)) : ((long int) (((unsigned long int) (buf_size) * (unsigned long int) (3)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&retlen) = (((unsigned long int) (buf_size) * (unsigned long int) (3)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (buf_size) * (unsigned long int) (3)) : ((long int) (((unsigned long int) (buf_size) * (unsigned long int) (3)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((buf_size) * (3)) < sizeof (long long int) ? ((((((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (1)) << (sizeof ((0 * ((long long int) (3)) + ((long long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (0)))) == 0 && ((((long long int) (buf_size)) < 0 && 0 < ((long long int) (3))) || (((long long int) (3)) < 0 && 0 < ((long long int) (buf_size))))) || (((long long int) (3)) < 0 ? (((long long int) (buf_size)) < 0 ? ((long long int) (buf_size)) < ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (1)) << (sizeof ((0 * ((long long int) (3)) + ((long long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)))) / ((long long int) (3)) : ((long long int) (3)) == -1 ? 0 : ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (1)) << (sizeof ((0 * ((long long int) (3)) + ((long long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (0)))) / ((long long int) (3)) < ((long long int) (buf_size))) : ((long long int) (3)) == 0 ? 0 : (((long long int) (buf_size)) < 0 ? ((long long int) (buf_size)) < ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (1)) << (sizeof ((0 * ((long long int) (3)) + ((long long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (0)))) / ((long long int) (3)) : ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) + (1)) << (sizeof ((0 * ((long long int) (3)) + ((long long int) (buf_size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (3)) + ((long long int) (buf_size))) - (1)))) / ((long long int) (3)) < ((long long int) (buf_size))))) || (((0 * (((long long int) (buf_size)) * ((long long int) (3))) - (1)) < 0) && (((long long int) (buf_size)) * ((long long int) (3))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (buf_size)) * ((long long int) (3)))) ? (*(&retlen) = (((unsigned long long int) ((long long int) (buf_size)) * (unsigned long long int) ((long long int) (3))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (buf_size)) * (unsigned long long int) ((long long int) (3))) : ((long long int) (((unsigned long long int) ((long long int) (buf_size)) * (unsigned long long int) ((long long int) (3))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&retlen) = (((unsigned long long int) ((long long int) (buf_size)) * (unsigned long long int) ((long long int) (3))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (buf_size)) * (unsigned long long int) ((long long int) (3))) : ((long long int) (((unsigned long long int) ((long long int) (buf_size)) * (unsigned long long int) ((long long int) (3))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : ((((((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) == 0 && (((buf_size) < 0 && 0 < (3)) || ((3) < 0 && 0 < (buf_size)))) || ((3) < 0 ? ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) : (3) == -1 ? 0 : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) < (buf_size)) : (3) == 0 ? 0 : ((buf_size) < 0 ? (buf_size) < ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? - (~ (0 * (0 * (3) + (buf_size)) + (0)) == -1) - ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) + (0)))) / (3) : ((((0 * (0 * (3) + (buf_size)) - (1)) < 0) ? ((((0 * (0 * (3) + (buf_size)) + (1)) << (sizeof ((0 * (3) + (buf_size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (3) + (buf_size)) - (1)))) / (3) < (buf_size)))) || (((0 * ((buf_size) * (3)) - (1)) < 0) && ((buf_size) * (3)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((buf_size) * (3))) ? (*(&retlen) = (((unsigned long long int) (buf_size) * (unsigned long long int) (3)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (buf_size) * (unsigned long long int) (3)) : ((long long int) (((unsigned long long int) (buf_size) * (unsigned long long int) (3)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&retlen) = (((unsigned long long int) (buf_size) * (unsigned long long int) (3)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (buf_size) * (unsigned long long int) (3)) : ((long long int) (((unsigned long long int) (buf_size) * (unsigned long long int) (3)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)))))
      || (sizeof *(&retlen) == sizeof (signed char) ? (sizeof ((prefix_length - (buf_size != 0)) + (retlen)) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (0)))) < 0 ? (((signed char) (retlen)) < 0 ? ((signed char) (prefix_length - (buf_size != 0))) < ((((0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (0)))) - ((signed char) (retlen)) : ((((0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (retlen)) + ((signed char) (prefix_length - (buf_size != 0)))) - (1)))) - ((signed char) (retlen)) < ((signed char) (prefix_length - (buf_size != 0)))) : ((signed char) (prefix_length - (buf_size != 0))) < 0 ? ((signed char) (retlen)) <= ((signed char) (prefix_length - (buf_size != 0))) + ((signed char) (retlen)) : ((signed char) (retlen)) < 0 ? ((signed char) (prefix_length - (buf_size != 0))) <= ((signed char) (prefix_length - (buf_size != 0))) + ((signed char) (retlen)) : ((signed char) (prefix_length - (buf_size != 0))) + ((signed char) (retlen)) < ((signed char) (retlen))) || (((0 * (((signed char) (prefix_length - (buf_size != 0))) + ((signed char) (retlen))) - (1)) < 0) && (((signed char) (prefix_length - (buf_size != 0))) + ((signed char) (retlen))) < ((-127 -1))) || (127) < (((signed char) (prefix_length - (buf_size != 0))) + ((signed char) (retlen)))) ? (*(&retlen) = (((unsigned char) ((signed char) (prefix_length - (buf_size != 0))) + (unsigned char) ((signed char) (retlen))) <= (127) ? (signed char) ((unsigned char) ((signed char) (prefix_length - (buf_size != 0))) + (unsigned char) ((signed char) (retlen))) : ((signed char) (((unsigned char) ((signed char) (prefix_length - (buf_size != 0))) + (unsigned char) ((signed char) (retlen))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&retlen) = (((unsigned char) ((signed char) (prefix_length - (buf_size != 0))) + (unsigned char) ((signed char) (retlen))) <= (127) ? (signed char) ((unsigned char) ((signed char) (prefix_length - (buf_size != 0))) + (unsigned char) ((signed char) (retlen))) : ((signed char) (((unsigned char) ((signed char) (prefix_length - (buf_size != 0))) + (unsigned char) ((signed char) (retlen))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) < 0 ? ((retlen) < 0 ? (prefix_length - (buf_size != 0)) < ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) - (retlen) : ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)))) - (retlen) < (prefix_length - (buf_size != 0))) : (prefix_length - (buf_size != 0)) < 0 ? (retlen) <= (prefix_length - (buf_size != 0)) + (retlen) : (retlen) < 0 ? (prefix_length - (buf_size != 0)) <= (prefix_length - (buf_size != 0)) + (retlen) : (prefix_length - (buf_size != 0)) + (retlen) < (retlen)) || (((0 * ((prefix_length - (buf_size != 0)) + (retlen)) - (1)) < 0) && ((prefix_length - (buf_size != 0)) + (retlen)) < ((-127 -1))) || (127) < ((prefix_length - (buf_size != 0)) + (retlen))) ? (*(&retlen) = (((unsigned char) (prefix_length - (buf_size != 0)) + (unsigned char) (retlen)) <= (127) ? (signed char) ((unsigned char) (prefix_length - (buf_size != 0)) + (unsigned char) (retlen)) : ((signed char) (((unsigned char) (prefix_length - (buf_size != 0)) + (unsigned char) (retlen)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&retlen) = (((unsigned char) (prefix_length - (buf_size != 0)) + (unsigned char) (retlen)) <= (127) ? (signed char) ((unsigned char) (prefix_length - (buf_size != 0)) + (unsigned char) (retlen)) : ((signed char) (((unsigned char) (prefix_length - (buf_size != 0)) + (unsigned char) (retlen)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&retlen) == sizeof (short int) ? (sizeof ((prefix_length - (buf_size != 0)) + (retlen)) < sizeof (short int) ? (((((((0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (0)))) < 0 ? (((short int) (retlen)) < 0 ? ((short int) (prefix_length - (buf_size != 0))) < ((((0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (0)))) - ((short int) (retlen)) : ((((0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? ((((0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (retlen)) + ((short int) (prefix_length - (buf_size != 0)))) - (1)))) - ((short int) (retlen)) < ((short int) (prefix_length - (buf_size != 0)))) : ((short int) (prefix_length - (buf_size != 0))) < 0 ? ((short int) (retlen)) <= ((short int) (prefix_length - (buf_size != 0))) + ((short int) (retlen)) : ((short int) (retlen)) < 0 ? ((short int) (prefix_length - (buf_size != 0))) <= ((short int) (prefix_length - (buf_size != 0))) + ((short int) (retlen)) : ((short int) (prefix_length - (buf_size != 0))) + ((short int) (retlen)) < ((short int) (retlen))) || (((0 * (((short int) (prefix_length - (buf_size != 0))) + ((short int) (retlen))) - (1)) < 0) && (((short int) (prefix_length - (buf_size != 0))) + ((short int) (retlen))) < ((-32767 -1))) || (32767) < (((short int) (prefix_length - (buf_size != 0))) + ((short int) (retlen)))) ? (*(&retlen) = (((unsigned short int) ((short int) (prefix_length - (buf_size != 0))) + (unsigned short int) ((short int) (retlen))) <= (32767) ? (short int) ((unsigned short int) ((short int) (prefix_length - (buf_size != 0))) + (unsigned short int) ((short int) (retlen))) : ((short int) (((unsigned short int) ((short int) (prefix_length - (buf_size != 0))) + (unsigned short int) ((short int) (retlen))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&retlen) = (((unsigned short int) ((short int) (prefix_length - (buf_size != 0))) + (unsigned short int) ((short int) (retlen))) <= (32767) ? (short int) ((unsigned short int) ((short int) (prefix_length - (buf_size != 0))) + (unsigned short int) ((short int) (retlen))) : ((short int) (((unsigned short int) ((short int) (prefix_length - (buf_size != 0))) + (unsigned short int) ((short int) (retlen))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) < 0 ? ((retlen) < 0 ? (prefix_length - (buf_size != 0)) < ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) - (retlen) : ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)))) - (retlen) < (prefix_length - (buf_size != 0))) : (prefix_length - (buf_size != 0)) < 0 ? (retlen) <= (prefix_length - (buf_size != 0)) + (retlen) : (retlen) < 0 ? (prefix_length - (buf_size != 0)) <= (prefix_length - (buf_size != 0)) + (retlen) : (prefix_length - (buf_size != 0)) + (retlen) < (retlen)) || (((0 * ((prefix_length - (buf_size != 0)) + (retlen)) - (1)) < 0) && ((prefix_length - (buf_size != 0)) + (retlen)) < ((-32767 -1))) || (32767) < ((prefix_length - (buf_size != 0)) + (retlen))) ? (*(&retlen) = (((unsigned short int) (prefix_length - (buf_size != 0)) + (unsigned short int) (retlen)) <= (32767) ? (short int) ((unsigned short int) (prefix_length - (buf_size != 0)) + (unsigned short int) (retlen)) : ((short int) (((unsigned short int) (prefix_length - (buf_size != 0)) + (unsigned short int) (retlen)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&retlen) = (((unsigned short int) (prefix_length - (buf_size != 0)) + (unsigned short int) (retlen)) <= (32767) ? (short int) ((unsigned short int) (prefix_length - (buf_size != 0)) + (unsigned short int) (retlen)) : ((short int) (((unsigned short int) (prefix_length - (buf_size != 0)) + (unsigned short int) (retlen)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&retlen) == sizeof (int) ? (sizeof ((prefix_length - (buf_size != 0)) + (retlen)) < sizeof (int) ? (((((((0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (0)))) < 0 ? (((int) (retlen)) < 0 ? ((int) (prefix_length - (buf_size != 0))) < ((((0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (0)))) - ((int) (retlen)) : ((((0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? ((((0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (retlen)) + ((int) (prefix_length - (buf_size != 0)))) - (1)))) - ((int) (retlen)) < ((int) (prefix_length - (buf_size != 0)))) : ((int) (prefix_length - (buf_size != 0))) < 0 ? ((int) (retlen)) <= ((int) (prefix_length - (buf_size != 0))) + ((int) (retlen)) : ((int) (retlen)) < 0 ? ((int) (prefix_length - (buf_size != 0))) <= ((int) (prefix_length - (buf_size != 0))) + ((int) (retlen)) : ((int) (prefix_length - (buf_size != 0))) + ((int) (retlen)) < ((int) (retlen))) || (((0 * (((int) (prefix_length - (buf_size != 0))) + ((int) (retlen))) - (1)) < 0) && (((int) (prefix_length - (buf_size != 0))) + ((int) (retlen))) < ((-2147483647 -1))) || (2147483647) < (((int) (prefix_length - (buf_size != 0))) + ((int) (retlen)))) ? (*(&retlen) = (((unsigned int) ((int) (prefix_length - (buf_size != 0))) + (unsigned int) ((int) (retlen))) <= (2147483647) ? (int) ((unsigned int) ((int) (prefix_length - (buf_size != 0))) + (unsigned int) ((int) (retlen))) : ((int) (((unsigned int) ((int) (prefix_length - (buf_size != 0))) + (unsigned int) ((int) (retlen))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&retlen) = (((unsigned int) ((int) (prefix_length - (buf_size != 0))) + (unsigned int) ((int) (retlen))) <= (2147483647) ? (int) ((unsigned int) ((int) (prefix_length - (buf_size != 0))) + (unsigned int) ((int) (retlen))) : ((int) (((unsigned int) ((int) (prefix_length - (buf_size != 0))) + (unsigned int) ((int) (retlen))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) < 0 ? ((retlen) < 0 ? (prefix_length - (buf_size != 0)) < ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) - (retlen) : ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)))) - (retlen) < (prefix_length - (buf_size != 0))) : (prefix_length - (buf_size != 0)) < 0 ? (retlen) <= (prefix_length - (buf_size != 0)) + (retlen) : (retlen) < 0 ? (prefix_length - (buf_size != 0)) <= (prefix_length - (buf_size != 0)) + (retlen) : (prefix_length - (buf_size != 0)) + (retlen) < (retlen)) || (((0 * ((prefix_length - (buf_size != 0)) + (retlen)) - (1)) < 0) && ((prefix_length - (buf_size != 0)) + (retlen)) < ((-2147483647 -1))) || (2147483647) < ((prefix_length - (buf_size != 0)) + (retlen))) ? (*(&retlen) = (((unsigned int) (prefix_length - (buf_size != 0)) + (unsigned int) (retlen)) <= (2147483647) ? (int) ((unsigned int) (prefix_length - (buf_size != 0)) + (unsigned int) (retlen)) : ((int) (((unsigned int) (prefix_length - (buf_size != 0)) + (unsigned int) (retlen)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&retlen) = (((unsigned int) (prefix_length - (buf_size != 0)) + (unsigned int) (retlen)) <= (2147483647) ? (int) ((unsigned int) (prefix_length - (buf_size != 0)) + (unsigned int) (retlen)) : ((int) (((unsigned int) (prefix_length - (buf_size != 0)) + (unsigned int) (retlen)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&retlen) == sizeof (long int) ? (sizeof ((prefix_length - (buf_size != 0)) + (retlen)) < sizeof (long int) ? (((((((0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (0)))) < 0 ? (((long int) (retlen)) < 0 ? ((long int) (prefix_length - (buf_size != 0))) < ((((0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (0)))) - ((long int) (retlen)) : ((((0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? ((((0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (retlen)) + ((long int) (prefix_length - (buf_size != 0)))) - (1)))) - ((long int) (retlen)) < ((long int) (prefix_length - (buf_size != 0)))) : ((long int) (prefix_length - (buf_size != 0))) < 0 ? ((long int) (retlen)) <= ((long int) (prefix_length - (buf_size != 0))) + ((long int) (retlen)) : ((long int) (retlen)) < 0 ? ((long int) (prefix_length - (buf_size != 0))) <= ((long int) (prefix_length - (buf_size != 0))) + ((long int) (retlen)) : ((long int) (prefix_length - (buf_size != 0))) + ((long int) (retlen)) < ((long int) (retlen))) || (((0 * (((long int) (prefix_length - (buf_size != 0))) + ((long int) (retlen))) - (1)) < 0) && (((long int) (prefix_length - (buf_size != 0))) + ((long int) (retlen))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (prefix_length - (buf_size != 0))) + ((long int) (retlen)))) ? (*(&retlen) = (((unsigned long int) ((long int) (prefix_length - (buf_size != 0))) + (unsigned long int) ((long int) (retlen))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (prefix_length - (buf_size != 0))) + (unsigned long int) ((long int) (retlen))) : ((long int) (((unsigned long int) ((long int) (prefix_length - (buf_size != 0))) + (unsigned long int) ((long int) (retlen))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&retlen) = (((unsigned long int) ((long int) (prefix_length - (buf_size != 0))) + (unsigned long int) ((long int) (retlen))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (prefix_length - (buf_size != 0))) + (unsigned long int) ((long int) (retlen))) : ((long int) (((unsigned long int) ((long int) (prefix_length - (buf_size != 0))) + (unsigned long int) ((long int) (retlen))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) < 0 ? ((retlen) < 0 ? (prefix_length - (buf_size != 0)) < ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) - (retlen) : ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)))) - (retlen) < (prefix_length - (buf_size != 0))) : (prefix_length - (buf_size != 0)) < 0 ? (retlen) <= (prefix_length - (buf_size != 0)) + (retlen) : (retlen) < 0 ? (prefix_length - (buf_size != 0)) <= (prefix_length - (buf_size != 0)) + (retlen) : (prefix_length - (buf_size != 0)) + (retlen) < (retlen)) || (((0 * ((prefix_length - (buf_size != 0)) + (retlen)) - (1)) < 0) && ((prefix_length - (buf_size != 0)) + (retlen)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((prefix_length - (buf_size != 0)) + (retlen))) ? (*(&retlen) = (((unsigned long int) (prefix_length - (buf_size != 0)) + (unsigned long int) (retlen)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (prefix_length - (buf_size != 0)) + (unsigned long int) (retlen)) : ((long int) (((unsigned long int) (prefix_length - (buf_size != 0)) + (unsigned long int) (retlen)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&retlen) = (((unsigned long int) (prefix_length - (buf_size != 0)) + (unsigned long int) (retlen)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (prefix_length - (buf_size != 0)) + (unsigned long int) (retlen)) : ((long int) (((unsigned long int) (prefix_length - (buf_size != 0)) + (unsigned long int) (retlen)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((prefix_length - (buf_size != 0)) + (retlen)) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (0)))) < 0 ? (((long long int) (retlen)) < 0 ? ((long long int) (prefix_length - (buf_size != 0))) < ((((0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (0)) == -1) - ((((0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (0)))) - ((long long int) (retlen)) : ((((0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + (1)) << (sizeof ((0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (retlen)) + ((long long int) (prefix_length - (buf_size != 0)))) - (1)))) - ((long long int) (retlen)) < ((long long int) (prefix_length - (buf_size != 0)))) : ((long long int) (prefix_length - (buf_size != 0))) < 0 ? ((long long int) (retlen)) <= ((long long int) (prefix_length - (buf_size != 0))) + ((long long int) (retlen)) : ((long long int) (retlen)) < 0 ? ((long long int) (prefix_length - (buf_size != 0))) <= ((long long int) (prefix_length - (buf_size != 0))) + ((long long int) (retlen)) : ((long long int) (prefix_length - (buf_size != 0))) + ((long long int) (retlen)) < ((long long int) (retlen))) || (((0 * (((long long int) (prefix_length - (buf_size != 0))) + ((long long int) (retlen))) - (1)) < 0) && (((long long int) (prefix_length - (buf_size != 0))) + ((long long int) (retlen))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (prefix_length - (buf_size != 0))) + ((long long int) (retlen)))) ? (*(&retlen) = (((unsigned long long int) ((long long int) (prefix_length - (buf_size != 0))) + (unsigned long long int) ((long long int) (retlen))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (prefix_length - (buf_size != 0))) + (unsigned long long int) ((long long int) (retlen))) : ((long long int) (((unsigned long long int) ((long long int) (prefix_length - (buf_size != 0))) + (unsigned long long int) ((long long int) (retlen))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&retlen) = (((unsigned long long int) ((long long int) (prefix_length - (buf_size != 0))) + (unsigned long long int) ((long long int) (retlen))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (prefix_length - (buf_size != 0))) + (unsigned long long int) ((long long int) (retlen))) : ((long long int) (((unsigned long long int) ((long long int) (prefix_length - (buf_size != 0))) + (unsigned long long int) ((long long int) (retlen))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) < 0 ? ((retlen) < 0 ? (prefix_length - (buf_size != 0)) < ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? - (~ (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)) == -1) - ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (0)))) - (retlen) : ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)) < 0) ? ((((0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) + (1)) << (sizeof ((0 * (retlen) + (prefix_length - (buf_size != 0))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (retlen) + (prefix_length - (buf_size != 0))) - (1)))) - (retlen) < (prefix_length - (buf_size != 0))) : (prefix_length - (buf_size != 0)) < 0 ? (retlen) <= (prefix_length - (buf_size != 0)) + (retlen) : (retlen) < 0 ? (prefix_length - (buf_size != 0)) <= (prefix_length - (buf_size != 0)) + (retlen) : (prefix_length - (buf_size != 0)) + (retlen) < (retlen)) || (((0 * ((prefix_length - (buf_size != 0)) + (retlen)) - (1)) < 0) && ((prefix_length - (buf_size != 0)) + (retlen)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((prefix_length - (buf_size != 0)) + (retlen))) ? (*(&retlen) = (((unsigned long long int) (prefix_length - (buf_size != 0)) + (unsigned long long int) (retlen)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (prefix_length - (buf_size != 0)) + (unsigned long long int) (retlen)) : ((long long int) (((unsigned long long int) (prefix_length - (buf_size != 0)) + (unsigned long long int) (retlen)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&retlen) = (((unsigned long long int) (prefix_length - (buf_size != 0)) + (unsigned long long int) (retlen)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (prefix_length - (buf_size != 0)) + (unsigned long long int) (retlen)) : ((long long int) (((unsigned long long int) (prefix_length - (buf_size != 0)) + (unsigned long long int) (retlen)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0))))))
    string_overflow ();
  Lisp_Object ret = make_uninit_string (retlen);
  char *string = SSDATA (ret);
  strcpy (string, prefix);

  for (ptrdiff_t i = 0; i < buf_size; i++)
    sprintf (string + i * 3 + prefix_length,
      i == buf_size - 1 ? "%02x" : "%02x:",
      buf[i]);

  return ret;
}

static Lisp_Object
gnutls_certificate_details (gnutls_x509_crt_t cert)
{
  Lisp_Object res = builtin_lisp_symbol (0);
  int err;
  size_t buf_size;


  {
    int version = gnutls_x509_crt_get_version (cert);
    check_memory_full (version);
    if (version >= 0)
      res = nconc2 (res, list2 (intern (":version"),
    ((EMACS_INT) (((EMACS_UINT) (version) << INTTYPEBITS) + Lisp_Int0))));
  }


  buf_size = 0;
  err = gnutls_x509_crt_get_serial (cert, ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      void *serial = xmalloc (buf_size);
      err = gnutls_x509_crt_get_serial (cert, serial, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":serial-number"),
      gnutls_hex_string (serial, buf_size, "")));
      xfree (serial);
    }


  buf_size = 0;
  err = gnutls_x509_crt_get_issuer_dn (cert, ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      char *dn = xmalloc (buf_size);
      err = gnutls_x509_crt_get_issuer_dn (cert, dn, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":issuer"),
      make_string (dn, buf_size)));
      xfree (dn);
    }


  {


    char buf[((((sizeof (int) * 8 - (! ((__typeof__ (int)) 0 < (__typeof__ (int)) -1))) * 146 + 484) / 485) + (! ((__typeof__ (int)) 0 < (__typeof__ (int)) -1))) + 1 + sizeof "-12-31"];
    struct tm t;
    time_t tim = gnutls_x509_crt_get_activation_time (cert);

    if (gmtime_r (&tim, &t) && strftime (buf, sizeof buf, "%Y-%m-%d", &t))
      res = nconc2 (res, list2 (intern (":valid-from"), build_string (buf)));

    tim = gnutls_x509_crt_get_expiration_time (cert);
    if (gmtime_r (&tim, &t) && strftime (buf, sizeof buf, "%Y-%m-%d", &t))
      res = nconc2 (res, list2 (intern (":valid-to"), build_string (buf)));
  }


  buf_size = 0;
  err = gnutls_x509_crt_get_dn (cert, ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      char *dn = xmalloc (buf_size);
      err = gnutls_x509_crt_get_dn (cert, dn, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":subject"),
      make_string (dn, buf_size)));
      xfree (dn);
    }




  {
    unsigned int bits;

    err = gnutls_x509_crt_get_pk_algorithm (cert, &bits);
    check_memory_full (err);
    if (err >= 0)
      {
 const char *name = gnutls_pk_algorithm_get_name (err);
 if (name)
   res = nconc2 (res, list2 (intern (":public-key-algorithm"),
        build_string (name)));

 name = gnutls_sec_param_get_name (gnutls_pk_bits_to_sec_param
       (err, bits));
 res = nconc2 (res, list2 (intern (":certificate-security-level"),
      build_string (name)));
      }
  }


  buf_size = 0;
  err = gnutls_x509_crt_get_issuer_unique_id (cert, ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      char *buf = xmalloc (buf_size);
      err = gnutls_x509_crt_get_issuer_unique_id (cert, buf, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":issuer-unique-id"),
      make_string (buf, buf_size)));
      xfree (buf);
    }

  buf_size = 0;
  err = gnutls_x509_crt_get_subject_unique_id (cert, ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      char *buf = xmalloc (buf_size);
      err = gnutls_x509_crt_get_subject_unique_id (cert, buf, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":subject-unique-id"),
      make_string (buf, buf_size)));
      xfree (buf);
    }



  err = gnutls_x509_crt_get_signature_algorithm (cert);
  check_memory_full (err);
  if (err >= 0)
    {
      const char *name = gnutls_sign_get_name (err);
      if (name)
 res = nconc2 (res, list2 (intern (":signature-algorithm"),
      build_string (name)));
    }


  buf_size = 0;
  err = gnutls_x509_crt_get_key_id (cert, 0, ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      void *buf = xmalloc (buf_size);
      err = gnutls_x509_crt_get_key_id (cert, 0, buf, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":public-key-id"),
      gnutls_hex_string (buf, buf_size, "sha1:")));
      xfree (buf);
    }


  buf_size = 0;
  err = gnutls_x509_crt_get_fingerprint (cert, GNUTLS_DIG_SHA1,
      ((void*)0), &buf_size);
  check_memory_full (err);
  if (err == -51)
    {
      void *buf = xmalloc (buf_size);
      err = gnutls_x509_crt_get_fingerprint (cert, GNUTLS_DIG_SHA1,
          buf, &buf_size);
      check_memory_full (err);
      if (err >= 0)
 res = nconc2 (res, list2 (intern (":certificate-id"),
      gnutls_hex_string (buf, buf_size, "sha1:")));
      xfree (buf);
    }

  return res;
}

static struct Lisp_Subr _Alignas (8) Sgnutls_peer_status_warning_describe = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_peer_status_warning_describe }, 1, 1, "gnutls-peer-status-warning-describe", 0, 0}; Lisp_Object Fgnutls_peer_status_warning_describe

  (Lisp_Object status_symbol)
{
  (((((enum Lisp_Type) ((status_symbol) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), status_symbol));

  if (((status_symbol) == (intern (":invalid"))))
    return build_string ("certificate could not be verified");

  if (((status_symbol) == (intern (":revoked"))))
    return build_string ("certificate was revoked (CRL)");

  if (((status_symbol) == (intern (":self-signed"))))
    return build_string ("certificate signer was not found (self-signed)");

  if (((status_symbol) == (intern (":unknown-ca"))))
    return build_string ("the certificate was signed by an unknown "
                         "and therefore untrusted authority");

  if (((status_symbol) == (intern (":not-ca"))))
    return build_string ("certificate signer is not a CA");

  if (((status_symbol) == (intern (":insecure"))))
    return build_string ("certificate was signed with an insecure algorithm");

  if (((status_symbol) == (intern (":not-activated"))))
    return build_string ("certificate is not yet activated");

  if (((status_symbol) == (intern (":expired"))))
    return build_string ("certificate has expired");

  if (((status_symbol) == (intern (":no-host-match"))))
    return build_string ("certificate host does not match hostname");

  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sgnutls_peer_status = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fgnutls_peer_status }, 1, 1, "gnutls-peer-status", 0, 0}; Lisp_Object Fgnutls_peer_status




  (Lisp_Object proc)
{
  Lisp_Object warnings = builtin_lisp_symbol (0), result = builtin_lisp_symbol (0);
  unsigned int verification;
  gnutls_session_t state;

  CHECK_PROCESS (proc);

  if ((XPROCESS (proc)->gnutls_initstage) < GNUTLS_STAGE_INIT)
    return builtin_lisp_symbol (0);


  verification = XPROCESS (proc)->gnutls_peer_verification;

  if (verification & GNUTLS_CERT_INVALID)
    warnings = Fcons (intern (":invalid"), warnings);

  if (verification & GNUTLS_CERT_REVOKED)
    warnings = Fcons (intern (":revoked"), warnings);

  if (verification & GNUTLS_CERT_SIGNER_NOT_FOUND)
    warnings = Fcons (intern (":unknown-ca"), warnings);

  if (verification & GNUTLS_CERT_SIGNER_NOT_CA)
    warnings = Fcons (intern (":not-ca"), warnings);

  if (verification & GNUTLS_CERT_INSECURE_ALGORITHM)
    warnings = Fcons (intern (":insecure"), warnings);

  if (verification & GNUTLS_CERT_NOT_ACTIVATED)
    warnings = Fcons (intern (":not-activated"), warnings);

  if (verification & GNUTLS_CERT_EXPIRED)
    warnings = Fcons (intern (":expired"), warnings);

  if (XPROCESS (proc)->gnutls_extra_peer_verification &
      CERTIFICATE_NOT_MATCHING)
    warnings = Fcons (intern (":no-host-match"), warnings);



  if (XPROCESS (proc)->gnutls_certificate != ((void*)0) &&
      gnutls_x509_crt_check_issuer(XPROCESS (proc)->gnutls_certificate,
                                   XPROCESS (proc)->gnutls_certificate))
    warnings = Fcons (intern (":self-signed"), warnings);

  if (!((warnings) == (builtin_lisp_symbol (0))))
    result = list2 (intern (":warnings"), warnings);



  if (XPROCESS (proc)->gnutls_certificate != ((void*)0))
    result = nconc2 (result, list2
                     (intern (":certificate"),
                      gnutls_certificate_details (XPROCESS (proc)->gnutls_certificate)));

  state = XPROCESS (proc)->gnutls_state;


  {
    int bits = gnutls_dh_get_prime_bits (state);
    check_memory_full (bits);
    if (bits > 0)
      result = nconc2 (result, list2 (intern (":diffie-hellman-prime-bits"),
          ((EMACS_INT) (((EMACS_UINT) (bits) << INTTYPEBITS) + Lisp_Int0))));
  }


  result = nconc2
    (result, list2 (intern (":key-exchange"),
      build_string (gnutls_kx_get_name
      (gnutls_kx_get (state)))));


  result = nconc2
    (result, list2 (intern (":protocol"),
      build_string (gnutls_protocol_get_name
      (gnutls_protocol_get_version (state)))));


  result = nconc2
    (result, list2 (intern (":cipher"),
      build_string (gnutls_cipher_get_name
      (gnutls_cipher_get (state)))));


  result = nconc2
    (result, list2 (intern (":mac"),
      build_string (gnutls_mac_get_name
      (gnutls_mac_get (state)))));


  return result;
}




Lisp_Object
emacs_gnutls_global_init (void)
{
  int ret = 0;

  if (!gnutls_global_initialized)
    {
      ret = gnutls_global_init ();
      if (ret == 0)
 gnutls_global_initialized = 1;
    }

  return gnutls_make_error (ret);
}

static _Bool
gnutls_ip_address_p (char *string)
{
  char c;

  while ((c = *string++) != 0)
    if (! ((c == '.' || c == ':' || (c >= '0' && c <= '9'))))
      return 0;

  return 1;
}
# 1157 "gnutls.c"
static struct Lisp_Subr _Alignas (8) Sgnutls_boot = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Fgnutls_boot }, 3, 3, "gnutls-boot", 0, 0}; Lisp_Object Fgnutls_boot
# 1211 "gnutls.c"
  (Lisp_Object proc, Lisp_Object type, Lisp_Object proplist)
{
  int ret = 0;
  int max_log_level = 0;
  _Bool verify_error_all = 0;

  gnutls_session_t state;
  gnutls_certificate_credentials_t x509_cred = ((void*)0);
  gnutls_anon_client_credentials_t anon_cred = ((void*)0);
  Lisp_Object global_init;
  char const *priority_string_ptr = "NORMAL";
  unsigned int peer_verification;
  char *c_hostname;


  Lisp_Object priority_string;
  Lisp_Object trustfiles;
  Lisp_Object crlfiles;
  Lisp_Object keylist;

  Lisp_Object loglevel;
  Lisp_Object hostname;
  Lisp_Object verify_error;
  Lisp_Object prime_bits;
  Lisp_Object warnings;

  CHECK_PROCESS (proc);
  (((((enum Lisp_Type) ((type) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), type));
  CHECK_LIST (proplist);

  if (((Fgnutls_available_p ()) == (builtin_lisp_symbol (0))))
    error ("GnuTLS not available");

  if (!((type) == (builtin_lisp_symbol (498))) && !((type) == (builtin_lisp_symbol (492))))
    error ("Invalid GnuTLS credential type");

  hostname = Fplist_get (proplist, builtin_lisp_symbol (50));
  priority_string = Fplist_get (proplist, builtin_lisp_symbol (54));
  trustfiles = Fplist_get (proplist, builtin_lisp_symbol (55));
  keylist = Fplist_get (proplist, builtin_lisp_symbol (51));
  crlfiles = Fplist_get (proplist, builtin_lisp_symbol (49));
  loglevel = Fplist_get (proplist, builtin_lisp_symbol (52));
  verify_error = Fplist_get (proplist, builtin_lisp_symbol (56));
  prime_bits = Fplist_get (proplist, builtin_lisp_symbol (53));

  if (((verify_error) == (builtin_lisp_symbol (901))))
    {
      verify_error_all = 1;
    }
  else if (((Flistp (verify_error)) == (builtin_lisp_symbol (0))))
    {
      error ("gnutls-boot: invalid :verify_error parameter (not a list)");
    }

  if (!STRINGP (hostname))
    error ("gnutls-boot: invalid :hostname parameter (not a string)");
  c_hostname = SSDATA (hostname);

  state = XPROCESS (proc)->gnutls_state;

  if ((((((enum Lisp_Type) ((loglevel) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) && ((! ((int) 0 < (int) -1)) ? ((int) (! (! ((int) 0 < (int) -1)) ? (int) 0 : ((int) ~ (int) 0 < (int) -1) ? ~ (int) 0 : ~ ((int) (! (! ((int) 0 < (int) -1)) ? (int) -1 : ((((int) 1 << (sizeof (int) * 8 - 2)) - 1) * 2 + 1))))) <= ((loglevel) >> INTTYPEBITS) : 0 <= ((loglevel) >> INTTYPEBITS)) && ((loglevel) >> INTTYPEBITS) <= ((int) (! (! ((int) 0 < (int) -1)) ? (int) -1 : ((((int) 1 << (sizeof (int) * 8 - 2)) - 1) * 2 + 1)))))
    {
      gnutls_global_set_log_function (gnutls_log_function);

      gnutls_global_set_audit_log_function (gnutls_audit_log_function);

      gnutls_global_set_log_level (((loglevel) >> INTTYPEBITS));
      max_log_level = ((loglevel) >> INTTYPEBITS);
      XPROCESS (proc)->gnutls_log_level = max_log_level;
    }

  do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "connecting to host:", c_hostname); } while (0);


  global_init = emacs_gnutls_global_init ();
  if (! ((Fgnutls_errorp (global_init)) == (builtin_lisp_symbol (0))))
    return global_init;



  emacs_gnutls_deinit (proc);


  XPROCESS (proc)->gnutls_state = ((void*)0);
  XPROCESS (proc)->gnutls_x509_cred = ((void*)0);
  XPROCESS (proc)->gnutls_anon_cred = ((void*)0);
  pset_gnutls_cred_type (XPROCESS (proc), type);
  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_EMPTY;

  do { if ((1) <= (max_log_level)) gnutls_log_function (1, "(Emacs) " "allocating credentials"); } while (0);
  if (((type) == (builtin_lisp_symbol (498))))
    {
      Lisp_Object verify_flags;
      unsigned int gnutls_verify_flags = (0);

      do { if ((2) <= (max_log_level)) gnutls_log_function (2, "(Emacs) " "allocating x509 credentials"); } while (0);
      check_memory_full (gnutls_certificate_allocate_credentials (&x509_cred));
      XPROCESS (proc)->gnutls_x509_cred = x509_cred;

      verify_flags = Fplist_get (proplist, builtin_lisp_symbol (57));
      if (NUMBERP (verify_flags))
 {
   gnutls_verify_flags = ((verify_flags) >> INTTYPEBITS);
   do { if ((2) <= (max_log_level)) gnutls_log_function (2, "(Emacs) " "setting verification flags"); } while (0);
 }
      else if (((verify_flags) == (builtin_lisp_symbol (0))))
 do { if ((2) <= (max_log_level)) gnutls_log_function (2, "(Emacs) " "using default verification flags"); } while (0);
      else
 do { if ((2) <= (max_log_level)) gnutls_log_function (2, "(Emacs) " "ignoring invalid verify-flags"); } while (0);

      gnutls_certificate_set_verify_flags (x509_cred, gnutls_verify_flags);
    }
  else
    {
      do { if ((2) <= (max_log_level)) gnutls_log_function (2, "(Emacs) " "allocating anon credentials"); } while (0);
      check_memory_full (gnutls_anon_allocate_client_credentials (&anon_cred));
      XPROCESS (proc)->gnutls_anon_cred = anon_cred;
    }

  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_CRED_ALLOC;

  if (((type) == (builtin_lisp_symbol (498))))
    {

      int file_format = GNUTLS_X509_FMT_PEM;
      Lisp_Object tail;



      ret = gnutls_certificate_set_x509_system_trust (x509_cred);
      if (ret < 0)
 {
   check_memory_full (ret);
   do { if ((4) <= (max_log_level)) gnutls_log_function2i (4, "(Emacs) " "setting system trust failed with code ", ret); } while (0);

 }


      for (tail = trustfiles; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   Lisp_Object trustfile = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
   if (STRINGP (trustfile))
     {
       do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "setting the trustfile: ", SSDATA (trustfile)); } while (0);

       trustfile = encode_file_name (trustfile);






       ret = gnutls_certificate_set_x509_trust_file
  (x509_cred,
   SSDATA (trustfile),
   file_format);

       if (ret < 0)
  return gnutls_make_error (ret);
     }
   else
     {
       emacs_gnutls_deinit (proc);
       error ("Invalid trustfile");
     }
 }

      for (tail = crlfiles; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   Lisp_Object crlfile = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
   if (STRINGP (crlfile))
     {
       do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "setting the CRL file: ", SSDATA (crlfile)); } while (0);

       crlfile = encode_file_name (crlfile);



       ret = gnutls_certificate_set_x509_crl_file
  (x509_cred, SSDATA (crlfile), file_format);

       if (ret < 0)
  return gnutls_make_error (ret);
     }
   else
     {
       emacs_gnutls_deinit (proc);
       error ("Invalid CRL file");
     }
 }

      for (tail = keylist; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   Lisp_Object keyfile = Fcar ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car);
   Lisp_Object certfile = Fcar (Fcdr ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car));
   if (STRINGP (keyfile) && STRINGP (certfile))
     {
       do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "setting the client key file: ", SSDATA (keyfile)); } while (0);

       do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "setting the client cert file: ", SSDATA (certfile)); } while (0);

       keyfile = encode_file_name (keyfile);
       certfile = encode_file_name (certfile);




       ret = gnutls_certificate_set_x509_key_file
  (x509_cred, SSDATA (certfile), SSDATA (keyfile), file_format);

       if (ret < 0)
  return gnutls_make_error (ret);
     }
   else
     {
       emacs_gnutls_deinit (proc);
       error (STRINGP (keyfile) ? "Invalid client cert file"
       : "Invalid client key file");
     }
 }
    }

  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_FILES;
  do { if ((1) <= (max_log_level)) gnutls_log_function (1, "(Emacs) " "gnutls callbacks"); } while (0);
  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_CALLBACKS;



  do { if ((1) <= (max_log_level)) gnutls_log_function (1, "(Emacs) " "gnutls_init"); } while (0);
  ret = gnutls_init (&state, (1<<1));
  XPROCESS (proc)->gnutls_state = state;
  if (ret < 0)
    return gnutls_make_error (ret);
  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_INIT;

  if (STRINGP (priority_string))
    {
      priority_string_ptr = SSDATA (priority_string);
      do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "got non-default priority string:", priority_string_ptr); } while (0);

    }
  else
    {
      do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "using default priority string:", priority_string_ptr); } while (0);

    }

  do { if ((1) <= (max_log_level)) gnutls_log_function (1, "(Emacs) " "setting the priority string"); } while (0);
  ret = gnutls_priority_set_direct (state, priority_string_ptr, ((void*)0));
  if (ret < 0)
    return gnutls_make_error (ret);

  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_PRIORITY;

  if (((((enum Lisp_Type) ((prime_bits) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
    gnutls_dh_set_prime_bits (state, XUINT (prime_bits));

  ret = ((type) == (builtin_lisp_symbol (498)))
    ? gnutls_credentials_set (state, GNUTLS_CRD_CERTIFICATE, x509_cred)
    : gnutls_credentials_set (state, GNUTLS_CRD_ANON, anon_cred);
  if (ret < 0)
    return gnutls_make_error (ret);

  if (!gnutls_ip_address_p (c_hostname))
    {
      ret = gnutls_server_name_set (state, GNUTLS_NAME_DNS, c_hostname,
        strlen (c_hostname));
      if (ret < 0)
 return gnutls_make_error (ret);
    }

  (XPROCESS (proc)->gnutls_initstage) = GNUTLS_STAGE_CRED_SET;
  ret = emacs_gnutls_handshake (XPROCESS (proc));
  if (ret < 0)
    return gnutls_make_error (ret);







  ret = gnutls_certificate_verify_peers2 (state, &peer_verification);
  if (ret < 0)
    return gnutls_make_error (ret);

  XPROCESS (proc)->gnutls_peer_verification = peer_verification;

  warnings = Fplist_get (Fgnutls_peer_status (proc), intern (":warnings"));
  if (!((warnings) == (builtin_lisp_symbol (0))))
    {
      Lisp_Object tail;
      for (tail = warnings; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
        {
          Lisp_Object warning = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
          Lisp_Object message = Fgnutls_peer_status_warning_describe (warning);
          if (!((message) == (builtin_lisp_symbol (0))))
            do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "verification:", SSDATA (message)); } while (0);
        }
    }

  if (peer_verification != 0)
    {
      if (verify_error_all
          || !((Fmember (builtin_lisp_symbol (55), verify_error)) == (builtin_lisp_symbol (0))))
        {
   emacs_gnutls_deinit (proc);
   error ("Certificate validation failed %s, verification code %x",
   c_hostname, peer_verification);
        }
      else
 {
          do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "certificate validation failed:", c_hostname); } while (0);

 }
    }




  if (gnutls_certificate_type_get (state) == GNUTLS_CRT_X509)
    {
      gnutls_x509_crt_t gnutls_verify_cert;
      const gnutls_datum_t *gnutls_verify_cert_list;
      unsigned int gnutls_verify_cert_list_size;

      ret = gnutls_x509_crt_init (&gnutls_verify_cert);
      if (ret < 0)
 return gnutls_make_error (ret);

      gnutls_verify_cert_list =
 gnutls_certificate_get_peers (state, &gnutls_verify_cert_list_size);

      if (gnutls_verify_cert_list == ((void*)0))
 {
   gnutls_x509_crt_deinit (gnutls_verify_cert);
   emacs_gnutls_deinit (proc);
   error ("No x509 certificate was found\n");
 }


      ret = gnutls_x509_crt_import (gnutls_verify_cert,
           &gnutls_verify_cert_list[0],
           GNUTLS_X509_FMT_DER);

      if (ret < 0)
 {
   gnutls_x509_crt_deinit (gnutls_verify_cert);
   return gnutls_make_error (ret);
 }

      XPROCESS (proc)->gnutls_certificate = gnutls_verify_cert;

      int err = gnutls_x509_crt_check_hostname (gnutls_verify_cert,
      c_hostname);
      check_memory_full (err);
      if (!err)
 {
   XPROCESS (proc)->gnutls_extra_peer_verification |=
     CERTIFICATE_NOT_MATCHING;
          if (verify_error_all
              || !((Fmember (builtin_lisp_symbol (50), verify_error)) == (builtin_lisp_symbol (0))))
            {
       gnutls_x509_crt_deinit (gnutls_verify_cert);
       emacs_gnutls_deinit (proc);
       error ("The x509 certificate does not match \"%s\"", c_hostname);
            }
   else
     {
              do { if ((1) <= (max_log_level)) gnutls_log_function2 (1, "(Emacs) " "x509 certificate does not match:", c_hostname); } while (0);

     }
 }
    }


  XPROCESS (proc)->gnutls_p = 1;

  return gnutls_make_error (ret);
}

static struct Lisp_Subr _Alignas (8) Sgnutls_bye = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fgnutls_bye }, 2, 2, "gnutls-bye", 0, 0}; Lisp_Object Fgnutls_bye
# 1606 "gnutls.c"
    (Lisp_Object proc, Lisp_Object cont)
{
  gnutls_session_t state;
  int ret;

  CHECK_PROCESS (proc);

  state = XPROCESS (proc)->gnutls_state;

  gnutls_x509_crt_deinit (XPROCESS (proc)->gnutls_certificate);

  ret = gnutls_bye (state, ((cont) == (builtin_lisp_symbol (0))) ? GNUTLS_SHUT_RDWR : GNUTLS_SHUT_WR);

  return gnutls_make_error (ret);
}



static struct Lisp_Subr _Alignas (8) Sgnutls_available_p = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a0 = Fgnutls_available_p }, 0, 0, "gnutls-available-p", 0, 0}; Lisp_Object Fgnutls_available_p

     (void)
{
# 1641 "gnutls.c"
  return builtin_lisp_symbol (901);




}

void
syms_of_gnutls (void)
{
                                                  ;
  Fset (builtin_lisp_symbol (616),

 ((EMACS_INT) (((EMACS_UINT) (3 * 10000 + 3 * 100 + 8) << INTTYPEBITS) + Lisp_Int0))





        );

  gnutls_global_initialized = 0;

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
  Fput (builtin_lisp_symbol (495), builtin_lisp_symbol (493),
 ((EMACS_INT) (((EMACS_UINT) (-52) << INTTYPEBITS) + Lisp_Int0)));

                                            ;
  Fput (builtin_lisp_symbol (494), builtin_lisp_symbol (493),
 ((EMACS_INT) (((EMACS_UINT) (-28) << INTTYPEBITS) + Lisp_Int0)));

                                                                ;
  Fput (builtin_lisp_symbol (496), builtin_lisp_symbol (493),
 ((EMACS_INT) (((EMACS_UINT) (-10) << INTTYPEBITS) + Lisp_Int0)));

                                                                                ;
  Fput (builtin_lisp_symbol (497), builtin_lisp_symbol (493),
 ((EMACS_INT) (((EMACS_UINT) (-65500) << INTTYPEBITS) + Lisp_Int0)));

  defsubr (&Sgnutls_get_initstage);
  defsubr (&Sgnutls_errorp);
  defsubr (&Sgnutls_error_fatalp);
  defsubr (&Sgnutls_error_string);
  defsubr (&Sgnutls_boot);
  defsubr (&Sgnutls_deinit);
  defsubr (&Sgnutls_bye);
  defsubr (&Sgnutls_peer_status);
  defsubr (&Sgnutls_peer_status_warning_describe);

  do { static struct Lisp_Intfwd i_fwd; defvar_int (&i_fwd, "gnutls-log-level", &globals.f_global_gnutls_log_level); } while (0);




  globals.f_global_gnutls_log_level = 0;



  defsubr (&Sgnutls_available_p);
}
