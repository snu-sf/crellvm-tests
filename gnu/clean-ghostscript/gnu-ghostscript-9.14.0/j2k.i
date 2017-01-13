# 1 "./openjpeg/libopenjpeg/j2k.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./openjpeg/libopenjpeg/j2k.c" 2
# 37 "./openjpeg/libopenjpeg/j2k.c"
# 1 "./openjpeg/libopenjpeg/opj_includes.h" 1
# 35 "./openjpeg/libopenjpeg/opj_includes.h"
# 1 "./openjpeg/libopenjpeg/opj_config_private.h" 1
# 36 "./openjpeg/libopenjpeg/opj_includes.h" 2






# 1 "/usr/include/memory.h" 1 3 4
# 25 "/usr/include/memory.h" 3 4
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
# 26 "/usr/include/memory.h" 2 3 4



# 1 "/usr/include/string.h" 1 3 4
# 32 "/usr/include/string.h" 3 4
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
# 125 "/usr/include/string.h" 3 4
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
# 281 "/usr/include/string.h" 3 4
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
# 395 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 423 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 441 "/usr/include/string.h" 3 4
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
# 532 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 555 "/usr/include/string.h" 3 4
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
# 630 "/usr/include/string.h" 3 4
# 1 "/usr/include/bits/string.h" 1 3 4
# 631 "/usr/include/string.h" 2 3 4


# 1 "/usr/include/bits/string2.h" 1 3 4
# 51 "/usr/include/bits/string2.h" 3 4
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
# 52 "/usr/include/bits/string2.h" 2 3 4
# 393 "/usr/include/bits/string2.h" 3 4
extern void *__rawmemchr (const void *__s, int __c);
# 968 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c1 (const char *__s, int __reject);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c1 (const char *__s, int __reject)
{
  register size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c2 (const char *__s, int __reject1,
         int __reject2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c2 (const char *__s, int __reject1, int __reject2)
{
  register size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c3 (const char *__s, int __reject1,
         int __reject2, int __reject3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c3 (const char *__s, int __reject1, int __reject2,
       int __reject3)
{
  register size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2 && __s[__result] != __reject3)
    ++__result;
  return __result;
}
# 1044 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c1 (const char *__s, int __accept);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c1 (const char *__s, int __accept)
{
  register size_t __result = 0;

  while (__s[__result] == __accept)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c2 (const char *__s, int __accept1, int __accept2)
{
  register size_t __result = 0;

  while (__s[__result] == __accept1 || __s[__result] == __accept2)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{
  register size_t __result = 0;

  while (__s[__result] == __accept1 || __s[__result] == __accept2
  || __s[__result] == __accept3)
    ++__result;
  return __result;
}
# 1120 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c2 (const char *__s, int __accept1, int __accept2)
{

  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2)
    ++__s;
  return *__s == '\0' ? ((void*)0) : (char *) (size_t) __s;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{

  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2
  && *__s != __accept3)
    ++__s;
  return *__s == '\0' ? ((void*)0) : (char *) (size_t) __s;
}
# 1170 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strtok_r_1c (char *__s, char __sep, char **__nextp);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strtok_r_1c (char *__s, char __sep, char **__nextp)
{
  char *__result;
  if (__s == ((void*)0))
    __s = *__nextp;
  while (*__s == __sep)
    ++__s;
  __result = ((void*)0);
  if (*__s != '\0')
    {
      __result = __s++;
      while (*__s != '\0')
 if (*__s++ == __sep)
   {
     __s[-1] = '\0';
     break;
   }
    }
  *__nextp = __s;
  return __result;
}
# 1202 "/usr/include/bits/string2.h" 3 4
extern char *__strsep_g (char **__stringp, const char *__delim);
# 1220 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_1c (char **__s, char __reject);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_1c (char **__s, char __reject)
{
  register char *__retval = *__s;
  if (__retval != ((void*)0) && (*__s = (__extension__ (__builtin_constant_p (__reject) && !__builtin_constant_p (__retval) && (__reject) == '\0' ? (char *) __rawmemchr (__retval, __reject) : __builtin_strchr (__retval, __reject)))) != ((void*)0))
    *(*__s)++ = '\0';
  return __retval;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_2c (char **__s, char __reject1, char __reject2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_2c (char **__s, char __reject1, char __reject2)
{
  register char *__retval = *__s;
  if (__retval != ((void*)0))
    {
      register char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void*)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_3c (char **__s, char __reject1, char __reject2,
       char __reject3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_3c (char **__s, char __reject1, char __reject2, char __reject3)
{
  register char *__retval = *__s;
  if (__retval != ((void*)0))
    {
      register char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void*)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2 || *__cp == __reject3)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}
# 1296 "/usr/include/bits/string2.h" 3 4
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4
# 465 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 1297 "/usr/include/bits/string2.h" 2 3 4




extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 1320 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 634 "/usr/include/string.h" 2 3 4
# 30 "/usr/include/memory.h" 2 3 4
# 43 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 66 "/usr/include/bits/waitstatus.h" 3 4
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
# 277 "/usr/include/stdlib.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void*)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ )) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void*)0), 10);
}




__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ )) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void*)0), 10);
}
# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





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
# 60 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 98 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 59 "/usr/include/time.h" 3 4
typedef __clock_t clock_t;
# 75 "/usr/include/time.h" 3 4
typedef __time_t time_t;
# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/sys/types.h" 2 3 4
# 146 "/usr/include/sys/types.h" 3 4
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






# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


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


__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ )) gnu_dev_major (unsigned long long int __dev)
{
  return ((__dev >> 8) & 0xfff) | ((unsigned int) (__dev >> 32) & ~0xfff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ )) gnu_dev_minor (unsigned long long int __dev)
{
  return (__dev & 0xff) | ((unsigned int) (__dev >> 12) & ~0xff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned long long int
__attribute__ ((__nothrow__ )) gnu_dev_makedev (unsigned int __major, unsigned int __minor)
{
  return ((__minor & 0xff) | ((__major & 0xfff) << 8)
   | (((unsigned long long int) (__minor & ~0xff)) << 12)
   | (((unsigned long long int) (__major & ~0xfff)) << 32));
}
# 223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/sys/types.h" 3 4
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
# 479 "/usr/include/stdlib.h" 3 4
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ ));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
# 492 "/usr/include/stdlib.h" 2 3 4





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
# 577 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ ));
# 605 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 662 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 716 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 733 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 754 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;



extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 770 "/usr/include/stdlib.h" 3 4
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
# 947 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 25 "/usr/include/bits/stdlib-float.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
# 952 "/usr/include/stdlib.h" 2 3 4
# 44 "./openjpeg/libopenjpeg/opj_includes.h" 2

# 1 "/usr/include/math.h" 1 3 4
# 33 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/huge_val.h" 1 3 4
# 34 "/usr/include/math.h" 2 3 4

# 1 "/usr/include/bits/huge_valf.h" 1 3 4
# 36 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/bits/huge_vall.h" 1 3 4
# 37 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/inf.h" 1 3 4
# 40 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/nan.h" 1 3 4
# 43 "/usr/include/math.h" 2 3 4



# 1 "/usr/include/bits/mathdef.h" 1 3 4
# 28 "/usr/include/bits/mathdef.h" 3 4
typedef float float_t;
typedef double double_t;
# 47 "/usr/include/math.h" 2 3 4
# 70 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 54 "/usr/include/bits/mathcalls.h" 3 4
extern double acos (double __x) __attribute__ ((__nothrow__ )); extern double __acos (double __x) __attribute__ ((__nothrow__ ));

extern double asin (double __x) __attribute__ ((__nothrow__ )); extern double __asin (double __x) __attribute__ ((__nothrow__ ));

extern double atan (double __x) __attribute__ ((__nothrow__ )); extern double __atan (double __x) __attribute__ ((__nothrow__ ));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ )); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ ));


extern double cos (double __x) __attribute__ ((__nothrow__ )); extern double __cos (double __x) __attribute__ ((__nothrow__ ));

extern double sin (double __x) __attribute__ ((__nothrow__ )); extern double __sin (double __x) __attribute__ ((__nothrow__ ));

extern double tan (double __x) __attribute__ ((__nothrow__ )); extern double __tan (double __x) __attribute__ ((__nothrow__ ));




extern double cosh (double __x) __attribute__ ((__nothrow__ )); extern double __cosh (double __x) __attribute__ ((__nothrow__ ));

extern double sinh (double __x) __attribute__ ((__nothrow__ )); extern double __sinh (double __x) __attribute__ ((__nothrow__ ));

extern double tanh (double __x) __attribute__ ((__nothrow__ )); extern double __tanh (double __x) __attribute__ ((__nothrow__ ));
# 88 "/usr/include/bits/mathcalls.h" 3 4
extern double acosh (double __x) __attribute__ ((__nothrow__ )); extern double __acosh (double __x) __attribute__ ((__nothrow__ ));

extern double asinh (double __x) __attribute__ ((__nothrow__ )); extern double __asinh (double __x) __attribute__ ((__nothrow__ ));

extern double atanh (double __x) __attribute__ ((__nothrow__ )); extern double __atanh (double __x) __attribute__ ((__nothrow__ ));







extern double exp (double __x) __attribute__ ((__nothrow__ )); extern double __exp (double __x) __attribute__ ((__nothrow__ ));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ )); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ ));


extern double log (double __x) __attribute__ ((__nothrow__ )); extern double __log (double __x) __attribute__ ((__nothrow__ ));


extern double log10 (double __x) __attribute__ ((__nothrow__ )); extern double __log10 (double __x) __attribute__ ((__nothrow__ ));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ )); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
# 129 "/usr/include/bits/mathcalls.h" 3 4
extern double expm1 (double __x) __attribute__ ((__nothrow__ )); extern double __expm1 (double __x) __attribute__ ((__nothrow__ ));


extern double log1p (double __x) __attribute__ ((__nothrow__ )); extern double __log1p (double __x) __attribute__ ((__nothrow__ ));


extern double logb (double __x) __attribute__ ((__nothrow__ )); extern double __logb (double __x) __attribute__ ((__nothrow__ ));






extern double exp2 (double __x) __attribute__ ((__nothrow__ )); extern double __exp2 (double __x) __attribute__ ((__nothrow__ ));


extern double log2 (double __x) __attribute__ ((__nothrow__ )); extern double __log2 (double __x) __attribute__ ((__nothrow__ ));
# 154 "/usr/include/bits/mathcalls.h" 3 4
extern double pow (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ ));


extern double sqrt (double __x) __attribute__ ((__nothrow__ )); extern double __sqrt (double __x) __attribute__ ((__nothrow__ ));





extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ ));






extern double cbrt (double __x) __attribute__ ((__nothrow__ )); extern double __cbrt (double __x) __attribute__ ((__nothrow__ ));
# 179 "/usr/include/bits/mathcalls.h" 3 4
extern double ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ ));




extern int __isinf (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int isinf (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int finite (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double drem (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ ));



extern double significand (double __x) __attribute__ ((__nothrow__ )); extern double __significand (double __x) __attribute__ ((__nothrow__ ));





extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));






extern double nan (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int __isnan (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int isnan (double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double j0 (double) __attribute__ ((__nothrow__ )); extern double __j0 (double) __attribute__ ((__nothrow__ ));
extern double j1 (double) __attribute__ ((__nothrow__ )); extern double __j1 (double) __attribute__ ((__nothrow__ ));
extern double jn (int, double) __attribute__ ((__nothrow__ )); extern double __jn (int, double) __attribute__ ((__nothrow__ ));
extern double y0 (double) __attribute__ ((__nothrow__ )); extern double __y0 (double) __attribute__ ((__nothrow__ ));
extern double y1 (double) __attribute__ ((__nothrow__ )); extern double __y1 (double) __attribute__ ((__nothrow__ ));
extern double yn (int, double) __attribute__ ((__nothrow__ )); extern double __yn (int, double) __attribute__ ((__nothrow__ ));






extern double erf (double) __attribute__ ((__nothrow__ )); extern double __erf (double) __attribute__ ((__nothrow__ ));
extern double erfc (double) __attribute__ ((__nothrow__ )); extern double __erfc (double) __attribute__ ((__nothrow__ ));
extern double lgamma (double) __attribute__ ((__nothrow__ )); extern double __lgamma (double) __attribute__ ((__nothrow__ ));






extern double tgamma (double) __attribute__ ((__nothrow__ )); extern double __tgamma (double) __attribute__ ((__nothrow__ ));





extern double gamma (double) __attribute__ ((__nothrow__ )); extern double __gamma (double) __attribute__ ((__nothrow__ ));






extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ )); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ ));







extern double rint (double __x) __attribute__ ((__nothrow__ )); extern double __rint (double __x) __attribute__ ((__nothrow__ ));


extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ ));



extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ )); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogb (double __x) __attribute__ ((__nothrow__ )); extern int __ilogb (double __x) __attribute__ ((__nothrow__ ));




extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ )); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ ));



extern double nearbyint (double __x) __attribute__ ((__nothrow__ )); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ ));



extern double round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern double trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ )); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrint (double __x) __attribute__ ((__nothrow__ )); extern long int __lrint (double __x) __attribute__ ((__nothrow__ ));
extern long long int llrint (double __x) __attribute__ ((__nothrow__ )); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ ));



extern long int lround (double __x) __attribute__ ((__nothrow__ )); extern long int __lround (double __x) __attribute__ ((__nothrow__ ));
extern long long int llround (double __x) __attribute__ ((__nothrow__ )); extern long long int __llround (double __x) __attribute__ ((__nothrow__ ));



extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ )); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ ));


extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int __fpclassify (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbit (double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ )); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ ));
# 364 "/usr/include/bits/mathcalls.h" 3 4
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ )); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ ));
# 71 "/usr/include/math.h" 2 3 4
# 89 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 54 "/usr/include/bits/mathcalls.h" 3 4
extern float acosf (float __x) __attribute__ ((__nothrow__ )); extern float __acosf (float __x) __attribute__ ((__nothrow__ ));

extern float asinf (float __x) __attribute__ ((__nothrow__ )); extern float __asinf (float __x) __attribute__ ((__nothrow__ ));

extern float atanf (float __x) __attribute__ ((__nothrow__ )); extern float __atanf (float __x) __attribute__ ((__nothrow__ ));

extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ )); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ ));


extern float cosf (float __x) __attribute__ ((__nothrow__ )); extern float __cosf (float __x) __attribute__ ((__nothrow__ ));

extern float sinf (float __x) __attribute__ ((__nothrow__ )); extern float __sinf (float __x) __attribute__ ((__nothrow__ ));

extern float tanf (float __x) __attribute__ ((__nothrow__ )); extern float __tanf (float __x) __attribute__ ((__nothrow__ ));




extern float coshf (float __x) __attribute__ ((__nothrow__ )); extern float __coshf (float __x) __attribute__ ((__nothrow__ ));

extern float sinhf (float __x) __attribute__ ((__nothrow__ )); extern float __sinhf (float __x) __attribute__ ((__nothrow__ ));

extern float tanhf (float __x) __attribute__ ((__nothrow__ )); extern float __tanhf (float __x) __attribute__ ((__nothrow__ ));
# 88 "/usr/include/bits/mathcalls.h" 3 4
extern float acoshf (float __x) __attribute__ ((__nothrow__ )); extern float __acoshf (float __x) __attribute__ ((__nothrow__ ));

extern float asinhf (float __x) __attribute__ ((__nothrow__ )); extern float __asinhf (float __x) __attribute__ ((__nothrow__ ));

extern float atanhf (float __x) __attribute__ ((__nothrow__ )); extern float __atanhf (float __x) __attribute__ ((__nothrow__ ));







extern float expf (float __x) __attribute__ ((__nothrow__ )); extern float __expf (float __x) __attribute__ ((__nothrow__ ));


extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ )); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ )); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ ));


extern float logf (float __x) __attribute__ ((__nothrow__ )); extern float __logf (float __x) __attribute__ ((__nothrow__ ));


extern float log10f (float __x) __attribute__ ((__nothrow__ )); extern float __log10f (float __x) __attribute__ ((__nothrow__ ));


extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ )); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
# 129 "/usr/include/bits/mathcalls.h" 3 4
extern float expm1f (float __x) __attribute__ ((__nothrow__ )); extern float __expm1f (float __x) __attribute__ ((__nothrow__ ));


extern float log1pf (float __x) __attribute__ ((__nothrow__ )); extern float __log1pf (float __x) __attribute__ ((__nothrow__ ));


extern float logbf (float __x) __attribute__ ((__nothrow__ )); extern float __logbf (float __x) __attribute__ ((__nothrow__ ));






extern float exp2f (float __x) __attribute__ ((__nothrow__ )); extern float __exp2f (float __x) __attribute__ ((__nothrow__ ));


extern float log2f (float __x) __attribute__ ((__nothrow__ )); extern float __log2f (float __x) __attribute__ ((__nothrow__ ));
# 154 "/usr/include/bits/mathcalls.h" 3 4
extern float powf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern float sqrtf (float __x) __attribute__ ((__nothrow__ )); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ ));





extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ ));






extern float cbrtf (float __x) __attribute__ ((__nothrow__ )); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ ));
# 179 "/usr/include/bits/mathcalls.h" 3 4
extern float ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ ));




extern int __isinff (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finitef (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int isinff (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int finitef (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ ));



extern float significandf (float __x) __attribute__ ((__nothrow__ )); extern float __significandf (float __x) __attribute__ ((__nothrow__ ));





extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));






extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int __isnanf (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int isnanf (float __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float j0f (float) __attribute__ ((__nothrow__ )); extern float __j0f (float) __attribute__ ((__nothrow__ ));
extern float j1f (float) __attribute__ ((__nothrow__ )); extern float __j1f (float) __attribute__ ((__nothrow__ ));
extern float jnf (int, float) __attribute__ ((__nothrow__ )); extern float __jnf (int, float) __attribute__ ((__nothrow__ ));
extern float y0f (float) __attribute__ ((__nothrow__ )); extern float __y0f (float) __attribute__ ((__nothrow__ ));
extern float y1f (float) __attribute__ ((__nothrow__ )); extern float __y1f (float) __attribute__ ((__nothrow__ ));
extern float ynf (int, float) __attribute__ ((__nothrow__ )); extern float __ynf (int, float) __attribute__ ((__nothrow__ ));






extern float erff (float) __attribute__ ((__nothrow__ )); extern float __erff (float) __attribute__ ((__nothrow__ ));
extern float erfcf (float) __attribute__ ((__nothrow__ )); extern float __erfcf (float) __attribute__ ((__nothrow__ ));
extern float lgammaf (float) __attribute__ ((__nothrow__ )); extern float __lgammaf (float) __attribute__ ((__nothrow__ ));






extern float tgammaf (float) __attribute__ ((__nothrow__ )); extern float __tgammaf (float) __attribute__ ((__nothrow__ ));





extern float gammaf (float) __attribute__ ((__nothrow__ )); extern float __gammaf (float) __attribute__ ((__nothrow__ ));






extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ )); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ ));







extern float rintf (float __x) __attribute__ ((__nothrow__ )); extern float __rintf (float __x) __attribute__ ((__nothrow__ ));


extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ ));



extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ )); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogbf (float __x) __attribute__ ((__nothrow__ )); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ ));




extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ )); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ ));



extern float nearbyintf (float __x) __attribute__ ((__nothrow__ )); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ ));



extern float roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern float truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ )); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrintf (float __x) __attribute__ ((__nothrow__ )); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ ));
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ ));



extern long int lroundf (float __x) __attribute__ ((__nothrow__ )); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ ));
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ )); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ ));



extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ )); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ ));


extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbitf (float __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ )); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ ));
# 364 "/usr/include/bits/mathcalls.h" 3 4
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ )); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ ));
# 90 "/usr/include/math.h" 2 3 4
# 133 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 54 "/usr/include/bits/mathcalls.h" 3 4
extern long double acosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ ));

extern long double asinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ )); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ ));


extern long double cosl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ ));

extern long double sinl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ ));

extern long double tanl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ ));




extern long double coshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ ));

extern long double sinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ ));

extern long double tanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ ));
# 88 "/usr/include/bits/mathcalls.h" 3 4
extern long double acoshl (long double __x) __attribute__ ((__nothrow__ )); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ ));

extern long double asinhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ ));

extern long double atanhl (long double __x) __attribute__ ((__nothrow__ )); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ ));







extern long double expl (long double __x) __attribute__ ((__nothrow__ )); extern long double __expl (long double __x) __attribute__ ((__nothrow__ ));


extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ )); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ ));


extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ )); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ ));


extern long double logl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logl (long double __x) __attribute__ ((__nothrow__ ));


extern long double log10l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ ));


extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ )); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
# 129 "/usr/include/bits/mathcalls.h" 3 4
extern long double expm1l (long double __x) __attribute__ ((__nothrow__ )); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ ));


extern long double log1pl (long double __x) __attribute__ ((__nothrow__ )); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ ));


extern long double logbl (long double __x) __attribute__ ((__nothrow__ )); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ ));






extern long double exp2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ ));


extern long double log2l (long double __x) __attribute__ ((__nothrow__ )); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ ));
# 154 "/usr/include/bits/mathcalls.h" 3 4
extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ ));





extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ ));






extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ )); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ ));
# 179 "/usr/include/bits/mathcalls.h" 3 4
extern long double ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ ));




extern int __isinfl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int __finitel (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int isinfl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int finitel (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ ));



extern long double significandl (long double __x) __attribute__ ((__nothrow__ )); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ ));





extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));






extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int __isnanl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int isnanl (long double __value) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double j0l (long double) __attribute__ ((__nothrow__ )); extern long double __j0l (long double) __attribute__ ((__nothrow__ ));
extern long double j1l (long double) __attribute__ ((__nothrow__ )); extern long double __j1l (long double) __attribute__ ((__nothrow__ ));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ )); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ ));
extern long double y0l (long double) __attribute__ ((__nothrow__ )); extern long double __y0l (long double) __attribute__ ((__nothrow__ ));
extern long double y1l (long double) __attribute__ ((__nothrow__ )); extern long double __y1l (long double) __attribute__ ((__nothrow__ ));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ )); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ ));






extern long double erfl (long double) __attribute__ ((__nothrow__ )); extern long double __erfl (long double) __attribute__ ((__nothrow__ ));
extern long double erfcl (long double) __attribute__ ((__nothrow__ )); extern long double __erfcl (long double) __attribute__ ((__nothrow__ ));
extern long double lgammal (long double) __attribute__ ((__nothrow__ )); extern long double __lgammal (long double) __attribute__ ((__nothrow__ ));






extern long double tgammal (long double) __attribute__ ((__nothrow__ )); extern long double __tgammal (long double) __attribute__ ((__nothrow__ ));





extern long double gammal (long double) __attribute__ ((__nothrow__ )); extern long double __gammal (long double) __attribute__ ((__nothrow__ ));






extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ )); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ ));







extern long double rintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ ));


extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ ));



extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ )); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ ));



extern int ilogbl (long double __x) __attribute__ ((__nothrow__ )); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ ));




extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ )); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ ));



extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ )); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ ));



extern long double roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern long double truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ )); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ ));






extern long int lrintl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ ));
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ ));



extern long int lroundl (long double __x) __attribute__ ((__nothrow__ )); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ ));
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ )); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ ));



extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ )); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ ));


extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));


extern int __signbitl (long double __value) __attribute__ ((__nothrow__ ))
     __attribute__ ((__const__));



extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ )); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ ));
# 364 "/usr/include/bits/mathcalls.h" 3 4
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ )); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ ));
# 134 "/usr/include/math.h" 2 3 4
# 149 "/usr/include/math.h" 3 4
extern int signgam;
# 190 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 288 "/usr/include/math.h" 3 4
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;




extern _LIB_VERSION_TYPE _LIB_VERSION;
# 313 "/usr/include/math.h" 3 4
struct exception

  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };




extern int matherr (struct exception *__exc);
# 413 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathinline.h" 1 3 4
# 126 "/usr/include/bits/mathinline.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) __signbitf (float __x)
{

  int __m;
  __asm ("pmovmskb %1, %0" : "=r" (__m) : "x" (__x));
  return (__m & 0x8) != 0;




}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) __signbit (double __x)
{

  int __m;
  __asm ("pmovmskb %1, %0" : "=r" (__m) : "x" (__x));
  return (__m & 0x80) != 0;




}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) __signbitl (long double __x)
{
  __extension__ union { long double __l; int __i[3]; } __u = { __l: __x };
  return (__u.__i[2] & 0x8000) != 0;
}
# 414 "/usr/include/math.h" 2 3 4
# 46 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/float.h" 1 3
# 47 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
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
# 223 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));
# 239 "/usr/include/time.h" 3 4
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
# 48 "./openjpeg/libopenjpeg/opj_includes.h" 2
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
# 391 "/usr/include/libio.h" 3 4
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
# 209 "/usr/include/stdio.h" 3 4
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
# 272 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 306 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ )) ;
# 319 "/usr/include/stdio.h" 3 4
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
# 412 "/usr/include/stdio.h" 3 4
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
# 443 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;


extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;

extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
# 471 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
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
# 826 "/usr/include/stdio.h" 3 4
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
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ));
# 913 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
# 934 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio.h" 1 3 4
# 35 "/usr/include/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}



extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return _IO_getc (stdin);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}





extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}


extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}




extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return _IO_putc (__c, stdout);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}





extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}


extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
# 124 "/usr/include/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x10) != 0);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x20) != 0);
}
# 935 "/usr/include/stdio.h" 2 3 4
# 49 "./openjpeg/libopenjpeg/opj_includes.h" 2

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
# 151 "/usr/include/ctype.h" 3 4
extern int isascii (int __c) __attribute__ ((__nothrow__ ));



extern int toascii (int __c) __attribute__ ((__nothrow__ ));



extern int _toupper (int) __attribute__ ((__nothrow__ ));
extern int _tolower (int) __attribute__ ((__nothrow__ ));
# 215 "/usr/include/ctype.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) tolower (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_tolower_loc ())[__c] : __c;
}

extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) toupper (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_toupper_loc ())[__c] : __c;
}
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
# 51 "./openjpeg/libopenjpeg/opj_includes.h" 2
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
# 52 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 92 "./openjpeg/libopenjpeg/opj_includes.h"
# 1 "./openjpeg/libopenjpeg/openjpeg.h" 1
# 83 "./openjpeg/libopenjpeg/openjpeg.h"
typedef int OPJ_BOOL;



typedef char OPJ_CHAR;
typedef float OPJ_FLOAT32;
typedef double OPJ_FLOAT64;
typedef unsigned char OPJ_BYTE;


# 1 "./openjpeg/libopenjpeg/opj_stdint.h" 1
# 29 "./openjpeg/libopenjpeg/opj_stdint.h"
# 1 "./openjpeg/libopenjpeg/opj_config.h" 1
# 30 "./openjpeg/libopenjpeg/opj_stdint.h" 2

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
# 32 "./openjpeg/libopenjpeg/opj_stdint.h" 2
# 93 "./openjpeg/libopenjpeg/openjpeg.h" 2

typedef int8_t OPJ_INT8;
typedef uint8_t OPJ_UINT8;
typedef int16_t OPJ_INT16;
typedef uint16_t OPJ_UINT16;
typedef int32_t OPJ_INT32;
typedef uint32_t OPJ_UINT32;
typedef int64_t OPJ_INT64;
typedef uint64_t OPJ_UINT64;

typedef int64_t OPJ_OFF_T;


typedef size_t OPJ_SIZE_T;
# 162 "./openjpeg/libopenjpeg/openjpeg.h"
typedef enum RSIZ_CAPABILITIES {
 OPJ_STD_RSIZ = 0,
 OPJ_CINEMA2K = 3,
 OPJ_CINEMA4K = 4,
 OPJ_MCT = 0x8100
} OPJ_RSIZ_CAPABILITIES;




typedef enum CINEMA_MODE {
 OPJ_OFF = 0,
 OPJ_CINEMA2K_24 = 1,
 OPJ_CINEMA2K_48 = 2,
 OPJ_CINEMA4K_24 = 3
}OPJ_CINEMA_MODE;




typedef enum PROG_ORDER {
 OPJ_PROG_UNKNOWN = -1,
 OPJ_LRCP = 0,
 OPJ_RLCP = 1,
 OPJ_RPCL = 2,
 OPJ_PCRL = 3,
 OPJ_CPRL = 4
} OPJ_PROG_ORDER;




typedef enum COLOR_SPACE {
 OPJ_CLRSPC_UNKNOWN = -1,
 OPJ_CLRSPC_UNSPECIFIED = 0,
 OPJ_CLRSPC_SRGB = 1,
 OPJ_CLRSPC_GRAY = 2,
 OPJ_CLRSPC_SYCC = 3,
        OPJ_CLRSPC_EYCC = 4
} OPJ_COLOR_SPACE;




typedef enum CODEC_FORMAT {
 OPJ_CODEC_UNKNOWN = -1,
 OPJ_CODEC_J2K = 0,
 OPJ_CODEC_JPT = 1,
 OPJ_CODEC_JP2 = 2
} OPJ_CODEC_FORMAT;
# 225 "./openjpeg/libopenjpeg/openjpeg.h"
typedef void (*opj_msg_callback) (const char *msg, void *client_data);
# 237 "./openjpeg/libopenjpeg/openjpeg.h"
typedef struct opj_poc {

 OPJ_UINT32 resno0, compno0;

 OPJ_UINT32 layno1, resno1, compno1;

 OPJ_UINT32 layno0, precno0, precno1;

 OPJ_PROG_ORDER prg1,prg;

 OPJ_CHAR progorder[5];

 OPJ_UINT32 tile;

 OPJ_INT32 tx0,tx1,ty0,ty1;

 OPJ_UINT32 layS, resS, compS, prcS;

 OPJ_UINT32 layE, resE, compE, prcE;

 OPJ_UINT32 txS,txE,tyS,tyE,dx,dy;

 OPJ_UINT32 lay_t, res_t, comp_t, prc_t,tx0_t,ty0_t;
} opj_poc_t;




typedef struct opj_cparameters {

 OPJ_BOOL tile_size_on;

 int cp_tx0;

 int cp_ty0;

 int cp_tdx;

 int cp_tdy;

 int cp_disto_alloc;

 int cp_fixed_alloc;

 int cp_fixed_quality;

 int *cp_matrice;

 char *cp_comment;

 int csty;

 OPJ_PROG_ORDER prog_order;

 opj_poc_t POC[32];

 OPJ_UINT32 numpocs;

 int tcp_numlayers;

 float tcp_rates[100];

 float tcp_distoratio[100];

 int numresolution;

  int cblockw_init;

 int cblockh_init;

 int mode;

 int irreversible;

 int roi_compno;

 int roi_shift;

 int res_spec;

 int prcw_init[33];

 int prch_init[33];




 char infile[4096];

 char outfile[4096];

 int index_on;

 char index[4096];

 int image_offset_x0;

 int image_offset_y0;

 int subsampling_dx;

 int subsampling_dy;

 int decod_format;

 int cod_format;






 OPJ_BOOL jpwl_epc_on;

 int jpwl_hprot_MH;

 int jpwl_hprot_TPH_tileno[16];

 int jpwl_hprot_TPH[16];

 int jpwl_pprot_tileno[16];

 int jpwl_pprot_packno[16];

 int jpwl_pprot[16];

 int jpwl_sens_size;

 int jpwl_sens_addr;

 int jpwl_sens_range;

 int jpwl_sens_MH;

 int jpwl_sens_TPH_tileno[16];

 int jpwl_sens_TPH[16];




 OPJ_CINEMA_MODE cp_cinema;

 int max_comp_size;

 OPJ_RSIZ_CAPABILITIES cp_rsiz;

 char tp_on;

 char tp_flag;

 char tcp_mct;

 OPJ_BOOL jpip_on;


 void * mct_data;
} opj_cparameters_t;






typedef struct opj_dparameters {







 OPJ_UINT32 cp_reduce;






 OPJ_UINT32 cp_layer;




 char infile[4096];

 char outfile[4096];

 int decod_format;

 int cod_format;


 OPJ_UINT32 DA_x0;

 OPJ_UINT32 DA_x1;

 OPJ_UINT32 DA_y0;

 OPJ_UINT32 DA_y1;

 OPJ_BOOL m_verbose;


 OPJ_UINT32 tile_index;

 OPJ_UINT32 nb_tile_to_decode;







 OPJ_BOOL jpwl_correct;

 int jpwl_exp_comps;

 int jpwl_max_tiles;



 unsigned int flags;

} opj_dparameters_t;





typedef void * opj_codec_t;
# 486 "./openjpeg/libopenjpeg/openjpeg.h"
typedef OPJ_SIZE_T (* opj_stream_read_fn) (void * p_buffer, OPJ_SIZE_T p_nb_bytes, void * p_user_data) ;




typedef OPJ_SIZE_T (* opj_stream_write_fn) (void * p_buffer, OPJ_SIZE_T p_nb_bytes, void * p_user_data) ;




typedef OPJ_OFF_T (* opj_stream_skip_fn) (OPJ_OFF_T p_nb_bytes, void * p_user_data) ;




typedef OPJ_BOOL (* opj_stream_seek_fn) (OPJ_OFF_T p_nb_bytes, void * p_user_data) ;




typedef void * opj_stream_t;
# 517 "./openjpeg/libopenjpeg/openjpeg.h"
typedef struct opj_image_comp {

 OPJ_UINT32 dx;

 OPJ_UINT32 dy;

 OPJ_UINT32 w;

 OPJ_UINT32 h;

 OPJ_UINT32 x0;

 OPJ_UINT32 y0;

 OPJ_UINT32 prec;

 OPJ_UINT32 bpp;

 OPJ_UINT32 sgnd;

 OPJ_UINT32 resno_decoded;

 OPJ_UINT32 factor;

 OPJ_INT32 *data;

        OPJ_UINT16 alpha;
} opj_image_comp_t;




typedef struct opj_image {

 OPJ_UINT32 x0;

 OPJ_UINT32 y0;

 OPJ_UINT32 x1;

 OPJ_UINT32 y1;

 OPJ_UINT32 numcomps;

 OPJ_COLOR_SPACE color_space;

 opj_image_comp_t *comps;

 OPJ_BYTE *icc_profile_buf;

 OPJ_UINT32 icc_profile_len;
} opj_image_t;





typedef struct opj_image_comptparm {

 OPJ_UINT32 dx;

 OPJ_UINT32 dy;

 OPJ_UINT32 w;

 OPJ_UINT32 h;

 OPJ_UINT32 x0;

 OPJ_UINT32 y0;

 OPJ_UINT32 prec;

 OPJ_UINT32 bpp;

 OPJ_UINT32 sgnd;
} opj_image_cmptparm_t;
# 606 "./openjpeg/libopenjpeg/openjpeg.h"
typedef struct opj_packet_info {

 OPJ_OFF_T start_pos;

 OPJ_OFF_T end_ph_pos;

 OPJ_OFF_T end_pos;

 double disto;
} opj_packet_info_t;






typedef struct opj_marker_info {

 unsigned short int type;

 OPJ_OFF_T pos;

 int len;
} opj_marker_info_t;





typedef struct opj_tp_info {

 int tp_start_pos;

 int tp_end_header;

 int tp_end_pos;

 int tp_start_pack;

 int tp_numpacks;
} opj_tp_info_t;




typedef struct opj_tile_info {

 double *thresh;

 int tileno;

 int start_pos;

 int end_header;

 int end_pos;

 int pw[33];

 int ph[33];

 int pdx[33];

 int pdy[33];

 opj_packet_info_t *packet;

 int numpix;

 double distotile;

 int marknum;

 opj_marker_info_t *marker;

 int maxmarknum;

 int num_tps;

 opj_tp_info_t *tp;
} opj_tile_info_t;




typedef struct opj_codestream_info {

 double D_max;

 int packno;

 int index_write;

 int image_w;

 int image_h;

 OPJ_PROG_ORDER prog;

 int tile_x;

 int tile_y;

 int tile_Ox;

 int tile_Oy;

 int tw;

 int th;

 int numcomps;

 int numlayers;

 int *numdecompos;


 int marknum;

 opj_marker_info_t *marker;

 int maxmarknum;


 int main_head_start;

 int main_head_end;

 int codestream_size;

 opj_tile_info_t *tile;
} opj_codestream_info_t;







typedef struct opj_tccp_info
{

 OPJ_UINT32 compno;

 OPJ_UINT32 csty;

 OPJ_UINT32 numresolutions;

 OPJ_UINT32 cblkw;

 OPJ_UINT32 cblkh;

 OPJ_UINT32 cblksty;

 OPJ_UINT32 qmfbid;

 OPJ_UINT32 qntsty;

 OPJ_UINT32 stepsizes_mant[(3*33 -2)];

 OPJ_UINT32 stepsizes_expn[(3*33 -2)];

 OPJ_UINT32 numgbits;

 OPJ_INT32 roishift;

 OPJ_UINT32 prcw[33];

 OPJ_UINT32 prch[33];
}
opj_tccp_info_t;




typedef struct opj_tile_v2_info {


 int tileno;

 OPJ_UINT32 csty;

 OPJ_PROG_ORDER prg;

 OPJ_UINT32 numlayers;

 OPJ_UINT32 mct;


 opj_tccp_info_t *tccp_info;

} opj_tile_info_v2_t;




typedef struct opj_codestream_info_v2 {


 OPJ_UINT32 tx0;

 OPJ_UINT32 ty0;

 OPJ_UINT32 tdx;

 OPJ_UINT32 tdy;

 OPJ_UINT32 tw;

 OPJ_UINT32 th;


 OPJ_UINT32 nbcomps;


 opj_tile_info_v2_t m_default_tile_info;


 opj_tile_info_v2_t *tile_info;

} opj_codestream_info_v2_t;





typedef struct opj_tp_index {

 OPJ_OFF_T start_pos;

 OPJ_OFF_T end_header;

 OPJ_OFF_T end_pos;

} opj_tp_index_t;




typedef struct opj_tile_index {

 OPJ_UINT32 tileno;


 OPJ_UINT32 nb_tps;

 OPJ_UINT32 current_nb_tps;

 OPJ_UINT32 current_tpsno;

 opj_tp_index_t *tp_index;



  OPJ_UINT32 marknum;

  opj_marker_info_t *marker;

  OPJ_UINT32 maxmarknum;



 OPJ_UINT32 nb_packet;

 opj_packet_info_t *packet_index;

} opj_tile_index_t;




typedef struct opj_codestream_index {

 OPJ_OFF_T main_head_start;

 OPJ_OFF_T main_head_end;


 OPJ_UINT64 codestream_size;



 OPJ_UINT32 marknum;

 opj_marker_info_t *marker;

 OPJ_UINT32 maxmarknum;



 OPJ_UINT32 nb_of_tiles;

 opj_tile_index_t *tile_index;

}opj_codestream_index_t;
# 914 "./openjpeg/libopenjpeg/openjpeg.h"
typedef struct opj_jp2_metadata {

 OPJ_INT32 not_used;

} opj_jp2_metadata_t;





typedef struct opj_jp2_index {

 OPJ_INT32 not_used;

} opj_jp2_index_t;
# 943 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) const char * opj_version(void);
# 959 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_image_t* opj_image_create(OPJ_UINT32 numcmpts, opj_image_cmptparm_t *cmptparms, OPJ_COLOR_SPACE clrspc);






__attribute__ ((visibility ("default"))) void opj_image_destroy(opj_image_t *image);
# 977 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_image_t* opj_image_tile_create(OPJ_UINT32 numcmpts, opj_image_cmptparm_t *cmptparms, OPJ_COLOR_SPACE clrspc);
# 992 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_stream_t* opj_stream_default_create(OPJ_BOOL p_is_input);
# 1002 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_stream_t* opj_stream_create(OPJ_SIZE_T p_buffer_size, OPJ_BOOL p_is_input);







__attribute__ ((visibility ("default"))) void opj_stream_destroy(opj_stream_t* p_stream) __attribute__ ((deprecated));







__attribute__ ((visibility ("default"))) void opj_stream_destroy_v3(opj_stream_t* p_stream);






__attribute__ ((visibility ("default"))) void opj_stream_set_read_function(opj_stream_t* p_stream, opj_stream_read_fn p_function);






__attribute__ ((visibility ("default"))) void opj_stream_set_write_function(opj_stream_t* p_stream, opj_stream_write_fn p_function);






__attribute__ ((visibility ("default"))) void opj_stream_set_skip_function(opj_stream_t* p_stream, opj_stream_skip_fn p_function);






__attribute__ ((visibility ("default"))) void opj_stream_set_seek_function(opj_stream_t* p_stream, opj_stream_seek_fn p_function);






__attribute__ ((visibility ("default"))) void opj_stream_set_user_data (opj_stream_t* p_stream, void * p_data);







__attribute__ ((visibility ("default"))) void opj_stream_set_user_data_length(opj_stream_t* p_stream, OPJ_UINT64 data_length);







__attribute__ ((visibility ("default"))) opj_stream_t* opj_stream_create_default_file_stream (FILE * p_file, OPJ_BOOL p_is_read_stream) __attribute__ ((deprecated));






__attribute__ ((visibility ("default"))) opj_stream_t* opj_stream_create_default_file_stream_v3 (const char *fname, OPJ_BOOL p_is_read_stream);







__attribute__ ((visibility ("default"))) opj_stream_t* opj_stream_create_file_stream (FILE * p_file, OPJ_SIZE_T p_buffer_size, OPJ_BOOL p_is_read_stream) __attribute__ ((deprecated));
# 1093 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_stream_t* opj_stream_create_file_stream_v3 (const char *fname,
                                                                     OPJ_SIZE_T p_buffer_size,
                                                                     OPJ_BOOL p_is_read_stream);
# 1108 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_set_info_handler(opj_codec_t * p_codec,
                                                   opj_msg_callback p_callback,
                                                   void * p_user_data);






__attribute__ ((visibility ("default"))) OPJ_BOOL opj_set_warning_handler(opj_codec_t * p_codec,
                                                      opj_msg_callback p_callback,
                                                      void * p_user_data);






__attribute__ ((visibility ("default"))) OPJ_BOOL opj_set_error_handler(opj_codec_t * p_codec,
                                                    opj_msg_callback p_callback,
                                                    void * p_user_data);
# 1142 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_codec_t* opj_create_decompress(OPJ_CODEC_FORMAT format);






__attribute__ ((visibility ("default"))) void opj_destroy_codec(opj_codec_t * p_codec);






__attribute__ ((visibility ("default"))) OPJ_BOOL opj_end_decompress ( opj_codec_t *p_codec,
             opj_stream_t *p_stream);






__attribute__ ((visibility ("default"))) void opj_set_default_decoder_parameters(opj_dparameters_t *parameters);
# 1175 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_setup_decoder(opj_codec_t *p_codec,
            opj_dparameters_t *parameters );
# 1187 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_read_header ( opj_stream_t *p_stream,
            opj_codec_t *p_codec,
            opj_image_t **p_image);
# 1203 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_set_decode_area( opj_codec_t *p_codec,
             opj_image_t* p_image,
             OPJ_INT32 p_start_x, OPJ_INT32 p_start_y,
             OPJ_INT32 p_end_x, OPJ_INT32 p_end_y );
# 1216 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_decode( opj_codec_t *p_decompressor,
                                            opj_stream_t *p_stream,
                                            opj_image_t *p_image);
# 1230 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_get_decoded_tile( opj_codec_t *p_codec,
             opj_stream_t *p_stream,
             opj_image_t *p_image,
             OPJ_UINT32 tile_index);
# 1242 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_set_decoded_resolution_factor(opj_codec_t *p_codec, OPJ_UINT32 res_factor);
# 1256 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_write_tile ( opj_codec_t *p_codec,
            OPJ_UINT32 p_tile_index,
            OPJ_BYTE * p_data,
            OPJ_UINT32 p_data_size,
            opj_stream_t *p_stream );
# 1283 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_read_tile_header( opj_codec_t *p_codec,
            opj_stream_t * p_stream,
            OPJ_UINT32 * p_tile_index,
            OPJ_UINT32 * p_data_size,
            OPJ_INT32 * p_tile_x0, OPJ_INT32 * p_tile_y0,
            OPJ_INT32 * p_tile_x1, OPJ_INT32 * p_tile_y1,
            OPJ_UINT32 * p_nb_comps,
            OPJ_BOOL * p_should_go_on );
# 1304 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_decode_tile_data( opj_codec_t *p_codec,
             OPJ_UINT32 p_tile_index,
             OPJ_BYTE * p_data,
             OPJ_UINT32 p_data_size,
             opj_stream_t *p_stream );
# 1317 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_codec_t* opj_create_compress(OPJ_CODEC_FORMAT format);
# 1340 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) void opj_set_default_encoder_parameters(opj_cparameters_t *parameters);







__attribute__ ((visibility ("default"))) OPJ_BOOL opj_setup_encoder(opj_codec_t *p_codec,
            opj_cparameters_t *parameters,
            opj_image_t *image);







__attribute__ ((visibility ("default"))) OPJ_BOOL opj_start_compress ( opj_codec_t *p_codec,
             opj_image_t * p_image,
             opj_stream_t *p_stream);






__attribute__ ((visibility ("default"))) OPJ_BOOL opj_end_compress (opj_codec_t *p_codec,
            opj_stream_t *p_stream);
# 1377 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_encode(opj_codec_t *p_codec,
                                         opj_stream_t *p_stream);
# 1390 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) void opj_destroy_cstr_info(opj_codestream_info_v2_t **cstr_info);
# 1401 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) void opj_dump_codec( opj_codec_t *p_codec,
           OPJ_INT32 info_flag,
           FILE* output_stream);
# 1413 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_codestream_info_v2_t* opj_get_cstr_info(opj_codec_t *p_codec);
# 1423 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_codestream_index_t * opj_get_cstr_index(opj_codec_t *p_codec);

__attribute__ ((visibility ("default"))) void opj_destroy_cstr_index(opj_codestream_index_t **p_cstr_index);
# 1436 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_jp2_metadata_t* opj_get_jp2_metadata(opj_codec_t *p_codec);
# 1446 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) opj_jp2_index_t* opj_get_jp2_index(opj_codec_t *p_codec);
# 1465 "./openjpeg/libopenjpeg/openjpeg.h"
__attribute__ ((visibility ("default"))) OPJ_BOOL opj_set_MCT( opj_cparameters_t *parameters,
                                     OPJ_FLOAT32 * pEncodingMatrix,
                                     OPJ_INT32 * p_dc_shift,
                                     OPJ_UINT32 pNbComp);
# 93 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 150 "./openjpeg/libopenjpeg/opj_includes.h"
# 1 "./openjpeg/libopenjpeg/opj_inttypes.h" 1
# 29 "./openjpeg/libopenjpeg/opj_inttypes.h"
# 1 "./openjpeg/libopenjpeg/opj_config_private.h" 1
# 30 "./openjpeg/libopenjpeg/opj_inttypes.h" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 1 3
# 26 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 3
# 1 "/usr/include/inttypes.h" 1 3 4
# 34 "/usr/include/inttypes.h" 3 4
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





extern long int __strtol_internal (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) intmax_t
__attribute__ ((__nothrow__ )) strtoimax (const char *__restrict nptr, char **__restrict endptr, int base)

{
  return __strtol_internal (nptr, endptr, base, 0);
}

extern unsigned long int __strtoul_internal (const char *__restrict __nptr,
          char ** __restrict __endptr,
          int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) uintmax_t
__attribute__ ((__nothrow__ )) strtoumax (const char *__restrict nptr, char **__restrict endptr, int base)

{
  return __strtoul_internal (nptr, endptr, base, 0);
}

extern long int __wcstol_internal (const __gwchar_t * __restrict __nptr,
       __gwchar_t **__restrict __endptr,
       int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) intmax_t
__attribute__ ((__nothrow__ )) wcstoimax (const __gwchar_t *__restrict nptr, __gwchar_t **__restrict endptr, int base)

{
  return __wcstol_internal (nptr, endptr, base, 0);
}

extern unsigned long int __wcstoul_internal (const __gwchar_t *
          __restrict __nptr,
          __gwchar_t **
          __restrict __endptr,
          int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) uintmax_t
__attribute__ ((__nothrow__ )) wcstoumax (const __gwchar_t *__restrict nptr, __gwchar_t **__restrict endptr, int base)

{
  return __wcstoul_internal (nptr, endptr, base, 0);
}
# 27 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 2 3
# 32 "./openjpeg/libopenjpeg/opj_inttypes.h" 2
# 151 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/opj_clock.h" 1
# 46 "./openjpeg/libopenjpeg/opj_clock.h"
OPJ_FLOAT64 opj_clock(void);
# 152 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/opj_malloc.h" 1
# 153 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/function_list.h" 1
# 47 "./openjpeg/libopenjpeg/function_list.h"
typedef void (*opj_procedure)(void);




typedef struct opj_procedure_list
{



 OPJ_UINT32 m_nb_procedures;



 OPJ_UINT32 m_nb_max_procedures;



 opj_procedure * m_procedures;

} opj_procedure_list_t;
# 76 "./openjpeg/libopenjpeg/function_list.h"
opj_procedure_list_t * opj_procedure_list_create(void);






void opj_procedure_list_destroy(opj_procedure_list_t * p_list);
# 93 "./openjpeg/libopenjpeg/function_list.h"
OPJ_BOOL opj_procedure_list_add_procedure (opj_procedure_list_t * p_validation_list, opj_procedure p_procedure);
# 102 "./openjpeg/libopenjpeg/function_list.h"
OPJ_UINT32 opj_procedure_list_get_nb_procedures (opj_procedure_list_t * p_validation_list);
# 113 "./openjpeg/libopenjpeg/function_list.h"
opj_procedure* opj_procedure_list_get_first_procedure (opj_procedure_list_t * p_validation_list);
# 122 "./openjpeg/libopenjpeg/function_list.h"
void opj_procedure_list_clear (opj_procedure_list_t * p_validation_list);
# 154 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/event.h" 1
# 45 "./openjpeg/libopenjpeg/event.h"
typedef struct opj_event_mgr
{

 void * m_error_data;

 void * m_warning_data;

 void * m_info_data;

 opj_msg_callback error_handler;

 opj_msg_callback warning_handler;

 opj_msg_callback info_handler;
} opj_event_mgr_t;
# 85 "./openjpeg/libopenjpeg/event.h"
OPJ_BOOL opj_event_msg(opj_event_mgr_t* event_mgr, OPJ_INT32 event_type, const char *fmt, ...);





void opj_set_default_event_handler(opj_event_mgr_t * p_manager);
# 155 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/bio.h" 1
# 35 "./openjpeg/libopenjpeg/bio.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
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
# 36 "./openjpeg/libopenjpeg/bio.h" 2
# 50 "./openjpeg/libopenjpeg/bio.h"
typedef struct opj_bio {

 OPJ_BYTE *start;

 OPJ_BYTE *end;

 OPJ_BYTE *bp;

 OPJ_UINT32 buf;

 OPJ_UINT32 ct;
} opj_bio_t;
# 70 "./openjpeg/libopenjpeg/bio.h"
opj_bio_t* opj_bio_create(void);




void opj_bio_destroy(opj_bio_t *bio);





ptrdiff_t opj_bio_numbytes(opj_bio_t *bio);






void opj_bio_init_enc(opj_bio_t *bio, OPJ_BYTE *bp, OPJ_UINT32 len);






void opj_bio_init_dec(opj_bio_t *bio, OPJ_BYTE *bp, OPJ_UINT32 len);






void opj_bio_write(opj_bio_t *bio, OPJ_UINT32 v, OPJ_UINT32 n);






OPJ_UINT32 opj_bio_read(opj_bio_t *bio, OPJ_UINT32 n);





OPJ_BOOL opj_bio_flush(opj_bio_t *bio);





OPJ_BOOL opj_bio_inalign(opj_bio_t *bio);
# 156 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/cio.h" 1
# 46 "./openjpeg/libopenjpeg/cio.h"
# 1 "./openjpeg/libopenjpeg/opj_config.h" 1
# 47 "./openjpeg/libopenjpeg/cio.h" 2
# 68 "./openjpeg/libopenjpeg/cio.h"
typedef enum
{
 opj_signed_sentinel = -1,
 opj_stream_e_output = 0x1,
 opj_stream_e_input = 0x2,
 opj_stream_e_end = 0x4,
 opj_stream_e_error = 0x8
}
opj_stream_flag ;




typedef struct opj_stream_private
{



 void * m_user_data;




 OPJ_UINT64 m_user_data_length;




 opj_stream_read_fn m_read_fn;




 opj_stream_write_fn m_write_fn;





 opj_stream_skip_fn m_skip_fn;




 opj_stream_seek_fn m_seek_fn;





 OPJ_BYTE * m_stored_data;




 OPJ_BYTE * m_current_data;




 OPJ_OFF_T (* m_opj_skip)(struct opj_stream_private * ,OPJ_OFF_T , struct opj_event_mgr *);




 OPJ_BOOL (* m_opj_seek) (struct opj_stream_private * , OPJ_OFF_T , struct opj_event_mgr *);




 OPJ_SIZE_T m_bytes_in_buffer;




 OPJ_OFF_T m_byte_offset;




 OPJ_SIZE_T m_buffer_size;




 opj_stream_flag m_status;

}
opj_stream_private_t;
# 167 "./openjpeg/libopenjpeg/cio.h"
void opj_write_bytes_BE (OPJ_BYTE * p_buffer, OPJ_UINT32 p_value, OPJ_UINT32 p_nb_bytes);
# 176 "./openjpeg/libopenjpeg/cio.h"
void opj_read_bytes_BE(const OPJ_BYTE * p_buffer, OPJ_UINT32 * p_value, OPJ_UINT32 p_nb_bytes);
# 185 "./openjpeg/libopenjpeg/cio.h"
void opj_write_bytes_LE (OPJ_BYTE * p_buffer, OPJ_UINT32 p_value, OPJ_UINT32 p_nb_bytes);
# 194 "./openjpeg/libopenjpeg/cio.h"
void opj_read_bytes_LE(const OPJ_BYTE * p_buffer, OPJ_UINT32 * p_value, OPJ_UINT32 p_nb_bytes);







void opj_write_double_LE(OPJ_BYTE * p_buffer, OPJ_FLOAT64 p_value);






void opj_write_double_BE(OPJ_BYTE * p_buffer, OPJ_FLOAT64 p_value);






void opj_read_double_LE(const OPJ_BYTE * p_buffer, OPJ_FLOAT64 * p_value);






void opj_read_double_BE(const OPJ_BYTE * p_buffer, OPJ_FLOAT64 * p_value);






void opj_read_float_LE(const OPJ_BYTE * p_buffer, OPJ_FLOAT32 * p_value);






void opj_read_float_BE(const OPJ_BYTE * p_buffer, OPJ_FLOAT32 * p_value);






void opj_write_float_LE(OPJ_BYTE * p_buffer, OPJ_FLOAT32 p_value);






void opj_write_float_BE(OPJ_BYTE * p_buffer, OPJ_FLOAT32 p_value);
# 261 "./openjpeg/libopenjpeg/cio.h"
OPJ_SIZE_T opj_stream_read_data (opj_stream_private_t * p_stream,OPJ_BYTE * p_buffer, OPJ_SIZE_T p_size, struct opj_event_mgr * p_event_mgr);
# 271 "./openjpeg/libopenjpeg/cio.h"
OPJ_SIZE_T opj_stream_write_data (opj_stream_private_t * p_stream,const OPJ_BYTE * p_buffer, OPJ_SIZE_T p_size, struct opj_event_mgr * p_event_mgr);







OPJ_BOOL opj_stream_flush (opj_stream_private_t * p_stream, struct opj_event_mgr * p_event_mgr);
# 288 "./openjpeg/libopenjpeg/cio.h"
OPJ_OFF_T opj_stream_skip (opj_stream_private_t * p_stream,OPJ_OFF_T p_size, struct opj_event_mgr * p_event_mgr);
# 297 "./openjpeg/libopenjpeg/cio.h"
OPJ_OFF_T opj_stream_tell (const opj_stream_private_t * p_stream);
# 307 "./openjpeg/libopenjpeg/cio.h"
OPJ_OFF_T opj_stream_get_number_byte_left (const opj_stream_private_t * p_stream);
# 316 "./openjpeg/libopenjpeg/cio.h"
OPJ_OFF_T opj_stream_write_skip (opj_stream_private_t * p_stream, OPJ_OFF_T p_size, struct opj_event_mgr * p_event_mgr);
# 325 "./openjpeg/libopenjpeg/cio.h"
OPJ_OFF_T opj_stream_read_skip (opj_stream_private_t * p_stream, OPJ_OFF_T p_size, struct opj_event_mgr * p_event_mgr);
# 334 "./openjpeg/libopenjpeg/cio.h"
OPJ_BOOL opj_stream_read_seek (opj_stream_private_t * p_stream, OPJ_OFF_T p_size, struct opj_event_mgr * p_event_mgr);
# 343 "./openjpeg/libopenjpeg/cio.h"
OPJ_BOOL opj_stream_write_seek (opj_stream_private_t * p_stream, OPJ_OFF_T p_size, struct opj_event_mgr * p_event_mgr);
# 352 "./openjpeg/libopenjpeg/cio.h"
OPJ_BOOL opj_stream_seek (opj_stream_private_t * p_stream, OPJ_OFF_T p_size, struct opj_event_mgr * p_event_mgr);




OPJ_BOOL opj_stream_has_seek (const opj_stream_private_t * p_stream);




OPJ_SIZE_T opj_stream_default_read (void * p_buffer, OPJ_SIZE_T p_nb_bytes, void * p_user_data);




OPJ_SIZE_T opj_stream_default_write (void * p_buffer, OPJ_SIZE_T p_nb_bytes, void * p_user_data);




OPJ_OFF_T opj_stream_default_skip (OPJ_OFF_T p_nb_bytes, void * p_user_data);




OPJ_BOOL opj_stream_default_seek (OPJ_OFF_T p_nb_bytes, void * p_user_data);
# 157 "./openjpeg/libopenjpeg/opj_includes.h" 2

# 1 "./openjpeg/libopenjpeg/image.h" 1
# 35 "./openjpeg/libopenjpeg/image.h"
struct opj_image;
struct opj_cp;
# 46 "./openjpeg/libopenjpeg/image.h"
opj_image_t* opj_image_create0(void);
# 56 "./openjpeg/libopenjpeg/image.h"
void opj_image_comp_header_update(opj_image_t * p_image, const struct opj_cp* p_cp);

void opj_copy_image_header(const opj_image_t* p_image_src, opj_image_t* p_image_dest);
# 159 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/invert.h" 1
# 51 "./openjpeg/libopenjpeg/invert.h"
OPJ_BOOL opj_matrix_inversion_f(OPJ_FLOAT32 * pSrcMatrix,
                                OPJ_FLOAT32 * pDestMatrix,
                                OPJ_UINT32 nb_compo);
# 160 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/j2k.h" 1
# 112 "./openjpeg/libopenjpeg/j2k.h"
typedef enum J2K_STATUS {
 J2K_STATE_NONE = 0x0000,
 J2K_STATE_MHSOC = 0x0001,
 J2K_STATE_MHSIZ = 0x0002,
 J2K_STATE_MH = 0x0004,
 J2K_STATE_TPHSOT = 0x0008,
 J2K_STATE_TPH = 0x0010,
 J2K_STATE_MT = 0x0020,
 J2K_STATE_NEOC = 0x0040,

 J2K_STATE_EOC = 0x0100,
 J2K_STATE_ERR = 0x8000
} J2K_STATUS;




typedef enum MCT_ELEMENT_TYPE
{
 MCT_TYPE_INT16 = 0,
 MCT_TYPE_INT32 = 1,
 MCT_TYPE_FLOAT = 2,
 MCT_TYPE_DOUBLE = 3
} J2K_MCT_ELEMENT_TYPE;




typedef enum MCT_ARRAY_TYPE
{
 MCT_TYPE_DEPENDENCY = 0,
 MCT_TYPE_DECORRELATION = 1,
 MCT_TYPE_OFFSET = 2
} J2K_MCT_ARRAY_TYPE;






typedef enum T2_MODE {
 THRESH_CALC = 0,
 FINAL_PASS = 1
}J2K_T2_MODE;




typedef struct opj_stepsize {

 OPJ_INT32 expn;

 OPJ_INT32 mant;
} opj_stepsize_t;




typedef struct opj_tccp
{

 OPJ_UINT32 csty;

 OPJ_UINT32 numresolutions;

 OPJ_UINT32 cblkw;

 OPJ_UINT32 cblkh;

 OPJ_UINT32 cblksty;

 OPJ_UINT32 qmfbid;

 OPJ_UINT32 qntsty;

 opj_stepsize_t stepsizes[(3*33 -2)];

 OPJ_UINT32 numgbits;

 OPJ_INT32 roishift;

 OPJ_UINT32 prcw[33];

 OPJ_UINT32 prch[33];

 OPJ_INT32 m_dc_level_shift;
}
opj_tccp_t;






typedef struct opj_mct_data
{
 J2K_MCT_ELEMENT_TYPE m_element_type;
 J2K_MCT_ARRAY_TYPE m_array_type;
 OPJ_UINT32 m_index;
 OPJ_BYTE * m_data;
 OPJ_UINT32 m_data_size;
}
opj_mct_data_t;




typedef struct opj_simple_mcc_decorrelation_data
{
 OPJ_UINT32 m_index;
 OPJ_UINT32 m_nb_comps;
 opj_mct_data_t * m_decorrelation_array;
 opj_mct_data_t * m_offset_array;
 OPJ_UINT32 m_is_irreversible : 1;
}
opj_simple_mcc_decorrelation_data_t;






typedef struct opj_tcp
{

 OPJ_UINT32 csty;

 OPJ_PROG_ORDER prg;

 OPJ_UINT32 numlayers;
 OPJ_UINT32 num_layers_to_decode;

 OPJ_UINT32 mct;

 OPJ_FLOAT32 rates[100];

 OPJ_UINT32 numpocs;

 opj_poc_t pocs[32];

 OPJ_BYTE *ppt_data;

 OPJ_BYTE *ppt_buffer;

 OPJ_UINT32 ppt_data_size;

 OPJ_UINT32 ppt_len;

 OPJ_FLOAT32 distoratio[100];

 opj_tccp_t *tccps;

 OPJ_UINT32 m_nb_tile_parts;

 OPJ_BYTE * m_data;

 OPJ_UINT32 m_data_size;

 OPJ_FLOAT64 * mct_norms;

 OPJ_FLOAT32 * m_mct_decoding_matrix;

 OPJ_FLOAT32 * m_mct_coding_matrix;

 opj_mct_data_t * m_mct_records;

 OPJ_UINT32 m_nb_mct_records;

 OPJ_UINT32 m_nb_max_mct_records;

 opj_simple_mcc_decorrelation_data_t * m_mcc_records;

 OPJ_UINT32 m_nb_mcc_records;

 OPJ_UINT32 m_nb_max_mcc_records;




 OPJ_UINT32 ppt : 1;

 OPJ_UINT32 POC : 1;
} opj_tcp_t;




typedef struct opj_encoding_param
{

 OPJ_CINEMA_MODE m_cinema;

 OPJ_UINT32 m_max_comp_size;

 OPJ_INT32 m_tp_pos;

 OPJ_INT32 *m_matrice;

 OPJ_BYTE m_tp_flag;

 OPJ_UINT32 m_disto_alloc : 1;

 OPJ_UINT32 m_fixed_alloc : 1;

 OPJ_UINT32 m_fixed_quality : 1;

 OPJ_UINT32 m_tp_on : 1;
}
opj_encoding_param_t;

typedef struct opj_decoding_param
{

 OPJ_UINT32 m_reduce;

 OPJ_UINT32 m_layer;
}
opj_decoding_param_t;





typedef struct opj_cp
{



 OPJ_RSIZ_CAPABILITIES rsiz;

 OPJ_UINT32 tx0;

 OPJ_UINT32 ty0;

 OPJ_UINT32 tdx;

 OPJ_UINT32 tdy;

 OPJ_CHAR *comment;

 OPJ_UINT32 tw;

 OPJ_UINT32 th;


 OPJ_BYTE *ppm_data;

 OPJ_UINT32 ppm_len;

 OPJ_UINT32 ppm_data_read;

 OPJ_BYTE *ppm_data_current;


 OPJ_BYTE *ppm_buffer;

 OPJ_BYTE *ppm_data_first;

 OPJ_UINT32 ppm_data_size;

 OPJ_INT32 ppm_store;

 OPJ_INT32 ppm_previous;


 opj_tcp_t *tcps;

 union
 {
  opj_decoding_param_t m_dec;
  opj_encoding_param_t m_enc;
 }
 m_specific_param;
# 433 "./openjpeg/libopenjpeg/j2k.h"
 OPJ_UINT32 ppm : 1;

 OPJ_UINT32 m_is_decoder : 1;

} opj_cp_t;


typedef struct opj_j2k_dec
{

 OPJ_UINT32 m_state;



 opj_tcp_t *m_default_tcp;
 OPJ_BYTE *m_header_data;
 OPJ_UINT32 m_header_data_size;

 OPJ_UINT32 m_sot_length;

 OPJ_UINT32 m_start_tile_x;
 OPJ_UINT32 m_start_tile_y;
 OPJ_UINT32 m_end_tile_x;
 OPJ_UINT32 m_end_tile_y;



 OPJ_UINT32 m_DA_x0;
 OPJ_UINT32 m_DA_y0;
 OPJ_UINT32 m_DA_x1;
 OPJ_UINT32 m_DA_y1;


 OPJ_INT32 m_tile_ind_to_dec;

 OPJ_OFF_T m_last_sot_read_pos;






 OPJ_BOOL m_last_tile_part;

 OPJ_UINT32 m_can_decode : 1;
 OPJ_UINT32 m_discard_tiles : 1;
 OPJ_UINT32 m_skip_data : 1;

} opj_j2k_dec_t;

typedef struct opj_j2k_enc
{

 OPJ_UINT32 m_current_poc_tile_part_number;


 OPJ_UINT32 m_current_tile_part_number;





    OPJ_OFF_T m_tlm_start;



 OPJ_BYTE * m_tlm_sot_offsets_buffer;



 OPJ_BYTE * m_tlm_sot_offsets_current;



 OPJ_UINT32 m_total_tile_parts;


 OPJ_BYTE * m_encoded_tile_data;


 OPJ_UINT32 m_encoded_tile_size;


 OPJ_BYTE * m_header_tile_data;


 OPJ_UINT32 m_header_tile_data_size;


} opj_j2k_enc_t;



struct opj_tcd;



typedef struct opj_j2k
{

 OPJ_BOOL m_is_decoder;


 union
 {
  opj_j2k_dec_t m_decoder;
  opj_j2k_enc_t m_encoder;
 }
 m_specific_param;


 opj_image_t* m_private_image;


 opj_image_t* m_output_image;


 opj_cp_t m_cp;


 opj_procedure_list_t * m_procedure_list;


 opj_procedure_list_t * m_validation_list;


 opj_codestream_index_t *cstr_index;


 OPJ_UINT32 m_current_tile_number;


 struct opj_tcd * m_tcd;

}
opj_j2k_t;
# 583 "./openjpeg/libopenjpeg/j2k.h"
void opj_j2k_setup_decoder(opj_j2k_t *j2k, opj_dparameters_t *parameters);






opj_j2k_t* opj_j2k_create_compress(void);


void opj_j2k_setup_encoder( opj_j2k_t *p_j2k,
          opj_cparameters_t *parameters,
          opj_image_t *image,
          opj_event_mgr_t * p_manager);




char *opj_j2k_convert_progression_order(OPJ_PROG_ORDER prg_order);
# 612 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_end_decompress(opj_j2k_t *j2k,
                                opj_stream_private_t *p_stream,
                                opj_event_mgr_t * p_manager);
# 626 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_read_header( opj_stream_private_t *p_stream,
                                opj_j2k_t* p_j2k,
                                opj_image_t** p_image,
                                opj_event_mgr_t* p_manager );







void opj_j2k_destroy (opj_j2k_t *p_j2k);






void j2k_destroy_cstr_index (opj_codestream_index_t *p_cstr_ind);
# 655 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_decode_tile ( opj_j2k_t * p_j2k,
                                OPJ_UINT32 p_tile_index,
                                OPJ_BYTE * p_data,
                                OPJ_UINT32 p_data_size,
                                opj_stream_private_t *p_stream,
                                opj_event_mgr_t * p_manager );
# 676 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_read_tile_header ( opj_j2k_t * p_j2k,
                                    OPJ_UINT32 * p_tile_index,
                                    OPJ_UINT32 * p_data_size,
                                    OPJ_INT32 * p_tile_x0,
                                    OPJ_INT32 * p_tile_y0,
                                    OPJ_INT32 * p_tile_x1,
                                    OPJ_INT32 * p_tile_y1,
                                    OPJ_UINT32 * p_nb_comps,
                                    OPJ_BOOL * p_go_on,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 702 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_set_decode_area( opj_j2k_t *p_j2k,
            opj_image_t* p_image,
            OPJ_INT32 p_start_x, OPJ_INT32 p_start_y,
            OPJ_INT32 p_end_x, OPJ_INT32 p_end_y,
            opj_event_mgr_t * p_manager );






opj_j2k_t* opj_j2k_create_decompress(void);
# 724 "./openjpeg/libopenjpeg/j2k.h"
void j2k_dump (opj_j2k_t* p_j2k, OPJ_INT32 flag, FILE* out_stream);
# 735 "./openjpeg/libopenjpeg/j2k.h"
void j2k_dump_image_header(opj_image_t* image, OPJ_BOOL dev_dump_flag, FILE* out_stream);
# 744 "./openjpeg/libopenjpeg/j2k.h"
void j2k_dump_image_comp_header(opj_image_comp_t* comp, OPJ_BOOL dev_dump_flag, FILE* out_stream);
# 753 "./openjpeg/libopenjpeg/j2k.h"
opj_codestream_info_v2_t* j2k_get_cstr_info(opj_j2k_t* p_j2k);
# 762 "./openjpeg/libopenjpeg/j2k.h"
opj_codestream_index_t* j2k_get_cstr_index(opj_j2k_t* p_j2k);
# 772 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_decode(opj_j2k_t *j2k,
                        opj_stream_private_t *p_stream,
                        opj_image_t *p_image,
                        opj_event_mgr_t *p_manager);


OPJ_BOOL opj_j2k_get_tile( opj_j2k_t *p_j2k,
          opj_stream_private_t *p_stream,
          opj_image_t* p_image,
          opj_event_mgr_t * p_manager,
          OPJ_UINT32 tile_index );

OPJ_BOOL opj_j2k_set_decoded_resolution_factor(opj_j2k_t *p_j2k,
                                               OPJ_UINT32 res_factor,
                                               opj_event_mgr_t * p_manager);
# 798 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_write_tile ( opj_j2k_t * p_j2k,
           OPJ_UINT32 p_tile_index,
           OPJ_BYTE * p_data,
           OPJ_UINT32 p_data_size,
           opj_stream_private_t *p_stream,
           opj_event_mgr_t * p_manager );




OPJ_BOOL opj_j2k_encode( opj_j2k_t * p_j2k,
          opj_stream_private_t *cio,
          opj_event_mgr_t * p_manager );
# 822 "./openjpeg/libopenjpeg/j2k.h"
OPJ_BOOL opj_j2k_start_compress(opj_j2k_t *p_j2k,
           opj_stream_private_t *p_stream,
           opj_image_t * p_image,
           opj_event_mgr_t * p_manager);





OPJ_BOOL opj_j2k_end_compress( opj_j2k_t *p_j2k,
           opj_stream_private_t *cio,
           opj_event_mgr_t * p_manager);

OPJ_BOOL opj_j2k_setup_mct_encoding (opj_tcp_t * p_tcp, opj_image_t * p_image);
# 161 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/jp2.h" 1
# 68 "./openjpeg/libopenjpeg/jp2.h"
typedef enum
{
  JP2_STATE_NONE = 0x0,
  JP2_STATE_SIGNATURE = 0x1,
  JP2_STATE_FILE_TYPE = 0x2,
  JP2_STATE_HEADER = 0x4,
  JP2_STATE_CODESTREAM = 0x8,
  JP2_STATE_END_CODESTREAM = 0x10,
  JP2_STATE_UNKNOWN = 0x7fffffff
}
JP2_STATE;

typedef enum
{
  JP2_IMG_STATE_NONE = 0x0,
  JP2_IMG_STATE_UNKNOWN = 0x7fffffff
}
JP2_IMG_STATE;




typedef struct opj_jp2_cdef_info
{
    OPJ_UINT16 cn, typ, asoc;
} opj_jp2_cdef_info_t;




typedef struct opj_jp2_cdef
{
    opj_jp2_cdef_info_t *info;
    OPJ_UINT16 n;
} opj_jp2_cdef_t;




typedef struct opj_jp2_cmap_comp
{
    OPJ_UINT16 cmp;
    OPJ_BYTE mtyp, pcol;
} opj_jp2_cmap_comp_t;




typedef struct opj_jp2_pclr
{
    OPJ_UINT32 *entries;
    OPJ_BYTE *channel_sign;
    OPJ_BYTE *channel_size;
    opj_jp2_cmap_comp_t *cmap;
    OPJ_UINT16 nr_entries;
    OPJ_BYTE nr_channels;
} opj_jp2_pclr_t;




typedef struct opj_jp2_color
{
    OPJ_BYTE *icc_profile_buf;
    OPJ_UINT32 icc_profile_len;

    opj_jp2_cdef_t *jp2_cdef;
    opj_jp2_pclr_t *jp2_pclr;
    OPJ_BYTE jp2_has_colr;
} opj_jp2_color_t;




typedef struct opj_jp2_comps {
  OPJ_UINT32 depth;
  OPJ_UINT32 sgnd;
  OPJ_UINT32 bpcc;
} opj_jp2_comps_t;




typedef struct opj_jp2
{

  opj_j2k_t *j2k;

  struct opj_procedure_list * m_validation_list;

  struct opj_procedure_list * m_procedure_list;


  OPJ_UINT32 w;

  OPJ_UINT32 h;

  OPJ_UINT32 numcomps;
  OPJ_UINT32 bpc;
  OPJ_UINT32 C;
  OPJ_UINT32 UnkC;
  OPJ_UINT32 IPR;
  OPJ_UINT32 meth;
  OPJ_UINT32 approx;
  OPJ_UINT32 enumcs;
  OPJ_UINT32 precedence;
  OPJ_UINT32 brand;
  OPJ_UINT32 minversion;
  OPJ_UINT32 numcl;
  OPJ_UINT32 *cl;
  opj_jp2_comps_t *comps;





    OPJ_OFF_T j2k_codestream_offset;
    OPJ_OFF_T jpip_iptr_offset;
 OPJ_BOOL jpip_on;
  OPJ_UINT32 jp2_state;
  OPJ_UINT32 jp2_img_state;

  opj_jp2_color_t color;

    OPJ_BOOL ignore_pclr_cmap_cdef;
}
opj_jp2_t;




typedef struct opj_jp2_box {
    OPJ_UINT32 length;
    OPJ_UINT32 type;
    OPJ_INT32 init_pos;
} opj_jp2_box_t;

typedef struct opj_jp2_header_handler
{

  OPJ_UINT32 id;

  OPJ_BOOL (*handler) ( opj_jp2_t *jp2,
                            OPJ_BYTE *p_header_data,
                            OPJ_UINT32 p_header_size,
                            opj_event_mgr_t * p_manager);
}
opj_jp2_header_handler_t;


typedef struct opj_jp2_img_header_writer_handler
{

  OPJ_BYTE* (*handler) (opj_jp2_t *jp2, OPJ_UINT32 * p_data_size);

  OPJ_BYTE* m_data;

  OPJ_UINT32 m_size;
}
opj_jp2_img_header_writer_handler_t;
# 242 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_write_jp2h(opj_jp2_t *jp2,
                            opj_stream_private_t *stream,
                            opj_event_mgr_t * p_manager );







void opj_jp2_setup_decoder(opj_jp2_t *jp2, opj_dparameters_t *parameters);
# 263 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_decode(opj_jp2_t *jp2,
                        opj_stream_private_t *p_stream,
            opj_image_t* p_image,
            opj_event_mgr_t * p_manager);
# 277 "./openjpeg/libopenjpeg/jp2.h"
void opj_jp2_setup_encoder( opj_jp2_t *jp2,
                            opj_cparameters_t *parameters,
                            opj_image_t *image,
                            opj_event_mgr_t * p_manager);
# 289 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_encode( opj_jp2_t *jp2,
              opj_stream_private_t *stream,
              opj_event_mgr_t * p_manager);
# 304 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_start_compress(opj_jp2_t *jp2,
                                opj_stream_private_t *stream,
                                opj_image_t * p_image,
                                opj_event_mgr_t * p_manager);






OPJ_BOOL opj_jp2_end_compress( opj_jp2_t *jp2,
                  opj_stream_private_t *cio,
                  opj_event_mgr_t * p_manager);







OPJ_BOOL opj_jp2_end_decompress(opj_jp2_t *jp2,
                                opj_stream_private_t *cio,
                                opj_event_mgr_t * p_manager);
# 338 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_read_header( opj_stream_private_t *p_stream,
                                opj_jp2_t *jp2,
                                opj_image_t ** p_image,
                                opj_event_mgr_t * p_manager );
# 357 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_read_tile_header ( opj_jp2_t * p_jp2,
                                    OPJ_UINT32 * p_tile_index,
                                    OPJ_UINT32 * p_data_size,
                                    OPJ_INT32 * p_tile_x0,
                                    OPJ_INT32 * p_tile_y0,
                                    OPJ_INT32 * p_tile_x1,
                                    OPJ_INT32 * p_tile_y1,
                                    OPJ_UINT32 * p_nb_comps,
                                    OPJ_BOOL * p_go_on,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 379 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_write_tile ( opj_jp2_t *p_jp2,
                    OPJ_UINT32 p_tile_index,
                    OPJ_BYTE * p_data,
                    OPJ_UINT32 p_data_size,
                    opj_stream_private_t *p_stream,
                    opj_event_mgr_t * p_manager );
# 397 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_decode_tile ( opj_jp2_t * p_jp2,
                                OPJ_UINT32 p_tile_index,
                                OPJ_BYTE * p_data,
                                OPJ_UINT32 p_data_size,
                                opj_stream_private_t *p_stream,
                                opj_event_mgr_t * p_manager );






opj_jp2_t* opj_jp2_create (OPJ_BOOL p_is_decoder);





void opj_jp2_destroy(opj_jp2_t *jp2);
# 431 "./openjpeg/libopenjpeg/jp2.h"
OPJ_BOOL opj_jp2_set_decode_area( opj_jp2_t *p_jp2,
                    opj_image_t* p_image,
                    OPJ_INT32 p_start_x, OPJ_INT32 p_start_y,
                    OPJ_INT32 p_end_x, OPJ_INT32 p_end_y,
                    opj_event_mgr_t * p_manager );




OPJ_BOOL opj_jp2_get_tile( opj_jp2_t *p_jp2,
                            opj_stream_private_t *p_stream,
                            opj_image_t* p_image,
                            opj_event_mgr_t * p_manager,
                            OPJ_UINT32 tile_index );





OPJ_BOOL opj_jp2_set_decoded_resolution_factor(opj_jp2_t *p_jp2,
                                               OPJ_UINT32 res_factor,
                                               opj_event_mgr_t * p_manager);
# 464 "./openjpeg/libopenjpeg/jp2.h"
void jp2_dump (opj_jp2_t* p_jp2, OPJ_INT32 flag, FILE* out_stream);
# 473 "./openjpeg/libopenjpeg/jp2.h"
opj_codestream_info_v2_t* jp2_get_cstr_info(opj_jp2_t* p_jp2);
# 482 "./openjpeg/libopenjpeg/jp2.h"
opj_codestream_index_t* jp2_get_cstr_index(opj_jp2_t* p_jp2);
# 162 "./openjpeg/libopenjpeg/opj_includes.h" 2

# 1 "./openjpeg/libopenjpeg/mqc.h" 1
# 49 "./openjpeg/libopenjpeg/mqc.h"
typedef struct opj_mqc_state {

 OPJ_UINT32 qeval;

 OPJ_UINT32 mps;

 struct opj_mqc_state *nmps;

 struct opj_mqc_state *nlps;
} opj_mqc_state_t;






typedef struct opj_mqc {
 OPJ_UINT32 c;
 OPJ_UINT32 a;
 OPJ_UINT32 ct;
 OPJ_BYTE *bp;
 OPJ_BYTE *start;
 OPJ_BYTE *end;
 opj_mqc_state_t *ctxs[19];
 opj_mqc_state_t **curctx;



} opj_mqc_t;
# 86 "./openjpeg/libopenjpeg/mqc.h"
opj_mqc_t* opj_mqc_create(void);




void opj_mqc_destroy(opj_mqc_t *mqc);





OPJ_UINT32 opj_mqc_numbytes(opj_mqc_t *mqc);





void opj_mqc_resetstates(opj_mqc_t *mqc);







void opj_mqc_setstate(opj_mqc_t *mqc, OPJ_UINT32 ctxno, OPJ_UINT32 msb, OPJ_INT32 prob);





void opj_mqc_init_enc(opj_mqc_t *mqc, OPJ_BYTE *bp);
# 129 "./openjpeg/libopenjpeg/mqc.h"
void opj_mqc_encode(opj_mqc_t *mqc, OPJ_UINT32 d);




void opj_mqc_flush(opj_mqc_t *mqc);






void opj_mqc_bypass_init_enc(opj_mqc_t *mqc);







void opj_mqc_bypass_enc(opj_mqc_t *mqc, OPJ_UINT32 d);






OPJ_UINT32 opj_mqc_bypass_flush_enc(opj_mqc_t *mqc);




void opj_mqc_reset_enc(opj_mqc_t *mqc);





OPJ_UINT32 opj_mqc_restart_enc(opj_mqc_t *mqc);




void opj_mqc_restart_init_enc(opj_mqc_t *mqc);




void opj_mqc_erterm_enc(opj_mqc_t *mqc);




void opj_mqc_segmark_enc(opj_mqc_t *mqc);






OPJ_BOOL opj_mqc_init_dec(opj_mqc_t *mqc, OPJ_BYTE *bp, OPJ_UINT32 len);





OPJ_INT32 opj_mqc_decode(opj_mqc_t * const mqc);
# 164 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/raw.h" 1
# 46 "./openjpeg/libopenjpeg/raw.h"
typedef struct opj_raw {

 OPJ_BYTE c;

 OPJ_UINT32 ct;

 OPJ_UINT32 lenmax;

 OPJ_UINT32 len;

 OPJ_BYTE *bp;

 OPJ_BYTE *start;

 OPJ_BYTE *end;
} opj_raw_t;
# 70 "./openjpeg/libopenjpeg/raw.h"
opj_raw_t* opj_raw_create(void);




void opj_raw_destroy(opj_raw_t *raw);





OPJ_UINT32 opj_raw_numbytes(opj_raw_t *raw);






void opj_raw_init_dec(opj_raw_t *raw, OPJ_BYTE *bp, OPJ_UINT32 len);





OPJ_UINT32 opj_raw_decode(opj_raw_t *raw);
# 165 "./openjpeg/libopenjpeg/opj_includes.h" 2


# 1 "./openjpeg/libopenjpeg/pi.h" 1
# 49 "./openjpeg/libopenjpeg/pi.h"
typedef struct opj_pi_resolution {
  OPJ_UINT32 pdx, pdy;
  OPJ_UINT32 pw, ph;
} opj_pi_resolution_t;




typedef struct opj_pi_comp {
  OPJ_UINT32 dx, dy;

  OPJ_UINT32 numresolutions;
  opj_pi_resolution_t *resolutions;
} opj_pi_comp_t;




typedef struct opj_pi_iterator {

  OPJ_BYTE tp_on;

  OPJ_INT16 *include;

  OPJ_UINT32 step_l;

  OPJ_UINT32 step_r;

  OPJ_UINT32 step_c;

  OPJ_UINT32 step_p;

  OPJ_UINT32 compno;

  OPJ_UINT32 resno;

  OPJ_UINT32 precno;

  OPJ_UINT32 layno;

  OPJ_BOOL first;

  opj_poc_t poc;

  OPJ_UINT32 numcomps;

  opj_pi_comp_t *comps;

  OPJ_INT32 tx0, ty0, tx1, ty1;

  OPJ_INT32 x, y;

  OPJ_UINT32 dx, dy;
} opj_pi_iterator_t;
# 117 "./openjpeg/libopenjpeg/pi.h"
opj_pi_iterator_t *opj_pi_initialise_encode(const opj_image_t *image,
                                            opj_cp_t *cp,
                                            OPJ_UINT32 tileno,
                                            J2K_T2_MODE t2_mode);
# 129 "./openjpeg/libopenjpeg/pi.h"
void opj_pi_update_encoding_parameters( const opj_image_t *p_image,
                                        opj_cp_t *p_cp,
                                        OPJ_UINT32 p_tile_no );
# 143 "./openjpeg/libopenjpeg/pi.h"
void opj_pi_create_encode( opj_pi_iterator_t *pi,
                            opj_cp_t *cp,
                            OPJ_UINT32 tileno,
                            OPJ_UINT32 pino,
                            OPJ_UINT32 tpnum,
                            OPJ_INT32 tppos,
                            J2K_T2_MODE t2_mode);
# 159 "./openjpeg/libopenjpeg/pi.h"
opj_pi_iterator_t *opj_pi_create_decode(opj_image_t * image,
                                        opj_cp_t * cp,
                                        OPJ_UINT32 tileno);






void opj_pi_destroy(opj_pi_iterator_t *p_pi,
                    OPJ_UINT32 p_nb_elements);






OPJ_BOOL opj_pi_next(opj_pi_iterator_t * pi);
# 168 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/tgt.h" 1
# 51 "./openjpeg/libopenjpeg/tgt.h"
typedef struct opj_tgt_node {
    struct opj_tgt_node *parent;
    OPJ_INT32 value;
    OPJ_INT32 low;
    OPJ_UINT32 known;
} opj_tgt_node_t;




typedef struct opj_tgt_tree
{
 OPJ_UINT32 numleafsh;
 OPJ_UINT32 numleafsv;
 OPJ_UINT32 numnodes;
 opj_tgt_node_t *nodes;
 OPJ_UINT32 nodes_size;
} opj_tgt_tree_t;
# 80 "./openjpeg/libopenjpeg/tgt.h"
opj_tgt_tree_t *opj_tgt_create(OPJ_UINT32 numleafsh, OPJ_UINT32 numleafsv);
# 90 "./openjpeg/libopenjpeg/tgt.h"
opj_tgt_tree_t *opj_tgt_init(opj_tgt_tree_t * p_tree,
                             OPJ_UINT32 p_num_leafs_h,
                             OPJ_UINT32 p_num_leafs_v);




void opj_tgt_destroy(opj_tgt_tree_t *tree);




void opj_tgt_reset(opj_tgt_tree_t *tree);






void opj_tgt_setvalue(opj_tgt_tree_t *tree,
                      OPJ_UINT32 leafno,
                      OPJ_INT32 value);







void opj_tgt_encode(opj_bio_t *bio,
                    opj_tgt_tree_t *tree,
                    OPJ_UINT32 leafno,
                    OPJ_INT32 threshold);
# 131 "./openjpeg/libopenjpeg/tgt.h"
OPJ_UINT32 opj_tgt_decode(opj_bio_t *bio,
                          opj_tgt_tree_t *tree,
                          OPJ_UINT32 leafno,
                          OPJ_INT32 threshold);
# 169 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/tcd.h" 1
# 49 "./openjpeg/libopenjpeg/tcd.h"
typedef struct opj_tcd_seg {
 OPJ_BYTE ** data;
 OPJ_UINT32 dataindex;
 OPJ_UINT32 numpasses;
 OPJ_UINT32 real_num_passes;
 OPJ_UINT32 len;
 OPJ_UINT32 maxpasses;
 OPJ_UINT32 numnewpasses;
 OPJ_UINT32 newlen;
} opj_tcd_seg_t;




typedef struct opj_tcd_pass {
 OPJ_UINT32 rate;
 OPJ_FLOAT64 distortiondec;
 OPJ_UINT32 len;
 OPJ_UINT32 term : 1;
} opj_tcd_pass_t;




typedef struct opj_tcd_layer {
 OPJ_UINT32 numpasses;
 OPJ_UINT32 len;
 OPJ_FLOAT64 disto;
 OPJ_BYTE *data;
} opj_tcd_layer_t;




typedef struct opj_tcd_cblk_enc {
 OPJ_BYTE* data;
 opj_tcd_layer_t* layers;
 opj_tcd_pass_t* passes;
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 numbps;
 OPJ_UINT32 numlenbits;
 OPJ_UINT32 numpasses;
 OPJ_UINT32 numpassesinlayers;
 OPJ_UINT32 totalpasses;
} opj_tcd_cblk_enc_t;


typedef struct opj_tcd_cblk_dec {
 OPJ_BYTE * data;
 opj_tcd_seg_t* segs;
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 numbps;
 OPJ_UINT32 numlenbits;
    OPJ_UINT32 data_max_size;
 OPJ_UINT32 data_current_size;
 OPJ_UINT32 numnewpasses;
 OPJ_UINT32 numsegs;
 OPJ_UINT32 real_num_segs;
 OPJ_UINT32 m_current_max_segs;
} opj_tcd_cblk_dec_t;




typedef struct opj_tcd_precinct {
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 cw, ch;
 union{
  opj_tcd_cblk_enc_t* enc;
  opj_tcd_cblk_dec_t* dec;
 } cblks;
 OPJ_UINT32 block_size;
 opj_tgt_tree_t *incltree;
 opj_tgt_tree_t *imsbtree;
} opj_tcd_precinct_t;




typedef struct opj_tcd_band {
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 bandno;
 opj_tcd_precinct_t *precincts;
 OPJ_UINT32 precincts_data_size;
 OPJ_INT32 numbps;
 OPJ_FLOAT32 stepsize;
} opj_tcd_band_t;




typedef struct opj_tcd_resolution {
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 pw, ph;
 OPJ_UINT32 numbands;
 opj_tcd_band_t bands[3];
} opj_tcd_resolution_t;




typedef struct opj_tcd_tilecomp
{
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 numresolutions;
 OPJ_UINT32 minimum_num_resolutions;
 opj_tcd_resolution_t *resolutions;
 OPJ_UINT32 resolutions_size;
 OPJ_INT32 *data;
 OPJ_UINT32 data_size;
 OPJ_INT32 numpix;
} opj_tcd_tilecomp_t;





typedef struct opj_tcd_tile {
 OPJ_INT32 x0, y0, x1, y1;
 OPJ_UINT32 numcomps;
 opj_tcd_tilecomp_t *comps;
 OPJ_INT32 numpix;
 OPJ_FLOAT64 distotile;
 OPJ_FLOAT64 distolayer[100];
 OPJ_UINT32 packno;
} opj_tcd_tile_t;




typedef struct opj_tcd_image
{
 opj_tcd_tile_t *tiles;
}
opj_tcd_image_t;





typedef struct opj_tcd
{

 OPJ_INT32 tp_pos;

 OPJ_UINT32 tp_num;

 OPJ_UINT32 cur_tp_num;

 OPJ_UINT32 cur_totnum_tp;

 OPJ_UINT32 cur_pino;

 opj_tcd_image_t *tcd_image;

 opj_image_t *image;

 opj_cp_t *cp;

 opj_tcp_t *tcp;

 OPJ_UINT32 tcd_tileno;

 OPJ_UINT32 m_is_decoder : 1;
} opj_tcd_t;
# 229 "./openjpeg/libopenjpeg/tcd.h"
opj_tcd_t* opj_tcd_create(OPJ_BOOL p_is_decoder);





void opj_tcd_destroy(opj_tcd_t *tcd);
# 245 "./openjpeg/libopenjpeg/tcd.h"
OPJ_BOOL opj_tcd_init( opj_tcd_t *p_tcd,
      opj_image_t * p_image,
      opj_cp_t * p_cp );
# 258 "./openjpeg/libopenjpeg/tcd.h"
OPJ_BOOL opj_tcd_init_decode_tile(opj_tcd_t *p_tcd, OPJ_UINT32 p_tile_no);

void opj_tcd_makelayer_fixed(opj_tcd_t *tcd, OPJ_UINT32 layno, OPJ_UINT32 final);

void opj_tcd_rateallocate_fixed(opj_tcd_t *tcd);

void opj_tcd_makelayer( opj_tcd_t *tcd,
      OPJ_UINT32 layno,
      OPJ_FLOAT64 thresh,
      OPJ_UINT32 final);

OPJ_BOOL opj_tcd_rateallocate( opj_tcd_t *tcd,
        OPJ_BYTE *dest,
        OPJ_UINT32 * p_data_written,
        OPJ_UINT32 len,
        opj_codestream_info_t *cstr_info);




OPJ_UINT32 opj_tcd_get_decoded_tile_size (opj_tcd_t *p_tcd );
# 290 "./openjpeg/libopenjpeg/tcd.h"
OPJ_BOOL opj_tcd_encode_tile( opj_tcd_t *p_tcd,
           OPJ_UINT32 p_tile_no,
           OPJ_BYTE *p_dest,
           OPJ_UINT32 * p_data_written,
           OPJ_UINT32 p_len,
           struct opj_codestream_info *p_cstr_info);
# 306 "./openjpeg/libopenjpeg/tcd.h"
OPJ_BOOL opj_tcd_decode_tile( opj_tcd_t *tcd,
           OPJ_BYTE *src,
           OPJ_UINT32 len,
           OPJ_UINT32 tileno,
           opj_codestream_index_t *cstr_info);





OPJ_BOOL opj_tcd_update_tile_data ( opj_tcd_t *p_tcd,
            OPJ_BYTE * p_dest,
            OPJ_UINT32 p_dest_length );




OPJ_UINT32 opj_tcd_get_encoded_tile_size ( opj_tcd_t *p_tcd );
# 333 "./openjpeg/libopenjpeg/tcd.h"
OPJ_BOOL opj_tcd_init_encode_tile ( opj_tcd_t *p_tcd,
            OPJ_UINT32 p_tile_no );




OPJ_BOOL opj_tcd_copy_tile_data (opj_tcd_t *p_tcd,
                                 OPJ_BYTE * p_src,
                                 OPJ_UINT32 p_src_length );
# 170 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/t1.h" 1
# 88 "./openjpeg/libopenjpeg/t1.h"
typedef OPJ_INT16 opj_flag_t;




typedef struct opj_t1 {


 opj_mqc_t *mqc;

 opj_raw_t *raw;

    OPJ_INT32 *data;
 opj_flag_t *flags;
 OPJ_UINT32 w;
 OPJ_UINT32 h;
 OPJ_UINT32 datasize;
 OPJ_UINT32 flagssize;
 OPJ_UINT32 flags_stride;
} opj_t1_t;
# 122 "./openjpeg/libopenjpeg/t1.h"
OPJ_BOOL opj_t1_encode_cblks( opj_t1_t *t1,
                                opj_tcd_tile_t *tile,
                                opj_tcp_t *tcp,
                                const OPJ_FLOAT64 * mct_norms);







OPJ_BOOL opj_t1_decode_cblks( opj_t1_t* t1,
                                opj_tcd_tilecomp_t* tilec,
                                opj_tccp_t* tccp);
# 144 "./openjpeg/libopenjpeg/t1.h"
opj_t1_t* opj_t1_create(void);






void opj_t1_destroy(opj_t1_t *p_t1);
# 171 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/dwt.h" 1
# 55 "./openjpeg/libopenjpeg/dwt.h"
OPJ_BOOL opj_dwt_encode(opj_tcd_tilecomp_t * tilec);







OPJ_BOOL opj_dwt_decode(opj_tcd_tilecomp_t* tilec, OPJ_UINT32 numres);






OPJ_UINT32 opj_dwt_getgain(OPJ_UINT32 orient) ;






OPJ_FLOAT64 opj_dwt_getnorm(OPJ_UINT32 level, OPJ_UINT32 orient);





OPJ_BOOL opj_dwt_encode_real(opj_tcd_tilecomp_t * tilec);






OPJ_BOOL opj_dwt_decode_real(opj_tcd_tilecomp_t* __restrict__ tilec, OPJ_UINT32 numres);






OPJ_UINT32 opj_dwt_getgain_real(OPJ_UINT32 orient);






OPJ_FLOAT64 opj_dwt_getnorm_real(OPJ_UINT32 level, OPJ_UINT32 orient);





void opj_dwt_calc_explicit_stepsizes(opj_tccp_t * tccp, OPJ_UINT32 prec);
# 172 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/t2.h" 1
# 47 "./openjpeg/libopenjpeg/t2.h"
typedef struct opj_t2 {


 opj_image_t *image;

 opj_cp_t *cp;
} opj_t2_t;
# 74 "./openjpeg/libopenjpeg/t2.h"
OPJ_BOOL opj_t2_encode_packets( opj_t2_t* t2,
        OPJ_UINT32 tileno,
        opj_tcd_tile_t *tile,
        OPJ_UINT32 maxlayers,
        OPJ_BYTE *dest,
        OPJ_UINT32 * p_data_written,
        OPJ_UINT32 len,
        opj_codestream_info_t *cstr_info,
        OPJ_UINT32 tpnum,
        OPJ_INT32 tppos,
        OPJ_UINT32 pino,
        J2K_T2_MODE t2_mode);
# 99 "./openjpeg/libopenjpeg/t2.h"
OPJ_BOOL opj_t2_decode_packets( opj_t2_t *t2,
                                OPJ_UINT32 tileno,
                                opj_tcd_tile_t *tile,
                                OPJ_BYTE *src,
                                OPJ_UINT32 * p_data_read,
                                OPJ_UINT32 len,
                                opj_codestream_index_t *cstr_info);
# 114 "./openjpeg/libopenjpeg/t2.h"
opj_t2_t* opj_t2_create(opj_image_t *p_image, opj_cp_t *p_cp);





void opj_t2_destroy(opj_t2_t *t2);
# 173 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/mct.h" 1
# 57 "./openjpeg/libopenjpeg/mct.h"
void opj_mct_encode(OPJ_INT32 *c0, OPJ_INT32 *c1, OPJ_INT32 *c2, OPJ_UINT32 n);







void opj_mct_decode(OPJ_INT32 *c0, OPJ_INT32 *c1, OPJ_INT32 *c2, OPJ_UINT32 n);





OPJ_FLOAT64 opj_mct_getnorm(OPJ_UINT32 compno);
# 80 "./openjpeg/libopenjpeg/mct.h"
void opj_mct_encode_real(OPJ_INT32 *c0, OPJ_INT32 *c1, OPJ_INT32 *c2, OPJ_UINT32 n);







void opj_mct_decode_real(OPJ_FLOAT32* c0, OPJ_FLOAT32* c1, OPJ_FLOAT32* c2, OPJ_UINT32 n);





OPJ_FLOAT64 opj_mct_getnorm_real(OPJ_UINT32 compno);
# 105 "./openjpeg/libopenjpeg/mct.h"
OPJ_BOOL opj_mct_encode_custom(
        OPJ_BYTE * p_coding_data,
        OPJ_UINT32 n,
        OPJ_BYTE ** p_data,
        OPJ_UINT32 p_nb_comp,
        OPJ_UINT32 is_signed);
# 120 "./openjpeg/libopenjpeg/mct.h"
OPJ_BOOL opj_mct_decode_custom(
        OPJ_BYTE * pDecodingData,
        OPJ_UINT32 n,
        OPJ_BYTE ** pData,
        OPJ_UINT32 pNbComp,
        OPJ_UINT32 isSigned);







void opj_calculate_norms( OPJ_FLOAT64 * pNorms,
                            OPJ_UINT32 p_nb_comps,
                            OPJ_FLOAT32 * pMatrix);



const OPJ_FLOAT64 * opj_mct_get_mct_norms (void);



const OPJ_FLOAT64 * opj_mct_get_mct_norms_real (void);
# 174 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/opj_intmath.h" 1
# 50 "./openjpeg/libopenjpeg/opj_intmath.h"
static __inline__ OPJ_INT32 opj_int_min(OPJ_INT32 a, OPJ_INT32 b) {
 return a < b ? a : b;
}





static __inline__ OPJ_UINT32 opj_uint_min(OPJ_UINT32 a, OPJ_UINT32 b) {
 return a < b ? a : b;
}





static __inline__ OPJ_INT32 opj_int_max(OPJ_INT32 a, OPJ_INT32 b) {
 return (a > b) ? a : b;
}





static __inline__ OPJ_UINT32 opj_uint_max(OPJ_UINT32 a, OPJ_UINT32 b) {
 return (a > b) ? a : b;
}
# 87 "./openjpeg/libopenjpeg/opj_intmath.h"
static __inline__ OPJ_INT32 opj_int_clamp(OPJ_INT32 a, OPJ_INT32 min, OPJ_INT32 max) {
 if (a < min)
  return min;
 if (a > max)
  return max;
 return a;
}



static __inline__ OPJ_INT32 opj_int_abs(OPJ_INT32 a) {
 return a < 0 ? -a : a;
}




static __inline__ OPJ_INT32 opj_int_ceildiv(OPJ_INT32 a, OPJ_INT32 b) {
 return (a + b - 1) / b;
}





static __inline__ OPJ_UINT32 opj_uint_ceildiv(OPJ_UINT32 a, OPJ_UINT32 b) {
 return (a + b - 1) / b;
}





static __inline__ OPJ_INT32 opj_int_ceildivpow2(OPJ_INT32 a, OPJ_INT32 b) {
 return (a + (int64_t)(1 << b) - 1) >> b;
}




static __inline__ OPJ_INT32 opj_int_floordivpow2(OPJ_INT32 a, OPJ_INT32 b) {
 return a >> b;
}




static __inline__ OPJ_INT32 opj_int_floorlog2(OPJ_INT32 a) {
 OPJ_INT32 l;
 for (l = 0; a > 1; l++) {
  a >>= 1;
 }
 return l;
}




static __inline__ OPJ_UINT32 opj_uint_floorlog2(OPJ_UINT32 a) {
 OPJ_UINT32 l;
 for (l = 0; a > 1; ++l)
 {
  a >>= 1;
 }
 return l;
}







static __inline__ OPJ_INT32 opj_int_fix_mul(OPJ_INT32 a, OPJ_INT32 b) {
    OPJ_INT64 temp = (OPJ_INT64) a * (OPJ_INT64) b ;
    temp += temp & 4096;
    return (OPJ_INT32) (temp >> 13) ;
}
# 175 "./openjpeg/libopenjpeg/opj_includes.h" 2


# 1 "./openjpeg/libopenjpeg/cidx_manager.h" 1
# 53 "./openjpeg/libopenjpeg/cidx_manager.h"
int opj_write_cidx( int offset, opj_stream_private_t *cio, opj_codestream_info_t cstr_info, int j2klen,
              opj_event_mgr_t * p_manager );
# 65 "./openjpeg/libopenjpeg/cidx_manager.h"
OPJ_BOOL opj_check_EPHuse( int coff, opj_marker_info_t *markers, int marknum, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );
# 178 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 1 "./openjpeg/libopenjpeg/indexbox_manager.h" 1
# 68 "./openjpeg/libopenjpeg/indexbox_manager.h"
int opj_write_tpix( int coff, opj_codestream_info_t cstr_info, int j2klen, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );
# 80 "./openjpeg/libopenjpeg/indexbox_manager.h"
int opj_write_thix( int coff, opj_codestream_info_t cstr_info, opj_stream_private_t *cio, opj_event_mgr_t * p_manager );
# 93 "./openjpeg/libopenjpeg/indexbox_manager.h"
int opj_write_ppix( int coff, opj_codestream_info_t cstr_info, OPJ_BOOL EPHused, int j2klen, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );
# 107 "./openjpeg/libopenjpeg/indexbox_manager.h"
int opj_write_phix( int coff, opj_codestream_info_t cstr_info, OPJ_BOOL EPHused, int j2klen, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );
# 119 "./openjpeg/libopenjpeg/indexbox_manager.h"
void opj_write_manf(int second,
                    int v,
                    opj_jp2_box_t *box,
                    opj_stream_private_t *cio,
                    opj_event_mgr_t * p_manager );
# 133 "./openjpeg/libopenjpeg/indexbox_manager.h"
int opj_write_mainmhix( int coff, opj_codestream_info_t cstr_info, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );

int opj_write_phixfaix( int coff, int compno, opj_codestream_info_t cstr_info, OPJ_BOOL EPHused, int j2klen, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );

int opj_write_ppixfaix( int coff, int compno, opj_codestream_info_t cstr_info, OPJ_BOOL EPHused, int j2klen, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );

int opj_write_tilemhix( int coff, opj_codestream_info_t cstr_info, int tileno, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );

int opj_write_tpixfaix( int coff, int compno, opj_codestream_info_t cstr_info, int j2klen, opj_stream_private_t *cio,
              opj_event_mgr_t * p_manager );
# 179 "./openjpeg/libopenjpeg/opj_includes.h" 2
# 38 "./openjpeg/libopenjpeg/j2k.c" 2
# 48 "./openjpeg/libopenjpeg/j2k.c"
static void opj_j2k_setup_header_reading (opj_j2k_t *p_j2k);




static OPJ_BOOL opj_j2k_read_header_procedure( opj_j2k_t *p_j2k,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager);
# 66 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_encoding_validation ( opj_j2k_t * p_j2k,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager );
# 79 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_decoding_validation ( opj_j2k_t * p_j2k,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager );





static void opj_j2k_setup_encoding_validation (opj_j2k_t *p_j2k);





static void opj_j2k_setup_decoding_validation (opj_j2k_t *p_j2k);





static void opj_j2k_setup_end_compress (opj_j2k_t *p_j2k);
# 110 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_mct_validation (opj_j2k_t * p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager );




static OPJ_BOOL opj_j2k_build_decoder ( opj_j2k_t * p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager );



static OPJ_BOOL opj_j2k_build_encoder ( opj_j2k_t * p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager );
# 134 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_create_tcd( opj_j2k_t *p_j2k,
                                                                    opj_stream_private_t *p_stream,
                                                                    opj_event_mgr_t * p_manager );
# 148 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_exec ( opj_j2k_t * p_j2k,
                            opj_procedure_list_t * p_procedure_list,
                            opj_stream_private_t *p_stream,
                            opj_event_mgr_t * p_manager);
# 160 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_update_rates( opj_j2k_t *p_j2k,
                                                                            opj_stream_private_t *p_stream,
                                                                            opj_event_mgr_t * p_manager );





static OPJ_BOOL opj_j2k_copy_default_tcp_and_create_tcd ( opj_j2k_t * p_j2k,
                                                            opj_stream_private_t *p_stream,
                                                            opj_event_mgr_t * p_manager );




static OPJ_BOOL opj_j2k_destroy_header_memory ( opj_j2k_t * p_j2k,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager );
# 186 "./openjpeg/libopenjpeg/j2k.c"
static const struct opj_dec_memory_marker_handler * opj_j2k_get_marker_handler (OPJ_UINT32 p_id);






static void opj_j2k_tcp_destroy (opj_tcp_t *p_tcp);






static void opj_j2k_tcp_data_destroy (opj_tcp_t *p_tcp);






static void opj_j2k_cp_destroy (opj_cp_t *p_cp);
# 221 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_SPCod_SPCoc( opj_j2k_t *p_j2k,
                                                                                    OPJ_UINT32 p_tile_no,
                                                                                    OPJ_UINT32 p_comp_no,
                                                                                    OPJ_BYTE * p_data,
                                                                                    OPJ_UINT32 * p_header_size,
                                                                                    opj_event_mgr_t * p_manager );
# 237 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_UINT32 opj_j2k_get_SPCod_SPCoc_size (opj_j2k_t *p_j2k,
                                                                                            OPJ_UINT32 p_tile_no,
                                                                                            OPJ_UINT32 p_comp_no );
# 249 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_SPCod_SPCoc( opj_j2k_t *p_j2k,
                                            OPJ_UINT32 compno,
                                            OPJ_BYTE * p_header_data,
                                            OPJ_UINT32 * p_header_size,
                                            opj_event_mgr_t * p_manager );
# 264 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_UINT32 opj_j2k_get_SQcd_SQcc_size ( opj_j2k_t *p_j2k,
                                                                                    OPJ_UINT32 p_tile_no,
                                                                                    OPJ_UINT32 p_comp_no );
# 279 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_SQcd_SQcc(opj_j2k_t *p_j2k,
                                                                            OPJ_UINT32 p_tile_no,
                                                                            OPJ_UINT32 p_comp_no,
                                                                            OPJ_BYTE * p_data,
                                                                            OPJ_UINT32 * p_header_size,
                                                                            opj_event_mgr_t * p_manager);




static void opj_j2k_update_tlm ( opj_j2k_t * p_j2k, OPJ_UINT32 p_tile_part_size);
# 301 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_SQcd_SQcc( opj_j2k_t *p_j2k,
                                        OPJ_UINT32 compno,
                                        OPJ_BYTE * p_header_data,
                                        OPJ_UINT32 * p_header_size,
                                        opj_event_mgr_t * p_manager );






static void opj_j2k_copy_tile_component_parameters( opj_j2k_t *p_j2k );






static void opj_j2k_copy_tile_quantization_parameters( opj_j2k_t *p_j2k );




static OPJ_BOOL opj_j2k_decode_tiles ( opj_j2k_t *p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager);

static OPJ_BOOL opj_j2k_pre_write_tile ( opj_j2k_t * p_j2k,
                                                                             OPJ_UINT32 p_tile_index,
                                                                             opj_stream_private_t *p_stream,
                                                                             opj_event_mgr_t * p_manager );

static OPJ_BOOL opj_j2k_update_image_data (opj_tcd_t * p_tcd, OPJ_BYTE * p_data, opj_image_t* p_output_image);

static void opj_j2k_get_tile_data (opj_tcd_t * p_tcd, OPJ_BYTE * p_data);

static OPJ_BOOL opj_j2k_post_write_tile (opj_j2k_t * p_j2k,
                                                                             OPJ_BYTE * p_data,
                                                                             OPJ_UINT32 p_data_size,
                                                                             opj_stream_private_t *p_stream,
                                                                             opj_event_mgr_t * p_manager );





static void opj_j2k_setup_header_writing (opj_j2k_t *p_j2k);

static OPJ_BOOL opj_j2k_write_first_tile_part( opj_j2k_t *p_j2k,
                                                                                            OPJ_BYTE * p_data,
                                                                                            OPJ_UINT32 * p_data_written,
                                                                                            OPJ_UINT32 p_total_data_size,
                                                                                            opj_stream_private_t *p_stream,
                                                                                            struct opj_event_mgr * p_manager );

static OPJ_BOOL opj_j2k_write_all_tile_parts( opj_j2k_t *p_j2k,
                                                                                            OPJ_BYTE * p_data,
                                                                                            OPJ_UINT32 * p_data_written,
                                                                                            OPJ_UINT32 p_total_data_size,
                                                                                            opj_stream_private_t *p_stream,
                                                                                            struct opj_event_mgr * p_manager );
# 370 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_get_end_header( opj_j2k_t *p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager );

static OPJ_BOOL opj_j2k_allocate_tile_element_cstr_index(opj_j2k_t *p_j2k);
# 389 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_soc( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                            opj_event_mgr_t * p_manager );







static OPJ_BOOL opj_j2k_read_soc( opj_j2k_t *p_j2k,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 410 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_siz( opj_j2k_t *p_j2k,
                                                                opj_stream_private_t *p_stream,
                                                                opj_event_mgr_t * p_manager );
# 421 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_siz(opj_j2k_t *p_j2k,
                                 OPJ_BYTE * p_header_data,
                                 OPJ_UINT32 p_header_size,
                                 opj_event_mgr_t * p_manager);
# 433 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_com( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 444 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_com ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );







static OPJ_BOOL opj_j2k_write_cod( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 466 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_cod ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager);
# 479 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_coc( opj_j2k_t *p_j2k,
                                                                OPJ_UINT32 p_comp_no,
                                                                opj_stream_private_t *p_stream,
                                                                opj_event_mgr_t * p_manager );
# 492 "./openjpeg/libopenjpeg/j2k.c"
static void opj_j2k_write_coc_in_memory(opj_j2k_t *p_j2k,
                                                                            OPJ_UINT32 p_comp_no,
                                                                            OPJ_BYTE * p_data,
                                                                            OPJ_UINT32 * p_data_written,
                                                                            opj_event_mgr_t * p_manager );






static OPJ_UINT32 opj_j2k_get_max_coc_size(opj_j2k_t *p_j2k);
# 512 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_coc ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );
# 524 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_qcd( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 535 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_qcd ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );
# 547 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_qcc( opj_j2k_t *p_j2k,
                                                                        OPJ_UINT32 p_comp_no,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 561 "./openjpeg/libopenjpeg/j2k.c"
static void opj_j2k_write_qcc_in_memory(opj_j2k_t *p_j2k,
                                                                            OPJ_UINT32 p_comp_no,
                                                                            OPJ_BYTE * p_data,
                                                                            OPJ_UINT32 * p_data_written,
                                                                            opj_event_mgr_t * p_manager );




static OPJ_UINT32 opj_j2k_get_max_qcc_size (opj_j2k_t *p_j2k);
# 579 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_qcc( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager);







static OPJ_BOOL opj_j2k_write_poc( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 601 "./openjpeg/libopenjpeg/j2k.c"
static void opj_j2k_write_poc_in_memory(opj_j2k_t *p_j2k,
                                                                            OPJ_BYTE * p_data,
                                                                            OPJ_UINT32 * p_data_written,
                                                                            opj_event_mgr_t * p_manager );



static OPJ_UINT32 opj_j2k_get_max_poc_size(opj_j2k_t *p_j2k);
# 618 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_poc ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );




static OPJ_UINT32 opj_j2k_get_max_toc_size (opj_j2k_t *p_j2k);






static OPJ_UINT32 opj_j2k_get_specific_header_sizes(opj_j2k_t *p_j2k);
# 643 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_crg ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );
# 655 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_tlm ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager);
# 667 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_updated_tlm( opj_j2k_t *p_j2k,
                                            opj_stream_private_t *p_stream,
                                            opj_event_mgr_t * p_manager );
# 679 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_plm ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager);
# 691 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_plt ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );
# 713 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL j2k_read_ppm_v3 (
                                                opj_j2k_t *p_j2k,
                                                OPJ_BYTE * p_header_data,
                                                OPJ_UINT32 p_header_size,
                                                opj_event_mgr_t * p_manager );
# 727 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_ppt ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );







static OPJ_BOOL opj_j2k_write_tlm( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 751 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_sot( opj_j2k_t *p_j2k,
                                                                        OPJ_BYTE * p_data,
                                                                        OPJ_UINT32 * p_data_written,
                                                                        const opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 765 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_sot ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager );
# 780 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_sod( opj_j2k_t *p_j2k,
                                                                        opj_tcd_t * p_tile_coder,
                                                                        OPJ_BYTE * p_data,
                                                                        OPJ_UINT32 * p_data_written,
                                                                        OPJ_UINT32 p_total_data_size,
                                                                        const opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 795 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_sod( opj_j2k_t *p_j2k,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );

void opj_j2k_update_tlm (opj_j2k_t * p_j2k, OPJ_UINT32 p_tile_part_size )
{
        opj_write_bytes_LE(p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current,p_j2k->m_current_tile_number,1);
        ++p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current;

        opj_write_bytes_LE(p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current,p_tile_part_size,4);
        p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current += 4;
}
# 818 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_rgn( opj_j2k_t *p_j2k,
                                    OPJ_UINT32 p_tile_no,
                                    OPJ_UINT32 p_comp_no,
                                    OPJ_UINT32 nb_comps,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 833 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_rgn (opj_j2k_t *p_j2k,
                                  OPJ_BYTE * p_header_data,
                                  OPJ_UINT32 p_header_size,
                                  opj_event_mgr_t * p_manager );
# 845 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_eoc( opj_j2k_t *p_j2k,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 856 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_eoc ( opj_j2k_t *p_j2k,
                                                                opj_stream_private_t *p_stream,
                                                                opj_event_mgr_t * p_manager );
# 867 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_mct_data_group( opj_j2k_t *p_j2k,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager );
# 878 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_init_info( opj_j2k_t *p_j2k,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 889 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_add_mhmarker(opj_codestream_index_t *cstr_index, OPJ_UINT32 type, OPJ_OFF_T pos, OPJ_UINT32 len) ;
# 898 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_add_tlmarker(OPJ_UINT32 tileno, opj_codestream_index_t *cstr_index, OPJ_UINT32 type, OPJ_OFF_T pos, OPJ_UINT32 len);
# 910 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_unk( opj_j2k_t *p_j2k,
                                  opj_stream_private_t *p_stream,
                                  OPJ_UINT32 *output_marker,
                                  opj_event_mgr_t * p_manager );
# 923 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_mct_record( opj_j2k_t *p_j2k,
                                                                                    opj_mct_data_t * p_mct_record,
                                            opj_stream_private_t *p_stream,
                                            opj_event_mgr_t * p_manager );
# 936 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_mct ( opj_j2k_t *p_j2k,
                                                                    OPJ_BYTE * p_header_data,
                                                                    OPJ_UINT32 p_header_size,
                                                                    opj_event_mgr_t * p_manager );
# 949 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_mcc_record( opj_j2k_t *p_j2k,
                                            opj_simple_mcc_decorrelation_data_t * p_mcc_record,
                                            opj_stream_private_t *p_stream,
                                            opj_event_mgr_t * p_manager );
# 962 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_mcc ( opj_j2k_t *p_j2k,
                                                                    OPJ_BYTE * p_header_data,
                                                                    OPJ_UINT32 p_header_size,
                                                                    opj_event_mgr_t * p_manager );
# 974 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_mco( opj_j2k_t *p_j2k,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager );
# 986 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_mco ( opj_j2k_t *p_j2k,
                                                                    OPJ_BYTE * p_header_data,
                                                                    OPJ_UINT32 p_header_size,
                                                                    opj_event_mgr_t * p_manager );

static OPJ_BOOL opj_j2k_add_mct(opj_tcp_t * p_tcp, opj_image_t * p_image, OPJ_UINT32 p_index);

static void opj_j2k_read_int16_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_read_int32_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_read_float32_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_read_float64_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);

static void opj_j2k_read_int16_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_read_int32_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_read_float32_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_read_float64_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);

static void opj_j2k_write_float_to_int16 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_write_float_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_write_float_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
static void opj_j2k_write_float_to_float64 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);
# 1015 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_end_encoding( opj_j2k_t *p_j2k,
                                                                            opj_stream_private_t *p_stream,
                                                                            opj_event_mgr_t * p_manager );
# 1026 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_cbd( opj_j2k_t *p_j2k,
                                                                    opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 1037 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_cbd ( opj_j2k_t *p_j2k,
                                                                OPJ_BYTE * p_header_data,
                                                                OPJ_UINT32 p_header_size,
                                                                opj_event_mgr_t * p_manager);
# 1049 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_image_components( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 1060 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_regions( opj_j2k_t *p_j2k,
                                                                        opj_stream_private_t *p_stream,
                                                                        opj_event_mgr_t * p_manager );
# 1071 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_write_epc( opj_j2k_t *p_j2k,
                                                                    opj_stream_private_t *p_stream,
                                                                    opj_event_mgr_t * p_manager );
# 1088 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_check_poc_val( const opj_poc_t *p_pocs,
                                                                            OPJ_UINT32 p_nb_pocs,
                                                                            OPJ_UINT32 p_nb_resolutions,
                                                                            OPJ_UINT32 numcomps,
                                                                            OPJ_UINT32 numlayers,
                                                                            opj_event_mgr_t * p_manager);
# 1104 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_UINT32 opj_j2k_get_num_tp( opj_cp_t *cp, OPJ_UINT32 pino, OPJ_UINT32 tileno);
# 1118 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_calculate_tp( opj_j2k_t *p_j2k,
                                                                            opj_cp_t *cp,
                                                                            OPJ_UINT32 * p_nb_tiles,
                                                                            opj_image_t *image,
                                                                            opj_event_mgr_t * p_manager);

static void opj_j2k_dump_MH_info(opj_j2k_t* p_j2k, FILE* out_stream);

static void opj_j2k_dump_MH_index(opj_j2k_t* p_j2k, FILE* out_stream);

static opj_codestream_index_t* opj_j2k_create_cstr_index(void);

static OPJ_FLOAT32 opj_j2k_get_tp_stride (opj_tcp_t * p_tcp);

static OPJ_FLOAT32 opj_j2k_get_default_stride (opj_tcp_t * p_tcp);






typedef struct j2k_prog_order{
        OPJ_PROG_ORDER enum_prog;
        char str_prog[5];
}j2k_prog_order_t;

j2k_prog_order_t j2k_prog_order_list[] = {
        {OPJ_CPRL, "CPRL"},
        {OPJ_LRCP, "LRCP"},
        {OPJ_PCRL, "PCRL"},
        {OPJ_RLCP, "RLCP"},
        {OPJ_RPCL, "RPCL"},
        {(OPJ_PROG_ORDER)-1, ""}
};




static const OPJ_UINT32 MCT_ELEMENT_SIZE [] =
{
        2,
        4,
        4,
        8
};

typedef void (* opj_j2k_mct_function) (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem);

const opj_j2k_mct_function j2k_mct_read_functions_to_float [] =
{
        opj_j2k_read_int16_to_float,
        opj_j2k_read_int32_to_float,
        opj_j2k_read_float32_to_float,
        opj_j2k_read_float64_to_float
};

const opj_j2k_mct_function j2k_mct_read_functions_to_int32 [] =
{
        opj_j2k_read_int16_to_int32,
        opj_j2k_read_int32_to_int32,
        opj_j2k_read_float32_to_int32,
        opj_j2k_read_float64_to_int32
};

const opj_j2k_mct_function j2k_mct_write_functions_from_float [] =
{
        opj_j2k_write_float_to_int16,
        opj_j2k_write_float_to_int32,
        opj_j2k_write_float_to_float,
        opj_j2k_write_float_to_float64
};

typedef struct opj_dec_memory_marker_handler
{

        OPJ_UINT32 id;

        OPJ_UINT32 states;

        OPJ_BOOL (*handler) ( opj_j2k_t *p_j2k,
                            OPJ_BYTE * p_header_data,
                            OPJ_UINT32 p_header_size,
                            opj_event_mgr_t * p_manager );
}
opj_dec_memory_marker_handler_t;

const opj_dec_memory_marker_handler_t j2k_memory_marker_handler_tab [] =
{
  {0xff90, J2K_STATE_MH | J2K_STATE_TPHSOT, opj_j2k_read_sot},
  {0xff52, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_cod},
  {0xff53, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_coc},
  {0xff5e, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_rgn},
  {0xff5c, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_qcd},
  {0xff5d, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_qcc},
  {0xff5f, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_poc},
  {0xff51, J2K_STATE_MHSIZ, opj_j2k_read_siz},
  {0xff55, J2K_STATE_MH, opj_j2k_read_tlm},
  {0xff57, J2K_STATE_MH, opj_j2k_read_plm},
  {0xff58, J2K_STATE_TPH, opj_j2k_read_plt},
  {0xff60, J2K_STATE_MH, j2k_read_ppm_v3},
  {0xff61, J2K_STATE_TPH, opj_j2k_read_ppt},
  {0xff91, 0, 0},
  {0xff63, J2K_STATE_MH, opj_j2k_read_crg},
  {0xff64, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_com},
  {0xff74, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_mct},
  {0xff78, J2K_STATE_MH , opj_j2k_read_cbd},
  {0xff75, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_mcc},
  {0xff77, J2K_STATE_MH | J2K_STATE_TPH, opj_j2k_read_mco},
# 1238 "./openjpeg/libopenjpeg/j2k.c"
  {0, J2K_STATE_MH | J2K_STATE_TPH, 0}
};

void opj_j2k_read_int16_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_FLOAT32 * l_dest_data = (OPJ_FLOAT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_UINT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_bytes_LE(l_src_data,&l_temp,2);

                l_src_data+=sizeof(OPJ_INT16);

                *(l_dest_data++) = (OPJ_FLOAT32) l_temp;
        }
}

void opj_j2k_read_int32_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_FLOAT32 * l_dest_data = (OPJ_FLOAT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_UINT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_bytes_LE(l_src_data,&l_temp,4);

                l_src_data+=sizeof(OPJ_INT32);

                *(l_dest_data++) = (OPJ_FLOAT32) l_temp;
        }
}

void opj_j2k_read_float32_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_FLOAT32 * l_dest_data = (OPJ_FLOAT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_FLOAT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_float_LE(l_src_data,&l_temp);

                l_src_data+=sizeof(OPJ_FLOAT32);

                *(l_dest_data++) = l_temp;
        }
}

void opj_j2k_read_float64_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_FLOAT32 * l_dest_data = (OPJ_FLOAT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_FLOAT64 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_double_LE(l_src_data,&l_temp);

                l_src_data+=sizeof(OPJ_FLOAT64);

                *(l_dest_data++) = (OPJ_FLOAT32) l_temp;
        }
}

void opj_j2k_read_int16_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_INT32 * l_dest_data = (OPJ_INT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_UINT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_bytes_LE(l_src_data,&l_temp,2);

                l_src_data+=sizeof(OPJ_INT16);

                *(l_dest_data++) = (OPJ_INT32) l_temp;
        }
}

void opj_j2k_read_int32_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_INT32 * l_dest_data = (OPJ_INT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_UINT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_bytes_LE(l_src_data,&l_temp,4);

                l_src_data+=sizeof(OPJ_INT32);

                *(l_dest_data++) = (OPJ_INT32) l_temp;
        }
}

void opj_j2k_read_float32_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_INT32 * l_dest_data = (OPJ_INT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_FLOAT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_float_LE(l_src_data,&l_temp);

                l_src_data+=sizeof(OPJ_FLOAT32);

                *(l_dest_data++) = (OPJ_INT32) l_temp;
        }
}

void opj_j2k_read_float64_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
        OPJ_INT32 * l_dest_data = (OPJ_INT32 *) p_dest_data;
        OPJ_UINT32 i;
        OPJ_FLOAT64 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                opj_read_double_LE(l_src_data,&l_temp);

                l_src_data+=sizeof(OPJ_FLOAT64);

                *(l_dest_data++) = (OPJ_INT32) l_temp;
        }
}

void opj_j2k_write_float_to_int16 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_dest_data = (OPJ_BYTE *) p_dest_data;
        OPJ_FLOAT32 * l_src_data = (OPJ_FLOAT32 *) p_src_data;
        OPJ_UINT32 i;
        OPJ_UINT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                l_temp = (OPJ_UINT32) *(l_src_data++);

                opj_write_bytes_LE(l_dest_data,l_temp,sizeof(OPJ_INT16));

                l_dest_data+=sizeof(OPJ_INT16);
        }
}

void opj_j2k_write_float_to_int32 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_dest_data = (OPJ_BYTE *) p_dest_data;
        OPJ_FLOAT32 * l_src_data = (OPJ_FLOAT32 *) p_src_data;
        OPJ_UINT32 i;
        OPJ_UINT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                l_temp = (OPJ_UINT32) *(l_src_data++);

                opj_write_bytes_LE(l_dest_data,l_temp,sizeof(OPJ_INT32));

                l_dest_data+=sizeof(OPJ_INT32);
        }
}

void opj_j2k_write_float_to_float (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_dest_data = (OPJ_BYTE *) p_dest_data;
        OPJ_FLOAT32 * l_src_data = (OPJ_FLOAT32 *) p_src_data;
        OPJ_UINT32 i;
        OPJ_FLOAT32 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                l_temp = (OPJ_FLOAT32) *(l_src_data++);

                opj_write_float_LE(l_dest_data,l_temp);

                l_dest_data+=sizeof(OPJ_FLOAT32);
        }
}

void opj_j2k_write_float_to_float64 (const void * p_src_data, void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
        OPJ_BYTE * l_dest_data = (OPJ_BYTE *) p_dest_data;
        OPJ_FLOAT32 * l_src_data = (OPJ_FLOAT32 *) p_src_data;
        OPJ_UINT32 i;
        OPJ_FLOAT64 l_temp;

        for (i=0;i<p_nb_elem;++i) {
                l_temp = (OPJ_FLOAT64) *(l_src_data++);

                opj_write_double_LE(l_dest_data,l_temp);

                l_dest_data+=sizeof(OPJ_FLOAT64);
        }
}

char *opj_j2k_convert_progression_order(OPJ_PROG_ORDER prg_order){
        j2k_prog_order_t *po;
        for(po = j2k_prog_order_list; po->enum_prog != -1; po++ ){
                if(po->enum_prog == prg_order){
                        return po->str_prog;
                }
        }
        return po->str_prog;
}

OPJ_BOOL opj_j2k_check_poc_val( const opj_poc_t *p_pocs,
                                                        OPJ_UINT32 p_nb_pocs,
                                                        OPJ_UINT32 p_nb_resolutions,
                                                        OPJ_UINT32 p_num_comps,
                                                        OPJ_UINT32 p_num_layers,
                                                        opj_event_mgr_t * p_manager)
{
        OPJ_UINT32* packet_array;
        OPJ_UINT32 index , resno, compno, layno;
        OPJ_UINT32 i;
        OPJ_UINT32 step_c = 1;
        OPJ_UINT32 step_r = p_num_comps * step_c;
        OPJ_UINT32 step_l = p_nb_resolutions * step_r;
        OPJ_BOOL loss = 0;
        OPJ_UINT32 layno0 = 0;

        packet_array = (OPJ_UINT32*) ((size_t)(step_l * p_num_layers) != 0 && (size_t)(step_l * p_num_layers) >= (size_t)-0x100 / (size_t)(sizeof(OPJ_UINT32)) ? ((void*)0) : calloc(step_l * p_num_layers, sizeof(OPJ_UINT32)));
        if (packet_array == 00) {
                opj_event_msg(p_manager , 1, "Not enough memory for checking the poc values.\n");
                return 0;
        }
        memset(packet_array,0,step_l * p_num_layers* sizeof(OPJ_UINT32));

        if (p_nb_pocs == 0) {
                return 1;
        }

        index = step_r * p_pocs->resno0;

        for (resno = p_pocs->resno0 ; resno < p_pocs->resno1 ; ++resno)
        {
                OPJ_UINT32 res_index = index + p_pocs->compno0 * step_c;


                for (compno = p_pocs->compno0 ; compno < p_pocs->compno1 ; ++compno) {
                        OPJ_UINT32 comp_index = res_index + layno0 * step_l;


                        for (layno = layno0; layno < p_pocs->layno1 ; ++layno) {

                                packet_array[comp_index] = 1;
                                comp_index += step_l;
                        }

                        res_index += step_c;
                }

                index += step_r;
        }
        ++p_pocs;


        for (i = 1; i < p_nb_pocs ; ++i) {
                OPJ_UINT32 l_last_layno1 = (p_pocs-1)->layno1 ;

                layno0 = (p_pocs->layno1 > l_last_layno1)? l_last_layno1 : 0;
                index = step_r * p_pocs->resno0;


                for (resno = p_pocs->resno0 ; resno < p_pocs->resno1 ; ++resno) {
                        OPJ_UINT32 res_index = index + p_pocs->compno0 * step_c;


                        for (compno = p_pocs->compno0 ; compno < p_pocs->compno1 ; ++compno) {
                                OPJ_UINT32 comp_index = res_index + layno0 * step_l;


                                for (layno = layno0; layno < p_pocs->layno1 ; ++layno) {

                                        packet_array[comp_index] = 1;
                                        comp_index += step_l;
                                }

                                res_index += step_c;
                        }

                        index += step_r;
                }

                ++p_pocs;
        }

        index = 0;
        for (layno = 0; layno < p_num_layers ; ++layno) {
                for (resno = 0; resno < p_nb_resolutions; ++resno) {
                        for (compno = 0; compno < p_num_comps; ++compno) {
                                loss |= (packet_array[index]!=1);

                                index += step_c;
                        }
                }
        }

        if (loss) {
                opj_event_msg(p_manager , 1, "Missing packets possible loss of data\n");
        }

        free(packet_array);

        return !loss;
}



OPJ_UINT32 opj_j2k_get_num_tp(opj_cp_t *cp, OPJ_UINT32 pino, OPJ_UINT32 tileno)
{
        const OPJ_CHAR *prog = 00;
        OPJ_UINT32 i;
        OPJ_UINT32 tpnum = 1;
        opj_tcp_t *tcp = 00;
        opj_poc_t * l_current_poc = 00;


        ((tileno < (cp->tw * cp->th)) ? (void) (0) : __assert_fail ("tileno < (cp->tw * cp->th)", "./openjpeg/libopenjpeg/j2k.c", 1556, __PRETTY_FUNCTION__));
        ((pino < (cp->tcps[tileno].numpocs + 1)) ? (void) (0) : __assert_fail ("pino < (cp->tcps[tileno].numpocs + 1)", "./openjpeg/libopenjpeg/j2k.c", 1557, __PRETTY_FUNCTION__));


        tcp = &cp->tcps[tileno];
        ((tcp != 00) ? (void) (0) : __assert_fail ("tcp != 00", "./openjpeg/libopenjpeg/j2k.c", 1561, __PRETTY_FUNCTION__));

        l_current_poc = &(tcp->pocs[pino]);
        ((l_current_poc != 0) ? (void) (0) : __assert_fail ("l_current_poc != 0", "./openjpeg/libopenjpeg/j2k.c", 1564, __PRETTY_FUNCTION__));


        prog = opj_j2k_convert_progression_order(tcp->prg);
        ((strlen(prog) > 0) ? (void) (0) : __assert_fail ("strlen(prog) > 0", "./openjpeg/libopenjpeg/j2k.c", 1568, __PRETTY_FUNCTION__));

        if (cp->m_specific_param.m_enc.m_tp_on == 1) {
                for (i=0;i<4;++i) {
                        switch (prog[i])
                        {

                                case 'C':
                                        tpnum *= l_current_poc->compE;
                                        break;

                                case 'R':
                                        tpnum *= l_current_poc->resE;
                                        break;

                                case 'P':
                                        tpnum *= l_current_poc->prcE;
                                        break;

                                case 'L':
                                        tpnum *= l_current_poc->layE;
                                        break;
                        }

                        if ( cp->m_specific_param.m_enc.m_tp_flag == prog[i] ) {
                                cp->m_specific_param.m_enc.m_tp_pos=i;
                                break;
                        }
                }
        }
        else {
                tpnum=1;
        }

        return tpnum;
}

OPJ_BOOL opj_j2k_calculate_tp( opj_j2k_t *p_j2k,
                                                        opj_cp_t *cp,
                                                        OPJ_UINT32 * p_nb_tiles,
                                                        opj_image_t *image,
                                                        opj_event_mgr_t * p_manager
                                )
{
        OPJ_UINT32 pino,tileno;
        OPJ_UINT32 l_nb_tiles;
        opj_tcp_t *tcp;


        ((p_nb_tiles != 00) ? (void) (0) : __assert_fail ("p_nb_tiles != 00", "./openjpeg/libopenjpeg/j2k.c", 1617, __PRETTY_FUNCTION__));
        ((cp != 00) ? (void) (0) : __assert_fail ("cp != 00", "./openjpeg/libopenjpeg/j2k.c", 1618, __PRETTY_FUNCTION__));
        ((image != 00) ? (void) (0) : __assert_fail ("image != 00", "./openjpeg/libopenjpeg/j2k.c", 1619, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 1620, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 1621, __PRETTY_FUNCTION__));

        l_nb_tiles = cp->tw * cp->th;
        * p_nb_tiles = 0;
        tcp = cp->tcps;
# 1661 "./openjpeg/libopenjpeg/j2k.c"
               {
                for (tileno = 0; tileno < l_nb_tiles; ++tileno) {
                        OPJ_UINT32 cur_totnum_tp = 0;

                        opj_pi_update_encoding_parameters(image,cp,tileno);

                        for (pino = 0; pino <= tcp->numpocs; ++pino) {
                                OPJ_UINT32 tp_num = opj_j2k_get_num_tp(cp,pino,tileno);

                                *p_nb_tiles = *p_nb_tiles + tp_num;

                                cur_totnum_tp += tp_num;
                        }
                        tcp->m_nb_tile_parts = cur_totnum_tp;

                        ++tcp;
                }
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_soc( opj_j2k_t *p_j2k,
                                                opj_stream_private_t *p_stream,
                                                    opj_event_mgr_t * p_manager )
{

        OPJ_BYTE * l_start_stream = 00;


        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 1691, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 1692, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 1693, __PRETTY_FUNCTION__));

        l_start_stream = p_j2k->m_specific_param.m_encoder.m_header_tile_data;


        opj_write_bytes_LE(l_start_stream,0xff4f,2);

        if (opj_stream_write_data(p_stream,l_start_stream,2,p_manager) != 2) {
                return 0;
        }
# 1714 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}







static OPJ_BOOL opj_j2k_read_soc( opj_j2k_t *p_j2k,
                                    opj_stream_private_t *p_stream,
                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_BYTE l_data [2];
        OPJ_UINT32 l_marker;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 1732, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 1733, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 1734, __PRETTY_FUNCTION__));

        if (opj_stream_read_data(p_stream,l_data,2,p_manager) != 2) {
                return 0;
        }

        opj_read_bytes_LE(l_data,&l_marker,2);
        if (l_marker != 0xff4f) {
                return 0;
        }


        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_MHSIZ;


        p_j2k->cstr_index->main_head_start = opj_stream_tell(p_stream) - 2;

        opj_event_msg(p_manager, 4, "Start to read j2k main header (%d).\n", p_j2k->cstr_index->main_head_start);


        if (0 == opj_j2k_add_mhmarker(p_j2k->cstr_index, 0xff4f, p_j2k->cstr_index->main_head_start, 2)) {
                opj_event_msg(p_manager, 1, "Not enough memory to add mh marker\n");
                return 0;
        }
        return 1;
}

OPJ_BOOL opj_j2k_write_siz( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_size_len;
        OPJ_BYTE * l_current_ptr;
        opj_image_t * l_image = 00;
        opj_cp_t *cp = 00;
        opj_image_comp_t * l_img_comp = 00;


        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 1773, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 1774, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 1775, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        cp = &(p_j2k->m_cp);
        l_size_len = 40 + 3 * l_image->numcomps;
        l_img_comp = l_image->comps;

        if (l_size_len > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {

                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_size_len) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_size_len));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory for the SIZ marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_size_len;
        }

        l_current_ptr = p_j2k->m_specific_param.m_encoder.m_header_tile_data;


        opj_write_bytes_LE(l_current_ptr,0xff51,2);
        l_current_ptr+=2;

        opj_write_bytes_LE(l_current_ptr,l_size_len-2,2);
        l_current_ptr+=2;

        opj_write_bytes_LE(l_current_ptr, cp->rsiz, 2);
        l_current_ptr+=2;

        opj_write_bytes_LE(l_current_ptr, l_image->x1, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, l_image->y1, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, l_image->x0, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, l_image->y0, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, cp->tdx, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, cp->tdy, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, cp->tx0, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, cp->ty0, 4);
        l_current_ptr+=4;

        opj_write_bytes_LE(l_current_ptr, l_image->numcomps, 2);
        l_current_ptr+=2;

        for (i = 0; i < l_image->numcomps; ++i) {

                opj_write_bytes_LE(l_current_ptr, l_img_comp->prec - 1 + (l_img_comp->sgnd << 7), 1);
                ++l_current_ptr;

                opj_write_bytes_LE(l_current_ptr, l_img_comp->dx, 1);
                ++l_current_ptr;

                opj_write_bytes_LE(l_current_ptr, l_img_comp->dy, 1);
                ++l_current_ptr;

                ++l_img_comp;
        }

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_size_len,p_manager) != l_size_len) {
                return 0;
        }

        return 1;
}
# 1863 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_siz(opj_j2k_t *p_j2k,
                                 OPJ_BYTE * p_header_data,
                                 OPJ_UINT32 p_header_size,
                                 opj_event_mgr_t * p_manager
                                 )
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_nb_comp;
        OPJ_UINT32 l_nb_comp_remain;
        OPJ_UINT32 l_remaining_size;
        OPJ_UINT32 l_nb_tiles;
        OPJ_UINT32 l_tmp;
        opj_image_t *l_image = 00;
        opj_cp_t *l_cp = 00;
        opj_image_comp_t * l_img_comp = 00;
        opj_tcp_t * l_current_tile_param = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 1881, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 1882, __PRETTY_FUNCTION__));
        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 1883, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_cp = &(p_j2k->m_cp);


        if (p_header_size < 36) {
                opj_event_msg(p_manager, 1, "Error with SIZ marker size\n");
                return 0;
        }

        l_remaining_size = p_header_size - 36;
        l_nb_comp = l_remaining_size / 3;
        l_nb_comp_remain = l_remaining_size % 3;
        if (l_nb_comp_remain != 0){
                opj_event_msg(p_manager, 1, "Error with SIZ marker size\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_tmp ,2);
        p_header_data+=2;
        l_cp->rsiz = (OPJ_RSIZ_CAPABILITIES) l_tmp;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_image->x1, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_image->y1, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_image->x0, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_image->y0, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_cp->tdx, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_cp->tdy, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_cp->tx0, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_cp->ty0, 4);
        p_header_data+=4;
        opj_read_bytes_LE(p_header_data, (OPJ_UINT32*) &l_tmp, 2);
        p_header_data+=2;
        if (l_tmp < 16385)
                l_image->numcomps = (OPJ_UINT16) l_tmp;
        else {
                opj_event_msg(p_manager, 1, "Error with SIZ marker: number of component is illegal -> %d\n", l_tmp);
                return 0;
        }

        if (l_image->numcomps != l_nb_comp) {
                opj_event_msg(p_manager, 1, "Error with SIZ marker: number of component is not compatible with the remaining number of parameters ( %d vs %d)\n", l_image->numcomps, l_nb_comp);
                return 0;
        }


        if (l_image->x0 > l_image->x1 || l_image->y0 > l_image->y1) {
                opj_event_msg(p_manager, 1, "Error with SIZ marker: negative image size (%d x %d)\n", l_image->x1 - l_image->x0, l_image->y1 - l_image->y0);
                return 0;
        }

        if (!(l_cp->tdx * l_cp->tdy)) {
                opj_event_msg(p_manager, 1, "Error with SIZ marker: invalid tile size (tdx: %d, tdy: %d)\n", l_cp->tdx, l_cp->tdy);
                return 0;
        }


        if (((OPJ_UINT64)l_image->x1) * ((OPJ_UINT64)l_image->y1) != (l_image->x1 * l_image->y1)) {
                opj_event_msg(p_manager, 1, "Prevent buffer overflow (x1: %d, y1: %d)", l_image->x1, l_image->y1);
                return 0;
        }
# 1995 "./openjpeg/libopenjpeg/j2k.c"
        l_image->comps = (opj_image_comp_t*) ((size_t)(l_image->numcomps) != 0 && (size_t)(l_image->numcomps) >= (size_t)-0x100 / (size_t)(sizeof(opj_image_comp_t)) ? ((void*)0) : calloc(l_image->numcomps, sizeof(opj_image_comp_t)));
        if (l_image->comps == 00){
                l_image->numcomps = 0;
                opj_event_msg(p_manager, 1, "Not enough memory to take in charge SIZ marker\n");
                return 0;
        }

        memset(l_image->comps,0,l_image->numcomps * sizeof(opj_image_comp_t));
        l_img_comp = l_image->comps;


        for (i = 0; i < l_image->numcomps; ++i){
                OPJ_UINT32 tmp;
                opj_read_bytes_LE(p_header_data,&tmp,1);
                ++p_header_data;
                l_img_comp->prec = (tmp & 0x7f) + 1;
                l_img_comp->sgnd = tmp >> 7;
                opj_read_bytes_LE(p_header_data,&tmp,1);
                ++p_header_data;
                l_img_comp->dx = (OPJ_INT32)tmp;
                opj_read_bytes_LE(p_header_data,&tmp,1);
                ++p_header_data;
                l_img_comp->dy = (OPJ_INT32)tmp;
                if( l_img_comp->dx < 1 || l_img_comp->dx > 255 ||
                    l_img_comp->dy < 1 || l_img_comp->dy > 255 ) {
                    opj_event_msg(p_manager, 1,
                                  "Invalid values for comp = %d : dx=%u dy=%u\n (should be between 1 and 255 according the JPEG2000 norm)",
                                  i, l_img_comp->dx, l_img_comp->dy);
                    return 0;
                }
# 2053 "./openjpeg/libopenjpeg/j2k.c"
                l_img_comp->resno_decoded = 0;
                l_img_comp->factor = l_cp->m_specific_param.m_dec.m_reduce;
                ++l_img_comp;
        }


        l_cp->tw = opj_int_ceildiv(l_image->x1 - l_cp->tx0, l_cp->tdx);
        l_cp->th = opj_int_ceildiv(l_image->y1 - l_cp->ty0, l_cp->tdy);


        if (l_cp->tw == 0 || l_cp->th == 0 || l_cp->tw > 65535 / l_cp->th) {
            opj_event_msg( p_manager, 1,
                            "Invalid number of tiles : %u x %u (maximum fixed by jpeg2000 norm is 65535 tiles)\n",
                            l_cp->tw, l_cp->th);
            return 0;
        }
        l_nb_tiles = l_cp->tw * l_cp->th;


        if (p_j2k->m_specific_param.m_decoder.m_discard_tiles) {
                p_j2k->m_specific_param.m_decoder.m_start_tile_x = (p_j2k->m_specific_param.m_decoder.m_start_tile_x - l_cp->tx0) / l_cp->tdx;
                p_j2k->m_specific_param.m_decoder.m_start_tile_y = (p_j2k->m_specific_param.m_decoder.m_start_tile_y - l_cp->ty0) / l_cp->tdy;
                p_j2k->m_specific_param.m_decoder.m_end_tile_x = opj_int_ceildiv((p_j2k->m_specific_param.m_decoder.m_end_tile_x - l_cp->tx0), l_cp->tdx);
                p_j2k->m_specific_param.m_decoder.m_end_tile_y = opj_int_ceildiv((p_j2k->m_specific_param.m_decoder.m_end_tile_y - l_cp->ty0), l_cp->tdy);
        }
        else {
                p_j2k->m_specific_param.m_decoder.m_start_tile_x = 0;
                p_j2k->m_specific_param.m_decoder.m_start_tile_y = 0;
                p_j2k->m_specific_param.m_decoder.m_end_tile_x = l_cp->tw;
                p_j2k->m_specific_param.m_decoder.m_end_tile_y = l_cp->th;
        }
# 2126 "./openjpeg/libopenjpeg/j2k.c"
        l_cp->tcps = (opj_tcp_t*) ((size_t)(l_nb_tiles) != 0 && (size_t)(l_nb_tiles) >= (size_t)-0x100 / (size_t)(sizeof(opj_tcp_t)) ? ((void*)0) : calloc(l_nb_tiles, sizeof(opj_tcp_t)));
        if (l_cp->tcps == 00) {
                opj_event_msg(p_manager, 1, "Not enough memory to take in charge SIZ marker\n");
                return 0;
        }
        memset(l_cp->tcps,0,l_nb_tiles*sizeof(opj_tcp_t));
# 2146 "./openjpeg/libopenjpeg/j2k.c"
        p_j2k->m_specific_param.m_decoder.m_default_tcp->tccps =
                        (opj_tccp_t*) ((size_t)(l_image->numcomps) != 0 && (size_t)(l_image->numcomps) >= (size_t)-0x100 / (size_t)(sizeof(opj_tccp_t)) ? ((void*)0) : calloc(l_image->numcomps, sizeof(opj_tccp_t)));
        if(p_j2k->m_specific_param.m_decoder.m_default_tcp->tccps == 00) {
                opj_event_msg(p_manager, 1, "Not enough memory to take in charge SIZ marker\n");
                return 0;
        }
        memset(p_j2k->m_specific_param.m_decoder.m_default_tcp->tccps ,0,l_image->numcomps*sizeof(opj_tccp_t));

        p_j2k->m_specific_param.m_decoder.m_default_tcp->m_mct_records =
                        (opj_mct_data_t*)((size_t)(10 * sizeof(opj_mct_data_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(10 * sizeof(opj_mct_data_t)));

        if (! p_j2k->m_specific_param.m_decoder.m_default_tcp->m_mct_records) {
                opj_event_msg(p_manager, 1, "Not enough memory to take in charge SIZ marker\n");
                return 0;
        }
        memset(p_j2k->m_specific_param.m_decoder.m_default_tcp->m_mct_records,0,10 * sizeof(opj_mct_data_t));
        p_j2k->m_specific_param.m_decoder.m_default_tcp->m_nb_max_mct_records = 10;

        p_j2k->m_specific_param.m_decoder.m_default_tcp->m_mcc_records =
                        (opj_simple_mcc_decorrelation_data_t*)
                        ((size_t)(10 * sizeof(opj_simple_mcc_decorrelation_data_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(10 * sizeof(opj_simple_mcc_decorrelation_data_t)));

        if (! p_j2k->m_specific_param.m_decoder.m_default_tcp->m_mcc_records) {
                opj_event_msg(p_manager, 1, "Not enough memory to take in charge SIZ marker\n");
                return 0;
        }
        memset(p_j2k->m_specific_param.m_decoder.m_default_tcp->m_mcc_records,0,10 * sizeof(opj_simple_mcc_decorrelation_data_t));
        p_j2k->m_specific_param.m_decoder.m_default_tcp->m_nb_max_mcc_records = 10;


        for (i=0;i<l_image->numcomps;++i) {
                if (! l_image->comps[i].sgnd) {
                        p_j2k->m_specific_param.m_decoder.m_default_tcp->tccps[i].m_dc_level_shift = 1 << (l_image->comps[i].prec - 1);
                }
        }

        l_current_tile_param = l_cp->tcps;
        for (i = 0; i < l_nb_tiles; ++i) {
                l_current_tile_param->tccps = (opj_tccp_t*) ((size_t)(l_image->numcomps * sizeof(opj_tccp_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(l_image->numcomps * sizeof(opj_tccp_t)));
                if (l_current_tile_param->tccps == 00) {
                        opj_event_msg(p_manager, 1, "Not enough memory to take in charge SIZ marker\n");
                        return 0;
                }
                memset(l_current_tile_param->tccps,0,l_image->numcomps * sizeof(opj_tccp_t));

                ++l_current_tile_param;
        }

        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_MH;
        opj_image_comp_header_update(l_image,l_cp);

        return 1;
}

OPJ_BOOL opj_j2k_write_com( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager
                            )
{
        OPJ_UINT32 l_comment_size;
        OPJ_UINT32 l_total_com_size;
        const OPJ_CHAR *l_comment;
        OPJ_BYTE * l_current_ptr = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2211, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 2212, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2213, __PRETTY_FUNCTION__));

        l_comment = p_j2k->m_cp.comment;
        l_comment_size = strlen(l_comment);
        l_total_com_size = l_comment_size + 6;

        if (l_total_com_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_total_com_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_total_com_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write the COM marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_total_com_size;
        }

        l_current_ptr = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_ptr,0xff64 , 2);
        l_current_ptr+=2;

        opj_write_bytes_LE(l_current_ptr,l_total_com_size - 2 , 2);
        l_current_ptr+=2;

        opj_write_bytes_LE(l_current_ptr,1 , 2);
        l_current_ptr+=2;

        memcpy( l_current_ptr,l_comment,l_comment_size);

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_total_com_size,p_manager) != l_total_com_size) {
                return 0;
        }

        return 1;
}
# 2259 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_com ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2266, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2267, __PRETTY_FUNCTION__));
        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 2268, __PRETTY_FUNCTION__));
  (void)p_header_size;

        return 1;
}

OPJ_BOOL opj_j2k_write_cod( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager )
{
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_code_size,l_remaining_size;
        OPJ_BYTE * l_current_data = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2284, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2285, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 2286, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_j2k->m_current_tile_number];
        l_code_size = 9 + opj_j2k_get_SPCod_SPCoc_size(p_j2k,p_j2k->m_current_tile_number,0);
        l_remaining_size = l_code_size;

        if (l_code_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_code_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_code_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write COD marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_code_size;
        }

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_data,0xff52,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_code_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_tcp->csty,1);
        ++l_current_data;

        opj_write_bytes_LE(l_current_data,l_tcp->prg,1);
        ++l_current_data;

        opj_write_bytes_LE(l_current_data,l_tcp->numlayers,2);
        l_current_data+=2;

        opj_write_bytes_LE(l_current_data,l_tcp->mct,1);
        ++l_current_data;

        l_remaining_size -= 9;

        if (! opj_j2k_write_SPCod_SPCoc(p_j2k,p_j2k->m_current_tile_number,0,l_current_data,&l_remaining_size,p_manager)) {
                opj_event_msg(p_manager, 1, "Error writing COD marker\n");
                return 0;
        }

        if (l_remaining_size != 0) {
                opj_event_msg(p_manager, 1, "Error writing COD marker\n");
                return 0;
        }

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_code_size,p_manager) != l_code_size) {
                return 0;
        }

        return 1;
}
# 2352 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_cod ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{

        OPJ_UINT32 i;
        OPJ_UINT32 l_tmp;
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_image_t *l_image = 00;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 2366, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2367, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2368, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_cp = &(p_j2k->m_cp);


        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;


        if (p_header_size < 5) {
                opj_event_msg(p_manager, 1, "Error reading COD marker\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_tcp->csty,1);
        ++p_header_data;
        opj_read_bytes_LE(p_header_data,&l_tmp,1);
        ++p_header_data;
        l_tcp->prg = (OPJ_PROG_ORDER) l_tmp;
        opj_read_bytes_LE(p_header_data,&l_tcp->numlayers,2);
        p_header_data+=2;


        if (l_cp->m_specific_param.m_dec.m_layer) {
                l_tcp->num_layers_to_decode = l_cp->m_specific_param.m_dec.m_layer;
        }
        else {
                l_tcp->num_layers_to_decode = l_tcp->numlayers;
        }

        opj_read_bytes_LE(p_header_data,&l_tcp->mct,1);
        ++p_header_data;

        p_header_size -= 5;
        for (i = 0; i < l_image->numcomps; ++i) {
                l_tcp->tccps[i].csty = l_tcp->csty & 0x01;
        }

        if (! opj_j2k_read_SPCod_SPCoc(p_j2k,0,p_header_data,&p_header_size,p_manager)) {
                opj_event_msg(p_manager, 1, "Error reading COD marker\n");
                return 0;
        }

        if (p_header_size != 0) {
                opj_event_msg(p_manager, 1, "Error reading COD marker\n");
                return 0;
        }


        opj_j2k_copy_tile_component_parameters(p_j2k);
# 2434 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}

OPJ_BOOL opj_j2k_write_coc( opj_j2k_t *p_j2k,
                                                OPJ_UINT32 p_comp_no,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 l_coc_size,l_remaining_size;
        OPJ_UINT32 l_comp_room;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2446, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2447, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 2448, __PRETTY_FUNCTION__));

        l_comp_room = (p_j2k->m_private_image->numcomps <= 256) ? 1 : 2;

        l_coc_size = 5 + l_comp_room + opj_j2k_get_SPCod_SPCoc_size(p_j2k,p_j2k->m_current_tile_number,p_comp_no);

        if (l_coc_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data;





                new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_coc_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_coc_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write COC marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_coc_size;
        }

        opj_j2k_write_coc_in_memory(p_j2k,p_comp_no,p_j2k->m_specific_param.m_encoder.m_header_tile_data,&l_remaining_size,p_manager);

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_coc_size,p_manager) != l_coc_size) {
                return 0;
        }

        return 1;
}

void opj_j2k_write_coc_in_memory( opj_j2k_t *p_j2k,
                                                OPJ_UINT32 p_comp_no,
                                                OPJ_BYTE * p_data,
                                                OPJ_UINT32 * p_data_written,
                                                opj_event_mgr_t * p_manager
                                    )
{
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_coc_size,l_remaining_size;
        OPJ_BYTE * l_current_data = 00;
        opj_image_t *l_image = 00;
        OPJ_UINT32 l_comp_room;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2497, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2498, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_j2k->m_current_tile_number];
        l_image = p_j2k->m_private_image;
        l_comp_room = (l_image->numcomps <= 256) ? 1 : 2;

        l_coc_size = 5 + l_comp_room + opj_j2k_get_SPCod_SPCoc_size(p_j2k,p_j2k->m_current_tile_number,p_comp_no);
        l_remaining_size = l_coc_size;

        l_current_data = p_data;

        opj_write_bytes_LE(l_current_data,0xff53,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_coc_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,p_comp_no, l_comp_room);
        l_current_data+=l_comp_room;

        opj_write_bytes_LE(l_current_data, l_tcp->tccps[p_comp_no].csty, 1);
        ++l_current_data;

        l_remaining_size -= (5 + l_comp_room);
        opj_j2k_write_SPCod_SPCoc(p_j2k,p_j2k->m_current_tile_number,0,l_current_data,&l_remaining_size,p_manager);
        * p_data_written = l_coc_size;
}

OPJ_UINT32 opj_j2k_get_max_coc_size(opj_j2k_t *p_j2k)
{
        OPJ_UINT32 i,j;
        OPJ_UINT32 l_nb_comp;
        OPJ_UINT32 l_nb_tiles;
        OPJ_UINT32 l_max = 0;



        l_nb_tiles = p_j2k->m_cp.tw * p_j2k->m_cp.th ;
        l_nb_comp = p_j2k->m_private_image->numcomps;

        for (i=0;i<l_nb_tiles;++i) {
                for (j=0;j<l_nb_comp;++j) {
                        l_max = opj_uint_max(l_max,opj_j2k_get_SPCod_SPCoc_size(p_j2k,i,j));
                }
        }

        return 6 + l_max;
}
# 2555 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_coc ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        opj_cp_t *l_cp = ((void*)0);
        opj_tcp_t *l_tcp = ((void*)0);
        opj_image_t *l_image = ((void*)0);
        OPJ_UINT32 l_comp_room;
        OPJ_UINT32 l_comp_no;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 2568, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2569, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2570, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH ) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;
        l_image = p_j2k->m_private_image;

        l_comp_room = l_image->numcomps <= 256 ? 1 : 2;


        if (p_header_size < l_comp_room + 1) {
                opj_event_msg(p_manager, 1, "Error reading COC marker\n");
                return 0;
        }
        p_header_size -= l_comp_room + 1;

        opj_read_bytes_LE(p_header_data,&l_comp_no,l_comp_room);
        p_header_data += l_comp_room;
        if (l_comp_no >= l_image->numcomps) {
                opj_event_msg(p_manager, 1, "Error reading COC marker (bad number of components)\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_tcp->tccps[l_comp_no].csty,1);
        ++p_header_data ;

        if (! opj_j2k_read_SPCod_SPCoc(p_j2k,l_comp_no,p_header_data,&p_header_size,p_manager)) {
                opj_event_msg(p_manager, 1, "Error reading COC marker\n");
                return 0;
        }

        if (p_header_size != 0) {
                opj_event_msg(p_manager, 1, "Error reading COC marker\n");
                return 0;
        }
        return 1;
}

OPJ_BOOL opj_j2k_write_qcd( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager
                            )
{
        OPJ_UINT32 l_qcd_size,l_remaining_size;
        OPJ_BYTE * l_current_data = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2618, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2619, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 2620, __PRETTY_FUNCTION__));

        l_qcd_size = 4 + opj_j2k_get_SQcd_SQcc_size(p_j2k,p_j2k->m_current_tile_number,0);
        l_remaining_size = l_qcd_size;

        if (l_qcd_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_qcd_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_qcd_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write QCD marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_qcd_size;
        }

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_data,0xff5c,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_qcd_size-2,2);
        l_current_data += 2;

        l_remaining_size -= 4;

        if (! opj_j2k_write_SQcd_SQcc(p_j2k,p_j2k->m_current_tile_number,0,l_current_data,&l_remaining_size,p_manager)) {
                opj_event_msg(p_manager, 1, "Error writing QCD marker\n");
                return 0;
        }

        if (l_remaining_size != 0) {
                opj_event_msg(p_manager, 1, "Error writing QCD marker\n");
                return 0;
        }

        if (opj_stream_write_data(p_stream, p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_qcd_size,p_manager) != l_qcd_size) {
                return 0;
        }

        return 1;
}
# 2672 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_qcd ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{

        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 2679, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2680, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2681, __PRETTY_FUNCTION__));

        if (! opj_j2k_read_SQcd_SQcc(p_j2k,0,p_header_data,&p_header_size,p_manager)) {
                opj_event_msg(p_manager, 1, "Error reading QCD marker\n");
                return 0;
        }

        if (p_header_size != 0) {
                opj_event_msg(p_manager, 1, "Error reading QCD marker\n");
                return 0;
        }


        opj_j2k_copy_tile_quantization_parameters(p_j2k);

        return 1;
}

OPJ_BOOL opj_j2k_write_qcc( opj_j2k_t *p_j2k,
                                                OPJ_UINT32 p_comp_no,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager
                            )
{
        OPJ_UINT32 l_qcc_size,l_remaining_size;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2708, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2709, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 2710, __PRETTY_FUNCTION__));

        l_qcc_size = 6 + opj_j2k_get_SQcd_SQcc_size(p_j2k,p_j2k->m_current_tile_number,p_comp_no);
        l_remaining_size = l_qcc_size;

        if (l_qcc_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_qcc_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_qcc_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write QCC marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_qcc_size;
        }

        opj_j2k_write_qcc_in_memory(p_j2k,p_comp_no,p_j2k->m_specific_param.m_encoder.m_header_tile_data,&l_remaining_size,p_manager);

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_qcc_size,p_manager) != l_qcc_size) {
                return 0;
        }

        return 1;
}

void opj_j2k_write_qcc_in_memory( opj_j2k_t *p_j2k,
                                                                OPJ_UINT32 p_comp_no,
                                                                OPJ_BYTE * p_data,
                                                                OPJ_UINT32 * p_data_written,
                                                                opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_qcc_size,l_remaining_size;
        OPJ_BYTE * l_current_data = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2748, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2749, __PRETTY_FUNCTION__));

        l_qcc_size = 6 + opj_j2k_get_SQcd_SQcc_size(p_j2k,p_j2k->m_current_tile_number,p_comp_no);
        l_remaining_size = l_qcc_size;

        l_current_data = p_data;

        opj_write_bytes_LE(l_current_data,0xff5d,2);
        l_current_data += 2;

        if (p_j2k->m_private_image->numcomps <= 256) {
                --l_qcc_size;

                opj_write_bytes_LE(l_current_data,l_qcc_size-2,2);
                l_current_data += 2;

                opj_write_bytes_LE(l_current_data, p_comp_no, 1);
                ++l_current_data;


                l_remaining_size -= 6;
        }
        else {
                opj_write_bytes_LE(l_current_data,l_qcc_size-2,2);
                l_current_data += 2;

                opj_write_bytes_LE(l_current_data, p_comp_no, 2);
                l_current_data+=2;

                l_remaining_size -= 6;
        }

        opj_j2k_write_SQcd_SQcc(p_j2k,p_j2k->m_current_tile_number,p_comp_no,l_current_data,&l_remaining_size,p_manager);

        *p_data_written = l_qcc_size;
}

OPJ_UINT32 opj_j2k_get_max_qcc_size (opj_j2k_t *p_j2k)
{
        return opj_j2k_get_max_coc_size(p_j2k);
}
# 2798 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_qcc( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_num_comp,l_comp_no;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 2807, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2808, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2809, __PRETTY_FUNCTION__));

        l_num_comp = p_j2k->m_private_image->numcomps;

        if (l_num_comp <= 256) {
                if (p_header_size < 1) {
                        opj_event_msg(p_manager, 1, "Error reading QCC marker\n");
                        return 0;
                }
                opj_read_bytes_LE(p_header_data,&l_comp_no,1);
                ++p_header_data;
                --p_header_size;
        }
        else {
                if (p_header_size < 2) {
                        opj_event_msg(p_manager, 1, "Error reading QCC marker\n");
                        return 0;
                }
                opj_read_bytes_LE(p_header_data,&l_comp_no,2);
                p_header_data+=2;
                p_header_size-=2;
        }
# 2858 "./openjpeg/libopenjpeg/j2k.c"
        if (l_comp_no >= p_j2k->m_private_image->numcomps) {
                opj_event_msg(p_manager, 1,
                              "Invalid component number: %d, regarding the number of components %d\n",
                              l_comp_no, p_j2k->m_private_image->numcomps);
                return 0;
        }

        if (! opj_j2k_read_SQcd_SQcc(p_j2k,l_comp_no,p_header_data,&p_header_size,p_manager)) {
                opj_event_msg(p_manager, 1, "Error reading QCC marker\n");
                return 0;
        }

        if (p_header_size != 0) {
                opj_event_msg(p_manager, 1, "Error reading QCC marker\n");
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_poc( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager
                            )
{
        OPJ_UINT32 l_nb_comp;
        OPJ_UINT32 l_nb_poc;
        OPJ_UINT32 l_poc_size;
        OPJ_UINT32 l_written_size = 0;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_poc_room;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2891, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2892, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 2893, __PRETTY_FUNCTION__));

        l_tcp = &p_j2k->m_cp.tcps[p_j2k->m_current_tile_number];
        l_nb_comp = p_j2k->m_private_image->numcomps;
        l_nb_poc = 1 + l_tcp->numpocs;

        if (l_nb_comp <= 256) {
                l_poc_room = 1;
        }
        else {
                l_poc_room = 2;
        }
        l_poc_size = 4 + (5 + 2 * l_poc_room) * l_nb_poc;

        if (l_poc_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_poc_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_poc_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write POC marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_poc_size;
        }

        opj_j2k_write_poc_in_memory(p_j2k,p_j2k->m_specific_param.m_encoder.m_header_tile_data,&l_written_size,p_manager);

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_poc_size,p_manager) != l_poc_size) {
                return 0;
        }

        return 1;
}

void opj_j2k_write_poc_in_memory( opj_j2k_t *p_j2k,
                                                                OPJ_BYTE * p_data,
                                                                OPJ_UINT32 * p_data_written,
                                                                opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 i;
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_nb_comp;
        OPJ_UINT32 l_nb_poc;
        OPJ_UINT32 l_poc_size;
        opj_image_t *l_image = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;
        opj_poc_t *l_current_poc = 00;
        OPJ_UINT32 l_poc_room;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 2947, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 2948, __PRETTY_FUNCTION__));

        l_tcp = &p_j2k->m_cp.tcps[p_j2k->m_current_tile_number];
        l_tccp = &l_tcp->tccps[0];
        l_image = p_j2k->m_private_image;
        l_nb_comp = l_image->numcomps;
        l_nb_poc = 1 + l_tcp->numpocs;

        if (l_nb_comp <= 256) {
                l_poc_room = 1;
        }
        else {
                l_poc_room = 2;
        }

        l_poc_size = 4 + (5 + 2 * l_poc_room) * l_nb_poc;

        l_current_data = p_data;

        opj_write_bytes_LE(l_current_data,0xff5f,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_poc_size-2,2);
        l_current_data += 2;

        l_current_poc = l_tcp->pocs;
        for (i = 0; i < l_nb_poc; ++i) {
                opj_write_bytes_LE(l_current_data,l_current_poc->resno0,1);
                ++l_current_data;

                opj_write_bytes_LE(l_current_data,l_current_poc->compno0,l_poc_room);
                l_current_data+=l_poc_room;

                opj_write_bytes_LE(l_current_data,l_current_poc->layno1,2);
                l_current_data+=2;

                opj_write_bytes_LE(l_current_data,l_current_poc->resno1,1);
                ++l_current_data;

                opj_write_bytes_LE(l_current_data,l_current_poc->compno1,l_poc_room);
                l_current_data+=l_poc_room;

                opj_write_bytes_LE(l_current_data,l_current_poc->prg,1);
                ++l_current_data;


                l_current_poc->layno1 = opj_int_min(l_current_poc->layno1, l_tcp->numlayers);
                l_current_poc->resno1 = opj_int_min(l_current_poc->resno1, l_tccp->numresolutions);
                l_current_poc->compno1 = opj_int_min(l_current_poc->compno1, l_nb_comp);

                ++l_current_poc;
        }

        *p_data_written = l_poc_size;
}

OPJ_UINT32 opj_j2k_get_max_poc_size(opj_j2k_t *p_j2k)
{
        opj_tcp_t * l_tcp = 00;
        OPJ_UINT32 l_nb_tiles = 0;
        OPJ_UINT32 l_max_poc = 0;
        OPJ_UINT32 i;

        l_tcp = p_j2k->m_cp.tcps;
        l_nb_tiles = p_j2k->m_cp.th * p_j2k->m_cp.tw;

        for (i=0;i<l_nb_tiles;++i) {
                l_max_poc = opj_uint_max(l_max_poc,l_tcp->numpocs);
                ++l_tcp;
        }

        ++l_max_poc;

        return 4 + 9 * l_max_poc;
}

OPJ_UINT32 opj_j2k_get_max_toc_size (opj_j2k_t *p_j2k)
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_nb_tiles;
        OPJ_UINT32 l_max = 0;
        opj_tcp_t * l_tcp = 00;

        l_tcp = p_j2k->m_cp.tcps;
        l_nb_tiles = p_j2k->m_cp.tw * p_j2k->m_cp.th ;

        for (i=0;i<l_nb_tiles;++i) {
                l_max = opj_uint_max(l_max,l_tcp->m_nb_tile_parts);

                ++l_tcp;
        }

        return 12 * l_max;
}

OPJ_UINT32 opj_j2k_get_specific_header_sizes(opj_j2k_t *p_j2k)
{
        OPJ_UINT32 l_nb_bytes = 0;
        OPJ_UINT32 l_nb_comps;
        OPJ_UINT32 l_coc_bytes,l_qcc_bytes;

        l_nb_comps = p_j2k->m_private_image->numcomps - 1;
        l_nb_bytes += opj_j2k_get_max_toc_size(p_j2k);

        if (p_j2k->m_cp.m_specific_param.m_enc.m_cinema == 0) {
                l_coc_bytes = opj_j2k_get_max_coc_size(p_j2k);
                l_nb_bytes += l_nb_comps * l_coc_bytes;

                l_qcc_bytes = opj_j2k_get_max_qcc_size(p_j2k);
                l_nb_bytes += l_nb_comps * l_qcc_bytes;
        }

        l_nb_bytes += opj_j2k_get_max_poc_size(p_j2k);



        return l_nb_bytes;
}
# 3075 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_poc ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 i, l_nb_comp, l_tmp;
        opj_image_t * l_image = 00;
        OPJ_UINT32 l_old_poc_nb, l_current_poc_nb, l_current_poc_remaining;
        OPJ_UINT32 l_chunk_size, l_comp_room;

        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_poc_t *l_current_poc = 00;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3091, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3092, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3093, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_nb_comp = l_image->numcomps;
        if (l_nb_comp <= 256) {
                l_comp_room = 1;
        }
        else {
                l_comp_room = 2;
        }
        l_chunk_size = 5 + 2 * l_comp_room;
        l_current_poc_nb = p_header_size / l_chunk_size;
        l_current_poc_remaining = p_header_size % l_chunk_size;

        if ((l_current_poc_nb <= 0) || (l_current_poc_remaining != 0)) {
                opj_event_msg(p_manager, 1, "Error reading POC marker\n");
                return 0;
        }

        l_cp = &(p_j2k->m_cp);
        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;
        l_old_poc_nb = l_tcp->POC ? l_tcp->numpocs + 1 : 0;
        l_current_poc_nb += l_old_poc_nb;

        ((l_current_poc_nb < 32) ? (void) (0) : __assert_fail ("l_current_poc_nb < 32", "./openjpeg/libopenjpeg/j2k.c", 3119, __PRETTY_FUNCTION__));


        l_tcp->POC = 1;

        l_current_poc = &l_tcp->pocs[l_old_poc_nb];
        for (i = l_old_poc_nb; i < l_current_poc_nb; ++i) {
                opj_read_bytes_LE(p_header_data,&(l_current_poc->resno0),1);
                ++p_header_data;
                opj_read_bytes_LE(p_header_data,&(l_current_poc->compno0),l_comp_room);
                p_header_data+=l_comp_room;
                opj_read_bytes_LE(p_header_data,&(l_current_poc->layno1),2);
                p_header_data+=2;
                opj_read_bytes_LE(p_header_data,&(l_current_poc->resno1),1);
                ++p_header_data;
                opj_read_bytes_LE(p_header_data,&(l_current_poc->compno1),l_comp_room);
                p_header_data+=l_comp_room;
                opj_read_bytes_LE(p_header_data,&l_tmp,1);
                ++p_header_data;
                l_current_poc->prg = (OPJ_PROG_ORDER) l_tmp;

                l_current_poc->compno1 = opj_uint_min(l_current_poc->compno1, l_nb_comp);
                ++l_current_poc;
        }

        l_tcp->numpocs = l_current_poc_nb - 1;
        return 1;
}
# 3156 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_crg ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_nb_comp;

        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3164, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3165, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3166, __PRETTY_FUNCTION__));

        l_nb_comp = p_j2k->m_private_image->numcomps;

        if (p_header_size != l_nb_comp *4) {
                opj_event_msg(p_manager, 1, "Error reading CRG marker\n");
                return 0;
        }
# 3185 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}
# 3196 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_tlm ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_Ztlm, l_Stlm, l_ST, l_SP, l_tot_num_tp_remaining, l_quotient, l_Ptlm_size;

        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3204, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3205, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3206, __PRETTY_FUNCTION__));

        if (p_header_size < 2) {
                opj_event_msg(p_manager, 1, "Error reading TLM marker\n");
                return 0;
        }
        p_header_size -= 2;

        opj_read_bytes_LE(p_header_data,&l_Ztlm,1);
        ++p_header_data;
        opj_read_bytes_LE(p_header_data,&l_Stlm,1);
        ++p_header_data;

        l_ST = ((l_Stlm >> 4) & 0x3);
        l_SP = (l_Stlm >> 6) & 0x1;

        l_Ptlm_size = (l_SP + 1) * 2;
        l_quotient = l_Ptlm_size + l_ST;

        l_tot_num_tp_remaining = p_header_size % l_quotient;

        if (l_tot_num_tp_remaining != 0) {
                opj_event_msg(p_manager, 1, "Error reading TLM marker\n");
                return 0;
        }
# 3241 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}
# 3252 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_plm ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{

        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3259, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3260, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3261, __PRETTY_FUNCTION__));

        if (p_header_size < 1) {
                opj_event_msg(p_manager, 1, "Error reading PLM marker\n");
                return 0;
        }
# 3311 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}
# 3322 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_plt ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_Zplt, l_tmp, l_packet_len = 0, i;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3331, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3332, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3333, __PRETTY_FUNCTION__));

        if (p_header_size < 1) {
                opj_event_msg(p_manager, 1, "Error reading PLT marker\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_Zplt,1);
        ++p_header_data;
        --p_header_size;

        for (i = 0; i < p_header_size; ++i) {
                opj_read_bytes_LE(p_header_data,&l_tmp,1);
                ++p_header_data;

                l_packet_len |= (l_tmp & 0x7f);
                if (l_tmp & 0x80) {
                        l_packet_len <<= 7;
                }
                else {

                        l_packet_len = 0;
                }
        }

        if (l_packet_len != 0) {
                opj_event_msg(p_manager, 1, "Error reading PLT marker\n");
                return 0;
        }

        return 1;
}
# 3469 "./openjpeg/libopenjpeg/j2k.c"
OPJ_BOOL j2k_read_ppm_v3 (
                                                opj_j2k_t *p_j2k,
                                                OPJ_BYTE * p_header_data,
                                                OPJ_UINT32 p_header_size,
                                                struct opj_event_mgr * p_manager
                                        )
{
        opj_cp_t *l_cp = 00;
        OPJ_UINT32 l_remaining_data, l_Z_ppm, l_N_ppm;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3480, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3481, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3482, __PRETTY_FUNCTION__));


        if (p_header_size < 1) {
                opj_event_msg(p_manager, 1, "Error reading PPM marker\n");
                return 0;
        }

        l_cp = &(p_j2k->m_cp);
        l_cp->ppm = 1;

        opj_read_bytes_LE(p_header_data,&l_Z_ppm,1);
        ++p_header_data;
        --p_header_size;


        if (l_Z_ppm == 0) {

                if (p_header_size < 4) {
                        opj_event_msg(p_manager, 1, "Error reading PPM marker\n");
                        return 0;
                }

                opj_read_bytes_LE(p_header_data,&l_N_ppm,4);
                p_header_data+=4;
                p_header_size-=4;


                l_cp->ppm_len = l_N_ppm;
                l_cp->ppm_data_read = 0;

                l_cp->ppm_data = (OPJ_BYTE *) ((size_t)(l_cp->ppm_len) >= (size_t)-0x100 ? ((void*)0) : malloc(l_cp->ppm_len));
                l_cp->ppm_buffer = l_cp->ppm_data;
                if (l_cp->ppm_data == 00) {
                        opj_event_msg(p_manager, 1, "Not enough memory to read ppm marker\n");
                        return 0;
                }
                memset(l_cp->ppm_data,0,l_cp->ppm_len);

                l_cp->ppm_data_current = l_cp->ppm_data;


        }
        else {
                if (p_header_size < 4) {
                        opj_event_msg(p_manager, 2, "Empty PPM marker\n");
                        return 1;
                }
                else {

                        if (l_cp->ppm_data_read < l_cp->ppm_len) {

                                l_cp->ppm_data_current = &(l_cp->ppm_data[l_cp->ppm_data_read]);
                                l_N_ppm = l_cp->ppm_len - l_cp->ppm_data_read;
                        }
                        else {
                                OPJ_BYTE *new_ppm_data;
                                opj_read_bytes_LE(p_header_data,&l_N_ppm,4);
                                p_header_data+=4;
                                p_header_size-=4;


                                ((l_cp->ppm_data == l_cp->ppm_buffer && "We need ppm_data and ppm_buffer to be the same when reallocating") ? (void) (0) : __assert_fail ("l_cp->ppm_data == l_cp->ppm_buffer && \"We need ppm_data and ppm_buffer to be the same when reallocating\"", "./openjpeg/libopenjpeg/j2k.c", 3544, __PRETTY_FUNCTION__));
                                new_ppm_data = (OPJ_BYTE *) ((size_t)(l_cp->ppm_len + l_N_ppm) >= (size_t)-0x100 ? ((void*)0) : realloc(l_cp->ppm_data, l_cp->ppm_len + l_N_ppm));
                                if (! new_ppm_data) {
                                        free(l_cp->ppm_data);
                                        l_cp->ppm_data = ((void*)0);
                                        l_cp->ppm_buffer = ((void*)0);
                                        l_cp->ppm_len = 0;
                                        opj_event_msg(p_manager, 1, "Not enough memory to increase the size of ppm_data to add the new Ippm series\n");
                                        return 0;
                                }
                                l_cp->ppm_data = new_ppm_data;
                                l_cp->ppm_buffer = l_cp->ppm_data;


                                l_cp->ppm_data_current = &(l_cp->ppm_data[l_cp->ppm_len]);
                                l_cp->ppm_len += l_N_ppm;
                        }
                }
        }

        l_remaining_data = p_header_size;

        while (l_remaining_data >= l_N_ppm) {

                memcpy(l_cp->ppm_data_current, p_header_data, l_N_ppm);
                p_header_size -= l_N_ppm;
                p_header_data += l_N_ppm;

                l_cp->ppm_data_read += l_N_ppm;

                if (p_header_size)
                {
                        opj_read_bytes_LE(p_header_data,&l_N_ppm,4);
                        p_header_data+=4;
                        p_header_size-=4;
                }
                else {
                        l_remaining_data = p_header_size;
                        break;
                }

                l_remaining_data = p_header_size;


                if (l_remaining_data > l_N_ppm) {
                        OPJ_BYTE *new_ppm_data;

                        ((l_cp->ppm_data == l_cp->ppm_buffer && "We need ppm_data and ppm_buffer to be the same when reallocating") ? (void) (0) : __assert_fail ("l_cp->ppm_data == l_cp->ppm_buffer && \"We need ppm_data and ppm_buffer to be the same when reallocating\"", "./openjpeg/libopenjpeg/j2k.c", 3591, __PRETTY_FUNCTION__));
                        new_ppm_data = (OPJ_BYTE *) ((size_t)(l_cp->ppm_len + l_N_ppm) >= (size_t)-0x100 ? ((void*)0) : realloc(l_cp->ppm_data, l_cp->ppm_len + l_N_ppm));
                        if (! new_ppm_data) {
                                free(l_cp->ppm_data);
                                l_cp->ppm_data = ((void*)0);
                                l_cp->ppm_buffer = ((void*)0);
                                l_cp->ppm_len = 0;
                                opj_event_msg(p_manager, 1, "Not enough memory to increase the size of ppm_data to add the new (complete) Ippm series\n");
                                return 0;
                        }
                        l_cp->ppm_data = new_ppm_data;
                        l_cp->ppm_buffer = l_cp->ppm_data;


                        l_cp->ppm_data_current = &(l_cp->ppm_data[l_cp->ppm_len]);
                        l_cp->ppm_len += l_N_ppm;
                }

        }


        if (l_remaining_data) {
                OPJ_BYTE *new_ppm_data;
                ((l_cp->ppm_data == l_cp->ppm_buffer && "We need ppm_data and ppm_buffer to be the same when reallocating") ? (void) (0) : __assert_fail ("l_cp->ppm_data == l_cp->ppm_buffer && \"We need ppm_data and ppm_buffer to be the same when reallocating\"", "./openjpeg/libopenjpeg/j2k.c", 3614, __PRETTY_FUNCTION__));
                new_ppm_data = (OPJ_BYTE *) ((size_t)(l_cp->ppm_len + l_N_ppm) >= (size_t)-0x100 ? ((void*)0) : realloc(l_cp->ppm_data, l_cp->ppm_len + l_N_ppm));
                if (! new_ppm_data) {
                        free(l_cp->ppm_data);
                        l_cp->ppm_data = ((void*)0);
                        l_cp->ppm_buffer = ((void*)0);
                        l_cp->ppm_len = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to increase the size of ppm_data to add the new (incomplete) Ippm series\n");
                        return 0;
                }
                l_cp->ppm_data = new_ppm_data;
                l_cp->ppm_buffer = l_cp->ppm_data;


                l_cp->ppm_data_current = &(l_cp->ppm_data[l_cp->ppm_len]);
                l_cp->ppm_len += l_N_ppm;


                memcpy(l_cp->ppm_data_current, p_header_data, l_remaining_data);
                p_header_size -= l_remaining_data;
                p_header_data += l_remaining_data;

                l_cp->ppm_data_read += l_remaining_data;
        }
# 3685 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}
# 3696 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_ppt ( opj_j2k_t *p_j2k,
                                    OPJ_BYTE * p_header_data,
                                    OPJ_UINT32 p_header_size,
                                    opj_event_mgr_t * p_manager
                                    )
{
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_Z_ppt;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3707, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3708, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3709, __PRETTY_FUNCTION__));


        if (p_header_size < 1) {
                opj_event_msg(p_manager, 1, "Error reading PPT marker\n");
                return 0;
        }

        l_cp = &(p_j2k->m_cp);
        if (l_cp->ppm){
                opj_event_msg(p_manager, 1, "Error reading PPT marker: packet header have been previously found in the main header (PPM marker).\n");
                return 0;
        }

        l_tcp = &(l_cp->tcps[p_j2k->m_current_tile_number]);
        l_tcp->ppt = 1;

        opj_read_bytes_LE(p_header_data,&l_Z_ppt,1);
        ++p_header_data;
        --p_header_size;


        if (l_Z_ppt == 0) {

                l_tcp->ppt_data_size = 0;
                l_tcp->ppt_len = p_header_size;

                l_tcp->ppt_buffer = (OPJ_BYTE *) ((size_t)(l_tcp->ppt_len) != 0 && (size_t)(l_tcp->ppt_len) >= (size_t)-0x100 / (size_t)(sizeof(OPJ_BYTE)) ? ((void*)0) : calloc(l_tcp->ppt_len, sizeof(OPJ_BYTE)));
                if (l_tcp->ppt_buffer == 00) {
                        opj_event_msg(p_manager, 1, "Not enough memory to read PPT marker\n");
                        return 0;
                }
                l_tcp->ppt_data = l_tcp->ppt_buffer;


        }
        else {
                OPJ_BYTE *new_ppt_buffer;
                l_tcp->ppt_len += p_header_size;

                new_ppt_buffer = (OPJ_BYTE *) ((size_t)(l_tcp->ppt_len) >= (size_t)-0x100 ? ((void*)0) : realloc(l_tcp->ppt_buffer, l_tcp->ppt_len));
                if (! new_ppt_buffer) {
                        free(l_tcp->ppt_buffer);
                        l_tcp->ppt_buffer = ((void*)0);
                        l_tcp->ppt_len = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to read PPT marker\n");
                        return 0;
                }
                l_tcp->ppt_buffer = new_ppt_buffer;
                l_tcp->ppt_data = l_tcp->ppt_buffer;

                memset(l_tcp->ppt_buffer+l_tcp->ppt_data_size,0,p_header_size);
        }


        memcpy(l_tcp->ppt_buffer+l_tcp->ppt_data_size,p_header_data,p_header_size);

        l_tcp->ppt_data_size += p_header_size;

        return 1;
}

OPJ_BOOL opj_j2k_write_tlm( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager
                            )
{
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_tlm_size;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3780, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3781, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 3782, __PRETTY_FUNCTION__));

        l_tlm_size = 6 + (5*p_j2k->m_specific_param.m_encoder.m_total_tile_parts);

        if (l_tlm_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_tlm_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_tlm_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write TLM marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_tlm_size;
        }

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;



        p_j2k->m_specific_param.m_encoder.m_tlm_start = opj_stream_tell(p_stream);

        opj_write_bytes_LE(l_current_data,0xff55,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_tlm_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,0,1);
        ++l_current_data;

        opj_write_bytes_LE(l_current_data,0x50,1);
        ++l_current_data;


        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_tlm_size,p_manager) != l_tlm_size) {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_sot( opj_j2k_t *p_j2k,
                                                        OPJ_BYTE * p_data,
                                                        OPJ_UINT32 * p_data_written,
                                                        const opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager
                            )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3833, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3834, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 3835, __PRETTY_FUNCTION__));

        opj_write_bytes_LE(p_data,0xff90,2);
        p_data += 2;

        opj_write_bytes_LE(p_data,10,2);
        p_data += 2;

        opj_write_bytes_LE(p_data, p_j2k->m_current_tile_number,2);
        p_data += 2;


        p_data += 4;

        opj_write_bytes_LE(p_data, p_j2k->m_specific_param.m_encoder.m_current_tile_part_number,1);
        ++p_data;

        opj_write_bytes_LE(p_data, p_j2k->m_cp.tcps[p_j2k->m_current_tile_number].m_nb_tile_parts,1);
        ++p_data;
# 3864 "./openjpeg/libopenjpeg/j2k.c"
        * p_data_written = 12;

        return 1;
}

OPJ_BOOL opj_j2k_read_sot ( opj_j2k_t *p_j2k,
                            OPJ_BYTE * p_header_data,
                            OPJ_UINT32 p_header_size,
                            opj_event_mgr_t * p_manager )
{
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_tot_len, l_num_parts = 0;
        OPJ_UINT32 l_current_part;
        OPJ_UINT32 l_tile_x,l_tile_y;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 3881, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 3882, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 3883, __PRETTY_FUNCTION__));


        if (p_header_size != 8) {
                opj_event_msg(p_manager, 1, "Error reading SOT marker\n");
                return 0;
        }

        l_cp = &(p_j2k->m_cp);
        opj_read_bytes_LE(p_header_data,&(p_j2k->m_current_tile_number),2);
        p_header_data+=2;


        if (p_j2k->m_current_tile_number >= l_cp->tw * l_cp->th) {
                opj_event_msg(p_manager, 1, "Invalid tile number %d\n", p_j2k->m_current_tile_number);
                return 0;
        }

        l_tcp = &l_cp->tcps[p_j2k->m_current_tile_number];
        l_tile_x = p_j2k->m_current_tile_number % l_cp->tw;
        l_tile_y = p_j2k->m_current_tile_number / l_cp->tw;
# 3936 "./openjpeg/libopenjpeg/j2k.c"
        opj_read_bytes_LE(p_header_data,&l_tot_len,4);
        p_header_data+=4;


        if ((l_tot_len !=0 ) && (l_tot_len < 14) )
        {
            if (l_tot_len == 12 )
            {
                opj_event_msg(p_manager, 2, "Empty SOT marker detected: Psot=%d.\n", l_tot_len);
            }
            else
            {
                opj_event_msg(p_manager, 1, "Psot value is not correct regards to the JPEG2000 norm: %d.\n", l_tot_len);
                return 0;
            }
        }
# 3975 "./openjpeg/libopenjpeg/j2k.c"
                if (!l_tot_len) {
                        opj_event_msg(p_manager, 4, "Psot value of the current tile-part is equal to zero, "
                                        "we assuming it is the last tile-part of the codestream.\n");
                        p_j2k->m_specific_param.m_decoder.m_last_tile_part = 1;
                }

                opj_read_bytes_LE(p_header_data,&l_current_part ,1);
                ++p_header_data;

                opj_read_bytes_LE(p_header_data,&l_num_parts ,1);
                ++p_header_data;

                if (l_num_parts != 0) {


                        if (l_num_parts < l_tcp->m_nb_tile_parts) {
                                l_num_parts = l_tcp->m_nb_tile_parts;
                        }
                        if (l_current_part >= l_num_parts) {

                                l_num_parts = l_current_part + 1;
                        }
                        l_tcp->m_nb_tile_parts = l_num_parts;
                }


                if (l_tcp->m_nb_tile_parts) {
                        if (l_tcp->m_nb_tile_parts == l_current_part) {
                                p_j2k->m_specific_param.m_decoder.m_can_decode = 1;
                        }
                }

                if (!p_j2k->m_specific_param.m_decoder.m_last_tile_part){

                        p_j2k->m_specific_param.m_decoder.m_sot_length = l_tot_len - 12;
                }
                else {

                        p_j2k->m_specific_param.m_decoder.m_sot_length = 0;
                }

                p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_TPH;


                if (p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec == -1) {
                        p_j2k->m_specific_param.m_decoder.m_skip_data =
                                (l_tile_x < p_j2k->m_specific_param.m_decoder.m_start_tile_x)
                                || (l_tile_x >= p_j2k->m_specific_param.m_decoder.m_end_tile_x)
                                || (l_tile_y < p_j2k->m_specific_param.m_decoder.m_start_tile_y)
                                || (l_tile_y >= p_j2k->m_specific_param.m_decoder.m_end_tile_y);
                }
                else {
                        ((p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec >= 0) ? (void) (0) : __assert_fail ("p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec >= 0", "./openjpeg/libopenjpeg/j2k.c", 4027, __PRETTY_FUNCTION__));
                        p_j2k->m_specific_param.m_decoder.m_skip_data =
                                (p_j2k->m_current_tile_number != (OPJ_UINT32)p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec);
                }


                if (p_j2k->cstr_index)
                {
                        ((p_j2k->cstr_index->tile_index != 00) ? (void) (0) : __assert_fail ("p_j2k->cstr_index->tile_index != 00", "./openjpeg/libopenjpeg/j2k.c", 4035, __PRETTY_FUNCTION__));
                        p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tileno = p_j2k->m_current_tile_number;
                        p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_tpsno = l_current_part;

                        if (l_num_parts != 0){
                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].nb_tps = l_num_parts;
                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps = l_num_parts;

                                if (!p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index) {
                                        p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index =
                                                (opj_tp_index_t*)((size_t)(l_num_parts) != 0 && (size_t)(l_num_parts) >= (size_t)-0x100 / (size_t)(sizeof(opj_tp_index_t)) ? ((void*)0) : calloc(l_num_parts, sizeof(opj_tp_index_t)));
                                }
                                else {
                                        opj_tp_index_t *new_tp_index = (opj_tp_index_t *) ((size_t)(l_num_parts* sizeof(opj_tp_index_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index, l_num_parts* sizeof(opj_tp_index_t)));

                                        if (! new_tp_index) {
                                                free(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index);
                                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index = ((void*)0);
                                                opj_event_msg(p_manager, 1, "Not enough memory to read PPT marker\n");
                                                return 0;
                                        }
                                        p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index = new_tp_index;
                                }
                        }
                        else{
                                                                                                               {

                                        if (!p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index) {
                                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps = 10;
                                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index =
                                                        (opj_tp_index_t*)((size_t)(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps) != 0 && (size_t)(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps) >= (size_t)-0x100 / (size_t)(sizeof(opj_tp_index_t)) ? ((void*)0) : calloc(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps, sizeof(opj_tp_index_t)));

                                        }

                                        if ( l_current_part >= p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps ){
                                                opj_tp_index_t *new_tp_index;
                                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps = l_current_part + 1;
                                                new_tp_index = (opj_tp_index_t *) ((size_t)(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps * sizeof(opj_tp_index_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index, p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps * sizeof(opj_tp_index_t)));


                                                if (! new_tp_index) {
                                                        free(p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index);
                                                        p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index = ((void*)0);
                                                        p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].current_nb_tps = 0;
                                                        opj_event_msg(p_manager, 1, "Not enough memory to read PPT marker\n");
                                                        return 0;
                                                }
                                                p_j2k->cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index = new_tp_index;
                                        }
                                }

                        }

                }
# 4117 "./openjpeg/libopenjpeg/j2k.c"
                return 1;
        }

OPJ_BOOL opj_j2k_write_sod( opj_j2k_t *p_j2k,
                                                        opj_tcd_t * p_tile_coder,
                                                        OPJ_BYTE * p_data,
                                                        OPJ_UINT32 * p_data_written,
                                                        OPJ_UINT32 p_total_data_size,
                                                        const opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager
                            )
{
        opj_codestream_info_t *l_cstr_info = 00;
        OPJ_UINT32 l_remaining_data;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4133, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4134, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4135, __PRETTY_FUNCTION__));

        opj_write_bytes_LE(p_data,0xff93,2);
        p_data += 2;


        l_remaining_data = p_total_data_size - 4;


        p_tile_coder->tp_num = p_j2k->m_specific_param.m_encoder.m_current_poc_tile_part_number ;
        p_tile_coder->cur_tp_num = p_j2k->m_specific_param.m_encoder.m_current_tile_part_number;
# 4175 "./openjpeg/libopenjpeg/j2k.c"
        if (p_j2k->m_specific_param.m_encoder.m_current_tile_part_number == 0) {
                p_tile_coder->tcd_image->tiles->packno = 0;
                if (l_cstr_info) {
                        l_cstr_info->packno = 0;
                }
        }

        *p_data_written = 0;

        if (! opj_tcd_encode_tile(p_tile_coder, p_j2k->m_current_tile_number, p_data, p_data_written, l_remaining_data , l_cstr_info)) {
                opj_event_msg(p_manager, 1, "Cannot encode tile\n");
                return 0;
        }

        *p_data_written += 2;

        return 1;
}

OPJ_BOOL opj_j2k_read_sod (opj_j2k_t *p_j2k,
                           opj_stream_private_t *p_stream,
                                                   opj_event_mgr_t * p_manager
                           )
{
        OPJ_UINT32 l_current_read_size;
        opj_codestream_index_t * l_cstr_index = 00;
        OPJ_BYTE ** l_current_data = 00;
        opj_tcp_t * l_tcp = 00;
        OPJ_UINT32 * l_tile_len = 00;
        OPJ_BOOL l_sot_length_pb_detected = 0;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4207, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4208, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4209, __PRETTY_FUNCTION__));

        l_tcp = &(p_j2k->m_cp.tcps[p_j2k->m_current_tile_number]);

        if (p_j2k->m_specific_param.m_decoder.m_last_tile_part) {




                p_j2k->m_specific_param.m_decoder.m_sot_length = (OPJ_UINT32)(opj_stream_get_number_byte_left(p_stream) - 2);
        }
        else {

            if (p_j2k->m_specific_param.m_decoder.m_sot_length >= 2 )
                p_j2k->m_specific_param.m_decoder.m_sot_length -= 2;
            else {

            }
        }

        l_current_data = &(l_tcp->m_data);
        l_tile_len = &l_tcp->m_data_size;


        if (p_j2k->m_specific_param.m_decoder.m_sot_length) {
            if (! *l_current_data) {



                *l_current_data = (OPJ_BYTE*) ((size_t)(p_j2k->m_specific_param.m_decoder.m_sot_length) >= (size_t)-0x100 ? ((void*)0) : malloc(p_j2k->m_specific_param.m_decoder.m_sot_length));
            }
            else {
                OPJ_BYTE *l_new_current_data = (OPJ_BYTE *) ((size_t)(*l_tile_len + p_j2k->m_specific_param.m_decoder.m_sot_length) >= (size_t)-0x100 ? ((void*)0) : realloc(*l_current_data, *l_tile_len + p_j2k->m_specific_param.m_decoder.m_sot_length));
                if (! l_new_current_data) {
                        free(*l_current_data);




                }
                *l_current_data = l_new_current_data;
            }

            if (*l_current_data == 00) {
                opj_event_msg(p_manager, 1, "Not enough memory to decode tile\n");
                return 0;
            }
        }
        else {
            l_sot_length_pb_detected = 1;
        }


        l_cstr_index = p_j2k->cstr_index;
        if (l_cstr_index) {
                OPJ_OFF_T l_current_pos = opj_stream_tell(p_stream) - 2;

                OPJ_UINT32 l_current_tile_part = l_cstr_index->tile_index[p_j2k->m_current_tile_number].current_tpsno;
                l_cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index[l_current_tile_part].end_header =
                                l_current_pos;
                l_cstr_index->tile_index[p_j2k->m_current_tile_number].tp_index[l_current_tile_part].end_pos =
                                l_current_pos + p_j2k->m_specific_param.m_decoder.m_sot_length + 2;

                if (0 == opj_j2k_add_tlmarker(p_j2k->m_current_tile_number,
                                        l_cstr_index,
                                        0xff93,
                                        l_current_pos,
                                        p_j2k->m_specific_param.m_decoder.m_sot_length + 2)) {
                        opj_event_msg(p_manager, 1, "Not enough memory to add tl marker\n");
                        return 0;
                }


        }


        if (!l_sot_length_pb_detected) {
            l_current_read_size = opj_stream_read_data(
                        p_stream,
                        *l_current_data + *l_tile_len,
                        p_j2k->m_specific_param.m_decoder.m_sot_length,
                        p_manager);
        }
        else
        {
            l_current_read_size = 0;
        }

        if (l_current_read_size != p_j2k->m_specific_param.m_decoder.m_sot_length) {
                p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_NEOC;
        }
        else {
                p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_TPHSOT;
        }

        *l_tile_len += l_current_read_size;

        return 1;
}

 OPJ_BOOL opj_j2k_write_rgn(opj_j2k_t *p_j2k,
                            OPJ_UINT32 p_tile_no,
                            OPJ_UINT32 p_comp_no,
                            OPJ_UINT32 nb_comps,
                            opj_stream_private_t *p_stream,
                            opj_event_mgr_t * p_manager
                            )
{
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_rgn_size;
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;
        OPJ_UINT32 l_comp_room;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4325, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4326, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4327, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_tile_no];
        l_tccp = &l_tcp->tccps[p_comp_no];

        if (nb_comps <= 256) {
                l_comp_room = 1;
        }
        else {
                l_comp_room = 2;
        }

        l_rgn_size = 6 + l_comp_room;

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_data,0xff5e,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_rgn_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,p_comp_no,l_comp_room);
        l_current_data+=l_comp_room;

        opj_write_bytes_LE(l_current_data, 0,1);
        ++l_current_data;

        opj_write_bytes_LE(l_current_data, l_tccp->roishift,1);
        ++l_current_data;

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_rgn_size,p_manager) != l_rgn_size) {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_eoc( opj_j2k_t *p_j2k,
                            opj_stream_private_t *p_stream,
                            opj_event_mgr_t * p_manager
                            )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4372, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4373, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4374, __PRETTY_FUNCTION__));

        opj_write_bytes_LE(p_j2k->m_specific_param.m_encoder.m_header_tile_data,0xffd9,2);
# 4386 "./openjpeg/libopenjpeg/j2k.c"
        if ( opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,2,p_manager) != 2) {
                return 0;
        }

        if ( ! opj_stream_flush(p_stream,p_manager) ) {
                return 0;
        }

        return 1;
}
# 4405 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_rgn (opj_j2k_t *p_j2k,
                                  OPJ_BYTE * p_header_data,
                                  OPJ_UINT32 p_header_size,
                                  opj_event_mgr_t * p_manager
                                  )
{
        OPJ_UINT32 l_nb_comp;
        opj_image_t * l_image = 00;

        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_comp_room, l_comp_no, l_roi_sty;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 4419, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4420, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4421, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_nb_comp = l_image->numcomps;

        if (l_nb_comp <= 256) {
                l_comp_room = 1; }
        else {
                l_comp_room = 2; }

        if (p_header_size != 2 + l_comp_room) {
                opj_event_msg(p_manager, 1, "Error reading RGN marker\n");
                return 0;
        }

        l_cp = &(p_j2k->m_cp);
        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;

        opj_read_bytes_LE(p_header_data,&l_comp_no,l_comp_room);
        p_header_data+=l_comp_room;
        opj_read_bytes_LE(p_header_data,&l_roi_sty,1);
        ++p_header_data;
# 4462 "./openjpeg/libopenjpeg/j2k.c"
        if (l_comp_room >= l_nb_comp) {
                opj_event_msg(p_manager, 1,
                        "JPWL: bad component number in RGN (%d when there are only %d)\n",
                        l_comp_room, l_nb_comp);
                return 0;
        }

        opj_read_bytes_LE(p_header_data,(OPJ_UINT32 *) (&(l_tcp->tccps[l_comp_no].roishift)),1);
        ++p_header_data;

        return 1;

}

OPJ_FLOAT32 opj_j2k_get_tp_stride (opj_tcp_t * p_tcp)
{
        return (OPJ_FLOAT32) ((p_tcp->m_nb_tile_parts - 1) * 14);
}

OPJ_FLOAT32 opj_j2k_get_default_stride (opj_tcp_t * p_tcp)
{
    (void)p_tcp;
    return 0;
}

OPJ_BOOL opj_j2k_update_rates( opj_j2k_t *p_j2k,
                                                            opj_stream_private_t *p_stream,
                                                            opj_event_mgr_t * p_manager )
{
        opj_cp_t * l_cp = 00;
        opj_image_t * l_image = 00;
        opj_tcp_t * l_tcp = 00;
        opj_image_comp_t * l_img_comp = 00;

        OPJ_UINT32 i,j,k;
        OPJ_INT32 l_x0,l_y0,l_x1,l_y1;
        OPJ_FLOAT32 * l_rates = 0;
        OPJ_FLOAT32 l_sot_remove;
        OPJ_UINT32 l_bits_empty, l_size_pixel;
        OPJ_UINT32 l_tile_size = 0;
        OPJ_UINT32 l_last_res;
        OPJ_FLOAT32 (* l_tp_stride_func)(opj_tcp_t *) = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4506, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4507, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4508, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_image = p_j2k->m_private_image;
        l_tcp = l_cp->tcps;

        l_bits_empty = 8 * l_image->comps->dx * l_image->comps->dy;
        l_size_pixel = l_image->numcomps * l_image->comps->prec;
        l_sot_remove = ((OPJ_FLOAT32) opj_stream_tell(p_stream)) / (l_cp->th * l_cp->tw);

        if (l_cp->m_specific_param.m_enc.m_tp_on) {
                l_tp_stride_func = opj_j2k_get_tp_stride;
        }
        else {
                l_tp_stride_func = opj_j2k_get_default_stride;
        }

        for (i=0;i<l_cp->th;++i) {
                for (j=0;j<l_cp->tw;++j) {
                        OPJ_FLOAT32 l_offset = ((*l_tp_stride_func)(l_tcp)) / l_tcp->numlayers;


                        l_x0 = opj_int_max(l_cp->tx0 + j * l_cp->tdx, l_image->x0);
                        l_y0 = opj_int_max(l_cp->ty0 + i * l_cp->tdy, l_image->y0);
                        l_x1 = opj_int_min(l_cp->tx0 + (j + 1) * l_cp->tdx, l_image->x1);
                        l_y1 = opj_int_min(l_cp->ty0 + (i + 1) * l_cp->tdy, l_image->y1);

                        l_rates = l_tcp->rates;


                        if (*l_rates) {
                                *l_rates = (( (OPJ_FLOAT32) (l_size_pixel * (l_x1 - l_x0) * (l_y1 - l_y0)))
                                                                /
                                                                ((*l_rates) * l_bits_empty)
                                                                )
                                                                -
                                                                l_offset;
                        }

                        ++l_rates;

                        for (k = 1; k < l_tcp->numlayers; ++k) {
                                if (*l_rates) {
                                        *l_rates = (( (OPJ_FLOAT32) (l_size_pixel * (l_x1 - l_x0) * (l_y1 - l_y0)))
                                                                        /
                                                                                ((*l_rates) * l_bits_empty)
                                                                        )
                                                                        -
                                                                        l_offset;
                                }

                                ++l_rates;
                        }

                        ++l_tcp;

                }
        }

        l_tcp = l_cp->tcps;

        for (i=0;i<l_cp->th;++i) {
                for (j=0;j<l_cp->tw;++j) {
                        l_rates = l_tcp->rates;

                        if (*l_rates) {
                                *l_rates -= l_sot_remove;

                                if (*l_rates < 30) {
                                        *l_rates = 30;
                                }
                        }

                        ++l_rates;

                        l_last_res = l_tcp->numlayers - 1;

                        for (k = 1; k < l_last_res; ++k) {

                                if (*l_rates) {
                                        *l_rates -= l_sot_remove;

                                        if (*l_rates < *(l_rates - 1) + 10) {
                                                *l_rates = (*(l_rates - 1)) + 20;
                                        }
                                }

                                ++l_rates;
                        }

                        if (*l_rates) {
                                *l_rates -= (l_sot_remove + 2.f);

                                if (*l_rates < *(l_rates - 1) + 10) {
                                        *l_rates = (*(l_rates - 1)) + 20;
                                }
                        }

                        ++l_tcp;
                }
        }

        l_img_comp = l_image->comps;
        l_tile_size = 0;

        for (i=0;i<l_image->numcomps;++i) {
                l_tile_size += ( opj_uint_ceildiv(l_cp->tdx,l_img_comp->dx)
                                                        *
                                                        opj_uint_ceildiv(l_cp->tdy,l_img_comp->dy)
                                                        *
                                                        l_img_comp->prec
                                                );

                ++l_img_comp;
        }

        l_tile_size = (OPJ_UINT32) (l_tile_size * 0.1625);

        l_tile_size += opj_j2k_get_specific_header_sizes(p_j2k);

        p_j2k->m_specific_param.m_encoder.m_encoded_tile_size = l_tile_size;
        p_j2k->m_specific_param.m_encoder.m_encoded_tile_data =
                        (OPJ_BYTE *) ((size_t)(p_j2k->m_specific_param.m_encoder.m_encoded_tile_size) >= (size_t)-0x100 ? ((void*)0) : malloc(p_j2k->m_specific_param.m_encoder.m_encoded_tile_size));
        if (p_j2k->m_specific_param.m_encoder.m_encoded_tile_data == 00) {
                return 0;
        }

        if (l_cp->m_specific_param.m_enc.m_cinema) {
                p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer =
                                (OPJ_BYTE *) ((size_t)(5*p_j2k->m_specific_param.m_encoder.m_total_tile_parts) >= (size_t)-0x100 ? ((void*)0) : malloc(5*p_j2k->m_specific_param.m_encoder.m_total_tile_parts));
                if (! p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer) {
                        return 0;
                }

                p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current =
                                p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer;
        }

        return 1;
}

OPJ_BOOL opj_j2k_read_eoc ( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 i;
        opj_tcd_t * l_tcd = 00;
        OPJ_UINT32 l_nb_tiles;
        opj_tcp_t * l_tcp = 00;
        OPJ_BOOL l_success;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4660, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4661, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4662, __PRETTY_FUNCTION__));

        l_nb_tiles = p_j2k->m_cp.th * p_j2k->m_cp.tw;
        l_tcp = p_j2k->m_cp.tcps;

        l_tcd = opj_tcd_create(1);
        if (l_tcd == 00) {
                opj_event_msg(p_manager, 1, "Cannot decode tile, memory error\n");
                return 0;
        }

        for (i = 0; i < l_nb_tiles; ++i) {
                if (l_tcp->m_data) {
                        if (! opj_tcd_init_decode_tile(l_tcd, i)) {
                                opj_tcd_destroy(l_tcd);
                                opj_event_msg(p_manager, 1, "Cannot decode tile, memory error\n");
                                return 0;
                        }

                        l_success = opj_tcd_decode_tile(l_tcd, l_tcp->m_data, l_tcp->m_data_size, i, p_j2k->cstr_index);


                        if (! l_success) {
                                p_j2k->m_specific_param.m_decoder.m_state |= J2K_STATE_ERR;
                                break;
                        }
                }

                opj_j2k_tcp_destroy(l_tcp);
                ++l_tcp;
        }

        opj_tcd_destroy(l_tcd);
        return 1;
}

OPJ_BOOL opj_j2k_get_end_header(opj_j2k_t *p_j2k,
                                                        struct opj_stream_private *p_stream,
                                                        struct opj_event_mgr * p_manager )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4703, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4704, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4705, __PRETTY_FUNCTION__));

        p_j2k->cstr_index->main_head_end = opj_stream_tell(p_stream);

        return 1;
}

OPJ_BOOL opj_j2k_write_mct_data_group( opj_j2k_t *p_j2k,
                                                                        struct opj_stream_private *p_stream,
                                                                        struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 i;
        opj_simple_mcc_decorrelation_data_t * l_mcc_record;
        opj_mct_data_t * l_mct_record;
        opj_tcp_t * l_tcp;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4722, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4723, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4724, __PRETTY_FUNCTION__));

        if (! opj_j2k_write_cbd(p_j2k,p_stream,p_manager)) {
                return 0;
        }

        l_tcp = &(p_j2k->m_cp.tcps[p_j2k->m_current_tile_number]);
        l_mct_record = l_tcp->m_mct_records;

        for (i=0;i<l_tcp->m_nb_mct_records;++i) {

                if (! opj_j2k_write_mct_record(p_j2k,l_mct_record,p_stream,p_manager)) {
                        return 0;
                }

                ++l_mct_record;
        }

        l_mcc_record = l_tcp->m_mcc_records;

        for (i=0;i<l_tcp->m_nb_mcc_records;++i) {

                if (! opj_j2k_write_mcc_record(p_j2k,l_mcc_record,p_stream,p_manager)) {
                        return 0;
                }

                ++l_mcc_record;
        }

        if (! opj_j2k_write_mco(p_j2k,p_stream,p_manager)) {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_image_components(opj_j2k_t *p_j2k,
                                                                        struct opj_stream_private *p_stream,
                                                                        struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 compno;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4767, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4768, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4769, __PRETTY_FUNCTION__));

        for (compno = 1; compno < p_j2k->m_private_image->numcomps; ++compno)
        {
                if (! opj_j2k_write_coc(p_j2k,compno,p_stream, p_manager)) {
                        return 0;
                }

                if (! opj_j2k_write_qcc(p_j2k,compno,p_stream, p_manager)) {
                        return 0;
                }
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_regions( opj_j2k_t *p_j2k,
                                                        struct opj_stream_private *p_stream,
                                                        struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 compno;
        const opj_tccp_t *l_tccp = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4793, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4794, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4795, __PRETTY_FUNCTION__));

        l_tccp = p_j2k->m_cp.tcps->tccps;

        for (compno = 0; compno < p_j2k->m_private_image->numcomps; ++compno) {
                if (l_tccp->roishift) {

                        if (! opj_j2k_write_rgn(p_j2k,0,compno,p_j2k->m_private_image->numcomps,p_stream,p_manager)) {
                                return 0;
                        }
                }

                ++l_tccp;
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_epc( opj_j2k_t *p_j2k,
                                                struct opj_stream_private *p_stream,
                                                struct opj_event_mgr * p_manager )
{
        opj_codestream_index_t * l_cstr_index = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4820, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4821, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4822, __PRETTY_FUNCTION__));

        l_cstr_index = p_j2k->cstr_index;
        if (l_cstr_index) {
                l_cstr_index->codestream_size = opj_stream_tell(p_stream);




                l_cstr_index->codestream_size -= l_cstr_index->main_head_start;

        }
# 4848 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}

OPJ_BOOL opj_j2k_read_unk ( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        OPJ_UINT32 *output_marker,
                                                        opj_event_mgr_t * p_manager
                                                        )
{
        OPJ_UINT32 l_unknown_marker;
        const opj_dec_memory_marker_handler_t * l_marker_handler;
        OPJ_UINT32 l_size_unk = 2;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4862, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4863, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4864, __PRETTY_FUNCTION__));

        opj_event_msg(p_manager, 2, "Unknown marker\n");

        while(1) {

                if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                        opj_event_msg(p_manager, 1, "Stream too short\n");
                        return 0;
                }


                opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_unknown_marker,2);

                if (!(l_unknown_marker < 0xff00)) {


                        l_marker_handler = opj_j2k_get_marker_handler(l_unknown_marker);

                        if (!(p_j2k->m_specific_param.m_decoder.m_state & l_marker_handler->states)) {
                                opj_event_msg(p_manager, 1, "Marker is not compliant with its position\n");
                                return 0;
                        }
                        else {
                                if (l_marker_handler->id != 0) {

                                        if (l_marker_handler->id != 0xff90)
                                        {
                                                OPJ_BOOL res = opj_j2k_add_mhmarker(p_j2k->cstr_index, 0,
                                                                (OPJ_UINT32) opj_stream_tell(p_stream) - l_size_unk,
                                                                l_size_unk);
                                                if (res == 0) {
                                                        opj_event_msg(p_manager, 1, "Not enough memory to add mh marker\n");
                                                        return 0;
                                                }
                                        }
                                        break;
                                }
                                else
                                        l_size_unk += 2;
                        }
                }
        }

        *output_marker = l_marker_handler->id ;

        return 1;
}

OPJ_BOOL opj_j2k_write_mct_record( opj_j2k_t *p_j2k,
                                                                opj_mct_data_t * p_mct_record,
                                                                struct opj_stream_private *p_stream,
                                                                struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 l_mct_size;
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_tmp;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4923, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 4924, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 4925, __PRETTY_FUNCTION__));

        l_mct_size = 10 + p_mct_record->m_data_size;

        if (l_mct_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_mct_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_mct_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write MCT marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_mct_size;
        }

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_data,0xff74,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_mct_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,0,2);
        l_current_data += 2;


        l_tmp = (p_mct_record->m_index & 0xff) | (p_mct_record->m_array_type << 8) | (p_mct_record->m_element_type << 10);

        opj_write_bytes_LE(l_current_data,l_tmp,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,0,2);
        l_current_data+=2;

        memcpy(l_current_data,p_mct_record->m_data,p_mct_record->m_data_size);

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_mct_size,p_manager) != l_mct_size) {
                return 0;
        }

        return 1;
}
# 4979 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_mct ( opj_j2k_t *p_j2k,
                                                                    OPJ_BYTE * p_header_data,
                                                                    OPJ_UINT32 p_header_size,
                                                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 i;
        opj_tcp_t *l_tcp = 00;
        OPJ_UINT32 l_tmp;
        OPJ_UINT32 l_indix;
        opj_mct_data_t * l_mct_data;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 4992, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 4993, __PRETTY_FUNCTION__));

        l_tcp = p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH ?
                        &p_j2k->m_cp.tcps[p_j2k->m_current_tile_number] :
                        p_j2k->m_specific_param.m_decoder.m_default_tcp;

        if (p_header_size < 2) {
                opj_event_msg(p_manager, 1, "Error reading MCT marker\n");
                return 0;
        }


        opj_read_bytes_LE(p_header_data,&l_tmp,2);
        p_header_data += 2;
        if (l_tmp != 0) {
                opj_event_msg(p_manager, 2, "Cannot take in charge mct data within multiple MCT records\n");
                return 1;
        }

        if(p_header_size <= 6) {
                opj_event_msg(p_manager, 1, "Error reading MCT marker\n");
                return 0;
        }


        opj_read_bytes_LE(p_header_data,&l_tmp,2);
        p_header_data += 2;

        l_indix = l_tmp & 0xff;
        l_mct_data = l_tcp->m_mct_records;

        for (i=0;i<l_tcp->m_nb_mct_records;++i) {
                if (l_mct_data->m_index == l_indix) {
                        break;
                }
                ++l_mct_data;
        }


        if (i == l_tcp->m_nb_mct_records) {
                if (l_tcp->m_nb_mct_records == l_tcp->m_nb_max_mct_records) {
                        opj_mct_data_t *new_mct_records;
                        l_tcp->m_nb_max_mct_records += 10;

                        new_mct_records = (opj_mct_data_t *) ((size_t)(l_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(l_tcp->m_mct_records, l_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t)));
                        if (! new_mct_records) {
                                free(l_tcp->m_mct_records);
                                l_tcp->m_mct_records = ((void*)0);
                                l_tcp->m_nb_max_mct_records = 0;
                                l_tcp->m_nb_mct_records = 0;
                                opj_event_msg(p_manager, 1, "Not enough memory to read MCT marker\n");
                                return 0;
                        }
                        l_tcp->m_mct_records = new_mct_records;
                        l_mct_data = l_tcp->m_mct_records + l_tcp->m_nb_mct_records;
                        memset(l_mct_data ,0,(l_tcp->m_nb_max_mct_records - l_tcp->m_nb_mct_records) * sizeof(opj_mct_data_t));
                }

                l_mct_data = l_tcp->m_mct_records + l_tcp->m_nb_mct_records;
        }

        if (l_mct_data->m_data) {
                free(l_mct_data->m_data);
                l_mct_data->m_data = 00;
        }

        l_mct_data->m_index = l_indix;
        l_mct_data->m_array_type = (J2K_MCT_ARRAY_TYPE)((l_tmp >> 8) & 3);
        l_mct_data->m_element_type = (J2K_MCT_ELEMENT_TYPE)((l_tmp >> 10) & 3);

        opj_read_bytes_LE(p_header_data,&l_tmp,2);
        p_header_data+=2;
        if (l_tmp != 0) {
                opj_event_msg(p_manager, 2, "Cannot take in charge multiple MCT markers\n");
                return 1;
        }

        p_header_size -= 6;

        l_mct_data->m_data = (OPJ_BYTE*)((size_t)(p_header_size) >= (size_t)-0x100 ? ((void*)0) : malloc(p_header_size));
        if (! l_mct_data->m_data) {
                opj_event_msg(p_manager, 1, "Error reading MCT marker\n");
                return 0;
        }
        memcpy(l_mct_data->m_data,p_header_data,p_header_size);

        l_mct_data->m_data_size = p_header_size;
        ++l_tcp->m_nb_mct_records;

        return 1;
}

OPJ_BOOL opj_j2k_write_mcc_record( opj_j2k_t *p_j2k,
                                                                struct opj_simple_mcc_decorrelation_data * p_mcc_record,
                                                                struct opj_stream_private *p_stream,
                                                                struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_mcc_size;
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_nb_bytes_for_comp;
        OPJ_UINT32 l_mask;
        OPJ_UINT32 l_tmcc;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 5098, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 5099, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 5100, __PRETTY_FUNCTION__));

        if (p_mcc_record->m_nb_comps > 255 ) {
        l_nb_bytes_for_comp = 2;
                l_mask = 0x8000;
        }
        else {
                l_nb_bytes_for_comp = 1;
                l_mask = 0;
        }

        l_mcc_size = p_mcc_record->m_nb_comps * 2 * l_nb_bytes_for_comp + 19;
        if (l_mcc_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size)
        {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_mcc_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_mcc_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write MCC marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_mcc_size;
        }

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_data,0xff75,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_mcc_size-2,2);
        l_current_data += 2;


        opj_write_bytes_LE(l_current_data,0,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,p_mcc_record->m_index,1);
        ++l_current_data;


        opj_write_bytes_LE(l_current_data,0,2);
        l_current_data+=2;

        opj_write_bytes_LE(l_current_data,1,2);
        l_current_data+=2;

        opj_write_bytes_LE(l_current_data,0x1,1);
        ++l_current_data;

        opj_write_bytes_LE(l_current_data,p_mcc_record->m_nb_comps | l_mask,2);
        l_current_data+=2;

        for (i=0;i<p_mcc_record->m_nb_comps;++i) {
                opj_write_bytes_LE(l_current_data,i,l_nb_bytes_for_comp);
                l_current_data+=l_nb_bytes_for_comp;
        }

        opj_write_bytes_LE(l_current_data,p_mcc_record->m_nb_comps|l_mask,2);
        l_current_data+=2;

        for (i=0;i<p_mcc_record->m_nb_comps;++i)
        {
                opj_write_bytes_LE(l_current_data,i,l_nb_bytes_for_comp);
                l_current_data+=l_nb_bytes_for_comp;
        }

        l_tmcc = ((!p_mcc_record->m_is_irreversible)&1)<<16;

        if (p_mcc_record->m_decorrelation_array) {
                l_tmcc |= p_mcc_record->m_decorrelation_array->m_index;
        }

        if (p_mcc_record->m_offset_array) {
                l_tmcc |= ((p_mcc_record->m_offset_array->m_index)<<8);
        }

        opj_write_bytes_LE(l_current_data,l_tmcc,3);
        l_current_data+=3;

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_mcc_size,p_manager) != l_mcc_size) {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_read_mcc ( opj_j2k_t *p_j2k,
                                                OPJ_BYTE * p_header_data,
                                                OPJ_UINT32 p_header_size,
                                                opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 i,j;
        OPJ_UINT32 l_tmp;
        OPJ_UINT32 l_indix;
        opj_tcp_t * l_tcp;
        opj_simple_mcc_decorrelation_data_t * l_mcc_record;
        opj_mct_data_t * l_mct_data;
        OPJ_UINT32 l_nb_collections;
        OPJ_UINT32 l_nb_comps;
        OPJ_UINT32 l_nb_bytes_by_comp;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 5204, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 5205, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 5206, __PRETTY_FUNCTION__));

        l_tcp = p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH ?
                        &p_j2k->m_cp.tcps[p_j2k->m_current_tile_number] :
                        p_j2k->m_specific_param.m_decoder.m_default_tcp;

        if (p_header_size < 2) {
                opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                return 0;
        }


        opj_read_bytes_LE(p_header_data,&l_tmp,2);
        p_header_data += 2;
        if (l_tmp != 0) {
                opj_event_msg(p_manager, 2, "Cannot take in charge multiple data spanning\n");
                return 1;
        }

        if (p_header_size < 7) {
                opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_indix,1);
        ++p_header_data;

        l_mcc_record = l_tcp->m_mcc_records;

        for(i=0;i<l_tcp->m_nb_mcc_records;++i) {
                if (l_mcc_record->m_index == l_indix) {
                        break;
                }
                ++l_mcc_record;
        }


        if (i == l_tcp->m_nb_mcc_records) {
                if (l_tcp->m_nb_mcc_records == l_tcp->m_nb_max_mcc_records) {
                        opj_simple_mcc_decorrelation_data_t *new_mcc_records;
                        l_tcp->m_nb_max_mcc_records += 10;

                        new_mcc_records = (opj_simple_mcc_decorrelation_data_t *) ((size_t)(l_tcp->m_nb_max_mcc_records * sizeof(opj_simple_mcc_decorrelation_data_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(l_tcp->m_mcc_records, l_tcp->m_nb_max_mcc_records * sizeof(opj_simple_mcc_decorrelation_data_t)));

                        if (! new_mcc_records) {
                                free(l_tcp->m_mcc_records);
                                l_tcp->m_mcc_records = ((void*)0);
                                l_tcp->m_nb_max_mcc_records = 0;
                                l_tcp->m_nb_mcc_records = 0;
                                opj_event_msg(p_manager, 1, "Not enough memory to read MCC marker\n");
                                return 0;
                        }
                        l_tcp->m_mcc_records = new_mcc_records;
                        l_mcc_record = l_tcp->m_mcc_records + l_tcp->m_nb_mcc_records;
                        memset(l_mcc_record,0,(l_tcp->m_nb_max_mcc_records-l_tcp->m_nb_mcc_records) * sizeof(opj_simple_mcc_decorrelation_data_t));
                }
                l_mcc_record = l_tcp->m_mcc_records + l_tcp->m_nb_mcc_records;
        }
        l_mcc_record->m_index = l_indix;


        opj_read_bytes_LE(p_header_data,&l_tmp,2);
        p_header_data+=2;
        if (l_tmp != 0) {
                opj_event_msg(p_manager, 2, "Cannot take in charge multiple data spanning\n");
                return 1;
        }

        opj_read_bytes_LE(p_header_data,&l_nb_collections,2);
        p_header_data+=2;

        if (l_nb_collections > 1) {
                opj_event_msg(p_manager, 2, "Cannot take in charge multiple collections\n");
                return 1;
        }

        p_header_size -= 7;

        for (i=0;i<l_nb_collections;++i) {
                if (p_header_size < 3) {
                        opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                        return 0;
                }

                opj_read_bytes_LE(p_header_data,&l_tmp,1);
                ++p_header_data;

                if (l_tmp != 1) {
                        opj_event_msg(p_manager, 2, "Cannot take in charge collections other than array decorrelation\n");
                        return 1;
                }

                opj_read_bytes_LE(p_header_data,&l_nb_comps,2);

                p_header_data+=2;
                p_header_size-=3;

                l_nb_bytes_by_comp = 1 + (l_nb_comps>>15);
                l_mcc_record->m_nb_comps = l_nb_comps & 0x7fff;

                if (p_header_size < (l_nb_bytes_by_comp * l_mcc_record->m_nb_comps + 2)) {
                        opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                        return 0;
                }

                p_header_size -= (l_nb_bytes_by_comp * l_mcc_record->m_nb_comps + 2);

                for (j=0;j<l_mcc_record->m_nb_comps;++j) {
                        opj_read_bytes_LE(p_header_data,&l_tmp,l_nb_bytes_by_comp);
                        p_header_data+=l_nb_bytes_by_comp;

                        if (l_tmp != j) {
                                opj_event_msg(p_manager, 2, "Cannot take in charge collections with indix shuffle\n");
                                return 1;
                        }
                }

                opj_read_bytes_LE(p_header_data,&l_nb_comps,2);
                p_header_data+=2;

                l_nb_bytes_by_comp = 1 + (l_nb_comps>>15);
                l_nb_comps &= 0x7fff;

                if (l_nb_comps != l_mcc_record->m_nb_comps) {
                        opj_event_msg(p_manager, 2, "Cannot take in charge collections without same number of indixes\n");
                        return 1;
                }

                if (p_header_size < (l_nb_bytes_by_comp * l_mcc_record->m_nb_comps + 3)) {
                        opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                        return 0;
                }

                p_header_size -= (l_nb_bytes_by_comp * l_mcc_record->m_nb_comps + 3);

                for (j=0;j<l_mcc_record->m_nb_comps;++j) {
                        opj_read_bytes_LE(p_header_data,&l_tmp,l_nb_bytes_by_comp);
                        p_header_data+=l_nb_bytes_by_comp;

                        if (l_tmp != j) {
                                opj_event_msg(p_manager, 2, "Cannot take in charge collections with indix shuffle\n");
                                return 1;
                        }
                }

                opj_read_bytes_LE(p_header_data,&l_tmp,3);
                p_header_data += 3;

                l_mcc_record->m_is_irreversible = ! ((l_tmp>>16) & 1);
                l_mcc_record->m_decorrelation_array = 00;
                l_mcc_record->m_offset_array = 00;

                l_indix = l_tmp & 0xff;
                if (l_indix != 0) {
                        l_mct_data = l_tcp->m_mct_records;
                        for (j=0;j<l_tcp->m_nb_mct_records;++j) {
                                if (l_mct_data->m_index == l_indix) {
                                        l_mcc_record->m_decorrelation_array = l_mct_data;
                                        break;
                                }
                                ++l_mct_data;
                        }

                        if (l_mcc_record->m_decorrelation_array == 00) {
                                opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                                return 0;
                        }
                }

                l_indix = (l_tmp >> 8) & 0xff;
                if (l_indix != 0) {
                        l_mct_data = l_tcp->m_mct_records;
                        for (j=0;j<l_tcp->m_nb_mct_records;++j) {
                                if (l_mct_data->m_index == l_indix) {
                                        l_mcc_record->m_offset_array = l_mct_data;
                                        break;
                                }
                                ++l_mct_data;
                        }

                        if (l_mcc_record->m_offset_array == 00) {
                                opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                                return 0;
                        }
                }
        }

        if (p_header_size != 0) {
                opj_event_msg(p_manager, 1, "Error reading MCC marker\n");
                return 0;
        }

        ++l_tcp->m_nb_mcc_records;

        return 1;
}

OPJ_BOOL opj_j2k_write_mco( opj_j2k_t *p_j2k,
                                                struct opj_stream_private *p_stream,
                                                struct opj_event_mgr * p_manager
                                  )
{
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_mco_size;
        opj_tcp_t * l_tcp = 00;
        opj_simple_mcc_decorrelation_data_t * l_mcc_record;
        OPJ_UINT32 i;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 5415, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 5416, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 5417, __PRETTY_FUNCTION__));

        l_tcp =&(p_j2k->m_cp.tcps[p_j2k->m_current_tile_number]);
        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        l_mco_size = 5 + l_tcp->m_nb_mcc_records;
        if (l_mco_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {

                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_mco_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_mco_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write MCO marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_mco_size;
        }

        opj_write_bytes_LE(l_current_data,0xff77,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_mco_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_tcp->m_nb_mcc_records,1);
        ++l_current_data;

        l_mcc_record = l_tcp->m_mcc_records;
        for (i=0;i<l_tcp->m_nb_mcc_records;++i) {
                opj_write_bytes_LE(l_current_data,l_mcc_record->m_index,1);
                ++l_current_data;

                ++l_mcc_record;
        }

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_mco_size,p_manager) != l_mco_size) {
                return 0;
        }

        return 1;
}
# 5469 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_mco ( opj_j2k_t *p_j2k,
                                                                    OPJ_BYTE * p_header_data,
                                                                    OPJ_UINT32 p_header_size,
                                                                    opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_tmp, i;
        OPJ_UINT32 l_nb_stages;
        opj_tcp_t * l_tcp;
        opj_tccp_t * l_tccp;
        opj_image_t * l_image;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 5482, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 5483, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 5484, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_tcp = p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH ?
                        &p_j2k->m_cp.tcps[p_j2k->m_current_tile_number] :
                        p_j2k->m_specific_param.m_decoder.m_default_tcp;

        if (p_header_size < 1) {
                opj_event_msg(p_manager, 1, "Error reading MCO marker\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_nb_stages,1);
        ++p_header_data;

        if (l_nb_stages > 1) {
                opj_event_msg(p_manager, 2, "Cannot take in charge multiple transformation stages.\n");
                return 1;
        }

        if (p_header_size != l_nb_stages + 1) {
                opj_event_msg(p_manager, 2, "Error reading MCO marker\n");
                return 0;
        }

        l_tccp = l_tcp->tccps;

        for (i=0;i<l_image->numcomps;++i) {
                l_tccp->m_dc_level_shift = 0;
                ++l_tccp;
        }

        if (l_tcp->m_mct_decoding_matrix) {
                free(l_tcp->m_mct_decoding_matrix);
                l_tcp->m_mct_decoding_matrix = 00;
        }

        for (i=0;i<l_nb_stages;++i) {
                opj_read_bytes_LE(p_header_data,&l_tmp,1);
                ++p_header_data;

                if (! opj_j2k_add_mct(l_tcp,p_j2k->m_private_image,l_tmp)) {
                        return 0;
                }
        }

        return 1;
}

OPJ_BOOL opj_j2k_add_mct(opj_tcp_t * p_tcp, opj_image_t * p_image, OPJ_UINT32 p_index)
{
        OPJ_UINT32 i;
        opj_simple_mcc_decorrelation_data_t * l_mcc_record;
        opj_mct_data_t * l_deco_array, * l_offset_array;
        OPJ_UINT32 l_data_size,l_mct_size, l_offset_size;
        OPJ_UINT32 l_nb_elem;
        OPJ_UINT32 * l_offset_data, * l_current_offset_data;
        opj_tccp_t * l_tccp;


        ((p_tcp != 00) ? (void) (0) : __assert_fail ("p_tcp != 00", "./openjpeg/libopenjpeg/j2k.c", 5544, __PRETTY_FUNCTION__));

        l_mcc_record = p_tcp->m_mcc_records;

        for (i=0;i<p_tcp->m_nb_mcc_records;++i) {
                if (l_mcc_record->m_index == p_index) {
                        break;
                }
        }

        if (i==p_tcp->m_nb_mcc_records) {

                return 1;
        }

        if (l_mcc_record->m_nb_comps != p_image->numcomps) {

                return 1;
        }

        l_deco_array = l_mcc_record->m_decorrelation_array;

        if (l_deco_array) {
                l_data_size = MCT_ELEMENT_SIZE[l_deco_array->m_element_type] * p_image->numcomps * p_image->numcomps;
                if (l_deco_array->m_data_size != l_data_size) {
                        return 0;
                }

                l_nb_elem = p_image->numcomps * p_image->numcomps;
                l_mct_size = l_nb_elem * sizeof(OPJ_FLOAT32);
                p_tcp->m_mct_decoding_matrix = (OPJ_FLOAT32*)((size_t)(l_mct_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_mct_size));

                if (! p_tcp->m_mct_decoding_matrix ) {
                        return 0;
                }

                j2k_mct_read_functions_to_float[l_deco_array->m_element_type](l_deco_array->m_data,p_tcp->m_mct_decoding_matrix,l_nb_elem);
        }

        l_offset_array = l_mcc_record->m_offset_array;

        if (l_offset_array) {
                l_data_size = MCT_ELEMENT_SIZE[l_offset_array->m_element_type] * p_image->numcomps;
                if (l_offset_array->m_data_size != l_data_size) {
                        return 0;
                }

                l_nb_elem = p_image->numcomps;
                l_offset_size = l_nb_elem * sizeof(OPJ_UINT32);
                l_offset_data = (OPJ_UINT32*)((size_t)(l_offset_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_offset_size));

                if (! l_offset_data ) {
                        return 0;
                }

                j2k_mct_read_functions_to_int32[l_offset_array->m_element_type](l_offset_array->m_data,l_offset_data,l_nb_elem);

                l_tccp = p_tcp->tccps;
                l_current_offset_data = l_offset_data;

                for (i=0;i<p_image->numcomps;++i) {
                        l_tccp->m_dc_level_shift = *(l_current_offset_data++);
                        ++l_tccp;
                }

                free(l_offset_data);
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_cbd( opj_j2k_t *p_j2k,
                                                struct opj_stream_private *p_stream,
                                                struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_cbd_size;
        OPJ_BYTE * l_current_data = 00;
        opj_image_t *l_image = 00;
        opj_image_comp_t * l_comp = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 5626, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 5627, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 5628, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_cbd_size = 6 + p_j2k->m_private_image->numcomps;

        if (l_cbd_size > p_j2k->m_specific_param.m_encoder.m_header_tile_data_size) {
                OPJ_BYTE *new_header_tile_data = (OPJ_BYTE *) ((size_t)(l_cbd_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_encoder.m_header_tile_data, l_cbd_size));
                if (! new_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = ((void*)0);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                        opj_event_msg(p_manager, 1, "Not enough memory to write CBD marker\n");
                        return 0;
                }
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = new_header_tile_data;
                p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = l_cbd_size;
        }

        l_current_data = p_j2k->m_specific_param.m_encoder.m_header_tile_data;

        opj_write_bytes_LE(l_current_data,0xff78,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_cbd_size-2,2);
        l_current_data += 2;

        opj_write_bytes_LE(l_current_data,l_image->numcomps, 2);
        l_current_data+=2;

        l_comp = l_image->comps;

        for (i=0;i<l_image->numcomps;++i) {
                opj_write_bytes_LE(l_current_data, (l_comp->sgnd << 7) | (l_comp->prec - 1), 1);
                ++l_current_data;

                ++l_comp;
        }

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_header_tile_data,l_cbd_size,p_manager) != l_cbd_size) {
                return 0;
        }

        return 1;
}
# 5680 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_read_cbd ( opj_j2k_t *p_j2k,
                                                                OPJ_BYTE * p_header_data,
                                                                OPJ_UINT32 p_header_size,
                                                                opj_event_mgr_t * p_manager
                                    )
{
        OPJ_UINT32 l_nb_comp,l_num_comp;
        OPJ_UINT32 l_comp_def;
        OPJ_UINT32 i;
        opj_image_comp_t * l_comp = 00;


        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 5692, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 5693, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 5694, __PRETTY_FUNCTION__));

        l_num_comp = p_j2k->m_private_image->numcomps;

        if (p_header_size != (p_j2k->m_private_image->numcomps + 2)) {
                opj_event_msg(p_manager, 1, "Crror reading CBD marker\n");
                return 0;
        }

        opj_read_bytes_LE(p_header_data,&l_nb_comp,2);
        p_header_data+=2;

        if (l_nb_comp != l_num_comp) {
                opj_event_msg(p_manager, 1, "Crror reading CBD marker\n");
                return 0;
        }

        l_comp = p_j2k->m_private_image->comps;
        for (i=0;i<l_num_comp;++i) {
                opj_read_bytes_LE(p_header_data,&l_comp_def,1);
                ++p_header_data;
        l_comp->sgnd = (l_comp_def>>7) & 1;
                l_comp->prec = (l_comp_def&0x7f) + 1;
                ++l_comp;
        }

        return 1;
}





void opj_j2k_setup_decoder(opj_j2k_t *j2k, opj_dparameters_t *parameters)
{
        if(j2k && parameters) {
                j2k->m_cp.m_specific_param.m_dec.m_layer = parameters->cp_layer;
                j2k->m_cp.m_specific_param.m_dec.m_reduce = parameters->cp_reduce;






        }
}





opj_j2k_t* opj_j2k_create_compress(void)
{
        opj_j2k_t *l_j2k = (opj_j2k_t*) ((size_t)(sizeof(opj_j2k_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(sizeof(opj_j2k_t)));
        if (!l_j2k) {
                return ((void*)0);
        }

        memset(l_j2k,0,sizeof(opj_j2k_t));

        l_j2k->m_is_decoder = 0;
        l_j2k->m_cp.m_is_decoder = 0;

        l_j2k->m_specific_param.m_encoder.m_header_tile_data = (OPJ_BYTE *) ((size_t)(1000) >= (size_t)-0x100 ? ((void*)0) : malloc(1000));
        if (! l_j2k->m_specific_param.m_encoder.m_header_tile_data) {
                opj_j2k_destroy(l_j2k);
                return ((void*)0);
        }

        l_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 1000;


        l_j2k->m_validation_list = opj_procedure_list_create();
        if (! l_j2k->m_validation_list) {
                opj_j2k_destroy(l_j2k);
                return ((void*)0);
        }


        l_j2k->m_procedure_list = opj_procedure_list_create();
        if (! l_j2k->m_procedure_list) {
                opj_j2k_destroy(l_j2k);
                return ((void*)0);
        }

        return l_j2k;
}

void opj_j2k_setup_encoder( opj_j2k_t *p_j2k,
                                                    opj_cparameters_t *parameters,
                                                    opj_image_t *image,
                                                    opj_event_mgr_t * p_manager)
{
        OPJ_UINT32 i, j, tileno, numpocs_tile;
        opj_cp_t *cp = 00;

        if(!p_j2k || !parameters || ! image) {
                return;
        }


        cp = &(p_j2k->m_cp);


        cp->tw = 1;
        cp->th = 1;




        cp->m_specific_param.m_enc.m_cinema = parameters->cp_cinema;
        cp->m_specific_param.m_enc.m_max_comp_size = parameters->max_comp_size;
        cp->rsiz = parameters->cp_rsiz;
        cp->m_specific_param.m_enc.m_disto_alloc = parameters->cp_disto_alloc;
        cp->m_specific_param.m_enc.m_fixed_alloc = parameters->cp_fixed_alloc;
        cp->m_specific_param.m_enc.m_fixed_quality = parameters->cp_fixed_quality;


        if (parameters->cp_matrice) {
                size_t array_size = parameters->tcp_numlayers * parameters->numresolution * 3 * sizeof(OPJ_INT32);
                cp->m_specific_param.m_enc.m_matrice = (OPJ_INT32 *) ((size_t)(array_size) >= (size_t)-0x100 ? ((void*)0) : malloc(array_size));
                memcpy(cp->m_specific_param.m_enc.m_matrice, parameters->cp_matrice, array_size);
        }


        cp->tdx = parameters->cp_tdx;
        cp->tdy = parameters->cp_tdy;


        cp->tx0 = parameters->cp_tx0;
        cp->ty0 = parameters->cp_ty0;


        if(parameters->cp_comment) {
                cp->comment = (char*)((size_t)(strlen(parameters->cp_comment) + 1) >= (size_t)-0x100 ? ((void*)0) : malloc(strlen(parameters->cp_comment) + 1));
                if(cp->comment) {
                        strcpy(cp->comment, parameters->cp_comment);
                }
        }





        if (parameters->tile_size_on) {
                cp->tw = opj_int_ceildiv(image->x1 - cp->tx0, cp->tdx);
                cp->th = opj_int_ceildiv(image->y1 - cp->ty0, cp->tdy);
        } else {
                cp->tdx = image->x1 - cp->tx0;
                cp->tdy = image->y1 - cp->ty0;
        }

        if (parameters->tp_on) {
                cp->m_specific_param.m_enc.m_tp_flag = parameters->tp_flag;
                cp->m_specific_param.m_enc.m_tp_on = 1;
        }
# 5909 "./openjpeg/libopenjpeg/j2k.c"
        cp->tcps = (opj_tcp_t*) ((size_t)(cp->tw * cp->th) != 0 && (size_t)(cp->tw * cp->th) >= (size_t)-0x100 / (size_t)(sizeof(opj_tcp_t)) ? ((void*)0) : calloc(cp->tw * cp->th, sizeof(opj_tcp_t)));
        if (parameters->numpocs) {

                opj_j2k_check_poc_val(parameters->POC,parameters->numpocs, parameters->numresolution, image->numcomps, parameters->tcp_numlayers, p_manager);

        }

        for (tileno = 0; tileno < cp->tw * cp->th; tileno++) {
                opj_tcp_t *tcp = &cp->tcps[tileno];
                tcp->numlayers = parameters->tcp_numlayers;

                for (j = 0; j < tcp->numlayers; j++) {
                        if(cp->m_specific_param.m_enc.m_cinema){
                                if (cp->m_specific_param.m_enc.m_fixed_quality) {
                                        tcp->distoratio[j] = parameters->tcp_distoratio[j];
                                }
                                tcp->rates[j] = parameters->tcp_rates[j];
                        }else{
                                if (cp->m_specific_param.m_enc.m_fixed_quality) {
                                        tcp->distoratio[j] = parameters->tcp_distoratio[j];
                                } else {
                                        tcp->rates[j] = parameters->tcp_rates[j];
                                }
                        }
                }

                tcp->csty = parameters->csty;
                tcp->prg = parameters->prog_order;
                tcp->mct = parameters->tcp_mct;

                numpocs_tile = 0;
                tcp->POC = 0;

                if (parameters->numpocs) {

                        tcp->POC = 1;
                        for (i = 0; i < parameters->numpocs; i++) {
                                if (tileno + 1 == parameters->POC[i].tile ) {
                                        opj_poc_t *tcp_poc = &tcp->pocs[numpocs_tile];

                                        tcp_poc->resno0 = parameters->POC[numpocs_tile].resno0;
                                        tcp_poc->compno0 = parameters->POC[numpocs_tile].compno0;
                                        tcp_poc->layno1 = parameters->POC[numpocs_tile].layno1;
                                        tcp_poc->resno1 = parameters->POC[numpocs_tile].resno1;
                                        tcp_poc->compno1 = parameters->POC[numpocs_tile].compno1;
                                        tcp_poc->prg1 = parameters->POC[numpocs_tile].prg1;
                                        tcp_poc->tile = parameters->POC[numpocs_tile].tile;

                                        numpocs_tile++;
                                }
                        }

                        tcp->numpocs = numpocs_tile -1 ;
                }else{
                        tcp->numpocs = 0;
                }

                tcp->tccps = (opj_tccp_t*) ((size_t)(image->numcomps) != 0 && (size_t)(image->numcomps) >= (size_t)-0x100 / (size_t)(sizeof(opj_tccp_t)) ? ((void*)0) : calloc(image->numcomps, sizeof(opj_tccp_t)));

                if (parameters->mct_data) {

                    OPJ_UINT32 lMctSize = image->numcomps * image->numcomps * sizeof(OPJ_FLOAT32);
                    OPJ_FLOAT32 * lTmpBuf = (OPJ_FLOAT32*)((size_t)(lMctSize) >= (size_t)-0x100 ? ((void*)0) : malloc(lMctSize));
                    OPJ_INT32 * l_dc_shift = (OPJ_INT32 *) ((OPJ_BYTE *) parameters->mct_data + lMctSize);

                    tcp->mct = 2;
                    tcp->m_mct_coding_matrix = (OPJ_FLOAT32*)((size_t)(lMctSize) >= (size_t)-0x100 ? ((void*)0) : malloc(lMctSize));
                    memcpy(tcp->m_mct_coding_matrix,parameters->mct_data,lMctSize);
                    memcpy(lTmpBuf,parameters->mct_data,lMctSize);

                    tcp->m_mct_decoding_matrix = (OPJ_FLOAT32*)((size_t)(lMctSize) >= (size_t)-0x100 ? ((void*)0) : malloc(lMctSize));
                    ((opj_matrix_inversion_f(lTmpBuf,(tcp->m_mct_decoding_matrix),image->numcomps)) ? (void) (0) : __assert_fail ("opj_matrix_inversion_f(lTmpBuf,(tcp->m_mct_decoding_matrix),image->numcomps)", "./openjpeg/libopenjpeg/j2k.c", 5980, __PRETTY_FUNCTION__));

                    tcp->mct_norms = (OPJ_FLOAT64*)
                                    ((size_t)(image->numcomps * sizeof(OPJ_FLOAT64)) >= (size_t)-0x100 ? ((void*)0) : malloc(image->numcomps * sizeof(OPJ_FLOAT64)));

                    opj_calculate_norms(tcp->mct_norms,image->numcomps,tcp->m_mct_decoding_matrix);
                    free(lTmpBuf);

                    for (i = 0; i < image->numcomps; i++) {
                            opj_tccp_t *tccp = &tcp->tccps[i];
                            tccp->m_dc_level_shift = l_dc_shift[i];
                    }

                    opj_j2k_setup_mct_encoding(tcp,image);
                }
                else {
                        for (i = 0; i < image->numcomps; i++) {
                                opj_tccp_t *tccp = &tcp->tccps[i];
                                opj_image_comp_t * l_comp = &(image->comps[i]);

                                if (! l_comp->sgnd) {
                                        tccp->m_dc_level_shift = 1 << (l_comp->prec - 1);
                                }
                        }
                }

                for (i = 0; i < image->numcomps; i++) {
                        opj_tccp_t *tccp = &tcp->tccps[i];

                        tccp->csty = parameters->csty & 0x01;
                        tccp->numresolutions = parameters->numresolution;
                        tccp->cblkw = opj_int_floorlog2(parameters->cblockw_init);
                        tccp->cblkh = opj_int_floorlog2(parameters->cblockh_init);
                        tccp->cblksty = parameters->mode;
                        tccp->qmfbid = parameters->irreversible ? 0 : 1;
                        tccp->qntsty = parameters->irreversible ? 2 : 0;
                        tccp->numgbits = 2;

                        if ((OPJ_INT32)i == parameters->roi_compno) {
                                tccp->roishift = parameters->roi_shift;
                        } else {
                                tccp->roishift = 0;
                        }

                        if(parameters->cp_cinema) {

                                tccp->prcw[0] = 7;
                                tccp->prch[0] = 7;

                                for (j = 1; j < tccp->numresolutions; j++) {
                                        tccp->prcw[j] = 8;
                                        tccp->prch[j] = 8;
                                }
                        }else{
                                if (parameters->csty & 0x01) {
                                        OPJ_INT32 p = 0, it_res;
                                        for (it_res = tccp->numresolutions - 1; it_res >= 0; it_res--) {
                                                if (p < parameters->res_spec) {

                                                        if (parameters->prcw_init[p] < 1) {
                                                                tccp->prcw[it_res] = 1;
                                                        } else {
                                                                tccp->prcw[it_res] = opj_int_floorlog2(parameters->prcw_init[p]);
                                                        }

                                                        if (parameters->prch_init[p] < 1) {
                                                                tccp->prch[it_res] = 1;
                                                        }else {
                                                                tccp->prch[it_res] = opj_int_floorlog2(parameters->prch_init[p]);
                                                        }

                                                } else {
                                                        OPJ_INT32 res_spec = parameters->res_spec;
                                                        OPJ_INT32 size_prcw = 0;
                                                        OPJ_INT32 size_prch = 0;

                                                        ((res_spec>0) ? (void) (0) : __assert_fail ("res_spec>0", "./openjpeg/libopenjpeg/j2k.c", 6056, __PRETTY_FUNCTION__));
                                                        size_prcw = parameters->prcw_init[res_spec - 1] >> (p - (res_spec - 1));
                                                        size_prch = parameters->prch_init[res_spec - 1] >> (p - (res_spec - 1));


                                                        if (size_prcw < 1) {
                                                                tccp->prcw[it_res] = 1;
                                                        } else {
                                                                tccp->prcw[it_res] = opj_int_floorlog2(size_prcw);
                                                        }

                                                        if (size_prch < 1) {
                                                                tccp->prch[it_res] = 1;
                                                        } else {
                                                                tccp->prch[it_res] = opj_int_floorlog2(size_prch);
                                                        }
                                                }
                                                p++;

                                        }
                                } else {
                                        for (j = 0; j < tccp->numresolutions; j++) {
                                                tccp->prcw[j] = 15;
                                                tccp->prch[j] = 15;
                                        }
                                }
                        }

                        opj_dwt_calc_explicit_stepsizes(tccp, image->comps[i].prec);
                }
        }

        if (parameters->mct_data) {
                free(parameters->mct_data);
                parameters->mct_data = 00;
        }
}

static OPJ_BOOL opj_j2k_add_mhmarker(opj_codestream_index_t *cstr_index, OPJ_UINT32 type, OPJ_OFF_T pos, OPJ_UINT32 len)
{
        ((cstr_index != 00) ? (void) (0) : __assert_fail ("cstr_index != 00", "./openjpeg/libopenjpeg/j2k.c", 6096, __PRETTY_FUNCTION__));


        if ((cstr_index->marknum + 1) > cstr_index->maxmarknum) {
                opj_marker_info_t *new_marker;
                cstr_index->maxmarknum = 100 + (OPJ_INT32) ((OPJ_FLOAT32) cstr_index->maxmarknum * 1.0F);
                new_marker = (opj_marker_info_t *) ((size_t)(cstr_index->maxmarknum *sizeof(opj_marker_info_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(cstr_index->marker, cstr_index->maxmarknum *sizeof(opj_marker_info_t)));
                if (! new_marker) {
                        free(cstr_index->marker);
                        cstr_index->marker = ((void*)0);
                        cstr_index->maxmarknum = 0;
                        cstr_index->marknum = 0;

                        return 0;
                }
                cstr_index->marker = new_marker;
        }


        cstr_index->marker[cstr_index->marknum].type = (OPJ_UINT16)type;
        cstr_index->marker[cstr_index->marknum].pos = (OPJ_INT32)pos;
        cstr_index->marker[cstr_index->marknum].len = (OPJ_INT32)len;
        cstr_index->marknum++;
        return 1;
}

static OPJ_BOOL opj_j2k_add_tlmarker(OPJ_UINT32 tileno, opj_codestream_index_t *cstr_index, OPJ_UINT32 type, OPJ_OFF_T pos, OPJ_UINT32 len)
{
        ((cstr_index != 00) ? (void) (0) : __assert_fail ("cstr_index != 00", "./openjpeg/libopenjpeg/j2k.c", 6124, __PRETTY_FUNCTION__));
        ((cstr_index->tile_index != 00) ? (void) (0) : __assert_fail ("cstr_index->tile_index != 00", "./openjpeg/libopenjpeg/j2k.c", 6125, __PRETTY_FUNCTION__));


        if ((cstr_index->tile_index[tileno].marknum + 1) > cstr_index->tile_index[tileno].maxmarknum) {
                opj_marker_info_t *new_marker;
                cstr_index->tile_index[tileno].maxmarknum = 100 + (OPJ_INT32) ((OPJ_FLOAT32) cstr_index->tile_index[tileno].maxmarknum * 1.0F);
                new_marker = (opj_marker_info_t *) ((size_t)(cstr_index->tile_index[tileno].maxmarknum *sizeof(opj_marker_info_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(cstr_index->tile_index[tileno].marker, cstr_index->tile_index[tileno].maxmarknum *sizeof(opj_marker_info_t)));


                if (! new_marker) {
                        free(cstr_index->tile_index[tileno].marker);
                        cstr_index->tile_index[tileno].marker = ((void*)0);
                        cstr_index->tile_index[tileno].maxmarknum = 0;
                        cstr_index->tile_index[tileno].marknum = 0;

                        return 0;
                }
                cstr_index->tile_index[tileno].marker = new_marker;
        }


        cstr_index->tile_index[tileno].marker[cstr_index->tile_index[tileno].marknum].type = (OPJ_UINT16)type;
        cstr_index->tile_index[tileno].marker[cstr_index->tile_index[tileno].marknum].pos = (OPJ_INT32)pos;
        cstr_index->tile_index[tileno].marker[cstr_index->tile_index[tileno].marknum].len = (OPJ_INT32)len;
        cstr_index->tile_index[tileno].marknum++;

        if (type == 0xff90) {
                OPJ_UINT32 l_current_tile_part = cstr_index->tile_index[tileno].current_tpsno;

                if (cstr_index->tile_index[tileno].tp_index)
                        cstr_index->tile_index[tileno].tp_index[l_current_tile_part].start_pos = pos;

        }
        return 1;
}







OPJ_BOOL opj_j2k_end_decompress(opj_j2k_t *p_j2k,
                                opj_stream_private_t *p_stream,
                                opj_event_mgr_t * p_manager
                                )
{
    (void)p_j2k;
    (void)p_stream;
    (void)p_manager;
    return 1;
}

OPJ_BOOL opj_j2k_read_header( opj_stream_private_t *p_stream,
                                                            opj_j2k_t* p_j2k,
                                                            opj_image_t** p_image,
                                                            opj_event_mgr_t* p_manager )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6184, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6185, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6186, __PRETTY_FUNCTION__));


        p_j2k->m_private_image = opj_image_create0();
        if (! p_j2k->m_private_image) {
                return 0;
        }


        opj_j2k_setup_decoding_validation(p_j2k);


        if (! opj_j2k_exec(p_j2k, p_j2k->m_validation_list, p_stream,p_manager)) {
                opj_image_destroy(p_j2k->m_private_image);
                p_j2k->m_private_image = ((void*)0);
                return 0;
        }


        opj_j2k_setup_header_reading(p_j2k);


        if (! opj_j2k_exec (p_j2k,p_j2k->m_procedure_list,p_stream,p_manager)) {
                opj_image_destroy(p_j2k->m_private_image);
                p_j2k->m_private_image = ((void*)0);
                return 0;
        }

        *p_image = opj_image_create0();
        if (! (*p_image)) {
                return 0;
        }


        opj_copy_image_header(p_j2k->m_private_image, *p_image);


        if (!opj_j2k_allocate_tile_element_cstr_index(p_j2k)){
                return 0;
        }

        return 1;
}

void opj_j2k_setup_header_reading (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6233, __PRETTY_FUNCTION__));

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_read_header_procedure);


        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_copy_default_tcp_and_create_tcd);

}

void opj_j2k_setup_decoding_validation (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6245, __PRETTY_FUNCTION__));

        opj_procedure_list_add_procedure(p_j2k->m_validation_list, (opj_procedure)opj_j2k_build_decoder);
        opj_procedure_list_add_procedure(p_j2k->m_validation_list, (opj_procedure)opj_j2k_decoding_validation);


}

OPJ_BOOL opj_j2k_mct_validation ( opj_j2k_t * p_j2k,
                                                                opj_stream_private_t *p_stream,
                                                                opj_event_mgr_t * p_manager )
{
        OPJ_BOOL l_is_valid = 1;
        OPJ_UINT32 i,j;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6261, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6262, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6263, __PRETTY_FUNCTION__));

        if ((p_j2k->m_cp.rsiz & 0x8200) == 0x8200) {
                OPJ_UINT32 l_nb_tiles = p_j2k->m_cp.th * p_j2k->m_cp.tw;
                opj_tcp_t * l_tcp = p_j2k->m_cp.tcps;

                for (i=0;i<l_nb_tiles;++i) {
                        if (l_tcp->mct == 2) {
                                opj_tccp_t * l_tccp = l_tcp->tccps;
                                l_is_valid &= (l_tcp->m_mct_coding_matrix != 00);

                                for (j=0;j<p_j2k->m_private_image->numcomps;++j) {
                                        l_is_valid &= ! (l_tccp->qmfbid & 1);
                                        ++l_tccp;
                                }
                        }
                        ++l_tcp;
                }
        }

        return l_is_valid;
}

OPJ_BOOL opj_j2k_setup_mct_encoding(opj_tcp_t * p_tcp, opj_image_t * p_image)
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_indix = 1;
        opj_mct_data_t * l_mct_deco_data = 00,* l_mct_offset_data = 00;
        opj_simple_mcc_decorrelation_data_t * l_mcc_data;
        OPJ_UINT32 l_mct_size,l_nb_elem;
        OPJ_FLOAT32 * l_data, * l_current_data;
        opj_tccp_t * l_tccp;


        ((p_tcp != 00) ? (void) (0) : __assert_fail ("p_tcp != 00", "./openjpeg/libopenjpeg/j2k.c", 6297, __PRETTY_FUNCTION__));

        if (p_tcp->mct != 2) {
                return 1;
        }

        if (p_tcp->m_mct_decoding_matrix) {
                if (p_tcp->m_nb_mct_records == p_tcp->m_nb_max_mct_records) {
                        opj_mct_data_t *new_mct_records;
                        p_tcp->m_nb_max_mct_records += 10;

                        new_mct_records = (opj_mct_data_t *) ((size_t)(p_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(p_tcp->m_mct_records, p_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t)));
                        if (! new_mct_records) {
                                free(p_tcp->m_mct_records);
                                p_tcp->m_mct_records = ((void*)0);
                                p_tcp->m_nb_max_mct_records = 0;
                                p_tcp->m_nb_mct_records = 0;

                                return 0;
                        }
                        p_tcp->m_mct_records = new_mct_records;
                        l_mct_deco_data = p_tcp->m_mct_records + p_tcp->m_nb_mct_records;

                        memset(l_mct_deco_data ,0,(p_tcp->m_nb_max_mct_records - p_tcp->m_nb_mct_records) * sizeof(opj_mct_data_t));
                }
                l_mct_deco_data = p_tcp->m_mct_records + p_tcp->m_nb_mct_records;

                if (l_mct_deco_data->m_data) {
                        free(l_mct_deco_data->m_data);
                        l_mct_deco_data->m_data = 00;
                }

                l_mct_deco_data->m_index = l_indix++;
                l_mct_deco_data->m_array_type = MCT_TYPE_DECORRELATION;
                l_mct_deco_data->m_element_type = MCT_TYPE_FLOAT;
                l_nb_elem = p_image->numcomps * p_image->numcomps;
                l_mct_size = l_nb_elem * MCT_ELEMENT_SIZE[l_mct_deco_data->m_element_type];
                l_mct_deco_data->m_data = (OPJ_BYTE*)((size_t)(l_mct_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_mct_size));

                if (! l_mct_deco_data->m_data) {
                        return 0;
                }

                j2k_mct_write_functions_from_float[l_mct_deco_data->m_element_type](p_tcp->m_mct_decoding_matrix,l_mct_deco_data->m_data,l_nb_elem);

                l_mct_deco_data->m_data_size = l_mct_size;
                ++p_tcp->m_nb_mct_records;
        }

        if (p_tcp->m_nb_mct_records == p_tcp->m_nb_max_mct_records) {
                opj_mct_data_t *new_mct_records;
                p_tcp->m_nb_max_mct_records += 10;
                new_mct_records = (opj_mct_data_t *) ((size_t)(p_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(p_tcp->m_mct_records, p_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t)));
                if (! new_mct_records) {
                        free(p_tcp->m_mct_records);
                        p_tcp->m_mct_records = ((void*)0);
                        p_tcp->m_nb_max_mct_records = 0;
                        p_tcp->m_nb_mct_records = 0;

                        return 0;
                }
                p_tcp->m_mct_records = new_mct_records;
                l_mct_offset_data = p_tcp->m_mct_records + p_tcp->m_nb_mct_records;

                memset(l_mct_offset_data ,0,(p_tcp->m_nb_max_mct_records - p_tcp->m_nb_mct_records) * sizeof(opj_mct_data_t));

                if (l_mct_deco_data) {
                        l_mct_deco_data = l_mct_offset_data - 1;
                }
        }

        l_mct_offset_data = p_tcp->m_mct_records + p_tcp->m_nb_mct_records;

        if (l_mct_offset_data->m_data) {
                free(l_mct_offset_data->m_data);
                l_mct_offset_data->m_data = 00;
        }

        l_mct_offset_data->m_index = l_indix++;
        l_mct_offset_data->m_array_type = MCT_TYPE_OFFSET;
        l_mct_offset_data->m_element_type = MCT_TYPE_FLOAT;
        l_nb_elem = p_image->numcomps;
        l_mct_size = l_nb_elem * MCT_ELEMENT_SIZE[l_mct_offset_data->m_element_type];
        l_mct_offset_data->m_data = (OPJ_BYTE*)((size_t)(l_mct_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_mct_size));

        if (! l_mct_offset_data->m_data) {
                return 0;
        }

        l_data = (OPJ_FLOAT32*)((size_t)(l_nb_elem * sizeof(OPJ_FLOAT32)) >= (size_t)-0x100 ? ((void*)0) : malloc(l_nb_elem * sizeof(OPJ_FLOAT32)));
        if (! l_data) {
                free(l_mct_offset_data->m_data);
                l_mct_offset_data->m_data = 00;
                return 0;
        }

        l_tccp = p_tcp->tccps;
        l_current_data = l_data;

        for (i=0;i<l_nb_elem;++i) {
                *(l_current_data++) = (OPJ_FLOAT32) (l_tccp->m_dc_level_shift);
                ++l_tccp;
        }

        j2k_mct_write_functions_from_float[l_mct_offset_data->m_element_type](l_data,l_mct_offset_data->m_data,l_nb_elem);

        free(l_data);

        l_mct_offset_data->m_data_size = l_mct_size;

        ++p_tcp->m_nb_mct_records;

        if (p_tcp->m_nb_mcc_records == p_tcp->m_nb_max_mcc_records) {
                opj_simple_mcc_decorrelation_data_t *new_mcc_records;
                p_tcp->m_nb_max_mcc_records += 10;
                new_mcc_records = (opj_simple_mcc_decorrelation_data_t *) ((size_t)(p_tcp->m_nb_max_mcc_records * sizeof(opj_simple_mcc_decorrelation_data_t)) >= (size_t)-0x100 ? ((void*)0) : realloc(p_tcp->m_mcc_records, p_tcp->m_nb_max_mcc_records * sizeof(opj_simple_mcc_decorrelation_data_t)));

                if (! new_mcc_records) {
                        free(p_tcp->m_mcc_records);
                        p_tcp->m_mcc_records = ((void*)0);
                        p_tcp->m_nb_max_mcc_records = 0;
                        p_tcp->m_nb_mcc_records = 0;

                        return 0;
                }
                p_tcp->m_mcc_records = new_mcc_records;
                l_mcc_data = p_tcp->m_mcc_records + p_tcp->m_nb_mcc_records;
                memset(l_mcc_data ,0,(p_tcp->m_nb_max_mcc_records - p_tcp->m_nb_mcc_records) * sizeof(opj_simple_mcc_decorrelation_data_t));

        }

        l_mcc_data = p_tcp->m_mcc_records + p_tcp->m_nb_mcc_records;
        l_mcc_data->m_decorrelation_array = l_mct_deco_data;
        l_mcc_data->m_is_irreversible = 1;
        l_mcc_data->m_nb_comps = p_image->numcomps;
        l_mcc_data->m_index = l_indix++;
        l_mcc_data->m_offset_array = l_mct_offset_data;
        ++p_tcp->m_nb_mcc_records;

        return 1;
}

OPJ_BOOL opj_j2k_build_decoder (opj_j2k_t * p_j2k,
                                                            opj_stream_private_t *p_stream,
                                                            opj_event_mgr_t * p_manager )
{


  (void)p_j2k;
  (void)p_stream;
  (void)p_manager;
        return 1;
}

OPJ_BOOL opj_j2k_build_encoder (opj_j2k_t * p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager )
{


  (void)p_j2k;
  (void)p_stream;
  (void)p_manager;
        return 1;
}

OPJ_BOOL opj_j2k_encoding_validation ( opj_j2k_t * p_j2k,
                                                                            opj_stream_private_t *p_stream,
                                                                            opj_event_mgr_t * p_manager )
{
        OPJ_BOOL l_is_valid = 1;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6470, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6471, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6472, __PRETTY_FUNCTION__));



        l_is_valid &= (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_NONE);



        l_is_valid &= (p_j2k->m_procedure_list != 00);

        l_is_valid &= (p_j2k->m_validation_list != 00);

        if ((p_j2k->m_cp.tdx) < (OPJ_UINT32) (1 << p_j2k->m_cp.tcps->tccps->numresolutions)) {
                opj_event_msg(p_manager, 1, "Number of resolutions is too high in comparison to the size of tiles\n");
                return 0;
        }

        if ((p_j2k->m_cp.tdy) < (OPJ_UINT32) (1 << p_j2k->m_cp.tcps->tccps->numresolutions)) {
                opj_event_msg(p_manager, 1, "Number of resolutions is too high in comparison to the size of tiles\n");
                return 0;
        }


        return l_is_valid;
}

OPJ_BOOL opj_j2k_decoding_validation ( opj_j2k_t *p_j2k,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager
                                        )
{
        OPJ_BOOL l_is_valid = 1;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6506, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6507, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6508, __PRETTY_FUNCTION__));






        l_is_valid &= (p_j2k->m_specific_param.m_decoder.m_state == 0x0000);




        l_is_valid &= (p_j2k->m_procedure_list != 00);

        l_is_valid &= (p_j2k->m_validation_list != 00);


        return l_is_valid;
}

OPJ_BOOL opj_j2k_read_header_procedure( opj_j2k_t *p_j2k,
                                                                            opj_stream_private_t *p_stream,
                                                                            opj_event_mgr_t * p_manager)
{
        OPJ_UINT32 l_current_marker;
        OPJ_UINT32 l_marker_size;
        const opj_dec_memory_marker_handler_t * l_marker_handler = 00;


        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6537, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6538, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6539, __PRETTY_FUNCTION__));


        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_MHSOC;


        if (! opj_j2k_read_soc(p_j2k,p_stream,p_manager)) {
                opj_event_msg(p_manager, 1, "Expected a SOC marker \n");
                return 0;
        }


        if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                opj_event_msg(p_manager, 1, "Stream too short\n");
                return 0;
        }


        opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_current_marker,2);


        while (l_current_marker != 0xff90) {


                if (l_current_marker < 0xff00) {
                        opj_event_msg(p_manager, 1, "We expected read a marker ID (0xff--) instead of %.8x\n", l_current_marker);
                        return 0;
                }


                l_marker_handler = opj_j2k_get_marker_handler(l_current_marker);


                if (l_marker_handler->id == 0) {
                        if (! opj_j2k_read_unk(p_j2k, p_stream, &l_current_marker, p_manager)){
                                opj_event_msg(p_manager, 1, "Unknow marker have been detected and generated error.\n");
                                return 0;
                        }

                        if (l_current_marker == 0xff90)
                                break;
                        else
                                l_marker_handler = opj_j2k_get_marker_handler(l_current_marker);
                }


                if (! (p_j2k->m_specific_param.m_decoder.m_state & l_marker_handler->states) ) {
                        opj_event_msg(p_manager, 1, "Marker is not compliant with its position\n");
                        return 0;
                }


                if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                        opj_event_msg(p_manager, 1, "Stream too short\n");
                        return 0;
                }


                opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_marker_size,2);
                l_marker_size -= 2;


                if (l_marker_size > p_j2k->m_specific_param.m_decoder.m_header_data_size) {
                        OPJ_BYTE *new_header_data = (OPJ_BYTE *) ((size_t)(l_marker_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_decoder.m_header_data, l_marker_size));
                        if (! new_header_data) {
                                free(p_j2k->m_specific_param.m_decoder.m_header_data);
                                p_j2k->m_specific_param.m_decoder.m_header_data = ((void*)0);
                                p_j2k->m_specific_param.m_decoder.m_header_data_size = 0;
                                opj_event_msg(p_manager, 1, "Not enough memory to read header\n");
                                return 0;
                        }
                        p_j2k->m_specific_param.m_decoder.m_header_data = new_header_data;
                        p_j2k->m_specific_param.m_decoder.m_header_data_size = l_marker_size;
                }


                if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,l_marker_size,p_manager) != l_marker_size) {
                        opj_event_msg(p_manager, 1, "Stream too short\n");
                        return 0;
                }


                if (! (*(l_marker_handler->handler))(p_j2k,p_j2k->m_specific_param.m_decoder.m_header_data,l_marker_size,p_manager)) {
                        opj_event_msg(p_manager, 1, "Marker handler function failed to read the marker segment\n");
                        return 0;
                }


                if (0 == opj_j2k_add_mhmarker(
                                        p_j2k->cstr_index,
                                        l_marker_handler->id,
                                        (OPJ_UINT32) opj_stream_tell(p_stream) - l_marker_size - 4,
                                        l_marker_size + 4 )) {
                        opj_event_msg(p_manager, 1, "Not enough memory to add mh marker\n");
                        return 0;
                }


                if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                        opj_event_msg(p_manager, 1, "Stream too short\n");
                        return 0;
                }


                opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_current_marker,2);
        }

        opj_event_msg(p_manager, 4, "Main header has been correctly decoded.\n");


        p_j2k->cstr_index->main_head_end = (OPJ_UINT32) opj_stream_tell(p_stream) - 2;


        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_TPHSOT;

        return 1;
}

OPJ_BOOL opj_j2k_exec ( opj_j2k_t * p_j2k,
                                        opj_procedure_list_t * p_procedure_list,
                                        opj_stream_private_t *p_stream,
                                        opj_event_mgr_t * p_manager )
{
        OPJ_BOOL (** l_procedure) (opj_j2k_t * ,opj_stream_private_t *,opj_event_mgr_t *) = 00;
        OPJ_BOOL l_result = 1;
        OPJ_UINT32 l_nb_proc, i;


        ((p_procedure_list != 00) ? (void) (0) : __assert_fail ("p_procedure_list != 00", "./openjpeg/libopenjpeg/j2k.c", 6667, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6668, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6669, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6670, __PRETTY_FUNCTION__));

        l_nb_proc = opj_procedure_list_get_nb_procedures(p_procedure_list);
        l_procedure = (OPJ_BOOL (**) (opj_j2k_t * ,opj_stream_private_t *,opj_event_mgr_t *)) opj_procedure_list_get_first_procedure(p_procedure_list);

        for (i=0;i<l_nb_proc;++i) {
                l_result = l_result && ((*l_procedure) (p_j2k,p_stream,p_manager));
                ++l_procedure;
        }


        opj_procedure_list_clear(p_procedure_list);
        return l_result;
}


static OPJ_BOOL opj_j2k_copy_default_tcp_and_create_tcd ( opj_j2k_t * p_j2k,
                                                            opj_stream_private_t *p_stream,
                                                            opj_event_mgr_t * p_manager
                                                            )
{
        opj_tcp_t * l_tcp = 00;
        opj_tcp_t * l_default_tcp = 00;
        OPJ_UINT32 l_nb_tiles;
        OPJ_UINT32 i,j;
        opj_tccp_t *l_current_tccp = 00;
        OPJ_UINT32 l_tccp_size;
        OPJ_UINT32 l_mct_size;
        opj_image_t * l_image;
        OPJ_UINT32 l_mcc_records_size,l_mct_records_size;
        opj_mct_data_t * l_src_mct_rec, *l_dest_mct_rec;
        opj_simple_mcc_decorrelation_data_t * l_src_mcc_rec, *l_dest_mcc_rec;
        OPJ_UINT32 l_offset;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 6705, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 6706, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 6707, __PRETTY_FUNCTION__));

        l_image = p_j2k->m_private_image;
        l_nb_tiles = p_j2k->m_cp.th * p_j2k->m_cp.tw;
        l_tcp = p_j2k->m_cp.tcps;
        l_tccp_size = l_image->numcomps * sizeof(opj_tccp_t);
        l_default_tcp = p_j2k->m_specific_param.m_decoder.m_default_tcp;
        l_mct_size = l_image->numcomps * l_image->numcomps * sizeof(OPJ_FLOAT32);


        for (i=0; i<l_nb_tiles; ++i) {

                l_current_tccp = l_tcp->tccps;

                memcpy(l_tcp, l_default_tcp, sizeof(opj_tcp_t));

                l_tcp->ppt = 0;
                l_tcp->ppt_data = 00;

                l_tcp->tccps = l_current_tccp;


                if (l_default_tcp->m_mct_decoding_matrix) {
                        l_tcp->m_mct_decoding_matrix = (OPJ_FLOAT32*)((size_t)(l_mct_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_mct_size));
                        if (! l_tcp->m_mct_decoding_matrix ) {
                                return 0;
                        }
                        memcpy(l_tcp->m_mct_decoding_matrix,l_default_tcp->m_mct_decoding_matrix,l_mct_size);
                }


                l_mct_records_size = l_default_tcp->m_nb_max_mct_records * sizeof(opj_mct_data_t);
                l_tcp->m_mct_records = (opj_mct_data_t*)((size_t)(l_mct_records_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_mct_records_size));
                if (! l_tcp->m_mct_records) {
                        return 0;
                }
                memcpy(l_tcp->m_mct_records, l_default_tcp->m_mct_records,l_mct_records_size);


                l_src_mct_rec = l_default_tcp->m_mct_records;
                l_dest_mct_rec = l_tcp->m_mct_records;

                for (j=0;j<l_default_tcp->m_nb_mct_records;++j) {

                        if (l_src_mct_rec->m_data) {

                                l_dest_mct_rec->m_data = (OPJ_BYTE*) ((size_t)(l_src_mct_rec->m_data_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_src_mct_rec->m_data_size));
                                if(! l_dest_mct_rec->m_data) {
                                        return 0;
                                }
                                memcpy(l_dest_mct_rec->m_data,l_src_mct_rec->m_data,l_src_mct_rec->m_data_size);
                        }

                        ++l_src_mct_rec;
                        ++l_dest_mct_rec;
                }


                l_mcc_records_size = l_default_tcp->m_nb_max_mcc_records * sizeof(opj_simple_mcc_decorrelation_data_t);
                l_tcp->m_mcc_records = (opj_simple_mcc_decorrelation_data_t*) ((size_t)(l_mcc_records_size) >= (size_t)-0x100 ? ((void*)0) : malloc(l_mcc_records_size));
                if (! l_tcp->m_mcc_records) {
                        return 0;
                }
                memcpy(l_tcp->m_mcc_records,l_default_tcp->m_mcc_records,l_mcc_records_size);


                l_src_mcc_rec = l_default_tcp->m_mcc_records;
                l_dest_mcc_rec = l_tcp->m_mcc_records;

                for (j=0;j<l_default_tcp->m_nb_max_mcc_records;++j) {

                        if (l_src_mcc_rec->m_decorrelation_array) {
                                l_offset = l_src_mcc_rec->m_decorrelation_array - l_default_tcp->m_mct_records;
                                l_dest_mcc_rec->m_decorrelation_array = l_tcp->m_mct_records + l_offset;
                        }

                        if (l_src_mcc_rec->m_offset_array) {
                                l_offset = l_src_mcc_rec->m_offset_array - l_default_tcp->m_mct_records;
                                l_dest_mcc_rec->m_offset_array = l_tcp->m_mct_records + l_offset;
                        }

                        ++l_src_mcc_rec;
                        ++l_dest_mcc_rec;
                }


                memcpy(l_current_tccp,l_default_tcp->tccps,l_tccp_size);


                ++l_tcp;
        }


        p_j2k->m_tcd = (opj_tcd_t*)opj_tcd_create(1);
        if (! p_j2k->m_tcd ) {
                return 0;
        }

        if ( !opj_tcd_init(p_j2k->m_tcd, l_image, &(p_j2k->m_cp)) ) {
                opj_tcd_destroy(p_j2k->m_tcd);
                p_j2k->m_tcd = 00;
                opj_event_msg(p_manager, 1, "Cannot decode tile, memory error\n");
                return 0;
        }

        return 1;
}

const opj_dec_memory_marker_handler_t * opj_j2k_get_marker_handler (OPJ_UINT32 p_id)
{
        const opj_dec_memory_marker_handler_t *e;
        for (e = j2k_memory_marker_handler_tab; e->id != 0; ++e) {
                if (e->id == p_id) {
                        break;
                }
        }
        return e;
}

void opj_j2k_destroy (opj_j2k_t *p_j2k)
{
        if (p_j2k == 00) {
                return;
        }

        if (p_j2k->m_is_decoder) {

                if (p_j2k->m_specific_param.m_decoder.m_default_tcp != 00) {
                        opj_j2k_tcp_destroy(p_j2k->m_specific_param.m_decoder.m_default_tcp);
                        free(p_j2k->m_specific_param.m_decoder.m_default_tcp);
                        p_j2k->m_specific_param.m_decoder.m_default_tcp = 00;
                }

                if (p_j2k->m_specific_param.m_decoder.m_header_data != 00) {
                        free(p_j2k->m_specific_param.m_decoder.m_header_data);
                        p_j2k->m_specific_param.m_decoder.m_header_data = 00;
                        p_j2k->m_specific_param.m_decoder.m_header_data_size = 0;
                }
        }
        else {

                if (p_j2k->m_specific_param.m_encoder.m_encoded_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_encoded_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_encoded_tile_data = 00;
                }

                if (p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer) {
                        free(p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer);
                        p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer = 00;
                        p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current = 00;
                }

                if (p_j2k->m_specific_param.m_encoder.m_header_tile_data) {
                        free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data = 00;
                        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;
                }
        }

        opj_tcd_destroy(p_j2k->m_tcd);

        opj_j2k_cp_destroy(&(p_j2k->m_cp));
        memset(&(p_j2k->m_cp),0,sizeof(opj_cp_t));

        opj_procedure_list_destroy(p_j2k->m_procedure_list);
        p_j2k->m_procedure_list = 00;

        opj_procedure_list_destroy(p_j2k->m_validation_list);
        p_j2k->m_procedure_list = 00;

        j2k_destroy_cstr_index(p_j2k->cstr_index);
        p_j2k->cstr_index = ((void*)0);

        opj_image_destroy(p_j2k->m_private_image);
        p_j2k->m_private_image = ((void*)0);

        opj_image_destroy(p_j2k->m_output_image);
        p_j2k->m_output_image = ((void*)0);

        free(p_j2k);
}

void j2k_destroy_cstr_index (opj_codestream_index_t *p_cstr_ind)
{
        if (p_cstr_ind) {

                if (p_cstr_ind->marker) {
                        free(p_cstr_ind->marker);
                        p_cstr_ind->marker = ((void*)0);
                }

                if (p_cstr_ind->tile_index) {
                        OPJ_UINT32 it_tile = 0;

                        for (it_tile=0; it_tile < p_cstr_ind->nb_of_tiles; it_tile++) {

                                if(p_cstr_ind->tile_index[it_tile].packet_index) {
                                        free(p_cstr_ind->tile_index[it_tile].packet_index);
                                        p_cstr_ind->tile_index[it_tile].packet_index = ((void*)0);
                                }

                                if(p_cstr_ind->tile_index[it_tile].tp_index){
                                        free(p_cstr_ind->tile_index[it_tile].tp_index);
                                        p_cstr_ind->tile_index[it_tile].tp_index = ((void*)0);
                                }

                                if(p_cstr_ind->tile_index[it_tile].marker){
                                        free(p_cstr_ind->tile_index[it_tile].marker);
                                        p_cstr_ind->tile_index[it_tile].marker = ((void*)0);

                                }
                        }

                        free(p_cstr_ind->tile_index);
                        p_cstr_ind->tile_index = ((void*)0);
                }

                free(p_cstr_ind);
        }
}

void opj_j2k_tcp_destroy (opj_tcp_t *p_tcp)
{
        if (p_tcp == 00) {
                return;
        }

        if (p_tcp->ppt_buffer != 00) {
                free(p_tcp->ppt_buffer);
                p_tcp->ppt_buffer = 00;
        }

        if (p_tcp->tccps != 00) {
                free(p_tcp->tccps);
                p_tcp->tccps = 00;
        }

        if (p_tcp->m_mct_coding_matrix != 00) {
                free(p_tcp->m_mct_coding_matrix);
                p_tcp->m_mct_coding_matrix = 00;
        }

        if (p_tcp->m_mct_decoding_matrix != 00) {
                free(p_tcp->m_mct_decoding_matrix);
                p_tcp->m_mct_decoding_matrix = 00;
        }

        if (p_tcp->m_mcc_records) {
                free(p_tcp->m_mcc_records);
                p_tcp->m_mcc_records = 00;
                p_tcp->m_nb_max_mcc_records = 0;
                p_tcp->m_nb_mcc_records = 0;
        }

        if (p_tcp->m_mct_records) {
                opj_mct_data_t * l_mct_data = p_tcp->m_mct_records;
                OPJ_UINT32 i;

                for (i=0;i<p_tcp->m_nb_mct_records;++i) {
                        if (l_mct_data->m_data) {
                                free(l_mct_data->m_data);
                                l_mct_data->m_data = 00;
                        }

                        ++l_mct_data;
                }

                free(p_tcp->m_mct_records);
                p_tcp->m_mct_records = 00;
        }

        if (p_tcp->mct_norms != 00) {
                free(p_tcp->mct_norms);
                p_tcp->mct_norms = 00;
        }

        opj_j2k_tcp_data_destroy(p_tcp);

}

void opj_j2k_tcp_data_destroy (opj_tcp_t *p_tcp)
{
        if (p_tcp->m_data) {
                free(p_tcp->m_data);
                p_tcp->m_data = ((void*)0);
                p_tcp->m_data_size = 0;
        }
}

void opj_j2k_cp_destroy (opj_cp_t *p_cp)
{
        OPJ_UINT32 l_nb_tiles;
        opj_tcp_t * l_current_tile = 00;
        OPJ_UINT32 i;

        if (p_cp == 00)
        {
                return;
        }
        if (p_cp->tcps != 00)
        {
                l_current_tile = p_cp->tcps;
                l_nb_tiles = p_cp->th * p_cp->tw;

                for (i = 0; i < l_nb_tiles; ++i)
                {
                        opj_j2k_tcp_destroy(l_current_tile);
                        ++l_current_tile;
                }
                free(p_cp->tcps);
                p_cp->tcps = 00;
        }
        free(p_cp->ppm_buffer);
        p_cp->ppm_buffer = 00;
        p_cp->ppm_data = ((void*)0);
        free(p_cp->comment);
        p_cp->comment = 00;
        if (! p_cp->m_is_decoder)
        {
                free(p_cp->m_specific_param.m_enc.m_matrice);
                p_cp->m_specific_param.m_enc.m_matrice = 00;
        }
}

OPJ_BOOL opj_j2k_read_tile_header( opj_j2k_t * p_j2k,
                                                                    OPJ_UINT32 * p_tile_index,
                                                                    OPJ_UINT32 * p_data_size,
                                                                    OPJ_INT32 * p_tile_x0, OPJ_INT32 * p_tile_y0,
                                                                    OPJ_INT32 * p_tile_x1, OPJ_INT32 * p_tile_y1,
                                                                    OPJ_UINT32 * p_nb_comps,
                                                                    OPJ_BOOL * p_go_on,
                                                                    opj_stream_private_t *p_stream,
                                                                    opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 l_current_marker = 0xff90;
        OPJ_UINT32 l_marker_size;
        const opj_dec_memory_marker_handler_t * l_marker_handler = 00;
        opj_tcp_t * l_tcp = ((void*)0);
        OPJ_UINT32 l_nb_tiles;


        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 7048, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 7049, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 7050, __PRETTY_FUNCTION__));


        if (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_EOC){
                l_current_marker = 0xffd9;
        }

        else if (p_j2k->m_specific_param.m_decoder.m_state != J2K_STATE_TPHSOT){
                return 0;
        }


        while ( (!p_j2k->m_specific_param.m_decoder.m_can_decode) && (l_current_marker != 0xffd9) ) {


                while (l_current_marker != 0xff93) {

                    if(opj_stream_get_number_byte_left(p_stream) == 0)
                    {
                        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_NEOC;
                        break;
                    }


                        if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                                opj_event_msg(p_manager, 1, "Stream too short\n");
                                return 0;
                        }


                        opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_marker_size,2);


                        if (p_j2k->m_specific_param.m_decoder.m_state & J2K_STATE_TPH){
                                p_j2k->m_specific_param.m_decoder.m_sot_length -= (l_marker_size + 2);
                        }
                        l_marker_size -= 2;


                        l_marker_handler = opj_j2k_get_marker_handler(l_current_marker);


                        if (! (p_j2k->m_specific_param.m_decoder.m_state & l_marker_handler->states) ) {
                                opj_event_msg(p_manager, 1, "Marker is not compliant with its position\n");
                                return 0;
                        }



                        if (l_marker_size > p_j2k->m_specific_param.m_decoder.m_header_data_size) {
                                OPJ_BYTE *new_header_data = (OPJ_BYTE *) ((size_t)(l_marker_size) >= (size_t)-0x100 ? ((void*)0) : realloc(p_j2k->m_specific_param.m_decoder.m_header_data, l_marker_size));
                                if (! new_header_data) {
                                        free(p_j2k->m_specific_param.m_decoder.m_header_data);
                                        p_j2k->m_specific_param.m_decoder.m_header_data = ((void*)0);
                                        p_j2k->m_specific_param.m_decoder.m_header_data_size = 0;
                                        opj_event_msg(p_manager, 1, "Not enough memory to read header\n");
                                        return 0;
                                }
                                p_j2k->m_specific_param.m_decoder.m_header_data = new_header_data;
                                p_j2k->m_specific_param.m_decoder.m_header_data_size = l_marker_size;
                        }


                        if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,l_marker_size,p_manager) != l_marker_size) {
                                opj_event_msg(p_manager, 1, "Stream too short\n");
                                return 0;
                        }

                        if (!l_marker_handler->handler) {

                                opj_event_msg(p_manager, 1, "Not sure how that happened.\n");
                                return 0;
                        }

                        if (! (*(l_marker_handler->handler))(p_j2k,p_j2k->m_specific_param.m_decoder.m_header_data,l_marker_size,p_manager)) {
                                opj_event_msg(p_manager, 1, "Fail to read the current marker segment (%#x)\n", l_current_marker);
                                return 0;
                        }


                        if (0 == opj_j2k_add_tlmarker(p_j2k->m_current_tile_number,
                                                p_j2k->cstr_index,
                                                l_marker_handler->id,
                                                (OPJ_UINT32) opj_stream_tell(p_stream) - l_marker_size - 4,
                                                l_marker_size + 4 )) {
                                opj_event_msg(p_manager, 1, "Not enough memory to add tl marker\n");
                                return 0;
                        }


                        if ( l_marker_handler->id == 0xff90 ) {
                                OPJ_UINT32 sot_pos = (OPJ_UINT32) opj_stream_tell(p_stream) - l_marker_size - 4 ;
                                if (sot_pos > p_j2k->m_specific_param.m_decoder.m_last_sot_read_pos)
                                {
                                        p_j2k->m_specific_param.m_decoder.m_last_sot_read_pos = sot_pos;
                                }
                        }

                        if (p_j2k->m_specific_param.m_decoder.m_skip_data) {

                                if (opj_stream_skip(p_stream,p_j2k->m_specific_param.m_decoder.m_sot_length,p_manager) != p_j2k->m_specific_param.m_decoder.m_sot_length) {
                                        opj_event_msg(p_manager, 1, "Stream too short\n");
                                        return 0;
                                }
                                l_current_marker = 0xff93;
                        }
                        else {

                                if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                                        opj_event_msg(p_manager, 1, "Stream too short\n");
                                        return 0;
                                }

                                opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_current_marker,2);
                        }
                }
                if(opj_stream_get_number_byte_left(p_stream) == 0
                    && p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_NEOC)
                    break;


                if (! p_j2k->m_specific_param.m_decoder.m_skip_data) {

                        if (! opj_j2k_read_sod(p_j2k, p_stream, p_manager)) {
                                return 0;
                        }

                        if (! p_j2k->m_specific_param.m_decoder.m_can_decode){

                                if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                                        opj_event_msg(p_manager, 1, "Stream too short\n");
                                        return 0;
                                }


                                opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_current_marker,2);
                        }
                }
                else {

                        p_j2k->m_specific_param.m_decoder.m_skip_data = 0;
                        p_j2k->m_specific_param.m_decoder.m_can_decode = 0;
                        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_TPHSOT;


                        if (opj_stream_read_data(p_stream,p_j2k->m_specific_param.m_decoder.m_header_data,2,p_manager) != 2) {
                                opj_event_msg(p_manager, 1, "Stream too short\n");
                                return 0;
                        }


                        opj_read_bytes_LE(p_j2k->m_specific_param.m_decoder.m_header_data,&l_current_marker,2);
                }
        }


        if (l_current_marker == 0xffd9) {
                if (p_j2k->m_specific_param.m_decoder.m_state != J2K_STATE_EOC ){
                        p_j2k->m_current_tile_number = 0;
                        p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_EOC;
                }
        }


        if ( ! p_j2k->m_specific_param.m_decoder.m_can_decode) {
                l_tcp = p_j2k->m_cp.tcps + p_j2k->m_current_tile_number;
                l_nb_tiles = p_j2k->m_cp.th * p_j2k->m_cp.tw;

                while( (p_j2k->m_current_tile_number < l_nb_tiles) && (l_tcp->m_data == 00) ) {
                        ++p_j2k->m_current_tile_number;
                        ++l_tcp;
                }

                if (p_j2k->m_current_tile_number == l_nb_tiles) {
                        *p_go_on = 0;
                        return 1;
                }
        }


        if (! opj_tcd_init_decode_tile(p_j2k->m_tcd, p_j2k->m_current_tile_number)) {
                opj_event_msg(p_manager, 1, "Cannot decode tile, memory error\n");
                return 0;
        }

        opj_event_msg(p_manager, 4, "Header of tile %d / %d has been read.\n",
                        p_j2k->m_current_tile_number, (p_j2k->m_cp.th * p_j2k->m_cp.tw) - 1);

        *p_tile_index = p_j2k->m_current_tile_number;
        *p_go_on = 1;
        *p_data_size = opj_tcd_get_decoded_tile_size(p_j2k->m_tcd);
        *p_tile_x0 = p_j2k->m_tcd->tcd_image->tiles->x0;
        *p_tile_y0 = p_j2k->m_tcd->tcd_image->tiles->y0;
        *p_tile_x1 = p_j2k->m_tcd->tcd_image->tiles->x1;
        *p_tile_y1 = p_j2k->m_tcd->tcd_image->tiles->y1;
        *p_nb_comps = p_j2k->m_tcd->tcd_image->tiles->numcomps;

         p_j2k->m_specific_param.m_decoder.m_state |= 0x0080;

        return 1;
}

OPJ_BOOL opj_j2k_decode_tile ( opj_j2k_t * p_j2k,
                                                        OPJ_UINT32 p_tile_index,
                                                        OPJ_BYTE * p_data,
                                                        OPJ_UINT32 p_data_size,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 l_current_marker;
        OPJ_BYTE l_data [2];
        opj_tcp_t * l_tcp;


        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 7264, __PRETTY_FUNCTION__));
        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 7265, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 7266, __PRETTY_FUNCTION__));

        if ( !(p_j2k->m_specific_param.m_decoder.m_state & 0x0080 )
                || (p_tile_index != p_j2k->m_current_tile_number) ) {
                return 0;
        }

        l_tcp = &(p_j2k->m_cp.tcps[p_tile_index]);
        if (! l_tcp->m_data) {
                opj_j2k_tcp_destroy(l_tcp);
                return 0;
        }

        if (! opj_tcd_decode_tile( p_j2k->m_tcd,
                                                                l_tcp->m_data,
                                                                l_tcp->m_data_size,
                                                                p_tile_index,
                                                                p_j2k->cstr_index) ) {
                opj_j2k_tcp_destroy(l_tcp);
                p_j2k->m_specific_param.m_decoder.m_state |= 0x8000;
                return 0;
        }

        if (! opj_tcd_update_tile_data(p_j2k->m_tcd,p_data,p_data_size)) {
                return 0;
        }





        opj_j2k_tcp_data_destroy(l_tcp);

        p_j2k->m_specific_param.m_decoder.m_can_decode = 0;
        p_j2k->m_specific_param.m_decoder.m_state &= (~ (0x0080));

        if(opj_stream_get_number_byte_left(p_stream) == 0
            && p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_NEOC){
            return 1;
        }

        if (p_j2k->m_specific_param.m_decoder.m_state != 0x0100){
                if (opj_stream_read_data(p_stream,l_data,2,p_manager) != 2) {
                        opj_event_msg(p_manager, 1, "Stream too short\n");
                        return 0;
                }

                opj_read_bytes_LE(l_data,&l_current_marker,2);

                if (l_current_marker == 0xffd9) {
                        p_j2k->m_current_tile_number = 0;
                        p_j2k->m_specific_param.m_decoder.m_state = 0x0100;
                }
                else if (l_current_marker != 0xff90)
                {
                        opj_event_msg(p_manager, 1, "Stream too short, expected SOT\n");

                        if(opj_stream_get_number_byte_left(p_stream) == 0) {
                            p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_NEOC;
                            return 1;
                        }
                        return 0;
                }
        }

        return 1;
}

OPJ_BOOL opj_j2k_update_image_data (opj_tcd_t * p_tcd, OPJ_BYTE * p_data, opj_image_t* p_output_image)
{
        OPJ_UINT32 i,j,k = 0;
        OPJ_UINT32 l_width_src,l_height_src;
        OPJ_UINT32 l_width_dest,l_height_dest;
        OPJ_INT32 l_offset_x0_src, l_offset_y0_src, l_offset_x1_src, l_offset_y1_src;
        OPJ_INT32 l_start_offset_src, l_line_offset_src, l_end_offset_src ;
        OPJ_UINT32 l_start_x_dest , l_start_y_dest;
        OPJ_UINT32 l_x0_dest, l_y0_dest, l_x1_dest, l_y1_dest;
        OPJ_INT32 l_start_offset_dest, l_line_offset_dest;

        opj_image_comp_t * l_img_comp_src = 00;
        opj_image_comp_t * l_img_comp_dest = 00;

        opj_tcd_tilecomp_t * l_tilec = 00;
        opj_image_t * l_image_src = 00;
        OPJ_UINT32 l_size_comp, l_remaining;
        OPJ_INT32 * l_dest_ptr;
        opj_tcd_resolution_t* l_res= 00;

        l_tilec = p_tcd->tcd_image->tiles->comps;
        l_image_src = p_tcd->image;
        l_img_comp_src = l_image_src->comps;

        l_img_comp_dest = p_output_image->comps;

        for (i=0; i<l_image_src->numcomps; i++) {


                if (!l_img_comp_dest->data) {

                        l_img_comp_dest->data = (OPJ_INT32*) ((size_t)(l_img_comp_dest->w * l_img_comp_dest->h) != 0 && (size_t)(l_img_comp_dest->w * l_img_comp_dest->h) >= (size_t)-0x100 / (size_t)(sizeof(OPJ_INT32)) ? ((void*)0) : calloc(l_img_comp_dest->w * l_img_comp_dest->h, sizeof(OPJ_INT32)));
                        if (! l_img_comp_dest->data) {
                                return 0;
                        }
                }


                l_img_comp_dest->resno_decoded = l_img_comp_src->resno_decoded;



                l_size_comp = l_img_comp_src->prec >> 3;
                l_remaining = l_img_comp_src->prec & 7;
                l_res = l_tilec->resolutions + l_img_comp_src->resno_decoded;

                if (l_remaining) {
                        ++l_size_comp;
                }

                if (l_size_comp == 3) {
                        l_size_comp = 4;
                }
# 7395 "./openjpeg/libopenjpeg/j2k.c"
                l_width_src = (l_res->x1 - l_res->x0);
                l_height_src = (l_res->y1 - l_res->y0);


                l_x0_dest = opj_int_ceildivpow2(l_img_comp_dest->x0, l_img_comp_dest->factor);
                l_y0_dest = opj_int_ceildivpow2(l_img_comp_dest->y0, l_img_comp_dest->factor);
                l_x1_dest = l_x0_dest + l_img_comp_dest->w;
                l_y1_dest = l_y0_dest + l_img_comp_dest->h;
# 7416 "./openjpeg/libopenjpeg/j2k.c"
                ((l_res->x0 >= 0) ? (void) (0) : __assert_fail ("l_res->x0 >= 0", "./openjpeg/libopenjpeg/j2k.c", 7416, __PRETTY_FUNCTION__));
                ((l_res->x1 >= 0) ? (void) (0) : __assert_fail ("l_res->x1 >= 0", "./openjpeg/libopenjpeg/j2k.c", 7417, __PRETTY_FUNCTION__));
                if ( l_x0_dest < (OPJ_UINT32)l_res->x0 ) {
                        l_start_x_dest = l_res->x0 - l_x0_dest;
                        l_offset_x0_src = 0;

                        if ( l_x1_dest >= (OPJ_UINT32)l_res->x1 ) {
                                l_width_dest = l_width_src;
                                l_offset_x1_src = 0;
                        }
                        else {
                                l_width_dest = l_x1_dest - l_res->x0 ;
                                l_offset_x1_src = l_width_src - l_width_dest;
                        }
                }
                else {
                        l_start_x_dest = 0 ;
                        l_offset_x0_src = l_x0_dest - l_res->x0;

                        if ( l_x1_dest >= (OPJ_UINT32)l_res->x1 ) {
                                l_width_dest = l_width_src - l_offset_x0_src;
                                l_offset_x1_src = 0;
                        }
                        else {
                                l_width_dest = l_img_comp_dest->w ;
                                l_offset_x1_src = l_res->x1 - l_x1_dest;
                        }
                }

                if ( l_y0_dest < (OPJ_UINT32)l_res->y0 ) {
                        l_start_y_dest = l_res->y0 - l_y0_dest;
                        l_offset_y0_src = 0;

                        if ( l_y1_dest >= (OPJ_UINT32)l_res->y1 ) {
                                l_height_dest = l_height_src;
                                l_offset_y1_src = 0;
                        }
                        else {
                                l_height_dest = l_y1_dest - l_res->y0 ;
                                l_offset_y1_src = l_height_src - l_height_dest;
                        }
                }
                else {
                        l_start_y_dest = 0 ;
                        l_offset_y0_src = l_y0_dest - l_res->y0;

                        if ( l_y1_dest >= (OPJ_UINT32)l_res->y1 ) {
                                l_height_dest = l_height_src - l_offset_y0_src;
                                l_offset_y1_src = 0;
                        }
                        else {
                                l_height_dest = l_img_comp_dest->h ;
                                l_offset_y1_src = l_res->y1 - l_y1_dest;
                        }
                }

                if( (l_offset_x0_src < 0 ) || (l_offset_y0_src < 0 ) || (l_offset_x1_src < 0 ) || (l_offset_y1_src < 0 ) ){
                        return 0;
                }

                if ((OPJ_INT32)l_width_dest < 0 || (OPJ_INT32)l_height_dest < 0) {
                        return 0;
                }



                l_start_offset_src = l_offset_x0_src + l_offset_y0_src * l_width_src;
                l_line_offset_src = l_offset_x1_src + l_offset_x0_src;
                l_end_offset_src = l_offset_y1_src * l_width_src - l_offset_x0_src;


                l_start_offset_dest = l_start_x_dest + l_start_y_dest * l_img_comp_dest->w;
                l_line_offset_dest = l_img_comp_dest->w - l_width_dest;


                l_dest_ptr = l_img_comp_dest->data + l_start_offset_dest;
# 7507 "./openjpeg/libopenjpeg/j2k.c"
                switch (l_size_comp) {
                        case 1:
                                {
                                        OPJ_CHAR * l_src_ptr = (OPJ_CHAR*) p_data;
                                        l_src_ptr += l_start_offset_src;

                                        if (l_img_comp_src->sgnd) {
                                                for (j = 0 ; j < l_height_dest ; ++j) {
                                                        for ( k = 0 ; k < l_width_dest ; ++k) {
                                                                *(l_dest_ptr++) = (OPJ_INT32) (*(l_src_ptr++));
                                                        }

                                                        l_dest_ptr+= l_line_offset_dest;
                                                        l_src_ptr += l_line_offset_src ;
                                                }
                                        }
                                        else {
                                                for ( j = 0 ; j < l_height_dest ; ++j ) {
                                                        for ( k = 0 ; k < l_width_dest ; ++k) {
                                                                *(l_dest_ptr++) = (OPJ_INT32) ((*(l_src_ptr++))&0xff);
                                                        }

                                                        l_dest_ptr+= l_line_offset_dest;
                                                        l_src_ptr += l_line_offset_src;
                                                }
                                        }

                                        l_src_ptr += l_end_offset_src;
                                        p_data = (OPJ_BYTE*) l_src_ptr;
                                }
                                break;
                        case 2:
                                {
                                        OPJ_INT16 * l_src_ptr = (OPJ_INT16 *) p_data;
                                        l_src_ptr += l_start_offset_src;

                                        if (l_img_comp_src->sgnd) {
                                                for (j=0;j<l_height_dest;++j) {
                                                        for (k=0;k<l_width_dest;++k) {
                                                                *(l_dest_ptr++) = *(l_src_ptr++);
                                                        }

                                                        l_dest_ptr+= l_line_offset_dest;
                                                        l_src_ptr += l_line_offset_src ;
                                                }
                                        }
                                        else {
                                                for (j=0;j<l_height_dest;++j) {
                                                        for (k=0;k<l_width_dest;++k) {
                                                                *(l_dest_ptr++) = (*(l_src_ptr++))&0xffff;
                                                        }

                                                        l_dest_ptr+= l_line_offset_dest;
                                                        l_src_ptr += l_line_offset_src ;
                                                }
                                        }

                                        l_src_ptr += l_end_offset_src;
                                        p_data = (OPJ_BYTE*) l_src_ptr;
                                }
                                break;
                        case 4:
                                {
                                        OPJ_INT32 * l_src_ptr = (OPJ_INT32 *) p_data;
                                        l_src_ptr += l_start_offset_src;

                                        for (j=0;j<l_height_dest;++j) {
                                                for (k=0;k<l_width_dest;++k) {
                                                        *(l_dest_ptr++) = (*(l_src_ptr++));
                                                }

                                                l_dest_ptr+= l_line_offset_dest;
                                                l_src_ptr += l_line_offset_src ;
                                        }

                                        l_src_ptr += l_end_offset_src;
                                        p_data = (OPJ_BYTE*) l_src_ptr;
                                }
                                break;
                }

                ++l_img_comp_dest;
                ++l_img_comp_src;
                ++l_tilec;
        }

        return 1;
}

OPJ_BOOL opj_j2k_set_decode_area( opj_j2k_t *p_j2k,
                                                                    opj_image_t* p_image,
                                                                    OPJ_INT32 p_start_x, OPJ_INT32 p_start_y,
                                                                    OPJ_INT32 p_end_x, OPJ_INT32 p_end_y,
                                                                    opj_event_mgr_t * p_manager )
{
        opj_cp_t * l_cp = &(p_j2k->m_cp);
        opj_image_t * l_image = p_j2k->m_private_image;

        OPJ_UINT32 it_comp;
        OPJ_INT32 l_comp_x1, l_comp_y1;
        opj_image_comp_t* l_img_comp = ((void*)0);


        if (p_j2k->m_specific_param.m_decoder.m_state != J2K_STATE_TPHSOT) {
                opj_event_msg(p_manager, 1, "Need to decode the main header before begin to decode the remaining codestream");
                return 0;
        }

        if ( !p_start_x && !p_start_y && !p_end_x && !p_end_y){
                opj_event_msg(p_manager, 4, "No decoded area parameters, set the decoded area to the whole image\n");

                p_j2k->m_specific_param.m_decoder.m_start_tile_x = 0;
                p_j2k->m_specific_param.m_decoder.m_start_tile_y = 0;
                p_j2k->m_specific_param.m_decoder.m_end_tile_x = l_cp->tw;
                p_j2k->m_specific_param.m_decoder.m_end_tile_y = l_cp->th;

                return 1;
        }





        ((p_start_x >= 0) ? (void) (0) : __assert_fail ("p_start_x >= 0", "./openjpeg/libopenjpeg/j2k.c", 7630, __PRETTY_FUNCTION__));
        ((p_start_y >= 0) ? (void) (0) : __assert_fail ("p_start_y >= 0", "./openjpeg/libopenjpeg/j2k.c", 7631, __PRETTY_FUNCTION__));

        if ((OPJ_UINT32)p_start_x > l_image->x1 ) {
                opj_event_msg(p_manager, 1,
                        "Left position of the decoded area (region_x0=%d) is outside the image area (Xsiz=%d).\n",
                        p_start_x, l_image->x1);
                return 0;
        }
        else if ((OPJ_UINT32)p_start_x < l_image->x0){
                opj_event_msg(p_manager, 2,
                                "Left position of the decoded area (region_x0=%d) is outside the image area (XOsiz=%d).\n",
                                p_start_x, l_image->x0);
                p_j2k->m_specific_param.m_decoder.m_start_tile_x = 0;
                p_image->x0 = l_image->x0;
        }
        else {
                p_j2k->m_specific_param.m_decoder.m_start_tile_x = (p_start_x - l_cp->tx0) / l_cp->tdx;
                p_image->x0 = p_start_x;
        }


        if ((OPJ_UINT32)p_start_y > l_image->y1){
                opj_event_msg(p_manager, 1,
                                "Up position of the decoded area (region_y0=%d) is outside the image area (Ysiz=%d).\n",
                                p_start_y, l_image->y1);
                return 0;
        }
        else if ((OPJ_UINT32)p_start_y < l_image->y0){
                opj_event_msg(p_manager, 2,
                                "Up position of the decoded area (region_y0=%d) is outside the image area (YOsiz=%d).\n",
                                p_start_y, l_image->y0);
                p_j2k->m_specific_param.m_decoder.m_start_tile_y = 0;
                p_image->y0 = l_image->y0;
        }
        else {
                p_j2k->m_specific_param.m_decoder.m_start_tile_y = (p_start_y - l_cp->ty0) / l_cp->tdy;
                p_image->y0 = p_start_y;
        }


        (((OPJ_UINT32)p_end_x > 0) ? (void) (0) : __assert_fail ("(OPJ_UINT32)p_end_x > 0", "./openjpeg/libopenjpeg/j2k.c", 7671, __PRETTY_FUNCTION__));
        (((OPJ_UINT32)p_end_y > 0) ? (void) (0) : __assert_fail ("(OPJ_UINT32)p_end_y > 0", "./openjpeg/libopenjpeg/j2k.c", 7672, __PRETTY_FUNCTION__));
        if ((OPJ_UINT32)p_end_x < l_image->x0) {
                opj_event_msg(p_manager, 1,
                        "Right position of the decoded area (region_x1=%d) is outside the image area (XOsiz=%d).\n",
                        p_end_x, l_image->x0);
                return 0;
        }
        else if ((OPJ_UINT32)p_end_x > l_image->x1) {
                opj_event_msg(p_manager, 2,
                        "Right position of the decoded area (region_x1=%d) is outside the image area (Xsiz=%d).\n",
                        p_end_x, l_image->x1);
                p_j2k->m_specific_param.m_decoder.m_end_tile_x = l_cp->tw;
                p_image->x1 = l_image->x1;
        }
        else {
                p_j2k->m_specific_param.m_decoder.m_end_tile_x = opj_int_ceildiv((p_end_x - l_cp->tx0), l_cp->tdx);
                p_image->x1 = p_end_x;
        }


        if ((OPJ_UINT32)p_end_y < l_image->y0) {
                opj_event_msg(p_manager, 1,
                        "Bottom position of the decoded area (region_y1=%d) is outside the image area (YOsiz=%d).\n",
                        p_end_y, l_image->y0);
                return 0;
        }
        if ((OPJ_UINT32)p_end_y > l_image->y1){
                opj_event_msg(p_manager, 2,
                        "Bottom position of the decoded area (region_y1=%d) is outside the image area (Ysiz=%d).\n",
                        p_end_y, l_image->y1);
                p_j2k->m_specific_param.m_decoder.m_end_tile_y = l_cp->th;
                p_image->y1 = l_image->y1;
        }
        else{
                p_j2k->m_specific_param.m_decoder.m_end_tile_y = opj_int_ceildiv((p_end_y - l_cp->ty0), l_cp->tdy);
                p_image->y1 = p_end_y;
        }


        p_j2k->m_specific_param.m_decoder.m_discard_tiles = 1;

        l_img_comp = p_image->comps;
        for (it_comp=0; it_comp < p_image->numcomps; ++it_comp)
        {
                OPJ_INT32 l_h,l_w;

                l_img_comp->x0 = opj_int_ceildiv(p_image->x0, l_img_comp->dx);
                l_img_comp->y0 = opj_int_ceildiv(p_image->y0, l_img_comp->dy);
                l_comp_x1 = opj_int_ceildiv(p_image->x1, l_img_comp->dx);
                l_comp_y1 = opj_int_ceildiv(p_image->y1, l_img_comp->dy);

                l_w = opj_int_ceildivpow2(l_comp_x1, l_img_comp->factor)
                                - opj_int_ceildivpow2(l_img_comp->x0, l_img_comp->factor);
                if (l_w < 0){
                        opj_event_msg(p_manager, 1,
                                "Size x of the decoded component image is incorrect (comp[%d].w=%d).\n",
                                it_comp, l_w);
                        return 0;
                }
                l_img_comp->w = l_w;

                l_h = opj_int_ceildivpow2(l_comp_y1, l_img_comp->factor)
                                - opj_int_ceildivpow2(l_img_comp->y0, l_img_comp->factor);
                if (l_h < 0){
                        opj_event_msg(p_manager, 1,
                                "Size y of the decoded component image is incorrect (comp[%d].h=%d).\n",
                                it_comp, l_h);
                        return 0;
                }
                l_img_comp->h = l_h;

                l_img_comp++;
        }

        opj_event_msg( p_manager, 4,"Setting decoding area to %d,%d,%d,%d\n",
                        p_image->x0, p_image->y0, p_image->x1, p_image->y1);

        return 1;
}

opj_j2k_t* opj_j2k_create_decompress(void)
{
        opj_j2k_t *l_j2k = (opj_j2k_t*) ((size_t)(sizeof(opj_j2k_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(sizeof(opj_j2k_t)));
        if (!l_j2k) {
                return 00;
        }
        memset(l_j2k,0,sizeof(opj_j2k_t));

        l_j2k->m_is_decoder = 1;
        l_j2k->m_cp.m_is_decoder = 1;

        l_j2k->m_specific_param.m_decoder.m_default_tcp = (opj_tcp_t*) ((size_t)(sizeof(opj_tcp_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(sizeof(opj_tcp_t)));
        if (!l_j2k->m_specific_param.m_decoder.m_default_tcp) {
                opj_j2k_destroy(l_j2k);
                return 00;
        }
        memset(l_j2k->m_specific_param.m_decoder.m_default_tcp,0,sizeof(opj_tcp_t));

        l_j2k->m_specific_param.m_decoder.m_header_data = (OPJ_BYTE *) ((size_t)(1000) >= (size_t)-0x100 ? ((void*)0) : malloc(1000));
        if (! l_j2k->m_specific_param.m_decoder.m_header_data) {
                opj_j2k_destroy(l_j2k);
                return 00;
        }

        l_j2k->m_specific_param.m_decoder.m_header_data_size = 1000;

        l_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec = -1 ;

        l_j2k->m_specific_param.m_decoder.m_last_sot_read_pos = 0 ;


        l_j2k->cstr_index = opj_j2k_create_cstr_index();
# 7795 "./openjpeg/libopenjpeg/j2k.c"
        l_j2k->m_validation_list = opj_procedure_list_create();
        if (! l_j2k->m_validation_list) {
                opj_j2k_destroy(l_j2k);
                return 00;
        }


        l_j2k->m_procedure_list = opj_procedure_list_create();
        if (! l_j2k->m_procedure_list) {
                opj_j2k_destroy(l_j2k);
                return 00;
        }

        return l_j2k;
}

opj_codestream_index_t* opj_j2k_create_cstr_index(void)
{
        opj_codestream_index_t* cstr_index = (opj_codestream_index_t*)
                        ((size_t)(1) != 0 && (size_t)(1) >= (size_t)-0x100 / (size_t)(sizeof(opj_codestream_index_t)) ? ((void*)0) : calloc(1, sizeof(opj_codestream_index_t)));
        if (!cstr_index)
                return ((void*)0);

        cstr_index->maxmarknum = 100;
        cstr_index->marknum = 0;
        cstr_index->marker = (opj_marker_info_t*)
                        ((size_t)(cstr_index->maxmarknum) != 0 && (size_t)(cstr_index->maxmarknum) >= (size_t)-0x100 / (size_t)(sizeof(opj_marker_info_t)) ? ((void*)0) : calloc(cstr_index->maxmarknum, sizeof(opj_marker_info_t)));
        if (!cstr_index-> marker)
                return ((void*)0);

        cstr_index->tile_index = ((void*)0);

        return cstr_index;
}

OPJ_UINT32 opj_j2k_get_SPCod_SPCoc_size ( opj_j2k_t *p_j2k,
                                                                                OPJ_UINT32 p_tile_no,
                                                                                OPJ_UINT32 p_comp_no )
{
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 7839, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_tile_no];
        l_tccp = &l_tcp->tccps[p_comp_no];


        ((p_tile_no < (l_cp->tw * l_cp->th)) ? (void) (0) : __assert_fail ("p_tile_no < (l_cp->tw * l_cp->th)", "./openjpeg/libopenjpeg/j2k.c", 7846, __PRETTY_FUNCTION__));
        ((p_comp_no < p_j2k->m_private_image->numcomps) ? (void) (0) : __assert_fail ("p_comp_no < p_j2k->m_private_image->numcomps", "./openjpeg/libopenjpeg/j2k.c", 7847, __PRETTY_FUNCTION__));

        if (l_tccp->csty & 0x01) {
                return 5 + l_tccp->numresolutions;
        }
        else {
                return 5;
        }
}

OPJ_BOOL opj_j2k_write_SPCod_SPCoc( opj_j2k_t *p_j2k,
                                                                    OPJ_UINT32 p_tile_no,
                                                                    OPJ_UINT32 p_comp_no,
                                                                    OPJ_BYTE * p_data,
                                                                    OPJ_UINT32 * p_header_size,
                                                                    struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 i;
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 7870, __PRETTY_FUNCTION__));
        ((p_header_size != 00) ? (void) (0) : __assert_fail ("p_header_size != 00", "./openjpeg/libopenjpeg/j2k.c", 7871, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 7872, __PRETTY_FUNCTION__));
        ((p_data != 00) ? (void) (0) : __assert_fail ("p_data != 00", "./openjpeg/libopenjpeg/j2k.c", 7873, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_tile_no];
        l_tccp = &l_tcp->tccps[p_comp_no];


        ((p_tile_no < (l_cp->tw * l_cp->th)) ? (void) (0) : __assert_fail ("p_tile_no < (l_cp->tw * l_cp->th)", "./openjpeg/libopenjpeg/j2k.c", 7880, __PRETTY_FUNCTION__));
        ((p_comp_no <(p_j2k->m_private_image->numcomps)) ? (void) (0) : __assert_fail ("p_comp_no <(p_j2k->m_private_image->numcomps)", "./openjpeg/libopenjpeg/j2k.c", 7881, __PRETTY_FUNCTION__));

        if (*p_header_size < 5) {
                opj_event_msg(p_manager, 1, "Error writing SPCod SPCoc element\n");
                return 0;
        }

        opj_write_bytes_LE(p_data,l_tccp->numresolutions - 1, 1);
        ++p_data;

        opj_write_bytes_LE(p_data,l_tccp->cblkw - 2, 1);
        ++p_data;

        opj_write_bytes_LE(p_data,l_tccp->cblkh - 2, 1);
        ++p_data;

        opj_write_bytes_LE(p_data,l_tccp->cblksty, 1);
        ++p_data;

        opj_write_bytes_LE(p_data,l_tccp->qmfbid, 1);
        ++p_data;

        *p_header_size = *p_header_size - 5;

        if (l_tccp->csty & 0x01) {

                if (*p_header_size < l_tccp->numresolutions) {
                        opj_event_msg(p_manager, 1, "Error writing SPCod SPCoc element\n");
                        return 0;
                }

                for (i = 0; i < l_tccp->numresolutions; ++i) {
                        opj_write_bytes_LE(p_data,l_tccp->prcw[i] + (l_tccp->prch[i] << 4), 1);
                        ++p_data;
                }

                *p_header_size = *p_header_size - l_tccp->numresolutions;
        }

        return 1;
}

OPJ_BOOL opj_j2k_read_SPCod_SPCoc( opj_j2k_t *p_j2k,
                                                                OPJ_UINT32 compno,
                                                                OPJ_BYTE * p_header_data,
                                                                OPJ_UINT32 * p_header_size,
                                                                opj_event_mgr_t * p_manager)
{
        OPJ_UINT32 i, l_tmp;
        opj_cp_t *l_cp = ((void*)0);
        opj_tcp_t *l_tcp = ((void*)0);
        opj_tccp_t *l_tccp = ((void*)0);
        OPJ_BYTE * l_current_ptr = ((void*)0);


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 7936, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 7937, __PRETTY_FUNCTION__));
        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 7938, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;


        ((compno < p_j2k->m_private_image->numcomps) ? (void) (0) : __assert_fail ("compno < p_j2k->m_private_image->numcomps", "./openjpeg/libopenjpeg/j2k.c", 7946, __PRETTY_FUNCTION__));

        l_tccp = &l_tcp->tccps[compno];
        l_current_ptr = p_header_data;


        if (*p_header_size < 5) {
                opj_event_msg(p_manager, 1, "Error reading SPCod SPCoc element\n");
                return 0;
        }

        opj_read_bytes_LE(l_current_ptr, &l_tccp->numresolutions ,1);
        ++l_tccp->numresolutions;
        if (l_tccp->numresolutions > 33) {
                opj_event_msg(p_manager, 1,
                              "Invalid value for numresolutions : %d, max value is set in openjpeg.h at %d\n",
                              l_tccp->numresolutions, 33);
                return 0;
        }
        ++l_current_ptr;


        if (l_cp->m_specific_param.m_dec.m_reduce >= l_tccp->numresolutions) {
                opj_event_msg(p_manager, 1, "Error decoding component %d.\nThe number of resolutions to remove is higher than the number "
                                        "of resolutions of this component\nModify the cp_reduce parameter.\n\n", compno);
                p_j2k->m_specific_param.m_decoder.m_state |= 0x8000;
                return 0;
        }

        opj_read_bytes_LE(l_current_ptr,&l_tccp->cblkw ,1);
        ++l_current_ptr;
        l_tccp->cblkw += 2;

        opj_read_bytes_LE(l_current_ptr,&l_tccp->cblkh ,1);
        ++l_current_ptr;
        l_tccp->cblkh += 2;

        opj_read_bytes_LE(l_current_ptr,&l_tccp->cblksty ,1);
        ++l_current_ptr;

        opj_read_bytes_LE(l_current_ptr,&l_tccp->qmfbid ,1);
        ++l_current_ptr;

        *p_header_size = *p_header_size - 5;


        if (l_tccp->csty & 0x01) {
                if (*p_header_size < l_tccp->numresolutions) {
                        opj_event_msg(p_manager, 1, "Error reading SPCod SPCoc element\n");
                        return 0;
                }

                for (i = 0; i < l_tccp->numresolutions; ++i) {
                        opj_read_bytes_LE(l_current_ptr,&l_tmp ,1);
                        ++l_current_ptr;
                        l_tccp->prcw[i] = l_tmp & 0xf;
                        l_tccp->prch[i] = l_tmp >> 4;
                }

                *p_header_size = *p_header_size - l_tccp->numresolutions;
        }
        else {

                for (i = 0; i < l_tccp->numresolutions; ++i) {
                        l_tccp->prcw[i] = 15;
                        l_tccp->prch[i] = 15;
                }
        }
# 8032 "./openjpeg/libopenjpeg/j2k.c"
        return 1;
}

void opj_j2k_copy_tile_component_parameters( opj_j2k_t *p_j2k )
{

        OPJ_UINT32 i;
        opj_cp_t *l_cp = ((void*)0);
        opj_tcp_t *l_tcp = ((void*)0);
        opj_tccp_t *l_ref_tccp = ((void*)0), *l_copied_tccp = ((void*)0);
        OPJ_UINT32 l_prc_size;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8045, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;

        l_ref_tccp = &l_tcp->tccps[0];
        l_copied_tccp = l_ref_tccp + 1;
        l_prc_size = l_ref_tccp->numresolutions * sizeof(OPJ_UINT32);

        for (i=1; i<p_j2k->m_private_image->numcomps; ++i) {
                l_copied_tccp->numresolutions = l_ref_tccp->numresolutions;
                l_copied_tccp->cblkw = l_ref_tccp->cblkw;
                l_copied_tccp->cblkh = l_ref_tccp->cblkh;
                l_copied_tccp->cblksty = l_ref_tccp->cblksty;
                l_copied_tccp->qmfbid = l_ref_tccp->qmfbid;
                memcpy(l_copied_tccp->prcw,l_ref_tccp->prcw,l_prc_size);
                memcpy(l_copied_tccp->prch,l_ref_tccp->prch,l_prc_size);
                ++l_copied_tccp;
        }
}

OPJ_UINT32 opj_j2k_get_SQcd_SQcc_size ( opj_j2k_t *p_j2k,
                                                                        OPJ_UINT32 p_tile_no,
                                                                        OPJ_UINT32 p_comp_no )
{
        OPJ_UINT32 l_num_bands;

        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8079, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_tile_no];
        l_tccp = &l_tcp->tccps[p_comp_no];


        ((p_tile_no < l_cp->tw * l_cp->th) ? (void) (0) : __assert_fail ("p_tile_no < l_cp->tw * l_cp->th", "./openjpeg/libopenjpeg/j2k.c", 8086, __PRETTY_FUNCTION__));
        ((p_comp_no < p_j2k->m_private_image->numcomps) ? (void) (0) : __assert_fail ("p_comp_no < p_j2k->m_private_image->numcomps", "./openjpeg/libopenjpeg/j2k.c", 8087, __PRETTY_FUNCTION__));

        l_num_bands = (l_tccp->qntsty == 1) ? 1 : (l_tccp->numresolutions * 3 - 2);

        if (l_tccp->qntsty == 0) {
                return 1 + l_num_bands;
        }
        else {
                return 1 + 2*l_num_bands;
        }
}

OPJ_BOOL opj_j2k_write_SQcd_SQcc( opj_j2k_t *p_j2k,
                                                                OPJ_UINT32 p_tile_no,
                                                                OPJ_UINT32 p_comp_no,
                                                                OPJ_BYTE * p_data,
                                                                OPJ_UINT32 * p_header_size,
                                                                struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 l_header_size;
        OPJ_UINT32 l_band_no, l_num_bands;
        OPJ_UINT32 l_expn,l_mant;

        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8115, __PRETTY_FUNCTION__));
        ((p_header_size != 00) ? (void) (0) : __assert_fail ("p_header_size != 00", "./openjpeg/libopenjpeg/j2k.c", 8116, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 8117, __PRETTY_FUNCTION__));
        ((p_data != 00) ? (void) (0) : __assert_fail ("p_data != 00", "./openjpeg/libopenjpeg/j2k.c", 8118, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = &l_cp->tcps[p_tile_no];
        l_tccp = &l_tcp->tccps[p_comp_no];


        ((p_tile_no < l_cp->tw * l_cp->th) ? (void) (0) : __assert_fail ("p_tile_no < l_cp->tw * l_cp->th", "./openjpeg/libopenjpeg/j2k.c", 8125, __PRETTY_FUNCTION__));
        ((p_comp_no <p_j2k->m_private_image->numcomps) ? (void) (0) : __assert_fail ("p_comp_no <p_j2k->m_private_image->numcomps", "./openjpeg/libopenjpeg/j2k.c", 8126, __PRETTY_FUNCTION__));

        l_num_bands = (l_tccp->qntsty == 1) ? 1 : (l_tccp->numresolutions * 3 - 2);

        if (l_tccp->qntsty == 0) {
                l_header_size = 1 + l_num_bands;

                if (*p_header_size < l_header_size) {
                        opj_event_msg(p_manager, 1, "Error writing SQcd SQcc element\n");
                        return 0;
                }

                opj_write_bytes_LE(p_data,l_tccp->qntsty + (l_tccp->numgbits << 5), 1);
                ++p_data;

                for (l_band_no = 0; l_band_no < l_num_bands; ++l_band_no) {
                        l_expn = l_tccp->stepsizes[l_band_no].expn;
                        opj_write_bytes_LE(p_data, l_expn << 3, 1);
                        ++p_data;
                }
        }
        else {
                l_header_size = 1 + 2*l_num_bands;

                if (*p_header_size < l_header_size) {
                        opj_event_msg(p_manager, 1, "Error writing SQcd SQcc element\n");
                        return 0;
                }

                opj_write_bytes_LE(p_data,l_tccp->qntsty + (l_tccp->numgbits << 5), 1);
                ++p_data;

                for (l_band_no = 0; l_band_no < l_num_bands; ++l_band_no) {
                        l_expn = l_tccp->stepsizes[l_band_no].expn;
                        l_mant = l_tccp->stepsizes[l_band_no].mant;

                        opj_write_bytes_LE(p_data, (l_expn << 11) + l_mant, 2);
                        p_data += 2;
                }
        }

        *p_header_size = *p_header_size - l_header_size;

        return 1;
}

OPJ_BOOL opj_j2k_read_SQcd_SQcc(opj_j2k_t *p_j2k,
                                                            OPJ_UINT32 p_comp_no,
                                                            OPJ_BYTE* p_header_data,
                                                            OPJ_UINT32 * p_header_size,
                                                            opj_event_mgr_t * p_manager
                                                            )
{

        OPJ_UINT32 l_band_no;
        opj_cp_t *l_cp = 00;
        opj_tcp_t *l_tcp = 00;
        opj_tccp_t *l_tccp = 00;
        OPJ_BYTE * l_current_ptr = 00;
        OPJ_UINT32 l_tmp, l_num_band;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8188, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 8189, __PRETTY_FUNCTION__));
        ((p_header_data != 00) ? (void) (0) : __assert_fail ("p_header_data != 00", "./openjpeg/libopenjpeg/j2k.c", 8190, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);

        l_tcp = (p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH) ?
                                &l_cp->tcps[p_j2k->m_current_tile_number] :
                                p_j2k->m_specific_param.m_decoder.m_default_tcp;


        ((p_comp_no < p_j2k->m_private_image->numcomps) ? (void) (0) : __assert_fail ("p_comp_no < p_j2k->m_private_image->numcomps", "./openjpeg/libopenjpeg/j2k.c", 8199, __PRETTY_FUNCTION__));

        l_tccp = &l_tcp->tccps[p_comp_no];
        l_current_ptr = p_header_data;

        if (*p_header_size < 1) {
                opj_event_msg(p_manager, 1, "Error reading SQcd or SQcc element\n");
                return 0;
        }
        *p_header_size -= 1;

        opj_read_bytes_LE(l_current_ptr, &l_tmp ,1);
        ++l_current_ptr;

        l_tccp->qntsty = l_tmp & 0x1f;
        l_tccp->numgbits = l_tmp >> 5;
        if (l_tccp->qntsty == 1) {
        l_num_band = 1;
        }
        else {
                l_num_band = (l_tccp->qntsty == 0) ?
                        (*p_header_size) :
                        (*p_header_size) / 2;

                if( l_num_band > (3*33 -2) ) {
                        opj_event_msg(p_manager, 2, "While reading CCP_QNTSTY element inside QCD or QCC marker segment, "
                                "number of subbands (%d) is greater to OPJ_J2K_MAXBANDS (%d). So we limit the number of elements stored to "
                                "OPJ_J2K_MAXBANDS (%d) and skip the rest. \n", l_num_band, (3*33 -2), (3*33 -2));

                }
        }
# 8253 "./openjpeg/libopenjpeg/j2k.c"
        if (l_tccp->qntsty == 0) {
                for (l_band_no = 0; l_band_no < l_num_band; l_band_no++) {
                        opj_read_bytes_LE(l_current_ptr, &l_tmp ,1);
                        ++l_current_ptr;
                        if (l_band_no < (3*33 -2)){
                                l_tccp->stepsizes[l_band_no].expn = l_tmp>>3;
                                l_tccp->stepsizes[l_band_no].mant = 0;
                        }
                }
                *p_header_size = *p_header_size - l_num_band;
        }
        else {
                for (l_band_no = 0; l_band_no < l_num_band; l_band_no++) {
                        opj_read_bytes_LE(l_current_ptr, &l_tmp ,2);
                        l_current_ptr+=2;
                        if (l_band_no < (3*33 -2)){
                                l_tccp->stepsizes[l_band_no].expn = l_tmp >> 11;
                                l_tccp->stepsizes[l_band_no].mant = l_tmp & 0x7ff;
                        }
                }
                *p_header_size = *p_header_size - 2*l_num_band;
        }


        if (l_tccp->qntsty == 1) {
                for (l_band_no = 1; l_band_no < (3*33 -2); l_band_no++) {
                        l_tccp->stepsizes[l_band_no].expn =
                                ((l_tccp->stepsizes[0].expn) - ((l_band_no - 1) / 3) > 0) ?
                                        (l_tccp->stepsizes[0].expn) - ((l_band_no - 1) / 3) : 0;
                        l_tccp->stepsizes[l_band_no].mant = l_tccp->stepsizes[0].mant;
                }
        }

        return 1;
}

void opj_j2k_copy_tile_quantization_parameters( opj_j2k_t *p_j2k )
{
        OPJ_UINT32 i;
        opj_cp_t *l_cp = ((void*)0);
        opj_tcp_t *l_tcp = ((void*)0);
        opj_tccp_t *l_ref_tccp = ((void*)0);
        opj_tccp_t *l_copied_tccp = ((void*)0);
        OPJ_UINT32 l_size;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8299, __PRETTY_FUNCTION__));

        l_cp = &(p_j2k->m_cp);
        l_tcp = p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_TPH ?
                        &l_cp->tcps[p_j2k->m_current_tile_number] :
                        p_j2k->m_specific_param.m_decoder.m_default_tcp;

        l_ref_tccp = &l_tcp->tccps[0];
        l_copied_tccp = l_ref_tccp + 1;
        l_size = (3*33 -2) * sizeof(opj_stepsize_t);

        for (i=1;i<p_j2k->m_private_image->numcomps;++i) {
                l_copied_tccp->qntsty = l_ref_tccp->qntsty;
                l_copied_tccp->numgbits = l_ref_tccp->numgbits;
                memcpy(l_copied_tccp->stepsizes,l_ref_tccp->stepsizes,l_size);
                ++l_copied_tccp;
        }
}

void j2k_dump (opj_j2k_t* p_j2k, OPJ_INT32 flag, FILE* out_stream)
{

        if ( (flag & 128) || (flag & 256)){
                fprintf(out_stream, "Wrong flag\n");
                return;
        }


        if (flag & 1){
                if (p_j2k->m_private_image)
                        j2k_dump_image_header(p_j2k->m_private_image, 0, out_stream);
        }


        if (flag & 2){
                opj_j2k_dump_MH_info(p_j2k, out_stream);
        }


        if (flag & 4){

        }


        if (flag & 16){
                opj_j2k_dump_MH_index(p_j2k, out_stream);
        }


        if (flag & 32){

        }

}

void opj_j2k_dump_MH_index(opj_j2k_t* p_j2k, FILE* out_stream)
{
        opj_codestream_index_t* cstr_index = p_j2k->cstr_index;
        OPJ_UINT32 it_marker, it_tile, it_tile_part;

        fprintf(out_stream, "Codestream index from main header: {\n");

        fprintf(out_stream, "\t Main header start position=%" "l" "i" "\n"
                                    "\t Main header end position=%" "l" "i" "\n",
                        cstr_index->main_head_start, cstr_index->main_head_end);

        fprintf(out_stream, "\t Marker list: {\n");

        if (cstr_index->marker){
                for (it_marker=0; it_marker < cstr_index->marknum ; it_marker++){
                        fprintf(out_stream, "\t\t type=%#x, pos=%" "l" "i" ", len=%d\n",
                                        cstr_index->marker[it_marker].type,
                                        cstr_index->marker[it_marker].pos,
                                        cstr_index->marker[it_marker].len );
                }
        }

        fprintf(out_stream, "\t }\n");

        if (cstr_index->tile_index){


        OPJ_UINT32 l_acc_nb_of_tile_part = 0;
        for (it_tile=0; it_tile < cstr_index->nb_of_tiles ; it_tile++){
                        l_acc_nb_of_tile_part += cstr_index->tile_index[it_tile].nb_tps;
        }

        if (l_acc_nb_of_tile_part)
        {
            fprintf(out_stream, "\t Tile index: {\n");

                    for (it_tile=0; it_tile < cstr_index->nb_of_tiles ; it_tile++){
                            OPJ_UINT32 nb_of_tile_part = cstr_index->tile_index[it_tile].nb_tps;

                            fprintf(out_stream, "\t\t nb of tile-part in tile [%d]=%d\n", it_tile, nb_of_tile_part);

                            if (cstr_index->tile_index[it_tile].tp_index){
                                    for (it_tile_part =0; it_tile_part < nb_of_tile_part; it_tile_part++){
                                            fprintf(out_stream, "\t\t\t tile-part[%d]: star_pos=%" "l" "i" ", end_header=%" "l" "i" ", end_pos=%" "l" "i" ".\n",
                                                            it_tile_part,
                                                            cstr_index->tile_index[it_tile].tp_index[it_tile_part].start_pos,
                                                            cstr_index->tile_index[it_tile].tp_index[it_tile_part].end_header,
                                                            cstr_index->tile_index[it_tile].tp_index[it_tile_part].end_pos);
                                    }
                            }

                            if (cstr_index->tile_index[it_tile].marker){
                                    for (it_marker=0; it_marker < cstr_index->tile_index[it_tile].marknum ; it_marker++){
                                            fprintf(out_stream, "\t\t type=%#x, pos=%" "l" "i" ", len=%d\n",
                                                            cstr_index->tile_index[it_tile].marker[it_marker].type,
                                                            cstr_index->tile_index[it_tile].marker[it_marker].pos,
                                                            cstr_index->tile_index[it_tile].marker[it_marker].len );
                                    }
                            }
                    }
                    fprintf(out_stream,"\t }\n");
        }
        }

        fprintf(out_stream,"}\n");

}

void opj_j2k_dump_MH_info(opj_j2k_t* p_j2k, FILE* out_stream)
{
        opj_tcp_t * l_default_tile=((void*)0);

        fprintf(out_stream, "Codestream info from main header: {\n");

        fprintf(out_stream, "\t tx0=%d, ty0=%d\n", p_j2k->m_cp.tx0, p_j2k->m_cp.ty0);
        fprintf(out_stream, "\t tdx=%d, tdy=%d\n", p_j2k->m_cp.tdx, p_j2k->m_cp.tdy);
        fprintf(out_stream, "\t tw=%d, th=%d\n", p_j2k->m_cp.tw, p_j2k->m_cp.th);

        l_default_tile = p_j2k->m_specific_param.m_decoder.m_default_tcp;
        if (l_default_tile)
        {
                OPJ_INT32 compno;
                OPJ_INT32 numcomps = p_j2k->m_private_image->numcomps;

                fprintf(out_stream, "\t default tile {\n");
                fprintf(out_stream, "\t\t csty=%#x\n", l_default_tile->csty);
                fprintf(out_stream, "\t\t prg=%#x\n", l_default_tile->prg);
                fprintf(out_stream, "\t\t numlayers=%d\n", l_default_tile->numlayers);
                fprintf(out_stream, "\t\t mct=%x\n", l_default_tile->mct);

                for (compno = 0; compno < numcomps; compno++) {
                        opj_tccp_t *l_tccp = &(l_default_tile->tccps[compno]);
                        OPJ_UINT32 resno;
      OPJ_INT32 bandno, numbands;


                        fprintf(out_stream, "\t\t comp %d {\n", compno);
                        fprintf(out_stream, "\t\t\t csty=%#x\n", l_tccp->csty);
                        fprintf(out_stream, "\t\t\t numresolutions=%d\n", l_tccp->numresolutions);
                        fprintf(out_stream, "\t\t\t cblkw=2^%d\n", l_tccp->cblkw);
                        fprintf(out_stream, "\t\t\t cblkh=2^%d\n", l_tccp->cblkh);
                        fprintf(out_stream, "\t\t\t cblksty=%#x\n", l_tccp->cblksty);
                        fprintf(out_stream, "\t\t\t qmfbid=%d\n", l_tccp->qmfbid);

                        fprintf(out_stream, "\t\t\t preccintsize (w,h)=");
                        for (resno = 0; resno < l_tccp->numresolutions; resno++) {
                                fprintf(out_stream, "(%d,%d) ", l_tccp->prcw[resno], l_tccp->prch[resno]);
                        }
                        fprintf(out_stream, "\n");


                        fprintf(out_stream, "\t\t\t qntsty=%d\n", l_tccp->qntsty);
                        fprintf(out_stream, "\t\t\t numgbits=%d\n", l_tccp->numgbits);
                        fprintf(out_stream, "\t\t\t stepsizes (m,e)=");
                        numbands = (l_tccp->qntsty == 1) ? 1 : l_tccp->numresolutions * 3 - 2;
                        for (bandno = 0; bandno < numbands; bandno++) {
                                fprintf(out_stream, "(%d,%d) ", l_tccp->stepsizes[bandno].mant,
                                        l_tccp->stepsizes[bandno].expn);
                        }
                        fprintf(out_stream, "\n");


                        fprintf(out_stream, "\t\t\t roishift=%d\n", l_tccp->roishift);

                        fprintf(out_stream, "\t\t }\n");
                }
                fprintf(out_stream, "\t }\n");

        }

        fprintf(out_stream, "}\n");

}

void j2k_dump_image_header(opj_image_t* img_header, OPJ_BOOL dev_dump_flag, FILE* out_stream)
{
        char tab[2];

        if (dev_dump_flag){
                fprintf(stdout, "[DEV] Dump an image_header struct {\n");
                tab[0] = '\0';
        }
        else {
                fprintf(out_stream, "Image info {\n");
                tab[0] = '\t';tab[1] = '\0';
        }

        fprintf(out_stream, "%s x0=%d, y0=%d\n", tab, img_header->x0, img_header->y0);
        fprintf(out_stream, "%s x1=%d, y1=%d\n", tab, img_header->x1, img_header->y1);
        fprintf(out_stream, "%s numcomps=%d\n", tab, img_header->numcomps);

        if (img_header->comps){
                OPJ_UINT32 compno;
                for (compno = 0; compno < img_header->numcomps; compno++) {
                        fprintf(out_stream, "%s\t component %d {\n", tab, compno);
                        j2k_dump_image_comp_header(&(img_header->comps[compno]), dev_dump_flag, out_stream);
                        fprintf(out_stream,"%s}\n",tab);
                }
        }

        fprintf(out_stream, "}\n");
}

void j2k_dump_image_comp_header(opj_image_comp_t* comp_header, OPJ_BOOL dev_dump_flag, FILE* out_stream)
{
        char tab[3];

        if (dev_dump_flag){
                fprintf(stdout, "[DEV] Dump an image_comp_header struct {\n");
                tab[0] = '\0';
        } else {
                tab[0] = '\t';tab[1] = '\t';tab[2] = '\0';
        }

        fprintf(out_stream, "%s dx=%d, dy=%d\n", tab, comp_header->dx, comp_header->dy);
        fprintf(out_stream, "%s prec=%d\n", tab, comp_header->prec);
        fprintf(out_stream, "%s sgnd=%d\n", tab, comp_header->sgnd);

        if (dev_dump_flag)
                fprintf(out_stream, "}\n");
}

opj_codestream_info_v2_t* j2k_get_cstr_info(opj_j2k_t* p_j2k)
{
        OPJ_UINT32 compno;
        OPJ_UINT32 numcomps = p_j2k->m_private_image->numcomps;
        opj_tcp_t *l_default_tile;
        opj_codestream_info_v2_t* cstr_info = (opj_codestream_info_v2_t*) ((size_t)(1) != 0 && (size_t)(1) >= (size_t)-0x100 / (size_t)(sizeof(opj_codestream_info_v2_t)) ? ((void*)0) : calloc(1, sizeof(opj_codestream_info_v2_t)));
  if (!cstr_info)
   return ((void*)0);

        cstr_info->nbcomps = p_j2k->m_private_image->numcomps;

        cstr_info->tx0 = p_j2k->m_cp.tx0;
        cstr_info->ty0 = p_j2k->m_cp.ty0;
        cstr_info->tdx = p_j2k->m_cp.tdx;
        cstr_info->tdy = p_j2k->m_cp.tdy;
        cstr_info->tw = p_j2k->m_cp.tw;
        cstr_info->th = p_j2k->m_cp.th;

        cstr_info->tile_info = ((void*)0);

        l_default_tile = p_j2k->m_specific_param.m_decoder.m_default_tcp;

        cstr_info->m_default_tile_info.csty = l_default_tile->csty;
        cstr_info->m_default_tile_info.prg = l_default_tile->prg;
        cstr_info->m_default_tile_info.numlayers = l_default_tile->numlayers;
        cstr_info->m_default_tile_info.mct = l_default_tile->mct;

        cstr_info->m_default_tile_info.tccp_info = (opj_tccp_info_t*) ((size_t)(cstr_info->nbcomps) != 0 && (size_t)(cstr_info->nbcomps) >= (size_t)-0x100 / (size_t)(sizeof(opj_tccp_info_t)) ? ((void*)0) : calloc(cstr_info->nbcomps, sizeof(opj_tccp_info_t)));
  if (!cstr_info->m_default_tile_info.tccp_info)
  {
   opj_destroy_cstr_info(&cstr_info);
   return ((void*)0);
  }

        for (compno = 0; compno < numcomps; compno++) {
                opj_tccp_t *l_tccp = &(l_default_tile->tccps[compno]);
                opj_tccp_info_t *l_tccp_info = &(cstr_info->m_default_tile_info.tccp_info[compno]);
                OPJ_INT32 bandno, numbands;


                l_tccp_info->csty = l_tccp->csty;
                l_tccp_info->numresolutions = l_tccp->numresolutions;
                l_tccp_info->cblkw = l_tccp->cblkw;
                l_tccp_info->cblkh = l_tccp->cblkh;
                l_tccp_info->cblksty = l_tccp->cblksty;
                l_tccp_info->qmfbid = l_tccp->qmfbid;
                if (l_tccp->numresolutions < 33)
                {
                        memcpy(l_tccp_info->prch, l_tccp->prch, l_tccp->numresolutions);
                        memcpy(l_tccp_info->prcw, l_tccp->prcw, l_tccp->numresolutions);
                }


                l_tccp_info->qntsty = l_tccp->qntsty;
                l_tccp_info->numgbits = l_tccp->numgbits;

                numbands = (l_tccp->qntsty == 1) ? 1 : l_tccp->numresolutions * 3 - 2;
                if (numbands < (3*33 -2)) {
                        for (bandno = 0; bandno < numbands; bandno++) {
                                l_tccp_info->stepsizes_mant[bandno] = l_tccp->stepsizes[bandno].mant;
                                l_tccp_info->stepsizes_expn[bandno] = l_tccp->stepsizes[bandno].expn;
                        }
                }


                l_tccp_info->roishift = l_tccp->roishift;
        }

        return cstr_info;
}

opj_codestream_index_t* j2k_get_cstr_index(opj_j2k_t* p_j2k)
{
        opj_codestream_index_t* l_cstr_index = (opj_codestream_index_t*)
                        ((size_t)(1) != 0 && (size_t)(1) >= (size_t)-0x100 / (size_t)(sizeof(opj_codestream_index_t)) ? ((void*)0) : calloc(1, sizeof(opj_codestream_index_t)));
        if (!l_cstr_index)
                return ((void*)0);

        l_cstr_index->main_head_start = p_j2k->cstr_index->main_head_start;
        l_cstr_index->main_head_end = p_j2k->cstr_index->main_head_end;
        l_cstr_index->codestream_size = p_j2k->cstr_index->codestream_size;

        l_cstr_index->marknum = p_j2k->cstr_index->marknum;
        l_cstr_index->marker = (opj_marker_info_t*)((size_t)(l_cstr_index->marknum*sizeof(opj_marker_info_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(l_cstr_index->marknum*sizeof(opj_marker_info_t)));
        if (!l_cstr_index->marker){
                free(l_cstr_index);
                return ((void*)0);
        }

        if (p_j2k->cstr_index->marker)
                memcpy(l_cstr_index->marker, p_j2k->cstr_index->marker, l_cstr_index->marknum * sizeof(opj_marker_info_t) );
        else{
                free(l_cstr_index->marker);
                l_cstr_index->marker = ((void*)0);
        }

        l_cstr_index->nb_of_tiles = p_j2k->cstr_index->nb_of_tiles;
        l_cstr_index->tile_index = (opj_tile_index_t*)((size_t)(l_cstr_index->nb_of_tiles) != 0 && (size_t)(l_cstr_index->nb_of_tiles) >= (size_t)-0x100 / (size_t)(sizeof(opj_tile_index_t)) ? ((void*)0) : calloc(l_cstr_index->nb_of_tiles, sizeof(opj_tile_index_t)));
        if (!l_cstr_index->tile_index){
                free(l_cstr_index->marker);
                free(l_cstr_index);
                return ((void*)0);
        }

        if (!p_j2k->cstr_index->tile_index){
                free(l_cstr_index->tile_index);
                l_cstr_index->tile_index = ((void*)0);
        }
        else {
                OPJ_UINT32 it_tile = 0;
                for (it_tile = 0; it_tile < l_cstr_index->nb_of_tiles; it_tile++ ){


                        l_cstr_index->tile_index[it_tile].marknum = p_j2k->cstr_index->tile_index[it_tile].marknum;

                        l_cstr_index->tile_index[it_tile].marker =
                                (opj_marker_info_t*)((size_t)(l_cstr_index->tile_index[it_tile].marknum*sizeof(opj_marker_info_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(l_cstr_index->tile_index[it_tile].marknum*sizeof(opj_marker_info_t)));

                        if (!l_cstr_index->tile_index[it_tile].marker) {
                                OPJ_UINT32 it_tile_free;

                                for (it_tile_free=0; it_tile_free < it_tile; it_tile_free++){
                                        free(l_cstr_index->tile_index[it_tile_free].marker);
                                }

                                free(l_cstr_index->tile_index);
                                free(l_cstr_index->marker);
                                free(l_cstr_index);
                                return ((void*)0);
                        }

                        if (p_j2k->cstr_index->tile_index[it_tile].marker)
                                memcpy( l_cstr_index->tile_index[it_tile].marker,
                                                p_j2k->cstr_index->tile_index[it_tile].marker,
                                                l_cstr_index->tile_index[it_tile].marknum * sizeof(opj_marker_info_t) );
                        else{
                                free(l_cstr_index->tile_index[it_tile].marker);
                                l_cstr_index->tile_index[it_tile].marker = ((void*)0);
                        }


                        l_cstr_index->tile_index[it_tile].nb_tps = p_j2k->cstr_index->tile_index[it_tile].nb_tps;

                        l_cstr_index->tile_index[it_tile].tp_index =
                                (opj_tp_index_t*)((size_t)(l_cstr_index->tile_index[it_tile].nb_tps*sizeof(opj_tp_index_t)) >= (size_t)-0x100 ? ((void*)0) : malloc(l_cstr_index->tile_index[it_tile].nb_tps*sizeof(opj_tp_index_t)));

                        if(!l_cstr_index->tile_index[it_tile].tp_index){
                                OPJ_UINT32 it_tile_free;

                                for (it_tile_free=0; it_tile_free < it_tile; it_tile_free++){
                                        free(l_cstr_index->tile_index[it_tile_free].marker);
                                        free(l_cstr_index->tile_index[it_tile_free].tp_index);
                                }

                                free(l_cstr_index->tile_index);
                                free(l_cstr_index->marker);
                                free(l_cstr_index);
                                return ((void*)0);
                        }

                        if (p_j2k->cstr_index->tile_index[it_tile].tp_index){
                                memcpy( l_cstr_index->tile_index[it_tile].tp_index,
                                                p_j2k->cstr_index->tile_index[it_tile].tp_index,
                                                l_cstr_index->tile_index[it_tile].nb_tps * sizeof(opj_tp_index_t) );
                        }
                        else{
                                free(l_cstr_index->tile_index[it_tile].tp_index);
                                l_cstr_index->tile_index[it_tile].tp_index = ((void*)0);
                        }


                        l_cstr_index->tile_index[it_tile].nb_packet = 0;
                        l_cstr_index->tile_index[it_tile].packet_index = ((void*)0);

                }
        }

        return l_cstr_index;
}

OPJ_BOOL opj_j2k_allocate_tile_element_cstr_index(opj_j2k_t *p_j2k)
{
        OPJ_UINT32 it_tile=0;

        p_j2k->cstr_index->nb_of_tiles = p_j2k->m_cp.tw * p_j2k->m_cp.th;
        p_j2k->cstr_index->tile_index = (opj_tile_index_t*)((size_t)(p_j2k->cstr_index->nb_of_tiles) != 0 && (size_t)(p_j2k->cstr_index->nb_of_tiles) >= (size_t)-0x100 / (size_t)(sizeof(opj_tile_index_t)) ? ((void*)0) : calloc(p_j2k->cstr_index->nb_of_tiles, sizeof(opj_tile_index_t)));
        if (!p_j2k->cstr_index->tile_index)
                return 0;

        for (it_tile=0; it_tile < p_j2k->cstr_index->nb_of_tiles; it_tile++){
                p_j2k->cstr_index->tile_index[it_tile].maxmarknum = 100;
                p_j2k->cstr_index->tile_index[it_tile].marknum = 0;
                p_j2k->cstr_index->tile_index[it_tile].marker = (opj_marker_info_t*)
                                ((size_t)(p_j2k->cstr_index->tile_index[it_tile].maxmarknum) != 0 && (size_t)(p_j2k->cstr_index->tile_index[it_tile].maxmarknum) >= (size_t)-0x100 / (size_t)(sizeof(opj_marker_info_t)) ? ((void*)0) : calloc(p_j2k->cstr_index->tile_index[it_tile].maxmarknum, sizeof(opj_marker_info_t)));
                if (!p_j2k->cstr_index->tile_index[it_tile].marker)
                        return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_decode_tiles ( opj_j2k_t *p_j2k,
                                                            opj_stream_private_t *p_stream,
                                                            opj_event_mgr_t * p_manager)
{
        OPJ_BOOL l_go_on = 1;
        OPJ_UINT32 l_current_tile_no;
        OPJ_UINT32 l_data_size,l_max_data_size;
        OPJ_INT32 l_tile_x0,l_tile_y0,l_tile_x1,l_tile_y1;
        OPJ_UINT32 l_nb_comps;
        OPJ_BYTE * l_current_data;
        OPJ_UINT32 nr_tiles = 0;

        l_current_data = (OPJ_BYTE*)((size_t)(1000) >= (size_t)-0x100 ? ((void*)0) : malloc(1000));
        if (! l_current_data) {
                opj_event_msg(p_manager, 1, "Not enough memory to decode tiles\n");
                return 0;
        }
        l_max_data_size = 1000;

        while (1) {
                if (! opj_j2k_read_tile_header( p_j2k,
                                        &l_current_tile_no,
                                        &l_data_size,
                                        &l_tile_x0, &l_tile_y0,
                                        &l_tile_x1, &l_tile_y1,
                                        &l_nb_comps,
                                        &l_go_on,
                                        p_stream,
                                        p_manager)) {
                        free(l_current_data);
                        return 0;
                }

                if (! l_go_on) {
                        break;
                }

                if (l_data_size > l_max_data_size) {
                        OPJ_BYTE *l_new_current_data = (OPJ_BYTE *) ((size_t)(l_data_size) >= (size_t)-0x100 ? ((void*)0) : realloc(l_current_data, l_data_size));
                        if (! l_new_current_data) {
                                free(l_current_data);
                                opj_event_msg(p_manager, 1, "Not enough memory to decode tile %d/%d\n", l_current_tile_no +1, p_j2k->m_cp.th * p_j2k->m_cp.tw);
                                return 0;
                        }
                        l_current_data = l_new_current_data;
                        l_max_data_size = l_data_size;
                }

                if (! opj_j2k_decode_tile(p_j2k,l_current_tile_no,l_current_data,l_data_size,p_stream,p_manager)) {
                        free(l_current_data);
                        return 0;
                }
                opj_event_msg(p_manager, 4, "Tile %d/%d has been decoded.\n", l_current_tile_no +1, p_j2k->m_cp.th * p_j2k->m_cp.tw);

                if (! opj_j2k_update_image_data(p_j2k->m_tcd,l_current_data, p_j2k->m_output_image)) {
                        free(l_current_data);
                        return 0;
                }
                opj_event_msg(p_manager, 4, "Image data has been updated with tile %d.\n\n", l_current_tile_no + 1);

                if(opj_stream_get_number_byte_left(p_stream) == 0
                    && p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_NEOC)
                    break;
                if(++nr_tiles == p_j2k->m_cp.th * p_j2k->m_cp.tw)
                    break;
        }

        free(l_current_data);

        return 1;
}




static void opj_j2k_setup_decoding (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8815, __PRETTY_FUNCTION__));

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_decode_tiles);


}




static OPJ_BOOL opj_j2k_decode_one_tile ( opj_j2k_t *p_j2k,
                                                                            opj_stream_private_t *p_stream,
                                                                            opj_event_mgr_t * p_manager)
{
        OPJ_BOOL l_go_on = 1;
        OPJ_UINT32 l_current_tile_no;
        OPJ_UINT32 l_tile_no_to_dec;
        OPJ_UINT32 l_data_size,l_max_data_size;
        OPJ_INT32 l_tile_x0,l_tile_y0,l_tile_x1,l_tile_y1;
        OPJ_UINT32 l_nb_comps;
        OPJ_BYTE * l_current_data;

        l_current_data = (OPJ_BYTE*)((size_t)(1000) >= (size_t)-0x100 ? ((void*)0) : malloc(1000));
        if (! l_current_data) {
                opj_event_msg(p_manager, 1, "Not enough memory to decode one tile\n");
                return 0;
        }
        l_max_data_size = 1000;


        if( !p_j2k->cstr_index->tile_index)
        {
                if (!opj_j2k_allocate_tile_element_cstr_index(p_j2k)){
                        free(l_current_data);
                        return 0;
                }
        }

        l_tile_no_to_dec = p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec;
        if (p_j2k->cstr_index->tile_index)
                if(p_j2k->cstr_index->tile_index->tp_index)
                {
                        if ( ! p_j2k->cstr_index->tile_index[l_tile_no_to_dec].nb_tps) {


                                if ( !(opj_stream_read_seek(p_stream, p_j2k->m_specific_param.m_decoder.m_last_sot_read_pos+2, p_manager)) ){
                                        opj_event_msg(p_manager, 1, "Problem with seek function\n");
                                        return 0;
                                }
                        }
                        else{
                                if ( !(opj_stream_read_seek(p_stream, p_j2k->cstr_index->tile_index[l_tile_no_to_dec].tp_index[0].start_pos+2, p_manager)) ) {
                                        opj_event_msg(p_manager, 1, "Problem with seek function\n");
                                        return 0;
                                }
                        }

                        if(p_j2k->m_specific_param.m_decoder.m_state == J2K_STATE_EOC)
                                p_j2k->m_specific_param.m_decoder.m_state = J2K_STATE_TPHSOT;
                }

        while (1) {
                if (! opj_j2k_read_tile_header( p_j2k,
                                        &l_current_tile_no,
                                        &l_data_size,
                                        &l_tile_x0, &l_tile_y0,
                                        &l_tile_x1, &l_tile_y1,
                                        &l_nb_comps,
                                        &l_go_on,
                                        p_stream,
                                        p_manager)) {
                        free(l_current_data);
                        return 0;
                }

                if (! l_go_on) {
                        break;
                }

                if (l_data_size > l_max_data_size) {
                        OPJ_BYTE *l_new_current_data = (OPJ_BYTE *) ((size_t)(l_data_size) >= (size_t)-0x100 ? ((void*)0) : realloc(l_current_data, l_data_size));
                        if (! l_new_current_data) {
                                free(l_current_data);
                                l_current_data = ((void*)0);


                                opj_event_msg(p_manager, 1, "Not enough memory to decode tile %d/%d\n", l_current_tile_no, (p_j2k->m_cp.th * p_j2k->m_cp.tw) - 1);
                                return 0;
                        }
                        l_current_data = l_new_current_data;
                        l_max_data_size = l_data_size;
                }

                if (! opj_j2k_decode_tile(p_j2k,l_current_tile_no,l_current_data,l_data_size,p_stream,p_manager)) {
                        free(l_current_data);
                        return 0;
                }
                opj_event_msg(p_manager, 4, "Tile %d/%d has been decoded.\n", l_current_tile_no, (p_j2k->m_cp.th * p_j2k->m_cp.tw) - 1);

                if (! opj_j2k_update_image_data(p_j2k->m_tcd,l_current_data, p_j2k->m_output_image)) {
                        free(l_current_data);
                        return 0;
                }
                opj_event_msg(p_manager, 4, "Image data has been updated with tile %d.\n\n", l_current_tile_no);

                if(l_current_tile_no == l_tile_no_to_dec)
                {

                        if (!(opj_stream_read_seek(p_stream, p_j2k->cstr_index->main_head_end + 2, p_manager) ) ) {
                                opj_event_msg(p_manager, 1, "Problem with seek function\n");
                                return 0;
                        }
                        break;
                }
                else {
                        opj_event_msg(p_manager, 2, "Tile read, decode and updated is not the desired (%d vs %d).\n", l_current_tile_no, l_tile_no_to_dec);
                }

        }

        free(l_current_data);

        return 1;
}




static void opj_j2k_setup_decoding_tile (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 8946, __PRETTY_FUNCTION__));

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_decode_one_tile);


}

OPJ_BOOL opj_j2k_decode(opj_j2k_t * p_j2k,
                                                opj_stream_private_t * p_stream,
                                                opj_image_t * p_image,
                                                opj_event_mgr_t * p_manager)
{
        OPJ_UINT32 compno;

        if (!p_image)
                return 0;

        p_j2k->m_output_image = opj_image_create0();
        if (! (p_j2k->m_output_image)) {
                return 0;
        }
        opj_copy_image_header(p_image, p_j2k->m_output_image);


        opj_j2k_setup_decoding(p_j2k);


        if (! opj_j2k_exec (p_j2k,p_j2k->m_procedure_list,p_stream,p_manager)) {
                opj_image_destroy(p_j2k->m_private_image);
                p_j2k->m_private_image = ((void*)0);
                return 0;
        }


        for (compno = 0; compno < p_image->numcomps; compno++) {
                p_image->comps[compno].resno_decoded = p_j2k->m_output_image->comps[compno].resno_decoded;
                p_image->comps[compno].data = p_j2k->m_output_image->comps[compno].data;
                p_j2k->m_output_image->comps[compno].data = ((void*)0);
        }

        return 1;
}

OPJ_BOOL opj_j2k_get_tile( opj_j2k_t *p_j2k,
                                                    opj_stream_private_t *p_stream,
                                                    opj_image_t* p_image,
                                                    opj_event_mgr_t * p_manager,
                                                    OPJ_UINT32 tile_index )
{
        OPJ_UINT32 compno;
        OPJ_UINT32 l_tile_x, l_tile_y;
        opj_image_comp_t* l_img_comp;

        if (!p_image) {
                opj_event_msg(p_manager, 1, "We need an image previously created.\n");
                return 0;
        }

        if ( (tile_index >= p_j2k->m_cp.tw * p_j2k->m_cp.th) ){
                opj_event_msg(p_manager, 1, "Tile index provided by the user is incorrect %d (max = %d) \n", tile_index, (p_j2k->m_cp.tw * p_j2k->m_cp.th) - 1);
                return 0;
        }


        l_tile_x = tile_index % p_j2k->m_cp.tw;
        l_tile_y = tile_index / p_j2k->m_cp.tw;

        p_image->x0 = l_tile_x * p_j2k->m_cp.tdx + p_j2k->m_cp.tx0;
        if (p_image->x0 < p_j2k->m_private_image->x0)
                p_image->x0 = p_j2k->m_private_image->x0;
        p_image->x1 = (l_tile_x + 1) * p_j2k->m_cp.tdx + p_j2k->m_cp.tx0;
        if (p_image->x1 > p_j2k->m_private_image->x1)
                p_image->x1 = p_j2k->m_private_image->x1;

        p_image->y0 = l_tile_y * p_j2k->m_cp.tdy + p_j2k->m_cp.ty0;
        if (p_image->y0 < p_j2k->m_private_image->y0)
                p_image->y0 = p_j2k->m_private_image->y0;
        p_image->y1 = (l_tile_y + 1) * p_j2k->m_cp.tdy + p_j2k->m_cp.ty0;
        if (p_image->y1 > p_j2k->m_private_image->y1)
                p_image->y1 = p_j2k->m_private_image->y1;

        l_img_comp = p_image->comps;
        for (compno=0; compno < p_image->numcomps; ++compno)
        {
                OPJ_INT32 l_comp_x1, l_comp_y1;

                l_img_comp->factor = p_j2k->m_private_image->comps[compno].factor;

                l_img_comp->x0 = opj_int_ceildiv(p_image->x0, l_img_comp->dx);
                l_img_comp->y0 = opj_int_ceildiv(p_image->y0, l_img_comp->dy);
                l_comp_x1 = opj_int_ceildiv(p_image->x1, l_img_comp->dx);
                l_comp_y1 = opj_int_ceildiv(p_image->y1, l_img_comp->dy);

                l_img_comp->w = opj_int_ceildivpow2(l_comp_x1, l_img_comp->factor) - opj_int_ceildivpow2(l_img_comp->x0, l_img_comp->factor);
                l_img_comp->h = opj_int_ceildivpow2(l_comp_y1, l_img_comp->factor) - opj_int_ceildivpow2(l_img_comp->y0, l_img_comp->factor);

                l_img_comp++;
        }


        if (p_j2k->m_output_image)
                opj_image_destroy(p_j2k->m_output_image);


        p_j2k->m_output_image = opj_image_create0();
        if (! (p_j2k->m_output_image)) {
                return 0;
        }
        opj_copy_image_header(p_image, p_j2k->m_output_image);

        p_j2k->m_specific_param.m_decoder.m_tile_ind_to_dec = tile_index;


        opj_j2k_setup_decoding_tile(p_j2k);


        if (! opj_j2k_exec (p_j2k,p_j2k->m_procedure_list,p_stream,p_manager)) {
                opj_image_destroy(p_j2k->m_private_image);
                p_j2k->m_private_image = ((void*)0);
                return 0;
        }


        for (compno = 0; compno < p_image->numcomps; compno++) {
                p_image->comps[compno].resno_decoded = p_j2k->m_output_image->comps[compno].resno_decoded;

                if (p_image->comps[compno].data)
                        free(p_image->comps[compno].data);

                p_image->comps[compno].data = p_j2k->m_output_image->comps[compno].data;

                p_j2k->m_output_image->comps[compno].data = ((void*)0);
        }

        return 1;
}

OPJ_BOOL opj_j2k_set_decoded_resolution_factor(opj_j2k_t *p_j2k,
                                               OPJ_UINT32 res_factor,
                                               opj_event_mgr_t * p_manager)
{
        OPJ_UINT32 it_comp;

        p_j2k->m_cp.m_specific_param.m_dec.m_reduce = res_factor;

        if (p_j2k->m_private_image) {
                if (p_j2k->m_private_image->comps) {
                        if (p_j2k->m_specific_param.m_decoder.m_default_tcp) {
                                if (p_j2k->m_specific_param.m_decoder.m_default_tcp->tccps) {
                                        for (it_comp = 0 ; it_comp < p_j2k->m_private_image->numcomps; it_comp++) {
                                                OPJ_UINT32 max_res = p_j2k->m_specific_param.m_decoder.m_default_tcp->tccps[it_comp].numresolutions;
                                                if ( res_factor >= max_res){
                                                        opj_event_msg(p_manager, 1, "Resolution factor is greater than the maximum resolution in the component.\n");
                                                        return 0;
                                                }
                                                p_j2k->m_private_image->comps[it_comp].factor = res_factor;
                                        }
                                        return 1;
                                }
                        }
                }
        }

        return 0;
}

OPJ_BOOL opj_j2k_encode(opj_j2k_t * p_j2k,
                        opj_stream_private_t *p_stream,
                        opj_event_mgr_t * p_manager )
{
        OPJ_UINT32 i;
        OPJ_UINT32 l_nb_tiles;
        OPJ_UINT32 l_max_tile_size, l_current_tile_size;
        OPJ_BYTE * l_current_data;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9122, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9123, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9124, __PRETTY_FUNCTION__));

        l_current_data = (OPJ_BYTE*)((size_t)(1000) >= (size_t)-0x100 ? ((void*)0) : malloc(1000));
        if (! l_current_data) {
                opj_event_msg(p_manager, 1, "Not enough memory to encode all tiles\n");
                return 0;
        }
        l_max_tile_size = 1000;

        l_nb_tiles = p_j2k->m_cp.th * p_j2k->m_cp.tw;
        for (i=0;i<l_nb_tiles;++i) {
                if (! opj_j2k_pre_write_tile(p_j2k,i,p_stream,p_manager)) {
                        free(l_current_data);
                        return 0;
                }

                l_current_tile_size = opj_tcd_get_encoded_tile_size(p_j2k->m_tcd);
                if (l_current_tile_size > l_max_tile_size) {
                        OPJ_BYTE *l_new_current_data = (OPJ_BYTE *) ((size_t)(l_current_tile_size) >= (size_t)-0x100 ? ((void*)0) : realloc(l_current_data, l_current_tile_size));
                        if (! l_new_current_data) {
                                free(l_current_data);
                                opj_event_msg(p_manager, 1, "Not enough memory to encode all tiles\n");
                                return 0;
                        }
                        l_current_data = l_new_current_data;
                        l_max_tile_size = l_current_tile_size;
                }

                opj_j2k_get_tile_data(p_j2k->m_tcd,l_current_data);

                if (! opj_j2k_post_write_tile (p_j2k,l_current_data,l_current_tile_size,p_stream,p_manager)) {
                        return 0;
                }
        }

        free(l_current_data);
        return 1;
}

OPJ_BOOL opj_j2k_end_compress( opj_j2k_t *p_j2k,
                                                        opj_stream_private_t *p_stream,
                                                        opj_event_mgr_t * p_manager)
{

        opj_j2k_setup_end_compress(p_j2k);

        if (! opj_j2k_exec (p_j2k, p_j2k->m_procedure_list, p_stream, p_manager))
        {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_start_compress(opj_j2k_t *p_j2k,
                                                            opj_stream_private_t *p_stream,
                                                            opj_image_t * p_image,
                                                            opj_event_mgr_t * p_manager)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9184, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9185, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9186, __PRETTY_FUNCTION__));

        p_j2k->m_private_image = opj_image_create0();
        opj_copy_image_header(p_image, p_j2k->m_private_image);


        if (p_image->comps) {
                OPJ_UINT32 it_comp;
                for (it_comp = 0 ; it_comp < p_image->numcomps; it_comp++) {
                        if (p_image->comps[it_comp].data) {
                                p_j2k->m_private_image->comps[it_comp].data =p_image->comps[it_comp].data;
                                p_image->comps[it_comp].data = ((void*)0);

                        }
                }
        }


        opj_j2k_setup_encoding_validation (p_j2k);


        if (! opj_j2k_exec(p_j2k,p_j2k->m_validation_list,p_stream,p_manager)) {
                return 0;
        }


        opj_j2k_setup_header_writing(p_j2k);


        if (! opj_j2k_exec (p_j2k,p_j2k->m_procedure_list,p_stream,p_manager)) {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_pre_write_tile ( opj_j2k_t * p_j2k,
                                                                OPJ_UINT32 p_tile_index,
                                                                opj_stream_private_t *p_stream,
                                                                opj_event_mgr_t * p_manager )
{
  (void)p_stream;
        if (p_tile_index != p_j2k->m_current_tile_number) {
                opj_event_msg(p_manager, 1, "The given tile index does not match." );
                return 0;
        }

        opj_event_msg(p_manager, 4, "tile number %d / %d\n", p_j2k->m_current_tile_number + 1, p_j2k->m_cp.tw * p_j2k->m_cp.th);

        p_j2k->m_specific_param.m_encoder.m_current_tile_part_number = 0;
        p_j2k->m_tcd->cur_totnum_tp = p_j2k->m_cp.tcps[p_tile_index].m_nb_tile_parts;
        p_j2k->m_specific_param.m_encoder.m_current_poc_tile_part_number = 0;


        if (! opj_tcd_init_encode_tile(p_j2k->m_tcd, p_j2k->m_current_tile_number)) {
                return 0;
        }

        return 1;
}

void opj_j2k_get_tile_data (opj_tcd_t * p_tcd, OPJ_BYTE * p_data)
{
        OPJ_UINT32 i,j,k = 0;
        OPJ_UINT32 l_width,l_height,l_stride, l_offset_x,l_offset_y, l_image_width;
        opj_image_comp_t * l_img_comp = 00;
        opj_tcd_tilecomp_t * l_tilec = 00;
        opj_image_t * l_image = 00;
        OPJ_UINT32 l_size_comp, l_remaining;
        OPJ_INT32 * l_src_ptr;
        l_tilec = p_tcd->tcd_image->tiles->comps;
        l_image = p_tcd->image;
        l_img_comp = l_image->comps;

        for (i=0;i<p_tcd->image->numcomps;++i) {
                l_size_comp = l_img_comp->prec >> 3;
                l_remaining = l_img_comp->prec & 7;
                if (l_remaining) {
                        ++l_size_comp;
                }

                if (l_size_comp == 3) {
                        l_size_comp = 4;
                }

                l_width = (l_tilec->x1 - l_tilec->x0);
                l_height = (l_tilec->y1 - l_tilec->y0);
                l_offset_x = opj_int_ceildiv(l_image->x0, l_img_comp->dx);
                l_offset_y = opj_int_ceildiv(l_image->y0, l_img_comp->dy);
                l_image_width = opj_int_ceildiv(l_image->x1 - l_image->x0, l_img_comp->dx);
                l_stride = l_image_width - l_width;
                l_src_ptr = l_img_comp->data + (l_tilec->x0 - l_offset_x) + (l_tilec->y0 - l_offset_y) * l_image_width;

                switch (l_size_comp) {
                        case 1:
                                {
                                        OPJ_CHAR * l_dest_ptr = (OPJ_CHAR*) p_data;
                                        if (l_img_comp->sgnd) {
                                                for (j=0;j<l_height;++j) {
                                                        for (k=0;k<l_width;++k) {
                                                                *(l_dest_ptr) = (OPJ_CHAR) (*l_src_ptr);
                                                                ++l_dest_ptr;
                                                                ++l_src_ptr;
                                                        }
                                                        l_src_ptr += l_stride;
                                                }
                                        }
                                        else {
                                                for (j=0;j<l_height;++j) {
                                                        for (k=0;k<l_width;++k) {
                                                                *(l_dest_ptr) = (*l_src_ptr)&0xff;
                                                                ++l_dest_ptr;
                                                                ++l_src_ptr;
                                                        }
                                                        l_src_ptr += l_stride;
                                                }
                                        }

                                        p_data = (OPJ_BYTE*) l_dest_ptr;
                                }
                                break;
                        case 2:
                                {
                                        OPJ_INT16 * l_dest_ptr = (OPJ_INT16 *) p_data;
                                        if (l_img_comp->sgnd) {
                                                for (j=0;j<l_height;++j) {
                                                        for (k=0;k<l_width;++k) {
                                                                *(l_dest_ptr++) = (OPJ_INT16) (*(l_src_ptr++));
                                                        }
                                                        l_src_ptr += l_stride;
                                                }
                                        }
                                        else {
                                                for (j=0;j<l_height;++j) {
                                                        for (k=0;k<l_width;++k) {
                                                                *(l_dest_ptr++) = (*(l_src_ptr++))&0xffff;
                                                        }
                                                        l_src_ptr += l_stride;
                                                }
                                        }

                                        p_data = (OPJ_BYTE*) l_dest_ptr;
                                }
                                break;
                        case 4:
                                {
                                        OPJ_INT32 * l_dest_ptr = (OPJ_INT32 *) p_data;
                                        for (j=0;j<l_height;++j) {
                                                for (k=0;k<l_width;++k) {
                                                        *(l_dest_ptr++) = *(l_src_ptr++);
                                                }
                                                l_src_ptr += l_stride;
                                        }

                                        p_data = (OPJ_BYTE*) l_dest_ptr;
                                }
                                break;
                }

                ++l_img_comp;
                ++l_tilec;
        }
}

OPJ_BOOL opj_j2k_post_write_tile ( opj_j2k_t * p_j2k,
                                                                OPJ_BYTE * p_data,
                                                                OPJ_UINT32 p_data_size,
                                                                opj_stream_private_t *p_stream,
                                                                opj_event_mgr_t * p_manager )
{
        opj_tcd_t * l_tcd = 00;
        OPJ_UINT32 l_nb_bytes_written;
        OPJ_BYTE * l_current_data = 00;
        OPJ_UINT32 l_tile_size = 0;
        OPJ_UINT32 l_available_data;


        ((p_j2k->m_specific_param.m_encoder.m_encoded_tile_data) ? (void) (0) : __assert_fail ("p_j2k->m_specific_param.m_encoder.m_encoded_tile_data", "./openjpeg/libopenjpeg/j2k.c", 9363, __PRETTY_FUNCTION__));

        l_tcd = p_j2k->m_tcd;

        l_tile_size = p_j2k->m_specific_param.m_encoder.m_encoded_tile_size;
        l_available_data = l_tile_size;
        l_current_data = p_j2k->m_specific_param.m_encoder.m_encoded_tile_data;

        if (! opj_tcd_copy_tile_data(l_tcd,p_data,p_data_size)) {
                opj_event_msg(p_manager, 1, "Size mismatch between tile data and sent data." );
                return 0;
        }

        l_nb_bytes_written = 0;
        if (! opj_j2k_write_first_tile_part(p_j2k,l_current_data,&l_nb_bytes_written,l_available_data,p_stream,p_manager)) {
                return 0;
        }
        l_current_data += l_nb_bytes_written;
        l_available_data -= l_nb_bytes_written;

        l_nb_bytes_written = 0;
        if (! opj_j2k_write_all_tile_parts(p_j2k,l_current_data,&l_nb_bytes_written,l_available_data,p_stream,p_manager)) {
                return 0;
        }

        l_available_data -= l_nb_bytes_written;
        l_nb_bytes_written = l_tile_size - l_available_data;

        if ( opj_stream_write_data( p_stream,
                                                                p_j2k->m_specific_param.m_encoder.m_encoded_tile_data,
                                                                l_nb_bytes_written,p_manager) != l_nb_bytes_written) {
                return 0;
        }

        ++p_j2k->m_current_tile_number;

        return 1;
}

void opj_j2k_setup_end_compress (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9405, __PRETTY_FUNCTION__));


        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_eoc );

        if (p_j2k->m_cp.m_specific_param.m_enc.m_cinema) {
                opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_updated_tlm);
        }

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_epc );
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_end_encoding );
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_destroy_header_memory);
}

void opj_j2k_setup_encoding_validation (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9422, __PRETTY_FUNCTION__));

        opj_procedure_list_add_procedure(p_j2k->m_validation_list, (opj_procedure)opj_j2k_build_encoder);
        opj_procedure_list_add_procedure(p_j2k->m_validation_list, (opj_procedure)opj_j2k_encoding_validation);


        opj_procedure_list_add_procedure(p_j2k->m_validation_list, (opj_procedure)opj_j2k_mct_validation);
}

void opj_j2k_setup_header_writing (opj_j2k_t *p_j2k)
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9434, __PRETTY_FUNCTION__));

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_init_info );
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_soc );
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_siz );
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_cod );
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_qcd );

        if (p_j2k->m_cp.m_specific_param.m_enc.m_cinema) {
                opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_image_components );
                opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_tlm );

                if (p_j2k->m_cp.m_specific_param.m_enc.m_cinema == OPJ_CINEMA4K_24) {
                        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_poc );
                }
        }

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_regions);

        if (p_j2k->m_cp.comment != 00) {
                opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_com);
        }


        if (p_j2k->m_cp.rsiz & OPJ_MCT) {
                opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_write_mct_data_group );
        }


        if (p_j2k->cstr_index) {
                opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_get_end_header );
        }

        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_create_tcd);
        opj_procedure_list_add_procedure(p_j2k->m_procedure_list,(opj_procedure)opj_j2k_update_rates);
}

OPJ_BOOL opj_j2k_write_first_tile_part (opj_j2k_t *p_j2k,
                                                                        OPJ_BYTE * p_data,
                                                                        OPJ_UINT32 * p_data_written,
                                                                        OPJ_UINT32 p_total_data_size,
                                                                        opj_stream_private_t *p_stream,
                                                                        struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 compno;
        OPJ_UINT32 l_nb_bytes_written = 0;
        OPJ_UINT32 l_current_nb_bytes_written;
        OPJ_BYTE * l_begin_data = 00;

        opj_tcd_t * l_tcd = 00;
        opj_cp_t * l_cp = 00;

        l_tcd = p_j2k->m_tcd;
        l_cp = &(p_j2k->m_cp);

        l_tcd->cur_pino = 0;


        p_j2k->m_specific_param.m_encoder.m_current_poc_tile_part_number = 0;




        l_current_nb_bytes_written = 0;
        l_begin_data = p_data;
        if (! opj_j2k_write_sot(p_j2k,p_data,&l_current_nb_bytes_written,p_stream,p_manager))
        {
                return 0;
        }

        l_nb_bytes_written += l_current_nb_bytes_written;
        p_data += l_current_nb_bytes_written;
        p_total_data_size -= l_current_nb_bytes_written;

        if (l_cp->m_specific_param.m_enc.m_cinema == 0) {
                for (compno = 1; compno < p_j2k->m_private_image->numcomps; compno++) {
                        l_current_nb_bytes_written = 0;
                        opj_j2k_write_coc_in_memory(p_j2k,compno,p_data,&l_current_nb_bytes_written,p_manager);
                        l_nb_bytes_written += l_current_nb_bytes_written;
                        p_data += l_current_nb_bytes_written;
                        p_total_data_size -= l_current_nb_bytes_written;

                        l_current_nb_bytes_written = 0;
                        opj_j2k_write_qcc_in_memory(p_j2k,compno,p_data,&l_current_nb_bytes_written,p_manager);
                        l_nb_bytes_written += l_current_nb_bytes_written;
                        p_data += l_current_nb_bytes_written;
                        p_total_data_size -= l_current_nb_bytes_written;
                }

                if (l_cp->tcps[p_j2k->m_current_tile_number].numpocs) {
                        l_current_nb_bytes_written = 0;
                        opj_j2k_write_poc_in_memory(p_j2k,p_data,&l_current_nb_bytes_written,p_manager);
                        l_nb_bytes_written += l_current_nb_bytes_written;
                        p_data += l_current_nb_bytes_written;
                        p_total_data_size -= l_current_nb_bytes_written;
                }
        }

        l_current_nb_bytes_written = 0;
        if (! opj_j2k_write_sod(p_j2k,l_tcd,p_data,&l_current_nb_bytes_written,p_total_data_size,p_stream,p_manager)) {
                return 0;
        }

        l_nb_bytes_written += l_current_nb_bytes_written;
        * p_data_written = l_nb_bytes_written;


        opj_write_bytes_LE(l_begin_data + 6,l_nb_bytes_written,4);

        if (l_cp->m_specific_param.m_enc.m_cinema){
                opj_j2k_update_tlm(p_j2k,l_nb_bytes_written);
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_all_tile_parts( opj_j2k_t *p_j2k,
                                                                        OPJ_BYTE * p_data,
                                                                        OPJ_UINT32 * p_data_written,
                                                                        OPJ_UINT32 p_total_data_size,
                                                                        opj_stream_private_t *p_stream,
                                                                        struct opj_event_mgr * p_manager
                                                                )
{
        OPJ_UINT32 tilepartno=0;
        OPJ_UINT32 l_nb_bytes_written = 0;
        OPJ_UINT32 l_current_nb_bytes_written;
        OPJ_UINT32 l_part_tile_size;
        OPJ_UINT32 tot_num_tp;
        OPJ_UINT32 pino;

        OPJ_BYTE * l_begin_data;
        opj_tcp_t *l_tcp = 00;
        opj_tcd_t * l_tcd = 00;
        opj_cp_t * l_cp = 00;

        l_tcd = p_j2k->m_tcd;
        l_cp = &(p_j2k->m_cp);
        l_tcp = l_cp->tcps + p_j2k->m_current_tile_number;


        tot_num_tp = opj_j2k_get_num_tp(l_cp,0,p_j2k->m_current_tile_number);

        for (tilepartno = 1; tilepartno < tot_num_tp ; ++tilepartno) {
                p_j2k->m_specific_param.m_encoder.m_current_poc_tile_part_number = tilepartno;
                l_current_nb_bytes_written = 0;
                l_part_tile_size = 0;
                l_begin_data = p_data;

                if (! opj_j2k_write_sot(p_j2k,p_data,&l_current_nb_bytes_written,p_stream,p_manager)) {
                        return 0;
                }

                l_nb_bytes_written += l_current_nb_bytes_written;
                p_data += l_current_nb_bytes_written;
                p_total_data_size -= l_current_nb_bytes_written;
                l_part_tile_size += l_nb_bytes_written;

                l_current_nb_bytes_written = 0;
                if (! opj_j2k_write_sod(p_j2k,l_tcd,p_data,&l_current_nb_bytes_written,p_total_data_size,p_stream,p_manager)) {
                        return 0;
                }

                p_data += l_current_nb_bytes_written;
                l_nb_bytes_written += l_current_nb_bytes_written;
                p_total_data_size -= l_current_nb_bytes_written;
                l_part_tile_size += l_nb_bytes_written;


                opj_write_bytes_LE(l_begin_data + 6,l_part_tile_size,4);

                if (l_cp->m_specific_param.m_enc.m_cinema) {
                        opj_j2k_update_tlm(p_j2k,l_part_tile_size);
                }

                ++p_j2k->m_specific_param.m_encoder.m_current_tile_part_number;
        }

        for (pino = 1; pino <= l_tcp->numpocs; ++pino) {
                l_tcd->cur_pino = pino;


                tot_num_tp = opj_j2k_get_num_tp(l_cp,pino,p_j2k->m_current_tile_number);
                for (tilepartno = 0; tilepartno < tot_num_tp ; ++tilepartno) {
                        p_j2k->m_specific_param.m_encoder.m_current_poc_tile_part_number = tilepartno;
                        l_current_nb_bytes_written = 0;
                        l_part_tile_size = 0;
                        l_begin_data = p_data;

                        if (! opj_j2k_write_sot(p_j2k,p_data,&l_current_nb_bytes_written,p_stream,p_manager)) {
                                return 0;
                        }

                        l_nb_bytes_written += l_current_nb_bytes_written;
                        p_data += l_current_nb_bytes_written;
                        p_total_data_size -= l_current_nb_bytes_written;
                        l_part_tile_size += l_current_nb_bytes_written;

                        l_current_nb_bytes_written = 0;

                        if (! opj_j2k_write_sod(p_j2k,l_tcd,p_data,&l_current_nb_bytes_written,p_total_data_size,p_stream,p_manager)) {
                                return 0;
                        }

                        l_nb_bytes_written += l_current_nb_bytes_written;
                        p_data += l_current_nb_bytes_written;
                        p_total_data_size -= l_current_nb_bytes_written;
                        l_part_tile_size += l_current_nb_bytes_written;


                        opj_write_bytes_LE(l_begin_data + 6,l_part_tile_size,4);

                        if (l_cp->m_specific_param.m_enc.m_cinema) {
                                opj_j2k_update_tlm(p_j2k,l_part_tile_size);
                        }

                        ++p_j2k->m_specific_param.m_encoder.m_current_tile_part_number;
                }
        }

        *p_data_written = l_nb_bytes_written;

        return 1;
}

OPJ_BOOL opj_j2k_write_updated_tlm( opj_j2k_t *p_j2k,
                                                                    struct opj_stream_private *p_stream,
                                                                    struct opj_event_mgr * p_manager )
{
        OPJ_UINT32 l_tlm_size;
        OPJ_OFF_T l_tlm_position, l_current_position;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9667, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9668, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9669, __PRETTY_FUNCTION__));

        l_tlm_size = 5 * p_j2k->m_specific_param.m_encoder.m_total_tile_parts;
        l_tlm_position = 6 + p_j2k->m_specific_param.m_encoder.m_tlm_start;
        l_current_position = opj_stream_tell(p_stream);

        if (! opj_stream_seek(p_stream,l_tlm_position,p_manager)) {
                return 0;
        }

        if (opj_stream_write_data(p_stream,p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer,l_tlm_size,p_manager) != l_tlm_size) {
                return 0;
        }

        if (! opj_stream_seek(p_stream,l_current_position,p_manager)) {
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_end_encoding( opj_j2k_t *p_j2k,
                                                        struct opj_stream_private *p_stream,
                                                        struct opj_event_mgr * p_manager )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9695, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9696, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9697, __PRETTY_FUNCTION__));

        opj_tcd_destroy(p_j2k->m_tcd);
        p_j2k->m_tcd = 00;

        if (p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer) {
                free(p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer);
                p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_buffer = 0;
                p_j2k->m_specific_param.m_encoder.m_tlm_sot_offsets_current = 0;
        }

        if (p_j2k->m_specific_param.m_encoder.m_encoded_tile_data) {
                free(p_j2k->m_specific_param.m_encoder.m_encoded_tile_data);
                p_j2k->m_specific_param.m_encoder.m_encoded_tile_data = 0;
        }

        p_j2k->m_specific_param.m_encoder.m_encoded_tile_size = 0;

        return 1;
}




static OPJ_BOOL opj_j2k_destroy_header_memory ( opj_j2k_t * p_j2k,
                                                opj_stream_private_t *p_stream,
                                                opj_event_mgr_t * p_manager
                                                )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9727, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9728, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9729, __PRETTY_FUNCTION__));

        if (p_j2k->m_specific_param.m_encoder.m_header_tile_data) {
                free(p_j2k->m_specific_param.m_encoder.m_header_tile_data);
                p_j2k->m_specific_param.m_encoder.m_header_tile_data = 0;
        }

        p_j2k->m_specific_param.m_encoder.m_header_tile_data_size = 0;

        return 1;
}

OPJ_BOOL opj_j2k_init_info( opj_j2k_t *p_j2k,
                                                struct opj_stream_private *p_stream,
                                                struct opj_event_mgr * p_manager )
{
        opj_codestream_info_t * l_cstr_info = 00;


        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9748, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9749, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9750, __PRETTY_FUNCTION__));
  (void)l_cstr_info;
# 9792 "./openjpeg/libopenjpeg/j2k.c"
        return opj_j2k_calculate_tp(p_j2k,&(p_j2k->m_cp),&p_j2k->m_specific_param.m_encoder.m_total_tile_parts,p_j2k->m_private_image,p_manager);
}
# 9802 "./openjpeg/libopenjpeg/j2k.c"
static OPJ_BOOL opj_j2k_create_tcd( opj_j2k_t *p_j2k,
                                                                    opj_stream_private_t *p_stream,
                                                                    opj_event_mgr_t * p_manager
                                    )
{

        ((p_j2k != 00) ? (void) (0) : __assert_fail ("p_j2k != 00", "./openjpeg/libopenjpeg/j2k.c", 9808, __PRETTY_FUNCTION__));
        ((p_manager != 00) ? (void) (0) : __assert_fail ("p_manager != 00", "./openjpeg/libopenjpeg/j2k.c", 9809, __PRETTY_FUNCTION__));
        ((p_stream != 00) ? (void) (0) : __assert_fail ("p_stream != 00", "./openjpeg/libopenjpeg/j2k.c", 9810, __PRETTY_FUNCTION__));

        p_j2k->m_tcd = opj_tcd_create(0);

        if (! p_j2k->m_tcd) {
                opj_event_msg(p_manager, 1, "Not enough memory to create Tile Coder\n");
                return 0;
        }

        if (!opj_tcd_init(p_j2k->m_tcd,p_j2k->m_private_image,&p_j2k->m_cp)) {
                opj_tcd_destroy(p_j2k->m_tcd);
                p_j2k->m_tcd = 00;
                return 0;
        }

        return 1;
}

OPJ_BOOL opj_j2k_write_tile (opj_j2k_t * p_j2k,
                                                 OPJ_UINT32 p_tile_index,
                                                 OPJ_BYTE * p_data,
                                                 OPJ_UINT32 p_data_size,
                                                 opj_stream_private_t *p_stream,
                                                 opj_event_mgr_t * p_manager )
{
        if (! opj_j2k_pre_write_tile(p_j2k,p_tile_index,p_stream,p_manager)) {
                opj_event_msg(p_manager, 1, "Error while opj_j2k_pre_write_tile with tile index = %d\n", p_tile_index);
                return 0;
        }
        else {
                if (! opj_j2k_post_write_tile(p_j2k,p_data,p_data_size,p_stream,p_manager)) {
                        opj_event_msg(p_manager, 1, "Error while opj_j2k_post_write_tile with tile index = %d\n", p_tile_index);
                        return 0;
                }
        }

        return 1;
}
