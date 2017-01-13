# 1 "sha512.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "sha512.c" 2
# 23 "sha512.c"
# 1 "../src/config.h" 1
# 1916 "../src/config.h"
# 1 "../src/conf_post.h" 1
# 35 "../src/conf_post.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdbool.h" 1 3
# 36 "../src/conf_post.h" 2







typedef _Bool bool_bf;





# 1 "./alloca.h" 1
# 49 "../src/conf_post.h" 2
# 227 "../src/conf_post.h"
extern char *emacs_getenv_TZ (void);
extern int emacs_setenv_TZ (char const *);


# 1 "./string.h" 1
# 21 "./string.h" 3
# 41 "./string.h" 3
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
# 42 "./string.h" 2 3







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
# 50 "./string.h" 2 3
# 524 "./string.h" 3
extern int _gl_cxxalias_dummy;







extern int _gl_cxxalias_dummy;
# 579 "./string.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 231 "../src/conf_post.h" 2
# 1 "./stdlib.h" 1
# 21 "./stdlib.h" 3
# 36 "./stdlib.h" 3
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





# 1 "./sys/types.h" 1 3 4
# 21 "./sys/types.h" 3







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
# 1 "./time.h" 1 3 4
# 21 "./time.h" 3
# 35 "./time.h" 3
# 1 "/usr/include/time.h" 1 3 4
# 59 "/usr/include/time.h" 3 4
typedef __clock_t clock_t;
# 75 "/usr/include/time.h" 3 4
typedef __time_t time_t;
# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 36 "./time.h" 2 3
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
# 1 "./sys/select.h" 1 3 4
# 20 "./sys/select.h" 3
# 77 "./sys/select.h" 3
# 1 "./sys/types.h" 1 3
# 21 "./sys/types.h" 3







# 1 "/usr/include/sys/types.h" 1 3 4
# 29 "./sys/types.h" 2 3
# 78 "./sys/select.h" 2 3
# 100 "./sys/select.h" 3
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






# 1 "./time.h" 1 3 4
# 21 "./time.h" 3
# 35 "./time.h" 3
# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 36 "./time.h" 2 3
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
# 101 "./sys/select.h" 2 3
# 576 "./sys/select.h" 3
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
# 29 "./sys/types.h" 2 3
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
# 37 "./stdlib.h" 2 3





# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 43 "./stdlib.h" 2 3
# 539 "./stdlib.h" 3
extern int _gl_cxxalias_dummy;
extern int _gl_cxxalias_dummy;
# 668 "./stdlib.h" 3
extern int _gl_cxxalias_dummy;
extern int _gl_cxxalias_dummy;
# 840 "./stdlib.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 232 "../src/conf_post.h" 2
# 1917 "../src/config.h" 2
# 24 "sha512.c" 2




# 1 "./sha512.h" 1
# 21 "./sha512.h"
# 1 "./stdio.h" 1
# 21 "./stdio.h" 3
# 43 "./stdio.h" 3
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
# 44 "./stdio.h" 2 3
# 53 "./stdio.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 54 "./stdio.h" 2 3




# 1 "./sys/types.h" 1 3
# 21 "./sys/types.h" 3
# 59 "./stdio.h" 2 3
# 552 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 567 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 610 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 661 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 676 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 691 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 731 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 901 "./stdio.h" 3
extern int _gl_cxxalias_dummy;
# 927 "./stdio.h" 3
extern int _gl_cxxalias_dummy;
# 939 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 953 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1189 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1212 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1226 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1240 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1342 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 1525 "./stdio.h" 3
extern int _gl_cxxalias_dummy;


extern int _gl_cxxalias_dummy;
# 1580 "./stdio.h" 3
extern int _gl_cxxalias_dummy;

extern int _gl_cxxalias_dummy;
# 22 "./sha512.h" 2
# 1 "./u64.h" 1
# 20 "./u64.h"
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
# 21 "./u64.h" 2
# 37 "./u64.h"
typedef uint64_t u64;
# 23 "./sha512.h" 2
# 32 "./sha512.h"
enum { SHA384_DIGEST_SIZE = 384 / 8 };
enum { SHA512_DIGEST_SIZE = 512 / 8 };
# 42 "./sha512.h"
struct sha512_ctx
{
  u64 state[8];

  u64 total[2];
  size_t buflen;
  u64 buffer[32];
};


extern void sha512_init_ctx (struct sha512_ctx *ctx);
extern void sha384_init_ctx (struct sha512_ctx *ctx);





extern void sha512_process_block (const void *buffer, size_t len,
                                  struct sha512_ctx *ctx);





extern void sha512_process_bytes (const void *buffer, size_t len,
                                  struct sha512_ctx *ctx);





extern void *sha512_finish_ctx (struct sha512_ctx *ctx, void *resbuf);
extern void *sha384_finish_ctx (struct sha512_ctx *ctx, void *resbuf);
# 83 "./sha512.h"
extern void *sha512_read_ctx (const struct sha512_ctx *ctx, void *resbuf);
extern void *sha384_read_ctx (const struct sha512_ctx *ctx, void *resbuf);






extern void *sha512_buffer (const char *buffer, size_t len, void *resblock);
extern void *sha384_buffer (const char *buffer, size_t len, void *resblock);





extern int sha512_stream (FILE *stream, void *resblock);
extern int sha384_stream (FILE *stream, void *resblock);
# 29 "sha512.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdalign.h" 1 3
# 31 "sha512.c" 2

# 1 "./stdlib.h" 1
# 21 "./stdlib.h" 3
# 33 "sha512.c" 2
# 1 "./string.h" 1
# 21 "./string.h" 3
# 34 "sha512.c" 2
# 61 "sha512.c"
static const unsigned char fillbuf[128] = { 0x80, 0 };







void
sha512_init_ctx (struct sha512_ctx *ctx)
{
  ctx->state[0] = ((u64) (((u64) (0x6a09e667) << 32) + (0xf3bcc908)));
  ctx->state[1] = ((u64) (((u64) (0xbb67ae85) << 32) + (0x84caa73b)));
  ctx->state[2] = ((u64) (((u64) (0x3c6ef372) << 32) + (0xfe94f82b)));
  ctx->state[3] = ((u64) (((u64) (0xa54ff53a) << 32) + (0x5f1d36f1)));
  ctx->state[4] = ((u64) (((u64) (0x510e527f) << 32) + (0xade682d1)));
  ctx->state[5] = ((u64) (((u64) (0x9b05688c) << 32) + (0x2b3e6c1f)));
  ctx->state[6] = ((u64) (((u64) (0x1f83d9ab) << 32) + (0xfb41bd6b)));
  ctx->state[7] = ((u64) (((u64) (0x5be0cd19) << 32) + (0x137e2179)));

  ctx->total[0] = ctx->total[1] = ((u64) (0));
  ctx->buflen = 0;
}

void
sha384_init_ctx (struct sha512_ctx *ctx)
{
  ctx->state[0] = ((u64) (((u64) (0xcbbb9d5d) << 32) + (0xc1059ed8)));
  ctx->state[1] = ((u64) (((u64) (0x629a292a) << 32) + (0x367cd507)));
  ctx->state[2] = ((u64) (((u64) (0x9159015a) << 32) + (0x3070dd17)));
  ctx->state[3] = ((u64) (((u64) (0x152fecd8) << 32) + (0xf70e5939)));
  ctx->state[4] = ((u64) (((u64) (0x67332667) << 32) + (0xffc00b31)));
  ctx->state[5] = ((u64) (((u64) (0x8eb44a87) << 32) + (0x68581511)));
  ctx->state[6] = ((u64) (((u64) (0xdb0c2e0d) << 32) + (0x64f98fa7)));
  ctx->state[7] = ((u64) (((u64) (0x47b5481d) << 32) + (0xbefa4fa4)));

  ctx->total[0] = ctx->total[1] = ((u64) (0));
  ctx->buflen = 0;
}




static void
set_uint64 (char *cp, u64 v)
{
  memcpy (cp, &v, sizeof v);
}



void *
sha512_read_ctx (const struct sha512_ctx *ctx, void *resbuf)
{
  int i;
  char *r = resbuf;

  for (i = 0; i < 8; i++)
    set_uint64 (r + i * sizeof ctx->state[0], ((((((((ctx->state[i]) << (56))) | (((((ctx->state[i]) & (((u64) (0x0000ff00))))) << (40))))) | (((((((ctx->state[i]) & (((u64) (0x00ff0000))))) << (24))) | (((((ctx->state[i]) & (((u64) (0xff000000))))) << (8))))))) | (((((((((ctx->state[i]) >> (8))) & (((u64) (0xff000000))))) | (((((ctx->state[i]) >> (24))) & (((u64) (0x00ff0000))))))) | (((((((ctx->state[i]) >> (40))) & (((u64) (0x0000ff00))))) | (((ctx->state[i]) >> (56)))))))));

  return resbuf;
}

void *
sha384_read_ctx (const struct sha512_ctx *ctx, void *resbuf)
{
  int i;
  char *r = resbuf;

  for (i = 0; i < 6; i++)
    set_uint64 (r + i * sizeof ctx->state[0], ((((((((ctx->state[i]) << (56))) | (((((ctx->state[i]) & (((u64) (0x0000ff00))))) << (40))))) | (((((((ctx->state[i]) & (((u64) (0x00ff0000))))) << (24))) | (((((ctx->state[i]) & (((u64) (0xff000000))))) << (8))))))) | (((((((((ctx->state[i]) >> (8))) & (((u64) (0xff000000))))) | (((((ctx->state[i]) >> (24))) & (((u64) (0x00ff0000))))))) | (((((((ctx->state[i]) >> (40))) & (((u64) (0x0000ff00))))) | (((ctx->state[i]) >> (56)))))))));

  return resbuf;
}



static void
sha512_conclude_ctx (struct sha512_ctx *ctx)
{

  size_t bytes = ctx->buflen;
  size_t size = (bytes < 112) ? 128 / 8 : 128 * 2 / 8;


  ctx->total[0] = ((ctx->total[0]) + (((u64) (bytes))));
  if (((ctx->total[0]) < (((u64) (bytes)))))
    ctx->total[1] = ((ctx->total[1]) + (((u64) (1))));




  set_uint64 ((char *) &ctx->buffer[size - 2],
              ((((((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) << (56))) | (((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) & (((u64) (0x0000ff00))))) << (40))))) | (((((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) & (((u64) (0x00ff0000))))) << (24))) | (((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) & (((u64) (0xff000000))))) << (8))))))) | (((((((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) >> (8))) & (((u64) (0xff000000))))) | (((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) >> (24))) & (((u64) (0x00ff0000))))))) | (((((((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) >> (40))) & (((u64) (0x0000ff00))))) | (((((((ctx->total[1]) << (3))) | (((ctx->total[0]) >> (61))))) >> (56)))))))));

  set_uint64 ((char *) &ctx->buffer[size - 1],
              ((((((((((ctx->total[0]) << (3))) << (56))) | (((((((ctx->total[0]) << (3))) & (((u64) (0x0000ff00))))) << (40))))) | (((((((((ctx->total[0]) << (3))) & (((u64) (0x00ff0000))))) << (24))) | (((((((ctx->total[0]) << (3))) & (((u64) (0xff000000))))) << (8))))))) | (((((((((((ctx->total[0]) << (3))) >> (8))) & (((u64) (0xff000000))))) | (((((((ctx->total[0]) << (3))) >> (24))) & (((u64) (0x00ff0000))))))) | (((((((((ctx->total[0]) << (3))) >> (40))) & (((u64) (0x0000ff00))))) | (((((ctx->total[0]) << (3))) >> (56)))))))));

  memcpy (&((char *) ctx->buffer)[bytes], fillbuf, (size - 2) * 8 - bytes);


  sha512_process_block (ctx->buffer, size * 8, ctx);
}

void *
sha512_finish_ctx (struct sha512_ctx *ctx, void *resbuf)
{
  sha512_conclude_ctx (ctx);
  return sha512_read_ctx (ctx, resbuf);
}

void *
sha384_finish_ctx (struct sha512_ctx *ctx, void *resbuf)
{
  sha512_conclude_ctx (ctx);
  return sha384_read_ctx (ctx, resbuf);
}





int
sha512_stream (FILE *stream, void *resblock)
{
  struct sha512_ctx ctx;
  size_t sum;

  char *buffer = malloc (32768 + 72);
  if (!buffer)
    return 1;


  sha512_init_ctx (&ctx);


  while (1)
    {



      size_t n;
      sum = 0;


      while (1)
        {
          n = fread (buffer + sum, 1, 32768 - sum, stream);

          sum += n;

          if (sum == 32768)
            break;

          if (n == 0)
            {



              if (ferror (stream))
                {
                  free (buffer);
                  return 1;
                }
              goto process_partial_block;
            }




          if (feof (stream))
            goto process_partial_block;
        }




      sha512_process_block (buffer, 32768, &ctx);
    }

 process_partial_block:;


  if (sum > 0)
    sha512_process_bytes (buffer, sum, &ctx);


  sha512_finish_ctx (&ctx, resblock);
  free (buffer);
  return 0;
}


int
sha384_stream (FILE *stream, void *resblock)
{
  struct sha512_ctx ctx;
  size_t sum;

  char *buffer = malloc (32768 + 72);
  if (!buffer)
    return 1;


  sha384_init_ctx (&ctx);


  while (1)
    {



      size_t n;
      sum = 0;


      while (1)
        {
          n = fread (buffer + sum, 1, 32768 - sum, stream);

          sum += n;

          if (sum == 32768)
            break;

          if (n == 0)
            {



              if (ferror (stream))
                {
                  free (buffer);
                  return 1;
                }
              goto process_partial_block;
            }




          if (feof (stream))
            goto process_partial_block;
        }




      sha512_process_block (buffer, 32768, &ctx);
    }

 process_partial_block:;


  if (sum > 0)
    sha512_process_bytes (buffer, sum, &ctx);


  sha384_finish_ctx (&ctx, resblock);
  free (buffer);
  return 0;
}






void *
sha512_buffer (const char *buffer, size_t len, void *resblock)
{
  struct sha512_ctx ctx;


  sha512_init_ctx (&ctx);


  sha512_process_bytes (buffer, len, &ctx);


  return sha512_finish_ctx (&ctx, resblock);
}

void *
sha384_buffer (const char *buffer, size_t len, void *resblock)
{
  struct sha512_ctx ctx;


  sha384_init_ctx (&ctx);


  sha512_process_bytes (buffer, len, &ctx);


  return sha384_finish_ctx (&ctx, resblock);
}

void
sha512_process_bytes (const void *buffer, size_t len, struct sha512_ctx *ctx)
{


  if (ctx->buflen != 0)
    {
      size_t left_over = ctx->buflen;
      size_t add = 256 - left_over > len ? len : 256 - left_over;

      memcpy (&((char *) ctx->buffer)[left_over], buffer, add);
      ctx->buflen += add;

      if (ctx->buflen > 128)
        {
          sha512_process_block (ctx->buffer, ctx->buflen & ~127, ctx);

          ctx->buflen &= 127;

          memcpy (ctx->buffer,
                  &((char *) ctx->buffer)[(left_over + add) & ~127],
                  ctx->buflen);
        }

      buffer = (const char *) buffer + add;
      len -= add;
    }


  if (len >= 128)
    {


      if (((uintptr_t) (buffer) % _Alignof (u64) != 0))
        while (len > 128)
          {
            sha512_process_block (memcpy (ctx->buffer, buffer, 128), 128, ctx);
            buffer = (const char *) buffer + 128;
            len -= 128;
          }
      else

        {
          sha512_process_block (buffer, len & ~127, ctx);
          buffer = (const char *) buffer + (len & ~127);
          len &= 127;
        }
    }


  if (len > 0)
    {
      size_t left_over = ctx->buflen;

      memcpy (&((char *) ctx->buffer)[left_over], buffer, len);
      left_over += len;
      if (left_over >= 128)
        {
          sha512_process_block (ctx->buffer, 128, ctx);
          left_over -= 128;
          memcpy (ctx->buffer, &ctx->buffer[16], left_over);
        }
      ctx->buflen = left_over;
    }
}





static u64 const sha512_round_constants[80] = {
  ((u64) (((u64) (0x428a2f98) << 32) + (0xd728ae22))), ((u64) (((u64) (0x71374491) << 32) + (0x23ef65cd))),
  ((u64) (((u64) (0xb5c0fbcf) << 32) + (0xec4d3b2f))), ((u64) (((u64) (0xe9b5dba5) << 32) + (0x8189dbbc))),
  ((u64) (((u64) (0x3956c25b) << 32) + (0xf348b538))), ((u64) (((u64) (0x59f111f1) << 32) + (0xb605d019))),
  ((u64) (((u64) (0x923f82a4) << 32) + (0xaf194f9b))), ((u64) (((u64) (0xab1c5ed5) << 32) + (0xda6d8118))),
  ((u64) (((u64) (0xd807aa98) << 32) + (0xa3030242))), ((u64) (((u64) (0x12835b01) << 32) + (0x45706fbe))),
  ((u64) (((u64) (0x243185be) << 32) + (0x4ee4b28c))), ((u64) (((u64) (0x550c7dc3) << 32) + (0xd5ffb4e2))),
  ((u64) (((u64) (0x72be5d74) << 32) + (0xf27b896f))), ((u64) (((u64) (0x80deb1fe) << 32) + (0x3b1696b1))),
  ((u64) (((u64) (0x9bdc06a7) << 32) + (0x25c71235))), ((u64) (((u64) (0xc19bf174) << 32) + (0xcf692694))),
  ((u64) (((u64) (0xe49b69c1) << 32) + (0x9ef14ad2))), ((u64) (((u64) (0xefbe4786) << 32) + (0x384f25e3))),
  ((u64) (((u64) (0x0fc19dc6) << 32) + (0x8b8cd5b5))), ((u64) (((u64) (0x240ca1cc) << 32) + (0x77ac9c65))),
  ((u64) (((u64) (0x2de92c6f) << 32) + (0x592b0275))), ((u64) (((u64) (0x4a7484aa) << 32) + (0x6ea6e483))),
  ((u64) (((u64) (0x5cb0a9dc) << 32) + (0xbd41fbd4))), ((u64) (((u64) (0x76f988da) << 32) + (0x831153b5))),
  ((u64) (((u64) (0x983e5152) << 32) + (0xee66dfab))), ((u64) (((u64) (0xa831c66d) << 32) + (0x2db43210))),
  ((u64) (((u64) (0xb00327c8) << 32) + (0x98fb213f))), ((u64) (((u64) (0xbf597fc7) << 32) + (0xbeef0ee4))),
  ((u64) (((u64) (0xc6e00bf3) << 32) + (0x3da88fc2))), ((u64) (((u64) (0xd5a79147) << 32) + (0x930aa725))),
  ((u64) (((u64) (0x06ca6351) << 32) + (0xe003826f))), ((u64) (((u64) (0x14292967) << 32) + (0x0a0e6e70))),
  ((u64) (((u64) (0x27b70a85) << 32) + (0x46d22ffc))), ((u64) (((u64) (0x2e1b2138) << 32) + (0x5c26c926))),
  ((u64) (((u64) (0x4d2c6dfc) << 32) + (0x5ac42aed))), ((u64) (((u64) (0x53380d13) << 32) + (0x9d95b3df))),
  ((u64) (((u64) (0x650a7354) << 32) + (0x8baf63de))), ((u64) (((u64) (0x766a0abb) << 32) + (0x3c77b2a8))),
  ((u64) (((u64) (0x81c2c92e) << 32) + (0x47edaee6))), ((u64) (((u64) (0x92722c85) << 32) + (0x1482353b))),
  ((u64) (((u64) (0xa2bfe8a1) << 32) + (0x4cf10364))), ((u64) (((u64) (0xa81a664b) << 32) + (0xbc423001))),
  ((u64) (((u64) (0xc24b8b70) << 32) + (0xd0f89791))), ((u64) (((u64) (0xc76c51a3) << 32) + (0x0654be30))),
  ((u64) (((u64) (0xd192e819) << 32) + (0xd6ef5218))), ((u64) (((u64) (0xd6990624) << 32) + (0x5565a910))),
  ((u64) (((u64) (0xf40e3585) << 32) + (0x5771202a))), ((u64) (((u64) (0x106aa070) << 32) + (0x32bbd1b8))),
  ((u64) (((u64) (0x19a4c116) << 32) + (0xb8d2d0c8))), ((u64) (((u64) (0x1e376c08) << 32) + (0x5141ab53))),
  ((u64) (((u64) (0x2748774c) << 32) + (0xdf8eeb99))), ((u64) (((u64) (0x34b0bcb5) << 32) + (0xe19b48a8))),
  ((u64) (((u64) (0x391c0cb3) << 32) + (0xc5c95a63))), ((u64) (((u64) (0x4ed8aa4a) << 32) + (0xe3418acb))),
  ((u64) (((u64) (0x5b9cca4f) << 32) + (0x7763e373))), ((u64) (((u64) (0x682e6ff3) << 32) + (0xd6b2b8a3))),
  ((u64) (((u64) (0x748f82ee) << 32) + (0x5defb2fc))), ((u64) (((u64) (0x78a5636f) << 32) + (0x43172f60))),
  ((u64) (((u64) (0x84c87814) << 32) + (0xa1f0ab72))), ((u64) (((u64) (0x8cc70208) << 32) + (0x1a6439ec))),
  ((u64) (((u64) (0x90befffa) << 32) + (0x23631e28))), ((u64) (((u64) (0xa4506ceb) << 32) + (0xde82bde9))),
  ((u64) (((u64) (0xbef9a3f7) << 32) + (0xb2c67915))), ((u64) (((u64) (0xc67178f2) << 32) + (0xe372532b))),
  ((u64) (((u64) (0xca273ece) << 32) + (0xea26619c))), ((u64) (((u64) (0xd186b8c7) << 32) + (0x21c0c207))),
  ((u64) (((u64) (0xeada7dd6) << 32) + (0xcde0eb1e))), ((u64) (((u64) (0xf57d4f7f) << 32) + (0xee6ed178))),
  ((u64) (((u64) (0x06f067aa) << 32) + (0x72176fba))), ((u64) (((u64) (0x0a637dc5) << 32) + (0xa2c898a6))),
  ((u64) (((u64) (0x113f9804) << 32) + (0xbef90dae))), ((u64) (((u64) (0x1b710b35) << 32) + (0x131c471b))),
  ((u64) (((u64) (0x28db77f5) << 32) + (0x23047d84))), ((u64) (((u64) (0x32caab7b) << 32) + (0x40c72493))),
  ((u64) (((u64) (0x3c9ebe0a) << 32) + (0x15c9bebc))), ((u64) (((u64) (0x431d67c4) << 32) + (0x9c100d4c))),
  ((u64) (((u64) (0x4cc5d4be) << 32) + (0xcb3e42b6))), ((u64) (((u64) (0x597f299c) << 32) + (0xfc657e2a))),
  ((u64) (((u64) (0x5fcb6fab) << 32) + (0x3ad6faec))), ((u64) (((u64) (0x6c44198c) << 32) + (0x4a475817))),
};
# 480 "sha512.c"
void
sha512_process_block (const void *buffer, size_t len, struct sha512_ctx *ctx)
{
  u64 const *words = buffer;
  u64 const *endp = words + len / sizeof (u64);
  u64 x[16];
  u64 a = ctx->state[0];
  u64 b = ctx->state[1];
  u64 c = ctx->state[2];
  u64 d = ctx->state[3];
  u64 e = ctx->state[4];
  u64 f = ctx->state[5];
  u64 g = ctx->state[6];
  u64 h = ctx->state[7];
  u64 lolen = ((u64) (len));




  ctx->total[0] = ((ctx->total[0]) + (lolen));
  ctx->total[1] = ((ctx->total[1]) + (((((u64) (len >> 31 >> 31 >> 2))) + (((u64) (((ctx->total[0]) < (lolen))))))));
# 527 "sha512.c"
  while (words < endp)
    {
      int t;

      for (t = 0; t < 16; t++)
        {
          x[t] = ((((((((*words) << (56))) | (((((*words) & (((u64) (0x0000ff00))))) << (40))))) | (((((((*words) & (((u64) (0x00ff0000))))) << (24))) | (((((*words) & (((u64) (0xff000000))))) << (8))))))) | (((((((((*words) >> (8))) & (((u64) (0xff000000))))) | (((((*words) >> (24))) & (((u64) (0x00ff0000))))))) | (((((((*words) >> (40))) & (((u64) (0x0000ff00))))) | (((*words) >> (56))))))));
          words++;
        }

      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[0]) + (x[ 0])))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[1]) + (x[ 1])))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[2]) + (x[ 2])))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[3]) + (x[ 3])))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[4]) + (x[ 4])))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[5]) + (x[ 5])))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[6]) + (x[ 6])))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[7]) + (x[ 7])))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[8]) + (x[ 8])))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[9]) + (x[ 9])))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[10]) + (x[10])))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[11]) + (x[11])))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[12]) + (x[12])))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[13]) + (x[13])))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[14]) + (x[14])))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[15]) + (x[15])))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[16]) + ((x[(16) & 15] = ((x[(16) & 15]) + (((((((((x[((16) - 2) & 15]) << (45))) | (((x[((16) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((16) - 2) & 15]) << (3))) | (((x[((16) - 2) & 15]) >> (64 - 3))))) ^ (((x[((16) - 2) & 15]) >> (6))))))) + (((x[((16) - 7) & 15]) + (((((((x[((16) - 15) & 15]) << (63))) | (((x[((16) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((16) - 15) & 15]) << (56))) | (((x[((16) - 15) & 15]) >> (64 - 56))))) ^ (((x[((16) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[17]) + ((x[(17) & 15] = ((x[(17) & 15]) + (((((((((x[((17) - 2) & 15]) << (45))) | (((x[((17) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((17) - 2) & 15]) << (3))) | (((x[((17) - 2) & 15]) >> (64 - 3))))) ^ (((x[((17) - 2) & 15]) >> (6))))))) + (((x[((17) - 7) & 15]) + (((((((x[((17) - 15) & 15]) << (63))) | (((x[((17) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((17) - 15) & 15]) << (56))) | (((x[((17) - 15) & 15]) >> (64 - 56))))) ^ (((x[((17) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[18]) + ((x[(18) & 15] = ((x[(18) & 15]) + (((((((((x[((18) - 2) & 15]) << (45))) | (((x[((18) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((18) - 2) & 15]) << (3))) | (((x[((18) - 2) & 15]) >> (64 - 3))))) ^ (((x[((18) - 2) & 15]) >> (6))))))) + (((x[((18) - 7) & 15]) + (((((((x[((18) - 15) & 15]) << (63))) | (((x[((18) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((18) - 15) & 15]) << (56))) | (((x[((18) - 15) & 15]) >> (64 - 56))))) ^ (((x[((18) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[19]) + ((x[(19) & 15] = ((x[(19) & 15]) + (((((((((x[((19) - 2) & 15]) << (45))) | (((x[((19) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((19) - 2) & 15]) << (3))) | (((x[((19) - 2) & 15]) >> (64 - 3))))) ^ (((x[((19) - 2) & 15]) >> (6))))))) + (((x[((19) - 7) & 15]) + (((((((x[((19) - 15) & 15]) << (63))) | (((x[((19) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((19) - 15) & 15]) << (56))) | (((x[((19) - 15) & 15]) >> (64 - 56))))) ^ (((x[((19) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[20]) + ((x[(20) & 15] = ((x[(20) & 15]) + (((((((((x[((20) - 2) & 15]) << (45))) | (((x[((20) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((20) - 2) & 15]) << (3))) | (((x[((20) - 2) & 15]) >> (64 - 3))))) ^ (((x[((20) - 2) & 15]) >> (6))))))) + (((x[((20) - 7) & 15]) + (((((((x[((20) - 15) & 15]) << (63))) | (((x[((20) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((20) - 15) & 15]) << (56))) | (((x[((20) - 15) & 15]) >> (64 - 56))))) ^ (((x[((20) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[21]) + ((x[(21) & 15] = ((x[(21) & 15]) + (((((((((x[((21) - 2) & 15]) << (45))) | (((x[((21) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((21) - 2) & 15]) << (3))) | (((x[((21) - 2) & 15]) >> (64 - 3))))) ^ (((x[((21) - 2) & 15]) >> (6))))))) + (((x[((21) - 7) & 15]) + (((((((x[((21) - 15) & 15]) << (63))) | (((x[((21) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((21) - 15) & 15]) << (56))) | (((x[((21) - 15) & 15]) >> (64 - 56))))) ^ (((x[((21) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[22]) + ((x[(22) & 15] = ((x[(22) & 15]) + (((((((((x[((22) - 2) & 15]) << (45))) | (((x[((22) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((22) - 2) & 15]) << (3))) | (((x[((22) - 2) & 15]) >> (64 - 3))))) ^ (((x[((22) - 2) & 15]) >> (6))))))) + (((x[((22) - 7) & 15]) + (((((((x[((22) - 15) & 15]) << (63))) | (((x[((22) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((22) - 15) & 15]) << (56))) | (((x[((22) - 15) & 15]) >> (64 - 56))))) ^ (((x[((22) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[23]) + ((x[(23) & 15] = ((x[(23) & 15]) + (((((((((x[((23) - 2) & 15]) << (45))) | (((x[((23) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((23) - 2) & 15]) << (3))) | (((x[((23) - 2) & 15]) >> (64 - 3))))) ^ (((x[((23) - 2) & 15]) >> (6))))))) + (((x[((23) - 7) & 15]) + (((((((x[((23) - 15) & 15]) << (63))) | (((x[((23) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((23) - 15) & 15]) << (56))) | (((x[((23) - 15) & 15]) >> (64 - 56))))) ^ (((x[((23) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[24]) + ((x[(24) & 15] = ((x[(24) & 15]) + (((((((((x[((24) - 2) & 15]) << (45))) | (((x[((24) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((24) - 2) & 15]) << (3))) | (((x[((24) - 2) & 15]) >> (64 - 3))))) ^ (((x[((24) - 2) & 15]) >> (6))))))) + (((x[((24) - 7) & 15]) + (((((((x[((24) - 15) & 15]) << (63))) | (((x[((24) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((24) - 15) & 15]) << (56))) | (((x[((24) - 15) & 15]) >> (64 - 56))))) ^ (((x[((24) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[25]) + ((x[(25) & 15] = ((x[(25) & 15]) + (((((((((x[((25) - 2) & 15]) << (45))) | (((x[((25) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((25) - 2) & 15]) << (3))) | (((x[((25) - 2) & 15]) >> (64 - 3))))) ^ (((x[((25) - 2) & 15]) >> (6))))))) + (((x[((25) - 7) & 15]) + (((((((x[((25) - 15) & 15]) << (63))) | (((x[((25) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((25) - 15) & 15]) << (56))) | (((x[((25) - 15) & 15]) >> (64 - 56))))) ^ (((x[((25) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[26]) + ((x[(26) & 15] = ((x[(26) & 15]) + (((((((((x[((26) - 2) & 15]) << (45))) | (((x[((26) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((26) - 2) & 15]) << (3))) | (((x[((26) - 2) & 15]) >> (64 - 3))))) ^ (((x[((26) - 2) & 15]) >> (6))))))) + (((x[((26) - 7) & 15]) + (((((((x[((26) - 15) & 15]) << (63))) | (((x[((26) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((26) - 15) & 15]) << (56))) | (((x[((26) - 15) & 15]) >> (64 - 56))))) ^ (((x[((26) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[27]) + ((x[(27) & 15] = ((x[(27) & 15]) + (((((((((x[((27) - 2) & 15]) << (45))) | (((x[((27) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((27) - 2) & 15]) << (3))) | (((x[((27) - 2) & 15]) >> (64 - 3))))) ^ (((x[((27) - 2) & 15]) >> (6))))))) + (((x[((27) - 7) & 15]) + (((((((x[((27) - 15) & 15]) << (63))) | (((x[((27) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((27) - 15) & 15]) << (56))) | (((x[((27) - 15) & 15]) >> (64 - 56))))) ^ (((x[((27) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[28]) + ((x[(28) & 15] = ((x[(28) & 15]) + (((((((((x[((28) - 2) & 15]) << (45))) | (((x[((28) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((28) - 2) & 15]) << (3))) | (((x[((28) - 2) & 15]) >> (64 - 3))))) ^ (((x[((28) - 2) & 15]) >> (6))))))) + (((x[((28) - 7) & 15]) + (((((((x[((28) - 15) & 15]) << (63))) | (((x[((28) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((28) - 15) & 15]) << (56))) | (((x[((28) - 15) & 15]) >> (64 - 56))))) ^ (((x[((28) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[29]) + ((x[(29) & 15] = ((x[(29) & 15]) + (((((((((x[((29) - 2) & 15]) << (45))) | (((x[((29) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((29) - 2) & 15]) << (3))) | (((x[((29) - 2) & 15]) >> (64 - 3))))) ^ (((x[((29) - 2) & 15]) >> (6))))))) + (((x[((29) - 7) & 15]) + (((((((x[((29) - 15) & 15]) << (63))) | (((x[((29) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((29) - 15) & 15]) << (56))) | (((x[((29) - 15) & 15]) >> (64 - 56))))) ^ (((x[((29) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[30]) + ((x[(30) & 15] = ((x[(30) & 15]) + (((((((((x[((30) - 2) & 15]) << (45))) | (((x[((30) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((30) - 2) & 15]) << (3))) | (((x[((30) - 2) & 15]) >> (64 - 3))))) ^ (((x[((30) - 2) & 15]) >> (6))))))) + (((x[((30) - 7) & 15]) + (((((((x[((30) - 15) & 15]) << (63))) | (((x[((30) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((30) - 15) & 15]) << (56))) | (((x[((30) - 15) & 15]) >> (64 - 56))))) ^ (((x[((30) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[31]) + ((x[(31) & 15] = ((x[(31) & 15]) + (((((((((x[((31) - 2) & 15]) << (45))) | (((x[((31) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((31) - 2) & 15]) << (3))) | (((x[((31) - 2) & 15]) >> (64 - 3))))) ^ (((x[((31) - 2) & 15]) >> (6))))))) + (((x[((31) - 7) & 15]) + (((((((x[((31) - 15) & 15]) << (63))) | (((x[((31) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((31) - 15) & 15]) << (56))) | (((x[((31) - 15) & 15]) >> (64 - 56))))) ^ (((x[((31) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[32]) + ((x[(32) & 15] = ((x[(32) & 15]) + (((((((((x[((32) - 2) & 15]) << (45))) | (((x[((32) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((32) - 2) & 15]) << (3))) | (((x[((32) - 2) & 15]) >> (64 - 3))))) ^ (((x[((32) - 2) & 15]) >> (6))))))) + (((x[((32) - 7) & 15]) + (((((((x[((32) - 15) & 15]) << (63))) | (((x[((32) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((32) - 15) & 15]) << (56))) | (((x[((32) - 15) & 15]) >> (64 - 56))))) ^ (((x[((32) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[33]) + ((x[(33) & 15] = ((x[(33) & 15]) + (((((((((x[((33) - 2) & 15]) << (45))) | (((x[((33) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((33) - 2) & 15]) << (3))) | (((x[((33) - 2) & 15]) >> (64 - 3))))) ^ (((x[((33) - 2) & 15]) >> (6))))))) + (((x[((33) - 7) & 15]) + (((((((x[((33) - 15) & 15]) << (63))) | (((x[((33) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((33) - 15) & 15]) << (56))) | (((x[((33) - 15) & 15]) >> (64 - 56))))) ^ (((x[((33) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[34]) + ((x[(34) & 15] = ((x[(34) & 15]) + (((((((((x[((34) - 2) & 15]) << (45))) | (((x[((34) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((34) - 2) & 15]) << (3))) | (((x[((34) - 2) & 15]) >> (64 - 3))))) ^ (((x[((34) - 2) & 15]) >> (6))))))) + (((x[((34) - 7) & 15]) + (((((((x[((34) - 15) & 15]) << (63))) | (((x[((34) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((34) - 15) & 15]) << (56))) | (((x[((34) - 15) & 15]) >> (64 - 56))))) ^ (((x[((34) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[35]) + ((x[(35) & 15] = ((x[(35) & 15]) + (((((((((x[((35) - 2) & 15]) << (45))) | (((x[((35) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((35) - 2) & 15]) << (3))) | (((x[((35) - 2) & 15]) >> (64 - 3))))) ^ (((x[((35) - 2) & 15]) >> (6))))))) + (((x[((35) - 7) & 15]) + (((((((x[((35) - 15) & 15]) << (63))) | (((x[((35) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((35) - 15) & 15]) << (56))) | (((x[((35) - 15) & 15]) >> (64 - 56))))) ^ (((x[((35) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[36]) + ((x[(36) & 15] = ((x[(36) & 15]) + (((((((((x[((36) - 2) & 15]) << (45))) | (((x[((36) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((36) - 2) & 15]) << (3))) | (((x[((36) - 2) & 15]) >> (64 - 3))))) ^ (((x[((36) - 2) & 15]) >> (6))))))) + (((x[((36) - 7) & 15]) + (((((((x[((36) - 15) & 15]) << (63))) | (((x[((36) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((36) - 15) & 15]) << (56))) | (((x[((36) - 15) & 15]) >> (64 - 56))))) ^ (((x[((36) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[37]) + ((x[(37) & 15] = ((x[(37) & 15]) + (((((((((x[((37) - 2) & 15]) << (45))) | (((x[((37) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((37) - 2) & 15]) << (3))) | (((x[((37) - 2) & 15]) >> (64 - 3))))) ^ (((x[((37) - 2) & 15]) >> (6))))))) + (((x[((37) - 7) & 15]) + (((((((x[((37) - 15) & 15]) << (63))) | (((x[((37) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((37) - 15) & 15]) << (56))) | (((x[((37) - 15) & 15]) >> (64 - 56))))) ^ (((x[((37) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[38]) + ((x[(38) & 15] = ((x[(38) & 15]) + (((((((((x[((38) - 2) & 15]) << (45))) | (((x[((38) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((38) - 2) & 15]) << (3))) | (((x[((38) - 2) & 15]) >> (64 - 3))))) ^ (((x[((38) - 2) & 15]) >> (6))))))) + (((x[((38) - 7) & 15]) + (((((((x[((38) - 15) & 15]) << (63))) | (((x[((38) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((38) - 15) & 15]) << (56))) | (((x[((38) - 15) & 15]) >> (64 - 56))))) ^ (((x[((38) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[39]) + ((x[(39) & 15] = ((x[(39) & 15]) + (((((((((x[((39) - 2) & 15]) << (45))) | (((x[((39) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((39) - 2) & 15]) << (3))) | (((x[((39) - 2) & 15]) >> (64 - 3))))) ^ (((x[((39) - 2) & 15]) >> (6))))))) + (((x[((39) - 7) & 15]) + (((((((x[((39) - 15) & 15]) << (63))) | (((x[((39) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((39) - 15) & 15]) << (56))) | (((x[((39) - 15) & 15]) >> (64 - 56))))) ^ (((x[((39) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[40]) + ((x[(40) & 15] = ((x[(40) & 15]) + (((((((((x[((40) - 2) & 15]) << (45))) | (((x[((40) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((40) - 2) & 15]) << (3))) | (((x[((40) - 2) & 15]) >> (64 - 3))))) ^ (((x[((40) - 2) & 15]) >> (6))))))) + (((x[((40) - 7) & 15]) + (((((((x[((40) - 15) & 15]) << (63))) | (((x[((40) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((40) - 15) & 15]) << (56))) | (((x[((40) - 15) & 15]) >> (64 - 56))))) ^ (((x[((40) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[41]) + ((x[(41) & 15] = ((x[(41) & 15]) + (((((((((x[((41) - 2) & 15]) << (45))) | (((x[((41) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((41) - 2) & 15]) << (3))) | (((x[((41) - 2) & 15]) >> (64 - 3))))) ^ (((x[((41) - 2) & 15]) >> (6))))))) + (((x[((41) - 7) & 15]) + (((((((x[((41) - 15) & 15]) << (63))) | (((x[((41) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((41) - 15) & 15]) << (56))) | (((x[((41) - 15) & 15]) >> (64 - 56))))) ^ (((x[((41) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[42]) + ((x[(42) & 15] = ((x[(42) & 15]) + (((((((((x[((42) - 2) & 15]) << (45))) | (((x[((42) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((42) - 2) & 15]) << (3))) | (((x[((42) - 2) & 15]) >> (64 - 3))))) ^ (((x[((42) - 2) & 15]) >> (6))))))) + (((x[((42) - 7) & 15]) + (((((((x[((42) - 15) & 15]) << (63))) | (((x[((42) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((42) - 15) & 15]) << (56))) | (((x[((42) - 15) & 15]) >> (64 - 56))))) ^ (((x[((42) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[43]) + ((x[(43) & 15] = ((x[(43) & 15]) + (((((((((x[((43) - 2) & 15]) << (45))) | (((x[((43) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((43) - 2) & 15]) << (3))) | (((x[((43) - 2) & 15]) >> (64 - 3))))) ^ (((x[((43) - 2) & 15]) >> (6))))))) + (((x[((43) - 7) & 15]) + (((((((x[((43) - 15) & 15]) << (63))) | (((x[((43) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((43) - 15) & 15]) << (56))) | (((x[((43) - 15) & 15]) >> (64 - 56))))) ^ (((x[((43) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[44]) + ((x[(44) & 15] = ((x[(44) & 15]) + (((((((((x[((44) - 2) & 15]) << (45))) | (((x[((44) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((44) - 2) & 15]) << (3))) | (((x[((44) - 2) & 15]) >> (64 - 3))))) ^ (((x[((44) - 2) & 15]) >> (6))))))) + (((x[((44) - 7) & 15]) + (((((((x[((44) - 15) & 15]) << (63))) | (((x[((44) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((44) - 15) & 15]) << (56))) | (((x[((44) - 15) & 15]) >> (64 - 56))))) ^ (((x[((44) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[45]) + ((x[(45) & 15] = ((x[(45) & 15]) + (((((((((x[((45) - 2) & 15]) << (45))) | (((x[((45) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((45) - 2) & 15]) << (3))) | (((x[((45) - 2) & 15]) >> (64 - 3))))) ^ (((x[((45) - 2) & 15]) >> (6))))))) + (((x[((45) - 7) & 15]) + (((((((x[((45) - 15) & 15]) << (63))) | (((x[((45) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((45) - 15) & 15]) << (56))) | (((x[((45) - 15) & 15]) >> (64 - 56))))) ^ (((x[((45) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[46]) + ((x[(46) & 15] = ((x[(46) & 15]) + (((((((((x[((46) - 2) & 15]) << (45))) | (((x[((46) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((46) - 2) & 15]) << (3))) | (((x[((46) - 2) & 15]) >> (64 - 3))))) ^ (((x[((46) - 2) & 15]) >> (6))))))) + (((x[((46) - 7) & 15]) + (((((((x[((46) - 15) & 15]) << (63))) | (((x[((46) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((46) - 15) & 15]) << (56))) | (((x[((46) - 15) & 15]) >> (64 - 56))))) ^ (((x[((46) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[47]) + ((x[(47) & 15] = ((x[(47) & 15]) + (((((((((x[((47) - 2) & 15]) << (45))) | (((x[((47) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((47) - 2) & 15]) << (3))) | (((x[((47) - 2) & 15]) >> (64 - 3))))) ^ (((x[((47) - 2) & 15]) >> (6))))))) + (((x[((47) - 7) & 15]) + (((((((x[((47) - 15) & 15]) << (63))) | (((x[((47) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((47) - 15) & 15]) << (56))) | (((x[((47) - 15) & 15]) >> (64 - 56))))) ^ (((x[((47) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[48]) + ((x[(48) & 15] = ((x[(48) & 15]) + (((((((((x[((48) - 2) & 15]) << (45))) | (((x[((48) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((48) - 2) & 15]) << (3))) | (((x[((48) - 2) & 15]) >> (64 - 3))))) ^ (((x[((48) - 2) & 15]) >> (6))))))) + (((x[((48) - 7) & 15]) + (((((((x[((48) - 15) & 15]) << (63))) | (((x[((48) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((48) - 15) & 15]) << (56))) | (((x[((48) - 15) & 15]) >> (64 - 56))))) ^ (((x[((48) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[49]) + ((x[(49) & 15] = ((x[(49) & 15]) + (((((((((x[((49) - 2) & 15]) << (45))) | (((x[((49) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((49) - 2) & 15]) << (3))) | (((x[((49) - 2) & 15]) >> (64 - 3))))) ^ (((x[((49) - 2) & 15]) >> (6))))))) + (((x[((49) - 7) & 15]) + (((((((x[((49) - 15) & 15]) << (63))) | (((x[((49) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((49) - 15) & 15]) << (56))) | (((x[((49) - 15) & 15]) >> (64 - 56))))) ^ (((x[((49) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[50]) + ((x[(50) & 15] = ((x[(50) & 15]) + (((((((((x[((50) - 2) & 15]) << (45))) | (((x[((50) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((50) - 2) & 15]) << (3))) | (((x[((50) - 2) & 15]) >> (64 - 3))))) ^ (((x[((50) - 2) & 15]) >> (6))))))) + (((x[((50) - 7) & 15]) + (((((((x[((50) - 15) & 15]) << (63))) | (((x[((50) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((50) - 15) & 15]) << (56))) | (((x[((50) - 15) & 15]) >> (64 - 56))))) ^ (((x[((50) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[51]) + ((x[(51) & 15] = ((x[(51) & 15]) + (((((((((x[((51) - 2) & 15]) << (45))) | (((x[((51) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((51) - 2) & 15]) << (3))) | (((x[((51) - 2) & 15]) >> (64 - 3))))) ^ (((x[((51) - 2) & 15]) >> (6))))))) + (((x[((51) - 7) & 15]) + (((((((x[((51) - 15) & 15]) << (63))) | (((x[((51) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((51) - 15) & 15]) << (56))) | (((x[((51) - 15) & 15]) >> (64 - 56))))) ^ (((x[((51) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[52]) + ((x[(52) & 15] = ((x[(52) & 15]) + (((((((((x[((52) - 2) & 15]) << (45))) | (((x[((52) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((52) - 2) & 15]) << (3))) | (((x[((52) - 2) & 15]) >> (64 - 3))))) ^ (((x[((52) - 2) & 15]) >> (6))))))) + (((x[((52) - 7) & 15]) + (((((((x[((52) - 15) & 15]) << (63))) | (((x[((52) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((52) - 15) & 15]) << (56))) | (((x[((52) - 15) & 15]) >> (64 - 56))))) ^ (((x[((52) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[53]) + ((x[(53) & 15] = ((x[(53) & 15]) + (((((((((x[((53) - 2) & 15]) << (45))) | (((x[((53) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((53) - 2) & 15]) << (3))) | (((x[((53) - 2) & 15]) >> (64 - 3))))) ^ (((x[((53) - 2) & 15]) >> (6))))))) + (((x[((53) - 7) & 15]) + (((((((x[((53) - 15) & 15]) << (63))) | (((x[((53) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((53) - 15) & 15]) << (56))) | (((x[((53) - 15) & 15]) >> (64 - 56))))) ^ (((x[((53) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[54]) + ((x[(54) & 15] = ((x[(54) & 15]) + (((((((((x[((54) - 2) & 15]) << (45))) | (((x[((54) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((54) - 2) & 15]) << (3))) | (((x[((54) - 2) & 15]) >> (64 - 3))))) ^ (((x[((54) - 2) & 15]) >> (6))))))) + (((x[((54) - 7) & 15]) + (((((((x[((54) - 15) & 15]) << (63))) | (((x[((54) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((54) - 15) & 15]) << (56))) | (((x[((54) - 15) & 15]) >> (64 - 56))))) ^ (((x[((54) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[55]) + ((x[(55) & 15] = ((x[(55) & 15]) + (((((((((x[((55) - 2) & 15]) << (45))) | (((x[((55) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((55) - 2) & 15]) << (3))) | (((x[((55) - 2) & 15]) >> (64 - 3))))) ^ (((x[((55) - 2) & 15]) >> (6))))))) + (((x[((55) - 7) & 15]) + (((((((x[((55) - 15) & 15]) << (63))) | (((x[((55) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((55) - 15) & 15]) << (56))) | (((x[((55) - 15) & 15]) >> (64 - 56))))) ^ (((x[((55) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[56]) + ((x[(56) & 15] = ((x[(56) & 15]) + (((((((((x[((56) - 2) & 15]) << (45))) | (((x[((56) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((56) - 2) & 15]) << (3))) | (((x[((56) - 2) & 15]) >> (64 - 3))))) ^ (((x[((56) - 2) & 15]) >> (6))))))) + (((x[((56) - 7) & 15]) + (((((((x[((56) - 15) & 15]) << (63))) | (((x[((56) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((56) - 15) & 15]) << (56))) | (((x[((56) - 15) & 15]) >> (64 - 56))))) ^ (((x[((56) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[57]) + ((x[(57) & 15] = ((x[(57) & 15]) + (((((((((x[((57) - 2) & 15]) << (45))) | (((x[((57) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((57) - 2) & 15]) << (3))) | (((x[((57) - 2) & 15]) >> (64 - 3))))) ^ (((x[((57) - 2) & 15]) >> (6))))))) + (((x[((57) - 7) & 15]) + (((((((x[((57) - 15) & 15]) << (63))) | (((x[((57) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((57) - 15) & 15]) << (56))) | (((x[((57) - 15) & 15]) >> (64 - 56))))) ^ (((x[((57) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[58]) + ((x[(58) & 15] = ((x[(58) & 15]) + (((((((((x[((58) - 2) & 15]) << (45))) | (((x[((58) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((58) - 2) & 15]) << (3))) | (((x[((58) - 2) & 15]) >> (64 - 3))))) ^ (((x[((58) - 2) & 15]) >> (6))))))) + (((x[((58) - 7) & 15]) + (((((((x[((58) - 15) & 15]) << (63))) | (((x[((58) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((58) - 15) & 15]) << (56))) | (((x[((58) - 15) & 15]) >> (64 - 56))))) ^ (((x[((58) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[59]) + ((x[(59) & 15] = ((x[(59) & 15]) + (((((((((x[((59) - 2) & 15]) << (45))) | (((x[((59) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((59) - 2) & 15]) << (3))) | (((x[((59) - 2) & 15]) >> (64 - 3))))) ^ (((x[((59) - 2) & 15]) >> (6))))))) + (((x[((59) - 7) & 15]) + (((((((x[((59) - 15) & 15]) << (63))) | (((x[((59) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((59) - 15) & 15]) << (56))) | (((x[((59) - 15) & 15]) >> (64 - 56))))) ^ (((x[((59) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[60]) + ((x[(60) & 15] = ((x[(60) & 15]) + (((((((((x[((60) - 2) & 15]) << (45))) | (((x[((60) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((60) - 2) & 15]) << (3))) | (((x[((60) - 2) & 15]) >> (64 - 3))))) ^ (((x[((60) - 2) & 15]) >> (6))))))) + (((x[((60) - 7) & 15]) + (((((((x[((60) - 15) & 15]) << (63))) | (((x[((60) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((60) - 15) & 15]) << (56))) | (((x[((60) - 15) & 15]) >> (64 - 56))))) ^ (((x[((60) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[61]) + ((x[(61) & 15] = ((x[(61) & 15]) + (((((((((x[((61) - 2) & 15]) << (45))) | (((x[((61) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((61) - 2) & 15]) << (3))) | (((x[((61) - 2) & 15]) >> (64 - 3))))) ^ (((x[((61) - 2) & 15]) >> (6))))))) + (((x[((61) - 7) & 15]) + (((((((x[((61) - 15) & 15]) << (63))) | (((x[((61) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((61) - 15) & 15]) << (56))) | (((x[((61) - 15) & 15]) >> (64 - 56))))) ^ (((x[((61) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[62]) + ((x[(62) & 15] = ((x[(62) & 15]) + (((((((((x[((62) - 2) & 15]) << (45))) | (((x[((62) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((62) - 2) & 15]) << (3))) | (((x[((62) - 2) & 15]) >> (64 - 3))))) ^ (((x[((62) - 2) & 15]) >> (6))))))) + (((x[((62) - 7) & 15]) + (((((((x[((62) - 15) & 15]) << (63))) | (((x[((62) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((62) - 15) & 15]) << (56))) | (((x[((62) - 15) & 15]) >> (64 - 56))))) ^ (((x[((62) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[63]) + ((x[(63) & 15] = ((x[(63) & 15]) + (((((((((x[((63) - 2) & 15]) << (45))) | (((x[((63) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((63) - 2) & 15]) << (3))) | (((x[((63) - 2) & 15]) >> (64 - 3))))) ^ (((x[((63) - 2) & 15]) >> (6))))))) + (((x[((63) - 7) & 15]) + (((((((x[((63) - 15) & 15]) << (63))) | (((x[((63) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((63) - 15) & 15]) << (56))) | (((x[((63) - 15) & 15]) >> (64 - 56))))) ^ (((x[((63) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[64]) + ((x[(64) & 15] = ((x[(64) & 15]) + (((((((((x[((64) - 2) & 15]) << (45))) | (((x[((64) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((64) - 2) & 15]) << (3))) | (((x[((64) - 2) & 15]) >> (64 - 3))))) ^ (((x[((64) - 2) & 15]) >> (6))))))) + (((x[((64) - 7) & 15]) + (((((((x[((64) - 15) & 15]) << (63))) | (((x[((64) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((64) - 15) & 15]) << (56))) | (((x[((64) - 15) & 15]) >> (64 - 56))))) ^ (((x[((64) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[65]) + ((x[(65) & 15] = ((x[(65) & 15]) + (((((((((x[((65) - 2) & 15]) << (45))) | (((x[((65) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((65) - 2) & 15]) << (3))) | (((x[((65) - 2) & 15]) >> (64 - 3))))) ^ (((x[((65) - 2) & 15]) >> (6))))))) + (((x[((65) - 7) & 15]) + (((((((x[((65) - 15) & 15]) << (63))) | (((x[((65) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((65) - 15) & 15]) << (56))) | (((x[((65) - 15) & 15]) >> (64 - 56))))) ^ (((x[((65) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[66]) + ((x[(66) & 15] = ((x[(66) & 15]) + (((((((((x[((66) - 2) & 15]) << (45))) | (((x[((66) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((66) - 2) & 15]) << (3))) | (((x[((66) - 2) & 15]) >> (64 - 3))))) ^ (((x[((66) - 2) & 15]) >> (6))))))) + (((x[((66) - 7) & 15]) + (((((((x[((66) - 15) & 15]) << (63))) | (((x[((66) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((66) - 15) & 15]) << (56))) | (((x[((66) - 15) & 15]) >> (64 - 56))))) ^ (((x[((66) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[67]) + ((x[(67) & 15] = ((x[(67) & 15]) + (((((((((x[((67) - 2) & 15]) << (45))) | (((x[((67) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((67) - 2) & 15]) << (3))) | (((x[((67) - 2) & 15]) >> (64 - 3))))) ^ (((x[((67) - 2) & 15]) >> (6))))))) + (((x[((67) - 7) & 15]) + (((((((x[((67) - 15) & 15]) << (63))) | (((x[((67) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((67) - 15) & 15]) << (56))) | (((x[((67) - 15) & 15]) >> (64 - 56))))) ^ (((x[((67) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[68]) + ((x[(68) & 15] = ((x[(68) & 15]) + (((((((((x[((68) - 2) & 15]) << (45))) | (((x[((68) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((68) - 2) & 15]) << (3))) | (((x[((68) - 2) & 15]) >> (64 - 3))))) ^ (((x[((68) - 2) & 15]) >> (6))))))) + (((x[((68) - 7) & 15]) + (((((((x[((68) - 15) & 15]) << (63))) | (((x[((68) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((68) - 15) & 15]) << (56))) | (((x[((68) - 15) & 15]) >> (64 - 56))))) ^ (((x[((68) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[69]) + ((x[(69) & 15] = ((x[(69) & 15]) + (((((((((x[((69) - 2) & 15]) << (45))) | (((x[((69) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((69) - 2) & 15]) << (3))) | (((x[((69) - 2) & 15]) >> (64 - 3))))) ^ (((x[((69) - 2) & 15]) >> (6))))))) + (((x[((69) - 7) & 15]) + (((((((x[((69) - 15) & 15]) << (63))) | (((x[((69) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((69) - 15) & 15]) << (56))) | (((x[((69) - 15) & 15]) >> (64 - 56))))) ^ (((x[((69) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[70]) + ((x[(70) & 15] = ((x[(70) & 15]) + (((((((((x[((70) - 2) & 15]) << (45))) | (((x[((70) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((70) - 2) & 15]) << (3))) | (((x[((70) - 2) & 15]) >> (64 - 3))))) ^ (((x[((70) - 2) & 15]) >> (6))))))) + (((x[((70) - 7) & 15]) + (((((((x[((70) - 15) & 15]) << (63))) | (((x[((70) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((70) - 15) & 15]) << (56))) | (((x[((70) - 15) & 15]) >> (64 - 56))))) ^ (((x[((70) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[71]) + ((x[(71) & 15] = ((x[(71) & 15]) + (((((((((x[((71) - 2) & 15]) << (45))) | (((x[((71) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((71) - 2) & 15]) << (3))) | (((x[((71) - 2) & 15]) >> (64 - 3))))) ^ (((x[((71) - 2) & 15]) >> (6))))))) + (((x[((71) - 7) & 15]) + (((((((x[((71) - 15) & 15]) << (63))) | (((x[((71) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((71) - 15) & 15]) << (56))) | (((x[((71) - 15) & 15]) >> (64 - 56))))) ^ (((x[((71) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((a) << (36))) | (((a) >> (64 - 36))))) ^ (((((((a) << (30))) | (((a) >> (64 - 30))))) ^ (((((a) << (25))) | (((a) >> (64 - 25))))))))) + (((((a) & (b))) | (((c) & (((a) | (b)))))))); u64 t1 = ((h) + (((((((((e) << (50))) | (((e) >> (64 - 50))))) ^ (((((((e) << (46))) | (((e) >> (64 - 46))))) ^ (((((e) << (23))) | (((e) >> (64 - 23))))))))) + (((((g) ^ (((e) & (((f) ^ (g))))))) + (((sha512_round_constants[72]) + ((x[(72) & 15] = ((x[(72) & 15]) + (((((((((x[((72) - 2) & 15]) << (45))) | (((x[((72) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((72) - 2) & 15]) << (3))) | (((x[((72) - 2) & 15]) >> (64 - 3))))) ^ (((x[((72) - 2) & 15]) >> (6))))))) + (((x[((72) - 7) & 15]) + (((((((x[((72) - 15) & 15]) << (63))) | (((x[((72) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((72) - 15) & 15]) << (56))) | (((x[((72) - 15) & 15]) >> (64 - 56))))) ^ (((x[((72) - 15) & 15]) >> (7))))))))))))))))))))); d = ((d) + (t1)); h = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((h) << (36))) | (((h) >> (64 - 36))))) ^ (((((((h) << (30))) | (((h) >> (64 - 30))))) ^ (((((h) << (25))) | (((h) >> (64 - 25))))))))) + (((((h) & (a))) | (((b) & (((h) | (a)))))))); u64 t1 = ((g) + (((((((((d) << (50))) | (((d) >> (64 - 50))))) ^ (((((((d) << (46))) | (((d) >> (64 - 46))))) ^ (((((d) << (23))) | (((d) >> (64 - 23))))))))) + (((((f) ^ (((d) & (((e) ^ (f))))))) + (((sha512_round_constants[73]) + ((x[(73) & 15] = ((x[(73) & 15]) + (((((((((x[((73) - 2) & 15]) << (45))) | (((x[((73) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((73) - 2) & 15]) << (3))) | (((x[((73) - 2) & 15]) >> (64 - 3))))) ^ (((x[((73) - 2) & 15]) >> (6))))))) + (((x[((73) - 7) & 15]) + (((((((x[((73) - 15) & 15]) << (63))) | (((x[((73) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((73) - 15) & 15]) << (56))) | (((x[((73) - 15) & 15]) >> (64 - 56))))) ^ (((x[((73) - 15) & 15]) >> (7))))))))))))))))))))); c = ((c) + (t1)); g = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((g) << (36))) | (((g) >> (64 - 36))))) ^ (((((((g) << (30))) | (((g) >> (64 - 30))))) ^ (((((g) << (25))) | (((g) >> (64 - 25))))))))) + (((((g) & (h))) | (((a) & (((g) | (h)))))))); u64 t1 = ((f) + (((((((((c) << (50))) | (((c) >> (64 - 50))))) ^ (((((((c) << (46))) | (((c) >> (64 - 46))))) ^ (((((c) << (23))) | (((c) >> (64 - 23))))))))) + (((((e) ^ (((c) & (((d) ^ (e))))))) + (((sha512_round_constants[74]) + ((x[(74) & 15] = ((x[(74) & 15]) + (((((((((x[((74) - 2) & 15]) << (45))) | (((x[((74) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((74) - 2) & 15]) << (3))) | (((x[((74) - 2) & 15]) >> (64 - 3))))) ^ (((x[((74) - 2) & 15]) >> (6))))))) + (((x[((74) - 7) & 15]) + (((((((x[((74) - 15) & 15]) << (63))) | (((x[((74) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((74) - 15) & 15]) << (56))) | (((x[((74) - 15) & 15]) >> (64 - 56))))) ^ (((x[((74) - 15) & 15]) >> (7))))))))))))))))))))); b = ((b) + (t1)); f = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((f) << (36))) | (((f) >> (64 - 36))))) ^ (((((((f) << (30))) | (((f) >> (64 - 30))))) ^ (((((f) << (25))) | (((f) >> (64 - 25))))))))) + (((((f) & (g))) | (((h) & (((f) | (g)))))))); u64 t1 = ((e) + (((((((((b) << (50))) | (((b) >> (64 - 50))))) ^ (((((((b) << (46))) | (((b) >> (64 - 46))))) ^ (((((b) << (23))) | (((b) >> (64 - 23))))))))) + (((((d) ^ (((b) & (((c) ^ (d))))))) + (((sha512_round_constants[75]) + ((x[(75) & 15] = ((x[(75) & 15]) + (((((((((x[((75) - 2) & 15]) << (45))) | (((x[((75) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((75) - 2) & 15]) << (3))) | (((x[((75) - 2) & 15]) >> (64 - 3))))) ^ (((x[((75) - 2) & 15]) >> (6))))))) + (((x[((75) - 7) & 15]) + (((((((x[((75) - 15) & 15]) << (63))) | (((x[((75) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((75) - 15) & 15]) << (56))) | (((x[((75) - 15) & 15]) >> (64 - 56))))) ^ (((x[((75) - 15) & 15]) >> (7))))))))))))))))))))); a = ((a) + (t1)); e = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((e) << (36))) | (((e) >> (64 - 36))))) ^ (((((((e) << (30))) | (((e) >> (64 - 30))))) ^ (((((e) << (25))) | (((e) >> (64 - 25))))))))) + (((((e) & (f))) | (((g) & (((e) | (f)))))))); u64 t1 = ((d) + (((((((((a) << (50))) | (((a) >> (64 - 50))))) ^ (((((((a) << (46))) | (((a) >> (64 - 46))))) ^ (((((a) << (23))) | (((a) >> (64 - 23))))))))) + (((((c) ^ (((a) & (((b) ^ (c))))))) + (((sha512_round_constants[76]) + ((x[(76) & 15] = ((x[(76) & 15]) + (((((((((x[((76) - 2) & 15]) << (45))) | (((x[((76) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((76) - 2) & 15]) << (3))) | (((x[((76) - 2) & 15]) >> (64 - 3))))) ^ (((x[((76) - 2) & 15]) >> (6))))))) + (((x[((76) - 7) & 15]) + (((((((x[((76) - 15) & 15]) << (63))) | (((x[((76) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((76) - 15) & 15]) << (56))) | (((x[((76) - 15) & 15]) >> (64 - 56))))) ^ (((x[((76) - 15) & 15]) >> (7))))))))))))))))))))); h = ((h) + (t1)); d = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((d) << (36))) | (((d) >> (64 - 36))))) ^ (((((((d) << (30))) | (((d) >> (64 - 30))))) ^ (((((d) << (25))) | (((d) >> (64 - 25))))))))) + (((((d) & (e))) | (((f) & (((d) | (e)))))))); u64 t1 = ((c) + (((((((((h) << (50))) | (((h) >> (64 - 50))))) ^ (((((((h) << (46))) | (((h) >> (64 - 46))))) ^ (((((h) << (23))) | (((h) >> (64 - 23))))))))) + (((((b) ^ (((h) & (((a) ^ (b))))))) + (((sha512_round_constants[77]) + ((x[(77) & 15] = ((x[(77) & 15]) + (((((((((x[((77) - 2) & 15]) << (45))) | (((x[((77) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((77) - 2) & 15]) << (3))) | (((x[((77) - 2) & 15]) >> (64 - 3))))) ^ (((x[((77) - 2) & 15]) >> (6))))))) + (((x[((77) - 7) & 15]) + (((((((x[((77) - 15) & 15]) << (63))) | (((x[((77) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((77) - 15) & 15]) << (56))) | (((x[((77) - 15) & 15]) >> (64 - 56))))) ^ (((x[((77) - 15) & 15]) >> (7))))))))))))))))))))); g = ((g) + (t1)); c = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((c) << (36))) | (((c) >> (64 - 36))))) ^ (((((((c) << (30))) | (((c) >> (64 - 30))))) ^ (((((c) << (25))) | (((c) >> (64 - 25))))))))) + (((((c) & (d))) | (((e) & (((c) | (d)))))))); u64 t1 = ((b) + (((((((((g) << (50))) | (((g) >> (64 - 50))))) ^ (((((((g) << (46))) | (((g) >> (64 - 46))))) ^ (((((g) << (23))) | (((g) >> (64 - 23))))))))) + (((((a) ^ (((g) & (((h) ^ (a))))))) + (((sha512_round_constants[78]) + ((x[(78) & 15] = ((x[(78) & 15]) + (((((((((x[((78) - 2) & 15]) << (45))) | (((x[((78) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((78) - 2) & 15]) << (3))) | (((x[((78) - 2) & 15]) >> (64 - 3))))) ^ (((x[((78) - 2) & 15]) >> (6))))))) + (((x[((78) - 7) & 15]) + (((((((x[((78) - 15) & 15]) << (63))) | (((x[((78) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((78) - 15) & 15]) << (56))) | (((x[((78) - 15) & 15]) >> (64 - 56))))) ^ (((x[((78) - 15) & 15]) >> (7))))))))))))))))))))); f = ((f) + (t1)); b = ((t0) + (t1)); } while (0);
      do { u64 t0 = ((((((((b) << (36))) | (((b) >> (64 - 36))))) ^ (((((((b) << (30))) | (((b) >> (64 - 30))))) ^ (((((b) << (25))) | (((b) >> (64 - 25))))))))) + (((((b) & (c))) | (((d) & (((b) | (c)))))))); u64 t1 = ((a) + (((((((((f) << (50))) | (((f) >> (64 - 50))))) ^ (((((((f) << (46))) | (((f) >> (64 - 46))))) ^ (((((f) << (23))) | (((f) >> (64 - 23))))))))) + (((((h) ^ (((f) & (((g) ^ (h))))))) + (((sha512_round_constants[79]) + ((x[(79) & 15] = ((x[(79) & 15]) + (((((((((x[((79) - 2) & 15]) << (45))) | (((x[((79) - 2) & 15]) >> (64 - 45))))) ^ (((((((x[((79) - 2) & 15]) << (3))) | (((x[((79) - 2) & 15]) >> (64 - 3))))) ^ (((x[((79) - 2) & 15]) >> (6))))))) + (((x[((79) - 7) & 15]) + (((((((x[((79) - 15) & 15]) << (63))) | (((x[((79) - 15) & 15]) >> (64 - 63))))) ^ (((((((x[((79) - 15) & 15]) << (56))) | (((x[((79) - 15) & 15]) >> (64 - 56))))) ^ (((x[((79) - 15) & 15]) >> (7))))))))))))))))))))); e = ((e) + (t1)); a = ((t0) + (t1)); } while (0);

      a = ctx->state[0] = ((ctx->state[0]) + (a));
      b = ctx->state[1] = ((ctx->state[1]) + (b));
      c = ctx->state[2] = ((ctx->state[2]) + (c));
      d = ctx->state[3] = ((ctx->state[3]) + (d));
      e = ctx->state[4] = ((ctx->state[4]) + (e));
      f = ctx->state[5] = ((ctx->state[5]) + (f));
      g = ctx->state[6] = ((ctx->state[6]) + (g));
      h = ctx->state[7] = ((ctx->state[7]) + (h));
    }
}
