# 1 "./jbig2dec/jbig2_generic.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./jbig2dec/jbig2_generic.c" 2
# 28 "./jbig2dec/jbig2_generic.c"
# 1 "./jbig2dec/os_types.h" 1
# 65 "./jbig2dec/os_types.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 1 3
# 63 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
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
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 22 "/usr/include/bits/wchar.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/wchar.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4








typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







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
# 66 "./jbig2dec/os_types.h" 2
# 29 "./jbig2dec/jbig2_generic.c" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long unsigned int size_t;
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
# 31 "./jbig2dec/jbig2_generic.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 32 "/usr/include/string.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
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
# 32 "./jbig2dec/jbig2_generic.c" 2





# 1 "./jbig2dec/jbig2.h" 1
# 37 "./jbig2dec/jbig2.h"
# 1 "./jbig2dec/../base/memento.h" 1
# 140 "./jbig2dec/../base/memento.h"
# 1 "/usr/include/memory.h" 1 3 4
# 141 "./jbig2dec/../base/memento.h" 2
# 168 "./jbig2dec/../base/memento.h"
int Memento_checkBlock(void *);
int Memento_checkAllMemory(void);
int Memento_check(void);

int Memento_setParanoia(int);
int Memento_paranoidAt(int);
int Memento_breakAt(int);
void Memento_breakOnFree(void *a);
void Memento_breakOnRealloc(void *a);
int Memento_getBlockNum(void *);
int Memento_find(void *a);
void Memento_breakpoint(void);
int Memento_failAt(int);
int Memento_failThisEvent(void);
void Memento_listBlocks(void);
void Memento_listNewBlocks(void);
size_t Memento_setMax(size_t);
void Memento_stats(void);
void *Memento_label(void *, const char *);

void *Memento_malloc(size_t s);
void *Memento_realloc(void *, size_t s);
void Memento_free(void *);
void *Memento_calloc(size_t, size_t);
# 38 "./jbig2dec/jbig2.h" 2






typedef enum {
  JBIG2_SEVERITY_DEBUG,
  JBIG2_SEVERITY_INFO,
  JBIG2_SEVERITY_WARNING,
  JBIG2_SEVERITY_FATAL
} Jbig2Severity;

typedef enum {
  JBIG2_OPTIONS_EMBEDDED = 1
} Jbig2Options;


typedef struct _Jbig2Allocator Jbig2Allocator;
typedef struct _Jbig2Ctx Jbig2Ctx;
typedef struct _Jbig2GlobalCtx Jbig2GlobalCtx;
typedef struct _Jbig2Segment Jbig2Segment;
typedef struct _Jbig2Image Jbig2Image;


typedef struct _Jbig2Page Jbig2Page;
typedef struct _Jbig2SymbolDictionary Jbig2SymbolDictionary;
# 73 "./jbig2dec/jbig2.h"
struct _Jbig2Image {
        int width, height, stride;
        uint8_t *data;
 int refcount;
};

Jbig2Image* jbig2_image_new(Jbig2Ctx *ctx, int width, int height);
Jbig2Image* jbig2_image_clone(Jbig2Ctx *ctx, Jbig2Image *image);
void jbig2_image_release(Jbig2Ctx *ctx, Jbig2Image *image);
void jbig2_image_free(Jbig2Ctx *ctx, Jbig2Image *image);
void jbig2_image_clear(Jbig2Ctx *ctx, Jbig2Image *image, int value);
Jbig2Image *jbig2_image_resize(Jbig2Ctx *ctx, Jbig2Image *image,
                                int width, int height);






typedef int (*Jbig2ErrorCallback) (void *data,
      const char *msg, Jbig2Severity severity,
      int32_t seg_idx);







struct _Jbig2Allocator {
  void *(*alloc) (Jbig2Allocator *allocator, size_t size);
  void (*free) (Jbig2Allocator *allocator, void *p);
  void *(*realloc) (Jbig2Allocator *allocator, void *p, size_t size);
};


Jbig2Ctx *jbig2_ctx_new (Jbig2Allocator *allocator,
    Jbig2Options options,
    Jbig2GlobalCtx *global_ctx,
    Jbig2ErrorCallback error_callback,
    void *error_callback_data);
void jbig2_ctx_free (Jbig2Ctx *ctx);


Jbig2GlobalCtx *jbig2_make_global_ctx (Jbig2Ctx *ctx);
void jbig2_global_ctx_free (Jbig2GlobalCtx *global_ctx);


int jbig2_data_in (Jbig2Ctx *ctx, const unsigned char *data, size_t size);


Jbig2Image *jbig2_page_out (Jbig2Ctx *ctx);

int jbig2_release_page (Jbig2Ctx *ctx, Jbig2Image *image);

int jbig2_complete_page (Jbig2Ctx *ctx);




struct _Jbig2Segment {
  uint32_t number;
  uint8_t flags;
  uint32_t page_association;
  size_t data_length;
  int referred_to_segment_count;
  uint32_t *referred_to_segments;
  void *result;
};

Jbig2Segment *jbig2_parse_segment_header (Jbig2Ctx *ctx, uint8_t *buf, size_t buf_size,
       size_t *p_header_size);
int jbig2_parse_segment (Jbig2Ctx *ctx, Jbig2Segment *segment,
    const uint8_t *segment_data);
void jbig2_free_segment (Jbig2Ctx *ctx, Jbig2Segment *segment);

Jbig2Segment *jbig2_find_segment(Jbig2Ctx *ctx, uint32_t number);
# 38 "./jbig2dec/jbig2_generic.c" 2
# 1 "./jbig2dec/jbig2_priv.h" 1
# 23 "./jbig2dec/jbig2_priv.h"
typedef uint8_t byte;
# 43 "./jbig2dec/jbig2_priv.h"
typedef enum {
  JBIG2_FILE_HEADER,
  JBIG2_FILE_SEQUENTIAL_HEADER,
  JBIG2_FILE_SEQUENTIAL_BODY,
  JBIG2_FILE_RANDOM_HEADERS,
  JBIG2_FILE_RANDOM_BODIES,
  JBIG2_FILE_EOF
} Jbig2FileState;

struct _Jbig2Ctx {
  Jbig2Allocator *allocator;
  Jbig2Options options;
  const Jbig2Ctx *global_ctx;
  Jbig2ErrorCallback error_callback;
  void *error_callback_data;

  byte *buf;
  size_t buf_size;
  unsigned int buf_rd_ix;
  unsigned int buf_wr_ix;

  Jbig2FileState state;

  uint8_t file_header_flags;
  uint32_t n_pages;

  int n_segments_max;
  Jbig2Segment **segments;
  int n_segments;
  int segment_index;



  int current_page;
  int max_page_index;
  Jbig2Page *pages;
};

uint32_t
jbig2_get_uint32(const byte *bptr);

int32_t
jbig2_get_int32 (const byte *buf);

uint16_t
jbig2_get_uint16(const byte *bptr);

int16_t
jbig2_get_int16 (const byte *buf);


void *
jbig2_alloc (Jbig2Allocator *allocator, size_t size, size_t num);

void
jbig2_free (Jbig2Allocator *allocator, void *p);

void *
jbig2_realloc (Jbig2Allocator *allocator, void *p, size_t size, size_t num);





int
jbig2_error (Jbig2Ctx *ctx, Jbig2Severity severity, int32_t seg_idx,
      const char *fmt, ...);






typedef enum {
    JBIG2_PAGE_FREE,
    JBIG2_PAGE_NEW,
    JBIG2_PAGE_COMPLETE,
    JBIG2_PAGE_RETURNED,
    JBIG2_PAGE_RELEASED
} Jbig2PageState;

struct _Jbig2Page {
    Jbig2PageState state;
    uint32_t number;
    uint32_t height, width;
    uint32_t x_resolution,
             y_resolution;
    uint16_t stripe_size;
    int striped;
    int end_row;
    uint8_t flags;
    Jbig2Image *image;
};

int jbig2_page_info (Jbig2Ctx *ctx, Jbig2Segment *segment, const uint8_t *segment_data);
int jbig2_end_of_stripe(Jbig2Ctx *ctx, Jbig2Segment *segment, const uint8_t *segment_data);
int jbig2_end_of_page(Jbig2Ctx *ctx, Jbig2Segment *segment, const uint8_t *segment_data);
int jbig2_extension_segment(Jbig2Ctx *ctx, Jbig2Segment *segment, const uint8_t *segment_data);

typedef enum {
    JBIG2_COMPOSE_OR = 0,
    JBIG2_COMPOSE_AND = 1,
    JBIG2_COMPOSE_XOR = 2,
    JBIG2_COMPOSE_XNOR = 3,
    JBIG2_COMPOSE_REPLACE = 4
} Jbig2ComposeOp;

int jbig2_image_compose(Jbig2Ctx *ctx, Jbig2Image *dst, Jbig2Image *src, int x, int y, Jbig2ComposeOp op);
int jbig2_page_add_result(Jbig2Ctx *ctx, Jbig2Page *page, Jbig2Image *src, int x, int y, Jbig2ComposeOp op);



typedef struct {
  int32_t width;
  int32_t height;
  int32_t x;
  int32_t y;
  Jbig2ComposeOp op;
  uint8_t flags;
} Jbig2RegionSegmentInfo;

void jbig2_get_region_segment_info(Jbig2RegionSegmentInfo *info, const uint8_t *segment_data);
int jbig2_text_region(Jbig2Ctx *ctx, Jbig2Segment *segment, const uint8_t *segment_data);


int jbig2_immediate_generic_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
          const uint8_t *segment_data);
int jbig2_refinement_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
                               const byte *segment_data);

int jbig2_pattern_dictionary(Jbig2Ctx *ctx, Jbig2Segment *segment,
                               const byte *segment_data);
int jbig2_halftone_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
                               const byte *segment_data);







typedef struct _Jbig2WordStream Jbig2WordStream;

struct _Jbig2WordStream {
  int (*get_next_word) (Jbig2WordStream *self, int offset, uint32_t *word);
};

Jbig2WordStream *
jbig2_word_stream_buf_new(Jbig2Ctx *ctx, const byte *data, size_t size);

void
jbig2_word_stream_buf_free(Jbig2Ctx *ctx, Jbig2WordStream *ws);
# 39 "./jbig2dec/jbig2_generic.c" 2
# 1 "./jbig2dec/jbig2_image.h" 1
# 25 "./jbig2dec/jbig2_image.h"
int jbig2_image_get_pixel(Jbig2Image *image, int x, int y);
int jbig2_image_set_pixel(Jbig2Image *image, int x, int y, int value);





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
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 102 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







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
# 32 "./jbig2dec/jbig2_image.h" 2

int jbig2_image_write_pbm_file(Jbig2Image *image, char *filename);
int jbig2_image_write_pbm(Jbig2Image *image, FILE *out);
Jbig2Image *jbig2_image_read_pbm_file(Jbig2Ctx *ctx, char *filename);
Jbig2Image *jbig2_image_read_pbm(Jbig2Ctx *ctx, FILE *in);
# 40 "./jbig2dec/jbig2_generic.c" 2
# 1 "./jbig2dec/jbig2_arith.h" 1
# 21 "./jbig2dec/jbig2_arith.h"
typedef struct _Jbig2ArithState Jbig2ArithState;




typedef unsigned char Jbig2ArithCx;


Jbig2ArithState *
jbig2_arith_new (Jbig2Ctx *ctx, Jbig2WordStream *ws);


int
jbig2_arith_decode (Jbig2ArithState *as, Jbig2ArithCx *pcx);


int
jbig2_arith_get_offset(Jbig2ArithState *as);
# 41 "./jbig2dec/jbig2_generic.c" 2
# 1 "./jbig2dec/jbig2_generic.h" 1
# 26 "./jbig2dec/jbig2_generic.h"
typedef struct {
  int MMR;


  int GBTEMPLATE;
  int TPGDON;
  int USESKIP;

  int8_t gbat[8];
} Jbig2GenericRegionParams;


int
jbig2_generic_stats_size(Jbig2Ctx *ctx, int template);

int
jbig2_decode_generic_region(Jbig2Ctx *ctx,
       Jbig2Segment *segment,
       const Jbig2GenericRegionParams *params,
       Jbig2ArithState *as,
       Jbig2Image *image,
       Jbig2ArithCx *GB_stats);



typedef struct {


  int GRTEMPLATE;
  Jbig2Image *reference;
  int32_t DX, DY;
  int TPGRON;
  int8_t grat[4];
} Jbig2RefinementRegionParams;

int
jbig2_decode_refinement_region(Jbig2Ctx *ctx,
                            Jbig2Segment *segment,
                            const Jbig2RefinementRegionParams *params,
                            Jbig2ArithState *as,
                            Jbig2Image *image,
                            Jbig2ArithCx *GB_stats);
# 42 "./jbig2dec/jbig2_generic.c" 2
# 1 "./jbig2dec/jbig2_mmr.h" 1
# 21 "./jbig2dec/jbig2_mmr.h"
int
jbig2_decode_generic_mmr(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2GenericRegionParams *params,
    const byte *data, size_t size,
    Jbig2Image *image);

int
jbig2_decode_halftone_mmr(Jbig2Ctx *ctx,
 const Jbig2GenericRegionParams *params,
 const byte *data, size_t size,
 Jbig2Image *image, size_t* consumed_bytes);
# 43 "./jbig2dec/jbig2_generic.c" 2


int
jbig2_generic_stats_size(Jbig2Ctx *ctx, int template)
{
  int stats_size = template == 0 ? 1 << 16 :
        template == 1 ? 1 << 1 << 13 : 1 << 10;
  return stats_size;
}


static int
jbig2_decode_generic_template0(Jbig2Ctx *ctx,
          Jbig2Segment *segment,
          const Jbig2GenericRegionParams *params,
          Jbig2ArithState *as,
          Jbig2Image *image,
          Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  const int rowstride = image->stride;
  int x, y;
  byte *gbreg_line = (byte *)image->data;







  if (GBW <= 0)
    return 0;

  for (y = 0; y < GBH; y++)
    {
      uint32_t CONTEXT;
      uint32_t line_m1;
      uint32_t line_m2;
      int padded_width = (GBW + 7) & -8;

      line_m1 = (y >= 1) ? gbreg_line[-rowstride] : 0;
      line_m2 = (y >= 2) ? gbreg_line[-(rowstride << 1)] << 6 : 0;
      CONTEXT = (line_m1 & 0x7f0) | (line_m2 & 0xf800);


      for (x = 0; x < padded_width; x += 8)
 {
   byte result = 0;
   int x_minor;
   int minor_width = GBW - x > 8 ? 8 : GBW - x;

   if (y >= 1)
     line_m1 = (line_m1 << 8) |
       (x + 8 < GBW ? gbreg_line[-rowstride + (x >> 3) + 1] : 0);

   if (y >= 2)
     line_m2 = (line_m2 << 8) |
       (x + 8 < GBW ? gbreg_line[-(rowstride << 1) + (x >> 3) + 1] << 6: 0);


   for (x_minor = 0; x_minor < minor_width; x_minor++)
     {
       int bit;

       bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
       if (bit < 0)
  return -1;
       result |= bit << (7 - x_minor);
       CONTEXT = ((CONTEXT & 0x7bf7) << 1) | bit |
  ((line_m1 >> (7 - x_minor)) & 0x10) |
  ((line_m2 >> (7 - x_minor)) & 0x800);
     }
   gbreg_line[x >> 3] = result;
 }



      gbreg_line += rowstride;
    }

  return 0;
}

static int
jbig2_decode_generic_template0_unopt(Jbig2Ctx *ctx,
                               Jbig2Segment *segment,
                               const Jbig2GenericRegionParams *params,
                               Jbig2ArithState *as,
                               Jbig2Image *image,
                               Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  uint32_t CONTEXT;
  int x,y;
  int bit;



  for (y = 0; y < GBH; y++) {
    for (x = 0; x < GBW; x++) {
      CONTEXT = 0;
      CONTEXT |= jbig2_image_get_pixel(image, x - 1, y) << 0;
      CONTEXT |= jbig2_image_get_pixel(image, x - 2, y) << 1;
      CONTEXT |= jbig2_image_get_pixel(image, x - 3, y) << 2;
      CONTEXT |= jbig2_image_get_pixel(image, x - 4, y) << 3;
      CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[0],
 y + params->gbat[1]) << 4;
      CONTEXT |= jbig2_image_get_pixel(image, x + 2, y - 1) << 5;
      CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 6;
      CONTEXT |= jbig2_image_get_pixel(image, x + 0, y - 1) << 7;
      CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 8;
      CONTEXT |= jbig2_image_get_pixel(image, x - 2, y - 1) << 9;
      CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[2],
 y + params->gbat[3]) << 10;
      CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[4],
 y + params->gbat[5]) << 11;
      CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 2) << 12;
      CONTEXT |= jbig2_image_get_pixel(image, x + 0, y - 2) << 13;
      CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 2) << 14;
      CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[6],
 y + params->gbat[7]) << 15;
      bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
      if (bit < 0)
 return -1;
      jbig2_image_set_pixel(image, x, y, bit);
    }
  }
  return 0;
}

static int
jbig2_decode_generic_template1(Jbig2Ctx *ctx,
          Jbig2Segment *segment,
          const Jbig2GenericRegionParams *params,
          Jbig2ArithState *as,
          Jbig2Image *image,
          Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  const int rowstride = image->stride;
  int x, y;
  byte *gbreg_line = (byte *)image->data;







  if (GBW <= 0)
    return 0;

  for (y = 0; y < GBH; y++)
    {
      uint32_t CONTEXT;
      uint32_t line_m1;
      uint32_t line_m2;
      int padded_width = (GBW + 7) & -8;

      line_m1 = (y >= 1) ? gbreg_line[-rowstride] : 0;
      line_m2 = (y >= 2) ? gbreg_line[-(rowstride << 1)] << 5 : 0;
      CONTEXT = ((line_m1 >> 1) & 0x1f8) | ((line_m2 >> 1) & 0x1e00);


      for (x = 0; x < padded_width; x += 8)
 {
   byte result = 0;
   int x_minor;
   int minor_width = GBW - x > 8 ? 8 : GBW - x;

   if (y >= 1)
     line_m1 = (line_m1 << 8) |
       (x + 8 < GBW ? gbreg_line[-rowstride + (x >> 3) + 1] : 0);

   if (y >= 2)
     line_m2 = (line_m2 << 8) |
       (x + 8 < GBW ? gbreg_line[-(rowstride << 1) + (x >> 3) + 1] << 5: 0);


   for (x_minor = 0; x_minor < minor_width; x_minor++)
     {
       int bit;

       bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
       if (bit < 0)
  return -1;
       result |= bit << (7 - x_minor);
       CONTEXT = ((CONTEXT & 0xefb) << 1) | bit |
  ((line_m1 >> (8 - x_minor)) & 0x8) |
  ((line_m2 >> (8 - x_minor)) & 0x200);
     }
   gbreg_line[x >> 3] = result;
 }



      gbreg_line += rowstride;
    }

  return 0;
}

static int
jbig2_decode_generic_template2(Jbig2Ctx *ctx,
          Jbig2Segment *segment,
          const Jbig2GenericRegionParams *params,
          Jbig2ArithState *as,
          Jbig2Image *image,
          Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  const int rowstride = image->stride;
  int x, y;
  byte *gbreg_line = (byte *)image->data;







  if (GBW <= 0)
    return 0;

  for (y = 0; y < GBH; y++)
    {
      uint32_t CONTEXT;
      uint32_t line_m1;
      uint32_t line_m2;
      int padded_width = (GBW + 7) & -8;

      line_m1 = (y >= 1) ? gbreg_line[-rowstride] : 0;
      line_m2 = (y >= 2) ? gbreg_line[-(rowstride << 1)] << 4 : 0;
      CONTEXT = ((line_m1 >> 3) & 0x7c) | ((line_m2 >> 3) & 0x380);


      for (x = 0; x < padded_width; x += 8)
 {
   byte result = 0;
   int x_minor;
   int minor_width = GBW - x > 8 ? 8 : GBW - x;

   if (y >= 1)
     line_m1 = (line_m1 << 8) |
       (x + 8 < GBW ? gbreg_line[-rowstride + (x >> 3) + 1] : 0);

   if (y >= 2)
     line_m2 = (line_m2 << 8) |
       (x + 8 < GBW ? gbreg_line[-(rowstride << 1) + (x >> 3) + 1] << 4: 0);


   for (x_minor = 0; x_minor < minor_width; x_minor++)
     {
       int bit;

       bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
       if (bit < 0)
  return -1;
       result |= bit << (7 - x_minor);
       CONTEXT = ((CONTEXT & 0x1bd) << 1) | bit |
  ((line_m1 >> (10 - x_minor)) & 0x4) |
  ((line_m2 >> (10 - x_minor)) & 0x80);
     }
   gbreg_line[x >> 3] = result;
 }



      gbreg_line += rowstride;
    }

  return 0;
}

static int
jbig2_decode_generic_template2a(Jbig2Ctx *ctx,
          Jbig2Segment *segment,
          const Jbig2GenericRegionParams *params,
          Jbig2ArithState *as,
          Jbig2Image *image,
          Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  const int rowstride = image->stride;
  int x, y;
  byte *gbreg_line = (byte *)image->data;







  if (GBW <= 0)
    return 0;

  for (y = 0; y < GBH; y++)
    {
      uint32_t CONTEXT;
      uint32_t line_m1;
      uint32_t line_m2;
      int padded_width = (GBW + 7) & -8;

      line_m1 = (y >= 1) ? gbreg_line[-rowstride] : 0;
      line_m2 = (y >= 2) ? gbreg_line[-(rowstride << 1)] << 4 : 0;
      CONTEXT = ((line_m1 >> 3) & 0x78) | ((line_m1 >> 2) & 0x4) | ((line_m2 >> 3) & 0x380);


      for (x = 0; x < padded_width; x += 8)
 {
   byte result = 0;
   int x_minor;
   int minor_width = GBW - x > 8 ? 8 : GBW - x;

   if (y >= 1)
     line_m1 = (line_m1 << 8) |
       (x + 8 < GBW ? gbreg_line[-rowstride + (x >> 3) + 1] : 0);

   if (y >= 2)
     line_m2 = (line_m2 << 8) |
       (x + 8 < GBW ? gbreg_line[-(rowstride << 1) + (x >> 3) + 1] << 4: 0);


   for (x_minor = 0; x_minor < minor_width; x_minor++)
     {
       int bit;

       bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
       if (bit < 0)
  return -1;
       result |= bit << (7 - x_minor);
       CONTEXT = ((CONTEXT & 0x1b9) << 1) | bit |
  ((line_m1 >> (10 - x_minor)) & 0x8) |
  ((line_m1 >> (9 - x_minor)) & 0x4) |
  ((line_m2 >> (10 - x_minor)) & 0x80);
     }
   gbreg_line[x >> 3] = result;
 }



      gbreg_line += rowstride;
    }

  return 0;
}

static int
jbig2_decode_generic_template3(Jbig2Ctx *ctx,
          Jbig2Segment *segment,
          const Jbig2GenericRegionParams *params,
          Jbig2ArithState *as,
          Jbig2Image *image,
          Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  const int rowstride = image->stride;
  byte *gbreg_line = (byte *)image->data;
  int x, y;







  if (GBW <= 0)
    return 0;

  for (y = 0; y < GBH; y++)
    {
      uint32_t CONTEXT;
      uint32_t line_m1;
      int padded_width = (GBW + 7) & -8;

      line_m1 = (y >= 1) ? gbreg_line[-rowstride] : 0;
      CONTEXT = (line_m1 >> 1) & 0x3f0;


      for (x = 0; x < padded_width; x += 8)
 {
   byte result = 0;
   int x_minor;
   int minor_width = GBW - x > 8 ? 8 : GBW - x;

   if (y >= 1)
     line_m1 = (line_m1 << 8) |
       (x + 8 < GBW ? gbreg_line[-rowstride + (x >> 3) + 1] : 0);


   for (x_minor = 0; x_minor < minor_width; x_minor++)
     {
       int bit;

       bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
       if (bit < 0)
  return -1;
       result |= bit << (7 - x_minor);
       CONTEXT = ((CONTEXT & 0x1f7) << 1) | bit |
  ((line_m1 >> (10 - x_minor)) & 0x010);
     }
   gbreg_line[x >> 3] = result;
 }



      gbreg_line += rowstride;
    }

  return 0;
}

static int
jbig2_decode_generic_template3_unopt(Jbig2Ctx *ctx,
                               Jbig2Segment *segment,
                               const Jbig2GenericRegionParams *params,
                               Jbig2ArithState *as,
                               Jbig2Image *image,
                               Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  uint32_t CONTEXT;
  int x,y;
  int bit;



  for (y = 0; y < GBH; y++) {
    for (x = 0; x < GBW; x++) {
      CONTEXT = 0;
      CONTEXT |= jbig2_image_get_pixel(image, x - 1, y) << 0;
      CONTEXT |= jbig2_image_get_pixel(image, x - 2, y) << 1;
      CONTEXT |= jbig2_image_get_pixel(image, x - 3, y) << 2;
      CONTEXT |= jbig2_image_get_pixel(image, x - 4, y) << 3;
      CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[0],
 y + params->gbat[1]) << 4;
      CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 5;
      CONTEXT |= jbig2_image_get_pixel(image, x + 0, y - 1) << 6;
      CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 7;
      CONTEXT |= jbig2_image_get_pixel(image, x - 2, y - 1) << 8;
      CONTEXT |= jbig2_image_get_pixel(image, x - 3, y - 1) << 9;
      bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
      if (bit < 0)
 return -1;
      jbig2_image_set_pixel(image, x, y, bit);
    }
  }
  return 0;
}

static void
copy_prev_row(Jbig2Image *image, int row)
{
  if (!row) {

    memset( image->data, 0, image->stride );
  } else {

    uint8_t *src = image->data + (row - 1) * image->stride;
    memcpy( src + image->stride, src, image->stride );
  }
}

static int
jbig2_decode_generic_template0_TPGDON(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2GenericRegionParams *params,
    Jbig2ArithState *as,
    Jbig2Image *image,
    Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  uint32_t CONTEXT;
  int x, y;
  int bit;
  int LTP = 0;

  for (y = 0; y < GBH; y++)
  {
    bit = jbig2_arith_decode(as, &GB_stats[0x9B25]);
    if (bit < 0)
      return -1;
    LTP ^= bit;
    if (!LTP) {
      for (x = 0; x < GBW; x++) {
        CONTEXT = jbig2_image_get_pixel(image, x - 1, y);
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y) << 1;
        CONTEXT |= jbig2_image_get_pixel(image, x - 3, y) << 2;
        CONTEXT |= jbig2_image_get_pixel(image, x - 4, y) << 3;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[0],
     y + params->gbat[1]) << 4;
        CONTEXT |= jbig2_image_get_pixel(image, x + 2, y - 1) << 5;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 6;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 1) << 7;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 8;
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y - 1) << 9;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[2],
     y + params->gbat[3]) << 10;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[4],
     y + params->gbat[5]) << 11;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 2) << 12;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 2) << 13;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 2) << 14;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[6],
     y + params->gbat[7]) << 15;
        bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
        if (bit < 0)
   return -1;
        jbig2_image_set_pixel(image, x, y, bit);
      }
    } else {
      copy_prev_row(image, y);
    }
  }

  return 0;
}

static int
jbig2_decode_generic_template1_TPGDON(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2GenericRegionParams *params,
    Jbig2ArithState *as,
    Jbig2Image *image,
    Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  uint32_t CONTEXT;
  int x, y;
  int bit;
  int LTP = 0;

  for (y = 0; y < GBH; y++) {
    bit = jbig2_arith_decode(as, &GB_stats[0x0795]);
    if (bit < 0)
      return -1;
    LTP ^= bit;
    if (!LTP) {
      for (x = 0; x < GBW; x++) {
        CONTEXT = jbig2_image_get_pixel(image, x - 1, y);
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y) << 1;
        CONTEXT |= jbig2_image_get_pixel(image, x - 3, y) << 2;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[0],
     y + params->gbat[1]) << 3;
        CONTEXT |= jbig2_image_get_pixel(image, x + 2, y - 1) << 4;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 5;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 1) << 6;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 7;
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y - 1) << 8;
        CONTEXT |= jbig2_image_get_pixel(image, x + 2, y - 2) << 9;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 2) << 10;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 2) << 11;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 2) << 12;
        bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
        if (bit < 0)
   return -1;
        jbig2_image_set_pixel(image, x, y, bit);
      }
    } else {
      copy_prev_row(image, y);
    }
  }

  return 0;
}

static int
jbig2_decode_generic_template2_TPGDON(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2GenericRegionParams *params,
    Jbig2ArithState *as,
    Jbig2Image *image,
    Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  uint32_t CONTEXT;
  int x, y;
  int bit;
  int LTP = 0;

  for (y = 0; y < GBH; y++) {
    bit = jbig2_arith_decode(as, &GB_stats[0xE5]);
    if (bit < 0)
      return -1;
    LTP ^= bit;
    if (!LTP) {
      for (x = 0; x < GBW; x++) {
        CONTEXT = jbig2_image_get_pixel(image, x - 1, y);
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y) << 1;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[0],
     y + params->gbat[1]) << 2;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 3;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 1) << 4;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 5;
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y - 1) << 6;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 2) << 7;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 2) << 8;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 2) << 9;
        bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
        if (bit < 0)
   return -1;
        jbig2_image_set_pixel(image, x, y, bit);
      }
    } else {
      copy_prev_row(image, y);
    }
  }

  return 0;
}

static int
jbig2_decode_generic_template3_TPGDON(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2GenericRegionParams *params,
    Jbig2ArithState *as,
    Jbig2Image *image,
    Jbig2ArithCx *GB_stats)
{
  const int GBW = image->width;
  const int GBH = image->height;
  uint32_t CONTEXT;
  int x, y;
  int bit;
  int LTP = 0;

  for (y = 0; y < GBH; y++) {
    bit = jbig2_arith_decode(as, &GB_stats[0x0195]);
    if (bit < 0)
      return -1;
    LTP ^= bit;
    if (!LTP) {
      for (x = 0; x < GBW; x++) {
        CONTEXT = jbig2_image_get_pixel(image, x - 1, y);
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y) << 1;
        CONTEXT |= jbig2_image_get_pixel(image, x - 3, y) << 2;
        CONTEXT |= jbig2_image_get_pixel(image, x - 4, y) << 3;
        CONTEXT |= jbig2_image_get_pixel(image, x + params->gbat[0],
     y + params->gbat[1]) << 4;
        CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 5;
        CONTEXT |= jbig2_image_get_pixel(image, x , y - 1) << 6;
        CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 7;
        CONTEXT |= jbig2_image_get_pixel(image, x - 2, y - 1) << 8;
        CONTEXT |= jbig2_image_get_pixel(image, x - 3, y - 1) << 9;
        bit = jbig2_arith_decode(as, &GB_stats[CONTEXT]);
        if (bit < 0)
   return -1;
        jbig2_image_set_pixel(image, x, y, bit);
      }
    } else {
      copy_prev_row(image, y);
    }
  }

  return 0;
}

static int
jbig2_decode_generic_region_TPGDON(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2GenericRegionParams *params,
    Jbig2ArithState *as,
    Jbig2Image *image,
    Jbig2ArithCx *GB_stats)
{
  switch (params->GBTEMPLATE) {
    case 0:
      return jbig2_decode_generic_template0_TPGDON(ctx, segment,
   params, as, image, GB_stats);
    case 1:
      return jbig2_decode_generic_template1_TPGDON(ctx, segment,
   params, as, image, GB_stats);
    case 2:
      return jbig2_decode_generic_template2_TPGDON(ctx, segment,
   params, as, image, GB_stats);
    case 3:
      return jbig2_decode_generic_template3_TPGDON(ctx, segment,
   params, as, image, GB_stats);
  }

  return -1;
}
# 753 "./jbig2dec/jbig2_generic.c"
int
jbig2_decode_generic_region(Jbig2Ctx *ctx,
       Jbig2Segment *segment,
       const Jbig2GenericRegionParams *params,
       Jbig2ArithState *as,
       Jbig2Image *image,
       Jbig2ArithCx *GB_stats)
{
  const int8_t *gbat = params->gbat;

  if (image->stride * image->height > (1 << 24) && segment->data_length < image->stride * image->height / 256) {
    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                       "region is far larger than data provided (%d << %d), aborting to prevent DOS",
                       segment->data_length, image->stride * image->height);
  }

  if (!params->MMR && params->TPGDON)
     return jbig2_decode_generic_region_TPGDON(ctx, segment, params,
  as, image, GB_stats);

  if (!params->MMR && params->GBTEMPLATE == 0) {
    if (gbat[0] == +3 && gbat[1] == -1 &&
        gbat[2] == -3 && gbat[3] == -1 &&
        gbat[4] == +2 && gbat[5] == -2 &&
        gbat[6] == -2 && gbat[7] == -2)
      return jbig2_decode_generic_template0(ctx, segment, params,
                                          as, image, GB_stats);
    else
      return jbig2_decode_generic_template0_unopt(ctx, segment, params,
                                          as, image, GB_stats);
  } else if (!params->MMR && params->GBTEMPLATE == 1)
    return jbig2_decode_generic_template1(ctx, segment, params,
       as, image, GB_stats);
  else if (!params->MMR && params->GBTEMPLATE == 2)
    {
      if (gbat[0] == 3 && gbat[1] == -1)
 return jbig2_decode_generic_template2a(ctx, segment, params,
            as, image, GB_stats);
      else
 return jbig2_decode_generic_template2(ctx, segment, params,
                                              as, image, GB_stats);
    }
  else if (!params->MMR && params->GBTEMPLATE == 3) {
   if (gbat[0] == 2 && gbat[1] == -1)
     return jbig2_decode_generic_template3_unopt(ctx, segment, params,
                                         as, image, GB_stats);
   else
     return jbig2_decode_generic_template3_unopt(ctx, segment, params,
                                         as, image, GB_stats);
  }

  {
    int i;
    for (i = 0; i < 8; i++)
      jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
        "gbat[%d] = %d", i, params->gbat[i]);
  }
  jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
       "decode_generic_region: MMR=%d, GBTEMPLATE=%d NYI",
       params->MMR, params->GBTEMPLATE);
  return -1;
}




int
jbig2_immediate_generic_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
          const byte *segment_data)
{
  Jbig2RegionSegmentInfo rsi;
  byte seg_flags;
  int8_t gbat[8];
  int offset;
  int gbat_bytes = 0;
  Jbig2GenericRegionParams params;
  int code = 0;
  Jbig2Image *image = ((void*)0);
  Jbig2WordStream *ws = ((void*)0);
  Jbig2ArithState *as = ((void*)0);
  Jbig2ArithCx *GB_stats = ((void*)0);


  if (segment->data_length < 18)
    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
         "Segment too short");

  jbig2_get_region_segment_info(&rsi, segment_data);
  jbig2_error(ctx, JBIG2_SEVERITY_INFO, segment->number,
       "generic region: %d x %d @ (%d, %d), flags = %02x",
       rsi.width, rsi.height, rsi.x, rsi.y, rsi.flags);


  seg_flags = segment_data[17];
  jbig2_error(ctx, JBIG2_SEVERITY_INFO, segment->number,
       "segment flags = %02x", seg_flags);
  if ((seg_flags & 1) && (seg_flags & 6))
    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
  "MMR is 1, but GBTEMPLATE is not 0");


  if (!(seg_flags & 1))
    {
      gbat_bytes = (seg_flags & 6) ? 2 : 8;
      if (18 + gbat_bytes > segment->data_length)
 return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
      "Segment too short");
      memcpy(gbat, segment_data + 18, gbat_bytes);
      jbig2_error(ctx, JBIG2_SEVERITY_INFO, segment->number,
    "gbat: %d, %d", gbat[0], gbat[1]);
    }

  offset = 18 + gbat_bytes;


  params.MMR = seg_flags & 1;
  params.GBTEMPLATE = (seg_flags & 6) >> 1;
  params.TPGDON = (seg_flags & 8) >> 3;
  params.USESKIP = 0;
  memcpy (params.gbat, gbat, gbat_bytes);

  image = jbig2_image_new(ctx, rsi.width, rsi.height);
  if (image == ((void*)0))
    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
             "unable to allocate generic image");
  jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
    "allocated %d x %d image buffer for region decode results",
        rsi.width, rsi.height);

  if (params.MMR)
    {
      code = jbig2_decode_generic_mmr(ctx, segment, &params,
          segment_data + offset, segment->data_length - offset, image);
    }
  else
    {
      int stats_size = jbig2_generic_stats_size(ctx, params.GBTEMPLATE);
      GB_stats = ((Jbig2ArithCx *)jbig2_alloc(ctx->allocator, stats_size, sizeof(Jbig2ArithCx)));
      if (GB_stats == ((void*)0))
      {
          code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "unable to allocate GB_stats in jbig2_immediate_generic_region");
          goto cleanup;
      }
      memset(GB_stats, 0, stats_size);

      ws = jbig2_word_stream_buf_new(ctx, segment_data + offset,
          segment->data_length - offset);
      if (ws == ((void*)0))
      {
          code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "unable to allocate ws in jbig2_immediate_generic_region");
          goto cleanup;
      }
      as = jbig2_arith_new(ctx, ws);
      if (as == ((void*)0))
      {
          code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "unable to allocate as in jbig2_immediate_generic_region");
          goto cleanup;
      }
      code = jbig2_decode_generic_region(ctx, segment, &params,
      as, image, GB_stats);
    }

  if (code >= 0)
    jbig2_page_add_result(ctx, &ctx->pages[ctx->current_page],
     image, rsi.x, rsi.y, rsi.op);
  else
    jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
  "error while decoding immediate_generic_region");

cleanup:
  jbig2_free(ctx->allocator, as);
  jbig2_word_stream_buf_free(ctx, ws);
  jbig2_free(ctx->allocator, GB_stats);
  jbig2_image_release(ctx, image);

  return code;
}
