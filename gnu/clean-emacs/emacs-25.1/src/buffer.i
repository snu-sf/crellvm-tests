# 1 "buffer.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "buffer.c" 2
# 21 "buffer.c"
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
# 22 "buffer.c" 2

# 1 "../lib/sys/types.h" 1
# 21 "../lib/sys/types.h" 3
# 24 "buffer.c" 2
# 1 "../lib/sys/stat.h" 1
# 26 "../lib/sys/stat.h" 3
# 41 "../lib/sys/stat.h" 3
# 1 "../lib/sys/types.h" 1 3
# 21 "../lib/sys/types.h" 3
# 42 "../lib/sys/stat.h" 2 3


# 1 "../lib/time.h" 1 3
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
# 45 "../lib/sys/stat.h" 2 3


# 1 "/usr/include/sys/stat.h" 1 3 4
# 38 "/usr/include/sys/stat.h" 3 4
# 1 "../lib/time.h" 1 3 4
# 21 "../lib/time.h" 3
# 39 "/usr/include/sys/stat.h" 2 3 4
# 106 "/usr/include/sys/stat.h" 3 4
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
# 107 "/usr/include/sys/stat.h" 2 3 4
# 210 "/usr/include/sys/stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 229 "/usr/include/sys/stat.h" 3 4
extern int stat64 (const char *__restrict __file,
     struct stat64 *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));







extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 254 "/usr/include/sys/stat.h" 3 4
extern int fstatat64 (int __fd, const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));







extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 277 "/usr/include/sys/stat.h" 3 4
extern int lstat64 (const char *__restrict __file,
      struct stat64 *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ ));





extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ ));




extern __mode_t getumask (void) __attribute__ ((__nothrow__ ));



extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));






extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));





extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));





extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ ));
# 400 "/usr/include/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4)));
# 433 "/usr/include/sys/stat.h" 3 4
extern int __fxstat64 (int __ver, int __fildes, struct stat64 *__stat_buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int __xstat64 (int __ver, const char *__filename,
        struct stat64 *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat64 (int __ver, const char *__filename,
         struct stat64 *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat64 (int __ver, int __fildes, const char *__filename,
    struct stat64 *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4)));

extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 5)));
# 48 "../lib/sys/stat.h" 2 3
# 689 "../lib/sys/stat.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 786 "../lib/sys/stat.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 829 "../lib/sys/stat.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 25 "buffer.c" 2
# 1 "/usr/include/sys/param.h" 1 3 4
# 23 "/usr/include/sys/param.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 24 "/usr/include/sys/param.h" 2 3 4

# 1 "../lib/sys/types.h" 1 3 4
# 21 "../lib/sys/types.h" 3
# 26 "/usr/include/sys/param.h" 2 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 1 3 4
# 37 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 3 4
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
# 38 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 2 3 4
# 27 "/usr/include/sys/param.h" 2 3 4

# 1 "../lib/signal.h" 1 3 4
# 21 "../lib/signal.h" 3
# 49 "../lib/signal.h" 3
# 1 "../lib/sys/types.h" 1 3
# 21 "../lib/sys/types.h" 3
# 50 "../lib/signal.h" 2 3


# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 75 "/usr/include/signal.h" 3 4
# 1 "../lib/time.h" 1 3 4
# 21 "../lib/time.h" 3
# 76 "/usr/include/signal.h" 2 3 4




# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 151 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 301 "/usr/include/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));

extern __sighandler_t sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));







extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 119 "/usr/include/signal.h" 3 4
extern __sighandler_t bsd_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));






extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ ));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ ));




extern int raise (int __sig) __attribute__ ((__nothrow__ ));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ ));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 169 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 178 "/usr/include/signal.h" 3 4
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause");
# 197 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));
# 212 "/usr/include/signal.h" 3 4
typedef __sighandler_t sighandler_t;




typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int sigisemptyset (const sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigandset (sigset_t *__set, const sigset_t *__left,
        const sigset_t *__right) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));


extern int sigorset (sigset_t *__set, const sigset_t *__left,
       const sigset_t *__right) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));





# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 24 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 254 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ ));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ ));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ ));
# 311 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 335 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 341 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ ));







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 351 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ ));


# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 25 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 358 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 22 "/usr/include/sys/ucontext.h" 3 4
# 1 "../lib/signal.h" 1 3 4
# 21 "../lib/signal.h" 3
# 36 "../lib/signal.h" 3
# 1 "/usr/include/signal.h" 1 3 4
# 37 "../lib/signal.h" 2 3
# 23 "/usr/include/sys/ucontext.h" 2 3 4








__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];



enum
{
  REG_R8 = 0,

  REG_R9,

  REG_R10,

  REG_R11,

  REG_R12,

  REG_R13,

  REG_R14,

  REG_R15,

  REG_RDI,

  REG_RSI,

  REG_RBP,

  REG_RBX,

  REG_RDX,

  REG_RAX,

  REG_RCX,

  REG_RSP,

  REG_RIP,

  REG_EFL,

  REG_CSGSFS,

  REG_ERR,

  REG_TRAPNO,

  REG_OLDMASK,

  REG_CR2

};


struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 361 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ ));







extern int sighold (int __sig) __attribute__ ((__nothrow__ ));


extern int sigrelse (int __sig) __attribute__ ((__nothrow__ ));


extern int sigignore (int __sig) __attribute__ ((__nothrow__ ));


extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__ ));







# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));



extern int pthread_sigqueue (pthread_t __threadid, int __signo,
        const union sigval __value) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 53 "../lib/signal.h" 2 3
# 456 "../lib/signal.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 29 "/usr/include/sys/param.h" 2 3 4


# 1 "/usr/include/bits/param.h" 1 3 4
# 28 "/usr/include/bits/param.h" 3 4
# 1 "/usr/include/linux/param.h" 1 3 4



# 1 "/usr/include/asm/param.h" 1 3 4
# 1 "/usr/include/asm-generic/param.h" 1 3 4
# 2 "/usr/include/asm/param.h" 2 3 4
# 5 "/usr/include/linux/param.h" 2 3 4
# 29 "/usr/include/bits/param.h" 2 3 4
# 32 "/usr/include/sys/param.h" 2 3 4
# 26 "buffer.c" 2
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
# 27 "buffer.c" 2
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
# 28 "buffer.c" 2
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
# 29 "buffer.c" 2

# 1 "../lib/verify.h" 1
# 49 "../lib/verify.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 50 "../lib/verify.h" 2
# 31 "buffer.c" 2

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
# 122 "/usr/include/stdint.h" 3 4
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
# 1412 "../lib/inttypes.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1438 "../lib/inttypes.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 30 "./lisp.h" 2


# 1 "../lib/intprops.h" 1
# 33 "./lisp.h" 2
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
# 33 "buffer.c" 2
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
# 34 "buffer.c" 2
# 1 "./intervals.h" 1
# 26 "./intervals.h"
struct interval
{


  ptrdiff_t total_length;
  ptrdiff_t position;





  struct interval *left;
  struct interval *right;


  union
  {
    struct interval *interval;
    Lisp_Object obj;
  } up;
  bool_bf up_obj : 1;

  bool_bf gcmarkbit : 1;





  bool_bf write_protect : 1;
  bool_bf visible : 1;
  bool_bf front_sticky : 1;

  bool_bf rear_sticky : 1;
  Lisp_Object plist;
};
# 137 "./intervals.h"
inline void
set_interval_object (INTERVAL i, Lisp_Object obj)
{
  ((void) (0 && (BUFFERP (obj) || STRINGP (obj))));
  i->up_obj = 1;
  i->up.obj = obj;
}

inline void
set_interval_parent (INTERVAL i, INTERVAL parent)
{
  i->up_obj = 0;
  i->up.interval = parent;
}

inline void
set_interval_plist (INTERVAL i, Lisp_Object plist)
{
  i->plist = plist;
}
# 231 "./intervals.h"
extern INTERVAL make_interval (void);



extern INTERVAL create_root_interval (Lisp_Object);
extern void copy_properties (INTERVAL, INTERVAL);
extern _Bool intervals_equal (INTERVAL, INTERVAL);
extern void traverse_intervals (INTERVAL, ptrdiff_t,
                                void (*) (INTERVAL, Lisp_Object),
                                Lisp_Object);
extern void traverse_intervals_noorder (INTERVAL,
                                        void (*) (INTERVAL, Lisp_Object),
                                        Lisp_Object);
extern INTERVAL split_interval_right (INTERVAL, ptrdiff_t);
extern INTERVAL split_interval_left (INTERVAL, ptrdiff_t);
extern INTERVAL find_interval (INTERVAL, ptrdiff_t);
extern INTERVAL next_interval (INTERVAL);
extern INTERVAL previous_interval (INTERVAL);
extern INTERVAL merge_interval_left (INTERVAL);
extern void offset_intervals (struct buffer *, ptrdiff_t, ptrdiff_t);
extern void graft_intervals_into_buffer (INTERVAL, ptrdiff_t, ptrdiff_t,
                                         struct buffer *, _Bool);
extern void verify_interval_modification (struct buffer *,
       ptrdiff_t, ptrdiff_t);
extern INTERVAL balance_intervals (INTERVAL);
extern void copy_intervals_to_string (Lisp_Object, struct buffer *,
                                             ptrdiff_t, ptrdiff_t);
extern INTERVAL copy_intervals (INTERVAL, ptrdiff_t, ptrdiff_t);
extern _Bool compare_string_intervals (Lisp_Object, Lisp_Object);
extern Lisp_Object textget (Lisp_Object, Lisp_Object);
extern Lisp_Object lookup_char_property (Lisp_Object, Lisp_Object, _Bool);
extern void move_if_not_intangible (ptrdiff_t);
extern _Bool get_property_and_range (ptrdiff_t, Lisp_Object, Lisp_Object *,
        ptrdiff_t *, ptrdiff_t *, Lisp_Object);
extern Lisp_Object get_local_map (ptrdiff_t, struct buffer *, Lisp_Object);
extern INTERVAL update_interval (INTERVAL, ptrdiff_t);
extern void set_intervals_multibyte (_Bool);
extern INTERVAL validate_interval_range (Lisp_Object, Lisp_Object *,
                                         Lisp_Object *, _Bool);
extern INTERVAL interval_of (ptrdiff_t, Lisp_Object);


extern int invisible_prop (Lisp_Object, Lisp_Object);


extern Lisp_Object copy_text_properties (Lisp_Object, Lisp_Object,
                                         Lisp_Object, Lisp_Object,
                                         Lisp_Object, Lisp_Object);
extern Lisp_Object set_text_properties (Lisp_Object, Lisp_Object,
                                        Lisp_Object, Lisp_Object,
                                        Lisp_Object);
extern void set_text_properties_1 (Lisp_Object, Lisp_Object,
                                   Lisp_Object, Lisp_Object, INTERVAL);

Lisp_Object text_property_list (Lisp_Object, Lisp_Object, Lisp_Object,
                                Lisp_Object);
void add_text_properties_from_list (Lisp_Object, Lisp_Object, Lisp_Object);
Lisp_Object extend_property_ranges (Lisp_Object, Lisp_Object);
Lisp_Object get_char_property_and_overlay (Lisp_Object, Lisp_Object,
                                           Lisp_Object, Lisp_Object*);
extern int text_property_stickiness (Lisp_Object prop, Lisp_Object pos,
                                     Lisp_Object buffer);

extern void syms_of_textprop (void);
# 35 "buffer.c" 2
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
# 36 "buffer.c" 2
# 1 "./window.h" 1
# 23 "./window.h"
# 1 "./dispextern.h" 1
# 25 "./dispextern.h"
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
# 26 "./dispextern.h" 2



# 1 "/usr/include/X11/Xlib.h" 1 3 4
# 38 "/usr/include/X11/Xlib.h" 3 4
# 1 "../lib/sys/types.h" 1 3 4
# 21 "../lib/sys/types.h" 3
# 39 "/usr/include/X11/Xlib.h" 2 3 4








# 1 "/usr/include/X11/Xfuncproto.h" 1 3 4
# 48 "/usr/include/X11/Xlib.h" 2 3 4
# 1 "/usr/include/X11/Xosdefs.h" 1 3 4
# 49 "/usr/include/X11/Xlib.h" 2 3 4


# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 52 "/usr/include/X11/Xlib.h" 2 3 4
# 62 "/usr/include/X11/Xlib.h" 3 4
extern int
_Xmblen(
    char *str,
    int len
    );
# 76 "/usr/include/X11/Xlib.h" 3 4
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpadded"


typedef char *XPointer;
# 148 "/usr/include/X11/Xlib.h" 3 4
typedef struct _XExtData {
 int number;
 struct _XExtData *next;
 int (*free_private)(
 struct _XExtData *extension
 );
 XPointer private_data;
} XExtData;




typedef struct {
 int extension;
 int major_opcode;
 int first_event;
 int first_error;
} XExtCodes;





typedef struct {
    int depth;
    int bits_per_pixel;
    int scanline_pad;
} XPixmapFormatValues;





typedef struct {
 int function;
 unsigned long plane_mask;
 unsigned long foreground;
 unsigned long background;
 int line_width;
 int line_style;
 int cap_style;

 int join_style;
 int fill_style;

 int fill_rule;
 int arc_mode;
 Pixmap tile;
 Pixmap stipple;
 int ts_x_origin;
 int ts_y_origin;
        Font font;
 int subwindow_mode;
 int graphics_exposures;
 int clip_x_origin;
 int clip_y_origin;
 Pixmap clip_mask;
 int dash_offset;
 char dashes;
} XGCValues;






typedef struct _XGC







*GC;




typedef struct {
 XExtData *ext_data;
 VisualID visualid;



 int class;

 unsigned long red_mask, green_mask, blue_mask;
 int bits_per_rgb;
 int map_entries;
} Visual;




typedef struct {
 int depth;
 int nvisuals;
 Visual *visuals;
} Depth;







struct _XDisplay;

typedef struct {
 XExtData *ext_data;
 struct _XDisplay *display;
 Window root;
 int width, height;
 int mwidth, mheight;
 int ndepths;
 Depth *depths;
 int root_depth;
 Visual *root_visual;
 GC default_gc;
 Colormap cmap;
 unsigned long white_pixel;
 unsigned long black_pixel;
 int max_maps, min_maps;
 int backing_store;
 int save_unders;
 long root_input_mask;
} Screen;




typedef struct {
 XExtData *ext_data;
 int depth;
 int bits_per_pixel;
 int scanline_pad;
} ScreenFormat;




typedef struct {
    Pixmap background_pixmap;
    unsigned long background_pixel;
    Pixmap border_pixmap;
    unsigned long border_pixel;
    int bit_gravity;
    int win_gravity;
    int backing_store;
    unsigned long backing_planes;
    unsigned long backing_pixel;
    int save_under;
    long event_mask;
    long do_not_propagate_mask;
    int override_redirect;
    Colormap colormap;
    Cursor cursor;
} XSetWindowAttributes;

typedef struct {
    int x, y;
    int width, height;
    int border_width;
    int depth;
    Visual *visual;
    Window root;



    int class;

    int bit_gravity;
    int win_gravity;
    int backing_store;
    unsigned long backing_planes;
    unsigned long backing_pixel;
    int save_under;
    Colormap colormap;
    int map_installed;
    int map_state;
    long all_event_masks;
    long your_event_mask;
    long do_not_propagate_mask;
    int override_redirect;
    Screen *screen;
} XWindowAttributes;






typedef struct {
 int family;
 int length;
 char *address;
} XHostAddress;




typedef struct {
 int typelength;
 int valuelength;
 char *type;
 char *value;
} XServerInterpretedAddress;




typedef struct _XImage {
    int width, height;
    int xoffset;
    int format;
    char *data;
    int byte_order;
    int bitmap_unit;
    int bitmap_bit_order;
    int bitmap_pad;
    int depth;
    int bytes_per_line;
    int bits_per_pixel;
    unsigned long red_mask;
    unsigned long green_mask;
    unsigned long blue_mask;
    XPointer obdata;
    struct funcs {
 struct _XImage *(*create_image)(
  struct _XDisplay* ,
  Visual* ,
  unsigned int ,
  int ,
  int ,
  char* ,
  unsigned int ,
  unsigned int ,
  int ,
  int );
 int (*destroy_image) (struct _XImage *);
 unsigned long (*get_pixel) (struct _XImage *, int, int);
 int (*put_pixel) (struct _XImage *, int, int, unsigned long);
 struct _XImage *(*sub_image)(struct _XImage *, int, int, unsigned int, unsigned int);
 int (*add_pixel) (struct _XImage *, long);
 } f;
} XImage;




typedef struct {
    int x, y;
    int width, height;
    int border_width;
    Window sibling;
    int stack_mode;
} XWindowChanges;




typedef struct {
 unsigned long pixel;
 unsigned short red, green, blue;
 char flags;
 char pad;
} XColor;






typedef struct {
    short x1, y1, x2, y2;
} XSegment;

typedef struct {
    short x, y;
} XPoint;

typedef struct {
    short x, y;
    unsigned short width, height;
} XRectangle;

typedef struct {
    short x, y;
    unsigned short width, height;
    short angle1, angle2;
} XArc;




typedef struct {
        int key_click_percent;
        int bell_percent;
        int bell_pitch;
        int bell_duration;
        int led;
        int led_mode;
        int key;
        int auto_repeat_mode;
} XKeyboardControl;



typedef struct {
        int key_click_percent;
 int bell_percent;
 unsigned int bell_pitch, bell_duration;
 unsigned long led_mask;
 int global_auto_repeat;
 char auto_repeats[32];
} XKeyboardState;



typedef struct {
        Time time;
 short x, y;
} XTimeCoord;



typedef struct {
  int max_keypermod;
  KeyCode *modifiermap;
} XModifierKeymap;
# 487 "/usr/include/X11/Xlib.h" 3 4
typedef struct _XDisplay Display;


struct _XPrivate;
struct _XrmHashBucketRec;

typedef struct



{
 XExtData *ext_data;
 struct _XPrivate *private1;
 int fd;
 int private2;
 int proto_major_version;
 int proto_minor_version;
 char *vendor;
        XID private3;
 XID private4;
 XID private5;
 int private6;
 XID (*resource_alloc)(
  struct _XDisplay*
 );
 int byte_order;
 int bitmap_unit;
 int bitmap_pad;
 int bitmap_bit_order;
 int nformats;
 ScreenFormat *pixmap_format;
 int private8;
 int release;
 struct _XPrivate *private9, *private10;
 int qlen;
 unsigned long last_request_read;
 unsigned long request;
 XPointer private11;
 XPointer private12;
 XPointer private13;
 XPointer private14;
 unsigned max_request_size;
 struct _XrmHashBucketRec *db;
 int (*private15)(
  struct _XDisplay*
  );
 char *display_name;
 int default_screen;
 int nscreens;
 Screen *screens;
 unsigned long motion_buffer;
 unsigned long private16;
 int min_keycode;
 int max_keycode;
 XPointer private17;
 XPointer private18;
 int private19;
 char *xdefaults;

}



*_XPrivDisplay;






typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Window root;
 Window subwindow;
 Time time;
 int x, y;
 int x_root, y_root;
 unsigned int state;
 unsigned int keycode;
 int same_screen;
} XKeyEvent;
typedef XKeyEvent XKeyPressedEvent;
typedef XKeyEvent XKeyReleasedEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Window root;
 Window subwindow;
 Time time;
 int x, y;
 int x_root, y_root;
 unsigned int state;
 unsigned int button;
 int same_screen;
} XButtonEvent;
typedef XButtonEvent XButtonPressedEvent;
typedef XButtonEvent XButtonReleasedEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Window root;
 Window subwindow;
 Time time;
 int x, y;
 int x_root, y_root;
 unsigned int state;
 char is_hint;
 int same_screen;
} XMotionEvent;
typedef XMotionEvent XPointerMovedEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Window root;
 Window subwindow;
 Time time;
 int x, y;
 int x_root, y_root;
 int mode;
 int detail;




 int same_screen;
 int focus;
 unsigned int state;
} XCrossingEvent;
typedef XCrossingEvent XEnterWindowEvent;
typedef XCrossingEvent XLeaveWindowEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 int mode;

 int detail;





} XFocusChangeEvent;
typedef XFocusChangeEvent XFocusInEvent;
typedef XFocusChangeEvent XFocusOutEvent;


typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 char key_vector[32];
} XKeymapEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 int x, y;
 int width, height;
 int count;
} XExposeEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Drawable drawable;
 int x, y;
 int width, height;
 int count;
 int major_code;
 int minor_code;
} XGraphicsExposeEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Drawable drawable;
 int major_code;
 int minor_code;
} XNoExposeEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 int state;
} XVisibilityEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window parent;
 Window window;
 int x, y;
 int width, height;
 int border_width;
 int override_redirect;
} XCreateWindowEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
} XDestroyWindowEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
 int from_configure;
} XUnmapEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
 int override_redirect;
} XMapEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window parent;
 Window window;
} XMapRequestEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
 Window parent;
 int x, y;
 int override_redirect;
} XReparentEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
 int x, y;
 int width, height;
 int border_width;
 Window above;
 int override_redirect;
} XConfigureEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
 int x, y;
} XGravityEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 int width, height;
} XResizeRequestEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window parent;
 Window window;
 int x, y;
 int width, height;
 int border_width;
 Window above;
 int detail;
 unsigned long value_mask;
} XConfigureRequestEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window event;
 Window window;
 int place;
} XCirculateEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window parent;
 Window window;
 int place;
} XCirculateRequestEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Atom atom;
 Time time;
 int state;
} XPropertyEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Atom selection;
 Time time;
} XSelectionClearEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window owner;
 Window requestor;
 Atom selection;
 Atom target;
 Atom property;
 Time time;
} XSelectionRequestEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window requestor;
 Atom selection;
 Atom target;
 Atom property;
 Time time;
} XSelectionEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Colormap colormap;



 int new;

 int state;
} XColormapEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 Atom message_type;
 int format;
 union {
  char b[20];
  short s[10];
  long l[5];
  } data;
} XClientMessageEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
 int request;

 int first_keycode;
 int count;
} XMappingEvent;

typedef struct {
 int type;
 Display *display;
 XID resourceid;
 unsigned long serial;
 unsigned char error_code;
 unsigned char request_code;
 unsigned char minor_code;
} XErrorEvent;

typedef struct {
 int type;
 unsigned long serial;
 int send_event;
 Display *display;
 Window window;
} XAnyEvent;







typedef struct
    {
    int type;
    unsigned long serial;
    int send_event;
    Display *display;
    int extension;
    int evtype;
    } XGenericEvent;

typedef struct {
    int type;
    unsigned long serial;
    int send_event;
    Display *display;
    int extension;
    int evtype;
    unsigned int cookie;
    void *data;
} XGenericEventCookie;





typedef union _XEvent {
        int type;
 XAnyEvent xany;
 XKeyEvent xkey;
 XButtonEvent xbutton;
 XMotionEvent xmotion;
 XCrossingEvent xcrossing;
 XFocusChangeEvent xfocus;
 XExposeEvent xexpose;
 XGraphicsExposeEvent xgraphicsexpose;
 XNoExposeEvent xnoexpose;
 XVisibilityEvent xvisibility;
 XCreateWindowEvent xcreatewindow;
 XDestroyWindowEvent xdestroywindow;
 XUnmapEvent xunmap;
 XMapEvent xmap;
 XMapRequestEvent xmaprequest;
 XReparentEvent xreparent;
 XConfigureEvent xconfigure;
 XGravityEvent xgravity;
 XResizeRequestEvent xresizerequest;
 XConfigureRequestEvent xconfigurerequest;
 XCirculateEvent xcirculate;
 XCirculateRequestEvent xcirculaterequest;
 XPropertyEvent xproperty;
 XSelectionClearEvent xselectionclear;
 XSelectionRequestEvent xselectionrequest;
 XSelectionEvent xselection;
 XColormapEvent xcolormap;
 XClientMessageEvent xclient;
 XMappingEvent xmapping;
 XErrorEvent xerror;
 XKeymapEvent xkeymap;
 XGenericEvent xgeneric;
 XGenericEventCookie xcookie;
 long pad[24];
} XEvent;







typedef struct {
    short lbearing;
    short rbearing;
    short width;
    short ascent;
    short descent;
    unsigned short attributes;
} XCharStruct;





typedef struct {
    Atom name;
    unsigned long card32;
} XFontProp;

typedef struct {
    XExtData *ext_data;
    Font fid;
    unsigned direction;
    unsigned min_char_or_byte2;
    unsigned max_char_or_byte2;
    unsigned min_byte1;
    unsigned max_byte1;
    int all_chars_exist;
    unsigned default_char;
    int n_properties;
    XFontProp *properties;
    XCharStruct min_bounds;
    XCharStruct max_bounds;
    XCharStruct *per_char;
    int ascent;
    int descent;
} XFontStruct;




typedef struct {
    char *chars;
    int nchars;
    int delta;
    Font font;
} XTextItem;

typedef struct {
    unsigned char byte1;
    unsigned char byte2;
} XChar2b;

typedef struct {
    XChar2b *chars;
    int nchars;
    int delta;
    Font font;
} XTextItem16;


typedef union { Display *display;
  GC gc;
  Visual *visual;
  Screen *screen;
  ScreenFormat *pixmap_format;
  XFontStruct *font; } XEDataObject;

typedef struct {
    XRectangle max_ink_extent;
    XRectangle max_logical_extent;
} XFontSetExtents;





typedef struct _XOM *XOM;
typedef struct _XOC *XOC, *XFontSet;

typedef struct {
    char *chars;
    int nchars;
    int delta;
    XFontSet font_set;
} XmbTextItem;

typedef struct {
    wchar_t *chars;
    int nchars;
    int delta;
    XFontSet font_set;
} XwcTextItem;
# 1121 "/usr/include/X11/Xlib.h" 3 4
typedef struct {
    int charset_count;
    char **charset_list;
} XOMCharSetList;

typedef enum {
    XOMOrientation_LTR_TTB,
    XOMOrientation_RTL_TTB,
    XOMOrientation_TTB_LTR,
    XOMOrientation_TTB_RTL,
    XOMOrientation_Context
} XOrientation;

typedef struct {
    int num_orientation;
    XOrientation *orientation;
} XOMOrientation;

typedef struct {
    int num_font;
    XFontStruct **font_struct_list;
    char **font_name_list;
} XOMFontInfo;

typedef struct _XIM *XIM;
typedef struct _XIC *XIC;

typedef void (*XIMProc)(
    XIM,
    XPointer,
    XPointer
);

typedef int (*XICProc)(
    XIC,
    XPointer,
    XPointer
);

typedef void (*XIDProc)(
    Display*,
    XPointer,
    XPointer
);

typedef unsigned long XIMStyle;

typedef struct {
    unsigned short count_styles;
    XIMStyle *supported_styles;
} XIMStyles;
# 1233 "/usr/include/X11/Xlib.h" 3 4
typedef void *XVaNestedList;

typedef struct {
    XPointer client_data;
    XIMProc callback;
} XIMCallback;

typedef struct {
    XPointer client_data;
    XICProc callback;
} XICCallback;

typedef unsigned long XIMFeedback;
# 1257 "/usr/include/X11/Xlib.h" 3 4
typedef struct _XIMText {
    unsigned short length;
    XIMFeedback *feedback;
    int encoding_is_wchar;
    union {
 char *multi_byte;
 wchar_t *wide_char;
    } string;
} XIMText;

typedef unsigned long XIMPreeditState;





typedef struct _XIMPreeditStateNotifyCallbackStruct {
    XIMPreeditState state;
} XIMPreeditStateNotifyCallbackStruct;

typedef unsigned long XIMResetState;




typedef unsigned long XIMStringConversionFeedback;
# 1291 "/usr/include/X11/Xlib.h" 3 4
typedef struct _XIMStringConversionText {
    unsigned short length;
    XIMStringConversionFeedback *feedback;
    int encoding_is_wchar;
    union {
 char *mbs;
 wchar_t *wcs;
    } string;
} XIMStringConversionText;

typedef unsigned short XIMStringConversionPosition;

typedef unsigned short XIMStringConversionType;






typedef unsigned short XIMStringConversionOperation;




typedef enum {
    XIMForwardChar, XIMBackwardChar,
    XIMForwardWord, XIMBackwardWord,
    XIMCaretUp, XIMCaretDown,
    XIMNextLine, XIMPreviousLine,
    XIMLineStart, XIMLineEnd,
    XIMAbsolutePosition,
    XIMDontChange
} XIMCaretDirection;

typedef struct _XIMStringConversionCallbackStruct {
    XIMStringConversionPosition position;
    XIMCaretDirection direction;
    XIMStringConversionOperation operation;
    unsigned short factor;
    XIMStringConversionText *text;
} XIMStringConversionCallbackStruct;

typedef struct _XIMPreeditDrawCallbackStruct {
    int caret;
    int chg_first;
    int chg_length;
    XIMText *text;
} XIMPreeditDrawCallbackStruct;

typedef enum {
    XIMIsInvisible,
    XIMIsPrimary,
    XIMIsSecondary
} XIMCaretStyle;

typedef struct _XIMPreeditCaretCallbackStruct {
    int position;
    XIMCaretDirection direction;
    XIMCaretStyle style;
} XIMPreeditCaretCallbackStruct;

typedef enum {
    XIMTextType,
    XIMBitmapType
} XIMStatusDataType;

typedef struct _XIMStatusDrawCallbackStruct {
    XIMStatusDataType type;
    union {
 XIMText *text;
 Pixmap bitmap;
    } data;
} XIMStatusDrawCallbackStruct;

typedef struct _XIMHotKeyTrigger {
    KeySym keysym;
    int modifier;
    int modifier_mask;
} XIMHotKeyTrigger;

typedef struct _XIMHotKeyTriggers {
    int num_hot_key;
    XIMHotKeyTrigger *key;
} XIMHotKeyTriggers;

typedef unsigned long XIMHotKeyState;




typedef struct {
    unsigned short count_values;
    char **supported_values;
} XIMValuesList;







extern int _Xdebug;

extern XFontStruct *XLoadQueryFont(
    Display* ,
    const char*
);

extern XFontStruct *XQueryFont(
    Display* ,
    XID
);


extern XTimeCoord *XGetMotionEvents(
    Display* ,
    Window ,
    Time ,
    Time ,
    int*
);

extern XModifierKeymap *XDeleteModifiermapEntry(
    XModifierKeymap* ,



    KeyCode ,

    int
);

extern XModifierKeymap *XGetModifierMapping(
    Display*
);

extern XModifierKeymap *XInsertModifiermapEntry(
    XModifierKeymap* ,



    KeyCode ,

    int
);

extern XModifierKeymap *XNewModifiermap(
    int
);

extern XImage *XCreateImage(
    Display* ,
    Visual* ,
    unsigned int ,
    int ,
    int ,
    char* ,
    unsigned int ,
    unsigned int ,
    int ,
    int
);
extern int XInitImage(
    XImage*
);
extern XImage *XGetImage(
    Display* ,
    Drawable ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    unsigned long ,
    int
);
extern XImage *XGetSubImage(
    Display* ,
    Drawable ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    unsigned long ,
    int ,
    XImage* ,
    int ,
    int
);




extern Display *XOpenDisplay(
    const char*
);

extern void XrmInitialize(
    void
);

extern char *XFetchBytes(
    Display* ,
    int*
);
extern char *XFetchBuffer(
    Display* ,
    int* ,
    int
);
extern char *XGetAtomName(
    Display* ,
    Atom
);
extern int XGetAtomNames(
    Display* ,
    Atom* ,
    int ,
    char**
);
extern char *XGetDefault(
    Display* ,
    const char* ,
    const char*
);
extern char *XDisplayName(
    const char*
);
extern char *XKeysymToString(
    KeySym
);

extern int (*XSynchronize(
    Display* ,
    int
))(
    Display*
);
extern int (*XSetAfterFunction(
    Display* ,
    int (*) (
      Display*
            )
))(
    Display*
);
extern Atom XInternAtom(
    Display* ,
    const char* ,
    int
);
extern int XInternAtoms(
    Display* ,
    char** ,
    int ,
    int ,
    Atom*
);
extern Colormap XCopyColormapAndFree(
    Display* ,
    Colormap
);
extern Colormap XCreateColormap(
    Display* ,
    Window ,
    Visual* ,
    int
);
extern Cursor XCreatePixmapCursor(
    Display* ,
    Pixmap ,
    Pixmap ,
    XColor* ,
    XColor* ,
    unsigned int ,
    unsigned int
);
extern Cursor XCreateGlyphCursor(
    Display* ,
    Font ,
    Font ,
    unsigned int ,
    unsigned int ,
    XColor const * ,
    XColor const *
);
extern Cursor XCreateFontCursor(
    Display* ,
    unsigned int
);
extern Font XLoadFont(
    Display* ,
    const char*
);
extern GC XCreateGC(
    Display* ,
    Drawable ,
    unsigned long ,
    XGCValues*
);
extern GContext XGContextFromGC(
    GC
);
extern void XFlushGC(
    Display* ,
    GC
);
extern Pixmap XCreatePixmap(
    Display* ,
    Drawable ,
    unsigned int ,
    unsigned int ,
    unsigned int
);
extern Pixmap XCreateBitmapFromData(
    Display* ,
    Drawable ,
    const char* ,
    unsigned int ,
    unsigned int
);
extern Pixmap XCreatePixmapFromBitmapData(
    Display* ,
    Drawable ,
    char* ,
    unsigned int ,
    unsigned int ,
    unsigned long ,
    unsigned long ,
    unsigned int
);
extern Window XCreateSimpleWindow(
    Display* ,
    Window ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    unsigned int ,
    unsigned long ,
    unsigned long
);
extern Window XGetSelectionOwner(
    Display* ,
    Atom
);
extern Window XCreateWindow(
    Display* ,
    Window ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    unsigned int ,
    int ,
    unsigned int ,
    Visual* ,
    unsigned long ,
    XSetWindowAttributes*
);
extern Colormap *XListInstalledColormaps(
    Display* ,
    Window ,
    int*
);
extern char **XListFonts(
    Display* ,
    const char* ,
    int ,
    int*
);
extern char **XListFontsWithInfo(
    Display* ,
    const char* ,
    int ,
    int* ,
    XFontStruct**
);
extern char **XGetFontPath(
    Display* ,
    int*
);
extern char **XListExtensions(
    Display* ,
    int*
);
extern Atom *XListProperties(
    Display* ,
    Window ,
    int*
);
extern XHostAddress *XListHosts(
    Display* ,
    int* ,
    int*
);
__attribute__((deprecated))
extern KeySym XKeycodeToKeysym(
    Display* ,



    KeyCode ,

    int
);
extern KeySym XLookupKeysym(
    XKeyEvent* ,
    int
);
extern KeySym *XGetKeyboardMapping(
    Display* ,



    KeyCode ,

    int ,
    int*
);
extern KeySym XStringToKeysym(
    const char*
);
extern long XMaxRequestSize(
    Display*
);
extern long XExtendedMaxRequestSize(
    Display*
);
extern char *XResourceManagerString(
    Display*
);
extern char *XScreenResourceString(
 Screen*
);
extern unsigned long XDisplayMotionBufferSize(
    Display*
);
extern VisualID XVisualIDFromVisual(
    Visual*
);



extern int XInitThreads(
    void
);

extern void XLockDisplay(
    Display*
);

extern void XUnlockDisplay(
    Display*
);



extern XExtCodes *XInitExtension(
    Display* ,
    const char*
);

extern XExtCodes *XAddExtension(
    Display*
);
extern XExtData *XFindOnExtensionList(
    XExtData** ,
    int
);
extern XExtData **XEHeadOfExtensionList(
    XEDataObject
);


extern Window XRootWindow(
    Display* ,
    int
);
extern Window XDefaultRootWindow(
    Display*
);
extern Window XRootWindowOfScreen(
    Screen*
);
extern Visual *XDefaultVisual(
    Display* ,
    int
);
extern Visual *XDefaultVisualOfScreen(
    Screen*
);
extern GC XDefaultGC(
    Display* ,
    int
);
extern GC XDefaultGCOfScreen(
    Screen*
);
extern unsigned long XBlackPixel(
    Display* ,
    int
);
extern unsigned long XWhitePixel(
    Display* ,
    int
);
extern unsigned long XAllPlanes(
    void
);
extern unsigned long XBlackPixelOfScreen(
    Screen*
);
extern unsigned long XWhitePixelOfScreen(
    Screen*
);
extern unsigned long XNextRequest(
    Display*
);
extern unsigned long XLastKnownRequestProcessed(
    Display*
);
extern char *XServerVendor(
    Display*
);
extern char *XDisplayString(
    Display*
);
extern Colormap XDefaultColormap(
    Display* ,
    int
);
extern Colormap XDefaultColormapOfScreen(
    Screen*
);
extern Display *XDisplayOfScreen(
    Screen*
);
extern Screen *XScreenOfDisplay(
    Display* ,
    int
);
extern Screen *XDefaultScreenOfDisplay(
    Display*
);
extern long XEventMaskOfScreen(
    Screen*
);

extern int XScreenNumberOfScreen(
    Screen*
);

typedef int (*XErrorHandler) (
    Display* ,
    XErrorEvent*
);

extern XErrorHandler XSetErrorHandler (
    XErrorHandler
);


typedef int (*XIOErrorHandler) (
    Display*
);

extern XIOErrorHandler XSetIOErrorHandler (
    XIOErrorHandler
);


extern XPixmapFormatValues *XListPixmapFormats(
    Display* ,
    int*
);
extern int *XListDepths(
    Display* ,
    int ,
    int*
);



extern int XReconfigureWMWindow(
    Display* ,
    Window ,
    int ,
    unsigned int ,
    XWindowChanges*
);

extern int XGetWMProtocols(
    Display* ,
    Window ,
    Atom** ,
    int*
);
extern int XSetWMProtocols(
    Display* ,
    Window ,
    Atom* ,
    int
);
extern int XIconifyWindow(
    Display* ,
    Window ,
    int
);
extern int XWithdrawWindow(
    Display* ,
    Window ,
    int
);
extern int XGetCommand(
    Display* ,
    Window ,
    char*** ,
    int*
);
extern int XGetWMColormapWindows(
    Display* ,
    Window ,
    Window** ,
    int*
);
extern int XSetWMColormapWindows(
    Display* ,
    Window ,
    Window* ,
    int
);
extern void XFreeStringList(
    char**
);
extern int XSetTransientForHint(
    Display* ,
    Window ,
    Window
);



extern int XActivateScreenSaver(
    Display*
);

extern int XAddHost(
    Display* ,
    XHostAddress*
);

extern int XAddHosts(
    Display* ,
    XHostAddress* ,
    int
);

extern int XAddToExtensionList(
    struct _XExtData** ,
    XExtData*
);

extern int XAddToSaveSet(
    Display* ,
    Window
);

extern int XAllocColor(
    Display* ,
    Colormap ,
    XColor*
);

extern int XAllocColorCells(
    Display* ,
    Colormap ,
    int ,
    unsigned long* ,
    unsigned int ,
    unsigned long* ,
    unsigned int
);

extern int XAllocColorPlanes(
    Display* ,
    Colormap ,
    int ,
    unsigned long* ,
    int ,
    int ,
    int ,
    int ,
    unsigned long* ,
    unsigned long* ,
    unsigned long*
);

extern int XAllocNamedColor(
    Display* ,
    Colormap ,
    const char* ,
    XColor* ,
    XColor*
);

extern int XAllowEvents(
    Display* ,
    int ,
    Time
);

extern int XAutoRepeatOff(
    Display*
);

extern int XAutoRepeatOn(
    Display*
);

extern int XBell(
    Display* ,
    int
);

extern int XBitmapBitOrder(
    Display*
);

extern int XBitmapPad(
    Display*
);

extern int XBitmapUnit(
    Display*
);

extern int XCellsOfScreen(
    Screen*
);

extern int XChangeActivePointerGrab(
    Display* ,
    unsigned int ,
    Cursor ,
    Time
);

extern int XChangeGC(
    Display* ,
    GC ,
    unsigned long ,
    XGCValues*
);

extern int XChangeKeyboardControl(
    Display* ,
    unsigned long ,
    XKeyboardControl*
);

extern int XChangeKeyboardMapping(
    Display* ,
    int ,
    int ,
    KeySym* ,
    int
);

extern int XChangePointerControl(
    Display* ,
    int ,
    int ,
    int ,
    int ,
    int
);

extern int XChangeProperty(
    Display* ,
    Window ,
    Atom ,
    Atom ,
    int ,
    int ,
    const unsigned char* ,
    int
);

extern int XChangeSaveSet(
    Display* ,
    Window ,
    int
);

extern int XChangeWindowAttributes(
    Display* ,
    Window ,
    unsigned long ,
    XSetWindowAttributes*
);

extern int XCheckIfEvent(
    Display* ,
    XEvent* ,
    int (*) (
        Display* ,
               XEvent* ,
               XPointer
             ) ,
    XPointer
);

extern int XCheckMaskEvent(
    Display* ,
    long ,
    XEvent*
);

extern int XCheckTypedEvent(
    Display* ,
    int ,
    XEvent*
);

extern int XCheckTypedWindowEvent(
    Display* ,
    Window ,
    int ,
    XEvent*
);

extern int XCheckWindowEvent(
    Display* ,
    Window ,
    long ,
    XEvent*
);

extern int XCirculateSubwindows(
    Display* ,
    Window ,
    int
);

extern int XCirculateSubwindowsDown(
    Display* ,
    Window
);

extern int XCirculateSubwindowsUp(
    Display* ,
    Window
);

extern int XClearArea(
    Display* ,
    Window ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    int
);

extern int XClearWindow(
    Display* ,
    Window
);

extern int XCloseDisplay(
    Display*
);

extern int XConfigureWindow(
    Display* ,
    Window ,
    unsigned int ,
    XWindowChanges*
);

extern int XConnectionNumber(
    Display*
);

extern int XConvertSelection(
    Display* ,
    Atom ,
    Atom ,
    Atom ,
    Window ,
    Time
);

extern int XCopyArea(
    Display* ,
    Drawable ,
    Drawable ,
    GC ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    int ,
    int
);

extern int XCopyGC(
    Display* ,
    GC ,
    unsigned long ,
    GC
);

extern int XCopyPlane(
    Display* ,
    Drawable ,
    Drawable ,
    GC ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    int ,
    int ,
    unsigned long
);

extern int XDefaultDepth(
    Display* ,
    int
);

extern int XDefaultDepthOfScreen(
    Screen*
);

extern int XDefaultScreen(
    Display*
);

extern int XDefineCursor(
    Display* ,
    Window ,
    Cursor
);

extern int XDeleteProperty(
    Display* ,
    Window ,
    Atom
);

extern int XDestroyWindow(
    Display* ,
    Window
);

extern int XDestroySubwindows(
    Display* ,
    Window
);

extern int XDoesBackingStore(
    Screen*
);

extern int XDoesSaveUnders(
    Screen*
);

extern int XDisableAccessControl(
    Display*
);


extern int XDisplayCells(
    Display* ,
    int
);

extern int XDisplayHeight(
    Display* ,
    int
);

extern int XDisplayHeightMM(
    Display* ,
    int
);

extern int XDisplayKeycodes(
    Display* ,
    int* ,
    int*
);

extern int XDisplayPlanes(
    Display* ,
    int
);

extern int XDisplayWidth(
    Display* ,
    int
);

extern int XDisplayWidthMM(
    Display* ,
    int
);

extern int XDrawArc(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    int ,
    int
);

extern int XDrawArcs(
    Display* ,
    Drawable ,
    GC ,
    XArc* ,
    int
);

extern int XDrawImageString(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    const char* ,
    int
);

extern int XDrawImageString16(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    const XChar2b* ,
    int
);

extern int XDrawLine(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    int ,
    int
);

extern int XDrawLines(
    Display* ,
    Drawable ,
    GC ,
    XPoint* ,
    int ,
    int
);

extern int XDrawPoint(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int
);

extern int XDrawPoints(
    Display* ,
    Drawable ,
    GC ,
    XPoint* ,
    int ,
    int
);

extern int XDrawRectangle(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    unsigned int ,
    unsigned int
);

extern int XDrawRectangles(
    Display* ,
    Drawable ,
    GC ,
    XRectangle* ,
    int
);

extern int XDrawSegments(
    Display* ,
    Drawable ,
    GC ,
    XSegment* ,
    int
);

extern int XDrawString(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    const char* ,
    int
);

extern int XDrawString16(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    const XChar2b* ,
    int
);

extern int XDrawText(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    XTextItem* ,
    int
);

extern int XDrawText16(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    XTextItem16* ,
    int
);

extern int XEnableAccessControl(
    Display*
);

extern int XEventsQueued(
    Display* ,
    int
);

extern int XFetchName(
    Display* ,
    Window ,
    char**
);

extern int XFillArc(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    int ,
    int
);

extern int XFillArcs(
    Display* ,
    Drawable ,
    GC ,
    XArc* ,
    int
);

extern int XFillPolygon(
    Display* ,
    Drawable ,
    GC ,
    XPoint* ,
    int ,
    int ,
    int
);

extern int XFillRectangle(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    unsigned int ,
    unsigned int
);

extern int XFillRectangles(
    Display* ,
    Drawable ,
    GC ,
    XRectangle* ,
    int
);

extern int XFlush(
    Display*
);

extern int XForceScreenSaver(
    Display* ,
    int
);

extern int XFree(
    void*
);

extern int XFreeColormap(
    Display* ,
    Colormap
);

extern int XFreeColors(
    Display* ,
    Colormap ,
    unsigned long* ,
    int ,
    unsigned long
);

extern int XFreeCursor(
    Display* ,
    Cursor
);

extern int XFreeExtensionList(
    char**
);

extern int XFreeFont(
    Display* ,
    XFontStruct*
);

extern int XFreeFontInfo(
    char** ,
    XFontStruct* ,
    int
);

extern int XFreeFontNames(
    char**
);

extern int XFreeFontPath(
    char**
);

extern int XFreeGC(
    Display* ,
    GC
);

extern int XFreeModifiermap(
    XModifierKeymap*
);

extern int XFreePixmap(
    Display* ,
    Pixmap
);

extern int XGeometry(
    Display* ,
    int ,
    const char* ,
    const char* ,
    unsigned int ,
    unsigned int ,
    unsigned int ,
    int ,
    int ,
    int* ,
    int* ,
    int* ,
    int*
);

extern int XGetErrorDatabaseText(
    Display* ,
    const char* ,
    const char* ,
    const char* ,
    char* ,
    int
);

extern int XGetErrorText(
    Display* ,
    int ,
    char* ,
    int
);

extern int XGetFontProperty(
    XFontStruct* ,
    Atom ,
    unsigned long*
);

extern int XGetGCValues(
    Display* ,
    GC ,
    unsigned long ,
    XGCValues*
);

extern int XGetGeometry(
    Display* ,
    Drawable ,
    Window* ,
    int* ,
    int* ,
    unsigned int* ,
    unsigned int* ,
    unsigned int* ,
    unsigned int*
);

extern int XGetIconName(
    Display* ,
    Window ,
    char**
);

extern int XGetInputFocus(
    Display* ,
    Window* ,
    int*
);

extern int XGetKeyboardControl(
    Display* ,
    XKeyboardState*
);

extern int XGetPointerControl(
    Display* ,
    int* ,
    int* ,
    int*
);

extern int XGetPointerMapping(
    Display* ,
    unsigned char* ,
    int
);

extern int XGetScreenSaver(
    Display* ,
    int* ,
    int* ,
    int* ,
    int*
);

extern int XGetTransientForHint(
    Display* ,
    Window ,
    Window*
);

extern int XGetWindowProperty(
    Display* ,
    Window ,
    Atom ,
    long ,
    long ,
    int ,
    Atom ,
    Atom* ,
    int* ,
    unsigned long* ,
    unsigned long* ,
    unsigned char**
);

extern int XGetWindowAttributes(
    Display* ,
    Window ,
    XWindowAttributes*
);

extern int XGrabButton(
    Display* ,
    unsigned int ,
    unsigned int ,
    Window ,
    int ,
    unsigned int ,
    int ,
    int ,
    Window ,
    Cursor
);

extern int XGrabKey(
    Display* ,
    int ,
    unsigned int ,
    Window ,
    int ,
    int ,
    int
);

extern int XGrabKeyboard(
    Display* ,
    Window ,
    int ,
    int ,
    int ,
    Time
);

extern int XGrabPointer(
    Display* ,
    Window ,
    int ,
    unsigned int ,
    int ,
    int ,
    Window ,
    Cursor ,
    Time
);

extern int XGrabServer(
    Display*
);

extern int XHeightMMOfScreen(
    Screen*
);

extern int XHeightOfScreen(
    Screen*
);

extern int XIfEvent(
    Display* ,
    XEvent* ,
    int (*) (
        Display* ,
               XEvent* ,
               XPointer
             ) ,
    XPointer
);

extern int XImageByteOrder(
    Display*
);

extern int XInstallColormap(
    Display* ,
    Colormap
);

extern KeyCode XKeysymToKeycode(
    Display* ,
    KeySym
);

extern int XKillClient(
    Display* ,
    XID
);

extern int XLookupColor(
    Display* ,
    Colormap ,
    const char* ,
    XColor* ,
    XColor*
);

extern int XLowerWindow(
    Display* ,
    Window
);

extern int XMapRaised(
    Display* ,
    Window
);

extern int XMapSubwindows(
    Display* ,
    Window
);

extern int XMapWindow(
    Display* ,
    Window
);

extern int XMaskEvent(
    Display* ,
    long ,
    XEvent*
);

extern int XMaxCmapsOfScreen(
    Screen*
);

extern int XMinCmapsOfScreen(
    Screen*
);

extern int XMoveResizeWindow(
    Display* ,
    Window ,
    int ,
    int ,
    unsigned int ,
    unsigned int
);

extern int XMoveWindow(
    Display* ,
    Window ,
    int ,
    int
);

extern int XNextEvent(
    Display* ,
    XEvent*
);

extern int XNoOp(
    Display*
);

extern int XParseColor(
    Display* ,
    Colormap ,
    const char* ,
    XColor*
);

extern int XParseGeometry(
    const char* ,
    int* ,
    int* ,
    unsigned int* ,
    unsigned int*
);

extern int XPeekEvent(
    Display* ,
    XEvent*
);

extern int XPeekIfEvent(
    Display* ,
    XEvent* ,
    int (*) (
        Display* ,
               XEvent* ,
               XPointer
             ) ,
    XPointer
);

extern int XPending(
    Display*
);

extern int XPlanesOfScreen(
    Screen*
);

extern int XProtocolRevision(
    Display*
);

extern int XProtocolVersion(
    Display*
);


extern int XPutBackEvent(
    Display* ,
    XEvent*
);

extern int XPutImage(
    Display* ,
    Drawable ,
    GC ,
    XImage* ,
    int ,
    int ,
    int ,
    int ,
    unsigned int ,
    unsigned int
);

extern int XQLength(
    Display*
);

extern int XQueryBestCursor(
    Display* ,
    Drawable ,
    unsigned int ,
    unsigned int ,
    unsigned int* ,
    unsigned int*
);

extern int XQueryBestSize(
    Display* ,
    int ,
    Drawable ,
    unsigned int ,
    unsigned int ,
    unsigned int* ,
    unsigned int*
);

extern int XQueryBestStipple(
    Display* ,
    Drawable ,
    unsigned int ,
    unsigned int ,
    unsigned int* ,
    unsigned int*
);

extern int XQueryBestTile(
    Display* ,
    Drawable ,
    unsigned int ,
    unsigned int ,
    unsigned int* ,
    unsigned int*
);

extern int XQueryColor(
    Display* ,
    Colormap ,
    XColor*
);

extern int XQueryColors(
    Display* ,
    Colormap ,
    XColor* ,
    int
);

extern int XQueryExtension(
    Display* ,
    const char* ,
    int* ,
    int* ,
    int*
);

extern int XQueryKeymap(
    Display* ,
    char [32]
);

extern int XQueryPointer(
    Display* ,
    Window ,
    Window* ,
    Window* ,
    int* ,
    int* ,
    int* ,
    int* ,
    unsigned int*
);

extern int XQueryTextExtents(
    Display* ,
    XID ,
    const char* ,
    int ,
    int* ,
    int* ,
    int* ,
    XCharStruct*
);

extern int XQueryTextExtents16(
    Display* ,
    XID ,
    const XChar2b* ,
    int ,
    int* ,
    int* ,
    int* ,
    XCharStruct*
);

extern int XQueryTree(
    Display* ,
    Window ,
    Window* ,
    Window* ,
    Window** ,
    unsigned int*
);

extern int XRaiseWindow(
    Display* ,
    Window
);

extern int XReadBitmapFile(
    Display* ,
    Drawable ,
    const char* ,
    unsigned int* ,
    unsigned int* ,
    Pixmap* ,
    int* ,
    int*
);

extern int XReadBitmapFileData(
    const char* ,
    unsigned int* ,
    unsigned int* ,
    unsigned char** ,
    int* ,
    int*
);

extern int XRebindKeysym(
    Display* ,
    KeySym ,
    KeySym* ,
    int ,
    const unsigned char* ,
    int
);

extern int XRecolorCursor(
    Display* ,
    Cursor ,
    XColor* ,
    XColor*
);

extern int XRefreshKeyboardMapping(
    XMappingEvent*
);

extern int XRemoveFromSaveSet(
    Display* ,
    Window
);

extern int XRemoveHost(
    Display* ,
    XHostAddress*
);

extern int XRemoveHosts(
    Display* ,
    XHostAddress* ,
    int
);

extern int XReparentWindow(
    Display* ,
    Window ,
    Window ,
    int ,
    int
);

extern int XResetScreenSaver(
    Display*
);

extern int XResizeWindow(
    Display* ,
    Window ,
    unsigned int ,
    unsigned int
);

extern int XRestackWindows(
    Display* ,
    Window* ,
    int
);

extern int XRotateBuffers(
    Display* ,
    int
);

extern int XRotateWindowProperties(
    Display* ,
    Window ,
    Atom* ,
    int ,
    int
);

extern int XScreenCount(
    Display*
);

extern int XSelectInput(
    Display* ,
    Window ,
    long
);

extern int XSendEvent(
    Display* ,
    Window ,
    int ,
    long ,
    XEvent*
);

extern int XSetAccessControl(
    Display* ,
    int
);

extern int XSetArcMode(
    Display* ,
    GC ,
    int
);

extern int XSetBackground(
    Display* ,
    GC ,
    unsigned long
);

extern int XSetClipMask(
    Display* ,
    GC ,
    Pixmap
);

extern int XSetClipOrigin(
    Display* ,
    GC ,
    int ,
    int
);

extern int XSetClipRectangles(
    Display* ,
    GC ,
    int ,
    int ,
    XRectangle* ,
    int ,
    int
);

extern int XSetCloseDownMode(
    Display* ,
    int
);

extern int XSetCommand(
    Display* ,
    Window ,
    char** ,
    int
);

extern int XSetDashes(
    Display* ,
    GC ,
    int ,
    const char* ,
    int
);

extern int XSetFillRule(
    Display* ,
    GC ,
    int
);

extern int XSetFillStyle(
    Display* ,
    GC ,
    int
);

extern int XSetFont(
    Display* ,
    GC ,
    Font
);

extern int XSetFontPath(
    Display* ,
    char** ,
    int
);

extern int XSetForeground(
    Display* ,
    GC ,
    unsigned long
);

extern int XSetFunction(
    Display* ,
    GC ,
    int
);

extern int XSetGraphicsExposures(
    Display* ,
    GC ,
    int
);

extern int XSetIconName(
    Display* ,
    Window ,
    const char*
);

extern int XSetInputFocus(
    Display* ,
    Window ,
    int ,
    Time
);

extern int XSetLineAttributes(
    Display* ,
    GC ,
    unsigned int ,
    int ,
    int ,
    int
);

extern int XSetModifierMapping(
    Display* ,
    XModifierKeymap*
);

extern int XSetPlaneMask(
    Display* ,
    GC ,
    unsigned long
);

extern int XSetPointerMapping(
    Display* ,
    const unsigned char* ,
    int
);

extern int XSetScreenSaver(
    Display* ,
    int ,
    int ,
    int ,
    int
);

extern int XSetSelectionOwner(
    Display* ,
    Atom ,
    Window ,
    Time
);

extern int XSetState(
    Display* ,
    GC ,
    unsigned long ,
    unsigned long ,
    int ,
    unsigned long
);

extern int XSetStipple(
    Display* ,
    GC ,
    Pixmap
);

extern int XSetSubwindowMode(
    Display* ,
    GC ,
    int
);

extern int XSetTSOrigin(
    Display* ,
    GC ,
    int ,
    int
);

extern int XSetTile(
    Display* ,
    GC ,
    Pixmap
);

extern int XSetWindowBackground(
    Display* ,
    Window ,
    unsigned long
);

extern int XSetWindowBackgroundPixmap(
    Display* ,
    Window ,
    Pixmap
);

extern int XSetWindowBorder(
    Display* ,
    Window ,
    unsigned long
);

extern int XSetWindowBorderPixmap(
    Display* ,
    Window ,
    Pixmap
);

extern int XSetWindowBorderWidth(
    Display* ,
    Window ,
    unsigned int
);

extern int XSetWindowColormap(
    Display* ,
    Window ,
    Colormap
);

extern int XStoreBuffer(
    Display* ,
    const char* ,
    int ,
    int
);

extern int XStoreBytes(
    Display* ,
    const char* ,
    int
);

extern int XStoreColor(
    Display* ,
    Colormap ,
    XColor*
);

extern int XStoreColors(
    Display* ,
    Colormap ,
    XColor* ,
    int
);

extern int XStoreName(
    Display* ,
    Window ,
    const char*
);

extern int XStoreNamedColor(
    Display* ,
    Colormap ,
    const char* ,
    unsigned long ,
    int
);

extern int XSync(
    Display* ,
    int
);

extern int XTextExtents(
    XFontStruct* ,
    const char* ,
    int ,
    int* ,
    int* ,
    int* ,
    XCharStruct*
);

extern int XTextExtents16(
    XFontStruct* ,
    const XChar2b* ,
    int ,
    int* ,
    int* ,
    int* ,
    XCharStruct*
);

extern int XTextWidth(
    XFontStruct* ,
    const char* ,
    int
);

extern int XTextWidth16(
    XFontStruct* ,
    const XChar2b* ,
    int
);

extern int XTranslateCoordinates(
    Display* ,
    Window ,
    Window ,
    int ,
    int ,
    int* ,
    int* ,
    Window*
);

extern int XUndefineCursor(
    Display* ,
    Window
);

extern int XUngrabButton(
    Display* ,
    unsigned int ,
    unsigned int ,
    Window
);

extern int XUngrabKey(
    Display* ,
    int ,
    unsigned int ,
    Window
);

extern int XUngrabKeyboard(
    Display* ,
    Time
);

extern int XUngrabPointer(
    Display* ,
    Time
);

extern int XUngrabServer(
    Display*
);

extern int XUninstallColormap(
    Display* ,
    Colormap
);

extern int XUnloadFont(
    Display* ,
    Font
);

extern int XUnmapSubwindows(
    Display* ,
    Window
);

extern int XUnmapWindow(
    Display* ,
    Window
);

extern int XVendorRelease(
    Display*
);

extern int XWarpPointer(
    Display* ,
    Window ,
    Window ,
    int ,
    int ,
    unsigned int ,
    unsigned int ,
    int ,
    int
);

extern int XWidthMMOfScreen(
    Screen*
);

extern int XWidthOfScreen(
    Screen*
);

extern int XWindowEvent(
    Display* ,
    Window ,
    long ,
    XEvent*
);

extern int XWriteBitmapFile(
    Display* ,
    const char* ,
    Pixmap ,
    unsigned int ,
    unsigned int ,
    int ,
    int
);

extern int XSupportsLocale (void);

extern char *XSetLocaleModifiers(
    const char*
);

extern XOM XOpenOM(
    Display* ,
    struct _XrmHashBucketRec* ,
    const char* ,
    const char*
);

extern int XCloseOM(
    XOM
);

extern char *XSetOMValues(
    XOM ,
    ...
) __attribute__ ((__sentinel__(0)));

extern char *XGetOMValues(
    XOM ,
    ...
) __attribute__ ((__sentinel__(0)));

extern Display *XDisplayOfOM(
    XOM
);

extern char *XLocaleOfOM(
    XOM
);

extern XOC XCreateOC(
    XOM ,
    ...
) __attribute__ ((__sentinel__(0)));

extern void XDestroyOC(
    XOC
);

extern XOM XOMOfOC(
    XOC
);

extern char *XSetOCValues(
    XOC ,
    ...
) __attribute__ ((__sentinel__(0)));

extern char *XGetOCValues(
    XOC ,
    ...
) __attribute__ ((__sentinel__(0)));

extern XFontSet XCreateFontSet(
    Display* ,
    const char* ,
    char*** ,
    int* ,
    char**
);

extern void XFreeFontSet(
    Display* ,
    XFontSet
);

extern int XFontsOfFontSet(
    XFontSet ,
    XFontStruct*** ,
    char***
);

extern char *XBaseFontNameListOfFontSet(
    XFontSet
);

extern char *XLocaleOfFontSet(
    XFontSet
);

extern int XContextDependentDrawing(
    XFontSet
);

extern int XDirectionalDependentDrawing(
    XFontSet
);

extern int XContextualDrawing(
    XFontSet
);

extern XFontSetExtents *XExtentsOfFontSet(
    XFontSet
);

extern int XmbTextEscapement(
    XFontSet ,
    const char* ,
    int
);

extern int XwcTextEscapement(
    XFontSet ,
    const wchar_t* ,
    int
);

extern int Xutf8TextEscapement(
    XFontSet ,
    const char* ,
    int
);

extern int XmbTextExtents(
    XFontSet ,
    const char* ,
    int ,
    XRectangle* ,
    XRectangle*
);

extern int XwcTextExtents(
    XFontSet ,
    const wchar_t* ,
    int ,
    XRectangle* ,
    XRectangle*
);

extern int Xutf8TextExtents(
    XFontSet ,
    const char* ,
    int ,
    XRectangle* ,
    XRectangle*
);

extern int XmbTextPerCharExtents(
    XFontSet ,
    const char* ,
    int ,
    XRectangle* ,
    XRectangle* ,
    int ,
    int* ,
    XRectangle* ,
    XRectangle*
);

extern int XwcTextPerCharExtents(
    XFontSet ,
    const wchar_t* ,
    int ,
    XRectangle* ,
    XRectangle* ,
    int ,
    int* ,
    XRectangle* ,
    XRectangle*
);

extern int Xutf8TextPerCharExtents(
    XFontSet ,
    const char* ,
    int ,
    XRectangle* ,
    XRectangle* ,
    int ,
    int* ,
    XRectangle* ,
    XRectangle*
);

extern void XmbDrawText(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    XmbTextItem* ,
    int
);

extern void XwcDrawText(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    XwcTextItem* ,
    int
);

extern void Xutf8DrawText(
    Display* ,
    Drawable ,
    GC ,
    int ,
    int ,
    XmbTextItem* ,
    int
);

extern void XmbDrawString(
    Display* ,
    Drawable ,
    XFontSet ,
    GC ,
    int ,
    int ,
    const char* ,
    int
);

extern void XwcDrawString(
    Display* ,
    Drawable ,
    XFontSet ,
    GC ,
    int ,
    int ,
    const wchar_t* ,
    int
);

extern void Xutf8DrawString(
    Display* ,
    Drawable ,
    XFontSet ,
    GC ,
    int ,
    int ,
    const char* ,
    int
);

extern void XmbDrawImageString(
    Display* ,
    Drawable ,
    XFontSet ,
    GC ,
    int ,
    int ,
    const char* ,
    int
);

extern void XwcDrawImageString(
    Display* ,
    Drawable ,
    XFontSet ,
    GC ,
    int ,
    int ,
    const wchar_t* ,
    int
);

extern void Xutf8DrawImageString(
    Display* ,
    Drawable ,
    XFontSet ,
    GC ,
    int ,
    int ,
    const char* ,
    int
);

extern XIM XOpenIM(
    Display* ,
    struct _XrmHashBucketRec* ,
    char* ,
    char*
);

extern int XCloseIM(
    XIM
);

extern char *XGetIMValues(
    XIM , ...
) __attribute__ ((__sentinel__(0)));

extern char *XSetIMValues(
    XIM , ...
) __attribute__ ((__sentinel__(0)));

extern Display *XDisplayOfIM(
    XIM
);

extern char *XLocaleOfIM(
    XIM
);

extern XIC XCreateIC(
    XIM , ...
) __attribute__ ((__sentinel__(0)));

extern void XDestroyIC(
    XIC
);

extern void XSetICFocus(
    XIC
);

extern void XUnsetICFocus(
    XIC
);

extern wchar_t *XwcResetIC(
    XIC
);

extern char *XmbResetIC(
    XIC
);

extern char *Xutf8ResetIC(
    XIC
);

extern char *XSetICValues(
    XIC , ...
) __attribute__ ((__sentinel__(0)));

extern char *XGetICValues(
    XIC , ...
) __attribute__ ((__sentinel__(0)));

extern XIM XIMOfIC(
    XIC
);

extern int XFilterEvent(
    XEvent* ,
    Window
);

extern int XmbLookupString(
    XIC ,
    XKeyPressedEvent* ,
    char* ,
    int ,
    KeySym* ,
    int*
);

extern int XwcLookupString(
    XIC ,
    XKeyPressedEvent* ,
    wchar_t* ,
    int ,
    KeySym* ,
    int*
);

extern int Xutf8LookupString(
    XIC ,
    XKeyPressedEvent* ,
    char* ,
    int ,
    KeySym* ,
    int*
);

extern XVaNestedList XVaCreateNestedList(
    int , ...
) __attribute__ ((__sentinel__(0)));



extern int XRegisterIMInstantiateCallback(
    Display* ,
    struct _XrmHashBucketRec* ,
    char* ,
    char* ,
    XIDProc ,
    XPointer
);

extern int XUnregisterIMInstantiateCallback(
    Display* ,
    struct _XrmHashBucketRec* ,
    char* ,
    char* ,
    XIDProc ,
    XPointer
);

typedef void (*XConnectionWatchProc)(
    Display* ,
    XPointer ,
    int ,
    int ,
    XPointer*
);


extern int XInternalConnectionNumbers(
    Display* ,
    int** ,
    int*
);

extern void XProcessInternalConnection(
    Display* ,
    int
);

extern int XAddConnectionWatch(
    Display* ,
    XConnectionWatchProc ,
    XPointer
);

extern void XRemoveConnectionWatch(
    Display* ,
    XConnectionWatchProc ,
    XPointer
);

extern void XSetAuthorization(
    char * ,
    int ,
    char * ,
    int
);

extern int _Xmbtowc(
    wchar_t * ,
    char * ,
    int
);

extern int _Xwctomb(
    char * ,
    wchar_t
);

extern int XGetEventData(
    Display* ,
    XGenericEventCookie*
);

extern void XFreeEventData(
    Display* ,
    XGenericEventCookie*
);


#pragma clang diagnostic pop
# 30 "./dispextern.h" 2
# 53 "./dispextern.h"
# 1 "../lib/c-strcase.h" 1
# 21 "../lib/c-strcase.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 22 "../lib/c-strcase.h" 2
# 42 "../lib/c-strcase.h"
extern int c_strcasecmp (const char *s1, const char *s2) __attribute__ ((__pure__));




extern int c_strncasecmp (const char *s1, const char *s2, size_t n)
  __attribute__ ((__pure__));
# 54 "./dispextern.h" 2
inline int
xstrcasecmp (char const *a, char const *b)
{
  return c_strcasecmp (a, b);
}



# 1 "/usr/include/X11/Xresource.h" 1 3 4
# 74 "/usr/include/X11/Xresource.h" 3 4
extern char *Xpermalloc(
    unsigned int
);







typedef int XrmQuark, *XrmQuarkList;


typedef char *XrmString;



extern XrmQuark XrmStringToQuark(
    const char*
);

extern XrmQuark XrmPermStringToQuark(
    const char*
);


extern XrmString XrmQuarkToString(
    XrmQuark
);

extern XrmQuark XrmUniqueQuark(
    void
);
# 117 "/usr/include/X11/Xresource.h" 3 4
typedef enum {XrmBindTightly, XrmBindLoosely} XrmBinding, *XrmBindingList;

extern void XrmStringToQuarkList(
    const char* ,
    XrmQuarkList
);

extern void XrmStringToBindingQuarkList(
    const char* ,
    XrmBindingList ,
    XrmQuarkList
);







typedef XrmQuark XrmName;
typedef XrmQuarkList XrmNameList;




typedef XrmQuark XrmClass;
typedef XrmQuarkList XrmClassList;
# 156 "/usr/include/X11/Xresource.h" 3 4
typedef XrmQuark XrmRepresentation;



typedef struct {
    unsigned int size;
    XPointer addr;
} XrmValue, *XrmValuePtr;
# 172 "/usr/include/X11/Xresource.h" 3 4
typedef struct _XrmHashBucketRec *XrmHashBucket;
typedef XrmHashBucket *XrmHashTable;
typedef XrmHashTable XrmSearchList[];
typedef struct _XrmHashBucketRec *XrmDatabase;


extern void XrmDestroyDatabase(
    XrmDatabase
);

extern void XrmQPutResource(
    XrmDatabase* ,
    XrmBindingList ,
    XrmQuarkList ,
    XrmRepresentation ,
    XrmValue*
);

extern void XrmPutResource(
    XrmDatabase* ,
    const char* ,
    const char* ,
    XrmValue*
);

extern void XrmQPutStringResource(
    XrmDatabase* ,
    XrmBindingList ,
    XrmQuarkList ,
    const char*
);

extern void XrmPutStringResource(
    XrmDatabase* ,
    const char* ,
    const char*
);

extern void XrmPutLineResource(
    XrmDatabase* ,
    const char*
);

extern int XrmQGetResource(
    XrmDatabase ,
    XrmNameList ,
    XrmClassList ,
    XrmRepresentation* ,
    XrmValue*
);

extern int XrmGetResource(
    XrmDatabase ,
    const char* ,
    const char* ,
    char** ,
    XrmValue*
);

extern int XrmQGetSearchList(
    XrmDatabase ,
    XrmNameList ,
    XrmClassList ,
    XrmSearchList ,
    int
);

extern int XrmQGetSearchResource(
    XrmSearchList ,
    XrmName ,
    XrmClass ,
    XrmRepresentation* ,
    XrmValue*
);
# 255 "/usr/include/X11/Xresource.h" 3 4
extern void XrmSetDatabase(
    Display* ,
    XrmDatabase
);

extern XrmDatabase XrmGetDatabase(
    Display*
);



extern XrmDatabase XrmGetFileDatabase(
    const char*
);

extern int XrmCombineFileDatabase(
    const char* ,
    XrmDatabase* ,
    int
);

extern XrmDatabase XrmGetStringDatabase(
    const char*
);

extern void XrmPutFileDatabase(
    XrmDatabase ,
    const char*
);

extern void XrmMergeDatabases(
    XrmDatabase ,
    XrmDatabase*
);

extern void XrmCombineDatabase(
    XrmDatabase ,
    XrmDatabase* ,
    int
);




extern int XrmEnumerateDatabase(
    XrmDatabase ,
    XrmNameList ,
    XrmClassList ,
    int ,
    int (*)(
      XrmDatabase* ,
      XrmBindingList ,
      XrmQuarkList ,
      XrmRepresentation* ,
      XrmValue* ,
      XPointer
      ) ,
    XPointer
);

extern const char *XrmLocaleOfDatabase(
    XrmDatabase
);
# 326 "/usr/include/X11/Xresource.h" 3 4
typedef enum {
    XrmoptionNoArg,
    XrmoptionIsArg,
    XrmoptionStickyArg,
    XrmoptionSepArg,
    XrmoptionResArg,
    XrmoptionSkipArg,
    XrmoptionSkipLine,
    XrmoptionSkipNArgs

} XrmOptionKind;

typedef struct {
    char *option;
    char *specifier;
    XrmOptionKind argKind;
    XPointer value;
} XrmOptionDescRec, *XrmOptionDescList;


extern void XrmParseCommand(
    XrmDatabase* ,
    XrmOptionDescList ,
    int ,
    const char* ,
    int* ,
    char**
);
# 62 "./dispextern.h" 2
typedef struct x_display_info Display_Info;
typedef XImage * XImagePtr;
typedef XImagePtr XImagePtr_or_DC;
# 84 "./dispextern.h"
# 1 "../lib/time.h" 1
# 21 "../lib/time.h" 3
# 85 "./dispextern.h" 2
# 98 "./dispextern.h"
enum text_cursor_kinds
{
  DEFAULT_CURSOR = -2,
  NO_CURSOR = -1,
  FILLED_BOX_CURSOR,
  HOLLOW_BOX_CURSOR,
  BAR_CURSOR,
  HBAR_CURSOR
};



enum window_part
{
  ON_NOTHING,
  ON_TEXT,
  ON_MODE_LINE,
  ON_VERTICAL_BORDER,
  ON_HEADER_LINE,
  ON_LEFT_FRINGE,
  ON_RIGHT_FRINGE,
  ON_LEFT_MARGIN,
  ON_RIGHT_MARGIN,
  ON_VERTICAL_SCROLL_BAR,
  ON_HORIZONTAL_SCROLL_BAR,
  ON_RIGHT_DIVIDER,
  ON_BOTTOM_DIVIDER
};
# 179 "./dispextern.h"
struct text_pos
{

  ptrdiff_t charpos;


  ptrdiff_t bytepos;
};
# 255 "./dispextern.h"
struct display_pos
{

  struct text_pos pos;





  ptrdiff_t overlay_string_index;



  struct text_pos string_pos;





  int dpvec_index;
};
# 286 "./dispextern.h"
typedef struct {
  int ch;
  int face_id;
} GLYPH;


inline int GLYPH_CHAR (GLYPH glyph) { return glyph.ch; }


inline int GLYPH_FACE (GLYPH glyph) { return glyph.face_id; }
# 304 "./dispextern.h"
inline int
GLYPH_CODE_CHAR (Lisp_Object gc)
{
  return ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
   ? (((((void) (0 && ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((gc) - (Lisp_Cons))))->car) >> INTTYPEBITS)
   : ((gc) >> INTTYPEBITS) & 0x3FFFFF);
}

inline int
GLYPH_CODE_FACE (Lisp_Object gc)
{
  return (((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) ? (((((void) (0 && ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((gc) - (Lisp_Cons))))->u.cdr) >> INTTYPEBITS) : ((gc) >> INTTYPEBITS) >> CHARACTERBITS;
}
# 330 "./dispextern.h"
enum { GLYPH_MODE_LINE_FACE = 1 };




enum glyph_type
{

  CHAR_GLYPH,


  COMPOSITE_GLYPH,


  GLYPHLESS_GLYPH,


  IMAGE_GLYPH,


  STRETCH_GLYPH,


  XWIDGET_GLYPH
};




struct glyph_slice
{
  unsigned x : 16;
  unsigned y : 16;
  unsigned width : 16;
  unsigned height : 16;
};
# 376 "./dispextern.h"
struct glyph
{
# 391 "./dispextern.h"
  ptrdiff_t charpos;






  Lisp_Object object;


  short pixel_width;


  short ascent, descent;



  short voffset;



  unsigned type : 3;




  bool_bf multibyte_p : 1;




  bool_bf left_box_line_p : 1;
  bool_bf right_box_line_p : 1;




  bool_bf overlaps_vertically_p : 1;
# 440 "./dispextern.h"
  bool_bf padding_p : 1;




  bool_bf glyph_not_available_p : 1;


  bool_bf avoid_cursor_p : 1;


  unsigned resolved_level : 7;






  unsigned bidi_type : 3;





  unsigned face_id : 20;





  unsigned font_type : 3;


  union
  {

    struct glyph_slice img;


    struct { int from, to; } cmp;

    struct {
      short upper_xoff, upper_yoff;
      short lower_xoff, lower_yoff;
    } glyphless;
  } slice;


  union
  {

    unsigned ch;


    struct
    {

      bool_bf automatic : 1;

      unsigned id : 31;
    } cmp;


    int img_id;







    struct
    {

      unsigned height : 16;


      unsigned ascent : 16;
    }
    stretch;


    struct
    {

      unsigned method : 2;

      bool_bf for_no_font : 1;

      unsigned len : 4;

      unsigned ch : 25;
    } glyphless;


    unsigned val;
  } u;
};
# 646 "./dispextern.h"
struct glyph_pool
{

  struct glyph *glyphs;


  ptrdiff_t nglyphs;


  int nrows, ncolumns;
};
# 690 "./dispextern.h"
struct glyph_matrix
{



  struct glyph_pool *pool;



  struct glyph_row *rows;


  ptrdiff_t rows_allocated;



  int nrows;




  int matrix_x, matrix_y;


  int matrix_w, matrix_h;







  int window_pixel_left, window_pixel_top;
  int window_height, window_width;
  int window_vscroll;



  int left_margin_glyphs, right_margin_glyphs;




  bool_bf no_scrolling_p : 1;



  bool_bf header_line_p : 1;
# 746 "./dispextern.h"
  struct buffer *buffer;



  ptrdiff_t begv, zv;
};
# 773 "./dispextern.h"
enum glyph_row_area
{
  ANY_AREA = -1,
  LEFT_MARGIN_AREA,
  TEXT_AREA,
  RIGHT_MARGIN_AREA,
  LAST_AREA
};
# 810 "./dispextern.h"
struct glyph_row
{
# 826 "./dispextern.h"
  struct glyph *glyphs[1 + LAST_AREA];



  short used[1 + LAST_AREA];



  unsigned hash;







  int x, y;




  int pixel_width;



  int ascent, height;




  int phys_ascent, phys_height;




  int visible_height;



  int extra_line_spacing;







  struct display_pos start;
# 882 "./dispextern.h"
  struct display_pos end;







  struct text_pos minpos, maxpos;




  int overlay_arrow_bitmap;


  unsigned left_user_fringe_bitmap : 16;


  unsigned right_user_fringe_bitmap : 16;


  unsigned left_fringe_bitmap : 16;


  unsigned right_fringe_bitmap : 16;


  unsigned left_user_fringe_face_id : 20;


  unsigned right_user_fringe_face_id : 20;


  unsigned left_fringe_face_id : 20;


  unsigned right_fringe_face_id : 20;


  signed left_fringe_offset : 8;


  signed right_fringe_offset : 8;



  bool_bf fringe_bitmap_periodic_p : 1;


  bool_bf redraw_fringe_bitmaps_p : 1;





  bool_bf enabled_p : 1;



  bool_bf truncated_on_left_p : 1;
  bool_bf truncated_on_right_p : 1;



  bool_bf continued_p : 1;



  bool_bf displays_text_p : 1;


  bool_bf ends_at_zv_p : 1;




  bool_bf fill_line_p : 1;



  bool_bf indicate_empty_line_p : 1;



  bool_bf contains_overlapping_glyphs_p : 1;




  bool_bf full_width_p : 1;


  bool_bf mode_line_p : 1;


  bool_bf overlapped_p : 1;




  bool_bf ends_in_middle_of_char_p : 1;




  bool_bf starts_in_middle_of_char_p : 1;


  bool_bf overlapping_p : 1;


  bool_bf mouse_face_p : 1;


  bool_bf ends_in_newline_from_string_p : 1;



  bool_bf exact_window_width_line_p : 1;


  bool_bf cursor_in_fringe_p : 1;


  bool_bf ends_in_ellipsis_p : 1;



  bool_bf indicate_bob_p : 1;



  bool_bf indicate_top_line_p : 1;



  bool_bf indicate_eob_p : 1;



  bool_bf indicate_bottom_line_p : 1;



  bool_bf reversed_p : 1;


  int continuation_lines_width;




  XRectangle *clip;

};
# 1212 "./dispextern.h"
extern struct glyph space_glyph;



extern _Bool display_completed;
# 1227 "./dispextern.h"
enum draw_glyphs_face
{
  DRAW_NORMAL_TEXT,
  DRAW_INVERSE_VIDEO,
  DRAW_CURSOR,
  DRAW_MOUSE_FACE,
  DRAW_IMAGE_RAISED,
  DRAW_IMAGE_SUNKEN
};





struct glyph_string
{

  int x;


  int y, ybase;


  int width;


  int background_width;




  int height;




  int left_overhang;




  int right_overhang;


  struct frame *f;


  struct window *w;


  Display *display;
  Window window;



  struct glyph_row *row;


  enum glyph_row_area area;


  XChar2b *char2b;
  int nchars;


  enum draw_glyphs_face hl;


  struct face *face;


  struct font *font;



  struct composition *cmp;


  ptrdiff_t cmp_id;


  int cmp_from, cmp_to;



  bool_bf extends_to_end_of_line_p : 1;


  bool_bf background_filled_p : 1;




  bool_bf font_not_found_p : 1;



  bool_bf stippled_p : 1;
# 1337 "./dispextern.h"
  unsigned for_overlaps : 3;




  bool_bf padding_p : 1;



  GC gc;
# 1356 "./dispextern.h"
  struct glyph *first_glyph;


  struct image *img;


  struct xwidget *xwidget;


  struct glyph_slice slice;




  struct glyph_string *clip_head, *clip_tail;


  XRectangle clip[2];


  int num_clips;

  int underline_position;

  int underline_thickness;

  struct glyph_string *next, *prev;
};
# 1555 "./dispextern.h"
enum lface_attribute_index
{
  LFACE_FAMILY_INDEX = 1,
  LFACE_FOUNDRY_INDEX,
  LFACE_SWIDTH_INDEX,
  LFACE_HEIGHT_INDEX,
  LFACE_WEIGHT_INDEX,
  LFACE_SLANT_INDEX,
  LFACE_UNDERLINE_INDEX,
  LFACE_INVERSE_INDEX,
  LFACE_FOREGROUND_INDEX,
  LFACE_BACKGROUND_INDEX,
  LFACE_STIPPLE_INDEX,
  LFACE_OVERLINE_INDEX,
  LFACE_STRIKE_THROUGH_INDEX,
  LFACE_BOX_INDEX,
  LFACE_FONT_INDEX,
  LFACE_INHERIT_INDEX,
  LFACE_FONTSET_INDEX,
  LFACE_DISTANT_FOREGROUND_INDEX,
  LFACE_VECTOR_SIZE
};




enum face_box_type
{

  FACE_NO_BOX,



  FACE_SIMPLE_BOX,



  FACE_RAISED_BOX,
  FACE_SUNKEN_BOX
};



enum face_underline_type
{
  FACE_UNDER_LINE,
  FACE_UNDER_WAVE
};
# 1611 "./dispextern.h"
struct face
{


  Lisp_Object lface[LFACE_VECTOR_SIZE];



  int id;





  GC gc;



  ptrdiff_t stipple;





  unsigned long foreground;


  unsigned long background;


  unsigned long underline_color;



  unsigned long overline_color;
  unsigned long strike_through_color;
  unsigned long box_color;

  struct font *font;



  int fontset;







  int box_line_width;






  enum face_box_type box : 2;


  enum face_underline_type underline_type : 1;



  bool_bf use_box_color_for_shadows_p : 1;



  bool_bf underline_p : 1;
  bool_bf overline_p : 1;
  bool_bf strike_through_p : 1;




  bool_bf foreground_defaulted_p : 1;
  bool_bf background_defaulted_p : 1;




  bool_bf underline_defaulted_p : 1;




  bool_bf overline_color_defaulted_p : 1;
  bool_bf strike_through_color_defaulted_p : 1;
  bool_bf box_color_defaulted_p : 1;



  bool_bf tty_bold_p : 1;
  bool_bf tty_italic_p : 1;
  bool_bf tty_underline_p : 1;
  bool_bf tty_reverse_p : 1;




  bool_bf colors_copied_bitwise_p : 1;


  bool_bf overstrike : 1;
# 1724 "./dispextern.h"
  unsigned hash;


  struct face *next, *prev;




  struct face *ascii_face;



  void *extra;

};
# 1756 "./dispextern.h"
inline _Bool
face_tty_specified_color (unsigned long color)
{
  return color < ((unsigned long) -3);
}
# 1770 "./dispextern.h"
enum face_id
{
  DEFAULT_FACE_ID,
  MODE_LINE_FACE_ID,
  MODE_LINE_INACTIVE_FACE_ID,
  TOOL_BAR_FACE_ID,
  FRINGE_FACE_ID,
  HEADER_LINE_FACE_ID,
  SCROLL_BAR_FACE_ID,
  BORDER_FACE_ID,
  CURSOR_FACE_ID,
  MOUSE_FACE_ID,
  MENU_FACE_ID,
  VERTICAL_BORDER_FACE_ID,
  WINDOW_DIVIDER_FACE_ID,
  WINDOW_DIVIDER_FIRST_PIXEL_FACE_ID,
  WINDOW_DIVIDER_LAST_PIXEL_FACE_ID,
  BASIC_FACE_ID_SENTINEL
};






struct face_cache
{

  struct face **buckets;


  struct frame *f;


  struct face **faces_by_id;


  ptrdiff_t size;
  int used;



  bool_bf menu_face_changed_p : 1;
};
# 1847 "./dispextern.h"
inline _Bool
GLYPH_CHAR_VALID_P (GLYPH g)
{
  return (((sizeof ((GLYPH_CHAR (g)) + 0)) > (sizeof ((0x3FFFFF) + 0)) ? (sizeof ((GLYPH_CHAR (g)) + 0)) : (sizeof ((0x3FFFFF) + 0))) <= sizeof (unsigned) ? ((GLYPH_CHAR (g)) + (unsigned) 0) <= ((0x3FFFFF) + (unsigned) 0) : ((GLYPH_CHAR (g)) + (uintmax_t) 0) <= ((0x3FFFFF) + (uintmax_t) 0));
}





inline _Bool
GLYPH_CODE_P (Lisp_Object gc)
{
  return ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
   ? ((NATNUMP ((((void) (0 && ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((gc) - (Lisp_Cons))))->car) && (((((void) (0 && ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((gc) - (Lisp_Cons))))->car) >> INTTYPEBITS) <= 0x3FFFFF)
      && RANGED_INTEGERP (0, (((void) (0 && ((((enum Lisp_Type) ((gc) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((gc) - (Lisp_Cons))))->u.cdr, ((1 << 20) - 1)))
   : (RANGED_INTEGERP
      (0, gc,
       (((1 << 20) - 1) < ((EMACS_INT) (! (! ((EMACS_INT) 0 < (EMACS_INT) -1)) ? (EMACS_INT) -1 : ((((EMACS_INT) 1 << (sizeof (EMACS_INT) * 8 - 2)) - 1) * 2 + 1))) >> CHARACTERBITS
        ? ((EMACS_INT) ((1 << 20) - 1) << CHARACTERBITS) | 0x3FFFFF
        : ((EMACS_INT) (! (! ((EMACS_INT) 0 < (EMACS_INT) -1)) ? (EMACS_INT) -1 : ((((EMACS_INT) 1 << (sizeof (EMACS_INT) * 8 - 2)) - 1) * 2 + 1)))))));
}




extern _Bool face_change;
# 1888 "./dispextern.h"
typedef enum {
  UNKNOWN_BT = 0,
  STRONG_L,
  STRONG_R,
  WEAK_EN,
  WEAK_AN,
  WEAK_BN,
  NEUTRAL_B,
  STRONG_AL,
  LRE,
  LRO,
  RLE,
  RLO,
  PDF,
  LRI,
  RLI,
  FSI,
  PDI,
  WEAK_ES,
  WEAK_ET,
  WEAK_CS,
  WEAK_NSM,
  NEUTRAL_S,
  NEUTRAL_WS,
  NEUTRAL_ON
} bidi_type_t;






typedef enum {
  BIDI_BRACKET_NONE = 1,
  BIDI_BRACKET_OPEN,
  BIDI_BRACKET_CLOSE
} bidi_bracket_type_t;


typedef enum { NEUTRAL_DIR = 0, L2R, R2L } bidi_dir_t;



struct bidi_saved_info {
  ptrdiff_t charpos;
  bidi_type_t type;
  bidi_type_t orig_type;
};






struct bidi_stack {
  ptrdiff_t next_for_neutral_pos;
  unsigned next_for_neutral_type : 3;
  unsigned last_strong_type : 3;
  unsigned prev_for_neutral_type : 3;
  unsigned char level;
  unsigned char flags;
};


struct bidi_string_data {
  Lisp_Object lstring;
  const unsigned char *s;
  ptrdiff_t schars;

  ptrdiff_t bufpos;
  bool_bf from_disp_str : 1;

  bool_bf unibyte : 1;
};


struct bidi_it {
  ptrdiff_t bytepos;
  ptrdiff_t charpos;
  int ch;


  ptrdiff_t nchars;

  ptrdiff_t ch_len;
  bidi_type_t type;

  bidi_type_t type_after_wn;
  bidi_type_t orig_type;
  signed char resolved_level;
  signed char isolate_level;
  ptrdiff_t invalid_levels;
  ptrdiff_t invalid_isolates;
  struct bidi_saved_info prev;
  struct bidi_saved_info last_strong;
  struct bidi_saved_info next_for_neutral;
  struct bidi_saved_info prev_for_neutral;
  struct bidi_saved_info next_for_ws;
  ptrdiff_t bracket_pairing_pos;
  bidi_type_t bracket_enclosed_type;
  ptrdiff_t next_en_pos;
  bidi_type_t next_en_type;
  bidi_dir_t sos;
  int scan_dir;
  ptrdiff_t disp_pos;
  int disp_prop;


  int stack_idx;



  struct bidi_stack level_stack[125 +2+1];
  struct bidi_string_data string;
  struct window *w;
  bidi_dir_t paragraph_dir;
  ptrdiff_t separator_limit;
  bool_bf first_elt : 1;
  bool_bf new_paragraph : 1;
  bool_bf frame_window_p : 1;
};
# 2028 "./dispextern.h"
struct draw_fringe_bitmap_params
{
  int which;
  unsigned short *bits;
  int wd, h, dh;
  int x, y;
  int bx, nx, by, ny;
  bool_bf cursor_p : 1;
  bool_bf overlay_p : 1;
  struct face *face;
};
# 2090 "./dispextern.h"
enum display_element_type
{

  IT_CHARACTER,


  IT_COMPOSITION,


  IT_GLYPHLESS,


  IT_IMAGE,


  IT_STRETCH,


  IT_EOB,




  IT_TRUNCATION,


  IT_CONTINUATION,


  IT_XWIDGET
};





enum prop_idx
{
  FONTIFIED_PROP_IDX,
  FACE_PROP_IDX,
  INVISIBLE_PROP_IDX,
  DISPLAY_PROP_IDX,
  COMPOSITION_PROP_IDX,


  OVERLAY_PROP_IDX,


  LAST_PROP_IDX
};



enum line_wrap_method
{
  TRUNCATE,
  WORD_WRAP,
  WINDOW_WRAP
};



enum glyphless_display_method
  {


    GLYPHLESS_DISPLAY_THIN_SPACE,

    GLYPHLESS_DISPLAY_EMPTY_BOX,

    GLYPHLESS_DISPLAY_ACRONYM,

    GLYPHLESS_DISPLAY_HEX_CODE
  };

struct it_slice
{
  Lisp_Object x;
  Lisp_Object y;
  Lisp_Object width;
  Lisp_Object height;
};




enum it_method {
  GET_FROM_BUFFER = 0,
  GET_FROM_DISPLAY_VECTOR,
  GET_FROM_STRING,
  GET_FROM_C_STRING,
  GET_FROM_IMAGE,
  GET_FROM_STRETCH,
  GET_FROM_XWIDGET,
  NUM_IT_METHODS
};





struct composition_it
{

  ptrdiff_t stop_pos;


  ptrdiff_t id;





  int ch;




  int rule_idx;



  ptrdiff_t lookback;

  int nglyphs;



  _Bool reversed_p;




  ptrdiff_t charpos;

  int nchars, nbytes;

  int from, to;


  int width;
};

struct it
{

  Lisp_Object window;
  struct window *w;


  struct frame *f;


  enum it_method method;



  ptrdiff_t stop_charpos;



  ptrdiff_t prev_stop;



  ptrdiff_t base_level_stop;






  ptrdiff_t end_charpos;




  const unsigned char *s;




  ptrdiff_t string_nchars;


  ptrdiff_t redisplay_end_trigger_charpos;


  bool_bf multibyte_p : 1;


  bool_bf header_line_p : 1;



  bool_bf string_from_display_prop_p : 1;



  bool_bf string_from_prefix_prop_p : 1;



  bool_bf from_disp_prop_p : 1;



  bool_bf ellipsis_p : 1;


  bool_bf avoid_cursor_p : 1;


  struct Lisp_Char_Table *dp;







  Lisp_Object *dpvec, *dpend;





  int dpvec_char_len;


  int dpvec_face_id;




  int saved_face_id;






  Lisp_Object ctl_chars[16];



  struct display_pos start;



  struct display_pos current;







  ptrdiff_t n_overlay_strings;





  ptrdiff_t overlay_strings_charpos;




  Lisp_Object overlay_strings[16];


  Lisp_Object string_overlays[16];





  Lisp_Object string;



  Lisp_Object from_overlay;





  struct iterator_stack_entry
  {
    Lisp_Object string;
    int string_nchars;
    ptrdiff_t end_charpos;
    ptrdiff_t stop_charpos;
    ptrdiff_t prev_stop;
    ptrdiff_t base_level_stop;
    struct composition_it cmp_it;
    int face_id;


    union {

      struct {
 Lisp_Object object;
 struct it_slice slice;
 ptrdiff_t image_id;
      } image;

      struct {
 Lisp_Object object;
      } stretch;

      struct {
 Lisp_Object object;
      } xwidget;
    } u;


    struct text_pos position;
    struct display_pos current;
    Lisp_Object from_overlay;
    enum glyph_row_area area;
    enum it_method method;
    bidi_dir_t paragraph_embedding;
    bool_bf multibyte_p : 1;
    bool_bf string_from_display_prop_p : 1;
    bool_bf string_from_prefix_prop_p : 1;
    bool_bf display_ellipsis_p : 1;
    bool_bf avoid_cursor_p : 1;
    bool_bf bidi_p : 1;
    bool_bf from_disp_prop_p : 1;
    enum line_wrap_method line_wrap;



    short voffset;
    Lisp_Object space_width;
    Lisp_Object font_height;
  }
  stack[5];


  int sp;



  ptrdiff_t selective;



  enum display_element_type what;


  int face_id;


  bool_bf selective_display_ellipsis_p : 1;



  bool_bf ctl_arrow_p : 1;


  bool_bf face_box_p : 1;



  bool_bf start_of_box_run_p : 1;



  bool_bf end_of_box_run_p : 1;


  bool_bf overlay_strings_at_end_processed_p : 1;



  bool_bf ignore_overlay_strings_at_pos_p : 1;



  bool_bf glyph_not_available_p : 1;




  bool_bf starts_in_middle_of_char_p : 1;



  bool_bf face_before_selective_p : 1;



  bool_bf constrain_row_ascent_descent_p : 1;

  enum line_wrap_method line_wrap;



  int base_face_id;
# 2509 "./dispextern.h"
  int c, len;



  struct composition_it cmp_it;






  int char_to_display;



  enum glyphless_display_method glyphless_method;


  ptrdiff_t image_id;


  struct xwidget *xwidget;


  struct it_slice slice;


  Lisp_Object space_width;


  short voffset;


  short tab_width;


  Lisp_Object font_height;
# 2564 "./dispextern.h"
  Lisp_Object object;
  struct text_pos position;


  short truncation_pixel_width, continuation_pixel_width;






  int first_visible_x, last_visible_x;



  int last_visible_y;



  int extra_line_spacing;


  int max_extra_line_spacing;



  int override_ascent, override_descent, override_boff;



  struct glyph_row *glyph_row;


  enum glyph_row_area area;



  int nglyphs;



  int pixel_width;



  int ascent, descent, max_ascent, max_descent;
  int phys_ascent, phys_descent, max_phys_ascent, max_phys_descent;





  int current_x;




  int continuation_lines_width;







  struct text_pos eol_pos;



  int current_y;


  int first_vpos;



  int vpos;




  int hpos;


  unsigned left_user_fringe_bitmap : 16;


  unsigned right_user_fringe_bitmap : 16;


  unsigned left_user_fringe_face_id : 20;


  unsigned right_user_fringe_face_id : 20;



  bool_bf bidi_p : 1;


  struct bidi_it bidi_it;
  bidi_dir_t paragraph_embedding;
};
# 2707 "./dispextern.h"
enum move_operation_enum
{

  MOVE_TO_X = 0x01,


  MOVE_TO_Y = 0x02,


  MOVE_TO_VPOS = 0x04,


  MOVE_TO_POS = 0x08
};







typedef struct {





  int mouse_face_beg_row, mouse_face_beg_col, mouse_face_beg_x;
  int mouse_face_end_row, mouse_face_end_col, mouse_face_end_x;
  Lisp_Object mouse_face_window;
  int mouse_face_face_id;
  Lisp_Object mouse_face_overlay;



  struct frame *mouse_face_mouse_frame;
  int mouse_face_mouse_x, mouse_face_mouse_y;



  bool_bf mouse_face_past_end : 1;


  bool_bf mouse_face_defer : 1;


  bool_bf mouse_face_hidden : 1;
} Mouse_HLInfo;

inline void
reset_mouse_highlight (Mouse_HLInfo *hlinfo)
{

    hlinfo->mouse_face_beg_row = hlinfo->mouse_face_beg_col = -1;
    hlinfo->mouse_face_end_row = hlinfo->mouse_face_end_col = -1;
    hlinfo->mouse_face_mouse_x = hlinfo->mouse_face_mouse_y = 0;
    hlinfo->mouse_face_beg_x = hlinfo->mouse_face_end_x = 0;
    hlinfo->mouse_face_face_id = DEFAULT_FACE_ID;
    hlinfo->mouse_face_mouse_frame = ((void*)0);
    hlinfo->mouse_face_window = builtin_lisp_symbol (0);
    hlinfo->mouse_face_overlay = builtin_lisp_symbol (0);
    hlinfo->mouse_face_past_end = 0;
    hlinfo->mouse_face_hidden = 0;
    hlinfo->mouse_face_defer = 0;
}







struct run
{

  int desired_y, current_y;


  int desired_vpos, current_vpos;


  int height, nrows;
};




typedef void (*frame_parm_handler) (struct frame *, Lisp_Object, Lisp_Object);





struct redisplay_interface
{

  frame_parm_handler *frame_parm_handlers;



  void (*produce_glyphs) (struct it *it);



  void (*write_glyphs) (struct window *w, struct glyph_row *row,
   struct glyph *string, enum glyph_row_area area,
   int len);
  void (*insert_glyphs) (struct window *w, struct glyph_row *row,
    struct glyph *start, enum glyph_row_area area,
    int len);



  void (*clear_end_of_line) (struct window *w, struct glyph_row *row,
        enum glyph_row_area area, int x);



  void (*scroll_run_hook) (struct window *w, struct run *run);




  void (*after_update_window_line_hook) (struct window *w,
      struct glyph_row *desired_row);



  void (*update_window_begin_hook) (struct window *w);






  void (*update_window_end_hook) (struct window *w, _Bool cursor_on_p,
                                  _Bool mouse_face_overwritten_p);


  void (*flush_display) (struct frame *f);


  void (*clear_window_mouse_face) (struct window *w);



  void (*get_glyph_overhangs) (struct glyph *glyph, struct frame *f,
                               int *left, int *right);




  void (*fix_overlapping_area) (struct window *w, struct glyph_row *row,
                                enum glyph_row_area area, int);




  void (*draw_fringe_bitmap) (struct window *w, struct glyph_row *row,
                              struct draw_fringe_bitmap_params *p);


  void (*define_fringe_bitmap) (int which, unsigned short *bits,
                                int h, int wd);
  void (*destroy_fringe_bitmap) (int which);



  void (*compute_glyph_string_overhangs) (struct glyph_string *s);


  void (*draw_glyph_string) (struct glyph_string *s);


  void (*define_frame_cursor) (struct frame *f, Cursor cursor);


  void (*clear_frame_area) (struct frame *f, int x, int y,
                            int width, int height);





  void (*draw_window_cursor) (struct window *w,
         struct glyph_row *glyph_row,
         int x, int y,
         enum text_cursor_kinds cursor_type,
         int cursor_width, _Bool on_p, _Bool active_p);


  void (*draw_vertical_window_border) (struct window *w,
                                       int x, int y_0, int y_1);


  void (*draw_window_divider) (struct window *w,
          int x_0, int x_1, int y_0, int y_1);




  void (*shift_glyphs_for_insert) (struct frame *f,
                                   int x, int y, int width,
                                   int height, int shift_by);


  void (*show_hourglass) (struct frame *f);


  void (*hide_hourglass) (struct frame *f);


};
# 2931 "./dispextern.h"
struct image_type
{

  int type;



  _Bool (* valid_p) (Lisp_Object spec);



  _Bool (* load) (struct frame *f, struct image *img);


  void (* free) (struct frame *f, struct image *img);



  _Bool (* init) (void);


  struct image_type *next;
};






struct image
{


  struct timespec timestamp;


  Pixmap pixmap, mask;
# 2978 "./dispextern.h"
  XImagePtr ximg, mask_img;



  unsigned long *colors;
  int ncolors;






  unsigned long background;



  unsigned long frame_foreground, frame_background;




  bool_bf background_transparent : 1;



  bool_bf background_valid : 1, background_transparent_valid : 1;


  int width, height;
# 3016 "./dispextern.h"
  int corners[4];
# 3025 "./dispextern.h"
  int ascent;




  Lisp_Object spec;




  Lisp_Object dependencies;


  int relief;


  int hmargin, vmargin;


  struct image_type *type;


  _Bool load_failed_p;



  Lisp_Object lisp_data;


  EMACS_UINT hash;


  ptrdiff_t id;


  struct image *next, *prev;
};





struct image_cache
{

  struct image **buckets;


  struct image **images;


  ptrdiff_t size;


  ptrdiff_t used;


  ptrdiff_t refcount;
};
# 3110 "./dispextern.h"
enum tool_bar_item_idx
{


  TOOL_BAR_ITEM_KEY,


  TOOL_BAR_ITEM_ENABLED_P,


  TOOL_BAR_ITEM_SELECTED_P,


  TOOL_BAR_ITEM_CAPTION,



  TOOL_BAR_ITEM_IMAGES,


  TOOL_BAR_ITEM_BINDING,



  TOOL_BAR_ITEM_TYPE,


  TOOL_BAR_ITEM_HELP,


  TOOL_BAR_ITEM_RTL_IMAGE,


  TOOL_BAR_ITEM_LABEL,


  TOOL_BAR_ITEM_VERT_ONLY,



  TOOL_BAR_ITEM_NSLOTS
};





enum tool_bar_item_image
{
  TOOL_BAR_IMAGE_ENABLED_SELECTED,
  TOOL_BAR_IMAGE_ENABLED_DESELECTED,
  TOOL_BAR_IMAGE_DISABLED_SELECTED,
  TOOL_BAR_IMAGE_DISABLED_DESELECTED
};
# 3199 "./dispextern.h"
extern void bidi_init_it (ptrdiff_t, ptrdiff_t, _Bool, struct bidi_it *);
extern void bidi_move_to_visually_next (struct bidi_it *);
extern void bidi_paragraph_init (bidi_dir_t, struct bidi_it *, _Bool);
extern int bidi_mirror_char (int);
extern void bidi_push_it (struct bidi_it *);
extern void bidi_pop_it (struct bidi_it *);
extern void *bidi_shelve_cache (void);
extern void bidi_unshelve_cache (void *, _Bool);
extern ptrdiff_t bidi_find_first_overridden (struct bidi_it *);



struct glyph_row *row_containing_pos (struct window *, ptrdiff_t,
                                      struct glyph_row *,
                                      struct glyph_row *, int);
int line_bottom_y (struct it *);
int default_line_pixel_height (struct window *);
_Bool display_prop_intangible_p (Lisp_Object, Lisp_Object, ptrdiff_t, ptrdiff_t);
void resize_echo_area_exactly (void);
_Bool resize_mini_window (struct window *, _Bool);
void set_vertical_scroll_bar (struct window *);
void set_horizontal_scroll_bar (struct window *);
int try_window (Lisp_Object, struct text_pos, int);
void window_box (struct window *, enum glyph_row_area,
   int *, int *, int *, int *);
int window_box_height (struct window *);
int window_text_bottom_y (struct window *);
int window_box_width (struct window *, enum glyph_row_area);
int window_box_left (struct window *, enum glyph_row_area);
int window_box_left_offset (struct window *, enum glyph_row_area);
int window_box_right (struct window *, enum glyph_row_area);
int estimate_mode_line_height (struct frame *, enum face_id);
int move_it_to (struct it *, ptrdiff_t, int, int, int, int);
void pixel_to_glyph_coords (struct frame *, int, int, int *, int *,
                            XRectangle *, _Bool);
void remember_mouse_glyph (struct frame *, int, int, XRectangle *);

void mark_window_display_accurate (Lisp_Object, _Bool);
void redisplay_preserve_echo_area (int);
void init_iterator (struct it *, struct window *, ptrdiff_t,
                    ptrdiff_t, struct glyph_row *, enum face_id);
void init_iterator_to_row_start (struct it *, struct window *,
                                 struct glyph_row *);
void start_display (struct it *, struct window *, struct text_pos);
void move_it_vertically (struct it *, int);
void move_it_vertically_backward (struct it *, int);
void move_it_by_lines (struct it *, ptrdiff_t);
void move_it_past_eol (struct it *);
void move_it_in_display_line (struct it *it,
         ptrdiff_t to_charpos, int to_x,
         enum move_operation_enum op);
_Bool in_display_vector_p (struct it *);
int frame_mode_line_height (struct frame *);
extern _Bool redisplaying_p;
extern _Bool help_echo_showing_p;
extern Lisp_Object help_echo_string, help_echo_window;
extern Lisp_Object help_echo_object, previous_help_echo_string;
extern ptrdiff_t help_echo_pos;
extern int last_tool_bar_item;
extern void reseat_at_previous_visible_line_start (struct it *);
extern Lisp_Object lookup_glyphless_char_display (int, struct it *);
extern ptrdiff_t compute_display_string_pos (struct text_pos *,
          struct bidi_string_data *,
          struct window *, _Bool, int *);
extern ptrdiff_t compute_display_string_end (ptrdiff_t,
          struct bidi_string_data *);
extern void produce_stretch_glyph (struct it *);
extern int merge_glyphless_glyph_face (struct it *);
extern void forget_escape_and_glyphless_faces (void);

extern void get_font_ascent_descent (struct font *, int *, int *);







extern void x_get_glyph_overhangs (struct glyph *, struct frame *,
                                   int *, int *);
extern void x_produce_glyphs (struct it *);

extern void x_write_glyphs (struct window *, struct glyph_row *,
       struct glyph *, enum glyph_row_area, int);
extern void x_insert_glyphs (struct window *, struct glyph_row *,
        struct glyph *, enum glyph_row_area, int);
extern void x_clear_end_of_line (struct window *, struct glyph_row *,
     enum glyph_row_area, int);
extern void x_fix_overlapping_area (struct window *, struct glyph_row *,
                                    enum glyph_row_area, int);
extern void draw_phys_cursor_glyph (struct window *,
                                    struct glyph_row *,
                                    enum draw_glyphs_face);
extern void get_phys_cursor_geometry (struct window *, struct glyph_row *,
                                      struct glyph *, int *, int *, int *);
extern void erase_phys_cursor (struct window *);
extern void display_and_set_cursor (struct window *, _Bool, int, int, int, int);
extern void x_update_cursor (struct frame *, _Bool);
extern void x_clear_cursor (struct window *);
extern void x_draw_vertical_border (struct window *w);
extern void x_draw_right_divider (struct window *w);

extern int get_glyph_string_clip_rects (struct glyph_string *,
                                        XRectangle *, int);
extern void get_glyph_string_clip_rect (struct glyph_string *,
                                        XRectangle *nr);
extern Lisp_Object find_hot_spot (Lisp_Object, int, int);

extern void handle_tool_bar_click (struct frame *,
                                   int, int, _Bool, int);

extern void expose_frame (struct frame *, int, int, int, int);
extern _Bool x_intersect_rectangles (XRectangle *, XRectangle *, XRectangle *);


extern void note_mouse_highlight (struct frame *, int, int);
extern void x_clear_window_mouse_face (struct window *);
extern void cancel_mouse_face (struct frame *);
extern _Bool clear_mouse_face (Mouse_HLInfo *);
extern _Bool cursor_in_mouse_face_p (struct window *w);
extern void tty_draw_row_with_mouse_face (struct window *, struct glyph_row *,
       int, int, enum draw_glyphs_face);
extern void display_tty_menu_item (const char *, int, int, int, int, _Bool);





int lookup_fringe_bitmap (Lisp_Object);
void draw_fringe_bitmap (struct window *, struct glyph_row *, int);
void draw_row_fringe_bitmaps (struct window *, struct glyph_row *);
_Bool draw_window_fringes (struct window *, _Bool);
_Bool update_window_fringes (struct window *, _Bool);
# 3341 "./dispextern.h"
extern unsigned row_hash (struct glyph_row *);





extern ptrdiff_t x_bitmap_pixmap (struct frame *, ptrdiff_t);
extern void x_reference_bitmap (struct frame *, ptrdiff_t);
extern ptrdiff_t x_create_bitmap_from_data (struct frame *, char *,
         unsigned int, unsigned int);
extern ptrdiff_t x_create_bitmap_from_file (struct frame *, Lisp_Object);




extern void x_destroy_bitmap (struct frame *, ptrdiff_t);

extern void x_destroy_all_bitmaps (Display_Info *);
extern void x_create_bitmap_mask (struct frame *, ptrdiff_t);
extern Lisp_Object x_find_image_file (Lisp_Object);

void x_kill_gs_process (Pixmap, struct frame *);
struct image_cache *make_image_cache (void);
void free_image_cache (struct frame *);
void clear_image_caches (Lisp_Object);
void mark_image_cache (struct image_cache *);
_Bool valid_image_p (Lisp_Object);
void prepare_image_for_display (struct frame *, struct image *);
ptrdiff_t lookup_image (struct frame *, Lisp_Object);
# 3379 "./dispextern.h"
unsigned long image_background (struct image *, struct frame *,
                                XImagePtr_or_DC ximg);
int image_background_transparent (struct image *, struct frame *,
                                  XImagePtr_or_DC mask);

int image_ascent (struct image *, struct face *, struct glyph_slice *);





void get_tty_size (int, int *, int *);
void request_sigio (void);
void unrequest_sigio (void);
_Bool tabs_safe_p (int);
void init_baud_rate (int);
void init_sigio (int);




void unload_color (struct frame *, unsigned long);
void x_free_colors (struct frame *, unsigned long *, int);


void update_face_from_frame_parameter (struct frame *, Lisp_Object,
                                       Lisp_Object);
Lisp_Object tty_color_name (struct frame *, int);
void clear_face_cache (_Bool);
unsigned long load_color (struct frame *, struct face *, Lisp_Object,
                          enum lface_attribute_index);
char *choose_face_font (struct frame *, Lisp_Object *, Lisp_Object,
                        int *);

void prepare_face_for_display (struct frame *, struct face *);

int lookup_named_face (struct frame *, Lisp_Object, _Bool);
int lookup_basic_face (struct frame *, int);
int smaller_face (struct frame *, int, int);
int face_with_height (struct frame *, int, int);
int lookup_derived_face (struct frame *, Lisp_Object, int, _Bool);
void init_frame_faces (struct frame *);
void free_frame_faces (struct frame *);
void recompute_basic_faces (struct frame *);
int face_at_buffer_position (struct window *, ptrdiff_t, ptrdiff_t *, ptrdiff_t,
                             _Bool, int);
int face_for_overlay_string (struct window *, ptrdiff_t, ptrdiff_t *, ptrdiff_t,
                             _Bool, Lisp_Object);
int face_at_string_position (struct window *, Lisp_Object, ptrdiff_t, ptrdiff_t,
                             ptrdiff_t *, enum face_id, _Bool);
int merge_faces (struct frame *, Lisp_Object, int, int);
int compute_char_face (struct frame *, int, Lisp_Object);
void free_all_realized_faces (Lisp_Object);
extern char unspecified_fg[], unspecified_bg[];




void gamma_correct (struct frame *, XColor *);







void x_implicitly_set_name (struct frame *, Lisp_Object, Lisp_Object);
void x_change_tool_bar_height (struct frame *f, int);

extern Lisp_Object tip_frame;
extern Window tip_window;
extern frame_parm_handler x_frame_parm_handlers[];

extern void start_hourglass (void);
extern void cancel_hourglass (void);
# 3478 "./dispextern.h"
int popup_activated (void);



extern Lisp_Object buffer_posn_from_coords (struct window *,
                                            int *, int *,
                                            struct display_pos *,
                                            Lisp_Object *,
                                            int *, int *, int *, int *);
extern Lisp_Object mode_line_string (struct window *, enum window_part,
                                     int *, int *, ptrdiff_t *,
                                     Lisp_Object *,
                                     int *, int *, int *, int *);
extern Lisp_Object marginal_area_string (struct window *, enum window_part,
                                         int *, int *, ptrdiff_t *,
                                         Lisp_Object *,
                                         int *, int *, int *, int *);
extern void redraw_frame (struct frame *);
extern _Bool update_frame (struct frame *, _Bool, _Bool);
extern void update_frame_with_menu (struct frame *, int, int);
extern void bitch_at_user (void);
extern void adjust_frame_glyphs (struct frame *);
void free_glyphs (struct frame *);
void free_window_matrices (struct window *);
void check_glyph_memory (void);
void mirrored_line_dance (struct glyph_matrix *, int, int, int *, char *);
void clear_glyph_matrix (struct glyph_matrix *);
void clear_current_matrices (struct frame *f);
void clear_desired_matrices (struct frame *);
void shift_glyph_matrix (struct window *, struct glyph_matrix *,
                         int, int, int);
void rotate_matrix (struct glyph_matrix *, int, int, int);
void increment_matrix_positions (struct glyph_matrix *,
                                 int, int, ptrdiff_t, ptrdiff_t);
void blank_row (struct window *, struct glyph_row *, int);
void clear_glyph_matrix_rows (struct glyph_matrix *, int, int);
void clear_glyph_row (struct glyph_row *);
void prepare_desired_row (struct window *, struct glyph_row *, _Bool);
void update_single_window (struct window *);
void do_pending_window_change (_Bool);
void change_frame_size (struct frame *, int, int, _Bool, _Bool, _Bool, _Bool);
void init_display (void);
void syms_of_display (void);
extern void spec_glyph_lookup_face (struct window *, GLYPH *);
extern void fill_up_frame_row_with_spaces (struct glyph_row *, int);



extern void ring_bell (struct frame *);
extern void update_begin (struct frame *);
extern void update_end (struct frame *);
extern void set_terminal_window (struct frame *, int);
extern void cursor_to (struct frame *, int, int);
extern void raw_cursor_to (struct frame *, int, int);
extern void clear_to_end (struct frame *);
extern void clear_frame (struct frame *);
extern void clear_end_of_line (struct frame *, int);
extern void write_glyphs (struct frame *, struct glyph *, int);
extern void insert_glyphs (struct frame *, struct glyph *, int);
extern void delete_glyphs (struct frame *, int);
extern void ins_del_lines (struct frame *, int, int);

extern struct terminal *init_initial_terminal (void);




extern void tty_turn_off_insert (struct tty_display_info *);
extern int string_cost (const char *);
extern int per_line_cost (const char *);
extern void calculate_costs (struct frame *);
extern void produce_glyphs (struct it *);
extern _Bool tty_capable_p (struct tty_display_info *, unsigned);
extern void set_tty_color_mode (struct tty_display_info *, struct frame *);
extern void create_tty_output (struct frame *);
extern struct terminal *init_tty (const char *, const char *, _Bool);
extern void tty_append_glyph (struct it *);




extern int scrolling_max_lines_saved (int, int, unsigned *, unsigned *, int *);
extern void do_line_insertion_deletion_costs (struct frame *, const char *,
                                              const char *, const char *,
           const char *, const char *,
           const char *, int);
void scrolling_1 (struct frame *, int, int, int, int *, int *, unsigned *,
                  unsigned *, int);






enum resource_types
{
  RES_TYPE_NUMBER,
  RES_TYPE_FLOAT,
  RES_TYPE_BOOLEAN,
  RES_TYPE_STRING,
  RES_TYPE_SYMBOL,
  RES_TYPE_BOOLEAN_NUMBER
};

extern Display_Info *check_x_display_info (Lisp_Object);
extern Lisp_Object x_get_arg (Display_Info *, Lisp_Object,
                              Lisp_Object, const char *, const char *class,
                              enum resource_types);
extern Lisp_Object x_frame_get_and_record_arg (struct frame *, Lisp_Object,
                                               Lisp_Object,
            const char *, const char *,
                                               enum resource_types);
extern Lisp_Object x_default_parameter (struct frame *, Lisp_Object,
                                        Lisp_Object, Lisp_Object,
                                        const char *, const char *,
                                        enum resource_types);
extern char *x_get_string_resource (XrmDatabase, const char *,
        const char *);


extern _Bool x_mouse_grabbed (Display_Info *);
extern void x_redo_mouse_highlight (Display_Info *);
# 24 "./window.h" 2
# 79 "./window.h"
struct cursor_pos
{

  int x, y;


  int hpos, vpos;
};

struct window
  {

    struct vectorlike_header header;


    Lisp_Object frame;



    Lisp_Object next;
    Lisp_Object prev;


    Lisp_Object parent;




    Lisp_Object normal_lines;
    Lisp_Object normal_cols;



    Lisp_Object new_total;
    Lisp_Object new_normal;
    Lisp_Object new_pixel;


    Lisp_Object contents;





    Lisp_Object start;





    Lisp_Object pointm;




    Lisp_Object old_pointm;



    Lisp_Object temslot;






    Lisp_Object vertical_scroll_bar;



    Lisp_Object vertical_scroll_bar_type;






    Lisp_Object horizontal_scroll_bar;



    Lisp_Object horizontal_scroll_bar_type;



    Lisp_Object display_table;




    Lisp_Object dedicated;



    Lisp_Object redisplay_end_trigger;


    Lisp_Object combination_limit;


    Lisp_Object window_parameters;






    struct glyph_matrix *current_matrix;
    struct glyph_matrix *desired_matrix;





    Lisp_Object prev_buffers;

    Lisp_Object next_buffers;


    EMACS_INT use_time;


    EMACS_INT sequence_number;



    int pixel_left;
    int pixel_top;



    int left_col;
    int top_line;


    int pixel_width;
    int pixel_height;


    int total_cols;
    int total_lines;


    ptrdiff_t hscroll;



    ptrdiff_t min_hscroll;



    ptrdiff_t hscroll_whole;



    EMACS_INT last_modified;



    EMACS_INT last_overlay_modified;



    ptrdiff_t last_point;



    ptrdiff_t base_line_number;




    ptrdiff_t base_line_pos;



    ptrdiff_t column_number_displayed;




    int nrows_scale_factor, ncols_scale_factor;



    struct cursor_pos cursor;


    struct cursor_pos phys_cursor;


    struct cursor_pos output_cursor;



    int last_cursor_vpos;




    enum text_cursor_kinds phys_cursor_type;


    int phys_cursor_width;


    int phys_cursor_ascent, phys_cursor_height;





    int left_fringe_width;
    int right_fringe_width;





    int left_margin_cols;
    int right_margin_cols;



    int scroll_bar_width;



    int scroll_bar_height;


    int mode_line_height;


    int header_line_height;



    ptrdiff_t window_end_pos;



    int window_end_vpos;


    bool_bf mini : 1;



    bool_bf horizontal : 1;


    bool_bf update_mode_line : 1;



    bool_bf last_had_star : 1;



    bool_bf start_at_line_beg : 1;



    bool_bf force_start : 1;





    bool_bf optional_new_start : 1;



    bool_bf phys_cursor_on_p : 1;



    bool_bf cursor_off_p : 1;


    bool_bf last_cursor_off_p : 1;



    bool_bf must_be_updated_p : 1;



    bool_bf pseudo_window_p : 1;



    bool_bf fringes_outside_margins : 1;




    bool_bf window_end_valid : 1;


    bool_bf redisplay : 1;



    bool_bf suspend_auto_hscroll : 1;



    int vscroll;



    ptrdiff_t window_end_bytepos;
  };



inline void
wset_frame (struct window *w, Lisp_Object val)
{
  w->frame = val;
}

inline void
wset_next (struct window *w, Lisp_Object val)
{
  w->next = val;
}

inline void
wset_prev (struct window *w, Lisp_Object val)
{
  w->prev = val;
}

inline void
wset_redisplay_end_trigger (struct window *w, Lisp_Object val)
{
  w->redisplay_end_trigger = val;
}

inline void
wset_new_pixel (struct window *w, Lisp_Object val)
{
  w->new_pixel = val;
}

inline void
wset_vertical_scroll_bar (struct window *w, Lisp_Object val)
{
  w->vertical_scroll_bar = val;
}

inline void
wset_horizontal_scroll_bar (struct window *w, Lisp_Object val)
{
  w->horizontal_scroll_bar = val;
}

inline void
wset_horizontal_scroll_bar_type (struct window *w, Lisp_Object val)
{
  w->horizontal_scroll_bar_type = val;
}

inline void
wset_prev_buffers (struct window *w, Lisp_Object val)
{
  w->prev_buffers = val;
}

inline void
wset_next_buffers (struct window *w, Lisp_Object val)
{
  w->next_buffers = val;
}
# 987 "./window.h"
extern Lisp_Object selected_window;





extern EMACS_INT window_select_count;





extern Lisp_Object minibuf_window;




extern Lisp_Object minibuf_selected_window;

extern Lisp_Object make_window (void);
extern Lisp_Object window_from_coordinates (struct frame *, int, int,
                                            enum window_part *, _Bool);
extern void resize_frame_windows (struct frame *, int, _Bool, _Bool);
extern void restore_window_configuration (Lisp_Object);
extern void delete_all_child_windows (Lisp_Object);
extern void grow_mini_window (struct window *, int, _Bool);
extern void shrink_mini_window (struct window *, _Bool);
extern int window_relative_x_coord (struct window *, enum window_part, int);

void run_window_configuration_change_hook (struct frame *f);




void set_window_buffer (Lisp_Object window, Lisp_Object buffer,
                        _Bool run_hooks_p, _Bool keep_margins_p);





extern Lisp_Object echo_area_window;



extern EMACS_INT command_loop_level;



extern EMACS_INT minibuf_level;





extern int update_mode_lines;






extern int windows_or_buffers_changed;





extern void wset_redisplay (struct window *w);
extern void fset_redisplay (struct frame *f);
extern void bset_redisplay (struct buffer *b);
extern void bset_update_mode_line (struct buffer *b);
extern void maybe_set_redisplay (Lisp_Object);



extern void redisplay_other_windows (void);





struct glyph *get_phys_cursor_glyph (struct window *w);
# 1089 "./window.h"
extern Lisp_Object Vwindow_list;

extern Lisp_Object window_list (void);
extern struct window *decode_live_window (Lisp_Object);
extern struct window *decode_any_window (Lisp_Object);
extern _Bool compare_window_configurations (Lisp_Object, Lisp_Object, _Bool);
extern void mark_window_cursors_off (struct window *);
extern int window_internal_height (struct window *);
extern int window_body_width (struct window *w, _Bool);
extern void temp_output_buffer_show (Lisp_Object);
extern void replace_buffer_in_windows (Lisp_Object);
extern void replace_buffer_in_windows_safely (Lisp_Object);
extern Lisp_Object sanitize_window_sizes (Lisp_Object, Lisp_Object);

extern void wset_buffer (struct window *, Lisp_Object);
extern _Bool window_outdated (struct window *);
extern void init_window_once (void);
extern void init_window (void);
extern void syms_of_window (void);
extern void keys_of_window (void);







inline void
output_cursor_to (struct window *w, int vpos, int hpos, int y, int x)
{
  ((void) (0 && (w)));
  w->output_cursor.hpos = hpos;
  w->output_cursor.vpos = vpos;
  w->output_cursor.x = x;
  w->output_cursor.y = y;
}
# 37 "buffer.c" 2
# 1 "./commands.h" 1
# 30 "./commands.h"
extern Lisp_Object global_map;
extern Lisp_Object meta_map;
extern Lisp_Object control_x_map;
# 41 "./commands.h"
extern Lisp_Object unread_switch_frame;
# 38 "buffer.c" 2

# 1 "./buffer.h" 1
# 24 "./buffer.h"
# 1 "../lib/sys/types.h" 1
# 21 "../lib/sys/types.h" 3
# 25 "./buffer.h" 2
# 1 "../lib/time.h" 1
# 21 "../lib/time.h" 3
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
# 40 "buffer.c" 2
# 1 "./region-cache.h" 1
# 65 "./region-cache.h"
struct buffer;


struct region_cache *new_region_cache (void);


void free_region_cache (struct region_cache *);




extern void know_region_cache (struct buffer *BUF,
                               struct region_cache *CACHE,
                               ptrdiff_t START, ptrdiff_t END);
# 88 "./region-cache.h"
extern void invalidate_region_cache (struct buffer *BUF,
                                     struct region_cache *CACHE,
                                     ptrdiff_t HEAD, ptrdiff_t TAIL);
# 105 "./region-cache.h"
extern int region_cache_forward (struct buffer *buf, struct region_cache *c,
     ptrdiff_t pos, ptrdiff_t *next);


extern int region_cache_backward (struct buffer *buf, struct region_cache *c,
      ptrdiff_t pos, ptrdiff_t *next);
# 41 "buffer.c" 2
# 1 "./indent.h" 1
# 24 "./indent.h"
struct position
  {
    ptrdiff_t bufpos;
    ptrdiff_t bytepos;
    EMACS_INT hpos;
    EMACS_INT vpos;
    EMACS_INT prevhpos;
    int contin;
  };

struct position *compute_motion (ptrdiff_t from, ptrdiff_t frombyte,
     EMACS_INT fromvpos, EMACS_INT fromhpos,
     _Bool did_motion, ptrdiff_t to,
     EMACS_INT tovpos, EMACS_INT tohpos,
                                 EMACS_INT width, ptrdiff_t hscroll,
                                 int tab_offset, struct window *);
struct position *vmotion (ptrdiff_t from, ptrdiff_t from_byte,
     EMACS_INT vtarget, struct window *);
ptrdiff_t skip_invisible (ptrdiff_t pos, ptrdiff_t *next_boundary_p,
                          ptrdiff_t to, Lisp_Object window);


extern ptrdiff_t last_known_column_point;






_Bool disptab_matches_widthtab (struct Lisp_Char_Table *disptab,
          struct Lisp_Vector *widthtab);


void recompute_width_table (struct buffer *buf,
                            struct Lisp_Char_Table *disptab);
# 42 "buffer.c" 2
# 1 "./blockinput.h" 1
# 48 "./blockinput.h"
extern volatile int interrupt_input_blocked;



inline void
block_input (void)
{
  interrupt_input_blocked++;
}

extern void unblock_input (void);
extern void totally_unblock_input (void);
extern void unblock_input_to (int);



inline _Bool
input_blocked_p (void)
{
  return interrupt_input_blocked > 0;
}
# 43 "buffer.c" 2
# 1 "./keymap.h" 1
# 35 "./keymap.h"
extern Lisp_Object current_global_map;
extern char *push_key_description (EMACS_INT, char *);
extern Lisp_Object access_keymap (Lisp_Object, Lisp_Object, _Bool, _Bool, _Bool);
extern Lisp_Object get_keymap (Lisp_Object, _Bool, _Bool);
extern void describe_map_tree (Lisp_Object, _Bool, Lisp_Object, Lisp_Object,
          const char *, _Bool, _Bool, _Bool, _Bool);
extern ptrdiff_t current_minor_maps (Lisp_Object **, Lisp_Object **);
extern void initial_define_key (Lisp_Object, int, const char *);
extern void initial_define_lispy_key (Lisp_Object, const char *, const char *);
extern void syms_of_keymap (void);
extern void keys_of_keymap (void);

typedef void (*map_keymap_function_t)
     (Lisp_Object key, Lisp_Object val, Lisp_Object args, void *data);
extern void map_keymap (Lisp_Object, map_keymap_function_t, Lisp_Object,
   void *, _Bool);
extern void map_keymap_canonical (Lisp_Object map,
      map_keymap_function_t fun,
      Lisp_Object args, void *data);
# 44 "buffer.c" 2
# 1 "./frame.h" 1
# 22 "./frame.h"
# 1 "./termhooks.h" 1
# 29 "./termhooks.h"
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
# 23 "./frame.h" 2




enum vertical_scroll_bar_type
{
  vertical_scroll_bar_none,
  vertical_scroll_bar_left,
  vertical_scroll_bar_right
};



enum fullscreen_type
{
  FULLSCREEN_NONE,
  FULLSCREEN_WIDTH = 0x1,
  FULLSCREEN_HEIGHT = 0x2,
  FULLSCREEN_BOTH = 0x3,
  FULLSCREEN_MAXIMIZED = 0x4,



};





struct frame
{
  struct vectorlike_header header;






  Lisp_Object name;



  Lisp_Object icon_name;



  Lisp_Object title;
# 82 "./frame.h"
  Lisp_Object focus_frame;




  Lisp_Object root_window;





  Lisp_Object selected_window;





  Lisp_Object minibuffer_window;




  Lisp_Object param_alist;
# 113 "./frame.h"
  Lisp_Object scroll_bars;
  Lisp_Object condemned_scroll_bars;






  Lisp_Object menu_bar_items;


  Lisp_Object face_alist;




  Lisp_Object menu_bar_vector;


  Lisp_Object buffer_predicate;


  Lisp_Object buffer_list;



  Lisp_Object buried_buffer_list;
# 157 "./frame.h"
  Lisp_Object tool_bar_items;




  Lisp_Object tool_bar_position;




  Lisp_Object font_data;





  struct face_cache *face_cache;







  int menu_bar_items_used;
# 196 "./frame.h"
  struct glyph_pool *current_pool;
  struct glyph_pool *desired_pool;
  struct glyph_matrix *desired_matrix;
  struct glyph_matrix *current_matrix;





  bool_bf glyphs_initialized_p : 1;



  bool_bf resized_p : 1;




  bool_bf default_face_done_p : 1;



  bool_bf already_hscrolled_p : 1;


  bool_bf updated_p : 1;
# 231 "./frame.h"
  bool_bf external_tool_bar : 1;




  bool_bf fonts_changed : 1;


  bool_bf cursor_type_changed : 1;


  bool_bf redisplay : 1;




  bool_bf external_menu_bar : 1;
# 262 "./frame.h"
  unsigned visible : 2;



  bool_bf iconified : 1;



  bool_bf garbaged : 1;



  bool_bf wants_modeline : 1;


  bool_bf auto_raise : 1;


  bool_bf auto_lower : 1;


  bool_bf no_split : 1;





  bool_bf explicit_name : 1;


  bool_bf window_sizes_changed : 1;



  bool_bf mouse_moved : 1;


  bool_bf pointer_invisible : 1;



  bool_bf frozen_window_starts : 1;




  enum output_method output_method : 3;



  enum fullscreen_type want_fullscreen : 4;



  enum vertical_scroll_bar_type vertical_scroll_bar_type : 2;


  bool_bf horizontal_scroll_bars : 1;




  bool_bf new_pixelwise : 1;



  bool_bf can_x_set_window_size : 1;


  bool_bf after_make_frame : 1;


  bool_bf tool_bar_redisplayed : 1;
  bool_bf tool_bar_resized : 1;


  bool_bf inhibit_horizontal_resize : 1;
  bool_bf inhibit_vertical_resize : 1;


  bool_bf face_change : 1;




  int tool_bar_lines;


  int tool_bar_height;

  int n_tool_bar_rows;
  int n_tool_bar_items;


  char *decode_mode_spec_buffer;



  int *insert_line_cost;

  int *delete_line_cost;

  int *insert_n_lines_cost;

  int *delete_n_lines_cost;





  int text_cols, text_lines;





  int total_cols, total_lines;





  int text_width, text_height;





  int new_width, new_height;


  int left_pos, top_pos;





  int pixel_width, pixel_height;


  int win_gravity;


  int size_hint_flags;


  int border_width;




  int internal_border_width;


  int right_divider_width, bottom_divider_width;


  int left_fringe_width, right_fringe_width;



  int fringe_cols;


  int menu_bar_lines;


  int menu_bar_height;


  int column_width;


  int line_height;



  struct terminal *terminal;




  union output_data
  {
    struct tty_output *tty;
    struct x_output *x;
    struct w32_output *w32;
    struct ns_output *ns;
    intptr_t nothing;
  }
  output_data;


  struct font_driver_list *font_driver_list;



  int wait_event_type;




  enum text_cursor_kinds desired_cursor;


  int cursor_width;



  enum text_cursor_kinds blink_off_cursor;


  int blink_off_cursor_width;






  int config_scroll_bar_width;
  int config_scroll_bar_cols;






  int config_scroll_bar_height;
  int config_scroll_bar_lines;


  int cost_calculation_baud_rate;





  double alpha[2];




  double gamma;


  int extra_line_spacing;


  unsigned long background_pixel;
  unsigned long foreground_pixel;
};



inline void
fset_buffer_list (struct frame *f, Lisp_Object val)
{
  f->buffer_list = val;
}
inline void
fset_buried_buffer_list (struct frame *f, Lisp_Object val)
{
  f->buried_buffer_list = val;
}
inline void
fset_condemned_scroll_bars (struct frame *f, Lisp_Object val)
{
  f->condemned_scroll_bars = val;
}
inline void
fset_face_alist (struct frame *f, Lisp_Object val)
{
  f->face_alist = val;
}
inline void
fset_focus_frame (struct frame *f, Lisp_Object val)
{
  f->focus_frame = val;
}
inline void
fset_icon_name (struct frame *f, Lisp_Object val)
{
  f->icon_name = val;
}
inline void
fset_menu_bar_items (struct frame *f, Lisp_Object val)
{
  f->menu_bar_items = val;
}
inline void
fset_menu_bar_vector (struct frame *f, Lisp_Object val)
{
  f->menu_bar_vector = val;
}







inline void
fset_name (struct frame *f, Lisp_Object val)
{
  f->name = val;
}
inline void
fset_param_alist (struct frame *f, Lisp_Object val)
{
  f->param_alist = val;
}
inline void
fset_root_window (struct frame *f, Lisp_Object val)
{
  f->root_window = val;
}
inline void
fset_scroll_bars (struct frame *f, Lisp_Object val)
{
  f->scroll_bars = val;
}
inline void
fset_selected_window (struct frame *f, Lisp_Object val)
{
  f->selected_window = val;
}
inline void
fset_title (struct frame *f, Lisp_Object val)
{
  f->title = val;
}
inline void
fset_tool_bar_items (struct frame *f, Lisp_Object val)
{
  f->tool_bar_items = val;
}

inline void
fset_tool_bar_position (struct frame *f, Lisp_Object val)
{
  f->tool_bar_position = val;
}
# 625 "./frame.h"
inline double
default_pixels_per_inch_x (void)
{
  Lisp_Object v = ((((enum Lisp_Type) ((globals.f_Vdisplay_pixels_per_inch) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
     ? (((void) (0 && ((((enum Lisp_Type) ((globals.f_Vdisplay_pixels_per_inch) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((globals.f_Vdisplay_pixels_per_inch) - (Lisp_Cons))))->car
     : globals.f_Vdisplay_pixels_per_inch);
  return (NUMBERP (v) ? XFLOATINT (v) : -1) > 0 ? (NUMBERP (v) ? XFLOATINT (v) : -1) : 72.0;
}

inline double
default_pixels_per_inch_y (void)
{
  Lisp_Object v = ((((enum Lisp_Type) ((globals.f_Vdisplay_pixels_per_inch) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)
     ? (((void) (0 && ((((enum Lisp_Type) ((globals.f_Vdisplay_pixels_per_inch) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((globals.f_Vdisplay_pixels_per_inch) - (Lisp_Cons))))->u.cdr
     : globals.f_Vdisplay_pixels_per_inch);
  return (NUMBERP (v) ? XFLOATINT (v) : -1) > 0 ? (NUMBERP (v) ? XFLOATINT (v) : -1) : 72.0;
}
# 1072 "./frame.h"
extern _Bool frame_garbaged;






inline void
SET_FRAME_VISIBLE (struct frame *f, int v)
{
  ((void) (0 && (0 <= v && v <= 2)));
  if (v)
    {
      if (v == 1 && f->visible != 1)
 redisplay_other_windows ();
      if ((f)->garbaged)
 frame_garbaged = 1;
    }
  f->visible = v;
}






extern Lisp_Object selected_frame;





extern struct frame *decode_window_system_frame (Lisp_Object);
extern struct frame *decode_live_frame (Lisp_Object);
extern struct frame *decode_any_frame (Lisp_Object);
extern struct frame *make_initial_frame (void);
extern struct frame *make_frame (_Bool);

extern struct frame *make_minibuffer_frame (void);
extern struct frame *make_frame_without_minibuffer (Lisp_Object,
                                                    struct kboard *,
                                                    Lisp_Object);
extern _Bool window_system_available (struct frame *);



extern void check_window_system (struct frame *);
extern void frame_make_pointer_invisible (struct frame *);
extern void frame_make_pointer_visible (struct frame *);
extern Lisp_Object delete_frame (Lisp_Object, Lisp_Object);
extern _Bool frame_inhibit_resize (struct frame *, _Bool, Lisp_Object);
extern void adjust_frame_size (struct frame *, int, int, int, _Bool, Lisp_Object);
extern void frame_size_history_add (struct frame *f, Lisp_Object fun_symbol,
        int width, int height, Lisp_Object rest);

extern Lisp_Object Vframe_list;
# 1354 "./frame.h"
extern void x_set_scroll_bar_default_width (struct frame *);
extern void x_set_scroll_bar_default_height (struct frame *);
extern void x_set_offset (struct frame *, int, int, int);
extern void x_wm_set_size_hint (struct frame *f, long flags, _Bool user_position);
extern Lisp_Object x_new_font (struct frame *, Lisp_Object, int);
extern void x_set_frame_parameters (struct frame *, Lisp_Object);
extern void x_set_fullscreen (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_line_spacing (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_screen_gamma (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_font (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_font_backend (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_left_fringe (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_right_fringe (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_border_width (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_right_divider_width (struct frame *, Lisp_Object,
           Lisp_Object);
extern void x_set_bottom_divider_width (struct frame *, Lisp_Object,
     Lisp_Object);
extern void x_set_visibility (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_autoraise (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_autolower (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_unsplittable (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_vertical_scroll_bars (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_horizontal_scroll_bars (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_scroll_bar_width (struct frame *, Lisp_Object, Lisp_Object);
extern void x_set_scroll_bar_height (struct frame *, Lisp_Object, Lisp_Object);

extern long x_figure_window_size (struct frame *, Lisp_Object, _Bool, int *, int *);

extern void x_set_alpha (struct frame *, Lisp_Object, Lisp_Object);

extern void validate_x_resource_name (void);

extern Lisp_Object display_x_get_resource (Display_Info *,
        Lisp_Object attribute,
        Lisp_Object class,
        Lisp_Object component,
        Lisp_Object subclass);

extern void set_frame_menubar (struct frame *f, _Bool first_time, _Bool deep_p);
extern void x_set_window_size (struct frame *f, _Bool change_gravity,
          int width, int height, _Bool pixelwise);
extern Lisp_Object x_get_focus_frame (struct frame *);
extern void frame_set_mouse_pixel_position (struct frame *f, int pix_x, int pix_y);
extern void x_make_frame_visible (struct frame *f);
extern void x_make_frame_invisible (struct frame *f);
extern void x_iconify_frame (struct frame *f);
extern void x_set_frame_alpha (struct frame *f);
extern void x_activate_menubar (struct frame *);
extern void x_real_positions (struct frame *, int *, int *);
extern void free_frame_menubar (struct frame *);
extern void x_free_frame_resources (struct frame *);


extern void x_wm_set_icon_position (struct frame *, int, int);

extern char *x_get_resource_string (const char *, const char *);

extern void x_sync (struct frame *);


extern void x_query_colors (struct frame *f, XColor *, int);
extern void x_focus_frame (struct frame *);



extern _Bool x_bitmap_icon (struct frame *, Lisp_Object);



inline void
x_set_bitmap_icon (struct frame *f)
{
  Lisp_Object obj = assq_no_quit (builtin_lisp_symbol (532), f->param_alist);

  if ((((enum Lisp_Type) ((obj) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && !(((((void) (0 && ((((enum Lisp_Type) ((obj) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((obj) - (Lisp_Cons))))->u.cdr) == (builtin_lisp_symbol (0))))
    x_bitmap_icon (f, (((void) (0 && ((((enum Lisp_Type) ((obj) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((obj) - (Lisp_Cons))))->u.cdr);
}




inline void
flush_frame (struct frame *f)
{
  struct redisplay_interface *rif = ((f)->terminal->rif);

  if (rif && rif->flush_display)
    rif->flush_display (f);
}







struct MonitorInfo {
  XRectangle geom, work;
  int mm_width, mm_height;
  char *name;
};

extern void free_monitors (struct MonitorInfo *monitors, int n_monitors);
extern Lisp_Object make_monitor_attribute_list (struct MonitorInfo *monitors,
                                                int n_monitors,
                                                int primary_monitor,
                                                Lisp_Object monitor_frames,
                                                const char *source);
# 45 "buffer.c" 2
# 1 "./xwidget.h" 1
# 25 "./xwidget.h"
struct glyph_matrix;
struct glyph_string;
struct xwidget;
struct xwidget_view;
struct window;
# 123 "./xwidget.h"
inline void syms_of_xwidget (void) {}
inline _Bool valid_xwidget_spec_p (Lisp_Object obj) { return 0; }
inline void xwidget_view_delete_all_in_window (struct window *w) {}
inline void x_draw_xwidget_glyph_string (struct glyph_string *s) { ((0) ? (void) 0 : __builtin_unreachable ()); }
inline struct xwidget *lookup_xwidget (Lisp_Object obj) { ((0) ? (void) 0 : __builtin_unreachable ()); }
inline void xwidget_end_redisplay (struct window *w, struct glyph_matrix *m) {}
inline void kill_buffer_xwidgets (Lisp_Object buf) {}
# 46 "buffer.c" 2





struct buffer *current_buffer;




struct buffer *all_buffers;
# 65 "buffer.c"
struct buffer _Alignas (8) buffer_defaults;
# 83 "buffer.c"
struct buffer buffer_local_flags;




struct buffer _Alignas (8) buffer_local_symbols;
# 103 "buffer.c"
static char buffer_permanent_local_flags[50];



int last_per_buffer_idx;

static void call_overlay_mod_hooks (Lisp_Object list, Lisp_Object overlay,
                                    _Bool after, Lisp_Object arg1,
                                    Lisp_Object arg2, Lisp_Object arg3);
static void swap_out_buffer_local_variables (struct buffer *b);
static void reset_buffer_local_variables (struct buffer *, _Bool);




Lisp_Object Vbuffer_alist;

static Lisp_Object QSFundamental;

static void alloc_buffer_text (struct buffer *, ptrdiff_t);
static void free_buffer_text (struct buffer *b);
static struct Lisp_Overlay * copy_overlays (struct buffer *, struct Lisp_Overlay *);
static void modify_overlay (struct buffer *, ptrdiff_t, ptrdiff_t);
static Lisp_Object buffer_lisp_local_variables (struct buffer *, _Bool);

static void
CHECK_OVERLAY (Lisp_Object x)
{
  ((OVERLAYP (x)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (733), x));
}



static void
bset_abbrev_mode (struct buffer *b, Lisp_Object val)
{
  b->abbrev_mode_ = val;
}
static void
bset_abbrev_table (struct buffer *b, Lisp_Object val)
{
  b->abbrev_table_ = val;
}
static void
bset_auto_fill_function (struct buffer *b, Lisp_Object val)
{
  b->auto_fill_function_ = val;
}
static void
bset_auto_save_file_format (struct buffer *b, Lisp_Object val)
{
  b->auto_save_file_format_ = val;
}
static void
bset_auto_save_file_name (struct buffer *b, Lisp_Object val)
{
  b->auto_save_file_name_ = val;
}
static void
bset_backed_up (struct buffer *b, Lisp_Object val)
{
  b->backed_up_ = val;
}
static void
bset_begv_marker (struct buffer *b, Lisp_Object val)
{
  b->begv_marker_ = val;
}
static void
bset_bidi_display_reordering (struct buffer *b, Lisp_Object val)
{
  b->bidi_display_reordering_ = val;
}
static void
bset_buffer_file_coding_system (struct buffer *b, Lisp_Object val)
{
  b->buffer_file_coding_system_ = val;
}
static void
bset_case_fold_search (struct buffer *b, Lisp_Object val)
{
  b->case_fold_search_ = val;
}
static void
bset_ctl_arrow (struct buffer *b, Lisp_Object val)
{
  b->ctl_arrow_ = val;
}
static void
bset_cursor_in_non_selected_windows (struct buffer *b, Lisp_Object val)
{
  b->cursor_in_non_selected_windows_ = val;
}
static void
bset_cursor_type (struct buffer *b, Lisp_Object val)
{
  b->cursor_type_ = val;
}
static void
bset_display_table (struct buffer *b, Lisp_Object val)
{
  b->display_table_ = val;
}
static void
bset_extra_line_spacing (struct buffer *b, Lisp_Object val)
{
  b->extra_line_spacing_ = val;
}
static void
bset_file_format (struct buffer *b, Lisp_Object val)
{
  b->file_format_ = val;
}
static void
bset_file_truename (struct buffer *b, Lisp_Object val)
{
  b->file_truename_ = val;
}
static void
bset_fringe_cursor_alist (struct buffer *b, Lisp_Object val)
{
  b->fringe_cursor_alist_ = val;
}
static void
bset_fringe_indicator_alist (struct buffer *b, Lisp_Object val)
{
  b->fringe_indicator_alist_ = val;
}
static void
bset_fringes_outside_margins (struct buffer *b, Lisp_Object val)
{
  b->fringes_outside_margins_ = val;
}
static void
bset_header_line_format (struct buffer *b, Lisp_Object val)
{
  b->header_line_format_ = val;
}
static void
bset_indicate_buffer_boundaries (struct buffer *b, Lisp_Object val)
{
  b->indicate_buffer_boundaries_ = val;
}
static void
bset_indicate_empty_lines (struct buffer *b, Lisp_Object val)
{
  b->indicate_empty_lines_ = val;
}
static void
bset_invisibility_spec (struct buffer *b, Lisp_Object val)
{
  b->invisibility_spec_ = val;
}
static void
bset_left_fringe_width (struct buffer *b, Lisp_Object val)
{
  b->left_fringe_width_ = val;
}
static void
bset_major_mode (struct buffer *b, Lisp_Object val)
{
  b->major_mode_ = val;
}
static void
bset_mark (struct buffer *b, Lisp_Object val)
{
  b->mark_ = val;
}
static void
bset_minor_modes (struct buffer *b, Lisp_Object val)
{
  b->minor_modes_ = val;
}
static void
bset_mode_line_format (struct buffer *b, Lisp_Object val)
{
  b->mode_line_format_ = val;
}
static void
bset_mode_name (struct buffer *b, Lisp_Object val)
{
  b->mode_name_ = val;
}
static void
bset_name (struct buffer *b, Lisp_Object val)
{
  b->name_ = val;
}
static void
bset_overwrite_mode (struct buffer *b, Lisp_Object val)
{
  b->overwrite_mode_ = val;
}
static void
bset_pt_marker (struct buffer *b, Lisp_Object val)
{
  b->pt_marker_ = val;
}
static void
bset_right_fringe_width (struct buffer *b, Lisp_Object val)
{
  b->right_fringe_width_ = val;
}
static void
bset_save_length (struct buffer *b, Lisp_Object val)
{
  b->save_length_ = val;
}
static void
bset_scroll_bar_width (struct buffer *b, Lisp_Object val)
{
  b->scroll_bar_width_ = val;
}
static void
bset_scroll_bar_height (struct buffer *b, Lisp_Object val)
{
  b->scroll_bar_height_ = val;
}
static void
bset_scroll_down_aggressively (struct buffer *b, Lisp_Object val)
{
  b->scroll_down_aggressively_ = val;
}
static void
bset_scroll_up_aggressively (struct buffer *b, Lisp_Object val)
{
  b->scroll_up_aggressively_ = val;
}
static void
bset_selective_display (struct buffer *b, Lisp_Object val)
{
  b->selective_display_ = val;
}
static void
bset_selective_display_ellipses (struct buffer *b, Lisp_Object val)
{
  b->selective_display_ellipses_ = val;
}
static void
bset_vertical_scroll_bar_type (struct buffer *b, Lisp_Object val)
{
  b->vertical_scroll_bar_type_ = val;
}
static void
bset_horizontal_scroll_bar_type (struct buffer *b, Lisp_Object val)
{
  b->horizontal_scroll_bar_type_ = val;
}
static void
bset_word_wrap (struct buffer *b, Lisp_Object val)
{
  b->word_wrap_ = val;
}
static void
bset_zv_marker (struct buffer *b, Lisp_Object val)
{
  b->zv_marker_ = val;
}

void
nsberror (Lisp_Object spec)
{
  if (STRINGP (spec))
    error ("No buffer named %s", SDATA (spec));
  error ("Invalid buffer argument");
}

static struct Lisp_Subr _Alignas (8) Sbuffer_live_p = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_live_p }, 1, 1, "buffer-live-p", 0, 0}; Lisp_Object Fbuffer_live_p


  (Lisp_Object object)
{
  return ((BUFFERP (object) && (!((((XBUFFER (object))-> name_)) == (builtin_lisp_symbol (0)))))
   ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Sbuffer_list = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_list }, 0, 1, "buffer-list", 0, 0}; Lisp_Object Fbuffer_list




  (Lisp_Object frame)
{
  Lisp_Object general;
  general = Fmapcar (builtin_lisp_symbol (249), Vbuffer_alist);

  if (FRAMEP (frame))
    {
      Lisp_Object framelist, prevlist, tail;

      framelist = Fcopy_sequence ((((void) (0 && (FRAMEP (frame)))), (struct frame *) ((void *) (intptr_t) ((frame) - (Lisp_Vectorlike))))->buffer_list);
      prevlist = Fnreverse (Fcopy_sequence
       ((((void) (0 && (FRAMEP (frame)))), (struct frame *) ((void *) (intptr_t) ((frame) - (Lisp_Vectorlike))))->buried_buffer_list));



      tail = framelist;
      while ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 {
   general = Fdelq ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, general);
   tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr;
 }
      tail = prevlist;
      while ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
 {
   general = Fdelq ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car, general);
   tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr;
 }

      return (Fnconc) ((sizeof (((Lisp_Object []) {framelist, general, prevlist})) / sizeof (((Lisp_Object []) {framelist, general, prevlist}))[0]), ((Lisp_Object []) {framelist, general, prevlist}));
    }
  else
    return general;
}





static Lisp_Object
assoc_ignore_text_properties (register Lisp_Object key, Lisp_Object list)
{
  register Lisp_Object tail;
  for (tail = list; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      register Lisp_Object elt, tem;
      elt = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
      tem = Fstring_equal (Fcar (elt), key);
      if (!((tem) == (builtin_lisp_symbol (0))))
 return elt;
    }
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sget_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fget_buffer }, 1, 1, "get-buffer", 0, 0}; Lisp_Object Fget_buffer




  (register Lisp_Object buffer_or_name)
{
  if (BUFFERP (buffer_or_name))
    return buffer_or_name;
  CHECK_STRING (buffer_or_name);

  return Fcdr (assoc_ignore_text_properties (buffer_or_name, Vbuffer_alist));
}

static struct Lisp_Subr _Alignas (8) Sget_file_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fget_file_buffer }, 1, 1, "get-file-buffer", 0, 0}; Lisp_Object Fget_file_buffer




  (register Lisp_Object filename)
{
  register Lisp_Object tail, buf, handler;

  CHECK_STRING (filename);
  filename = Fexpand_file_name (filename, builtin_lisp_symbol (0));



  handler = Ffind_file_name_handler (filename, builtin_lisp_symbol (485));
  if (!((handler) == (builtin_lisp_symbol (0))))
    {
      Lisp_Object handled_buf = call2 (handler, builtin_lisp_symbol (485),
           filename);
      return BUFFERP (handled_buf) ? handled_buf : builtin_lisp_symbol (0);
    }

  for ((tail) = (Vbuffer_alist); ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && ((buf) = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr, 1)); (tail) = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      if (!STRINGP (((XBUFFER (buf))-> filename_))) continue;
      if (!((Fstring_equal (((XBUFFER (buf))-> filename_), filename)) == (builtin_lisp_symbol (0))))
 return buf;
    }
  return builtin_lisp_symbol (0);
}

Lisp_Object
get_truename_buffer (register Lisp_Object filename)
{
  register Lisp_Object tail, buf;

  for ((tail) = (Vbuffer_alist); ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && ((buf) = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr, 1)); (tail) = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      if (!STRINGP (((XBUFFER (buf))-> file_truename_))) continue;
      if (!((Fstring_equal (((XBUFFER (buf))-> file_truename_), filename)) == (builtin_lisp_symbol (0))))
 return buf;
    }
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sget_buffer_create = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fget_buffer_create }, 1, 1, "get-buffer-create", 0, 0}; Lisp_Object Fget_buffer_create
# 505 "buffer.c"
  (register Lisp_Object buffer_or_name)
{
  register Lisp_Object buffer, name;
  register struct buffer *b;

  buffer = Fget_buffer (buffer_or_name);
  if (!((buffer) == (builtin_lisp_symbol (0))))
    return buffer;

  if (SCHARS (buffer_or_name) == 0)
    error ("Empty string for buffer name is not allowed");

  b = allocate_buffer ();


  b->text = &b->own_text;
  b->base_buffer = ((void*)0);

  b->indirections = 0;

  b->window_count = 0;

  ((b)->text->gap_size) = 20;
  block_input ();


  alloc_buffer_text (b, ((b)->text->gap_size) + 1);
  unblock_input ();
  if (! ((b)->text->beg))
    buffer_memory_full (((b)->text->gap_size) + 1);

  b->pt = (1);
  b->begv = (1);
  b->zv = (1);
  b->pt_byte = ((1));
  b->begv_byte = ((1));
  b->zv_byte = ((1));

  ((b)->text->gpt) = (1);
  ((b)->text->gpt_byte) = ((1));

  ((b)->text->z) = (1);
  ((b)->text->z_byte) = ((1));
  ((b)->text->modiff) = 1;
  ((b)->text->chars_modiff) = 1;
  ((b)->text->overlay_modiff) = 1;
  ((b)->text->save_modiff) = 1;
  ((b)->text->compact) = 1;
  set_buffer_intervals (b, ((void*)0));
  ((b)->text->unchanged_modified) = 1;
  ((b)->text->overlay_unchanged_modified) = 1;
  ((b)->text->end_unchanged) = 0;
  ((b)->text->beg_unchanged) = 0;
  *(((b)->text->beg + (b)->text->gpt_byte - ((1)))) = *(((b)->text->beg + (b)->text->gap_size + (b)->text->z_byte - ((1)))) = 0;
  b->text->inhibit_shrinking = 0;
  b->text->redisplay = 0;

  b->newline_cache = 0;
  b->width_run_cache = 0;
  b->bidi_paragraph_cache = 0;
  bset_width_table (b, builtin_lisp_symbol (0));
  b->prevent_redisplay_optimizations_p = 1;



  bset_pt_marker (b, builtin_lisp_symbol (0));
  bset_begv_marker (b, builtin_lisp_symbol (0));
  bset_zv_marker (b, builtin_lisp_symbol (0));

  name = Fcopy_sequence (buffer_or_name);
  set_string_intervals (name, ((void*)0));
  bset_name (b, name);

  bset_undo_list (b, SREF (name, 0) != ' ' ? builtin_lisp_symbol (0) : builtin_lisp_symbol (901));

  reset_buffer (b);
  reset_buffer_local_variables (b, 1);

  bset_mark (b, Fmake_marker ());
  ((b)->text->markers) = ((void*)0);


  ((((buffer) = make_lisp_ptr (b, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  Vbuffer_alist = nconc2 (Vbuffer_alist, list1 (Fcons (name, buffer)));

  if (!((Vrun_hooks) == (builtin_lisp_symbol (0))))
    call1 (Vrun_hooks, builtin_lisp_symbol (223));

  return buffer;
}





static struct Lisp_Overlay *
copy_overlays (struct buffer *b, struct Lisp_Overlay *list)
{
  struct Lisp_Overlay *result = ((void*)0), *tail = ((void*)0);

  for (; list; list = list->next)
    {
      Lisp_Object overlay, start, end;
      struct Lisp_Marker *m;

      ((void) (0 && (((((enum Lisp_Type) ((list->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (list->start) == Lisp_Misc_Marker))));
      m = XMARKER (list->start);
      start = build_marker (b, m->charpos, m->bytepos);
      XMARKER (start)->insertion_type = m->insertion_type;

      ((void) (0 && (((((enum Lisp_Type) ((list->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (list->end) == Lisp_Misc_Marker))));
      m = XMARKER (list->end);
      end = build_marker (b, m->charpos, m->bytepos);
      XMARKER (end)->insertion_type = m->insertion_type;

      overlay = build_overlay (start, end, Fcopy_sequence (list->plist));
      if (tail)
 tail = tail->next = XOVERLAY (overlay);
      else
 result = tail = XOVERLAY (overlay);
    }

  return result;
}



static void
set_buffer_overlays_before (struct buffer *b, struct Lisp_Overlay *o)
{
  b->overlays_before = o;
}

static void
set_buffer_overlays_after (struct buffer *b, struct Lisp_Overlay *o)
{
  b->overlays_after = o;
}
# 651 "buffer.c"
static void
clone_per_buffer_values (struct buffer *from, struct buffer *to)
{
  int offset;

  for (offset = __builtin_offsetof(struct buffer, name_); offset <= __builtin_offsetof(struct buffer, cursor_in_non_selected_windows_); offset += word_size)
    {
      Lisp_Object obj;


      if (offset == __builtin_offsetof(struct buffer, name_))
 continue;

      obj = per_buffer_value (from, offset);
      if (((((enum Lisp_Type) ((obj) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (obj) == Lisp_Misc_Marker) && XMARKER (obj)->buffer == from)
 {
   struct Lisp_Marker *m = XMARKER (obj);

   obj = build_marker (to, m->charpos, m->bytepos);
   XMARKER (obj)->insertion_type = m->insertion_type;
 }

      set_per_buffer_value (to, offset, obj);
    }

  memcpy (to->local_flags, from->local_flags, sizeof to->local_flags);

  set_buffer_overlays_before (to, copy_overlays (to, from->overlays_before));
  set_buffer_overlays_after (to, copy_overlays (to, from->overlays_after));



  bset_local_var_alist (to, buffer_lisp_local_variables (from, 1));
}





static void
record_buffer_markers (struct buffer *b)
{
  if (! ((((b)-> pt_marker_)) == (builtin_lisp_symbol (0))))
    {
      Lisp_Object buffer;

      ((void) (0 && (!((((b)-> begv_marker_)) == (builtin_lisp_symbol (0))))));
      ((void) (0 && (!((((b)-> zv_marker_)) == (builtin_lisp_symbol (0))))));

      ((((buffer) = make_lisp_ptr (b, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
      set_marker_both (((b)-> pt_marker_), buffer, b->pt, b->pt_byte);
      set_marker_both (((b)-> begv_marker_), buffer, b->begv, b->begv_byte);
      set_marker_both (((b)-> zv_marker_), buffer, b->zv, b->zv_byte);
    }
}





static void
fetch_buffer_markers (struct buffer *b)
{
  if (! ((((b)-> pt_marker_)) == (builtin_lisp_symbol (0))))
    {
      Lisp_Object m;

      ((void) (0 && (!((((b)-> begv_marker_)) == (builtin_lisp_symbol (0))))));
      ((void) (0 && (!((((b)-> zv_marker_)) == (builtin_lisp_symbol (0))))));

      m = ((b)-> pt_marker_);
      ((b)->pt = (marker_position (m)), (b)->pt_byte = (marker_byte_position (m)));

      m = ((b)-> begv_marker_);
      ((b)->begv = (marker_position (m)), (b)->begv_byte = (marker_byte_position (m)));

      m = ((b)-> zv_marker_);
      ((b)->zv = (marker_position (m)), (b)->zv_byte = (marker_byte_position (m)));
    }
}


static struct Lisp_Subr _Alignas (8) Smake_indirect_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Fmake_indirect_buffer }, 2, 3, "make-indirect-buffer", "bMake indirect buffer (to buffer): \nBName of indirect buffer: ", 0}; Lisp_Object Fmake_indirect_buffer
# 742 "buffer.c"
  (Lisp_Object base_buffer, Lisp_Object name, Lisp_Object clone)
{
  Lisp_Object buf, tem;
  struct buffer *b;

  CHECK_STRING (name);
  buf = Fget_buffer (name);
  if (!((buf) == (builtin_lisp_symbol (0))))
    error ("Buffer name `%s' is in use", SDATA (name));

  tem = base_buffer;
  base_buffer = Fget_buffer (base_buffer);
  if (((base_buffer) == (builtin_lisp_symbol (0))))
    error ("No such buffer: `%s'", SDATA (tem));
  if (!(!((((XBUFFER (base_buffer))-> name_)) == (builtin_lisp_symbol (0)))))
    error ("Base buffer has been killed");

  if (SCHARS (name) == 0)
    error ("Empty string for buffer name is not allowed");

  b = allocate_buffer ();



  b->base_buffer = (XBUFFER (base_buffer)->base_buffer
      ? XBUFFER (base_buffer)->base_buffer
      : XBUFFER (base_buffer));


  b->text = b->base_buffer->text;

  b->indirections = -1;

  b->base_buffer->indirections++;

  b->window_count = -1;

  b->pt = b->base_buffer->pt;
  b->begv = b->base_buffer->begv;
  b->zv = b->base_buffer->zv;
  b->pt_byte = b->base_buffer->pt_byte;
  b->begv_byte = b->base_buffer->begv_byte;
  b->zv_byte = b->base_buffer->zv_byte;

  b->newline_cache = 0;
  b->width_run_cache = 0;
  b->bidi_paragraph_cache = 0;
  bset_width_table (b, builtin_lisp_symbol (0));

  name = Fcopy_sequence (name);
  set_string_intervals (name, ((void*)0));
  bset_name (b, name);


  bset_undo_list (b, ((b->base_buffer)-> undo_list_));

  reset_buffer (b);
  reset_buffer_local_variables (b, 1);


  ((((buf) = make_lisp_ptr (b, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buf) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  Vbuffer_alist = nconc2 (Vbuffer_alist, list1 (Fcons (name, buf)));

  bset_mark (b, Fmake_marker ());


  bset_enable_multibyte_characters
    (b, ((b->base_buffer)-> enable_multibyte_characters_));


  if (((((b->base_buffer)-> pt_marker_)) == (builtin_lisp_symbol (0))))
    {
      ((void) (0 && (((((b->base_buffer)-> begv_marker_)) == (builtin_lisp_symbol (0))))));
      ((void) (0 && (((((b->base_buffer)-> zv_marker_)) == (builtin_lisp_symbol (0))))));

      bset_pt_marker (b->base_buffer,
        build_marker (b->base_buffer, b->base_buffer->pt,
        b->base_buffer->pt_byte));

      bset_begv_marker (b->base_buffer,
   build_marker (b->base_buffer, b->base_buffer->begv,
          b->base_buffer->begv_byte));

      bset_zv_marker (b->base_buffer,
        build_marker (b->base_buffer, b->base_buffer->zv,
        b->base_buffer->zv_byte));

      XMARKER (((b->base_buffer)-> zv_marker_))->insertion_type = 1;
    }

  if (((clone) == (builtin_lisp_symbol (0))))
    {

      bset_pt_marker (b, build_marker (b, b->pt, b->pt_byte));
      bset_begv_marker (b, build_marker (b, b->begv, b->begv_byte));
      bset_zv_marker (b, build_marker (b, b->zv, b->zv_byte));
      XMARKER (((b)-> zv_marker_))->insertion_type = 1;
    }
  else
    {
      struct buffer *old_b = current_buffer;

      clone_per_buffer_values (b->base_buffer, b);
      bset_filename (b, builtin_lisp_symbol (0));
      bset_file_truename (b, builtin_lisp_symbol (0));
      bset_display_count (b, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
      bset_backed_up (b, builtin_lisp_symbol (0));
      bset_auto_save_file_name (b, builtin_lisp_symbol (0));
      set_buffer_internal_1 (b);
      Fset (intern ("buffer-save-without-query"), builtin_lisp_symbol (0));
      Fset (intern ("buffer-file-number"), builtin_lisp_symbol (0));
      Fset (intern ("buffer-stale-function"), builtin_lisp_symbol (0));
      set_buffer_internal_1 (old_b);
    }


  if (!((Vrun_hooks) == (builtin_lisp_symbol (0))))
    call1 (Vrun_hooks, builtin_lisp_symbol (223));

  return buf;
}



static void
drop_overlay (struct buffer *b, struct Lisp_Overlay *ov)
{
  ((void) (0 && (b == XBUFFER (Fmarker_buffer (ov->start)))));
  modify_overlay (b, marker_position (ov->start),
    marker_position (ov->end));
  unchain_marker (XMARKER (ov->start));
  unchain_marker (XMARKER (ov->end));

}



void
delete_all_overlays (struct buffer *b)
{
  struct Lisp_Overlay *ov, *next;



  for (ov = b->overlays_before; ov; ov = next)
    {
      drop_overlay (b, ov);
      next = ov->next;
      ov->next = ((void*)0);
    }

  for (ov = b->overlays_after; ov; ov = next)
    {
      drop_overlay (b, ov);
      next = ov->next;
      ov->next = ((void*)0);
    }

  set_buffer_overlays_before (b, ((void*)0));
  set_buffer_overlays_after (b, ((void*)0));
}
# 911 "buffer.c"
void
reset_buffer (register struct buffer *b)
{
  bset_filename (b, builtin_lisp_symbol (0));
  bset_file_truename (b, builtin_lisp_symbol (0));
  bset_directory (b, current_buffer ? ((current_buffer)-> directory_) : builtin_lisp_symbol (0));
  b->modtime = make_timespec (0, (-2));
  b->modtime_size = -1;
  ((((b)-> save_length_)) = make_natnum (0));
  b->last_window_start = 1;

  b->clip_changed = 0;
  b->prevent_redisplay_optimizations_p = 1;
  bset_backed_up (b, builtin_lisp_symbol (0));
  ((b)->auto_save_modified) = 0;
  b->auto_save_failure_time = 0;
  bset_auto_save_file_name (b, builtin_lisp_symbol (0));
  bset_read_only (b, builtin_lisp_symbol (0));
  set_buffer_overlays_before (b, ((void*)0));
  set_buffer_overlays_after (b, ((void*)0));
  b->overlay_center = (1);
  bset_mark_active (b, builtin_lisp_symbol (0));
  bset_point_before_scroll (b, builtin_lisp_symbol (0));
  bset_file_format (b, builtin_lisp_symbol (0));
  bset_auto_save_file_format (b, builtin_lisp_symbol (901));
  bset_last_selected_window (b, builtin_lisp_symbol (0));
  bset_display_count (b, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_display_time (b, builtin_lisp_symbol (0));
  bset_enable_multibyte_characters
    (b, ((&buffer_defaults)-> enable_multibyte_characters_));
  bset_cursor_type (b, ((&buffer_defaults)-> cursor_type_));
  bset_extra_line_spacing (b, ((&buffer_defaults)-> extra_line_spacing_));

  b->display_error_modiff = 0;
}
# 955 "buffer.c"
static void
reset_buffer_local_variables (struct buffer *b, _Bool permanent_too)
{
  int offset, i;





  bset_major_mode (b, builtin_lisp_symbol (479));
  bset_keymap (b, builtin_lisp_symbol (0));
  bset_mode_name (b, QSFundamental);
  bset_minor_modes (b, builtin_lisp_symbol (0));



  if (! (CHAR_TABLE_P (XCHAR_TABLE (Vascii_downcase_table)->extras[0])
  && CHAR_TABLE_P (XCHAR_TABLE (Vascii_downcase_table)->extras[1])
  && CHAR_TABLE_P (XCHAR_TABLE (Vascii_downcase_table)->extras[2])))
    Fset_standard_case_table (Vascii_downcase_table);

  bset_downcase_table (b, Vascii_downcase_table);
  bset_upcase_table (b, XCHAR_TABLE (Vascii_downcase_table)->extras[0]);
  bset_case_canon_table (b, XCHAR_TABLE (Vascii_downcase_table)->extras[1]);
  bset_case_eqv_table (b, XCHAR_TABLE (Vascii_downcase_table)->extras[2]);
  bset_invisibility_spec (b, builtin_lisp_symbol (901));


  if (permanent_too)
    bset_local_var_alist (b, builtin_lisp_symbol (0));
  else
    {
      Lisp_Object tmp, prop, last = builtin_lisp_symbol (0);
      for (tmp = ((b)-> local_var_alist_); (((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tmp = (((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->u.cdr)
 if (!((prop = Fget ((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->car) - (Lisp_Cons))))->car, builtin_lisp_symbol (747))) == (builtin_lisp_symbol (0))))
   {

     last = tmp;
     if (((prop) == (builtin_lisp_symbol (748))))
       {


  Lisp_Object list, newlist;
  list = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr;
  if (!(((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
    newlist = list;
  else
    for (newlist = builtin_lisp_symbol (0); (((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); list = (((void) (0 && ((((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((list) - (Lisp_Cons))))->u.cdr)
      {
        Lisp_Object elt = (((void) (0 && ((((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((list) - (Lisp_Cons))))->car;



        if (! (((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)
     || ((elt) == (builtin_lisp_symbol (901)))
     || !((Fget (elt, builtin_lisp_symbol (748))) == (builtin_lisp_symbol (0))))
   newlist = Fcons (elt, newlist);
      }
  XSETCDR ((((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->car, Fnreverse (newlist));
       }
   }

 else if (((last) == (builtin_lisp_symbol (0))))
   bset_local_var_alist (b, (((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->u.cdr);
 else
   XSETCDR (last, (((void) (0 && ((((enum Lisp_Type) ((tmp) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tmp) - (Lisp_Cons))))->u.cdr);
    }

  for (i = 0; i < last_per_buffer_idx; ++i)
    if (permanent_too || buffer_permanent_local_flags[i] == 0)
      do { if ((i) < 0 || (i) >= last_per_buffer_idx) emacs_abort (); (b)->local_flags[i] = (0); } while (0);


  for (offset = __builtin_offsetof(struct buffer, name_); offset <= __builtin_offsetof(struct buffer, cursor_in_non_selected_windows_); offset += word_size)
    {
      int idx = ((*(Lisp_Object *)((offset) + (char *) &buffer_local_flags)) >> INTTYPEBITS);
      if ((idx > 0
    && (permanent_too
        || buffer_permanent_local_flags[idx] == 0)))
 set_per_buffer_value (b, offset, per_buffer_default (offset));
    }
}





static struct Lisp_Subr _Alignas (8) Sgenerate_new_buffer_name = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fgenerate_new_buffer_name }, 1, 2, "generate-new-buffer-name", 0, 0}; Lisp_Object Fgenerate_new_buffer_name
# 1054 "buffer.c"
  (register Lisp_Object name, Lisp_Object ignore)
{
  register Lisp_Object gentemp, tem, tem2;
  ptrdiff_t count;
  char number[(((((sizeof (ptrdiff_t) * 8 - (! ((__typeof__ (ptrdiff_t)) 0 < (__typeof__ (ptrdiff_t)) -1))) * 146 + 484) / 485) + (! ((__typeof__ (ptrdiff_t)) 0 < (__typeof__ (ptrdiff_t)) -1))) + 1) + sizeof "<>"];

  CHECK_STRING (name);

  tem = Fstring_equal (name, ignore);
  if (!((tem) == (builtin_lisp_symbol (0))))
    return name;
  tem = Fget_buffer (name);
  if (((tem) == (builtin_lisp_symbol (0))))
    return name;

  if (!strncmp (SSDATA (name), " ", 1))
    {

      tem2 = concat2 (name, make_formatted_string
        (number, "-%""l""d",
         ((Frandom (((EMACS_INT) (((EMACS_UINT) (999999) << INTTYPEBITS) + Lisp_Int0)))) >> INTTYPEBITS)));
      tem = Fget_buffer (tem2);
      if (((tem) == (builtin_lisp_symbol (0))))
 return tem2;
    }
  else
    tem2 = name;

  count = 1;
  while (1)
    {
      gentemp = concat2 (tem2, make_formatted_string
    (number, "<%""l""d>", ++count));
      tem = Fstring_equal (gentemp, ignore);
      if (!((tem) == (builtin_lisp_symbol (0))))
 return gentemp;
      tem = Fget_buffer (gentemp);
      if (((tem) == (builtin_lisp_symbol (0))))
 return gentemp;
    }
}


static struct Lisp_Subr _Alignas (8) Sbuffer_name = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_name }, 0, 1, "buffer-name", 0, 0}; Lisp_Object Fbuffer_name



  (register Lisp_Object buffer)
{
  return ((decode_buffer (buffer))-> name_);
}

static struct Lisp_Subr _Alignas (8) Sbuffer_file_name = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_file_name }, 0, 1, "buffer-file-name", 0, 0}; Lisp_Object Fbuffer_file_name


  (register Lisp_Object buffer)
{
  return ((decode_buffer (buffer))-> filename_);
}

static struct Lisp_Subr _Alignas (8) Sbuffer_base_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_base_buffer }, 0, 1, "buffer-base-buffer", 0, 0}; Lisp_Object Fbuffer_base_buffer




  (register Lisp_Object buffer)
{
  struct buffer *base = decode_buffer (buffer)->base_buffer;
  return base ? (((((buffer) = make_lisp_ptr (base, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS))))))), buffer) : builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sbuffer_local_value = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Fbuffer_local_value }, 2, 2, "buffer-local-value", 0, 0}; Lisp_Object Fbuffer_local_value




  (register Lisp_Object variable, register Lisp_Object buffer)
{
  register Lisp_Object result = buffer_local_value (variable, buffer);

  if (((result) == (builtin_lisp_symbol (957))))
    xsignal1 (builtin_lisp_symbol (1007), variable);

  return result;
}





Lisp_Object
buffer_local_value (Lisp_Object variable, Lisp_Object buffer)
{
  register struct buffer *buf;
  register Lisp_Object result;
  struct Lisp_Symbol *sym;

  (((((enum Lisp_Type) ((variable) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (897), variable));
  CHECK_BUFFER (buffer);
  buf = XBUFFER (buffer);
  sym = (((void) (0 && ((((enum Lisp_Type) ((variable) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (variable) - Lisp_Symbol + (char *) lispsym));

 start:
  switch (sym->redirect)
    {
    case SYMBOL_VARALIAS: sym = indirect_variable (sym); goto start;
    case SYMBOL_PLAINVAL: result = (((void) (0 && ((sym)->redirect == SYMBOL_PLAINVAL))), (sym)->val.value); break;
    case SYMBOL_LOCALIZED:
      {
 struct Lisp_Buffer_Local_Value *blv = SYMBOL_BLV (sym);
 ((variable) = make_lisp_symbol (sym));
 result = Fassoc (variable, ((buf)-> local_var_alist_));
 if (!((result) == (builtin_lisp_symbol (0))))
   {
     if (blv->fwd)
       {
  Lisp_Object current_alist_element = blv->valcell;






  XSETCDR (current_alist_element,
    do_symval_forwarding (blv->fwd));
       }

     result = (((void) (0 && ((((enum Lisp_Type) ((result) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((result) - (Lisp_Cons))))->u.cdr;
   }
 else
   result = Fdefault_value (variable);
 break;
      }
    case SYMBOL_FORWARDED:
      {
 union Lisp_Fwd *fwd = SYMBOL_FWD (sym);
 if (BUFFER_OBJFWDP (fwd))
   result = per_buffer_value (buf, XBUFFER_OBJFWD (fwd)->offset);
 else
   result = Fdefault_value (variable);
 break;
      }
    default: emacs_abort ();
    }

  return result;
}







static Lisp_Object
buffer_lisp_local_variables (struct buffer *buf, _Bool clone)
{
  Lisp_Object result = builtin_lisp_symbol (0);
  Lisp_Object tail;
  for (tail = ((buf)-> local_var_alist_); (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      Lisp_Object val, elt;

      elt = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;






      val = find_symbol_value ((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car);

      if (buf != current_buffer)
 val = (((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->u.cdr;

      result = Fcons (!clone && ((val) == (builtin_lisp_symbol (957)))
        ? (((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car
        : Fcons ((((void) (0 && ((((enum Lisp_Type) ((elt) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((elt) - (Lisp_Cons))))->car, val),
        result);
    }

  return result;
}

static struct Lisp_Subr _Alignas (8) Sbuffer_local_variables = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_local_variables }, 0, 1, "buffer-local-variables", 0, 0}; Lisp_Object Fbuffer_local_variables






  (Lisp_Object buffer)
{
  struct buffer *buf = decode_buffer (buffer);
  Lisp_Object result = buffer_lisp_local_variables (buf, 0);


  {
    int offset, idx;

    for (offset = __builtin_offsetof(struct buffer, name_); offset <= __builtin_offsetof(struct buffer, cursor_in_non_selected_windows_); offset += word_size)
      {
 idx = ((*(Lisp_Object *)((offset) + (char *) &buffer_local_flags)) >> INTTYPEBITS);
 if ((idx == -1 || (((idx) < 0 || idx >= last_per_buffer_idx) ? (emacs_abort (), 0) : ((buf)->local_flags[idx] != 0)))
     && (((enum Lisp_Type) (((*(Lisp_Object *)((offset) + (char *) &buffer_local_symbols))) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol))
   {
     Lisp_Object sym = (*(Lisp_Object *)((offset) + (char *) &buffer_local_symbols));
     Lisp_Object val = per_buffer_value (buf, offset);
     result = Fcons (((val) == (builtin_lisp_symbol (957))) ? sym : Fcons (sym, val),
       result);
   }
      }
  }

  return result;
}

static struct Lisp_Subr _Alignas (8) Sbuffer_modified_p = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_modified_p }, 0, 1, "buffer-modified-p", 0, 0}; Lisp_Object Fbuffer_modified_p



  (Lisp_Object buffer)
{
  struct buffer *buf = decode_buffer (buffer);
  return ((buf)->text->save_modiff) < ((buf)->text->modiff) ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sforce_mode_line_update = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fforce_mode_line_update }, 0, 1, "force-mode-line-update", 0, 0}; Lisp_Object Fforce_mode_line_update





     (Lisp_Object all)
{
  if (!((all) == (builtin_lisp_symbol (0))))
    {
      update_mode_lines = 10;

      current_buffer->prevent_redisplay_optimizations_p = 1;
    }
  else if (buffer_window_count (current_buffer))
    {
      bset_update_mode_line (current_buffer);
      current_buffer->prevent_redisplay_optimizations_p = 1;
    }
  return all;
}

static struct Lisp_Subr _Alignas (8) Sset_buffer_modified_p = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fset_buffer_modified_p }, 1, 1, "set-buffer-modified-p", 0, 0}; Lisp_Object Fset_buffer_modified_p



  (Lisp_Object flag)
{
  Frestore_buffer_modified_p (flag);
# 1322 "buffer.c"
  return Fforce_mode_line_update (builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Srestore_buffer_modified_p = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Frestore_buffer_modified_p }, 1, 1, "restore-buffer-modified-p", 0, 0}; Lisp_Object Frestore_buffer_modified_p




  (Lisp_Object flag)
{
  Lisp_Object fn;




  struct buffer *b = current_buffer->base_buffer
    ? current_buffer->base_buffer
    : current_buffer;

  fn = ((b)-> file_truename_);

  if (!((fn) == (builtin_lisp_symbol (0))) && ! ((((b)-> filename_)) == (builtin_lisp_symbol (0))))
    {
      _Bool already = (current_buffer->text->save_modiff) < (current_buffer->text->modiff);
      if (!already && !((flag) == (builtin_lisp_symbol (0))))
 lock_file (fn);
      else if (already && ((flag) == (builtin_lisp_symbol (0))))
 unlock_file (fn);
    }
# 1362 "buffer.c"
  (current_buffer->text->save_modiff) = (((flag) == (builtin_lisp_symbol (0)))

   ? (current_buffer->text->modiff)

   : (current_buffer->text->save_modiff) < (current_buffer->text->modiff) ? (current_buffer->text->save_modiff)



   : (current_buffer->text->modiff)++);

  return flag;
}

static struct Lisp_Subr _Alignas (8) Sbuffer_modified_tick = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_modified_tick }, 0, 1, "buffer-modified-tick", 0, 0}; Lisp_Object Fbuffer_modified_tick





  (register Lisp_Object buffer)
{
  return ((EMACS_INT) (((EMACS_UINT) (((decode_buffer (buffer))->text->modiff)) << INTTYPEBITS) + Lisp_Int0));
}

static struct Lisp_Subr _Alignas (8) Sbuffer_chars_modified_tick = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_chars_modified_tick }, 0, 1, "buffer-chars-modified-tick", 0, 0}; Lisp_Object Fbuffer_chars_modified_tick
# 1396 "buffer.c"
  (register Lisp_Object buffer)
{
  return ((EMACS_INT) (((EMACS_UINT) (((decode_buffer (buffer))->text->chars_modiff)) << INTTYPEBITS) + Lisp_Int0));
}

static struct Lisp_Subr _Alignas (8) Srename_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Frename_buffer }, 1, 2, "rename-buffer", "(list (read-string \"Rename buffer (to new name): \" 	      nil 'buffer-name-history (buffer-name (current-buffer))) 	      current-prefix-arg)", 0}; Lisp_Object Frename_buffer
# 1413 "buffer.c"
  (register Lisp_Object newname, Lisp_Object unique)
{
  register Lisp_Object tem, buf;

  CHECK_STRING (newname);

  if (SCHARS (newname) == 0)
    error ("Empty string is invalid as a buffer name");

  tem = Fget_buffer (newname);
  if (!((tem) == (builtin_lisp_symbol (0))))
    {




      if (((unique) == (builtin_lisp_symbol (0))) && XBUFFER (tem) == current_buffer)
 return ((current_buffer)-> name_);
      if (!((unique) == (builtin_lisp_symbol (0))))
 newname = Fgenerate_new_buffer_name (newname, ((current_buffer)-> name_));
      else
 error ("Buffer name `%s' is in use", SDATA (newname));
    }

  bset_name (current_buffer, newname);



  update_mode_lines = 11;

  ((((buf) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buf) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  Fsetcar (Frassq (buf, Vbuffer_alist), newname);
  if (((((current_buffer)-> filename_)) == (builtin_lisp_symbol (0)))
      && !((((current_buffer)-> auto_save_file_name_)) == (builtin_lisp_symbol (0))))
    call0 (intern ("rename-auto-save-file"));


  if (!((Vrun_hooks) == (builtin_lisp_symbol (0))))
    call1 (Vrun_hooks, builtin_lisp_symbol (223));


  return ((current_buffer)-> name_);
}



static _Bool
candidate_buffer (Lisp_Object b, Lisp_Object buffer)
{
  return (BUFFERP (b) && !((b) == (buffer))
   && (!((((XBUFFER (b))-> name_)) == (builtin_lisp_symbol (0))))
   && !(SREF (((XBUFFER (b))-> name_), 0) == ' '));
}

static struct Lisp_Subr _Alignas (8) Sother_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Fother_buffer }, 0, 3, "other-buffer", 0, 0}; Lisp_Object Fother_buffer
# 1478 "buffer.c"
  (Lisp_Object buffer, Lisp_Object visible_ok, Lisp_Object frame)
{
  struct frame *f = decode_live_frame (frame);
  Lisp_Object tail = f->buffer_list, pred = f->buffer_predicate;
  Lisp_Object buf, notsogood = builtin_lisp_symbol (0);


  for (; (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      buf = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car;
      if (candidate_buffer (buf, buffer)


   && (((pred) == (builtin_lisp_symbol (0))) || !((call1 (pred, buf)) == (builtin_lisp_symbol (0)))))
 {
   if (!((visible_ok) == (builtin_lisp_symbol (0)))
       || ((Fget_buffer_window (buf, builtin_lisp_symbol (1005))) == (builtin_lisp_symbol (0))))
     return buf;
   else if (((notsogood) == (builtin_lisp_symbol (0))))
     notsogood = buf;
 }
    }


  for ((tail) = (Vbuffer_alist); ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && ((buf) = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr, 1)); (tail) = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    {
      if (candidate_buffer (buf, buffer)


   && (((pred) == (builtin_lisp_symbol (0))) || !((call1 (pred, buf)) == (builtin_lisp_symbol (0)))))
 {
   if (!((visible_ok) == (builtin_lisp_symbol (0)))
       || ((Fget_buffer_window (buf, builtin_lisp_symbol (1005))) == (builtin_lisp_symbol (0))))
     return buf;
   else if (((notsogood) == (builtin_lisp_symbol (0))))
     notsogood = buf;
 }
    }

  if (!((notsogood) == (builtin_lisp_symbol (0))))
    return notsogood;
  else
    {
      Lisp_Object scratch = (USE_STACK_STRING ? (make_lisp_ptr ((&(union Aligned_String) {{strlen ("*scratch*"), -1, 0, (unsigned char *) ("*scratch*")}}.s), Lisp_String)) : build_string (("*scratch*")));
      buf = Fget_buffer (scratch);
      if (((buf) == (builtin_lisp_symbol (0))))
 {
   buf = Fget_buffer_create (scratch);
   Fset_buffer_major_mode (buf);
 }
      return buf;
    }
}





Lisp_Object
other_buffer_safely (Lisp_Object buffer)
{
  Lisp_Object tail, buf;

  for ((tail) = (Vbuffer_alist); ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && ((buf) = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) - (Lisp_Cons))))->u.cdr, 1)); (tail) = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
    if (candidate_buffer (buf, buffer))
      return buf;

  Lisp_Object scratch = (USE_STACK_STRING ? (make_lisp_ptr ((&(union Aligned_String) {{strlen ("*scratch*"), -1, 0, (unsigned char *) ("*scratch*")}}.s), Lisp_String)) : build_string (("*scratch*")));
  buf = Fget_buffer (scratch);
  if (((buf) == (builtin_lisp_symbol (0))))
    {
      buf = Fget_buffer_create (scratch);
      Fset_buffer_major_mode (buf);
    }

  return buf;
}

static struct Lisp_Subr _Alignas (8) Sbuffer_enable_undo = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_enable_undo }, 0, 1, "buffer-enable-undo", "", 0}; Lisp_Object Fbuffer_enable_undo



  (register Lisp_Object buffer)
{
  Lisp_Object real_buffer;

  if (((buffer) == (builtin_lisp_symbol (0))))
    ((((real_buffer) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((real_buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  else
    {
      real_buffer = Fget_buffer (buffer);
      if (((real_buffer) == (builtin_lisp_symbol (0))))
 nsberror (buffer);
    }

  if (((((XBUFFER (real_buffer))-> undo_list_)) == (builtin_lisp_symbol (901))))
    bset_undo_list (XBUFFER (real_buffer), builtin_lisp_symbol (0));

  return builtin_lisp_symbol (0);
}



void
compact_buffer (struct buffer *buffer)
{
  do { if ((!((((buffer)-> name_)) == (builtin_lisp_symbol (0))))) { if (buffer->base_buffer) { ((void) (0 && (buffer->indirections == -1))); ((void) (0 && (buffer->base_buffer->indirections > 0))); } else ((void) (0 && (buffer->indirections >= 0))); } } while (0);



  if ((!((((buffer)-> name_)) == (builtin_lisp_symbol (0))))
      && (buffer->base_buffer == ((void*)0))
      && (((buffer)->text->compact) != ((buffer)->text->modiff)))
    {




      if (!((((buffer)-> undo_list_)) == (builtin_lisp_symbol (901))))
 truncate_undo_list (buffer);


      if (!buffer->text->inhibit_shrinking)
 {



   ptrdiff_t size = clip_to_bounds (20,
        ((buffer)->text->z_byte) / 10,
        2000);
   if (((buffer)->text->gap_size) > size)
     make_gap_1 (buffer, -(((buffer)->text->gap_size) - size));
 }
      ((buffer)->text->compact) = ((buffer)->text->modiff);
    }
}

static struct Lisp_Subr _Alignas (8) Skill_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fkill_buffer }, 0, 1, "kill-buffer", "bKill buffer: ", 0}; Lisp_Object Fkill_buffer
# 1631 "buffer.c"
  (Lisp_Object buffer_or_name)
{
  Lisp_Object buffer;
  struct buffer *b;
  Lisp_Object tem;
  struct Lisp_Marker *m;

  if (((buffer_or_name) == (builtin_lisp_symbol (0))))
    buffer = Fcurrent_buffer ();
  else
    buffer = Fget_buffer (buffer_or_name);
  if (((buffer) == (builtin_lisp_symbol (0))))
    nsberror (buffer_or_name);

  b = XBUFFER (buffer);


  if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
    return builtin_lisp_symbol (0);


  {
    ptrdiff_t count = SPECPDL_INDEX ();

    record_unwind_protect (save_excursion_restore, save_excursion_save ());
    set_buffer_internal (b);



    tem = (Frun_hook_with_args_until_failure) ((sizeof (((Lisp_Object []) {builtin_lisp_symbol (593)})) / sizeof (((Lisp_Object []) {builtin_lisp_symbol (593)}))[0]), ((Lisp_Object []) {builtin_lisp_symbol (593)}));

    if (((tem) == (builtin_lisp_symbol (0))))
      return unbind_to (count, builtin_lisp_symbol (0));


    if ((((globals.f_Vexecuting_kbd_macro) == (builtin_lisp_symbol (0))) && !noninteractive) && !((((b)-> filename_)) == (builtin_lisp_symbol (0)))
 && ((b)->text->modiff) > ((b)->text->save_modiff))
      {
 Lisp_Object format = (USE_STACK_STRING ? (make_lisp_ptr ((&(union Aligned_String) {{strlen ("Buffer %s modified; kill anyway? "), -1, 0, (unsigned char *) ("Buffer %s modified; kill anyway? ")}}.s), Lisp_String)) : build_string (("Buffer %s modified; kill anyway? ")));
 tem = do_yes_or_no_p ((Fformat) ((sizeof (((Lisp_Object []) {format, ((b)-> name_)})) / sizeof (((Lisp_Object []) {format, ((b)-> name_)}))[0]), ((Lisp_Object []) {format, ((b)-> name_)})));
 if (((tem) == (builtin_lisp_symbol (0))))
   return unbind_to (count, builtin_lisp_symbol (0));
      }


    if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
      return unbind_to (count, builtin_lisp_symbol (901));


    run_hook (builtin_lisp_symbol (592));
    unbind_to (count, builtin_lisp_symbol (0));
  }


  if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
    return builtin_lisp_symbol (901);






  if (((buffer) == (XWINDOW (minibuf_window)->contents)))
    return builtin_lisp_symbol (0);





  if (!b->base_buffer && b->indirections > 0)
    {
      struct buffer *other;

      for ((other) = all_buffers; (other); (other) = (other)->next)
 if (other->base_buffer == b)
   {
     Lisp_Object buf;
     ((((buf) = make_lisp_ptr (other, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buf) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
     Fkill_buffer (buf);
   }


      if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
 return builtin_lisp_symbol (901);
    }





  replace_buffer_in_windows (buffer);


  if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
    return builtin_lisp_symbol (901);



  if (b == current_buffer)
    {
      tem = Fother_buffer (buffer, builtin_lisp_symbol (0), builtin_lisp_symbol (0));
      Fset_buffer (tem);
      if (b == current_buffer)
 return builtin_lisp_symbol (0);
    }



  ((((tem) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((tem) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  if (((tem) == (XWINDOW (minibuf_window)->contents))
      && ((buffer) == (Fother_buffer (buffer, builtin_lisp_symbol (0), builtin_lisp_symbol (0)))))
    return builtin_lisp_symbol (0);




  unlock_buffer (b);

  kill_buffer_processes (buffer);
  kill_buffer_xwidgets (buffer);



  if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
    return builtin_lisp_symbol (901);



  frames_discard_buffer (buffer);

  clear_charpos_cache (b);

  tem = globals.f_Vinhibit_quit;
  globals.f_Vinhibit_quit = builtin_lisp_symbol (901);

  Vbuffer_alist = Fdelq (Frassq (buffer, Vbuffer_alist), Vbuffer_alist);

  replace_buffer_in_windows_safely (buffer);
  globals.f_Vinhibit_quit = tem;



  if (STRINGP (((b)-> auto_save_file_name_))
      && ((b)->auto_save_modified) != 0
      && ((b)->text->save_modiff) < ((b)->auto_save_modified)
      && ((b)->text->save_modiff) < ((b)->text->modiff)
      && ((Fsymbol_value (intern ("auto-save-visited-file-name"))) == (builtin_lisp_symbol (0))))
    {
      Lisp_Object delete;
      delete = Fsymbol_value (intern ("delete-auto-save-files"));
      if (! ((delete) == (builtin_lisp_symbol (0))))
 internal_delete_file (((b)-> auto_save_file_name_));
    }


  if (!(!((((b)-> name_)) == (builtin_lisp_symbol (0)))))
    return builtin_lisp_symbol (901);

  if (b->base_buffer)
    {
      INTERVAL i;



      struct Lisp_Marker **mp = &((b)->text->markers);
      while ((m = *mp))
 {
   if (m->buffer == b)
     {
       m->buffer = ((void*)0);
       *mp = m->next;
     }
   else
     mp = &m->next;
 }

      i = buffer_intervals (b);
      if (i)
 {
   Lisp_Object owner;
   ((((owner) = make_lisp_ptr (b->base_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((owner) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
   set_interval_object (i, owner);
 }
    }
  else
    {


      for (m = ((b)->text->markers); m; )
 {
   struct Lisp_Marker *next = m->next;
   m->buffer = 0;
   m->next = ((void*)0);
   m = next;
 }
      ((b)->text->markers) = ((void*)0);
      set_buffer_intervals (b, ((void*)0));


    }


  b->overlays_before = ((void*)0);
  b->overlays_after = ((void*)0);





  swap_out_buffer_local_variables (b);
  reset_buffer_local_variables (b, 1);

  bset_name (b, builtin_lisp_symbol (0));

  block_input ();
  if (b->base_buffer)
    {

      ((void) (0 && (b->indirections == -1)));
      b->base_buffer->indirections--;
      ((void) (0 && (b->base_buffer->indirections >= 0)));

      ((void) (0 && (b->window_count == -1)));
    }
  else
    {

      ((void) (0 && (b->window_count == 0)));

      free_buffer_text (b);
    }

  if (b->newline_cache)
    {
      free_region_cache (b->newline_cache);
      b->newline_cache = 0;
    }
  if (b->width_run_cache)
    {
      free_region_cache (b->width_run_cache);
      b->width_run_cache = 0;
    }
  if (b->bidi_paragraph_cache)
    {
      free_region_cache (b->bidi_paragraph_cache);
      b->bidi_paragraph_cache = 0;
    }
  bset_width_table (b, builtin_lisp_symbol (0));
  unblock_input ();
  bset_undo_list (b, builtin_lisp_symbol (0));


  if (!((Vrun_hooks) == (builtin_lisp_symbol (0))))
    call1 (Vrun_hooks, builtin_lisp_symbol (223));

  return builtin_lisp_symbol (901);
}
# 1900 "buffer.c"
void
record_buffer (Lisp_Object buffer)
{
  Lisp_Object aelt, aelt_cons, tem;
  register struct frame *f = (((void) (0 && (FRAMEP (selected_frame)))), (struct frame *) ((void *) (intptr_t) ((selected_frame) - (Lisp_Vectorlike))));

  CHECK_BUFFER (buffer);




  tem = globals.f_Vinhibit_quit;
  globals.f_Vinhibit_quit = builtin_lisp_symbol (901);
  aelt = Frassq (buffer, Vbuffer_alist);
  aelt_cons = Fmemq (aelt, Vbuffer_alist);
  Vbuffer_alist = Fdelq (aelt, Vbuffer_alist);
  XSETCDR (aelt_cons, Vbuffer_alist);
  Vbuffer_alist = aelt_cons;
  globals.f_Vinhibit_quit = tem;


  fset_buffer_list (f, Fcons (buffer, Fdelq (buffer, f->buffer_list)));
  fset_buried_buffer_list (f, Fdelq (buffer, f->buried_buffer_list));


  if (!((Vrun_hooks) == (builtin_lisp_symbol (0))))
    call1 (Vrun_hooks, builtin_lisp_symbol (223));
}
# 1936 "buffer.c"
static struct Lisp_Subr _Alignas (8) Sbury_buffer_internal = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbury_buffer_internal }, 1, 1, "bury-buffer-internal", 0, 0}; Lisp_Object Fbury_buffer_internal


  (Lisp_Object buffer)
{
  Lisp_Object aelt, aelt_cons, tem;
  register struct frame *f = (((void) (0 && (FRAMEP (selected_frame)))), (struct frame *) ((void *) (intptr_t) ((selected_frame) - (Lisp_Vectorlike))));

  CHECK_BUFFER (buffer);




  tem = globals.f_Vinhibit_quit;
  globals.f_Vinhibit_quit = builtin_lisp_symbol (901);
  aelt = Frassq (buffer, Vbuffer_alist);
  aelt_cons = Fmemq (aelt, Vbuffer_alist);
  Vbuffer_alist = Fdelq (aelt, Vbuffer_alist);
  XSETCDR (aelt_cons, builtin_lisp_symbol (0));
  Vbuffer_alist = nconc2 (Vbuffer_alist, aelt_cons);
  globals.f_Vinhibit_quit = tem;


  fset_buffer_list (f, Fdelq (buffer, f->buffer_list));
  fset_buried_buffer_list
    (f, Fcons (buffer, Fdelq (buffer, f->buried_buffer_list)));


  if (!((Vrun_hooks) == (builtin_lisp_symbol (0))))
    call1 (Vrun_hooks, builtin_lisp_symbol (223));

  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sset_buffer_major_mode = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fset_buffer_major_mode }, 1, 1, "set-buffer-major-mode", 0, 0}; Lisp_Object Fset_buffer_major_mode





  (Lisp_Object buffer)
{
  ptrdiff_t count;
  Lisp_Object function;

  CHECK_BUFFER (buffer);

  if (!(!((((XBUFFER (buffer))-> name_)) == (builtin_lisp_symbol (0)))))
    error ("Attempt to set major mode for a dead buffer");

  if (strcmp (SSDATA (((XBUFFER (buffer))-> name_)), "*scratch*") == 0)
    function = find_symbol_value (intern ("initial-major-mode"));
  else
    {
      function = ((&buffer_defaults)-> major_mode_);
      if (((function) == (builtin_lisp_symbol (0)))
   && ((Fget (((current_buffer)-> major_mode_), builtin_lisp_symbol (671))) == (builtin_lisp_symbol (0))))
 function = ((current_buffer)-> major_mode_);
    }

  if (((function) == (builtin_lisp_symbol (0))) || ((function) == (builtin_lisp_symbol (479))))
    return builtin_lisp_symbol (0);

  count = SPECPDL_INDEX ();




  record_unwind_protect (save_excursion_restore, save_excursion_save ());

  Fset_buffer (buffer);
  call0 (function);

  return unbind_to (count, builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Scurrent_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a0 = Fcurrent_buffer }, 0, 0, "current-buffer", 0, 0}; Lisp_Object Fcurrent_buffer

  (void)
{
  register Lisp_Object buf;
  ((((buf) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buf) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  return buf;
}




void
set_buffer_internal_1 (register struct buffer *b)
{
  register struct buffer *old_buf;
  register Lisp_Object tail;






  if (current_buffer == b)
    return;

  do { if ((!((((b)-> name_)) == (builtin_lisp_symbol (0))))) { if (b->base_buffer) { ((void) (0 && (b->indirections == -1))); ((void) (0 && (b->base_buffer->indirections > 0))); } else ((void) (0 && (b->indirections >= 0))); } } while (0);

  old_buf = current_buffer;
  current_buffer = b;
  last_known_column_point = -1;

  if (old_buf)
    {


      if (old_buf->base_buffer)
 bset_undo_list (old_buf->base_buffer, ((old_buf)-> undo_list_));



      record_buffer_markers (old_buf);
    }



  if (b->base_buffer)
    bset_undo_list (b, ((b->base_buffer)-> undo_list_));



  fetch_buffer_markers (b);




  do
    {
      for (tail = ((b)-> local_var_alist_); (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); tail = (((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr)
 {
   Lisp_Object var = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) - (Lisp_Cons))))->car;
   struct Lisp_Symbol *sym = (((void) (0 && ((((enum Lisp_Type) ((var) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (var) - Lisp_Symbol + (char *) lispsym));
   if (sym->redirect == SYMBOL_LOCALIZED
       && SYMBOL_BLV (sym)->fwd)


     Fsymbol_value (var);
 }
    }

  while (b != old_buf && (b = old_buf, b));
}




void
set_buffer_temp (struct buffer *b)
{
  register struct buffer *old_buf;

  if (current_buffer == b)
    return;

  old_buf = current_buffer;
  current_buffer = b;



  record_buffer_markers (old_buf);



  fetch_buffer_markers (b);
}

static struct Lisp_Subr _Alignas (8) Sset_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fset_buffer }, 1, 1, "set-buffer", 0, 0}; Lisp_Object Fset_buffer







  (register Lisp_Object buffer_or_name)
{
  register Lisp_Object buffer;
  buffer = Fget_buffer (buffer_or_name);
  if (((buffer) == (builtin_lisp_symbol (0))))
    nsberror (buffer_or_name);
  if (!(!((((XBUFFER (buffer))-> name_)) == (builtin_lisp_symbol (0)))))
    error ("Selecting deleted buffer");
  set_buffer_internal (XBUFFER (buffer));
  return buffer;
}

void
restore_buffer (Lisp_Object buffer_or_name)
{
  Fset_buffer (buffer_or_name);
}



void
set_buffer_if_live (Lisp_Object buffer)
{
  if ((!((((XBUFFER (buffer))-> name_)) == (builtin_lisp_symbol (0)))))
    set_buffer_internal (XBUFFER (buffer));
}

static struct Lisp_Subr _Alignas (8) Sbarf_if_buffer_read_only = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbarf_if_buffer_read_only }, 0, 1, "barf-if-buffer-read-only", 0, 0}; Lisp_Object Fbarf_if_buffer_read_only




  (Lisp_Object position)
{
  if (((position) == (builtin_lisp_symbol (0))))
    ((position) = make_natnum ((current_buffer->pt + 0)));
  else
    ((((((enum Lisp_Type) ((position) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (559), position));

  if (!((((current_buffer)-> read_only_)) == (builtin_lisp_symbol (0)))
      && ((globals.f_Vinhibit_read_only) == (builtin_lisp_symbol (0)))
      && ((Fget_text_property (position, builtin_lisp_symbol (547), builtin_lisp_symbol (0))) == (builtin_lisp_symbol (0))))
    xsignal1 (builtin_lisp_symbol (228), Fcurrent_buffer ());
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Serase_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a0 = Ferase_buffer }, 0, 0, "erase-buffer", "*", 0}; Lisp_Object Ferase_buffer



  (void)
{
  Fwiden ();

  del_range ((1), (current_buffer->text->z));

  current_buffer->last_window_start = 1;



  ((((current_buffer)-> save_length_)) = make_natnum (0));
  return builtin_lisp_symbol (0);
}

void
validate_region (register Lisp_Object *b, register Lisp_Object *e)
{
  do { if (((((enum Lisp_Type) (((*b)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((*b)) == Lisp_Misc_Marker)) ((*b) = make_natnum (marker_position (*b))); else ((((((enum Lisp_Type) ((*b) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), *b)); } while (0);
  do { if (((((enum Lisp_Type) (((*e)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((*e)) == Lisp_Misc_Marker)) ((*e) = make_natnum (marker_position (*e))); else ((((((enum Lisp_Type) ((*e) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), *e)); } while (0);

  if (((*b) >> INTTYPEBITS) > ((*e) >> INTTYPEBITS))
    {
      Lisp_Object tem;
      tem = *b; *b = *e; *e = tem;
    }

  if (! ((current_buffer->begv) <= ((*b) >> INTTYPEBITS) && ((*e) >> INTTYPEBITS) <= (current_buffer->zv)))
    args_out_of_range_3 (Fcurrent_buffer (), *b, *e);
}




static ptrdiff_t
advance_to_char_boundary (ptrdiff_t byte_pos)
{
  int c;

  if (byte_pos == (1))

    return (1);

  c = *(((((byte_pos)) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + ((byte_pos)) + (current_buffer->text->beg) - ((1))));
  if (! (((c) & 0xC0) != 0x80))
    {


      ptrdiff_t orig_byte_pos = byte_pos;

      do
 {
   byte_pos--;
   c = *(((((byte_pos)) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + ((byte_pos)) + (current_buffer->text->beg) - ((1))));
 }
      while (! (((c) & 0xC0) != 0x80) && byte_pos > (1));
      do { unsigned char *chp = (((byte_pos) >= (current_buffer->text->gpt_byte) ? (current_buffer->text->gap_size) : 0) + (byte_pos) + (current_buffer->text->beg) - ((1))); byte_pos += (!((*chp) & 0x80) ? 1 : !((*chp) & 0x20) ? 2 : !((*chp) & 0x10) ? 3 : !((*chp) & 0x08) ? 4 : 5); } while (0);
      if (byte_pos < orig_byte_pos)
 byte_pos = orig_byte_pos;



    }

  return byte_pos;
}

static struct Lisp_Subr _Alignas (8) Sbuffer_swap_text = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fbuffer_swap_text }, 1, 1, "buffer-swap-text", 0, 0}; Lisp_Object Fbuffer_swap_text




  (Lisp_Object buffer)
{
  struct buffer *other_buffer;
  CHECK_BUFFER (buffer);
  other_buffer = XBUFFER (buffer);

  if (!(!((((other_buffer)-> name_)) == (builtin_lisp_symbol (0)))))
    error ("Cannot swap a dead buffer's text");







  if (other_buffer->base_buffer
      || current_buffer->base_buffer)
    error ("Cannot swap indirect buffers's text");

  {
    struct buffer *other;
    for ((other) = all_buffers; (other); (other) = (other)->next)
      if (other->base_buffer == other_buffer
   || other->base_buffer == current_buffer)
 error ("One of the buffers to swap has indirect buffers");
  }
# 2277 "buffer.c"
  do { struct buffer_text tmpown_text = other_buffer->own_text; other_buffer->own_text = current_buffer->own_text; current_buffer->own_text = tmpown_text; } while (0);
  ((void) (0 && (current_buffer->text == &current_buffer->own_text)));
  ((void) (0 && (other_buffer->text == &other_buffer->own_text)));







  do { ptrdiff_t tmppt = other_buffer->pt; other_buffer->pt = current_buffer->pt; current_buffer->pt = tmppt; } while (0);
  do { ptrdiff_t tmppt_byte = other_buffer->pt_byte; other_buffer->pt_byte = current_buffer->pt_byte; current_buffer->pt_byte = tmppt_byte; } while (0);
  do { ptrdiff_t tmpbegv = other_buffer->begv; other_buffer->begv = current_buffer->begv; current_buffer->begv = tmpbegv; } while (0);
  do { ptrdiff_t tmpbegv_byte = other_buffer->begv_byte; other_buffer->begv_byte = current_buffer->begv_byte; current_buffer->begv_byte = tmpbegv_byte; } while (0);
  do { ptrdiff_t tmpzv = other_buffer->zv; other_buffer->zv = current_buffer->zv; current_buffer->zv = tmpzv; } while (0);
  do { ptrdiff_t tmpzv_byte = other_buffer->zv_byte; other_buffer->zv_byte = current_buffer->zv_byte; current_buffer->zv_byte = tmpzv_byte; } while (0);
  ((void) (0 && (!current_buffer->base_buffer)));
  ((void) (0 && (!other_buffer->base_buffer)));
  do { ptrdiff_t tmpindirections = other_buffer->indirections; other_buffer->indirections = current_buffer->indirections; current_buffer->indirections = tmpindirections; } while (0);
  current_buffer->clip_changed = 1; other_buffer->clip_changed = 1;
  do { struct region_cache * tmpnewline_cache = other_buffer->newline_cache; other_buffer->newline_cache = current_buffer->newline_cache; current_buffer->newline_cache = tmpnewline_cache; } while (0);
  do { struct region_cache * tmpwidth_run_cache = other_buffer->width_run_cache; other_buffer->width_run_cache = current_buffer->width_run_cache; current_buffer->width_run_cache = tmpwidth_run_cache; } while (0);
  do { struct region_cache * tmpbidi_paragraph_cache = other_buffer->bidi_paragraph_cache; other_buffer->bidi_paragraph_cache = current_buffer->bidi_paragraph_cache; current_buffer->bidi_paragraph_cache = tmpbidi_paragraph_cache; } while (0);
  current_buffer->prevent_redisplay_optimizations_p = 1;
  other_buffer->prevent_redisplay_optimizations_p = 1;
  do { struct Lisp_Overlay * tmpoverlays_before = other_buffer->overlays_before; other_buffer->overlays_before = current_buffer->overlays_before; current_buffer->overlays_before = tmpoverlays_before; } while (0);
  do { struct Lisp_Overlay * tmpoverlays_after = other_buffer->overlays_after; other_buffer->overlays_after = current_buffer->overlays_after; current_buffer->overlays_after = tmpoverlays_after; } while (0);
  do { ptrdiff_t tmpoverlay_center = other_buffer->overlay_center; other_buffer->overlay_center = current_buffer->overlay_center; current_buffer->overlay_center = tmpoverlay_center; } while (0);
  do { Lisp_Object tmpundo_list = ((other_buffer)-> undo_list_); bset_undo_list (other_buffer, ((current_buffer)-> undo_list_)); bset_undo_list (current_buffer, tmpundo_list); } while (0);
  do { Lisp_Object tmpmark = ((other_buffer)-> mark_); bset_mark (other_buffer, ((current_buffer)-> mark_)); bset_mark (current_buffer, tmpmark); } while (0);
  do { Lisp_Object tmpenable_multibyte_characters = ((other_buffer)-> enable_multibyte_characters_); bset_enable_multibyte_characters (other_buffer, ((current_buffer)-> enable_multibyte_characters_)); bset_enable_multibyte_characters (current_buffer, tmpenable_multibyte_characters); } while (0);
  do { Lisp_Object tmpbidi_display_reordering = ((other_buffer)-> bidi_display_reordering_); bset_bidi_display_reordering (other_buffer, ((current_buffer)-> bidi_display_reordering_)); bset_bidi_display_reordering (current_buffer, tmpbidi_display_reordering); } while (0);
  do { Lisp_Object tmpbidi_paragraph_direction = ((other_buffer)-> bidi_paragraph_direction_); bset_bidi_paragraph_direction (other_buffer, ((current_buffer)-> bidi_paragraph_direction_)); bset_bidi_paragraph_direction (current_buffer, tmpbidi_paragraph_direction); } while (0);


  do { Lisp_Object tmppt_marker = ((other_buffer)-> pt_marker_); bset_pt_marker (other_buffer, ((current_buffer)-> pt_marker_)); bset_pt_marker (current_buffer, tmppt_marker); } while (0);
  do { Lisp_Object tmpbegv_marker = ((other_buffer)-> begv_marker_); bset_begv_marker (other_buffer, ((current_buffer)-> begv_marker_)); bset_begv_marker (current_buffer, tmpbegv_marker); } while (0);
  do { Lisp_Object tmpzv_marker = ((other_buffer)-> zv_marker_); bset_zv_marker (other_buffer, ((current_buffer)-> zv_marker_)); bset_zv_marker (current_buffer, tmpzv_marker); } while (0);
  bset_point_before_scroll (current_buffer, builtin_lisp_symbol (0));
  bset_point_before_scroll (other_buffer, builtin_lisp_symbol (0));

  current_buffer->text->modiff++; other_buffer->text->modiff++;
  current_buffer->text->chars_modiff++; other_buffer->text->chars_modiff++;
  current_buffer->text->overlay_modiff++; other_buffer->text->overlay_modiff++;
  current_buffer->text->beg_unchanged = current_buffer->text->gpt;
  current_buffer->text->end_unchanged = current_buffer->text->gpt;
  other_buffer->text->beg_unchanged = other_buffer->text->gpt;
  other_buffer->text->end_unchanged = other_buffer->text->gpt;
  {
    struct Lisp_Marker *m;
    for (m = ((current_buffer)->text->markers); m; m = m->next)
      if (m->buffer == other_buffer)
 m->buffer = current_buffer;
      else


 ((void) (0 && (!m->buffer)));
    for (m = ((other_buffer)->text->markers); m; m = m->next)
      if (m->buffer == current_buffer)
 m->buffer = other_buffer;
      else


 ((void) (0 && (!m->buffer)));
  }
  {



    Lisp_Object w = selected_window, ws = builtin_lisp_symbol (0);
    Lisp_Object buf1, buf2;
    ((((buf1) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buf1) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS))))))); ((((buf2) = make_lisp_ptr (other_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buf2) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));

    while (((Fmemq (w, ws)) == (builtin_lisp_symbol (0))))
      {
 ws = Fcons (w, ws);
 if (((((enum Lisp_Type) ((XWINDOW (w)->pointm) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XWINDOW (w)->pointm) == Lisp_Misc_Marker)
     && (((XWINDOW (w)->contents) == (buf1))
  || ((XWINDOW (w)->contents) == (buf2))))
   Fset_marker (XWINDOW (w)->pointm,
         ((EMACS_INT) (((EMACS_UINT) ((XBUFFER (XWINDOW (w)->contents) == current_buffer ? (current_buffer->begv) : ((((XBUFFER (XWINDOW (w)->contents))-> begv_marker_)) == (builtin_lisp_symbol (0))) ? XBUFFER (XWINDOW (w)->contents)->begv : marker_position (((XBUFFER (XWINDOW (w)->contents))-> begv_marker_)))) << INTTYPEBITS) + Lisp_Int0)),

         XWINDOW (w)->contents);

 if (((((enum Lisp_Type) ((XWINDOW (w)->old_pointm) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XWINDOW (w)->old_pointm) == Lisp_Misc_Marker)
     && (((XWINDOW (w)->contents) == (buf1))
  || ((XWINDOW (w)->contents) == (buf2))))
   Fset_marker (XWINDOW (w)->old_pointm,
         ((EMACS_INT) (((EMACS_UINT) ((XBUFFER (XWINDOW (w)->contents) == current_buffer ? (current_buffer->begv) : ((((XBUFFER (XWINDOW (w)->contents))-> begv_marker_)) == (builtin_lisp_symbol (0))) ? XBUFFER (XWINDOW (w)->contents)->begv : marker_position (((XBUFFER (XWINDOW (w)->contents))-> begv_marker_)))) << INTTYPEBITS) + Lisp_Int0)),

         XWINDOW (w)->contents);
 if (((((enum Lisp_Type) ((XWINDOW (w)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XWINDOW (w)->start) == Lisp_Misc_Marker)
     && (((XWINDOW (w)->contents) == (buf1))
  || ((XWINDOW (w)->contents) == (buf2))))
   Fset_marker (XWINDOW (w)->start,
         ((EMACS_INT) (((EMACS_UINT) (XBUFFER (XWINDOW (w)->contents)->last_window_start) << INTTYPEBITS) + Lisp_Int0)),

         XWINDOW (w)->contents);
 w = Fnext_window (w, builtin_lisp_symbol (901), builtin_lisp_symbol (901));
      }
  }

  if (current_buffer->text->intervals)
    (((void) (0 && (((current_buffer->text->intervals->up.obj) == (buffer))))),
     ((((current_buffer->text->intervals->up.obj) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((current_buffer->text->intervals->up.obj) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS))))))));
  if (other_buffer->text->intervals)
    (((void) (0 && (((other_buffer->text->intervals->up.obj) == (Fcurrent_buffer ()))))),
     ((((other_buffer->text->intervals->up.obj) = make_lisp_ptr (other_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((other_buffer->text->intervals->up.obj) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS))))))));

  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Sset_buffer_multibyte = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fset_buffer_multibyte }, 1, 1, "set-buffer-multibyte", 0, 0}; Lisp_Object Fset_buffer_multibyte
# 2400 "buffer.c"
  (Lisp_Object flag)
{
  struct Lisp_Marker *tail, *markers;
  struct buffer *other;
  ptrdiff_t begv, zv;
  _Bool narrowed = ((1) != (current_buffer->begv) || (current_buffer->text->z) != (current_buffer->zv));
  _Bool modified_p = !((Fbuffer_modified_p (builtin_lisp_symbol (0))) == (builtin_lisp_symbol (0)));
  Lisp_Object old_undo = ((current_buffer)-> undo_list_);

  if (current_buffer->base_buffer)
    error ("Cannot do `set-buffer-multibyte' on an indirect buffer");


  if (((flag) == (builtin_lisp_symbol (0))) == ((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
    return flag;



  bset_undo_list (current_buffer, builtin_lisp_symbol (901));


  clear_charpos_cache (current_buffer);

  if (((flag) == (builtin_lisp_symbol (0))))
    begv = (current_buffer->begv_byte), zv = (current_buffer->zv_byte);
  else
    begv = (current_buffer->begv), zv = (current_buffer->zv);

  if (narrowed)
    error ("Changing multibyteness in a narrowed buffer");

  invalidate_buffer_caches (current_buffer, (current_buffer->begv), (current_buffer->zv));

  if (((flag) == (builtin_lisp_symbol (0))))
    {
      ptrdiff_t pos, stop;
      unsigned char *p;



      set_intervals_multibyte (0);

      bset_enable_multibyte_characters (current_buffer, builtin_lisp_symbol (0));

      (current_buffer->text->z) = (current_buffer->text->z_byte);
      (current_buffer->begv) = (current_buffer->begv_byte);
      (current_buffer->zv) = (current_buffer->zv_byte);
      (current_buffer->text->gpt) = (current_buffer->text->gpt_byte);
      (temp_set_point_both (current_buffer, ((current_buffer->pt_byte + 0)), ((current_buffer->pt_byte + 0))));


      for (tail = ((current_buffer)->text->markers); tail; tail = tail->next)
 tail->charpos = tail->bytepos;


      pos = (1);
      stop = (current_buffer->text->gpt);
      p = (current_buffer->text->beg);
      while (1)
 {
   int c, bytes;

   if (pos == stop)
     {
       if (pos == (current_buffer->text->z))
  break;
       p = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
       stop = (current_buffer->text->z);
     }
   if ((((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
     p++, pos++;
   else if (((*p) == 0xC0 || (*p) == 0xC1))
     {
       c = (!((p)[0] & 0x80) ? ((bytes) = 1, (p)[0]) : ! ((p)[0] & 0x20) ? ((bytes) = 2, (((((p)[0] & 0x1F) << 6) | ((p)[1] & 0x3F)) + (((unsigned char) (p)[0]) < 0xC2 ? 0x3FFF80 : 0))) : ! ((p)[0] & 0x10) ? ((bytes) = 3, ((((p)[0] & 0x0F) << 12) | (((p)[1] & 0x3F) << 6) | ((p)[2] & 0x3F))) : string_char ((p), ((void*)0), &bytes));



       bytes--;
       del_range_2 (pos, pos, pos + bytes, pos + bytes, 0);
       p = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
       *p++ = c;
       pos++;
       if (begv > pos)
  begv -= bytes;
       if (zv > pos)
  zv -= bytes;
       stop = (current_buffer->text->z);
     }
   else
     {
       bytes = (!((*p) & 0x80) ? 1 : !((*p) & 0x20) ? 2 : !((*p) & 0x10) ? 3 : !((*p) & 0x08) ? 4 : 5);
       p += bytes, pos += bytes;
     }
 }
      if (narrowed)
 Fnarrow_to_region (((EMACS_INT) (((EMACS_UINT) (begv) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (zv) << INTTYPEBITS) + Lisp_Int0)));
    }
  else
    {
      ptrdiff_t pt = (current_buffer->pt + 0);
      ptrdiff_t pos, stop;
      unsigned char *p, *pend;





      if (((flag) == (builtin_lisp_symbol (901)))
   && (current_buffer->text->gpt_byte) > 1 && (current_buffer->text->gpt_byte) < (current_buffer->text->z_byte)
   && ! (((*((current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1))))) & 0xC0) != 0x80))
 {
   unsigned char *q = (current_buffer->text->beg + current_buffer->text->gpt_byte - ((1))) - 1;

   while (! (((*q) & 0xC0) != 0x80) && q > (current_buffer->text->beg)) q--;
   if ((((*q) & 0xC0) == 0xC0))
     {
       ptrdiff_t new_gpt = (current_buffer->text->gpt_byte) - ((current_buffer->text->beg + current_buffer->text->gpt_byte - ((1))) - q);

       move_gap_both (new_gpt, new_gpt);
     }
 }



      pos = (1);
      stop = (current_buffer->text->gpt);
      p = (current_buffer->text->beg);
      pend = (current_buffer->text->beg + current_buffer->text->gpt_byte - ((1)));
      while (1)
 {
   int bytes;

   if (pos == stop)
     {
       if (pos == (current_buffer->text->z))
  break;
       p = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
       pend = (current_buffer->text->beg + current_buffer->text->gap_size + current_buffer->text->z_byte - ((1)));
       stop = (current_buffer->text->z);
     }

   if ((((sizeof ((*p) + 0)) > (sizeof ((0x80) + 0)) ? (sizeof ((*p) + 0)) : (sizeof ((0x80) + 0))) <= sizeof (unsigned) ? ((*p) + (unsigned) 0) < ((0x80) + (unsigned) 0) : ((*p) + (uintmax_t) 0) < ((0x80) + (uintmax_t) 0)))
     p++, pos++;
   else if (((flag) == (builtin_lisp_symbol (901)))
     && ! ((*p) == 0xC0 || (*p) == 0xC1)
     && (bytes = (p >= pend ? 0 : !((p)[0] & 0x80) ? 1 : ((p + 1 >= pend) || (((p)[1] & 0xC0) != 0x80)) ? 0 : ((p)[0] & 0xE0) == 0xC0 ? 2 : ((p + 2 >= pend) || (((p)[2] & 0xC0) != 0x80)) ? 0 : ((p)[0] & 0xF0) == 0xE0 ? 3 : ((p + 3 >= pend) || (((p)[3] & 0xC0) != 0x80)) ? 0 : ((p)[0] & 0xF8) == 0xF0 ? 4 : ((p + 4 >= pend) || (((p)[4] & 0xC0) != 0x80)) ? 0 : (p)[0] == 0xF8 && ((p)[1] & 0xF0) == 0x80 ? 5 : 0)) > 0)
     p += bytes, pos += bytes;
   else
     {
       unsigned char tmp[5];
       int c;

       c = ((*p) + 0x3FFF00);
       bytes = ((((sizeof ((c) + 0)) > (sizeof ((0x7F) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x7F) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) <= ((0x7F) + (unsigned) 0) : ((c) + (uintmax_t) 0) <= ((0x7F) + (uintmax_t) 0)) ? ((tmp)[0] = (c), 1) : (((sizeof ((c) + 0)) > (sizeof ((0x7FF) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0x7FF) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) <= ((0x7FF) + (unsigned) 0) : ((c) + (uintmax_t) 0) <= ((0x7FF) + (uintmax_t) 0)) ? ((tmp)[0] = (0xC0 | ((c) >> 6)), (tmp)[1] = (0x80 | ((c) & 0x3F)), 2) : (((sizeof ((c) + 0)) > (sizeof ((0xFFFF) + 0)) ? (sizeof ((c) + 0)) : (sizeof ((0xFFFF) + 0))) <= sizeof (unsigned) ? ((c) + (unsigned) 0) <= ((0xFFFF) + (unsigned) 0) : ((c) + (uintmax_t) 0) <= ((0xFFFF) + (uintmax_t) 0)) ? ((tmp)[0] = (0xE0 | ((c) >> 12)), (tmp)[1] = (0x80 | (((c) >> 6) & 0x3F)), (tmp)[2] = (0x80 | ((c) & 0x3F)), 3) : ((!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (c) <= sizeof (unsigned)) ? 1 : -1; })) ? (char_string (c, tmp)) : (char_string (c, tmp))));
       *p = tmp[0];
       (temp_set_point_both (current_buffer, (pos + 1), (pos + 1)));
       bytes--;
       insert_1_both ((char *) tmp + 1, bytes, bytes, 1, 0, 0);

       pos = (current_buffer->text->gpt);
       p = (current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1)));
       if (pos <= begv)
  begv += bytes;
       if (pos <= zv)
  zv += bytes;
       if (pos <= pt)
  pt += bytes;
       pend = (current_buffer->text->beg + current_buffer->text->gap_size + current_buffer->text->z_byte - ((1)));
       stop = (current_buffer->text->z);
     }
 }

      if (pt != (current_buffer->pt + 0))
 (temp_set_point (current_buffer, (pt)));

      if (narrowed)
 Fnarrow_to_region (((EMACS_INT) (((EMACS_UINT) (begv) << INTTYPEBITS) + Lisp_Int0)), ((EMACS_INT) (((EMACS_UINT) (zv) << INTTYPEBITS) + Lisp_Int0)));



      bset_enable_multibyte_characters (current_buffer, builtin_lisp_symbol (901));

      (current_buffer->text->gpt_byte) = advance_to_char_boundary ((current_buffer->text->gpt_byte));
      (current_buffer->text->gpt) = chars_in_text ((current_buffer->text->beg), (current_buffer->text->gpt_byte) - ((1))) + (1);

      (current_buffer->text->z) = chars_in_text ((current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1))), (current_buffer->text->z_byte) - (current_buffer->text->gpt_byte)) + (current_buffer->text->gpt);

      (current_buffer->begv_byte) = advance_to_char_boundary ((current_buffer->begv_byte));
      if ((current_buffer->begv_byte) > (current_buffer->text->gpt_byte))
 (current_buffer->begv) = chars_in_text ((current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1))), (current_buffer->begv_byte) - (current_buffer->text->gpt_byte)) + (current_buffer->text->gpt);
      else
 (current_buffer->begv) = chars_in_text ((current_buffer->text->beg), (current_buffer->begv_byte) - ((1))) + (1);

      (current_buffer->zv_byte) = advance_to_char_boundary ((current_buffer->zv_byte));
      if ((current_buffer->zv_byte) > (current_buffer->text->gpt_byte))
 (current_buffer->zv) = chars_in_text ((current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1))), (current_buffer->zv_byte) - (current_buffer->text->gpt_byte)) + (current_buffer->text->gpt);
      else
 (current_buffer->zv) = chars_in_text ((current_buffer->text->beg), (current_buffer->zv_byte) - ((1))) + (1);

      {
 ptrdiff_t byte = advance_to_char_boundary ((current_buffer->pt_byte + 0));
 ptrdiff_t position;

 if (byte > (current_buffer->text->gpt_byte))
   position = chars_in_text ((current_buffer->text->beg + current_buffer->text->gpt_byte + current_buffer->text->gap_size - ((1))), byte - (current_buffer->text->gpt_byte)) + (current_buffer->text->gpt);
 else
   position = chars_in_text ((current_buffer->text->beg), byte - ((1))) + (1);
 (temp_set_point_both (current_buffer, (position), (byte)));
      }

      tail = markers = ((current_buffer)->text->markers);




      ((current_buffer)->text->markers) = ((void*)0);

      for (; tail; tail = tail->next)
 {
   tail->bytepos = advance_to_char_boundary (tail->bytepos);
   tail->charpos = (buf_bytepos_to_charpos (current_buffer, tail->bytepos));
 }



      if (((current_buffer)->text->markers))
 emacs_abort ();

      ((current_buffer)->text->markers) = markers;



      set_intervals_multibyte (1);
    }

  if (!((old_undo) == (builtin_lisp_symbol (901))))
    {

      bset_undo_list (current_buffer,
        Fcons (list3 (builtin_lisp_symbol (175),
        intern ("set-buffer-multibyte"),
        ((flag) == (builtin_lisp_symbol (0))) ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0)),
        old_undo));
    }

  current_buffer->prevent_redisplay_optimizations_p = 1;


  if (buffer_window_count (current_buffer))
    windows_or_buffers_changed = 10;



  for ((other) = all_buffers; (other); (other) = (other)->next)
    if (other->base_buffer == current_buffer && (!((((other)-> name_)) == (builtin_lisp_symbol (0)))))
      {
 ((other)-> enable_multibyte_characters_)
   = ((current_buffer)-> enable_multibyte_characters_);
 other->prevent_redisplay_optimizations_p = 1;
      }


  if (!modified_p && !((Fbuffer_modified_p (builtin_lisp_symbol (0))) == (builtin_lisp_symbol (0))))
    Fset_buffer_modified_p (builtin_lisp_symbol (0));


  {
    Lisp_Object process;

    process = Fget_buffer_process (Fcurrent_buffer ());
    if (PROCESSP (process))
      setup_process_coding_systems (process);
  }

  return flag;
}

static struct Lisp_Subr _Alignas (8) Skill_all_local_variables = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a0 = Fkill_all_local_variables }, 0, 0, "kill-all-local-variables", 0, 0}; Lisp_Object Fkill_all_local_variables
# 2694 "buffer.c"
  (void)
{
  run_hook (builtin_lisp_symbol (253));




  swap_out_buffer_local_variables (current_buffer);



  reset_buffer_local_variables (current_buffer, 0);



  update_mode_lines = 12;

  return builtin_lisp_symbol (0);
}




static void
swap_out_buffer_local_variables (struct buffer *b)
{
  Lisp_Object oalist, alist, buffer;

  ((((buffer) = make_lisp_ptr (b, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  oalist = ((b)-> local_var_alist_);

  for (alist = oalist; (((enum Lisp_Type) ((alist) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); alist = (((void) (0 && ((((enum Lisp_Type) ((alist) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((alist) - (Lisp_Cons))))->u.cdr)
    {
      Lisp_Object sym = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((alist) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((alist) - (Lisp_Cons))))->car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((alist) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((alist) - (Lisp_Cons))))->car) - (Lisp_Cons))))->car;
      ((void) (0 && ((((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym))->redirect == SYMBOL_LOCALIZED)));


      if (((SYMBOL_BLV ((((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym)))->where) == (buffer)))
 {


   swap_in_global_binding ((((void) (0 && ((((enum Lisp_Type) ((sym) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (sym) - Lisp_Symbol + (char *) lispsym)));
 }
    }
}
# 2762 "buffer.c"
ptrdiff_t
overlays_at (EMACS_INT pos, _Bool extend, Lisp_Object **vec_ptr,
      ptrdiff_t *len_ptr,
      ptrdiff_t *next_ptr, ptrdiff_t *prev_ptr, _Bool change_req)
{
  Lisp_Object overlay, start, end;
  struct Lisp_Overlay *tail;
  ptrdiff_t idx = 0;
  ptrdiff_t len = *len_ptr;
  Lisp_Object *vec = *vec_ptr;
  ptrdiff_t next = (current_buffer->zv);
  ptrdiff_t prev = (current_buffer->begv);
  _Bool inhibit_storing = 0;

  for (tail = current_buffer->overlays_before; tail; tail = tail->next)
    {
      ptrdiff_t startpos, endpos;

      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

      start = XOVERLAY (overlay)->start;
      end = XOVERLAY (overlay)->end;
      endpos = (((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) ? marker_position (end) : (emacs_abort (), 0));
      if (endpos < pos)
 {
   if (prev < endpos)
     prev = endpos;
   break;
 }
      startpos = (((((enum Lisp_Type) ((start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (start) == Lisp_Misc_Marker) ? marker_position (start) : (emacs_abort (), 0));


      if (prev < startpos && startpos < pos)
 prev = startpos;
      if (endpos == pos)
 continue;
      if (startpos <= pos)
 {
   if (idx == len)
     {


       if (extend)
  {
    vec = xpalloc (vec, len_ptr, 1, ((ptrdiff_t) (((9223372036854775807L >> INTTYPEBITS)) < ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size) ? ((9223372036854775807L >> INTTYPEBITS)) : ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size))),
     sizeof *vec);
    *vec_ptr = vec;
    len = *len_ptr;
  }
       else
  inhibit_storing = 1;
     }

   if (!inhibit_storing)
     vec[idx] = overlay;

   idx++;
 }
      else if (startpos < next)
 next = startpos;
    }

  for (tail = current_buffer->overlays_after; tail; tail = tail->next)
    {
      ptrdiff_t startpos, endpos;

      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

      start = XOVERLAY (overlay)->start;
      end = XOVERLAY (overlay)->end;
      startpos = (((((enum Lisp_Type) ((start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (start) == Lisp_Misc_Marker) ? marker_position (start) : (emacs_abort (), 0));
      if (pos < startpos)
 {
   if (startpos < next)
     next = startpos;
   break;
 }
      endpos = (((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) ? marker_position (end) : (emacs_abort (), 0));
      if (pos < endpos)
 {
   if (idx == len)
     {
       if (extend)
  {
    vec = xpalloc (vec, len_ptr, 1, ((ptrdiff_t) (((9223372036854775807L >> INTTYPEBITS)) < ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size) ? ((9223372036854775807L >> INTTYPEBITS)) : ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size))),
     sizeof *vec);
    *vec_ptr = vec;
    len = *len_ptr;
  }
       else
  inhibit_storing = 1;
     }

   if (!inhibit_storing)
     vec[idx] = overlay;
   idx++;

   if (startpos < pos && startpos > prev)
     prev = startpos;
 }
      else if (endpos < pos && endpos > prev)
 prev = endpos;
      else if (endpos == pos && startpos > prev
        && (!change_req || startpos < pos))
 prev = startpos;
    }

  if (next_ptr)
    *next_ptr = next;
  if (prev_ptr)
    *prev_ptr = prev;
  return idx;
}
# 2896 "buffer.c"
static ptrdiff_t
overlays_in (EMACS_INT beg, EMACS_INT end, _Bool extend,
      Lisp_Object **vec_ptr, ptrdiff_t *len_ptr,
      ptrdiff_t *next_ptr, ptrdiff_t *prev_ptr)
{
  Lisp_Object overlay, ostart, oend;
  struct Lisp_Overlay *tail;
  ptrdiff_t idx = 0;
  ptrdiff_t len = *len_ptr;
  Lisp_Object *vec = *vec_ptr;
  ptrdiff_t next = (current_buffer->zv);
  ptrdiff_t prev = (current_buffer->begv);
  _Bool inhibit_storing = 0;
  _Bool end_is_Z = end == (current_buffer->text->z);

  for (tail = current_buffer->overlays_before; tail; tail = tail->next)
    {
      ptrdiff_t startpos, endpos;

      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

      ostart = XOVERLAY (overlay)->start;
      oend = XOVERLAY (overlay)->end;
      endpos = (((((enum Lisp_Type) ((oend) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (oend) == Lisp_Misc_Marker) ? marker_position (oend) : (emacs_abort (), 0));
      if (endpos < beg)
 {
   if (prev < endpos)
     prev = endpos;
   break;
 }
      startpos = (((((enum Lisp_Type) ((ostart) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (ostart) == Lisp_Misc_Marker) ? marker_position (ostart) : (emacs_abort (), 0));



      if ((beg < endpos && startpos < end)
   || (startpos == endpos
       && (beg == endpos || (end_is_Z && endpos == end))))
 {
   if (idx == len)
     {


       if (extend)
  {
    vec = xpalloc (vec, len_ptr, 1, ((ptrdiff_t) (((9223372036854775807L >> INTTYPEBITS)) < ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size) ? ((9223372036854775807L >> INTTYPEBITS)) : ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size))),
     sizeof *vec);
    *vec_ptr = vec;
    len = *len_ptr;
  }
       else
  inhibit_storing = 1;
     }

   if (!inhibit_storing)
     vec[idx] = overlay;

   idx++;
 }
      else if (startpos < next)
 next = startpos;
    }

  for (tail = current_buffer->overlays_after; tail; tail = tail->next)
    {
      ptrdiff_t startpos, endpos;

      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

      ostart = XOVERLAY (overlay)->start;
      oend = XOVERLAY (overlay)->end;
      startpos = (((((enum Lisp_Type) ((ostart) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (ostart) == Lisp_Misc_Marker) ? marker_position (ostart) : (emacs_abort (), 0));
      if (end < startpos)
 {
   if (startpos < next)
     next = startpos;
   break;
 }
      endpos = (((((enum Lisp_Type) ((oend) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (oend) == Lisp_Misc_Marker) ? marker_position (oend) : (emacs_abort (), 0));



      if ((beg < endpos && startpos < end)
   || (startpos == endpos
       && (beg == endpos || (end_is_Z && endpos == end))))
 {
   if (idx == len)
     {
       if (extend)
  {
    vec = xpalloc (vec, len_ptr, 1, ((ptrdiff_t) (((9223372036854775807L >> INTTYPEBITS)) < ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size) ? ((9223372036854775807L >> INTTYPEBITS)) : ((((9223372036854775807L)) < ((18446744073709551615UL)) ? ((9223372036854775807L)) : ((18446744073709551615UL))) / word_size))),
     sizeof *vec);
    *vec_ptr = vec;
    len = *len_ptr;
  }
       else
  inhibit_storing = 1;
     }

   if (!inhibit_storing)
     vec[idx] = overlay;
   idx++;
 }
      else if (endpos < beg && endpos > prev)
 prev = endpos;
    }

  if (next_ptr)
    *next_ptr = next;
  if (prev_ptr)
    *prev_ptr = prev;
  return idx;
}





_Bool
mouse_face_overlay_overlaps (Lisp_Object overlay)
{
  ptrdiff_t start = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
  ptrdiff_t end = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
  ptrdiff_t n, i, size;
  Lisp_Object *v, tem;
  Lisp_Object vbuf[10];
  ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;

  size = (sizeof (vbuf) / sizeof (vbuf)[0]);
  v = vbuf;
  n = overlays_in (start, end, 0, &v, &size, ((void*)0), ((void*)0));
  if (n > size)
    {
      do { if ((n) <= sa_avail / sizeof *(v) / (1)) (v) = (sa_avail -= (sizeof *(v) * (1) * (n)), __builtin_alloca (sizeof *(v) * (1) * (n))); else { (v) = xnmalloc (n, sizeof *(v) * (1)); sa_must_free = 1; record_unwind_protect_ptr (xfree, v); } } while (0);
      overlays_in (start, end, 0, &v, &n, ((void*)0), ((void*)0));
    }

  for (i = 0; i < n; ++i)
    if (!((v[i]) == (overlay))
 && (tem = Foverlay_get (overlay, builtin_lisp_symbol (687)),
     !((tem) == (builtin_lisp_symbol (0)))))
      break;

  do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0);
  return i < n;
}




_Bool
overlay_touches_p (ptrdiff_t pos)
{
  Lisp_Object overlay;
  struct Lisp_Overlay *tail;

  for (tail = current_buffer->overlays_before; tail; tail = tail->next)
    {
      ptrdiff_t endpos;

      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));
      ((void) (0 && (OVERLAYP (overlay))));

      endpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
      if (endpos < pos)
 break;
      if (endpos == pos || (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0)) == pos)
 return 1;
    }

  for (tail = current_buffer->overlays_after; tail; tail = tail->next)
    {
      ptrdiff_t startpos;

      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));
      ((void) (0 && (OVERLAYP (overlay))));

      startpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
      if (pos < startpos)
 break;
      if (startpos == pos || (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0)) == pos)
 return 1;
    }
  return 0;
}

struct sortvec
{
  Lisp_Object overlay;
  ptrdiff_t beg, end;
  EMACS_INT priority;
  EMACS_INT spriority;
};

static int
compare_overlays (const void *v1, const void *v2)
{
  const struct sortvec *s1 = v1;
  const struct sortvec *s2 = v2;


  if (s1->priority != s2->priority)
    return s1->priority < s2->priority ? -1 : 1;


  else if (s1->beg < s2->beg)
    return (s1->end < s2->end && s1->spriority > s2->spriority ? 1 : -1);
  else if (s1->beg > s2->beg)
    return (s1->end > s2->end && s1->spriority < s2->spriority ? -1 : 1);
  else if (s1->end != s2->end)
    return s2->end < s1->end ? -1 : 1;
  else if (s1->spriority != s2->spriority)
    return (s1->spriority < s2->spriority ? -1 : 1);
  else if (((s1->overlay) == (s2->overlay)))
    return 0;
  else




    return (s1->overlay) < (s2->overlay) ? -1 : 1;
}




ptrdiff_t
sort_overlays (Lisp_Object *overlay_vec, ptrdiff_t noverlays, struct window *w)
{
  ptrdiff_t i, j;
  ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;
  struct sortvec *sortvec;

  do { if ((noverlays) <= sa_avail / sizeof *(sortvec) / (1)) (sortvec) = (sa_avail -= (sizeof *(sortvec) * (1) * (noverlays)), __builtin_alloca (sizeof *(sortvec) * (1) * (noverlays))); else { (sortvec) = xnmalloc (noverlays, sizeof *(sortvec) * (1)); sa_must_free = 1; record_unwind_protect_ptr (xfree, sortvec); } } while (0);



  for (i = 0, j = 0; i < noverlays; i++)
    {
      Lisp_Object tem;
      Lisp_Object overlay;

      overlay = overlay_vec[i];
      if (OVERLAYP (overlay)
   && (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0)) > 0
   && (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0)) > 0)
 {


   if (w)
     {
       Lisp_Object window;

       window = Foverlay_get (overlay, builtin_lisp_symbol (1018));
       if (WINDOWP (window) && XWINDOW (window) != w)
  continue;
     }


   sortvec[j].overlay = overlay;
   sortvec[j].beg = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
   sortvec[j].end = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
   tem = Foverlay_get (overlay, builtin_lisp_symbol (773));
   if (((tem) == (builtin_lisp_symbol (0))))
     {
       sortvec[j].priority = 0;
       sortvec[j].spriority = 0;
     }
   else if (((((enum Lisp_Type) ((tem) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0))
     {
       sortvec[j].priority = ((tem) >> INTTYPEBITS);
       sortvec[j].spriority = 0;
     }
   else if ((((enum Lisp_Type) ((tem) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
     {
       Lisp_Object car = (((void) (0 && ((((enum Lisp_Type) ((tem) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tem) - (Lisp_Cons))))->car;
       Lisp_Object cdr = (((void) (0 && ((((enum Lisp_Type) ((tem) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tem) - (Lisp_Cons))))->u.cdr;
       sortvec[j].priority = ((((enum Lisp_Type) ((car) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) ? ((car) >> INTTYPEBITS) : 0;
       sortvec[j].spriority = ((((enum Lisp_Type) ((cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) ? ((cdr) >> INTTYPEBITS) : 0;
     }
   j++;
 }
    }
  noverlays = j;



  if (noverlays > 1)
    qsort (sortvec, noverlays, sizeof (struct sortvec), compare_overlays);

  for (i = 0; i < noverlays; i++)
    overlay_vec[i] = sortvec[i].overlay;

  do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0);
  return (noverlays);
}

struct sortstr
{
  Lisp_Object string, string2;
  ptrdiff_t size;
  EMACS_INT priority;
};

struct sortstrlist
{
  struct sortstr *buf;
  ptrdiff_t size;
  ptrdiff_t used;
  ptrdiff_t bytes;
};





static struct sortstrlist overlay_heads, overlay_tails;
static unsigned char *overlay_str_buf;


static ptrdiff_t overlay_str_len;


static int
cmp_for_strings (const void *as1, const void *as2)
{
  struct sortstr const *s1 = as1;
  struct sortstr const *s2 = as2;
  if (s1->size != s2->size)
    return s2->size < s1->size ? -1 : 1;
  if (s1->priority != s2->priority)
    return s1->priority < s2->priority ? -1 : 1;
  return 0;
}

static void
record_overlay_string (struct sortstrlist *ssl, Lisp_Object str,
         Lisp_Object str2, Lisp_Object pri, ptrdiff_t size)
{
  ptrdiff_t nbytes;

  if (ssl->used == ssl->size)
    ssl->buf = xpalloc (ssl->buf, &ssl->size, 5, -1, sizeof *ssl->buf);
  ssl->buf[ssl->used].string = str;
  ssl->buf[ssl->used].string2 = str2;
  ssl->buf[ssl->used].size = size;
  ssl->buf[ssl->used].priority = (((((enum Lisp_Type) ((pri) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0) ? ((pri) >> INTTYPEBITS) : 0);
  ssl->used++;

  if (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
    nbytes = SCHARS (str);
  else if (! STRING_MULTIBYTE (str))
    nbytes = count_size_as_multibyte (SDATA (str),
          SBYTES (str));
  else
    nbytes = SBYTES (str);

  if ((sizeof *(&nbytes) == sizeof (signed char) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (1)) << (sizeof ((0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)))) < 0 ? (((signed char) (nbytes)) < 0 ? ((signed char) (ssl->bytes)) < ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (1)) << (sizeof ((0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)))) - ((signed char) (nbytes)) : ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (1)) << (sizeof ((0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)))) - ((signed char) (nbytes)) < ((signed char) (ssl->bytes))) : ((signed char) (ssl->bytes)) < 0 ? ((signed char) (nbytes)) <= ((signed char) (ssl->bytes)) + ((signed char) (nbytes)) : ((signed char) (nbytes)) < 0 ? ((signed char) (ssl->bytes)) <= ((signed char) (ssl->bytes)) + ((signed char) (nbytes)) : ((signed char) (ssl->bytes)) + ((signed char) (nbytes)) < ((signed char) (nbytes))) || (((0 * (((signed char) (ssl->bytes)) + ((signed char) (nbytes))) - (1)) < 0) && (((signed char) (ssl->bytes)) + ((signed char) (nbytes))) < ((-127 -1))) || (127) < (((signed char) (ssl->bytes)) + ((signed char) (nbytes)))) ? (*(&nbytes) = (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) : ((signed char) (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&nbytes) = (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) : ((signed char) (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-127 -1))) || (127) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) <= (127) ? (signed char) ((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) : ((signed char) (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&nbytes) = (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) <= (127) ? (signed char) ((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) : ((signed char) (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&nbytes) == sizeof (short int) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (short int) ? (((((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)))) < 0 ? (((short int) (nbytes)) < 0 ? ((short int) (ssl->bytes)) < ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)))) - ((short int) (nbytes)) : ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)))) - ((short int) (nbytes)) < ((short int) (ssl->bytes))) : ((short int) (ssl->bytes)) < 0 ? ((short int) (nbytes)) <= ((short int) (ssl->bytes)) + ((short int) (nbytes)) : ((short int) (nbytes)) < 0 ? ((short int) (ssl->bytes)) <= ((short int) (ssl->bytes)) + ((short int) (nbytes)) : ((short int) (ssl->bytes)) + ((short int) (nbytes)) < ((short int) (nbytes))) || (((0 * (((short int) (ssl->bytes)) + ((short int) (nbytes))) - (1)) < 0) && (((short int) (ssl->bytes)) + ((short int) (nbytes))) < ((-32767 -1))) || (32767) < (((short int) (ssl->bytes)) + ((short int) (nbytes)))) ? (*(&nbytes) = (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) : ((short int) (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&nbytes) = (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) : ((short int) (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-32767 -1))) || (32767) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) <= (32767) ? (short int) ((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) : ((short int) (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&nbytes) = (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) <= (32767) ? (short int) ((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) : ((short int) (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&nbytes) == sizeof (int) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (int) ? (((((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)))) < 0 ? (((int) (nbytes)) < 0 ? ((int) (ssl->bytes)) < ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)))) - ((int) (nbytes)) : ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)))) - ((int) (nbytes)) < ((int) (ssl->bytes))) : ((int) (ssl->bytes)) < 0 ? ((int) (nbytes)) <= ((int) (ssl->bytes)) + ((int) (nbytes)) : ((int) (nbytes)) < 0 ? ((int) (ssl->bytes)) <= ((int) (ssl->bytes)) + ((int) (nbytes)) : ((int) (ssl->bytes)) + ((int) (nbytes)) < ((int) (nbytes))) || (((0 * (((int) (ssl->bytes)) + ((int) (nbytes))) - (1)) < 0) && (((int) (ssl->bytes)) + ((int) (nbytes))) < ((-2147483647 -1))) || (2147483647) < (((int) (ssl->bytes)) + ((int) (nbytes)))) ? (*(&nbytes) = (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) : ((int) (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&nbytes) = (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) : ((int) (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-2147483647 -1))) || (2147483647) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) <= (2147483647) ? (int) ((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) : ((int) (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&nbytes) = (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) <= (2147483647) ? (int) ((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) : ((int) (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&nbytes) == sizeof (long int) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (long int) ? (((((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)))) < 0 ? (((long int) (nbytes)) < 0 ? ((long int) (ssl->bytes)) < ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)))) - ((long int) (nbytes)) : ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)))) - ((long int) (nbytes)) < ((long int) (ssl->bytes))) : ((long int) (ssl->bytes)) < 0 ? ((long int) (nbytes)) <= ((long int) (ssl->bytes)) + ((long int) (nbytes)) : ((long int) (nbytes)) < 0 ? ((long int) (ssl->bytes)) <= ((long int) (ssl->bytes)) + ((long int) (nbytes)) : ((long int) (ssl->bytes)) + ((long int) (nbytes)) < ((long int) (nbytes))) || (((0 * (((long int) (ssl->bytes)) + ((long int) (nbytes))) - (1)) < 0) && (((long int) (ssl->bytes)) + ((long int) (nbytes))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (ssl->bytes)) + ((long int) (nbytes)))) ? (*(&nbytes) = (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) : ((long int) (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&nbytes) = (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) : ((long int) (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) : ((long int) (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&nbytes) = (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) : ((long int) (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((ssl->bytes) + (nbytes)) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)))) < 0 ? (((long long int) (nbytes)) < 0 ? ((long long int) (ssl->bytes)) < ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)))) - ((long long int) (nbytes)) : ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)))) - ((long long int) (nbytes)) < ((long long int) (ssl->bytes))) : ((long long int) (ssl->bytes)) < 0 ? ((long long int) (nbytes)) <= ((long long int) (ssl->bytes)) + ((long long int) (nbytes)) : ((long long int) (nbytes)) < 0 ? ((long long int) (ssl->bytes)) <= ((long long int) (ssl->bytes)) + ((long long int) (nbytes)) : ((long long int) (ssl->bytes)) + ((long long int) (nbytes)) < ((long long int) (nbytes))) || (((0 * (((long long int) (ssl->bytes)) + ((long long int) (nbytes))) - (1)) < 0) && (((long long int) (ssl->bytes)) + ((long long int) (nbytes))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (ssl->bytes)) + ((long long int) (nbytes)))) ? (*(&nbytes) = (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) : ((long long int) (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&nbytes) = (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) : ((long long int) (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) : ((long long int) (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&nbytes) = (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) : ((long long int) (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0))))))
    memory_full ((18446744073709551615UL));
  ssl->bytes = nbytes;

  if (STRINGP (str2))
    {
      if (((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
 nbytes = SCHARS (str2);
      else if (! STRING_MULTIBYTE (str2))
 nbytes = count_size_as_multibyte (SDATA (str2),
       SBYTES (str2));
      else
 nbytes = SBYTES (str2);

      if ((sizeof *(&nbytes) == sizeof (signed char) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (1)) << (sizeof ((0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)))) < 0 ? (((signed char) (nbytes)) < 0 ? ((signed char) (ssl->bytes)) < ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (1)) << (sizeof ((0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (0)))) - ((signed char) (nbytes)) : ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + (1)) << (sizeof ((0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (nbytes)) + ((signed char) (ssl->bytes))) - (1)))) - ((signed char) (nbytes)) < ((signed char) (ssl->bytes))) : ((signed char) (ssl->bytes)) < 0 ? ((signed char) (nbytes)) <= ((signed char) (ssl->bytes)) + ((signed char) (nbytes)) : ((signed char) (nbytes)) < 0 ? ((signed char) (ssl->bytes)) <= ((signed char) (ssl->bytes)) + ((signed char) (nbytes)) : ((signed char) (ssl->bytes)) + ((signed char) (nbytes)) < ((signed char) (nbytes))) || (((0 * (((signed char) (ssl->bytes)) + ((signed char) (nbytes))) - (1)) < 0) && (((signed char) (ssl->bytes)) + ((signed char) (nbytes))) < ((-127 -1))) || (127) < (((signed char) (ssl->bytes)) + ((signed char) (nbytes)))) ? (*(&nbytes) = (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) : ((signed char) (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&nbytes) = (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) : ((signed char) (((unsigned char) ((signed char) (ssl->bytes)) + (unsigned char) ((signed char) (nbytes))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-127 -1))) || (127) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) <= (127) ? (signed char) ((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) : ((signed char) (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&nbytes) = (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) <= (127) ? (signed char) ((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) : ((signed char) (((unsigned char) (ssl->bytes) + (unsigned char) (nbytes)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&nbytes) == sizeof (short int) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (short int) ? (((((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)))) < 0 ? (((short int) (nbytes)) < 0 ? ((short int) (ssl->bytes)) < ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (0)))) - ((short int) (nbytes)) : ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (nbytes)) + ((short int) (ssl->bytes))) - (1)))) - ((short int) (nbytes)) < ((short int) (ssl->bytes))) : ((short int) (ssl->bytes)) < 0 ? ((short int) (nbytes)) <= ((short int) (ssl->bytes)) + ((short int) (nbytes)) : ((short int) (nbytes)) < 0 ? ((short int) (ssl->bytes)) <= ((short int) (ssl->bytes)) + ((short int) (nbytes)) : ((short int) (ssl->bytes)) + ((short int) (nbytes)) < ((short int) (nbytes))) || (((0 * (((short int) (ssl->bytes)) + ((short int) (nbytes))) - (1)) < 0) && (((short int) (ssl->bytes)) + ((short int) (nbytes))) < ((-32767 -1))) || (32767) < (((short int) (ssl->bytes)) + ((short int) (nbytes)))) ? (*(&nbytes) = (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) : ((short int) (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&nbytes) = (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) : ((short int) (((unsigned short int) ((short int) (ssl->bytes)) + (unsigned short int) ((short int) (nbytes))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-32767 -1))) || (32767) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) <= (32767) ? (short int) ((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) : ((short int) (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&nbytes) = (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) <= (32767) ? (short int) ((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) : ((short int) (((unsigned short int) (ssl->bytes) + (unsigned short int) (nbytes)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&nbytes) == sizeof (int) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (int) ? (((((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)))) < 0 ? (((int) (nbytes)) < 0 ? ((int) (ssl->bytes)) < ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (0)))) - ((int) (nbytes)) : ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((int) (nbytes)) + ((int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (nbytes)) + ((int) (ssl->bytes))) - (1)))) - ((int) (nbytes)) < ((int) (ssl->bytes))) : ((int) (ssl->bytes)) < 0 ? ((int) (nbytes)) <= ((int) (ssl->bytes)) + ((int) (nbytes)) : ((int) (nbytes)) < 0 ? ((int) (ssl->bytes)) <= ((int) (ssl->bytes)) + ((int) (nbytes)) : ((int) (ssl->bytes)) + ((int) (nbytes)) < ((int) (nbytes))) || (((0 * (((int) (ssl->bytes)) + ((int) (nbytes))) - (1)) < 0) && (((int) (ssl->bytes)) + ((int) (nbytes))) < ((-2147483647 -1))) || (2147483647) < (((int) (ssl->bytes)) + ((int) (nbytes)))) ? (*(&nbytes) = (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) : ((int) (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&nbytes) = (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) : ((int) (((unsigned int) ((int) (ssl->bytes)) + (unsigned int) ((int) (nbytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-2147483647 -1))) || (2147483647) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) <= (2147483647) ? (int) ((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) : ((int) (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&nbytes) = (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) <= (2147483647) ? (int) ((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) : ((int) (((unsigned int) (ssl->bytes) + (unsigned int) (nbytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&nbytes) == sizeof (long int) ? (sizeof ((ssl->bytes) + (nbytes)) < sizeof (long int) ? (((((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)))) < 0 ? (((long int) (nbytes)) < 0 ? ((long int) (ssl->bytes)) < ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (0)))) - ((long int) (nbytes)) : ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (nbytes)) + ((long int) (ssl->bytes))) - (1)))) - ((long int) (nbytes)) < ((long int) (ssl->bytes))) : ((long int) (ssl->bytes)) < 0 ? ((long int) (nbytes)) <= ((long int) (ssl->bytes)) + ((long int) (nbytes)) : ((long int) (nbytes)) < 0 ? ((long int) (ssl->bytes)) <= ((long int) (ssl->bytes)) + ((long int) (nbytes)) : ((long int) (ssl->bytes)) + ((long int) (nbytes)) < ((long int) (nbytes))) || (((0 * (((long int) (ssl->bytes)) + ((long int) (nbytes))) - (1)) < 0) && (((long int) (ssl->bytes)) + ((long int) (nbytes))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (ssl->bytes)) + ((long int) (nbytes)))) ? (*(&nbytes) = (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) : ((long int) (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&nbytes) = (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) : ((long int) (((unsigned long int) ((long int) (ssl->bytes)) + (unsigned long int) ((long int) (nbytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) : ((long int) (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&nbytes) = (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) : ((long int) (((unsigned long int) (ssl->bytes) + (unsigned long int) (nbytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((ssl->bytes) + (nbytes)) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)))) < 0 ? (((long long int) (nbytes)) < 0 ? ((long long int) (ssl->bytes)) < ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (0)))) - ((long long int) (nbytes)) : ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + (1)) << (sizeof ((0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (nbytes)) + ((long long int) (ssl->bytes))) - (1)))) - ((long long int) (nbytes)) < ((long long int) (ssl->bytes))) : ((long long int) (ssl->bytes)) < 0 ? ((long long int) (nbytes)) <= ((long long int) (ssl->bytes)) + ((long long int) (nbytes)) : ((long long int) (nbytes)) < 0 ? ((long long int) (ssl->bytes)) <= ((long long int) (ssl->bytes)) + ((long long int) (nbytes)) : ((long long int) (ssl->bytes)) + ((long long int) (nbytes)) < ((long long int) (nbytes))) || (((0 * (((long long int) (ssl->bytes)) + ((long long int) (nbytes))) - (1)) < 0) && (((long long int) (ssl->bytes)) + ((long long int) (nbytes))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (ssl->bytes)) + ((long long int) (nbytes)))) ? (*(&nbytes) = (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) : ((long long int) (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&nbytes) = (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) : ((long long int) (((unsigned long long int) ((long long int) (ssl->bytes)) + (unsigned long long int) ((long long int) (nbytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) < 0 ? ((nbytes) < 0 ? (ssl->bytes) < ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? - (~ (0 * (0 * (nbytes) + (ssl->bytes)) + (0)) == -1) - ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) + (0)))) - (nbytes) : ((((0 * (0 * (nbytes) + (ssl->bytes)) - (1)) < 0) ? ((((0 * (0 * (nbytes) + (ssl->bytes)) + (1)) << (sizeof ((0 * (nbytes) + (ssl->bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (nbytes) + (ssl->bytes)) - (1)))) - (nbytes) < (ssl->bytes)) : (ssl->bytes) < 0 ? (nbytes) <= (ssl->bytes) + (nbytes) : (nbytes) < 0 ? (ssl->bytes) <= (ssl->bytes) + (nbytes) : (ssl->bytes) + (nbytes) < (nbytes)) || (((0 * ((ssl->bytes) + (nbytes)) - (1)) < 0) && ((ssl->bytes) + (nbytes)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((ssl->bytes) + (nbytes))) ? (*(&nbytes) = (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) : ((long long int) (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&nbytes) = (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) : ((long long int) (((unsigned long long int) (ssl->bytes) + (unsigned long long int) (nbytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0))))))
 memory_full ((18446744073709551615UL));
      ssl->bytes = nbytes;
    }
}
# 3285 "buffer.c"
ptrdiff_t
overlay_strings (ptrdiff_t pos, struct window *w, unsigned char **pstr)
{
  Lisp_Object overlay, window, str;
  struct Lisp_Overlay *ov;
  ptrdiff_t startpos, endpos;
  _Bool multibyte = ! ((((current_buffer)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0)));

  overlay_heads.used = overlay_heads.bytes = 0;
  overlay_tails.used = overlay_tails.bytes = 0;
  for (ov = current_buffer->overlays_before; ov; ov = ov->next)
    {
      ((overlay) = make_lisp_ptr (ov, Lisp_Misc));
      ((void) (0 && (OVERLAYP (overlay))));

      startpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
      endpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
      if (endpos < pos)
 break;
      if (endpos != pos && startpos != pos)
 continue;
      window = Foverlay_get (overlay, builtin_lisp_symbol (1018));
      if (WINDOWP (window) && XWINDOW (window) != w)
 continue;
      if (startpos == pos
   && (str = Foverlay_get (overlay, builtin_lisp_symbol (199)), STRINGP (str)))
 record_overlay_string (&overlay_heads, str,
          (startpos == endpos
    ? Foverlay_get (overlay, builtin_lisp_symbol (168))
    : builtin_lisp_symbol (0)),
          Foverlay_get (overlay, builtin_lisp_symbol (773)),
          endpos - startpos);
      else if (endpos == pos
   && (str = Foverlay_get (overlay, builtin_lisp_symbol (168)), STRINGP (str)))
 record_overlay_string (&overlay_tails, str, builtin_lisp_symbol (0),
          Foverlay_get (overlay, builtin_lisp_symbol (773)),
          endpos - startpos);
    }
  for (ov = current_buffer->overlays_after; ov; ov = ov->next)
    {
      ((overlay) = make_lisp_ptr (ov, Lisp_Misc));
      ((void) (0 && (OVERLAYP (overlay))));

      startpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
      endpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
      if (startpos > pos)
 break;
      if (endpos != pos && startpos != pos)
 continue;
      window = Foverlay_get (overlay, builtin_lisp_symbol (1018));
      if (WINDOWP (window) && XWINDOW (window) != w)
 continue;
      if (startpos == pos
   && (str = Foverlay_get (overlay, builtin_lisp_symbol (199)), STRINGP (str)))
 record_overlay_string (&overlay_heads, str,
          (startpos == endpos
    ? Foverlay_get (overlay, builtin_lisp_symbol (168))
    : builtin_lisp_symbol (0)),
          Foverlay_get (overlay, builtin_lisp_symbol (773)),
          endpos - startpos);
      else if (endpos == pos
        && (str = Foverlay_get (overlay, builtin_lisp_symbol (168)), STRINGP (str)))
 record_overlay_string (&overlay_tails, str, builtin_lisp_symbol (0),
          Foverlay_get (overlay, builtin_lisp_symbol (773)),
          endpos - startpos);
    }
  if (overlay_tails.used > 1)
    qsort (overlay_tails.buf, overlay_tails.used, sizeof (struct sortstr),
    cmp_for_strings);
  if (overlay_heads.used > 1)
    qsort (overlay_heads.buf, overlay_heads.used, sizeof (struct sortstr),
    cmp_for_strings);
  if (overlay_heads.bytes || overlay_tails.bytes)
    {
      Lisp_Object tem;
      ptrdiff_t i;
      unsigned char *p;
      ptrdiff_t total;

      if ((sizeof *(&total) == sizeof (signed char) ? (sizeof ((overlay_heads.bytes) + (overlay_tails.bytes)) < sizeof (signed char) ? (((((((0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (0)))) < 0 ? (((signed char) (overlay_tails.bytes)) < 0 ? ((signed char) (overlay_heads.bytes)) < ((((0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (0)))) - ((signed char) (overlay_tails.bytes)) : ((((0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (overlay_tails.bytes)) + ((signed char) (overlay_heads.bytes))) - (1)))) - ((signed char) (overlay_tails.bytes)) < ((signed char) (overlay_heads.bytes))) : ((signed char) (overlay_heads.bytes)) < 0 ? ((signed char) (overlay_tails.bytes)) <= ((signed char) (overlay_heads.bytes)) + ((signed char) (overlay_tails.bytes)) : ((signed char) (overlay_tails.bytes)) < 0 ? ((signed char) (overlay_heads.bytes)) <= ((signed char) (overlay_heads.bytes)) + ((signed char) (overlay_tails.bytes)) : ((signed char) (overlay_heads.bytes)) + ((signed char) (overlay_tails.bytes)) < ((signed char) (overlay_tails.bytes))) || (((0 * (((signed char) (overlay_heads.bytes)) + ((signed char) (overlay_tails.bytes))) - (1)) < 0) && (((signed char) (overlay_heads.bytes)) + ((signed char) (overlay_tails.bytes))) < ((-127 -1))) || (127) < (((signed char) (overlay_heads.bytes)) + ((signed char) (overlay_tails.bytes)))) ? (*(&total) = (((unsigned char) ((signed char) (overlay_heads.bytes)) + (unsigned char) ((signed char) (overlay_tails.bytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (overlay_heads.bytes)) + (unsigned char) ((signed char) (overlay_tails.bytes))) : ((signed char) (((unsigned char) ((signed char) (overlay_heads.bytes)) + (unsigned char) ((signed char) (overlay_tails.bytes))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&total) = (((unsigned char) ((signed char) (overlay_heads.bytes)) + (unsigned char) ((signed char) (overlay_tails.bytes))) <= (127) ? (signed char) ((unsigned char) ((signed char) (overlay_heads.bytes)) + (unsigned char) ((signed char) (overlay_tails.bytes))) : ((signed char) (((unsigned char) ((signed char) (overlay_heads.bytes)) + (unsigned char) ((signed char) (overlay_tails.bytes))) - ((-127 -1))) + ((-127 -1)))), 0)) : (((((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) < 0 ? ((overlay_tails.bytes) < 0 ? (overlay_heads.bytes) < ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) - (overlay_tails.bytes) : ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)))) - (overlay_tails.bytes) < (overlay_heads.bytes)) : (overlay_heads.bytes) < 0 ? (overlay_tails.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_tails.bytes) < 0 ? (overlay_heads.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_heads.bytes) + (overlay_tails.bytes) < (overlay_tails.bytes)) || (((0 * ((overlay_heads.bytes) + (overlay_tails.bytes)) - (1)) < 0) && ((overlay_heads.bytes) + (overlay_tails.bytes)) < ((-127 -1))) || (127) < ((overlay_heads.bytes) + (overlay_tails.bytes))) ? (*(&total) = (((unsigned char) (overlay_heads.bytes) + (unsigned char) (overlay_tails.bytes)) <= (127) ? (signed char) ((unsigned char) (overlay_heads.bytes) + (unsigned char) (overlay_tails.bytes)) : ((signed char) (((unsigned char) (overlay_heads.bytes) + (unsigned char) (overlay_tails.bytes)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&total) = (((unsigned char) (overlay_heads.bytes) + (unsigned char) (overlay_tails.bytes)) <= (127) ? (signed char) ((unsigned char) (overlay_heads.bytes) + (unsigned char) (overlay_tails.bytes)) : ((signed char) (((unsigned char) (overlay_heads.bytes) + (unsigned char) (overlay_tails.bytes)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&total) == sizeof (short int) ? (sizeof ((overlay_heads.bytes) + (overlay_tails.bytes)) < sizeof (short int) ? (((((((0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (0)))) < 0 ? (((short int) (overlay_tails.bytes)) < 0 ? ((short int) (overlay_heads.bytes)) < ((((0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (0)))) - ((short int) (overlay_tails.bytes)) : ((((0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) - (1)) < 0) ? ((((0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (overlay_tails.bytes)) + ((short int) (overlay_heads.bytes))) - (1)))) - ((short int) (overlay_tails.bytes)) < ((short int) (overlay_heads.bytes))) : ((short int) (overlay_heads.bytes)) < 0 ? ((short int) (overlay_tails.bytes)) <= ((short int) (overlay_heads.bytes)) + ((short int) (overlay_tails.bytes)) : ((short int) (overlay_tails.bytes)) < 0 ? ((short int) (overlay_heads.bytes)) <= ((short int) (overlay_heads.bytes)) + ((short int) (overlay_tails.bytes)) : ((short int) (overlay_heads.bytes)) + ((short int) (overlay_tails.bytes)) < ((short int) (overlay_tails.bytes))) || (((0 * (((short int) (overlay_heads.bytes)) + ((short int) (overlay_tails.bytes))) - (1)) < 0) && (((short int) (overlay_heads.bytes)) + ((short int) (overlay_tails.bytes))) < ((-32767 -1))) || (32767) < (((short int) (overlay_heads.bytes)) + ((short int) (overlay_tails.bytes)))) ? (*(&total) = (((unsigned short int) ((short int) (overlay_heads.bytes)) + (unsigned short int) ((short int) (overlay_tails.bytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (overlay_heads.bytes)) + (unsigned short int) ((short int) (overlay_tails.bytes))) : ((short int) (((unsigned short int) ((short int) (overlay_heads.bytes)) + (unsigned short int) ((short int) (overlay_tails.bytes))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&total) = (((unsigned short int) ((short int) (overlay_heads.bytes)) + (unsigned short int) ((short int) (overlay_tails.bytes))) <= (32767) ? (short int) ((unsigned short int) ((short int) (overlay_heads.bytes)) + (unsigned short int) ((short int) (overlay_tails.bytes))) : ((short int) (((unsigned short int) ((short int) (overlay_heads.bytes)) + (unsigned short int) ((short int) (overlay_tails.bytes))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : (((((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) < 0 ? ((overlay_tails.bytes) < 0 ? (overlay_heads.bytes) < ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) - (overlay_tails.bytes) : ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)))) - (overlay_tails.bytes) < (overlay_heads.bytes)) : (overlay_heads.bytes) < 0 ? (overlay_tails.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_tails.bytes) < 0 ? (overlay_heads.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_heads.bytes) + (overlay_tails.bytes) < (overlay_tails.bytes)) || (((0 * ((overlay_heads.bytes) + (overlay_tails.bytes)) - (1)) < 0) && ((overlay_heads.bytes) + (overlay_tails.bytes)) < ((-32767 -1))) || (32767) < ((overlay_heads.bytes) + (overlay_tails.bytes))) ? (*(&total) = (((unsigned short int) (overlay_heads.bytes) + (unsigned short int) (overlay_tails.bytes)) <= (32767) ? (short int) ((unsigned short int) (overlay_heads.bytes) + (unsigned short int) (overlay_tails.bytes)) : ((short int) (((unsigned short int) (overlay_heads.bytes) + (unsigned short int) (overlay_tails.bytes)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&total) = (((unsigned short int) (overlay_heads.bytes) + (unsigned short int) (overlay_tails.bytes)) <= (32767) ? (short int) ((unsigned short int) (overlay_heads.bytes) + (unsigned short int) (overlay_tails.bytes)) : ((short int) (((unsigned short int) (overlay_heads.bytes) + (unsigned short int) (overlay_tails.bytes)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&total) == sizeof (int) ? (sizeof ((overlay_heads.bytes) + (overlay_tails.bytes)) < sizeof (int) ? (((((((0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (0)))) < 0 ? (((int) (overlay_tails.bytes)) < 0 ? ((int) (overlay_heads.bytes)) < ((((0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (0)))) - ((int) (overlay_tails.bytes)) : ((((0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) - (1)) < 0) ? ((((0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (overlay_tails.bytes)) + ((int) (overlay_heads.bytes))) - (1)))) - ((int) (overlay_tails.bytes)) < ((int) (overlay_heads.bytes))) : ((int) (overlay_heads.bytes)) < 0 ? ((int) (overlay_tails.bytes)) <= ((int) (overlay_heads.bytes)) + ((int) (overlay_tails.bytes)) : ((int) (overlay_tails.bytes)) < 0 ? ((int) (overlay_heads.bytes)) <= ((int) (overlay_heads.bytes)) + ((int) (overlay_tails.bytes)) : ((int) (overlay_heads.bytes)) + ((int) (overlay_tails.bytes)) < ((int) (overlay_tails.bytes))) || (((0 * (((int) (overlay_heads.bytes)) + ((int) (overlay_tails.bytes))) - (1)) < 0) && (((int) (overlay_heads.bytes)) + ((int) (overlay_tails.bytes))) < ((-2147483647 -1))) || (2147483647) < (((int) (overlay_heads.bytes)) + ((int) (overlay_tails.bytes)))) ? (*(&total) = (((unsigned int) ((int) (overlay_heads.bytes)) + (unsigned int) ((int) (overlay_tails.bytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (overlay_heads.bytes)) + (unsigned int) ((int) (overlay_tails.bytes))) : ((int) (((unsigned int) ((int) (overlay_heads.bytes)) + (unsigned int) ((int) (overlay_tails.bytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&total) = (((unsigned int) ((int) (overlay_heads.bytes)) + (unsigned int) ((int) (overlay_tails.bytes))) <= (2147483647) ? (int) ((unsigned int) ((int) (overlay_heads.bytes)) + (unsigned int) ((int) (overlay_tails.bytes))) : ((int) (((unsigned int) ((int) (overlay_heads.bytes)) + (unsigned int) ((int) (overlay_tails.bytes))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : (((((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) < 0 ? ((overlay_tails.bytes) < 0 ? (overlay_heads.bytes) < ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) - (overlay_tails.bytes) : ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)))) - (overlay_tails.bytes) < (overlay_heads.bytes)) : (overlay_heads.bytes) < 0 ? (overlay_tails.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_tails.bytes) < 0 ? (overlay_heads.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_heads.bytes) + (overlay_tails.bytes) < (overlay_tails.bytes)) || (((0 * ((overlay_heads.bytes) + (overlay_tails.bytes)) - (1)) < 0) && ((overlay_heads.bytes) + (overlay_tails.bytes)) < ((-2147483647 -1))) || (2147483647) < ((overlay_heads.bytes) + (overlay_tails.bytes))) ? (*(&total) = (((unsigned int) (overlay_heads.bytes) + (unsigned int) (overlay_tails.bytes)) <= (2147483647) ? (int) ((unsigned int) (overlay_heads.bytes) + (unsigned int) (overlay_tails.bytes)) : ((int) (((unsigned int) (overlay_heads.bytes) + (unsigned int) (overlay_tails.bytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&total) = (((unsigned int) (overlay_heads.bytes) + (unsigned int) (overlay_tails.bytes)) <= (2147483647) ? (int) ((unsigned int) (overlay_heads.bytes) + (unsigned int) (overlay_tails.bytes)) : ((int) (((unsigned int) (overlay_heads.bytes) + (unsigned int) (overlay_tails.bytes)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&total) == sizeof (long int) ? (sizeof ((overlay_heads.bytes) + (overlay_tails.bytes)) < sizeof (long int) ? (((((((0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (0)))) < 0 ? (((long int) (overlay_tails.bytes)) < 0 ? ((long int) (overlay_heads.bytes)) < ((((0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (0)))) - ((long int) (overlay_tails.bytes)) : ((((0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) - (1)) < 0) ? ((((0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (overlay_tails.bytes)) + ((long int) (overlay_heads.bytes))) - (1)))) - ((long int) (overlay_tails.bytes)) < ((long int) (overlay_heads.bytes))) : ((long int) (overlay_heads.bytes)) < 0 ? ((long int) (overlay_tails.bytes)) <= ((long int) (overlay_heads.bytes)) + ((long int) (overlay_tails.bytes)) : ((long int) (overlay_tails.bytes)) < 0 ? ((long int) (overlay_heads.bytes)) <= ((long int) (overlay_heads.bytes)) + ((long int) (overlay_tails.bytes)) : ((long int) (overlay_heads.bytes)) + ((long int) (overlay_tails.bytes)) < ((long int) (overlay_tails.bytes))) || (((0 * (((long int) (overlay_heads.bytes)) + ((long int) (overlay_tails.bytes))) - (1)) < 0) && (((long int) (overlay_heads.bytes)) + ((long int) (overlay_tails.bytes))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (overlay_heads.bytes)) + ((long int) (overlay_tails.bytes)))) ? (*(&total) = (((unsigned long int) ((long int) (overlay_heads.bytes)) + (unsigned long int) ((long int) (overlay_tails.bytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (overlay_heads.bytes)) + (unsigned long int) ((long int) (overlay_tails.bytes))) : ((long int) (((unsigned long int) ((long int) (overlay_heads.bytes)) + (unsigned long int) ((long int) (overlay_tails.bytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&total) = (((unsigned long int) ((long int) (overlay_heads.bytes)) + (unsigned long int) ((long int) (overlay_tails.bytes))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (overlay_heads.bytes)) + (unsigned long int) ((long int) (overlay_tails.bytes))) : ((long int) (((unsigned long int) ((long int) (overlay_heads.bytes)) + (unsigned long int) ((long int) (overlay_tails.bytes))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : (((((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) < 0 ? ((overlay_tails.bytes) < 0 ? (overlay_heads.bytes) < ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) - (overlay_tails.bytes) : ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)))) - (overlay_tails.bytes) < (overlay_heads.bytes)) : (overlay_heads.bytes) < 0 ? (overlay_tails.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_tails.bytes) < 0 ? (overlay_heads.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_heads.bytes) + (overlay_tails.bytes) < (overlay_tails.bytes)) || (((0 * ((overlay_heads.bytes) + (overlay_tails.bytes)) - (1)) < 0) && ((overlay_heads.bytes) + (overlay_tails.bytes)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((overlay_heads.bytes) + (overlay_tails.bytes))) ? (*(&total) = (((unsigned long int) (overlay_heads.bytes) + (unsigned long int) (overlay_tails.bytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (overlay_heads.bytes) + (unsigned long int) (overlay_tails.bytes)) : ((long int) (((unsigned long int) (overlay_heads.bytes) + (unsigned long int) (overlay_tails.bytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&total) = (((unsigned long int) (overlay_heads.bytes) + (unsigned long int) (overlay_tails.bytes)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (overlay_heads.bytes) + (unsigned long int) (overlay_tails.bytes)) : ((long int) (((unsigned long int) (overlay_heads.bytes) + (unsigned long int) (overlay_tails.bytes)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((overlay_heads.bytes) + (overlay_tails.bytes)) < sizeof (long long int) ? (((((((0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (0)))) < 0 ? (((long long int) (overlay_tails.bytes)) < 0 ? ((long long int) (overlay_heads.bytes)) < ((((0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (0)) == -1) - ((((0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (0)))) - ((long long int) (overlay_tails.bytes)) : ((((0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + (1)) << (sizeof ((0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (overlay_tails.bytes)) + ((long long int) (overlay_heads.bytes))) - (1)))) - ((long long int) (overlay_tails.bytes)) < ((long long int) (overlay_heads.bytes))) : ((long long int) (overlay_heads.bytes)) < 0 ? ((long long int) (overlay_tails.bytes)) <= ((long long int) (overlay_heads.bytes)) + ((long long int) (overlay_tails.bytes)) : ((long long int) (overlay_tails.bytes)) < 0 ? ((long long int) (overlay_heads.bytes)) <= ((long long int) (overlay_heads.bytes)) + ((long long int) (overlay_tails.bytes)) : ((long long int) (overlay_heads.bytes)) + ((long long int) (overlay_tails.bytes)) < ((long long int) (overlay_tails.bytes))) || (((0 * (((long long int) (overlay_heads.bytes)) + ((long long int) (overlay_tails.bytes))) - (1)) < 0) && (((long long int) (overlay_heads.bytes)) + ((long long int) (overlay_tails.bytes))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (overlay_heads.bytes)) + ((long long int) (overlay_tails.bytes)))) ? (*(&total) = (((unsigned long long int) ((long long int) (overlay_heads.bytes)) + (unsigned long long int) ((long long int) (overlay_tails.bytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (overlay_heads.bytes)) + (unsigned long long int) ((long long int) (overlay_tails.bytes))) : ((long long int) (((unsigned long long int) ((long long int) (overlay_heads.bytes)) + (unsigned long long int) ((long long int) (overlay_tails.bytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&total) = (((unsigned long long int) ((long long int) (overlay_heads.bytes)) + (unsigned long long int) ((long long int) (overlay_tails.bytes))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (overlay_heads.bytes)) + (unsigned long long int) ((long long int) (overlay_tails.bytes))) : ((long long int) (((unsigned long long int) ((long long int) (overlay_heads.bytes)) + (unsigned long long int) ((long long int) (overlay_tails.bytes))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : (((((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) < 0 ? ((overlay_tails.bytes) < 0 ? (overlay_heads.bytes) < ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? - (~ (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)) == -1) - ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (0)))) - (overlay_tails.bytes) : ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)) < 0) ? ((((0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + (1)) << (sizeof ((0 * (overlay_tails.bytes) + (overlay_heads.bytes)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (overlay_tails.bytes) + (overlay_heads.bytes)) - (1)))) - (overlay_tails.bytes) < (overlay_heads.bytes)) : (overlay_heads.bytes) < 0 ? (overlay_tails.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_tails.bytes) < 0 ? (overlay_heads.bytes) <= (overlay_heads.bytes) + (overlay_tails.bytes) : (overlay_heads.bytes) + (overlay_tails.bytes) < (overlay_tails.bytes)) || (((0 * ((overlay_heads.bytes) + (overlay_tails.bytes)) - (1)) < 0) && ((overlay_heads.bytes) + (overlay_tails.bytes)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((overlay_heads.bytes) + (overlay_tails.bytes))) ? (*(&total) = (((unsigned long long int) (overlay_heads.bytes) + (unsigned long long int) (overlay_tails.bytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (overlay_heads.bytes) + (unsigned long long int) (overlay_tails.bytes)) : ((long long int) (((unsigned long long int) (overlay_heads.bytes) + (unsigned long long int) (overlay_tails.bytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&total) = (((unsigned long long int) (overlay_heads.bytes) + (unsigned long long int) (overlay_tails.bytes)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (overlay_heads.bytes) + (unsigned long long int) (overlay_tails.bytes)) : ((long long int) (((unsigned long long int) (overlay_heads.bytes) + (unsigned long long int) (overlay_tails.bytes)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0))))))
 memory_full ((18446744073709551615UL));
      if (total > overlay_str_len)
 overlay_str_buf = xpalloc (overlay_str_buf, &overlay_str_len,
       total - overlay_str_len, -1, 1);

      p = overlay_str_buf;
      for (i = overlay_tails.used; --i >= 0;)
 {
   ptrdiff_t nbytes;
   tem = overlay_tails.buf[i].string;
   nbytes = copy_text (SDATA (tem), p,
         SBYTES (tem),
         STRING_MULTIBYTE (tem), multibyte);
   p += nbytes;
 }
      for (i = 0; i < overlay_heads.used; ++i)
 {
   ptrdiff_t nbytes;
   tem = overlay_heads.buf[i].string;
   nbytes = copy_text (SDATA (tem), p,
         SBYTES (tem),
         STRING_MULTIBYTE (tem), multibyte);
   p += nbytes;
   tem = overlay_heads.buf[i].string2;
   if (STRINGP (tem))
     {
       nbytes = copy_text (SDATA (tem), p,
      SBYTES (tem),
      STRING_MULTIBYTE (tem), multibyte);
       p += nbytes;
     }
 }
      if (p != overlay_str_buf + total)
 emacs_abort ();
      if (pstr)
 *pstr = overlay_str_buf;
      return total;
    }
  return 0;
}



void
recenter_overlay_lists (struct buffer *buf, ptrdiff_t pos)
{
  Lisp_Object overlay, beg, end;
  struct Lisp_Overlay *prev, *tail, *next;






  prev = ((void*)0);
  for (tail = buf->overlays_before; tail; prev = tail, tail = next)
    {
      next = tail->next;
      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));
      ((void) (0 && (OVERLAYP (overlay))));

      beg = XOVERLAY (overlay)->start;
      end = XOVERLAY (overlay)->end;

      if ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) ? marker_position (end) : (emacs_abort (), 0)) > pos)
 {

   ptrdiff_t where = (((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (beg) == Lisp_Misc_Marker) ? marker_position (beg) : (emacs_abort (), 0));
   struct Lisp_Overlay *other, *other_prev;


   if (prev)
     prev->next = next;
   else
     set_buffer_overlays_before (buf, next);


   other_prev = ((void*)0);
   for (other = buf->overlays_after; other;
        other_prev = other, other = other->next)
     {
       Lisp_Object otherbeg, otheroverlay;

       ((otheroverlay) = make_lisp_ptr (other, Lisp_Misc));
       ((void) (0 && (OVERLAYP (otheroverlay))));

       otherbeg = XOVERLAY (otheroverlay)->start;
       if ((((((enum Lisp_Type) ((otherbeg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (otherbeg) == Lisp_Misc_Marker) ? marker_position (otherbeg) : (emacs_abort (), 0)) >= where)
  break;
     }


   tail->next = other;
   if (other_prev)
     other_prev->next = tail;
   else
     set_buffer_overlays_after (buf, tail);
   tail = prev;
 }
      else



 break;
    }


  prev = ((void*)0);
  for (tail = buf->overlays_after; tail; prev = tail, tail = next)
    {
      next = tail->next;
      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));
      ((void) (0 && (OVERLAYP (overlay))));

      beg = XOVERLAY (overlay)->start;
      end = XOVERLAY (overlay)->end;



      if ((((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (beg) == Lisp_Misc_Marker) ? marker_position (beg) : (emacs_abort (), 0)) > pos)
 break;

      if ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) ? marker_position (end) : (emacs_abort (), 0)) <= pos)
 {

   ptrdiff_t where = (((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) ? marker_position (end) : (emacs_abort (), 0));
   struct Lisp_Overlay *other, *other_prev;


   if (prev)
     prev->next = next;
   else
     set_buffer_overlays_after (buf, next);


   other_prev = ((void*)0);
   for (other = buf->overlays_before; other;
        other_prev = other, other = other->next)
     {
       Lisp_Object otherend, otheroverlay;

       ((otheroverlay) = make_lisp_ptr (other, Lisp_Misc));
       ((void) (0 && (OVERLAYP (otheroverlay))));

       otherend = XOVERLAY (otheroverlay)->end;
       if ((((((enum Lisp_Type) ((otherend) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (otherend) == Lisp_Misc_Marker) ? marker_position (otherend) : (emacs_abort (), 0)) <= where)
  break;
     }


   tail->next = other;
   if (other_prev)
     other_prev->next = tail;
   else
     set_buffer_overlays_before (buf, tail);
   tail = prev;
 }
    }

  buf->overlay_center = pos;
}

void
adjust_overlays_for_insert (ptrdiff_t pos, ptrdiff_t length)
{


  if (current_buffer->overlay_center >= pos)
    current_buffer->overlay_center += length;
}

void
adjust_overlays_for_delete (ptrdiff_t pos, ptrdiff_t length)
{
  if (current_buffer->overlay_center < pos)


    ;
  else if (current_buffer->overlay_center - pos > length)



    current_buffer->overlay_center -= length;
  else



    recenter_overlay_lists (current_buffer, pos);
}







void
fix_start_end_in_overlays (register ptrdiff_t start, register ptrdiff_t end)
{
  Lisp_Object overlay;
  struct Lisp_Overlay *before_list ;
  struct Lisp_Overlay *after_list ;



  struct Lisp_Overlay *beforep = ((void*)0), *afterp = ((void*)0);



  struct Lisp_Overlay *tail, *parent;
  ptrdiff_t startpos, endpos;
# 3584 "buffer.c"
  for (parent = ((void*)0), tail = current_buffer->overlays_before; tail;)
    {
      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

      endpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
      startpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));


      if (endpos < startpos)
 {
   startpos = endpos;
   Fset_marker (XOVERLAY (overlay)->start, ((EMACS_INT) (((EMACS_UINT) (startpos) << INTTYPEBITS) + Lisp_Int0)),
         builtin_lisp_symbol (0));
 }

      if (endpos < start)
 break;

      if (endpos < end
   || (startpos >= start && startpos < end))
 {


   if (endpos < current_buffer->overlay_center)
     {
       if (!afterp)
  after_list = tail;
       else
  afterp->next = tail;
       afterp = tail;
     }
   else
     {
       if (!beforep)
  before_list = tail;
       else
  beforep->next = tail;
       beforep = tail;
     }
   if (!parent)
     set_buffer_overlays_before (current_buffer, tail->next);
   else
     parent->next = tail->next;
   tail = tail->next;
 }
      else
 parent = tail, tail = parent->next;
    }
  for (parent = ((void*)0), tail = current_buffer->overlays_after; tail;)
    {
      ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

      startpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
      endpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));


      if (endpos < startpos)
 {
   startpos = endpos;
   Fset_marker (XOVERLAY (overlay)->start, ((EMACS_INT) (((EMACS_UINT) (startpos) << INTTYPEBITS) + Lisp_Int0)),
         builtin_lisp_symbol (0));
 }

      if (startpos >= end)
 break;

      if (startpos >= start
   || (endpos >= start && endpos < end))
 {
   if (endpos < current_buffer->overlay_center)
     {
       if (!afterp)
  after_list = tail;
       else
  afterp->next = tail;
       afterp = tail;
     }
   else
     {
       if (!beforep)
  before_list = tail;
       else
  beforep->next = tail;
       beforep = tail;
     }
   if (!parent)
     set_buffer_overlays_after (current_buffer, tail->next);
   else
     parent->next = tail->next;
   tail = tail->next;
 }
      else
 parent = tail, tail = parent->next;
    }



  if (beforep)
    {
      beforep->next = current_buffer->overlays_before;
      set_buffer_overlays_before (current_buffer, before_list);
    }

  if (afterp)
    {
      afterp->next = current_buffer->overlays_after;
      set_buffer_overlays_after (current_buffer, after_list);
    }
  recenter_overlay_lists (current_buffer, current_buffer->overlay_center);
}
# 3707 "buffer.c"
void
fix_overlays_before (struct buffer *bp, ptrdiff_t prev, ptrdiff_t pos)
{

  struct Lisp_Overlay *tail = bp->overlays_before, *parent = ((void*)0), *right_pair;
  Lisp_Object tem;
  ptrdiff_t end ;
# 3726 "buffer.c"
  while (tail
  && (((tem) = make_lisp_ptr (tail, Lisp_Misc)),
      (end = (((((enum Lisp_Type) ((XOVERLAY (tem)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (tem)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (tem)->end) : (emacs_abort (), 0))) >= pos))
    {
      parent = tail;
      tail = tail->next;
    }





  if (!tail || end < prev || !tail->next)
    return;

  right_pair = parent;
  parent = tail;
  tail = tail->next;






  while (tail)
    {
      ((tem) = make_lisp_ptr (tail, Lisp_Misc));
      end = (((((enum Lisp_Type) ((XOVERLAY (tem)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (tem)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (tem)->end) : (emacs_abort (), 0));

      if (end == pos)
 {
   struct Lisp_Overlay *found = tail;


   tail = found->next;
   parent->next = tail;


   if (!right_pair)
     {
       found->next = bp->overlays_before;
       set_buffer_overlays_before (bp, found);
     }
   else
     {
       found->next = right_pair->next;
       right_pair->next = found;
     }
 }
      else if (end == prev)
 {
   parent = tail;
   tail = tail->next;
 }
      else
 break;
    }
}

static struct Lisp_Subr _Alignas (8) Soverlayp = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Foverlayp }, 1, 1, "overlayp", 0, 0}; Lisp_Object Foverlayp

  (Lisp_Object object)
{
  return (OVERLAYP (object) ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Smake_overlay = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a5 = Fmake_overlay }, 2, 5, "make-overlay", 0, 0}; Lisp_Object Fmake_overlay
# 3802 "buffer.c"
  (Lisp_Object beg, Lisp_Object end, Lisp_Object buffer,
   Lisp_Object front_advance, Lisp_Object rear_advance)
{
  Lisp_Object overlay;
  struct buffer *b;

  if (((buffer) == (builtin_lisp_symbol (0))))
    ((((buffer) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  else
    CHECK_BUFFER (buffer);

  if (((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (beg) == Lisp_Misc_Marker) && !((Fmarker_buffer (beg)) == (buffer)))
    signal_error ("Marker points into wrong buffer", beg);
  if (((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) && !((Fmarker_buffer (end)) == (buffer)))
    signal_error ("Marker points into wrong buffer", end);

  do { if (((((enum Lisp_Type) (((beg)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((beg)) == Lisp_Misc_Marker)) ((beg) = make_natnum (marker_position (beg))); else ((((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), beg)); } while (0);
  do { if (((((enum Lisp_Type) (((end)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((end)) == Lisp_Misc_Marker)) ((end) = make_natnum (marker_position (end))); else ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), end)); } while (0);

  if (((beg) >> INTTYPEBITS) > ((end) >> INTTYPEBITS))
    {
      Lisp_Object temp;
      temp = beg; beg = end; end = temp;
    }

  b = XBUFFER (buffer);

  beg = Fset_marker (Fmake_marker (), beg, buffer);
  end = Fset_marker (Fmake_marker (), end, buffer);

  if (!((front_advance) == (builtin_lisp_symbol (0))))
    XMARKER (beg)->insertion_type = 1;
  if (!((rear_advance) == (builtin_lisp_symbol (0))))
    XMARKER (end)->insertion_type = 1;

  overlay = build_overlay (beg, end, builtin_lisp_symbol (0));


  end = XOVERLAY (overlay)->end;
  if ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) ? marker_position (end) : (emacs_abort (), 0)) < b->overlay_center)
    {
      ((void) (0 && (b->overlays_after || (XOVERLAY (overlay)->next == ((void*)0)))));
      XOVERLAY (overlay)->next = b->overlays_after;
      set_buffer_overlays_after (b, XOVERLAY (overlay));
    }
  else
    {
      ((void) (0 && (b->overlays_before || (XOVERLAY (overlay)->next == ((void*)0)))));
      XOVERLAY (overlay)->next = b->overlays_before;
      set_buffer_overlays_before (b, XOVERLAY (overlay));
    }

  recenter_overlay_lists (b, b->overlay_center);




  return overlay;
}



static void
modify_overlay (struct buffer *buf, ptrdiff_t start, ptrdiff_t end)
{
  if (start > end)
    {
      ptrdiff_t temp = start;
      start = end;
      end = temp;
    }

  do { if (((buf)->text->unchanged_modified) == ((buf)->text->modiff) && (((buf)->text->overlay_unchanged_modified) == ((buf)->text->overlay_modiff))) { ((buf)->text->beg_unchanged) = (start) - ((1)); ((buf)->text->end_unchanged) = ((buf)->text->z) - (end); } else { if (((buf)->text->z) - (end) < ((buf)->text->end_unchanged)) ((buf)->text->end_unchanged) = ((buf)->text->z) - (end); if ((start) - ((1)) < ((buf)->text->beg_unchanged)) ((buf)->text->beg_unchanged) = (start) - ((1)); } } while (0);

  bset_redisplay (buf);

  ++((buf)->text->overlay_modiff);
}



static struct Lisp_Overlay *
unchain_overlay (struct Lisp_Overlay *list, struct Lisp_Overlay *overlay)
{
  register struct Lisp_Overlay *tail, **prev = &list;

  for (tail = list; tail; prev = &tail->next, tail = *prev)
    if (tail == overlay)
      {
 *prev = overlay->next;
 overlay->next = ((void*)0);
 break;
      }
  return list;
}



static void
unchain_both (struct buffer *b, Lisp_Object overlay)
{
  struct Lisp_Overlay *ov = XOVERLAY (overlay);

  set_buffer_overlays_before (b, unchain_overlay (b->overlays_before, ov));
  set_buffer_overlays_after (b, unchain_overlay (b->overlays_after, ov));
  ((void) (0 && (XOVERLAY (overlay)->next == ((void*)0))));
}

static struct Lisp_Subr _Alignas (8) Smove_overlay = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a4 = Fmove_overlay }, 3, 4, "move-overlay", 0, 0}; Lisp_Object Fmove_overlay




  (Lisp_Object overlay, Lisp_Object beg, Lisp_Object end, Lisp_Object buffer)
{
  struct buffer *b, *ob = 0;
  Lisp_Object obuffer;
  ptrdiff_t count = SPECPDL_INDEX ();
  ptrdiff_t n_beg, n_end, o_beg , o_end ;

  CHECK_OVERLAY (overlay);
  if (((buffer) == (builtin_lisp_symbol (0))))
    buffer = Fmarker_buffer (XOVERLAY (overlay)->start);
  if (((buffer) == (builtin_lisp_symbol (0))))
    ((((buffer) = make_lisp_ptr (current_buffer, Lisp_Vectorlike)), ((void) (0 && (((((struct vectorlike_header *) ((void *) (intptr_t) ((buffer) - (Lisp_Vectorlike)))) ->size) & (((9223372036854775807L) - (9223372036854775807L) / 2) | PVEC_TYPE_MASK)) == (((9223372036854775807L) - (9223372036854775807L) / 2) | (PVEC_BUFFER << PSEUDOVECTOR_AREA_BITS)))))));
  CHECK_BUFFER (buffer);

  if (((Fbuffer_live_p (buffer)) == (builtin_lisp_symbol (0))))
    error ("Attempt to move overlay to a dead buffer");

  if (((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (beg) == Lisp_Misc_Marker) && !((Fmarker_buffer (beg)) == (buffer)))
    signal_error ("Marker points into wrong buffer", beg);
  if (((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (end) == Lisp_Misc_Marker) && !((Fmarker_buffer (end)) == (buffer)))
    signal_error ("Marker points into wrong buffer", end);

  do { if (((((enum Lisp_Type) (((beg)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((beg)) == Lisp_Misc_Marker)) ((beg) = make_natnum (marker_position (beg))); else ((((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), beg)); } while (0);
  do { if (((((enum Lisp_Type) (((end)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((end)) == Lisp_Misc_Marker)) ((end) = make_natnum (marker_position (end))); else ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), end)); } while (0);

  if (((beg) >> INTTYPEBITS) > ((end) >> INTTYPEBITS))
    {
      Lisp_Object temp;
      temp = beg; beg = end; end = temp;
    }

  specbind (builtin_lisp_symbol (546), builtin_lisp_symbol (901));

  obuffer = Fmarker_buffer (XOVERLAY (overlay)->start);
  b = XBUFFER (buffer);

  if (!((obuffer) == (builtin_lisp_symbol (0))))
    {
      ob = XBUFFER (obuffer);

      o_beg = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
      o_end = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));

      unchain_both (ob, overlay);
    }


  Fset_marker (XOVERLAY (overlay)->start, beg, buffer);
  Fset_marker (XOVERLAY (overlay)->end, end, buffer);

  n_beg = marker_position (XOVERLAY (overlay)->start);
  n_end = marker_position (XOVERLAY (overlay)->end);


  if (!((buffer) == (obuffer)))
    {

      if (ob)
        modify_overlay (ob, o_beg, o_end);


      modify_overlay (b, n_beg, n_end);
    }
  else

    {
      if (o_beg == n_beg)
 modify_overlay (b, o_end, n_end);
      else if (o_end == n_end)
 modify_overlay (b, o_beg, n_beg);
      else
 modify_overlay (b, ((o_beg) < (n_beg) ? (o_beg) : (n_beg)), ((o_end) > (n_end) ? (o_end) : (n_end)));
    }



  if (n_beg == n_end && !((Foverlay_get (overlay, builtin_lisp_symbol (380))) == (builtin_lisp_symbol (0))))
    return unbind_to (count, Fdelete_overlay (overlay));



  if (n_end < b->overlay_center)
    {
      XOVERLAY (overlay)->next = b->overlays_after;
      set_buffer_overlays_after (b, XOVERLAY (overlay));
    }
  else
    {
      XOVERLAY (overlay)->next = b->overlays_before;
      set_buffer_overlays_before (b, XOVERLAY (overlay));
    }


  recenter_overlay_lists (b, b->overlay_center);

  return unbind_to (count, overlay);
}

static struct Lisp_Subr _Alignas (8) Sdelete_overlay = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fdelete_overlay }, 1, 1, "delete-overlay", 0, 0}; Lisp_Object Fdelete_overlay

  (Lisp_Object overlay)
{
  Lisp_Object buffer;
  struct buffer *b;
  ptrdiff_t count = SPECPDL_INDEX ();

  CHECK_OVERLAY (overlay);

  buffer = Fmarker_buffer (XOVERLAY (overlay)->start);
  if (((buffer) == (builtin_lisp_symbol (0))))
    return builtin_lisp_symbol (0);

  b = XBUFFER (buffer);
  specbind (builtin_lisp_symbol (546), builtin_lisp_symbol (901));

  unchain_both (b, overlay);
  drop_overlay (b, XOVERLAY (overlay));





  if (!windows_or_buffers_changed
      && (!((Foverlay_get (overlay, builtin_lisp_symbol (199))) == (builtin_lisp_symbol (0)))
   || !((Foverlay_get (overlay, builtin_lisp_symbol (168))) == (builtin_lisp_symbol (0)))))
    b->prevent_redisplay_optimizations_p = 1;

  return unbind_to (count, builtin_lisp_symbol (0));
}

static struct Lisp_Subr _Alignas (8) Sdelete_all_overlays = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fdelete_all_overlays }, 0, 1, "delete-all-overlays", 0, 0}; Lisp_Object Fdelete_all_overlays



  (Lisp_Object buffer)
{
  delete_all_overlays (decode_buffer (buffer));
  return builtin_lisp_symbol (0);
}



static struct Lisp_Subr _Alignas (8) Soverlay_start = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Foverlay_start }, 1, 1, "overlay-start", 0, 0}; Lisp_Object Foverlay_start

  (Lisp_Object overlay)
{
  CHECK_OVERLAY (overlay);

  return (Fmarker_position (XOVERLAY (overlay)->start));
}

static struct Lisp_Subr _Alignas (8) Soverlay_end = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Foverlay_end }, 1, 1, "overlay-end", 0, 0}; Lisp_Object Foverlay_end

  (Lisp_Object overlay)
{
  CHECK_OVERLAY (overlay);

  return (Fmarker_position (XOVERLAY (overlay)->end));
}

static struct Lisp_Subr _Alignas (8) Soverlay_buffer = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Foverlay_buffer }, 1, 1, "overlay-buffer", 0, 0}; Lisp_Object Foverlay_buffer


  (Lisp_Object overlay)
{
  CHECK_OVERLAY (overlay);

  return Fmarker_buffer (XOVERLAY (overlay)->start);
}

static struct Lisp_Subr _Alignas (8) Soverlay_properties = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Foverlay_properties }, 1, 1, "overlay-properties", 0, 0}; Lisp_Object Foverlay_properties



  (Lisp_Object overlay)
{
  CHECK_OVERLAY (overlay);

  return Fcopy_sequence (XOVERLAY (overlay)->plist);
}


static struct Lisp_Subr _Alignas (8) Soverlays_at = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Foverlays_at }, 1, 2, "overlays-at", 0, 0}; Lisp_Object Foverlays_at


  (Lisp_Object pos, Lisp_Object sorted)
{
  ptrdiff_t len, noverlays;
  Lisp_Object *overlay_vec;
  Lisp_Object result;

  do { if (((((enum Lisp_Type) (((pos)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((pos)) == Lisp_Misc_Marker)) ((pos) = make_natnum (marker_position (pos))); else ((((((enum Lisp_Type) ((pos) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), pos)); } while (0);

  if (!buffer_has_overlays ())
    return builtin_lisp_symbol (0);

  len = 10;

  overlay_vec = xmalloc (len * sizeof *overlay_vec);



  noverlays = overlays_at (((pos) >> INTTYPEBITS), 1, &overlay_vec, &len,
      ((void*)0), ((void*)0), 0);

  if (!((sorted) == (builtin_lisp_symbol (0))))
    noverlays = sort_overlays (overlay_vec, noverlays,
          WINDOWP (sorted) ? XWINDOW (sorted) : ((void*)0));


  result = Flist (noverlays, overlay_vec);

  xfree (overlay_vec);
  return result;
}

static struct Lisp_Subr _Alignas (8) Soverlays_in = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Foverlays_in }, 2, 2, "overlays-in", 0, 0}; Lisp_Object Foverlays_in






  (Lisp_Object beg, Lisp_Object end)
{
  ptrdiff_t len, noverlays;
  Lisp_Object *overlay_vec;
  Lisp_Object result;

  do { if (((((enum Lisp_Type) (((beg)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((beg)) == Lisp_Misc_Marker)) ((beg) = make_natnum (marker_position (beg))); else ((((((enum Lisp_Type) ((beg) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), beg)); } while (0);
  do { if (((((enum Lisp_Type) (((end)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((end)) == Lisp_Misc_Marker)) ((end) = make_natnum (marker_position (end))); else ((((((enum Lisp_Type) ((end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), end)); } while (0);

  if (!buffer_has_overlays ())
    return builtin_lisp_symbol (0);

  len = 10;
  overlay_vec = xmalloc (len * sizeof *overlay_vec);



  noverlays = overlays_in (((beg) >> INTTYPEBITS), ((end) >> INTTYPEBITS), 1, &overlay_vec, &len,
      ((void*)0), ((void*)0));


  result = Flist (noverlays, overlay_vec);

  xfree (overlay_vec);
  return result;
}

static struct Lisp_Subr _Alignas (8) Snext_overlay_change = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fnext_overlay_change }, 1, 1, "next-overlay-change", 0, 0}; Lisp_Object Fnext_overlay_change




  (Lisp_Object pos)
{
  ptrdiff_t i, len, noverlays;
  ptrdiff_t endpos;
  Lisp_Object *overlay_vec;

  do { if (((((enum Lisp_Type) (((pos)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((pos)) == Lisp_Misc_Marker)) ((pos) = make_natnum (marker_position (pos))); else ((((((enum Lisp_Type) ((pos) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), pos)); } while (0);

  if (!buffer_has_overlays ())
    return ((EMACS_INT) (((EMACS_UINT) ((current_buffer->zv)) << INTTYPEBITS) + Lisp_Int0));

  len = 10;
  overlay_vec = xmalloc (len * sizeof *overlay_vec);




  noverlays = overlays_at (((pos) >> INTTYPEBITS), 1, &overlay_vec, &len,
      &endpos, 0, 1);



  for (i = 0; i < noverlays; i++)
    {
      Lisp_Object oend;
      ptrdiff_t oendpos;

      oend = XOVERLAY (overlay_vec[i])->end;
      oendpos = (((((enum Lisp_Type) ((oend) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (oend) == Lisp_Misc_Marker) ? marker_position (oend) : (emacs_abort (), 0));
      if (oendpos < endpos)
 endpos = oendpos;
    }

  xfree (overlay_vec);
  return ((EMACS_INT) (((EMACS_UINT) (endpos) << INTTYPEBITS) + Lisp_Int0));
}

static struct Lisp_Subr _Alignas (8) Sprevious_overlay_change = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Fprevious_overlay_change }, 1, 1, "previous-overlay-change", 0, 0}; Lisp_Object Fprevious_overlay_change




  (Lisp_Object pos)
{
  ptrdiff_t prevpos;
  Lisp_Object *overlay_vec;
  ptrdiff_t len;

  do { if (((((enum Lisp_Type) (((pos)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((pos)) == Lisp_Misc_Marker)) ((pos) = make_natnum (marker_position (pos))); else ((((((enum Lisp_Type) ((pos) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), pos)); } while (0);

  if (!buffer_has_overlays ())
    return ((EMACS_INT) (((EMACS_UINT) ((current_buffer->begv)) << INTTYPEBITS) + Lisp_Int0));



  if (((pos) >> INTTYPEBITS) == (current_buffer->begv))
    return pos;

  len = 10;
  overlay_vec = xmalloc (len * sizeof *overlay_vec);




  overlays_at (((pos) >> INTTYPEBITS), 1, &overlay_vec, &len,
        0, &prevpos, 1);

  xfree (overlay_vec);
  return ((EMACS_INT) (((EMACS_UINT) (prevpos) << INTTYPEBITS) + Lisp_Int0));
}



static struct Lisp_Subr _Alignas (8) Soverlay_lists = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a0 = Foverlay_lists }, 0, 0, "overlay-lists", 0, 0}; Lisp_Object Foverlay_lists






  (void)
{
  struct Lisp_Overlay *ol;
  Lisp_Object before = builtin_lisp_symbol (0), after = builtin_lisp_symbol (0), tmp;

  for (ol = current_buffer->overlays_before; ol; ol = ol->next)
    {
      ((tmp) = make_lisp_ptr (ol, Lisp_Misc));
      before = Fcons (tmp, before);
    }
  for (ol = current_buffer->overlays_after; ol; ol = ol->next)
    {
      ((tmp) = make_lisp_ptr (ol, Lisp_Misc));
      after = Fcons (tmp, after);
    }

  return Fcons (Fnreverse (before), Fnreverse (after));
}

static struct Lisp_Subr _Alignas (8) Soverlay_recenter = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a1 = Foverlay_recenter }, 1, 1, "overlay-recenter", 0, 0}; Lisp_Object Foverlay_recenter



  (Lisp_Object pos)
{
  ptrdiff_t p;
  do { if (((((enum Lisp_Type) (((pos)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE ((pos)) == Lisp_Misc_Marker)) ((pos) = make_natnum (marker_position (pos))); else ((((((enum Lisp_Type) ((pos) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) & (Lisp_Int0 | ~Lisp_Int1)) == Lisp_Int0)) ? (void) 0 : (void) wrong_type_argument (builtin_lisp_symbol (558), pos)); } while (0);

  p = clip_to_bounds ((-9223372036854775807L-1), ((pos) >> INTTYPEBITS), (9223372036854775807L));
  recenter_overlay_lists (current_buffer, p);
  return builtin_lisp_symbol (0);
}

static struct Lisp_Subr _Alignas (8) Soverlay_get = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a2 = Foverlay_get }, 2, 2, "overlay-get", 0, 0}; Lisp_Object Foverlay_get

  (Lisp_Object overlay, Lisp_Object prop)
{
  CHECK_OVERLAY (overlay);
  return lookup_char_property (XOVERLAY (overlay)->plist, prop, 0);
}

static struct Lisp_Subr _Alignas (8) Soverlay_put = { { PVEC_SUBR << PSEUDOVECTOR_AREA_BITS }, { .a3 = Foverlay_put }, 3, 3, "overlay-put", 0, 0}; Lisp_Object Foverlay_put


  (Lisp_Object overlay, Lisp_Object prop, Lisp_Object value)
{
  Lisp_Object tail, buffer;
  _Bool changed;

  CHECK_OVERLAY (overlay);

  buffer = Fmarker_buffer (XOVERLAY (overlay)->start);

  for (tail = XOVERLAY (overlay)->plist;
       (((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons) && (((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons);
       tail = (((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->u.cdr)
    if ((((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->car) == (prop)))
      {
 changed = !(((((void) (0 && ((((enum Lisp_Type) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) (((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr) - (Lisp_Cons))))->car) == (value));
 XSETCAR ((((void) (0 && ((((enum Lisp_Type) ((tail) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((tail) - (Lisp_Cons))))->u.cdr, value);
 goto found;
      }

  changed = !((value) == (builtin_lisp_symbol (0)));
  set_overlay_plist
    (overlay, Fcons (prop, Fcons (value, XOVERLAY (overlay)->plist)));
 found:
  if (! ((buffer) == (builtin_lisp_symbol (0))))
    {
      if (changed)
 modify_overlay (XBUFFER (buffer),
   marker_position (XOVERLAY (overlay)->start),
   marker_position (XOVERLAY (overlay)->end));
      if (((prop) == (builtin_lisp_symbol (380))) && ! ((value) == (builtin_lisp_symbol (0)))
   && ((((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0))
       == (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0))))
 Fdelete_overlay (overlay);
    }

  return value;
}
# 4343 "buffer.c"
static Lisp_Object last_overlay_modification_hooks;


static ptrdiff_t last_overlay_modification_hooks_used;




static void
add_overlay_mod_hooklist (Lisp_Object functionlist, Lisp_Object overlay)
{
  ptrdiff_t oldsize = ASIZE (last_overlay_modification_hooks);

  if (oldsize - 1 <= last_overlay_modification_hooks_used)
    last_overlay_modification_hooks =
      larger_vector (last_overlay_modification_hooks, 2, -1);
  ASET (last_overlay_modification_hooks, last_overlay_modification_hooks_used,
 functionlist); last_overlay_modification_hooks_used++;
  ASET (last_overlay_modification_hooks, last_overlay_modification_hooks_used,
 overlay); last_overlay_modification_hooks_used++;
}
# 4379 "buffer.c"
void
report_overlay_modification (Lisp_Object start, Lisp_Object end, _Bool after,
        Lisp_Object arg1, Lisp_Object arg2, Lisp_Object arg3)
{
  Lisp_Object prop, overlay;
  struct Lisp_Overlay *tail;

  _Bool insertion = (after ? ((arg3) >> INTTYPEBITS) == 0 : ((start) == (end)));

  overlay = builtin_lisp_symbol (0);
  tail = ((void*)0);
# 4399 "buffer.c"
  if (!after)
    {


      last_overlay_modification_hooks_used = 0;
      for (tail = current_buffer->overlays_before; tail; tail = tail->next)
 {
   ptrdiff_t startpos, endpos;
   Lisp_Object ostart, oend;

   ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

   ostart = XOVERLAY (overlay)->start;
   oend = XOVERLAY (overlay)->end;
   endpos = (((((enum Lisp_Type) ((oend) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (oend) == Lisp_Misc_Marker) ? marker_position (oend) : (emacs_abort (), 0));
   if (((start) >> INTTYPEBITS) > endpos)
     break;
   startpos = (((((enum Lisp_Type) ((ostart) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (ostart) == Lisp_Misc_Marker) ? marker_position (ostart) : (emacs_abort (), 0));
   if (insertion && (((start) >> INTTYPEBITS) == startpos
       || ((end) >> INTTYPEBITS) == startpos))
     {
       prop = Foverlay_get (overlay, builtin_lisp_symbol (554));
       if (!((prop) == (builtin_lisp_symbol (0))))
  add_overlay_mod_hooklist (prop, overlay);
     }
   if (insertion && (((start) >> INTTYPEBITS) == endpos
       || ((end) >> INTTYPEBITS) == endpos))
     {
       prop = Foverlay_get (overlay, builtin_lisp_symbol (552));
       if (!((prop) == (builtin_lisp_symbol (0))))
  add_overlay_mod_hooklist (prop, overlay);
     }


   if (((end) >> INTTYPEBITS) > startpos && ((start) >> INTTYPEBITS) < endpos)
     {
       prop = Foverlay_get (overlay, builtin_lisp_symbol (676));
       if (!((prop) == (builtin_lisp_symbol (0))))
  add_overlay_mod_hooklist (prop, overlay);
     }
 }

      for (tail = current_buffer->overlays_after; tail; tail = tail->next)
 {
   ptrdiff_t startpos, endpos;
   Lisp_Object ostart, oend;

   ((overlay) = make_lisp_ptr (tail, Lisp_Misc));

   ostart = XOVERLAY (overlay)->start;
   oend = XOVERLAY (overlay)->end;
   startpos = (((((enum Lisp_Type) ((ostart) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (ostart) == Lisp_Misc_Marker) ? marker_position (ostart) : (emacs_abort (), 0));
   endpos = (((((enum Lisp_Type) ((oend) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (oend) == Lisp_Misc_Marker) ? marker_position (oend) : (emacs_abort (), 0));
   if (((end) >> INTTYPEBITS) < startpos)
     break;
   if (insertion && (((start) >> INTTYPEBITS) == startpos
       || ((end) >> INTTYPEBITS) == startpos))
     {
       prop = Foverlay_get (overlay, builtin_lisp_symbol (554));
       if (!((prop) == (builtin_lisp_symbol (0))))
  add_overlay_mod_hooklist (prop, overlay);
     }
   if (insertion && (((start) >> INTTYPEBITS) == endpos
       || ((end) >> INTTYPEBITS) == endpos))
     {
       prop = Foverlay_get (overlay, builtin_lisp_symbol (552));
       if (!((prop) == (builtin_lisp_symbol (0))))
  add_overlay_mod_hooklist (prop, overlay);
     }


   if (((end) >> INTTYPEBITS) > startpos && ((start) >> INTTYPEBITS) < endpos)
     {
       prop = Foverlay_get (overlay, builtin_lisp_symbol (676));
       if (!((prop) == (builtin_lisp_symbol (0))))
  add_overlay_mod_hooklist (prop, overlay);
     }
 }
    }

  {



    ptrdiff_t size = last_overlay_modification_hooks_used;
    Lisp_Object *copy;
    ptrdiff_t i;

    if (size)
      {
 Lisp_Object ovl
   = XVECTOR (last_overlay_modification_hooks)->contents[1];
# 4500 "buffer.c"
 if (XMARKER (XOVERLAY (ovl)->start)->buffer != current_buffer)
   return;
      }

    ptrdiff_t sa_avail = MAX_ALLOCA; ptrdiff_t sa_count = SPECPDL_INDEX (); _Bool sa_must_free = 0;
    do { ptrdiff_t alloca_nbytes; if ((sizeof *(&alloca_nbytes) == sizeof (signed char) ? (sizeof ((size) * (word_size)) < sizeof (signed char) ? ((((((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (1)) << (sizeof ((0 * ((signed char) (word_size)) + ((signed char) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (0)))) == 0 && ((((signed char) (size)) < 0 && 0 < ((signed char) (word_size))) || (((signed char) (word_size)) < 0 && 0 < ((signed char) (size))))) || (((signed char) (word_size)) < 0 ? (((signed char) (size)) < 0 ? ((signed char) (size)) < ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (1)) << (sizeof ((0 * ((signed char) (word_size)) + ((signed char) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)))) / ((signed char) (word_size)) : ((signed char) (word_size)) == -1 ? 0 : ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (1)) << (sizeof ((0 * ((signed char) (word_size)) + ((signed char) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (0)))) / ((signed char) (word_size)) < ((signed char) (size))) : ((signed char) (word_size)) == 0 ? 0 : (((signed char) (size)) < 0 ? ((signed char) (size)) < ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (0)) == -1) - ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (1)) << (sizeof ((0 * ((signed char) (word_size)) + ((signed char) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (0)))) / ((signed char) (word_size)) : ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)) < 0) ? ((((0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) + (1)) << (sizeof ((0 * ((signed char) (word_size)) + ((signed char) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((signed char) (word_size)) + ((signed char) (size))) - (1)))) / ((signed char) (word_size)) < ((signed char) (size))))) || (((0 * (((signed char) (size)) * ((signed char) (word_size))) - (1)) < 0) && (((signed char) (size)) * ((signed char) (word_size))) < ((-127 -1))) || (127) < (((signed char) (size)) * ((signed char) (word_size)))) ? (*(&alloca_nbytes) = (((unsigned char) ((signed char) (size)) * (unsigned char) ((signed char) (word_size))) <= (127) ? (signed char) ((unsigned char) ((signed char) (size)) * (unsigned char) ((signed char) (word_size))) : ((signed char) (((unsigned char) ((signed char) (size)) * (unsigned char) ((signed char) (word_size))) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&alloca_nbytes) = (((unsigned char) ((signed char) (size)) * (unsigned char) ((signed char) (word_size))) <= (127) ? (signed char) ((unsigned char) ((signed char) (size)) * (unsigned char) ((signed char) (word_size))) : ((signed char) (((unsigned char) ((signed char) (size)) * (unsigned char) ((signed char) (word_size))) - ((-127 -1))) + ((-127 -1)))), 0)) : ((((((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) == 0 && (((size) < 0 && 0 < (word_size)) || ((word_size) < 0 && 0 < (size)))) || ((word_size) < 0 ? ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) : (word_size) == -1 ? 0 : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) < (size)) : (word_size) == 0 ? 0 : ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) < (size)))) || (((0 * ((size) * (word_size)) - (1)) < 0) && ((size) * (word_size)) < ((-127 -1))) || (127) < ((size) * (word_size))) ? (*(&alloca_nbytes) = (((unsigned char) (size) * (unsigned char) (word_size)) <= (127) ? (signed char) ((unsigned char) (size) * (unsigned char) (word_size)) : ((signed char) (((unsigned char) (size) * (unsigned char) (word_size)) - ((-127 -1))) + ((-127 -1)))), 1) : (*(&alloca_nbytes) = (((unsigned char) (size) * (unsigned char) (word_size)) <= (127) ? (signed char) ((unsigned char) (size) * (unsigned char) (word_size)) : ((signed char) (((unsigned char) (size) * (unsigned char) (word_size)) - ((-127 -1))) + ((-127 -1)))), 0))) : sizeof *(&alloca_nbytes) == sizeof (short int) ? (sizeof ((size) * (word_size)) < sizeof (short int) ? ((((((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (0)) == -1) - ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (1)) << (sizeof ((0 * ((short int) (word_size)) + ((short int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (0)))) == 0 && ((((short int) (size)) < 0 && 0 < ((short int) (word_size))) || (((short int) (word_size)) < 0 && 0 < ((short int) (size))))) || (((short int) (word_size)) < 0 ? (((short int) (size)) < 0 ? ((short int) (size)) < ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)) < 0) ? ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (1)) << (sizeof ((0 * ((short int) (word_size)) + ((short int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)))) / ((short int) (word_size)) : ((short int) (word_size)) == -1 ? 0 : ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (0)) == -1) - ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (1)) << (sizeof ((0 * ((short int) (word_size)) + ((short int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (0)))) / ((short int) (word_size)) < ((short int) (size))) : ((short int) (word_size)) == 0 ? 0 : (((short int) (size)) < 0 ? ((short int) (size)) < ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (0)) == -1) - ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (1)) << (sizeof ((0 * ((short int) (word_size)) + ((short int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (0)))) / ((short int) (word_size)) : ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)) < 0) ? ((((0 * (0 * ((short int) (word_size)) + ((short int) (size))) + (1)) << (sizeof ((0 * ((short int) (word_size)) + ((short int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((short int) (word_size)) + ((short int) (size))) - (1)))) / ((short int) (word_size)) < ((short int) (size))))) || (((0 * (((short int) (size)) * ((short int) (word_size))) - (1)) < 0) && (((short int) (size)) * ((short int) (word_size))) < ((-32767 -1))) || (32767) < (((short int) (size)) * ((short int) (word_size)))) ? (*(&alloca_nbytes) = (((unsigned short int) ((short int) (size)) * (unsigned short int) ((short int) (word_size))) <= (32767) ? (short int) ((unsigned short int) ((short int) (size)) * (unsigned short int) ((short int) (word_size))) : ((short int) (((unsigned short int) ((short int) (size)) * (unsigned short int) ((short int) (word_size))) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&alloca_nbytes) = (((unsigned short int) ((short int) (size)) * (unsigned short int) ((short int) (word_size))) <= (32767) ? (short int) ((unsigned short int) ((short int) (size)) * (unsigned short int) ((short int) (word_size))) : ((short int) (((unsigned short int) ((short int) (size)) * (unsigned short int) ((short int) (word_size))) - ((-32767 -1))) + ((-32767 -1)))), 0)) : ((((((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) == 0 && (((size) < 0 && 0 < (word_size)) || ((word_size) < 0 && 0 < (size)))) || ((word_size) < 0 ? ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) : (word_size) == -1 ? 0 : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) < (size)) : (word_size) == 0 ? 0 : ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) < (size)))) || (((0 * ((size) * (word_size)) - (1)) < 0) && ((size) * (word_size)) < ((-32767 -1))) || (32767) < ((size) * (word_size))) ? (*(&alloca_nbytes) = (((unsigned short int) (size) * (unsigned short int) (word_size)) <= (32767) ? (short int) ((unsigned short int) (size) * (unsigned short int) (word_size)) : ((short int) (((unsigned short int) (size) * (unsigned short int) (word_size)) - ((-32767 -1))) + ((-32767 -1)))), 1) : (*(&alloca_nbytes) = (((unsigned short int) (size) * (unsigned short int) (word_size)) <= (32767) ? (short int) ((unsigned short int) (size) * (unsigned short int) (word_size)) : ((short int) (((unsigned short int) (size) * (unsigned short int) (word_size)) - ((-32767 -1))) + ((-32767 -1)))), 0))) : sizeof *(&alloca_nbytes) == sizeof (int) ? (sizeof ((size) * (word_size)) < sizeof (int) ? ((((((((0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (word_size)) + ((int) (size))) + (0)) == -1) - ((((0 * (0 * ((int) (word_size)) + ((int) (size))) + (1)) << (sizeof ((0 * ((int) (word_size)) + ((int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (word_size)) + ((int) (size))) + (0)))) == 0 && ((((int) (size)) < 0 && 0 < ((int) (word_size))) || (((int) (word_size)) < 0 && 0 < ((int) (size))))) || (((int) (word_size)) < 0 ? (((int) (size)) < 0 ? ((int) (size)) < ((((0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)) < 0) ? ((((0 * (0 * ((int) (word_size)) + ((int) (size))) + (1)) << (sizeof ((0 * ((int) (word_size)) + ((int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)))) / ((int) (word_size)) : ((int) (word_size)) == -1 ? 0 : ((((0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (word_size)) + ((int) (size))) + (0)) == -1) - ((((0 * (0 * ((int) (word_size)) + ((int) (size))) + (1)) << (sizeof ((0 * ((int) (word_size)) + ((int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (word_size)) + ((int) (size))) + (0)))) / ((int) (word_size)) < ((int) (size))) : ((int) (word_size)) == 0 ? 0 : (((int) (size)) < 0 ? ((int) (size)) < ((((0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((int) (word_size)) + ((int) (size))) + (0)) == -1) - ((((0 * (0 * ((int) (word_size)) + ((int) (size))) + (1)) << (sizeof ((0 * ((int) (word_size)) + ((int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (word_size)) + ((int) (size))) + (0)))) / ((int) (word_size)) : ((((0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)) < 0) ? ((((0 * (0 * ((int) (word_size)) + ((int) (size))) + (1)) << (sizeof ((0 * ((int) (word_size)) + ((int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((int) (word_size)) + ((int) (size))) - (1)))) / ((int) (word_size)) < ((int) (size))))) || (((0 * (((int) (size)) * ((int) (word_size))) - (1)) < 0) && (((int) (size)) * ((int) (word_size))) < ((-2147483647 -1))) || (2147483647) < (((int) (size)) * ((int) (word_size)))) ? (*(&alloca_nbytes) = (((unsigned int) ((int) (size)) * (unsigned int) ((int) (word_size))) <= (2147483647) ? (int) ((unsigned int) ((int) (size)) * (unsigned int) ((int) (word_size))) : ((int) (((unsigned int) ((int) (size)) * (unsigned int) ((int) (word_size))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&alloca_nbytes) = (((unsigned int) ((int) (size)) * (unsigned int) ((int) (word_size))) <= (2147483647) ? (int) ((unsigned int) ((int) (size)) * (unsigned int) ((int) (word_size))) : ((int) (((unsigned int) ((int) (size)) * (unsigned int) ((int) (word_size))) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0)) : ((((((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) == 0 && (((size) < 0 && 0 < (word_size)) || ((word_size) < 0 && 0 < (size)))) || ((word_size) < 0 ? ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) : (word_size) == -1 ? 0 : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) < (size)) : (word_size) == 0 ? 0 : ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) < (size)))) || (((0 * ((size) * (word_size)) - (1)) < 0) && ((size) * (word_size)) < ((-2147483647 -1))) || (2147483647) < ((size) * (word_size))) ? (*(&alloca_nbytes) = (((unsigned int) (size) * (unsigned int) (word_size)) <= (2147483647) ? (int) ((unsigned int) (size) * (unsigned int) (word_size)) : ((int) (((unsigned int) (size) * (unsigned int) (word_size)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 1) : (*(&alloca_nbytes) = (((unsigned int) (size) * (unsigned int) (word_size)) <= (2147483647) ? (int) ((unsigned int) (size) * (unsigned int) (word_size)) : ((int) (((unsigned int) (size) * (unsigned int) (word_size)) - ((-2147483647 -1))) + ((-2147483647 -1)))), 0))) : (sizeof *(&alloca_nbytes) == sizeof (long int) ? (sizeof ((size) * (word_size)) < sizeof (long int) ? ((((((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (0)) == -1) - ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (1)) << (sizeof ((0 * ((long int) (word_size)) + ((long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (0)))) == 0 && ((((long int) (size)) < 0 && 0 < ((long int) (word_size))) || (((long int) (word_size)) < 0 && 0 < ((long int) (size))))) || (((long int) (word_size)) < 0 ? (((long int) (size)) < 0 ? ((long int) (size)) < ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)) < 0) ? ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (1)) << (sizeof ((0 * ((long int) (word_size)) + ((long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)))) / ((long int) (word_size)) : ((long int) (word_size)) == -1 ? 0 : ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (0)) == -1) - ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (1)) << (sizeof ((0 * ((long int) (word_size)) + ((long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (0)))) / ((long int) (word_size)) < ((long int) (size))) : ((long int) (word_size)) == 0 ? 0 : (((long int) (size)) < 0 ? ((long int) (size)) < ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (0)) == -1) - ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (1)) << (sizeof ((0 * ((long int) (word_size)) + ((long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (0)))) / ((long int) (word_size)) : ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)) < 0) ? ((((0 * (0 * ((long int) (word_size)) + ((long int) (size))) + (1)) << (sizeof ((0 * ((long int) (word_size)) + ((long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long int) (word_size)) + ((long int) (size))) - (1)))) / ((long int) (word_size)) < ((long int) (size))))) || (((0 * (((long int) (size)) * ((long int) (word_size))) - (1)) < 0) && (((long int) (size)) * ((long int) (word_size))) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < (((long int) (size)) * ((long int) (word_size)))) ? (*(&alloca_nbytes) = (((unsigned long int) ((long int) (size)) * (unsigned long int) ((long int) (word_size))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (size)) * (unsigned long int) ((long int) (word_size))) : ((long int) (((unsigned long int) ((long int) (size)) * (unsigned long int) ((long int) (word_size))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&alloca_nbytes) = (((unsigned long int) ((long int) (size)) * (unsigned long int) ((long int) (word_size))) <= (9223372036854775807L) ? (long int) ((unsigned long int) ((long int) (size)) * (unsigned long int) ((long int) (word_size))) : ((long int) (((unsigned long int) ((long int) (size)) * (unsigned long int) ((long int) (word_size))) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0)) : ((((((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) == 0 && (((size) < 0 && 0 < (word_size)) || ((word_size) < 0 && 0 < (size)))) || ((word_size) < 0 ? ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) : (word_size) == -1 ? 0 : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) < (size)) : (word_size) == 0 ? 0 : ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) < (size)))) || (((0 * ((size) * (word_size)) - (1)) < 0) && ((size) * (word_size)) < ((-9223372036854775807L -1L))) || (9223372036854775807L) < ((size) * (word_size))) ? (*(&alloca_nbytes) = (((unsigned long int) (size) * (unsigned long int) (word_size)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (size) * (unsigned long int) (word_size)) : ((long int) (((unsigned long int) (size) * (unsigned long int) (word_size)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 1) : (*(&alloca_nbytes) = (((unsigned long int) (size) * (unsigned long int) (word_size)) <= (9223372036854775807L) ? (long int) ((unsigned long int) (size) * (unsigned long int) (word_size)) : ((long int) (((unsigned long int) (size) * (unsigned long int) (word_size)) - ((-9223372036854775807L -1L))) + ((-9223372036854775807L -1L)))), 0))) : (sizeof ((size) * (word_size)) < sizeof (long long int) ? ((((((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (1)) << (sizeof ((0 * ((long long int) (word_size)) + ((long long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (0)))) == 0 && ((((long long int) (size)) < 0 && 0 < ((long long int) (word_size))) || (((long long int) (word_size)) < 0 && 0 < ((long long int) (size))))) || (((long long int) (word_size)) < 0 ? (((long long int) (size)) < 0 ? ((long long int) (size)) < ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (1)) << (sizeof ((0 * ((long long int) (word_size)) + ((long long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)))) / ((long long int) (word_size)) : ((long long int) (word_size)) == -1 ? 0 : ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (1)) << (sizeof ((0 * ((long long int) (word_size)) + ((long long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (0)))) / ((long long int) (word_size)) < ((long long int) (size))) : ((long long int) (word_size)) == 0 ? 0 : (((long long int) (size)) < 0 ? ((long long int) (size)) < ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)) < 0) ? - (~ (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (0)) == -1) - ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (1)) << (sizeof ((0 * ((long long int) (word_size)) + ((long long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (0)))) / ((long long int) (word_size)) : ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)) < 0) ? ((((0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) + (1)) << (sizeof ((0 * ((long long int) (word_size)) + ((long long int) (size))) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * ((long long int) (word_size)) + ((long long int) (size))) - (1)))) / ((long long int) (word_size)) < ((long long int) (size))))) || (((0 * (((long long int) (size)) * ((long long int) (word_size))) - (1)) < 0) && (((long long int) (size)) * ((long long int) (word_size))) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < (((long long int) (size)) * ((long long int) (word_size)))) ? (*(&alloca_nbytes) = (((unsigned long long int) ((long long int) (size)) * (unsigned long long int) ((long long int) (word_size))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (size)) * (unsigned long long int) ((long long int) (word_size))) : ((long long int) (((unsigned long long int) ((long long int) (size)) * (unsigned long long int) ((long long int) (word_size))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&alloca_nbytes) = (((unsigned long long int) ((long long int) (size)) * (unsigned long long int) ((long long int) (word_size))) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) ((long long int) (size)) * (unsigned long long int) ((long long int) (word_size))) : ((long long int) (((unsigned long long int) ((long long int) (size)) * (unsigned long long int) ((long long int) (word_size))) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0)) : ((((((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) == 0 && (((size) < 0 && 0 < (word_size)) || ((word_size) < 0 && 0 < (size)))) || ((word_size) < 0 ? ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) : (word_size) == -1 ? 0 : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) < (size)) : (word_size) == 0 ? 0 : ((size) < 0 ? (size) < ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? - (~ (0 * (0 * (word_size) + (size)) + (0)) == -1) - ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) + (0)))) / (word_size) : ((((0 * (0 * (word_size) + (size)) - (1)) < 0) ? ((((0 * (0 * (word_size) + (size)) + (1)) << (sizeof ((0 * (word_size) + (size)) + 0) * 8 - 2)) - 1) * 2 + 1) : (0 * (0 * (word_size) + (size)) - (1)))) / (word_size) < (size)))) || (((0 * ((size) * (word_size)) - (1)) < 0) && ((size) * (word_size)) < ((-9223372036854775807LL -1LL))) || (9223372036854775807LL) < ((size) * (word_size))) ? (*(&alloca_nbytes) = (((unsigned long long int) (size) * (unsigned long long int) (word_size)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (size) * (unsigned long long int) (word_size)) : ((long long int) (((unsigned long long int) (size) * (unsigned long long int) (word_size)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 1) : (*(&alloca_nbytes) = (((unsigned long long int) (size) * (unsigned long long int) (word_size)) <= (9223372036854775807LL) ? (long long int) ((unsigned long long int) (size) * (unsigned long long int) (word_size)) : ((long long int) (((unsigned long long int) (size) * (unsigned long long int) (word_size)) - ((-9223372036854775807LL -1LL))) + ((-9223372036854775807LL -1LL)))), 0))))) || (18446744073709551615UL) < alloca_nbytes) memory_full ((18446744073709551615UL)); else if (alloca_nbytes <= sa_avail) (copy) = (sa_avail -= (alloca_nbytes), __builtin_alloca (alloca_nbytes)); else { Lisp_Object arg_; (copy) = xmalloc (alloca_nbytes); arg_ = make_save_memory (copy, size); sa_must_free = 1; record_unwind_protect (free_save_value, arg_); } } while (0);
    memcpy (copy, XVECTOR (last_overlay_modification_hooks)->contents,
     size * word_size);

    for (i = 0; i < size;)
      {
 Lisp_Object prop_i, overlay_i;
 prop_i = copy[i++];
 overlay_i = copy[i++];
 call_overlay_mod_hooks (prop_i, overlay_i, after, arg1, arg2, arg3);
      }

    do { if (sa_must_free) { sa_must_free = 0; unbind_to (sa_count, builtin_lisp_symbol (0)); } } while (0);
  }
}

static void
call_overlay_mod_hooks (Lisp_Object list, Lisp_Object overlay, _Bool after,
   Lisp_Object arg1, Lisp_Object arg2, Lisp_Object arg3)
{
  while ((((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons))
    {
      if (((arg3) == (builtin_lisp_symbol (0))))
 call4 ((((void) (0 && ((((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((list) - (Lisp_Cons))))->car, overlay, after ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0), arg1, arg2);
      else
 call5 ((((void) (0 && ((((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((list) - (Lisp_Cons))))->car, overlay, after ? builtin_lisp_symbol (901) : builtin_lisp_symbol (0), arg1, arg2, arg3);
      list = (((void) (0 && ((((enum Lisp_Type) ((list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((list) - (Lisp_Cons))))->u.cdr;
    }
}



void
evaporate_overlays (ptrdiff_t pos)
{
  Lisp_Object overlay, hit_list;
  struct Lisp_Overlay *tail;

  hit_list = builtin_lisp_symbol (0);
  if (pos <= current_buffer->overlay_center)
    for (tail = current_buffer->overlays_before; tail; tail = tail->next)
      {
 ptrdiff_t endpos;
 ((overlay) = make_lisp_ptr (tail, Lisp_Misc));
 endpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0));
 if (endpos < pos)
   break;
 if (endpos == pos && (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0)) == pos
     && ! ((Foverlay_get (overlay, builtin_lisp_symbol (380))) == (builtin_lisp_symbol (0))))
   hit_list = Fcons (overlay, hit_list);
      }
  else
    for (tail = current_buffer->overlays_after; tail; tail = tail->next)
      {
 ptrdiff_t startpos;
 ((overlay) = make_lisp_ptr (tail, Lisp_Misc));
 startpos = (((((enum Lisp_Type) ((XOVERLAY (overlay)->start) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->start) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->start) : (emacs_abort (), 0));
 if (startpos > pos)
   break;
 if (startpos == pos && (((((enum Lisp_Type) ((XOVERLAY (overlay)->end) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Misc) && XMISCTYPE (XOVERLAY (overlay)->end) == Lisp_Misc_Marker) ? marker_position (XOVERLAY (overlay)->end) : (emacs_abort (), 0)) == pos
     && ! ((Foverlay_get (overlay, builtin_lisp_symbol (380))) == (builtin_lisp_symbol (0))))
   hit_list = Fcons (overlay, hit_list);
      }
  for (; (((enum Lisp_Type) ((hit_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons); hit_list = (((void) (0 && ((((enum Lisp_Type) ((hit_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((hit_list) - (Lisp_Cons))))->u.cdr)
    Fdelete_overlay ((((void) (0 && ((((enum Lisp_Type) ((hit_list) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Cons)))), (struct Lisp_Cons *) ((void *) (intptr_t) ((hit_list) - (Lisp_Cons))))->car);
}
# 4937 "buffer.c"
static void
alloc_buffer_text (struct buffer *b, ptrdiff_t nbytes)
{
  void *p;

  block_input ();





  p = xmalloc (nbytes);


  if (p == ((void*)0))
    {
      unblock_input ();
      memory_full (nbytes);
    }

  b->text->beg = p;
  unblock_input ();
}




void
enlarge_buffer_text (struct buffer *b, ptrdiff_t delta)
{
  void *p;
  ptrdiff_t nbytes = (((b)->text->z_byte) - (((1))) + ((b)->text->gap_size) + 1
        + delta);
  block_input ();





  p = xrealloc (b->text->beg, nbytes);


  if (p == ((void*)0))
    {
      unblock_input ();
      memory_full (nbytes);
    }

  ((b)->text->beg) = p;
  unblock_input ();
}




static void
free_buffer_text (struct buffer *b)
{
  block_input ();






  xfree (b->text->beg);


  ((b)->text->beg) = ((void*)0);
  unblock_input ();
}







void
init_buffer_once (void)
{
  int idx;

  memset (buffer_permanent_local_flags, 0, sizeof buffer_permanent_local_flags);


  memset (&buffer_local_flags, 0, sizeof buffer_local_flags);
  bset_filename (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_directory (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_backed_up (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_save_length (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_auto_save_file_name (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_read_only (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_major_mode (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_mode_name (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_undo_list (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_mark_active (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_point_before_scroll (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_file_truename (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_invisibility_spec (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_file_format (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_auto_save_file_format (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_display_count (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_display_time (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));
  bset_enable_multibyte_characters (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (-1) << INTTYPEBITS) + Lisp_Int0)));



  bset_name (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_mark (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_local_var_alist (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_keymap (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_downcase_table (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_upcase_table (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_case_canon_table (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_case_eqv_table (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_minor_modes (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_width_table (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_pt_marker (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_begv_marker (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_zv_marker (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));
  bset_last_selected_window (&buffer_local_flags, ((EMACS_INT) (((EMACS_UINT) (0) << INTTYPEBITS) + Lisp_Int0)));

  idx = 1;
  ((((&buffer_local_flags)-> mode_line_format_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> abbrev_mode_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> overwrite_mode_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> case_fold_search_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> auto_fill_function_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> selective_display_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> selective_display_ellipses_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> tab_width_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> truncate_lines_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> word_wrap_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> ctl_arrow_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> fill_column_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> left_margin_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> abbrev_table_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> display_table_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> syntax_table_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> cache_long_scans_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> category_table_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> bidi_display_reordering_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> bidi_paragraph_direction_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> buffer_file_coding_system_)) = make_natnum (idx));

  buffer_permanent_local_flags[idx++] = 1;
  ((((&buffer_local_flags)-> left_margin_cols_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> right_margin_cols_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> left_fringe_width_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> right_fringe_width_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> fringes_outside_margins_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> scroll_bar_width_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> scroll_bar_height_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> vertical_scroll_bar_type_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> horizontal_scroll_bar_type_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> indicate_empty_lines_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> indicate_buffer_boundaries_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> fringe_indicator_alist_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> fringe_cursor_alist_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> scroll_up_aggressively_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> scroll_down_aggressively_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> header_line_format_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> cursor_type_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> extra_line_spacing_)) = make_natnum (idx)); ++idx;
  ((((&buffer_local_flags)-> cursor_in_non_selected_windows_)) = make_natnum (idx)); ++idx;


  if (idx >= 50)
    emacs_abort ();
  last_per_buffer_idx = idx;



  reset_buffer (&buffer_defaults);
  ((void) (0 && (((((&buffer_defaults)-> name_)) == (builtin_lisp_symbol (0))))));
  reset_buffer_local_variables (&buffer_defaults, 1);
  ((void) (0 && (((((&buffer_local_symbols)-> name_)) == (builtin_lisp_symbol (0))))));
  reset_buffer (&buffer_local_symbols);
  reset_buffer_local_variables (&buffer_local_symbols, 1);

  buffer_defaults.text = &buffer_defaults.own_text;
  buffer_local_symbols.text = &buffer_local_symbols.own_text;

  buffer_defaults.indirections = 0;
  buffer_local_symbols.indirections = 0;

  buffer_defaults.window_count = 0;
  buffer_local_symbols.window_count = 0;
  set_buffer_intervals (&buffer_defaults, ((void*)0));
  set_buffer_intervals (&buffer_local_symbols, ((void*)0));

  bset_name (&buffer_defaults, build_pure_c_string (" *buffer-defaults*"));
  bset_name (&buffer_local_symbols, build_pure_c_string (" *buffer-local-symbols*"));
  ((&buffer_defaults)->header.size = (((9223372036854775807L) - (9223372036854775807L) / 2) | ((PVEC_BUFFER) << PSEUDOVECTOR_AREA_BITS) | ((((((sizeof (struct buffer) - __builtin_offsetof(struct buffer, own_text)) + (word_size - 1)) & ~(word_size - 1)) / word_size)) << PSEUDOVECTOR_SIZE_BITS) | (((__builtin_offsetof(struct buffer, own_text) - header_size) / word_size))));
  ((&buffer_local_symbols)->header.size = (((9223372036854775807L) - (9223372036854775807L) / 2) | ((PVEC_BUFFER) << PSEUDOVECTOR_AREA_BITS) | ((((((sizeof (struct buffer) - __builtin_offsetof(struct buffer, own_text)) + (word_size - 1)) & ~(word_size - 1)) / word_size)) << PSEUDOVECTOR_SIZE_BITS) | (((__builtin_offsetof(struct buffer, own_text) - header_size) / word_size))));





  bset_mode_line_format (&buffer_defaults, build_pure_c_string ("%-"));
  bset_header_line_format (&buffer_defaults, builtin_lisp_symbol (0));
  bset_abbrev_mode (&buffer_defaults, builtin_lisp_symbol (0));
  bset_overwrite_mode (&buffer_defaults, builtin_lisp_symbol (0));
  bset_case_fold_search (&buffer_defaults, builtin_lisp_symbol (901));
  bset_auto_fill_function (&buffer_defaults, builtin_lisp_symbol (0));
  bset_selective_display (&buffer_defaults, builtin_lisp_symbol (0));
  bset_selective_display_ellipses (&buffer_defaults, builtin_lisp_symbol (901));
  bset_abbrev_table (&buffer_defaults, builtin_lisp_symbol (0));
  bset_display_table (&buffer_defaults, builtin_lisp_symbol (0));
  bset_undo_list (&buffer_defaults, builtin_lisp_symbol (0));
  bset_mark_active (&buffer_defaults, builtin_lisp_symbol (0));
  bset_file_format (&buffer_defaults, builtin_lisp_symbol (0));
  bset_auto_save_file_format (&buffer_defaults, builtin_lisp_symbol (901));
  set_buffer_overlays_before (&buffer_defaults, ((void*)0));
  set_buffer_overlays_after (&buffer_defaults, ((void*)0));
  buffer_defaults.overlay_center = (1);

  ((((&buffer_defaults)-> tab_width_)) = make_natnum (8));
  bset_truncate_lines (&buffer_defaults, builtin_lisp_symbol (0));
  bset_word_wrap (&buffer_defaults, builtin_lisp_symbol (0));
  bset_ctl_arrow (&buffer_defaults, builtin_lisp_symbol (901));
  bset_bidi_display_reordering (&buffer_defaults, builtin_lisp_symbol (901));
  bset_bidi_paragraph_direction (&buffer_defaults, builtin_lisp_symbol (0));
  bset_cursor_type (&buffer_defaults, builtin_lisp_symbol (901));
  bset_extra_line_spacing (&buffer_defaults, builtin_lisp_symbol (0));
  bset_cursor_in_non_selected_windows (&buffer_defaults, builtin_lisp_symbol (901));

  bset_enable_multibyte_characters (&buffer_defaults, builtin_lisp_symbol (901));
  bset_buffer_file_coding_system (&buffer_defaults, builtin_lisp_symbol (0));
  ((((&buffer_defaults)-> fill_column_)) = make_natnum (70));
  ((((&buffer_defaults)-> left_margin_)) = make_natnum (0));
  bset_cache_long_scans (&buffer_defaults, builtin_lisp_symbol (901));
  bset_file_truename (&buffer_defaults, builtin_lisp_symbol (0));
  ((((&buffer_defaults)-> display_count_)) = make_natnum (0));
  ((((&buffer_defaults)-> left_margin_cols_)) = make_natnum (0));
  ((((&buffer_defaults)-> right_margin_cols_)) = make_natnum (0));
  bset_left_fringe_width (&buffer_defaults, builtin_lisp_symbol (0));
  bset_right_fringe_width (&buffer_defaults, builtin_lisp_symbol (0));
  bset_fringes_outside_margins (&buffer_defaults, builtin_lisp_symbol (0));
  bset_scroll_bar_width (&buffer_defaults, builtin_lisp_symbol (0));
  bset_scroll_bar_height (&buffer_defaults, builtin_lisp_symbol (0));
  bset_vertical_scroll_bar_type (&buffer_defaults, builtin_lisp_symbol (901));
  bset_horizontal_scroll_bar_type (&buffer_defaults, builtin_lisp_symbol (901));
  bset_indicate_empty_lines (&buffer_defaults, builtin_lisp_symbol (0));
  bset_indicate_buffer_boundaries (&buffer_defaults, builtin_lisp_symbol (0));
  bset_fringe_indicator_alist (&buffer_defaults, builtin_lisp_symbol (0));
  bset_fringe_cursor_alist (&buffer_defaults, builtin_lisp_symbol (0));
  bset_scroll_up_aggressively (&buffer_defaults, builtin_lisp_symbol (0));
  bset_scroll_down_aggressively (&buffer_defaults, builtin_lisp_symbol (0));
  bset_display_time (&buffer_defaults, builtin_lisp_symbol (0));







  { extern int (*_gl_verify_function5 (void)) [(!!sizeof (struct { unsigned int _gl_verify_error_if_negative: (sizeof (EMACS_INT) == word_size) ? 1 : -1; }))]; }

  Vbuffer_alist = builtin_lisp_symbol (0);
  current_buffer = 0;
  all_buffers = 0;

  QSFundamental = build_pure_c_string ("Fundamental");

                                                ;
  bset_major_mode (&buffer_defaults, builtin_lisp_symbol (479));

                                    ;
                                              ;

                                              ;
                                                ;
  Fput (builtin_lisp_symbol (592), builtin_lisp_symbol (747), builtin_lisp_symbol (901));


  Vprin1_to_string_buffer = Fget_buffer_create (build_pure_c_string (" prin1"));
  Vbuffer_alist = builtin_lisp_symbol (0);

  Fset_buffer (Fget_buffer_create (build_pure_c_string ("*scratch*")));

  globals.f_inhibit_modification_hooks = 0;
}

void
init_buffer (int initialized)
{
  char *pwd;
  Lisp_Object temp;
  ptrdiff_t len;
# 5274 "buffer.c"
  (void) initialized;


  Lisp_Object scratch = (USE_STACK_STRING ? (make_lisp_ptr ((&(union Aligned_String) {{strlen ("*scratch*"), -1, 0, (unsigned char *) ("*scratch*")}}.s), Lisp_String)) : build_string (("*scratch*")));
  Fset_buffer (Fget_buffer_create (scratch));
  if (((((&buffer_defaults)-> enable_multibyte_characters_)) == (builtin_lisp_symbol (0))))
    Fset_buffer_multibyte (builtin_lisp_symbol (0));

  pwd = get_current_dir_name ();

  if (!pwd)
    {
      fprintf (stderr, "Error getting directory: %s\n",
               emacs_strerror ((*__errno_location ())));
      bset_directory (current_buffer, builtin_lisp_symbol (0));
    }
  else
    {


      len = strlen (pwd);
      if (!(((pwd[len - 1]) == '/')))
        {

          pwd = realloc (pwd, len + 2);
          if (!pwd)
            fatal ("get_current_dir_name: %s\n", strerror ((*__errno_location ())));
          pwd[len] = '/';
          pwd[len + 1] = '\0';
          len++;
        }




      bset_directory (current_buffer, make_unibyte_string (pwd, len));



      temp = Ffind_file_name_handler (((current_buffer)-> directory_), builtin_lisp_symbol (901));
      if (! ((temp) == (builtin_lisp_symbol (0)))




          && strcmp ("/", SSDATA (((current_buffer)-> directory_))))
        {
          Lisp_Object slash_colon = (USE_STACK_STRING ? (make_lisp_ptr ((&(union Aligned_String) {{strlen ("/:"), -1, 0, (unsigned char *) ("/:")}}.s), Lisp_String)) : build_string (("/:")));
          bset_directory (current_buffer,
                          concat2 (slash_colon,
                                   ((current_buffer)-> directory_)));
        }
    }

  temp = get_minibuffer (0);
  bset_directory (XBUFFER (temp), ((current_buffer)-> directory_));

  free (pwd);
}
# 5348 "buffer.c"
static void
defvar_per_buffer (struct Lisp_Buffer_Objfwd *bo_fwd, const char *namestring,
     Lisp_Object *address, Lisp_Object predicate)
{
  struct Lisp_Symbol *sym;
  int offset;

  sym = (((void) (0 && ((((enum Lisp_Type) ((intern (namestring)) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (intern (namestring)) - Lisp_Symbol + (char *) lispsym));
  offset = (char *)address - (char *)current_buffer;

  bo_fwd->type = Lisp_Fwd_Buffer_Obj;
  bo_fwd->offset = offset;
  bo_fwd->predicate = predicate;
  sym->declared_special = 1;
  sym->redirect = SYMBOL_FORWARDED;
  SET_SYMBOL_FWD (sym, (union Lisp_Fwd *) bo_fwd);
  (((*(Lisp_Object *)((offset) + (char *) &buffer_local_symbols))) = make_lisp_symbol (sym));

  if (((*(Lisp_Object *)((offset) + (char *) &buffer_local_flags)) >> INTTYPEBITS) == 0)


    emacs_abort ();
}



void
syms_of_buffer (void)
{
  staticpro (&last_overlay_modification_hooks);
  last_overlay_modification_hooks
    = Fmake_vector (((EMACS_INT) (((EMACS_UINT) (10) << INTTYPEBITS) + Lisp_Int0)), builtin_lisp_symbol (0));

  staticpro (&QSFundamental);
  staticpro (&Vbuffer_alist);

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
                                                                      ;

                                                      ;
  Fput (builtin_lisp_symbol (1002), builtin_lisp_symbol (263), list4 (builtin_lisp_symbol (0), builtin_lisp_symbol (901), builtin_lisp_symbol (607), builtin_lisp_symbol (811)));
                                                          ;

                                ;
  Fput (builtin_lisp_symbol (455), builtin_lisp_symbol (785), Fcons (make_float (0.0), make_float (1.0)));

                                            ;
  Fput (builtin_lisp_symbol (736), builtin_lisp_symbol (263),
 list3 (builtin_lisp_symbol (0), intern ("overwrite-mode-textual"),
        builtin_lisp_symbol (737)));

  Fput (builtin_lisp_symbol (778), builtin_lisp_symbol (373),
 listn (CONSTYPE_PURE, 2, builtin_lisp_symbol (778), builtin_lisp_symbol (372)));
  Fput (builtin_lisp_symbol (778), builtin_lisp_symbol (374),
 build_pure_c_string ("Attempt to modify a protected field"));

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-mode-line-format", &((&buffer_defaults)-> mode_line_format_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-header-line-format", &((&buffer_defaults)-> header_line_format_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-cursor-type", &((&buffer_defaults)-> cursor_type_)); } while (0);



  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-line-spacing", &((&buffer_defaults)-> extra_line_spacing_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-cursor-in-non-selected-windows", &((&buffer_defaults)-> cursor_in_non_selected_windows_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-abbrev-mode", &((&buffer_defaults)-> abbrev_mode_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-ctl-arrow", &((&buffer_defaults)-> ctl_arrow_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-enable-multibyte-characters", &((&buffer_defaults)-> enable_multibyte_characters_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-buffer-file-coding-system", &((&buffer_defaults)-> buffer_file_coding_system_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-truncate-lines", &((&buffer_defaults)-> truncate_lines_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-fill-column", &((&buffer_defaults)-> fill_column_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-left-margin", &((&buffer_defaults)-> left_margin_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-tab-width", &((&buffer_defaults)-> tab_width_)); } while (0);






  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-case-fold-search", &((&buffer_defaults)-> case_fold_search_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-left-margin-width", &((&buffer_defaults)-> left_margin_cols_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-right-margin-width", &((&buffer_defaults)-> right_margin_cols_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-left-fringe-width", &((&buffer_defaults)-> left_fringe_width_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-right-fringe-width", &((&buffer_defaults)-> right_fringe_width_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-fringes-outside-margins", &((&buffer_defaults)-> fringes_outside_margins_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-scroll-bar-width", &((&buffer_defaults)-> scroll_bar_width_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-vertical-scroll-bar", &((&buffer_defaults)-> vertical_scroll_bar_type_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-indicate-empty-lines", &((&buffer_defaults)-> indicate_empty_lines_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-indicate-buffer-boundaries", &((&buffer_defaults)-> indicate_buffer_boundaries_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-fringe-indicator-alist", &((&buffer_defaults)-> fringe_indicator_alist_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-fringe-cursor-alist", &((&buffer_defaults)-> fringe_cursor_alist_)); } while (0);




  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-scroll-up-aggressively", &((&buffer_defaults)-> scroll_up_aggressively_)); } while (0);





  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-scroll-down-aggressively", &((&buffer_defaults)-> scroll_down_aggressively_)); } while (0);





  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "header-line-format", &((current_buffer)-> header_line_format_), builtin_lisp_symbol (0)); } while (0);






  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "mode-line-format", &((current_buffer)-> mode_line_format_), builtin_lisp_symbol (0)); } while (0);
# 5629 "buffer.c"
  do { static struct Lisp_Objfwd o_fwd; defvar_lisp_nopro (&o_fwd, "default-major-mode", &((&buffer_defaults)-> major_mode_)); } while (0);


  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "major-mode", &((current_buffer)-> major_mode_), builtin_lisp_symbol (897)); } while (0);






  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "mode-name", &((current_buffer)-> mode_name_), builtin_lisp_symbol (0)); } while (0);






  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "local-abbrev-table", &((current_buffer)-> abbrev_table_), builtin_lisp_symbol (0)); } while (0);


  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "abbrev-mode", &((current_buffer)-> abbrev_mode_), builtin_lisp_symbol (0)); } while (0);



  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "case-fold-search", &((current_buffer)-> case_fold_search_), builtin_lisp_symbol (0)); } while (0);



  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "fill-column", &((current_buffer)-> fill_column_), builtin_lisp_symbol (559)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "left-margin", &((current_buffer)-> left_margin_), builtin_lisp_symbol (559)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "tab-width", &((current_buffer)-> tab_width_), builtin_lisp_symbol (559)); } while (0);






  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "ctl-arrow", &((current_buffer)-> ctl_arrow_), builtin_lisp_symbol (0)); } while (0);





  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "enable-multibyte-characters", &((current_buffer)-> enable_multibyte_characters_), builtin_lisp_symbol (0)); } while (0);
# 5690 "buffer.c"
  (((void) (0 && ((((enum Lisp_Type) ((intern_c_string ("enable-multibyte-characters")) & ~(((9223372036854775807L >> (3 - 1)) / 2 < (9223372036854775807L)) ? - (1 << 3) : (9223372036854775807L >> (3 - 1))))) == Lisp_Symbol)))), (struct Lisp_Symbol *) ((intptr_t) (intern_c_string ("enable-multibyte-characters")) - Lisp_Symbol + (char *) lispsym))->constant = 1;

  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-file-coding-system", &((current_buffer)-> buffer_file_coding_system_), builtin_lisp_symbol (0)); } while (0);
# 5710 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "bidi-display-reordering", &((current_buffer)-> bidi_display_reordering_), builtin_lisp_symbol (0)); } while (0);



  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "bidi-paragraph-direction", &((current_buffer)-> bidi_paragraph_direction_), builtin_lisp_symbol (0)); } while (0);
# 5726 "buffer.c"
 do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "truncate-lines", &((current_buffer)-> truncate_lines_), builtin_lisp_symbol (0)); } while (0);
# 5736 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "word-wrap", &((current_buffer)-> word_wrap_), builtin_lisp_symbol (0)); } while (0);
# 5754 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "default-directory", &((current_buffer)-> directory_), builtin_lisp_symbol (885)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "auto-fill-function", &((current_buffer)-> auto_fill_function_), builtin_lisp_symbol (0)); } while (0);







  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-file-name", &((current_buffer)-> filename_), builtin_lisp_symbol (885)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-file-truename", &((current_buffer)-> file_truename_), builtin_lisp_symbol (885)); } while (0);





  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-auto-save-file-name", &((current_buffer)-> auto_save_file_name_), builtin_lisp_symbol (885)); } while (0);





  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-read-only", &((current_buffer)-> read_only_), builtin_lisp_symbol (0)); } while (0);


  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-backed-up", &((current_buffer)-> backed_up_), builtin_lisp_symbol (0)); } while (0);



  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-saved-size", &((current_buffer)-> save_length_), builtin_lisp_symbol (559)); } while (0);
# 5801 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "selective-display", &((current_buffer)-> selective_display_), builtin_lisp_symbol (0)); } while (0);
# 5813 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "selective-display-ellipses", &((current_buffer)-> selective_display_ellipses_), builtin_lisp_symbol (0)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "overwrite-mode", &((current_buffer)-> overwrite_mode_), builtin_lisp_symbol (736)); } while (0);
# 5828 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-display-table", &((current_buffer)-> display_table_), builtin_lisp_symbol (0)); } while (0);
# 5865 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "left-margin-width", &((current_buffer)-> left_margin_cols_), builtin_lisp_symbol (559)); } while (0);







  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "right-margin-width", &((current_buffer)-> right_margin_cols_), builtin_lisp_symbol (559)); } while (0);







  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "left-fringe-width", &((current_buffer)-> left_fringe_width_), builtin_lisp_symbol (559)); } while (0);
# 5890 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "right-fringe-width", &((current_buffer)-> right_fringe_width_), builtin_lisp_symbol (559)); } while (0);
# 5899 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "fringes-outside-margins", &((current_buffer)-> fringes_outside_margins_), builtin_lisp_symbol (0)); } while (0);







  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "scroll-bar-width", &((current_buffer)-> scroll_bar_width_), builtin_lisp_symbol (559)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "scroll-bar-height", &((current_buffer)-> scroll_bar_height_), builtin_lisp_symbol (559)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "vertical-scroll-bar", &((current_buffer)-> vertical_scroll_bar_type_), builtin_lisp_symbol (1002)); } while (0);
# 5927 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "horizontal-scroll-bar", &((current_buffer)-> horizontal_scroll_bar_type_), builtin_lisp_symbol (0)); } while (0);
# 5938 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "indicate-empty-lines", &((current_buffer)-> indicate_empty_lines_), builtin_lisp_symbol (0)); } while (0);





  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "indicate-buffer-boundaries", &((current_buffer)-> indicate_buffer_boundaries_), builtin_lisp_symbol (0)); } while (0);
# 5969 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "fringe-indicator-alist", &((current_buffer)-> fringe_indicator_alist_), builtin_lisp_symbol (0)); } while (0);
# 5988 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "fringe-cursor-alist", &((current_buffer)-> fringe_cursor_alist_), builtin_lisp_symbol (0)); } while (0);
# 6003 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "scroll-up-aggressively", &((current_buffer)-> scroll_up_aggressively_), builtin_lisp_symbol (455)); } while (0);
# 6016 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "scroll-down-aggressively", &((current_buffer)-> scroll_down_aggressively_), builtin_lisp_symbol (455)); } while (0);
# 6029 "buffer.c"
  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "before-change-functions", &globals.f_Vbefore_change_functions); } while (0);
# 6043 "buffer.c"
  globals.f_Vbefore_change_functions = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "after-change-functions", &globals.f_Vafter_change_functions); } while (0);
# 6061 "buffer.c"
  globals.f_Vafter_change_functions = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "first-change-hook", &globals.f_Vfirst_change_hook); } while (0);


  globals.f_Vfirst_change_hook = builtin_lisp_symbol (0);

  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-undo-list", &((current_buffer)-> undo_list_), builtin_lisp_symbol (0)); } while (0);
# 6114 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "mark-active", &((current_buffer)-> mark_active_), builtin_lisp_symbol (0)); } while (0);


  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "cache-long-scans", &((current_buffer)-> cache_long_scans_), builtin_lisp_symbol (0)); } while (0);
# 6153 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "point-before-scroll", &((current_buffer)-> point_before_scroll_), builtin_lisp_symbol (0)); } while (0);


  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-file-format", &((current_buffer)-> file_format_), builtin_lisp_symbol (0)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-auto-save-file-format", &((current_buffer)-> auto_save_file_format_), builtin_lisp_symbol (0)); } while (0);






  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-invisibility-spec", &((current_buffer)-> invisibility_spec_), builtin_lisp_symbol (0)); } while (0);
# 6182 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-display-count", &((current_buffer)-> display_count_), builtin_lisp_symbol (559)); } while (0);




  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "buffer-display-time", &((current_buffer)-> display_time_), builtin_lisp_symbol (0)); } while (0);






  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "transient-mark-mode", &globals.f_Vtransient_mark_mode); } while (0);
# 6214 "buffer.c"
  globals.f_Vtransient_mark_mode = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "inhibit-read-only", &globals.f_Vinhibit_read_only); } while (0);





  globals.f_Vinhibit_read_only = builtin_lisp_symbol (0);

  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "cursor-type", &((current_buffer)-> cursor_type_), builtin_lisp_symbol (0)); } while (0);
# 6244 "buffer.c"
  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "line-spacing", &((current_buffer)-> extra_line_spacing_), builtin_lisp_symbol (711)); } while (0);







  do { static struct Lisp_Buffer_Objfwd bo_fwd; defvar_per_buffer (&bo_fwd, "cursor-in-non-selected-windows", &((current_buffer)-> cursor_in_non_selected_windows_), builtin_lisp_symbol (0)); } while (0);
# 6261 "buffer.c"
  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "kill-buffer-query-functions", &globals.f_Vkill_buffer_query_functions); } while (0);





  globals.f_Vkill_buffer_query_functions = builtin_lisp_symbol (0);

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "change-major-mode-hook", &globals.f_Vchange_major_mode_hook); } while (0);


  globals.f_Vchange_major_mode_hook = builtin_lisp_symbol (0);
                                                            ;

  do { static struct Lisp_Objfwd o_fwd; defvar_lisp (&o_fwd, "buffer-list-update-hook", &globals.f_Vbuffer_list_update_hook); } while (0);




  globals.f_Vbuffer_list_update_hook = builtin_lisp_symbol (0);
                                                              ;

  defsubr (&Sbuffer_live_p);
  defsubr (&Sbuffer_list);
  defsubr (&Sget_buffer);
  defsubr (&Sget_file_buffer);
  defsubr (&Sget_buffer_create);
  defsubr (&Smake_indirect_buffer);
  defsubr (&Sgenerate_new_buffer_name);
  defsubr (&Sbuffer_name);
  defsubr (&Sbuffer_file_name);
  defsubr (&Sbuffer_base_buffer);
  defsubr (&Sbuffer_local_value);
  defsubr (&Sbuffer_local_variables);
  defsubr (&Sbuffer_modified_p);
  defsubr (&Sforce_mode_line_update);
  defsubr (&Sset_buffer_modified_p);
  defsubr (&Sbuffer_modified_tick);
  defsubr (&Sbuffer_chars_modified_tick);
  defsubr (&Srename_buffer);
  defsubr (&Sother_buffer);
  defsubr (&Sbuffer_enable_undo);
  defsubr (&Skill_buffer);
  defsubr (&Sbury_buffer_internal);
  defsubr (&Sset_buffer_major_mode);
  defsubr (&Scurrent_buffer);
  defsubr (&Sset_buffer);
  defsubr (&Sbarf_if_buffer_read_only);
  defsubr (&Serase_buffer);
  defsubr (&Sbuffer_swap_text);
  defsubr (&Sset_buffer_multibyte);
  defsubr (&Skill_all_local_variables);

  defsubr (&Soverlayp);
  defsubr (&Smake_overlay);
  defsubr (&Sdelete_overlay);
  defsubr (&Sdelete_all_overlays);
  defsubr (&Smove_overlay);
  defsubr (&Soverlay_start);
  defsubr (&Soverlay_end);
  defsubr (&Soverlay_buffer);
  defsubr (&Soverlay_properties);
  defsubr (&Soverlays_at);
  defsubr (&Soverlays_in);
  defsubr (&Snext_overlay_change);
  defsubr (&Sprevious_overlay_change);
  defsubr (&Soverlay_recenter);
  defsubr (&Soverlay_lists);
  defsubr (&Soverlay_get);
  defsubr (&Soverlay_put);
  defsubr (&Srestore_buffer_modified_p);

  Fput (intern_c_string ("erase-buffer"), builtin_lisp_symbol (343), builtin_lisp_symbol (901));
}

void
keys_of_buffer (void)
{
  initial_define_key (control_x_map, 'b', "switch-to-buffer");
  initial_define_key (control_x_map, 'k', "kill-buffer");
}
