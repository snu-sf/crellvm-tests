# 1 "sha256.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "sha256.c" 2
# 23 "sha256.c"
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
# 24 "sha256.c" 2




# 1 "./sha256.h" 1
# 21 "./sha256.h"
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
# 22 "./sha256.h" 2
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
# 23 "./sha256.h" 2
# 32 "./sha256.h"
enum { SHA224_DIGEST_SIZE = 224 / 8 };
enum { SHA256_DIGEST_SIZE = 256 / 8 };
# 42 "./sha256.h"
struct sha256_ctx
{
  uint32_t state[8];

  uint32_t total[2];
  size_t buflen;
  uint32_t buffer[32];
};


extern void sha256_init_ctx (struct sha256_ctx *ctx);
extern void sha224_init_ctx (struct sha256_ctx *ctx);





extern void sha256_process_block (const void *buffer, size_t len,
                                  struct sha256_ctx *ctx);





extern void sha256_process_bytes (const void *buffer, size_t len,
                                  struct sha256_ctx *ctx);





extern void *sha256_finish_ctx (struct sha256_ctx *ctx, void *resbuf);
extern void *sha224_finish_ctx (struct sha256_ctx *ctx, void *resbuf);





extern void *sha256_read_ctx (const struct sha256_ctx *ctx, void *resbuf);
extern void *sha224_read_ctx (const struct sha256_ctx *ctx, void *resbuf);






extern void *sha256_buffer (const char *buffer, size_t len, void *resblock);
extern void *sha224_buffer (const char *buffer, size_t len, void *resblock);





extern int sha256_stream (FILE *stream, void *resblock);
extern int sha224_stream (FILE *stream, void *resblock);
# 29 "sha256.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdalign.h" 1 3
# 31 "sha256.c" 2

# 1 "./stdlib.h" 1
# 21 "./stdlib.h" 3
# 33 "sha256.c" 2
# 1 "./string.h" 1
# 21 "./string.h" 3
# 34 "sha256.c" 2
# 54 "sha256.c"
static const unsigned char fillbuf[64] = { 0x80, 0 };







void
sha256_init_ctx (struct sha256_ctx *ctx)
{
  ctx->state[0] = 0x6a09e667UL;
  ctx->state[1] = 0xbb67ae85UL;
  ctx->state[2] = 0x3c6ef372UL;
  ctx->state[3] = 0xa54ff53aUL;
  ctx->state[4] = 0x510e527fUL;
  ctx->state[5] = 0x9b05688cUL;
  ctx->state[6] = 0x1f83d9abUL;
  ctx->state[7] = 0x5be0cd19UL;

  ctx->total[0] = ctx->total[1] = 0;
  ctx->buflen = 0;
}

void
sha224_init_ctx (struct sha256_ctx *ctx)
{
  ctx->state[0] = 0xc1059ed8UL;
  ctx->state[1] = 0x367cd507UL;
  ctx->state[2] = 0x3070dd17UL;
  ctx->state[3] = 0xf70e5939UL;
  ctx->state[4] = 0xffc00b31UL;
  ctx->state[5] = 0x68581511UL;
  ctx->state[6] = 0x64f98fa7UL;
  ctx->state[7] = 0xbefa4fa4UL;

  ctx->total[0] = ctx->total[1] = 0;
  ctx->buflen = 0;
}




static void
set_uint32 (char *cp, uint32_t v)
{
  memcpy (cp, &v, sizeof v);
}



void *
sha256_read_ctx (const struct sha256_ctx *ctx, void *resbuf)
{
  int i;
  char *r = resbuf;

  for (i = 0; i < 8; i++)
    set_uint32 (r + i * sizeof ctx->state[0], (((ctx->state[i]) << 24) | (((ctx->state[i]) & 0xff00) << 8) | (((ctx->state[i]) >> 8) & 0xff00) | ((ctx->state[i]) >> 24)));

  return resbuf;
}

void *
sha224_read_ctx (const struct sha256_ctx *ctx, void *resbuf)
{
  int i;
  char *r = resbuf;

  for (i = 0; i < 7; i++)
    set_uint32 (r + i * sizeof ctx->state[0], (((ctx->state[i]) << 24) | (((ctx->state[i]) & 0xff00) << 8) | (((ctx->state[i]) >> 8) & 0xff00) | ((ctx->state[i]) >> 24)));

  return resbuf;
}



static void
sha256_conclude_ctx (struct sha256_ctx *ctx)
{

  size_t bytes = ctx->buflen;
  size_t size = (bytes < 56) ? 64 / 4 : 64 * 2 / 4;


  ctx->total[0] += bytes;
  if (ctx->total[0] < bytes)
    ++ctx->total[1];




  set_uint32 ((char *) &ctx->buffer[size - 2],
              ((((ctx->total[1] << 3) | (ctx->total[0] >> 29)) << 24) | ((((ctx->total[1] << 3) | (ctx->total[0] >> 29)) & 0xff00) << 8) | ((((ctx->total[1] << 3) | (ctx->total[0] >> 29)) >> 8) & 0xff00) | (((ctx->total[1] << 3) | (ctx->total[0] >> 29)) >> 24)));
  set_uint32 ((char *) &ctx->buffer[size - 1],
              (((ctx->total[0] << 3) << 24) | (((ctx->total[0] << 3) & 0xff00) << 8) | (((ctx->total[0] << 3) >> 8) & 0xff00) | ((ctx->total[0] << 3) >> 24)));

  memcpy (&((char *) ctx->buffer)[bytes], fillbuf, (size - 2) * 4 - bytes);


  sha256_process_block (ctx->buffer, size * 4, ctx);
}

void *
sha256_finish_ctx (struct sha256_ctx *ctx, void *resbuf)
{
  sha256_conclude_ctx (ctx);
  return sha256_read_ctx (ctx, resbuf);
}

void *
sha224_finish_ctx (struct sha256_ctx *ctx, void *resbuf)
{
  sha256_conclude_ctx (ctx);
  return sha224_read_ctx (ctx, resbuf);
}





int
sha256_stream (FILE *stream, void *resblock)
{
  struct sha256_ctx ctx;
  size_t sum;

  char *buffer = malloc (32768 + 72);
  if (!buffer)
    return 1;


  sha256_init_ctx (&ctx);


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




      sha256_process_block (buffer, 32768, &ctx);
    }

 process_partial_block:;


  if (sum > 0)
    sha256_process_bytes (buffer, sum, &ctx);


  sha256_finish_ctx (&ctx, resblock);
  free (buffer);
  return 0;
}


int
sha224_stream (FILE *stream, void *resblock)
{
  struct sha256_ctx ctx;
  size_t sum;

  char *buffer = malloc (32768 + 72);
  if (!buffer)
    return 1;


  sha224_init_ctx (&ctx);


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




      sha256_process_block (buffer, 32768, &ctx);
    }

 process_partial_block:;


  if (sum > 0)
    sha256_process_bytes (buffer, sum, &ctx);


  sha224_finish_ctx (&ctx, resblock);
  free (buffer);
  return 0;
}






void *
sha256_buffer (const char *buffer, size_t len, void *resblock)
{
  struct sha256_ctx ctx;


  sha256_init_ctx (&ctx);


  sha256_process_bytes (buffer, len, &ctx);


  return sha256_finish_ctx (&ctx, resblock);
}

void *
sha224_buffer (const char *buffer, size_t len, void *resblock)
{
  struct sha256_ctx ctx;


  sha224_init_ctx (&ctx);


  sha256_process_bytes (buffer, len, &ctx);


  return sha224_finish_ctx (&ctx, resblock);
}

void
sha256_process_bytes (const void *buffer, size_t len, struct sha256_ctx *ctx)
{


  if (ctx->buflen != 0)
    {
      size_t left_over = ctx->buflen;
      size_t add = 128 - left_over > len ? len : 128 - left_over;

      memcpy (&((char *) ctx->buffer)[left_over], buffer, add);
      ctx->buflen += add;

      if (ctx->buflen > 64)
        {
          sha256_process_block (ctx->buffer, ctx->buflen & ~63, ctx);

          ctx->buflen &= 63;

          memcpy (ctx->buffer,
                  &((char *) ctx->buffer)[(left_over + add) & ~63],
                  ctx->buflen);
        }

      buffer = (const char *) buffer + add;
      len -= add;
    }


  if (len >= 64)
    {


      if (((uintptr_t) (buffer) % _Alignof (uint32_t) != 0))
        while (len > 64)
          {
            sha256_process_block (memcpy (ctx->buffer, buffer, 64), 64, ctx);
            buffer = (const char *) buffer + 64;
            len -= 64;
          }
      else

        {
          sha256_process_block (buffer, len & ~63, ctx);
          buffer = (const char *) buffer + (len & ~63);
          len &= 63;
        }
    }


  if (len > 0)
    {
      size_t left_over = ctx->buflen;

      memcpy (&((char *) ctx->buffer)[left_over], buffer, len);
      left_over += len;
      if (left_over >= 64)
        {
          sha256_process_block (ctx->buffer, 64, ctx);
          left_over -= 64;
          memcpy (ctx->buffer, &ctx->buffer[16], left_over);
        }
      ctx->buflen = left_over;
    }
}





static const uint32_t sha256_round_constants[64] = {
  0x428a2f98UL, 0x71374491UL, 0xb5c0fbcfUL, 0xe9b5dba5UL,
  0x3956c25bUL, 0x59f111f1UL, 0x923f82a4UL, 0xab1c5ed5UL,
  0xd807aa98UL, 0x12835b01UL, 0x243185beUL, 0x550c7dc3UL,
  0x72be5d74UL, 0x80deb1feUL, 0x9bdc06a7UL, 0xc19bf174UL,
  0xe49b69c1UL, 0xefbe4786UL, 0x0fc19dc6UL, 0x240ca1ccUL,
  0x2de92c6fUL, 0x4a7484aaUL, 0x5cb0a9dcUL, 0x76f988daUL,
  0x983e5152UL, 0xa831c66dUL, 0xb00327c8UL, 0xbf597fc7UL,
  0xc6e00bf3UL, 0xd5a79147UL, 0x06ca6351UL, 0x14292967UL,
  0x27b70a85UL, 0x2e1b2138UL, 0x4d2c6dfcUL, 0x53380d13UL,
  0x650a7354UL, 0x766a0abbUL, 0x81c2c92eUL, 0x92722c85UL,
  0xa2bfe8a1UL, 0xa81a664bUL, 0xc24b8b70UL, 0xc76c51a3UL,
  0xd192e819UL, 0xd6990624UL, 0xf40e3585UL, 0x106aa070UL,
  0x19a4c116UL, 0x1e376c08UL, 0x2748774cUL, 0x34b0bcb5UL,
  0x391c0cb3UL, 0x4ed8aa4aUL, 0x5b9cca4fUL, 0x682e6ff3UL,
  0x748f82eeUL, 0x78a5636fUL, 0x84c87814UL, 0x8cc70208UL,
  0x90befffaUL, 0xa4506cebUL, 0xbef9a3f7UL, 0xc67178f2UL,
};
# 448 "sha256.c"
void
sha256_process_block (const void *buffer, size_t len, struct sha256_ctx *ctx)
{
  const uint32_t *words = buffer;
  size_t nwords = len / sizeof (uint32_t);
  const uint32_t *endp = words + nwords;
  uint32_t x[16];
  uint32_t a = ctx->state[0];
  uint32_t b = ctx->state[1];
  uint32_t c = ctx->state[2];
  uint32_t d = ctx->state[3];
  uint32_t e = ctx->state[4];
  uint32_t f = ctx->state[5];
  uint32_t g = ctx->state[6];
  uint32_t h = ctx->state[7];
  uint32_t lolen = len;




  ctx->total[0] += lolen;
  ctx->total[1] += (len >> 31 >> 1) + (ctx->total[0] < lolen);
# 489 "sha256.c"
  while (words < endp)
    {
      uint32_t tm;
      uint32_t t0, t1;
      int t;

      for (t = 0; t < 16; t++)
        {
          x[t] = (((*words) << 24) | (((*words) & 0xff00) << 8) | (((*words) >> 8) & 0xff00) | ((*words) >> 24));
          words++;
        }

      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[0] + x[ 0]; d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[1] + x[ 1]; c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[2] + x[ 2]; b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[3] + x[ 3]; a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[4] + x[ 4]; h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[5] + x[ 5]; g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[6] + x[ 6]; f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[7] + x[ 7]; e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[8] + x[ 8]; d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[9] + x[ 9]; c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[10] + x[10]; b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[11] + x[11]; a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[12] + x[12]; h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[13] + x[13]; g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[14] + x[14]; f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[15] + x[15]; e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[16] + ( tm = ((((x[(16 -2)&0x0f]) << (15)) | ((x[(16 -2)&0x0f]) >> (32 - (15))))^(((x[(16 -2)&0x0f]) << (13)) | ((x[(16 -2)&0x0f]) >> (32 - (13))))^(x[(16 -2)&0x0f]>>10)) + x[(16 -7)&0x0f] + ((((x[(16 -15)&0x0f]) << (25)) | ((x[(16 -15)&0x0f]) >> (32 - (25))))^(((x[(16 -15)&0x0f]) << (14)) | ((x[(16 -15)&0x0f]) >> (32 - (14))))^(x[(16 -15)&0x0f]>>3)) + x[16&0x0f] , x[16&0x0f] = tm ); d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[17] + ( tm = ((((x[(17 -2)&0x0f]) << (15)) | ((x[(17 -2)&0x0f]) >> (32 - (15))))^(((x[(17 -2)&0x0f]) << (13)) | ((x[(17 -2)&0x0f]) >> (32 - (13))))^(x[(17 -2)&0x0f]>>10)) + x[(17 -7)&0x0f] + ((((x[(17 -15)&0x0f]) << (25)) | ((x[(17 -15)&0x0f]) >> (32 - (25))))^(((x[(17 -15)&0x0f]) << (14)) | ((x[(17 -15)&0x0f]) >> (32 - (14))))^(x[(17 -15)&0x0f]>>3)) + x[17&0x0f] , x[17&0x0f] = tm ); c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[18] + ( tm = ((((x[(18 -2)&0x0f]) << (15)) | ((x[(18 -2)&0x0f]) >> (32 - (15))))^(((x[(18 -2)&0x0f]) << (13)) | ((x[(18 -2)&0x0f]) >> (32 - (13))))^(x[(18 -2)&0x0f]>>10)) + x[(18 -7)&0x0f] + ((((x[(18 -15)&0x0f]) << (25)) | ((x[(18 -15)&0x0f]) >> (32 - (25))))^(((x[(18 -15)&0x0f]) << (14)) | ((x[(18 -15)&0x0f]) >> (32 - (14))))^(x[(18 -15)&0x0f]>>3)) + x[18&0x0f] , x[18&0x0f] = tm ); b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[19] + ( tm = ((((x[(19 -2)&0x0f]) << (15)) | ((x[(19 -2)&0x0f]) >> (32 - (15))))^(((x[(19 -2)&0x0f]) << (13)) | ((x[(19 -2)&0x0f]) >> (32 - (13))))^(x[(19 -2)&0x0f]>>10)) + x[(19 -7)&0x0f] + ((((x[(19 -15)&0x0f]) << (25)) | ((x[(19 -15)&0x0f]) >> (32 - (25))))^(((x[(19 -15)&0x0f]) << (14)) | ((x[(19 -15)&0x0f]) >> (32 - (14))))^(x[(19 -15)&0x0f]>>3)) + x[19&0x0f] , x[19&0x0f] = tm ); a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[20] + ( tm = ((((x[(20 -2)&0x0f]) << (15)) | ((x[(20 -2)&0x0f]) >> (32 - (15))))^(((x[(20 -2)&0x0f]) << (13)) | ((x[(20 -2)&0x0f]) >> (32 - (13))))^(x[(20 -2)&0x0f]>>10)) + x[(20 -7)&0x0f] + ((((x[(20 -15)&0x0f]) << (25)) | ((x[(20 -15)&0x0f]) >> (32 - (25))))^(((x[(20 -15)&0x0f]) << (14)) | ((x[(20 -15)&0x0f]) >> (32 - (14))))^(x[(20 -15)&0x0f]>>3)) + x[20&0x0f] , x[20&0x0f] = tm ); h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[21] + ( tm = ((((x[(21 -2)&0x0f]) << (15)) | ((x[(21 -2)&0x0f]) >> (32 - (15))))^(((x[(21 -2)&0x0f]) << (13)) | ((x[(21 -2)&0x0f]) >> (32 - (13))))^(x[(21 -2)&0x0f]>>10)) + x[(21 -7)&0x0f] + ((((x[(21 -15)&0x0f]) << (25)) | ((x[(21 -15)&0x0f]) >> (32 - (25))))^(((x[(21 -15)&0x0f]) << (14)) | ((x[(21 -15)&0x0f]) >> (32 - (14))))^(x[(21 -15)&0x0f]>>3)) + x[21&0x0f] , x[21&0x0f] = tm ); g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[22] + ( tm = ((((x[(22 -2)&0x0f]) << (15)) | ((x[(22 -2)&0x0f]) >> (32 - (15))))^(((x[(22 -2)&0x0f]) << (13)) | ((x[(22 -2)&0x0f]) >> (32 - (13))))^(x[(22 -2)&0x0f]>>10)) + x[(22 -7)&0x0f] + ((((x[(22 -15)&0x0f]) << (25)) | ((x[(22 -15)&0x0f]) >> (32 - (25))))^(((x[(22 -15)&0x0f]) << (14)) | ((x[(22 -15)&0x0f]) >> (32 - (14))))^(x[(22 -15)&0x0f]>>3)) + x[22&0x0f] , x[22&0x0f] = tm ); f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[23] + ( tm = ((((x[(23 -2)&0x0f]) << (15)) | ((x[(23 -2)&0x0f]) >> (32 - (15))))^(((x[(23 -2)&0x0f]) << (13)) | ((x[(23 -2)&0x0f]) >> (32 - (13))))^(x[(23 -2)&0x0f]>>10)) + x[(23 -7)&0x0f] + ((((x[(23 -15)&0x0f]) << (25)) | ((x[(23 -15)&0x0f]) >> (32 - (25))))^(((x[(23 -15)&0x0f]) << (14)) | ((x[(23 -15)&0x0f]) >> (32 - (14))))^(x[(23 -15)&0x0f]>>3)) + x[23&0x0f] , x[23&0x0f] = tm ); e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[24] + ( tm = ((((x[(24 -2)&0x0f]) << (15)) | ((x[(24 -2)&0x0f]) >> (32 - (15))))^(((x[(24 -2)&0x0f]) << (13)) | ((x[(24 -2)&0x0f]) >> (32 - (13))))^(x[(24 -2)&0x0f]>>10)) + x[(24 -7)&0x0f] + ((((x[(24 -15)&0x0f]) << (25)) | ((x[(24 -15)&0x0f]) >> (32 - (25))))^(((x[(24 -15)&0x0f]) << (14)) | ((x[(24 -15)&0x0f]) >> (32 - (14))))^(x[(24 -15)&0x0f]>>3)) + x[24&0x0f] , x[24&0x0f] = tm ); d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[25] + ( tm = ((((x[(25 -2)&0x0f]) << (15)) | ((x[(25 -2)&0x0f]) >> (32 - (15))))^(((x[(25 -2)&0x0f]) << (13)) | ((x[(25 -2)&0x0f]) >> (32 - (13))))^(x[(25 -2)&0x0f]>>10)) + x[(25 -7)&0x0f] + ((((x[(25 -15)&0x0f]) << (25)) | ((x[(25 -15)&0x0f]) >> (32 - (25))))^(((x[(25 -15)&0x0f]) << (14)) | ((x[(25 -15)&0x0f]) >> (32 - (14))))^(x[(25 -15)&0x0f]>>3)) + x[25&0x0f] , x[25&0x0f] = tm ); c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[26] + ( tm = ((((x[(26 -2)&0x0f]) << (15)) | ((x[(26 -2)&0x0f]) >> (32 - (15))))^(((x[(26 -2)&0x0f]) << (13)) | ((x[(26 -2)&0x0f]) >> (32 - (13))))^(x[(26 -2)&0x0f]>>10)) + x[(26 -7)&0x0f] + ((((x[(26 -15)&0x0f]) << (25)) | ((x[(26 -15)&0x0f]) >> (32 - (25))))^(((x[(26 -15)&0x0f]) << (14)) | ((x[(26 -15)&0x0f]) >> (32 - (14))))^(x[(26 -15)&0x0f]>>3)) + x[26&0x0f] , x[26&0x0f] = tm ); b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[27] + ( tm = ((((x[(27 -2)&0x0f]) << (15)) | ((x[(27 -2)&0x0f]) >> (32 - (15))))^(((x[(27 -2)&0x0f]) << (13)) | ((x[(27 -2)&0x0f]) >> (32 - (13))))^(x[(27 -2)&0x0f]>>10)) + x[(27 -7)&0x0f] + ((((x[(27 -15)&0x0f]) << (25)) | ((x[(27 -15)&0x0f]) >> (32 - (25))))^(((x[(27 -15)&0x0f]) << (14)) | ((x[(27 -15)&0x0f]) >> (32 - (14))))^(x[(27 -15)&0x0f]>>3)) + x[27&0x0f] , x[27&0x0f] = tm ); a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[28] + ( tm = ((((x[(28 -2)&0x0f]) << (15)) | ((x[(28 -2)&0x0f]) >> (32 - (15))))^(((x[(28 -2)&0x0f]) << (13)) | ((x[(28 -2)&0x0f]) >> (32 - (13))))^(x[(28 -2)&0x0f]>>10)) + x[(28 -7)&0x0f] + ((((x[(28 -15)&0x0f]) << (25)) | ((x[(28 -15)&0x0f]) >> (32 - (25))))^(((x[(28 -15)&0x0f]) << (14)) | ((x[(28 -15)&0x0f]) >> (32 - (14))))^(x[(28 -15)&0x0f]>>3)) + x[28&0x0f] , x[28&0x0f] = tm ); h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[29] + ( tm = ((((x[(29 -2)&0x0f]) << (15)) | ((x[(29 -2)&0x0f]) >> (32 - (15))))^(((x[(29 -2)&0x0f]) << (13)) | ((x[(29 -2)&0x0f]) >> (32 - (13))))^(x[(29 -2)&0x0f]>>10)) + x[(29 -7)&0x0f] + ((((x[(29 -15)&0x0f]) << (25)) | ((x[(29 -15)&0x0f]) >> (32 - (25))))^(((x[(29 -15)&0x0f]) << (14)) | ((x[(29 -15)&0x0f]) >> (32 - (14))))^(x[(29 -15)&0x0f]>>3)) + x[29&0x0f] , x[29&0x0f] = tm ); g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[30] + ( tm = ((((x[(30 -2)&0x0f]) << (15)) | ((x[(30 -2)&0x0f]) >> (32 - (15))))^(((x[(30 -2)&0x0f]) << (13)) | ((x[(30 -2)&0x0f]) >> (32 - (13))))^(x[(30 -2)&0x0f]>>10)) + x[(30 -7)&0x0f] + ((((x[(30 -15)&0x0f]) << (25)) | ((x[(30 -15)&0x0f]) >> (32 - (25))))^(((x[(30 -15)&0x0f]) << (14)) | ((x[(30 -15)&0x0f]) >> (32 - (14))))^(x[(30 -15)&0x0f]>>3)) + x[30&0x0f] , x[30&0x0f] = tm ); f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[31] + ( tm = ((((x[(31 -2)&0x0f]) << (15)) | ((x[(31 -2)&0x0f]) >> (32 - (15))))^(((x[(31 -2)&0x0f]) << (13)) | ((x[(31 -2)&0x0f]) >> (32 - (13))))^(x[(31 -2)&0x0f]>>10)) + x[(31 -7)&0x0f] + ((((x[(31 -15)&0x0f]) << (25)) | ((x[(31 -15)&0x0f]) >> (32 - (25))))^(((x[(31 -15)&0x0f]) << (14)) | ((x[(31 -15)&0x0f]) >> (32 - (14))))^(x[(31 -15)&0x0f]>>3)) + x[31&0x0f] , x[31&0x0f] = tm ); e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[32] + ( tm = ((((x[(32 -2)&0x0f]) << (15)) | ((x[(32 -2)&0x0f]) >> (32 - (15))))^(((x[(32 -2)&0x0f]) << (13)) | ((x[(32 -2)&0x0f]) >> (32 - (13))))^(x[(32 -2)&0x0f]>>10)) + x[(32 -7)&0x0f] + ((((x[(32 -15)&0x0f]) << (25)) | ((x[(32 -15)&0x0f]) >> (32 - (25))))^(((x[(32 -15)&0x0f]) << (14)) | ((x[(32 -15)&0x0f]) >> (32 - (14))))^(x[(32 -15)&0x0f]>>3)) + x[32&0x0f] , x[32&0x0f] = tm ); d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[33] + ( tm = ((((x[(33 -2)&0x0f]) << (15)) | ((x[(33 -2)&0x0f]) >> (32 - (15))))^(((x[(33 -2)&0x0f]) << (13)) | ((x[(33 -2)&0x0f]) >> (32 - (13))))^(x[(33 -2)&0x0f]>>10)) + x[(33 -7)&0x0f] + ((((x[(33 -15)&0x0f]) << (25)) | ((x[(33 -15)&0x0f]) >> (32 - (25))))^(((x[(33 -15)&0x0f]) << (14)) | ((x[(33 -15)&0x0f]) >> (32 - (14))))^(x[(33 -15)&0x0f]>>3)) + x[33&0x0f] , x[33&0x0f] = tm ); c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[34] + ( tm = ((((x[(34 -2)&0x0f]) << (15)) | ((x[(34 -2)&0x0f]) >> (32 - (15))))^(((x[(34 -2)&0x0f]) << (13)) | ((x[(34 -2)&0x0f]) >> (32 - (13))))^(x[(34 -2)&0x0f]>>10)) + x[(34 -7)&0x0f] + ((((x[(34 -15)&0x0f]) << (25)) | ((x[(34 -15)&0x0f]) >> (32 - (25))))^(((x[(34 -15)&0x0f]) << (14)) | ((x[(34 -15)&0x0f]) >> (32 - (14))))^(x[(34 -15)&0x0f]>>3)) + x[34&0x0f] , x[34&0x0f] = tm ); b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[35] + ( tm = ((((x[(35 -2)&0x0f]) << (15)) | ((x[(35 -2)&0x0f]) >> (32 - (15))))^(((x[(35 -2)&0x0f]) << (13)) | ((x[(35 -2)&0x0f]) >> (32 - (13))))^(x[(35 -2)&0x0f]>>10)) + x[(35 -7)&0x0f] + ((((x[(35 -15)&0x0f]) << (25)) | ((x[(35 -15)&0x0f]) >> (32 - (25))))^(((x[(35 -15)&0x0f]) << (14)) | ((x[(35 -15)&0x0f]) >> (32 - (14))))^(x[(35 -15)&0x0f]>>3)) + x[35&0x0f] , x[35&0x0f] = tm ); a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[36] + ( tm = ((((x[(36 -2)&0x0f]) << (15)) | ((x[(36 -2)&0x0f]) >> (32 - (15))))^(((x[(36 -2)&0x0f]) << (13)) | ((x[(36 -2)&0x0f]) >> (32 - (13))))^(x[(36 -2)&0x0f]>>10)) + x[(36 -7)&0x0f] + ((((x[(36 -15)&0x0f]) << (25)) | ((x[(36 -15)&0x0f]) >> (32 - (25))))^(((x[(36 -15)&0x0f]) << (14)) | ((x[(36 -15)&0x0f]) >> (32 - (14))))^(x[(36 -15)&0x0f]>>3)) + x[36&0x0f] , x[36&0x0f] = tm ); h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[37] + ( tm = ((((x[(37 -2)&0x0f]) << (15)) | ((x[(37 -2)&0x0f]) >> (32 - (15))))^(((x[(37 -2)&0x0f]) << (13)) | ((x[(37 -2)&0x0f]) >> (32 - (13))))^(x[(37 -2)&0x0f]>>10)) + x[(37 -7)&0x0f] + ((((x[(37 -15)&0x0f]) << (25)) | ((x[(37 -15)&0x0f]) >> (32 - (25))))^(((x[(37 -15)&0x0f]) << (14)) | ((x[(37 -15)&0x0f]) >> (32 - (14))))^(x[(37 -15)&0x0f]>>3)) + x[37&0x0f] , x[37&0x0f] = tm ); g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[38] + ( tm = ((((x[(38 -2)&0x0f]) << (15)) | ((x[(38 -2)&0x0f]) >> (32 - (15))))^(((x[(38 -2)&0x0f]) << (13)) | ((x[(38 -2)&0x0f]) >> (32 - (13))))^(x[(38 -2)&0x0f]>>10)) + x[(38 -7)&0x0f] + ((((x[(38 -15)&0x0f]) << (25)) | ((x[(38 -15)&0x0f]) >> (32 - (25))))^(((x[(38 -15)&0x0f]) << (14)) | ((x[(38 -15)&0x0f]) >> (32 - (14))))^(x[(38 -15)&0x0f]>>3)) + x[38&0x0f] , x[38&0x0f] = tm ); f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[39] + ( tm = ((((x[(39 -2)&0x0f]) << (15)) | ((x[(39 -2)&0x0f]) >> (32 - (15))))^(((x[(39 -2)&0x0f]) << (13)) | ((x[(39 -2)&0x0f]) >> (32 - (13))))^(x[(39 -2)&0x0f]>>10)) + x[(39 -7)&0x0f] + ((((x[(39 -15)&0x0f]) << (25)) | ((x[(39 -15)&0x0f]) >> (32 - (25))))^(((x[(39 -15)&0x0f]) << (14)) | ((x[(39 -15)&0x0f]) >> (32 - (14))))^(x[(39 -15)&0x0f]>>3)) + x[39&0x0f] , x[39&0x0f] = tm ); e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[40] + ( tm = ((((x[(40 -2)&0x0f]) << (15)) | ((x[(40 -2)&0x0f]) >> (32 - (15))))^(((x[(40 -2)&0x0f]) << (13)) | ((x[(40 -2)&0x0f]) >> (32 - (13))))^(x[(40 -2)&0x0f]>>10)) + x[(40 -7)&0x0f] + ((((x[(40 -15)&0x0f]) << (25)) | ((x[(40 -15)&0x0f]) >> (32 - (25))))^(((x[(40 -15)&0x0f]) << (14)) | ((x[(40 -15)&0x0f]) >> (32 - (14))))^(x[(40 -15)&0x0f]>>3)) + x[40&0x0f] , x[40&0x0f] = tm ); d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[41] + ( tm = ((((x[(41 -2)&0x0f]) << (15)) | ((x[(41 -2)&0x0f]) >> (32 - (15))))^(((x[(41 -2)&0x0f]) << (13)) | ((x[(41 -2)&0x0f]) >> (32 - (13))))^(x[(41 -2)&0x0f]>>10)) + x[(41 -7)&0x0f] + ((((x[(41 -15)&0x0f]) << (25)) | ((x[(41 -15)&0x0f]) >> (32 - (25))))^(((x[(41 -15)&0x0f]) << (14)) | ((x[(41 -15)&0x0f]) >> (32 - (14))))^(x[(41 -15)&0x0f]>>3)) + x[41&0x0f] , x[41&0x0f] = tm ); c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[42] + ( tm = ((((x[(42 -2)&0x0f]) << (15)) | ((x[(42 -2)&0x0f]) >> (32 - (15))))^(((x[(42 -2)&0x0f]) << (13)) | ((x[(42 -2)&0x0f]) >> (32 - (13))))^(x[(42 -2)&0x0f]>>10)) + x[(42 -7)&0x0f] + ((((x[(42 -15)&0x0f]) << (25)) | ((x[(42 -15)&0x0f]) >> (32 - (25))))^(((x[(42 -15)&0x0f]) << (14)) | ((x[(42 -15)&0x0f]) >> (32 - (14))))^(x[(42 -15)&0x0f]>>3)) + x[42&0x0f] , x[42&0x0f] = tm ); b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[43] + ( tm = ((((x[(43 -2)&0x0f]) << (15)) | ((x[(43 -2)&0x0f]) >> (32 - (15))))^(((x[(43 -2)&0x0f]) << (13)) | ((x[(43 -2)&0x0f]) >> (32 - (13))))^(x[(43 -2)&0x0f]>>10)) + x[(43 -7)&0x0f] + ((((x[(43 -15)&0x0f]) << (25)) | ((x[(43 -15)&0x0f]) >> (32 - (25))))^(((x[(43 -15)&0x0f]) << (14)) | ((x[(43 -15)&0x0f]) >> (32 - (14))))^(x[(43 -15)&0x0f]>>3)) + x[43&0x0f] , x[43&0x0f] = tm ); a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[44] + ( tm = ((((x[(44 -2)&0x0f]) << (15)) | ((x[(44 -2)&0x0f]) >> (32 - (15))))^(((x[(44 -2)&0x0f]) << (13)) | ((x[(44 -2)&0x0f]) >> (32 - (13))))^(x[(44 -2)&0x0f]>>10)) + x[(44 -7)&0x0f] + ((((x[(44 -15)&0x0f]) << (25)) | ((x[(44 -15)&0x0f]) >> (32 - (25))))^(((x[(44 -15)&0x0f]) << (14)) | ((x[(44 -15)&0x0f]) >> (32 - (14))))^(x[(44 -15)&0x0f]>>3)) + x[44&0x0f] , x[44&0x0f] = tm ); h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[45] + ( tm = ((((x[(45 -2)&0x0f]) << (15)) | ((x[(45 -2)&0x0f]) >> (32 - (15))))^(((x[(45 -2)&0x0f]) << (13)) | ((x[(45 -2)&0x0f]) >> (32 - (13))))^(x[(45 -2)&0x0f]>>10)) + x[(45 -7)&0x0f] + ((((x[(45 -15)&0x0f]) << (25)) | ((x[(45 -15)&0x0f]) >> (32 - (25))))^(((x[(45 -15)&0x0f]) << (14)) | ((x[(45 -15)&0x0f]) >> (32 - (14))))^(x[(45 -15)&0x0f]>>3)) + x[45&0x0f] , x[45&0x0f] = tm ); g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[46] + ( tm = ((((x[(46 -2)&0x0f]) << (15)) | ((x[(46 -2)&0x0f]) >> (32 - (15))))^(((x[(46 -2)&0x0f]) << (13)) | ((x[(46 -2)&0x0f]) >> (32 - (13))))^(x[(46 -2)&0x0f]>>10)) + x[(46 -7)&0x0f] + ((((x[(46 -15)&0x0f]) << (25)) | ((x[(46 -15)&0x0f]) >> (32 - (25))))^(((x[(46 -15)&0x0f]) << (14)) | ((x[(46 -15)&0x0f]) >> (32 - (14))))^(x[(46 -15)&0x0f]>>3)) + x[46&0x0f] , x[46&0x0f] = tm ); f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[47] + ( tm = ((((x[(47 -2)&0x0f]) << (15)) | ((x[(47 -2)&0x0f]) >> (32 - (15))))^(((x[(47 -2)&0x0f]) << (13)) | ((x[(47 -2)&0x0f]) >> (32 - (13))))^(x[(47 -2)&0x0f]>>10)) + x[(47 -7)&0x0f] + ((((x[(47 -15)&0x0f]) << (25)) | ((x[(47 -15)&0x0f]) >> (32 - (25))))^(((x[(47 -15)&0x0f]) << (14)) | ((x[(47 -15)&0x0f]) >> (32 - (14))))^(x[(47 -15)&0x0f]>>3)) + x[47&0x0f] , x[47&0x0f] = tm ); e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[48] + ( tm = ((((x[(48 -2)&0x0f]) << (15)) | ((x[(48 -2)&0x0f]) >> (32 - (15))))^(((x[(48 -2)&0x0f]) << (13)) | ((x[(48 -2)&0x0f]) >> (32 - (13))))^(x[(48 -2)&0x0f]>>10)) + x[(48 -7)&0x0f] + ((((x[(48 -15)&0x0f]) << (25)) | ((x[(48 -15)&0x0f]) >> (32 - (25))))^(((x[(48 -15)&0x0f]) << (14)) | ((x[(48 -15)&0x0f]) >> (32 - (14))))^(x[(48 -15)&0x0f]>>3)) + x[48&0x0f] , x[48&0x0f] = tm ); d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[49] + ( tm = ((((x[(49 -2)&0x0f]) << (15)) | ((x[(49 -2)&0x0f]) >> (32 - (15))))^(((x[(49 -2)&0x0f]) << (13)) | ((x[(49 -2)&0x0f]) >> (32 - (13))))^(x[(49 -2)&0x0f]>>10)) + x[(49 -7)&0x0f] + ((((x[(49 -15)&0x0f]) << (25)) | ((x[(49 -15)&0x0f]) >> (32 - (25))))^(((x[(49 -15)&0x0f]) << (14)) | ((x[(49 -15)&0x0f]) >> (32 - (14))))^(x[(49 -15)&0x0f]>>3)) + x[49&0x0f] , x[49&0x0f] = tm ); c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[50] + ( tm = ((((x[(50 -2)&0x0f]) << (15)) | ((x[(50 -2)&0x0f]) >> (32 - (15))))^(((x[(50 -2)&0x0f]) << (13)) | ((x[(50 -2)&0x0f]) >> (32 - (13))))^(x[(50 -2)&0x0f]>>10)) + x[(50 -7)&0x0f] + ((((x[(50 -15)&0x0f]) << (25)) | ((x[(50 -15)&0x0f]) >> (32 - (25))))^(((x[(50 -15)&0x0f]) << (14)) | ((x[(50 -15)&0x0f]) >> (32 - (14))))^(x[(50 -15)&0x0f]>>3)) + x[50&0x0f] , x[50&0x0f] = tm ); b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[51] + ( tm = ((((x[(51 -2)&0x0f]) << (15)) | ((x[(51 -2)&0x0f]) >> (32 - (15))))^(((x[(51 -2)&0x0f]) << (13)) | ((x[(51 -2)&0x0f]) >> (32 - (13))))^(x[(51 -2)&0x0f]>>10)) + x[(51 -7)&0x0f] + ((((x[(51 -15)&0x0f]) << (25)) | ((x[(51 -15)&0x0f]) >> (32 - (25))))^(((x[(51 -15)&0x0f]) << (14)) | ((x[(51 -15)&0x0f]) >> (32 - (14))))^(x[(51 -15)&0x0f]>>3)) + x[51&0x0f] , x[51&0x0f] = tm ); a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[52] + ( tm = ((((x[(52 -2)&0x0f]) << (15)) | ((x[(52 -2)&0x0f]) >> (32 - (15))))^(((x[(52 -2)&0x0f]) << (13)) | ((x[(52 -2)&0x0f]) >> (32 - (13))))^(x[(52 -2)&0x0f]>>10)) + x[(52 -7)&0x0f] + ((((x[(52 -15)&0x0f]) << (25)) | ((x[(52 -15)&0x0f]) >> (32 - (25))))^(((x[(52 -15)&0x0f]) << (14)) | ((x[(52 -15)&0x0f]) >> (32 - (14))))^(x[(52 -15)&0x0f]>>3)) + x[52&0x0f] , x[52&0x0f] = tm ); h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[53] + ( tm = ((((x[(53 -2)&0x0f]) << (15)) | ((x[(53 -2)&0x0f]) >> (32 - (15))))^(((x[(53 -2)&0x0f]) << (13)) | ((x[(53 -2)&0x0f]) >> (32 - (13))))^(x[(53 -2)&0x0f]>>10)) + x[(53 -7)&0x0f] + ((((x[(53 -15)&0x0f]) << (25)) | ((x[(53 -15)&0x0f]) >> (32 - (25))))^(((x[(53 -15)&0x0f]) << (14)) | ((x[(53 -15)&0x0f]) >> (32 - (14))))^(x[(53 -15)&0x0f]>>3)) + x[53&0x0f] , x[53&0x0f] = tm ); g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[54] + ( tm = ((((x[(54 -2)&0x0f]) << (15)) | ((x[(54 -2)&0x0f]) >> (32 - (15))))^(((x[(54 -2)&0x0f]) << (13)) | ((x[(54 -2)&0x0f]) >> (32 - (13))))^(x[(54 -2)&0x0f]>>10)) + x[(54 -7)&0x0f] + ((((x[(54 -15)&0x0f]) << (25)) | ((x[(54 -15)&0x0f]) >> (32 - (25))))^(((x[(54 -15)&0x0f]) << (14)) | ((x[(54 -15)&0x0f]) >> (32 - (14))))^(x[(54 -15)&0x0f]>>3)) + x[54&0x0f] , x[54&0x0f] = tm ); f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[55] + ( tm = ((((x[(55 -2)&0x0f]) << (15)) | ((x[(55 -2)&0x0f]) >> (32 - (15))))^(((x[(55 -2)&0x0f]) << (13)) | ((x[(55 -2)&0x0f]) >> (32 - (13))))^(x[(55 -2)&0x0f]>>10)) + x[(55 -7)&0x0f] + ((((x[(55 -15)&0x0f]) << (25)) | ((x[(55 -15)&0x0f]) >> (32 - (25))))^(((x[(55 -15)&0x0f]) << (14)) | ((x[(55 -15)&0x0f]) >> (32 - (14))))^(x[(55 -15)&0x0f]>>3)) + x[55&0x0f] , x[55&0x0f] = tm ); e += t1; a = t0 + t1; } while(0);
      do { t0 = ((((a) << (30)) | ((a) >> (32 - (30))))^(((a) << (19)) | ((a) >> (32 - (19))))^(((a) << (10)) | ((a) >> (32 - (10))))) + ( ( a & b ) | ( c & ( a | b ) ) ); t1 = h + ((((e) << (26)) | ((e) >> (32 - (26))))^(((e) << (21)) | ((e) >> (32 - (21))))^(((e) << (7)) | ((e) >> (32 - (7))))) + ( g ^ ( e & ( f ^ g ) ) ) + sha256_round_constants[56] + ( tm = ((((x[(56 -2)&0x0f]) << (15)) | ((x[(56 -2)&0x0f]) >> (32 - (15))))^(((x[(56 -2)&0x0f]) << (13)) | ((x[(56 -2)&0x0f]) >> (32 - (13))))^(x[(56 -2)&0x0f]>>10)) + x[(56 -7)&0x0f] + ((((x[(56 -15)&0x0f]) << (25)) | ((x[(56 -15)&0x0f]) >> (32 - (25))))^(((x[(56 -15)&0x0f]) << (14)) | ((x[(56 -15)&0x0f]) >> (32 - (14))))^(x[(56 -15)&0x0f]>>3)) + x[56&0x0f] , x[56&0x0f] = tm ); d += t1; h = t0 + t1; } while(0);
      do { t0 = ((((h) << (30)) | ((h) >> (32 - (30))))^(((h) << (19)) | ((h) >> (32 - (19))))^(((h) << (10)) | ((h) >> (32 - (10))))) + ( ( h & a ) | ( b & ( h | a ) ) ); t1 = g + ((((d) << (26)) | ((d) >> (32 - (26))))^(((d) << (21)) | ((d) >> (32 - (21))))^(((d) << (7)) | ((d) >> (32 - (7))))) + ( f ^ ( d & ( e ^ f ) ) ) + sha256_round_constants[57] + ( tm = ((((x[(57 -2)&0x0f]) << (15)) | ((x[(57 -2)&0x0f]) >> (32 - (15))))^(((x[(57 -2)&0x0f]) << (13)) | ((x[(57 -2)&0x0f]) >> (32 - (13))))^(x[(57 -2)&0x0f]>>10)) + x[(57 -7)&0x0f] + ((((x[(57 -15)&0x0f]) << (25)) | ((x[(57 -15)&0x0f]) >> (32 - (25))))^(((x[(57 -15)&0x0f]) << (14)) | ((x[(57 -15)&0x0f]) >> (32 - (14))))^(x[(57 -15)&0x0f]>>3)) + x[57&0x0f] , x[57&0x0f] = tm ); c += t1; g = t0 + t1; } while(0);
      do { t0 = ((((g) << (30)) | ((g) >> (32 - (30))))^(((g) << (19)) | ((g) >> (32 - (19))))^(((g) << (10)) | ((g) >> (32 - (10))))) + ( ( g & h ) | ( a & ( g | h ) ) ); t1 = f + ((((c) << (26)) | ((c) >> (32 - (26))))^(((c) << (21)) | ((c) >> (32 - (21))))^(((c) << (7)) | ((c) >> (32 - (7))))) + ( e ^ ( c & ( d ^ e ) ) ) + sha256_round_constants[58] + ( tm = ((((x[(58 -2)&0x0f]) << (15)) | ((x[(58 -2)&0x0f]) >> (32 - (15))))^(((x[(58 -2)&0x0f]) << (13)) | ((x[(58 -2)&0x0f]) >> (32 - (13))))^(x[(58 -2)&0x0f]>>10)) + x[(58 -7)&0x0f] + ((((x[(58 -15)&0x0f]) << (25)) | ((x[(58 -15)&0x0f]) >> (32 - (25))))^(((x[(58 -15)&0x0f]) << (14)) | ((x[(58 -15)&0x0f]) >> (32 - (14))))^(x[(58 -15)&0x0f]>>3)) + x[58&0x0f] , x[58&0x0f] = tm ); b += t1; f = t0 + t1; } while(0);
      do { t0 = ((((f) << (30)) | ((f) >> (32 - (30))))^(((f) << (19)) | ((f) >> (32 - (19))))^(((f) << (10)) | ((f) >> (32 - (10))))) + ( ( f & g ) | ( h & ( f | g ) ) ); t1 = e + ((((b) << (26)) | ((b) >> (32 - (26))))^(((b) << (21)) | ((b) >> (32 - (21))))^(((b) << (7)) | ((b) >> (32 - (7))))) + ( d ^ ( b & ( c ^ d ) ) ) + sha256_round_constants[59] + ( tm = ((((x[(59 -2)&0x0f]) << (15)) | ((x[(59 -2)&0x0f]) >> (32 - (15))))^(((x[(59 -2)&0x0f]) << (13)) | ((x[(59 -2)&0x0f]) >> (32 - (13))))^(x[(59 -2)&0x0f]>>10)) + x[(59 -7)&0x0f] + ((((x[(59 -15)&0x0f]) << (25)) | ((x[(59 -15)&0x0f]) >> (32 - (25))))^(((x[(59 -15)&0x0f]) << (14)) | ((x[(59 -15)&0x0f]) >> (32 - (14))))^(x[(59 -15)&0x0f]>>3)) + x[59&0x0f] , x[59&0x0f] = tm ); a += t1; e = t0 + t1; } while(0);
      do { t0 = ((((e) << (30)) | ((e) >> (32 - (30))))^(((e) << (19)) | ((e) >> (32 - (19))))^(((e) << (10)) | ((e) >> (32 - (10))))) + ( ( e & f ) | ( g & ( e | f ) ) ); t1 = d + ((((a) << (26)) | ((a) >> (32 - (26))))^(((a) << (21)) | ((a) >> (32 - (21))))^(((a) << (7)) | ((a) >> (32 - (7))))) + ( c ^ ( a & ( b ^ c ) ) ) + sha256_round_constants[60] + ( tm = ((((x[(60 -2)&0x0f]) << (15)) | ((x[(60 -2)&0x0f]) >> (32 - (15))))^(((x[(60 -2)&0x0f]) << (13)) | ((x[(60 -2)&0x0f]) >> (32 - (13))))^(x[(60 -2)&0x0f]>>10)) + x[(60 -7)&0x0f] + ((((x[(60 -15)&0x0f]) << (25)) | ((x[(60 -15)&0x0f]) >> (32 - (25))))^(((x[(60 -15)&0x0f]) << (14)) | ((x[(60 -15)&0x0f]) >> (32 - (14))))^(x[(60 -15)&0x0f]>>3)) + x[60&0x0f] , x[60&0x0f] = tm ); h += t1; d = t0 + t1; } while(0);
      do { t0 = ((((d) << (30)) | ((d) >> (32 - (30))))^(((d) << (19)) | ((d) >> (32 - (19))))^(((d) << (10)) | ((d) >> (32 - (10))))) + ( ( d & e ) | ( f & ( d | e ) ) ); t1 = c + ((((h) << (26)) | ((h) >> (32 - (26))))^(((h) << (21)) | ((h) >> (32 - (21))))^(((h) << (7)) | ((h) >> (32 - (7))))) + ( b ^ ( h & ( a ^ b ) ) ) + sha256_round_constants[61] + ( tm = ((((x[(61 -2)&0x0f]) << (15)) | ((x[(61 -2)&0x0f]) >> (32 - (15))))^(((x[(61 -2)&0x0f]) << (13)) | ((x[(61 -2)&0x0f]) >> (32 - (13))))^(x[(61 -2)&0x0f]>>10)) + x[(61 -7)&0x0f] + ((((x[(61 -15)&0x0f]) << (25)) | ((x[(61 -15)&0x0f]) >> (32 - (25))))^(((x[(61 -15)&0x0f]) << (14)) | ((x[(61 -15)&0x0f]) >> (32 - (14))))^(x[(61 -15)&0x0f]>>3)) + x[61&0x0f] , x[61&0x0f] = tm ); g += t1; c = t0 + t1; } while(0);
      do { t0 = ((((c) << (30)) | ((c) >> (32 - (30))))^(((c) << (19)) | ((c) >> (32 - (19))))^(((c) << (10)) | ((c) >> (32 - (10))))) + ( ( c & d ) | ( e & ( c | d ) ) ); t1 = b + ((((g) << (26)) | ((g) >> (32 - (26))))^(((g) << (21)) | ((g) >> (32 - (21))))^(((g) << (7)) | ((g) >> (32 - (7))))) + ( a ^ ( g & ( h ^ a ) ) ) + sha256_round_constants[62] + ( tm = ((((x[(62 -2)&0x0f]) << (15)) | ((x[(62 -2)&0x0f]) >> (32 - (15))))^(((x[(62 -2)&0x0f]) << (13)) | ((x[(62 -2)&0x0f]) >> (32 - (13))))^(x[(62 -2)&0x0f]>>10)) + x[(62 -7)&0x0f] + ((((x[(62 -15)&0x0f]) << (25)) | ((x[(62 -15)&0x0f]) >> (32 - (25))))^(((x[(62 -15)&0x0f]) << (14)) | ((x[(62 -15)&0x0f]) >> (32 - (14))))^(x[(62 -15)&0x0f]>>3)) + x[62&0x0f] , x[62&0x0f] = tm ); f += t1; b = t0 + t1; } while(0);
      do { t0 = ((((b) << (30)) | ((b) >> (32 - (30))))^(((b) << (19)) | ((b) >> (32 - (19))))^(((b) << (10)) | ((b) >> (32 - (10))))) + ( ( b & c ) | ( d & ( b | c ) ) ); t1 = a + ((((f) << (26)) | ((f) >> (32 - (26))))^(((f) << (21)) | ((f) >> (32 - (21))))^(((f) << (7)) | ((f) >> (32 - (7))))) + ( h ^ ( f & ( g ^ h ) ) ) + sha256_round_constants[63] + ( tm = ((((x[(63 -2)&0x0f]) << (15)) | ((x[(63 -2)&0x0f]) >> (32 - (15))))^(((x[(63 -2)&0x0f]) << (13)) | ((x[(63 -2)&0x0f]) >> (32 - (13))))^(x[(63 -2)&0x0f]>>10)) + x[(63 -7)&0x0f] + ((((x[(63 -15)&0x0f]) << (25)) | ((x[(63 -15)&0x0f]) >> (32 - (25))))^(((x[(63 -15)&0x0f]) << (14)) | ((x[(63 -15)&0x0f]) >> (32 - (14))))^(x[(63 -15)&0x0f]>>3)) + x[63&0x0f] , x[63&0x0f] = tm ); e += t1; a = t0 + t1; } while(0);

      a = ctx->state[0] += a;
      b = ctx->state[1] += b;
      c = ctx->state[2] += c;
      d = ctx->state[3] += d;
      e = ctx->state[4] += e;
      f = ctx->state[5] += f;
      g = ctx->state[6] += g;
      h = ctx->state[7] += h;
    }
}
