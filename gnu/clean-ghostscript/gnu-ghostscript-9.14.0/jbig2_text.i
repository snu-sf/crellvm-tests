# 1 "./jbig2dec/jbig2_text.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./jbig2dec/jbig2_text.c" 2
# 23 "./jbig2dec/jbig2_text.c"
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
# 24 "./jbig2dec/jbig2_text.c" 2

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
# 26 "./jbig2dec/jbig2_text.c" 2
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
# 27 "./jbig2dec/jbig2_text.c" 2

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
# 29 "./jbig2dec/jbig2_text.c" 2
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
# 30 "./jbig2dec/jbig2_text.c" 2
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
# 31 "./jbig2dec/jbig2_text.c" 2
# 1 "./jbig2dec/jbig2_arith_int.h" 1
# 21 "./jbig2dec/jbig2_arith_int.h"
typedef struct _Jbig2ArithIntCtx Jbig2ArithIntCtx;

Jbig2ArithIntCtx *
jbig2_arith_int_ctx_new(Jbig2Ctx *ctx);

int
jbig2_arith_int_decode(Jbig2ArithIntCtx *ctx, Jbig2ArithState *as,
         int32_t *p_result);

void
jbig2_arith_int_ctx_free(Jbig2Ctx *ctx, Jbig2ArithIntCtx *iax);
# 32 "./jbig2dec/jbig2_text.c" 2
# 1 "./jbig2dec/jbig2_arith_iaid.h" 1
# 21 "./jbig2dec/jbig2_arith_iaid.h"
typedef struct _Jbig2ArithIaidCtx Jbig2ArithIaidCtx;

Jbig2ArithIaidCtx *
jbig2_arith_iaid_ctx_new(Jbig2Ctx *ctx, int SBSYMCODELEN);

int
jbig2_arith_iaid_decode(Jbig2ArithIaidCtx *ctx, Jbig2ArithState *as,
         int32_t *p_result);

void
jbig2_arith_iaid_ctx_free(Jbig2Ctx *ctx, Jbig2ArithIaidCtx *iax);
# 33 "./jbig2dec/jbig2_text.c" 2
# 1 "./jbig2dec/jbig2_huffman.h" 1
# 26 "./jbig2dec/jbig2_huffman.h"
typedef struct _Jbig2HuffmanEntry Jbig2HuffmanEntry;
typedef struct _Jbig2HuffmanState Jbig2HuffmanState;
typedef struct _Jbig2HuffmanTable Jbig2HuffmanTable;
typedef struct _Jbig2HuffmanParams Jbig2HuffmanParams;

struct _Jbig2HuffmanEntry {
  union {
    int32_t RANGELOW;
    Jbig2HuffmanTable *ext_table;
  } u;
  byte PREFLEN;
  byte RANGELEN;
  byte flags;
};

struct _Jbig2HuffmanTable {
  int log_table_size;
  Jbig2HuffmanEntry *entries;
};

typedef struct _Jbig2HuffmanLine Jbig2HuffmanLine;

struct _Jbig2HuffmanLine {
  int PREFLEN;
  int RANGELEN;
  int RANGELOW;
};

struct _Jbig2HuffmanParams {
  int HTOOB;
  int n_lines;
  const Jbig2HuffmanLine *lines;
};

Jbig2HuffmanState *
jbig2_huffman_new (Jbig2Ctx *ctx, Jbig2WordStream *ws);

void
jbig2_huffman_free (Jbig2Ctx *ctx, Jbig2HuffmanState *hs);

void
jbig2_huffman_skip(Jbig2HuffmanState *hs);

void jbig2_huffman_advance(Jbig2HuffmanState *hs, int offset);

int
jbig2_huffman_offset(Jbig2HuffmanState *hs);

int32_t
jbig2_huffman_get (Jbig2HuffmanState *hs,
     const Jbig2HuffmanTable *table, int *oob);

int32_t
jbig2_huffman_get_bits (Jbig2HuffmanState *hs, const int bits, int *err);






Jbig2HuffmanTable *
jbig2_build_huffman_table (Jbig2Ctx *ctx, const Jbig2HuffmanParams *params);

void
jbig2_release_huffman_table (Jbig2Ctx *ctx, Jbig2HuffmanTable *table);


extern const Jbig2HuffmanParams jbig2_huffman_params_A;
extern const Jbig2HuffmanParams jbig2_huffman_params_B;
extern const Jbig2HuffmanParams jbig2_huffman_params_C;
extern const Jbig2HuffmanParams jbig2_huffman_params_D;
extern const Jbig2HuffmanParams jbig2_huffman_params_E;
extern const Jbig2HuffmanParams jbig2_huffman_params_F;
extern const Jbig2HuffmanParams jbig2_huffman_params_G;
extern const Jbig2HuffmanParams jbig2_huffman_params_H;
extern const Jbig2HuffmanParams jbig2_huffman_params_I;
extern const Jbig2HuffmanParams jbig2_huffman_params_J;
extern const Jbig2HuffmanParams jbig2_huffman_params_K;
extern const Jbig2HuffmanParams jbig2_huffman_params_L;
extern const Jbig2HuffmanParams jbig2_huffman_params_M;
extern const Jbig2HuffmanParams jbig2_huffman_params_N;
extern const Jbig2HuffmanParams jbig2_huffman_params_O;




int
jbig2_table(Jbig2Ctx *ctx, Jbig2Segment *segment, const byte *segment_data);


void
jbig2_table_free(Jbig2Ctx *ctx, Jbig2HuffmanParams *params);


const Jbig2HuffmanParams *
jbig2_find_table(Jbig2Ctx *ctx, Jbig2Segment *segment, int index);
# 34 "./jbig2dec/jbig2_text.c" 2
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
# 35 "./jbig2dec/jbig2_text.c" 2
# 1 "./jbig2dec/jbig2_symbol_dict.h" 1
# 24 "./jbig2dec/jbig2_symbol_dict.h"
typedef struct {
    uint32_t n_symbols;
    Jbig2Image **glyphs;
} Jbig2SymbolDict;


int
jbig2_symbol_dictionary(Jbig2Ctx *ctx, Jbig2Segment *segment,
   const byte *segment_data);


Jbig2Image *
jbig2_sd_glyph(Jbig2SymbolDict *dict, unsigned int id);


Jbig2SymbolDict *
jbig2_sd_new(Jbig2Ctx *ctx, int n_symbols);


void
jbig2_sd_release(Jbig2Ctx *ctx, Jbig2SymbolDict *dict);



Jbig2SymbolDict *
jbig2_sd_cat(Jbig2Ctx *ctx, int n_dicts,
   Jbig2SymbolDict **dicts);



int
jbig2_sd_count_referred(Jbig2Ctx *ctx, Jbig2Segment *segment);



Jbig2SymbolDict **
jbig2_sd_list_referred(Jbig2Ctx *ctx, Jbig2Segment *segment);
# 36 "./jbig2dec/jbig2_text.c" 2
# 1 "./jbig2dec/jbig2_text.h" 1
# 24 "./jbig2dec/jbig2_text.h"
typedef enum {
    JBIG2_CORNER_BOTTOMLEFT = 0,
    JBIG2_CORNER_TOPLEFT = 1,
    JBIG2_CORNER_BOTTOMRIGHT = 2,
    JBIG2_CORNER_TOPRIGHT = 3
} Jbig2RefCorner;

typedef struct {
    int SBHUFF;
    int SBREFINE;
    int SBDEFPIXEL;
    Jbig2ComposeOp SBCOMBOP;
    int TRANSPOSED;
    Jbig2RefCorner REFCORNER;
    int SBDSOFFSET;


    uint32_t SBNUMINSTANCES;
    int LOGSBSTRIPS;
    int SBSTRIPS;




    Jbig2HuffmanTable *SBHUFFFS;
    Jbig2HuffmanTable *SBHUFFDS;
    Jbig2HuffmanTable *SBHUFFDT;
    Jbig2HuffmanTable *SBHUFFRDW;
    Jbig2HuffmanTable *SBHUFFRDH;
    Jbig2HuffmanTable *SBHUFFRDX;
    Jbig2HuffmanTable *SBHUFFRDY;
    Jbig2HuffmanTable *SBHUFFRSIZE;
    Jbig2ArithIntCtx *IADT;
    Jbig2ArithIntCtx *IAFS;
    Jbig2ArithIntCtx *IADS;
    Jbig2ArithIntCtx *IAIT;
    Jbig2ArithIaidCtx *IAID;
    Jbig2ArithIntCtx *IARI;
    Jbig2ArithIntCtx *IARDW;
    Jbig2ArithIntCtx *IARDH;
    Jbig2ArithIntCtx *IARDX;
    Jbig2ArithIntCtx *IARDY;
    int SBRTEMPLATE;
    int8_t sbrat[4];
} Jbig2TextRegionParams;

int
jbig2_decode_text_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
                             const Jbig2TextRegionParams *params,
                             const Jbig2SymbolDict * const *dicts, const int n_dicts,
                             Jbig2Image *image,
                             const byte *data, const size_t size,
        Jbig2ArithCx *GR_stats,
        Jbig2ArithState *as, Jbig2WordStream *ws);
# 37 "./jbig2dec/jbig2_text.c" 2
# 56 "./jbig2dec/jbig2_text.c"
int
jbig2_decode_text_region(Jbig2Ctx *ctx, Jbig2Segment *segment,
                             const Jbig2TextRegionParams *params,
                             const Jbig2SymbolDict * const *dicts, const int n_dicts,
                             Jbig2Image *image,
                             const byte *data, const size_t size,
        Jbig2ArithCx *GR_stats, Jbig2ArithState *as, Jbig2WordStream *ws)
{

    uint32_t NINSTANCES;
    uint32_t ID;
    int32_t STRIPT;
    int32_t FIRSTS;
    int32_t DT;
    int32_t DFS;
    int32_t IDS;
    int32_t CURS;
    int32_t CURT;
    int S,T;
    int x,y;
    int first_symbol;
    uint32_t index, SBNUMSYMS;
    Jbig2Image *IB = ((void*)0);
    Jbig2HuffmanState *hs = ((void*)0);
    Jbig2HuffmanTable *SBSYMCODES = ((void*)0);
    int code = 0;
    int RI;

    SBNUMSYMS = 0;
    for (index = 0; index < n_dicts; index++) {
        SBNUMSYMS += dicts[index]->n_symbols;
    }
    jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
        "symbol list contains %d glyphs in %d dictionaries", SBNUMSYMS, n_dicts);

    if (params->SBHUFF) {
 Jbig2HuffmanTable *runcodes = ((void*)0);
 Jbig2HuffmanParams runcodeparams;
 Jbig2HuffmanLine runcodelengths[35];
 Jbig2HuffmanLine *symcodelengths = ((void*)0);
 Jbig2HuffmanParams symcodeparams;
 int err, len, range, r;

 jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
   "huffman coded text region");
 hs = jbig2_huffman_new(ctx, ws);
    if (hs == ((void*)0))
    {
        jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
            "failed to allocate storage for text region");
        return -1;
    }






 for (index = 0; index < 35; index++) {
   runcodelengths[index].PREFLEN = jbig2_huffman_get_bits(hs, 4, &code);
   if (code < 0)
     goto cleanup1;
   runcodelengths[index].RANGELEN = 0;
   runcodelengths[index].RANGELOW = index;
   jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
     "  read runcode%d length %d", index, runcodelengths[index].PREFLEN);
 }
 runcodeparams.HTOOB = 0;
 runcodeparams.lines = runcodelengths;
 runcodeparams.n_lines = 35;
 runcodes = jbig2_build_huffman_table(ctx, &runcodeparams);
 if (runcodes == ((void*)0)) {
   jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "error constructing symbol id runcode table!");
   code = -1;
      goto cleanup1;
 }


 symcodelengths = ((Jbig2HuffmanLine *)jbig2_alloc(ctx->allocator, SBNUMSYMS, sizeof(Jbig2HuffmanLine)));
 if (symcodelengths == ((void*)0)) {
   jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "memory allocation failure reading symbol ID huffman table!");
   code = -1;
      goto cleanup1;
 }
 index = 0;
 while (index < SBNUMSYMS) {
   code = jbig2_huffman_get(hs, runcodes, &err);
   if (err != 0 || code < 0 || code >= 35) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
       "error reading symbol ID huffman table!");
     code = err ? err : -1;
        goto cleanup1;
   }

   if (code < 32) {
     len = code;
     range = 1;
   } else {
     if (code == 32) {
       if (index < 1) {
  jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "error decoding symbol id table: run length with no antecedent!");
         code = -1;
                goto cleanup1;
       }
       len = symcodelengths[index-1].PREFLEN;
     } else {
       len = 0;
     }
     err = 0;
     if (code == 32) range = jbig2_huffman_get_bits(hs, 2, &err) + 3;
     else if (code == 33) range = jbig2_huffman_get_bits(hs, 3, &err) + 3;
     else if (code == 34) range = jbig2_huffman_get_bits(hs, 7, &err) + 11;
     if (err < 0)
       goto cleanup1;
   }
   jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
     "  read runcode%d at index %d (length %d range %d)", code, index, len, range);
   if (index+range > SBNUMSYMS) {
     jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
       "runlength extends %d entries beyond the end of symbol id table!",
  index+range - SBNUMSYMS);
     range = SBNUMSYMS - index;
   }
   for (r = 0; r < range; r++) {
     symcodelengths[index+r].PREFLEN = len;
     symcodelengths[index+r].RANGELEN = 0;
     symcodelengths[index+r].RANGELOW = index + r;
   }
   index += r;
 }

 if (index < SBNUMSYMS) {
   jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
     "runlength codes do not cover the available symbol set");
 }
 symcodeparams.HTOOB = 0;
 symcodeparams.lines = symcodelengths;
 symcodeparams.n_lines = SBNUMSYMS;


 jbig2_huffman_skip(hs);


 SBSYMCODES = jbig2_build_huffman_table(ctx, &symcodeparams);

cleanup1:
 jbig2_free(ctx->allocator, symcodelengths);
 jbig2_release_huffman_table(ctx, runcodes);

 if (SBSYMCODES == ((void*)0)) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "could not construct Symbol ID huffman table!");
        jbig2_huffman_free(ctx, hs);
     return ((code != 0) ? code : -1);
 }
    }


    jbig2_image_clear(ctx, image, params->SBDEFPIXEL);


    if (params->SBHUFF) {
        STRIPT = jbig2_huffman_get(hs, params->SBHUFFDT, &code);
    } else {
        code = jbig2_arith_int_decode(params->IADT, as, &STRIPT);
    }
    if (code < 0) goto cleanup2;


    STRIPT *= -(params->SBSTRIPS);
    FIRSTS = 0;
    NINSTANCES = 0;


    while (NINSTANCES < params->SBNUMINSTANCES) {

        if (params->SBHUFF) {
            DT = jbig2_huffman_get(hs, params->SBHUFFDT, &code);
        } else {
            code = jbig2_arith_int_decode(params->IADT, as, &DT);
        }
        if (code < 0) goto cleanup2;
        DT *= params->SBSTRIPS;
        STRIPT += DT;

 first_symbol = 1;

 for (;;) {

     if (first_symbol) {

  if (params->SBHUFF) {
      DFS = jbig2_huffman_get(hs, params->SBHUFFFS, &code);
  } else {
      code = jbig2_arith_int_decode(params->IAFS, as, &DFS);
  }
                if (code < 0) goto cleanup2;
  FIRSTS += DFS;
  CURS = FIRSTS;
  first_symbol = 0;
     } else {
                if (NINSTANCES > params->SBNUMINSTANCES) {
                    code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                        "too many NINSTANCES (%d) decoded", NINSTANCES);
                    break;
  }

  if (params->SBHUFF) {
      IDS = jbig2_huffman_get(hs, params->SBHUFFDS, &code);
  } else {
      code = jbig2_arith_int_decode(params->IADS, as, &IDS);
  }
  if (code) {

      break;
  }
  CURS += IDS + params->SBDSOFFSET;
     }


     if (params->SBSTRIPS == 1) {
  CURT = 0;
     } else if (params->SBHUFF) {
  CURT = jbig2_huffman_get_bits(hs, params->LOGSBSTRIPS, &code);
     } else {
  code = jbig2_arith_int_decode(params->IAIT, as, &CURT);
     }
     if (code < 0) goto cleanup2;
     T = STRIPT + CURT;


     if (params->SBHUFF) {
  ID = jbig2_huffman_get(hs, SBSYMCODES, &code);
     } else {
  code = jbig2_arith_iaid_decode(params->IAID, as, (int *)&ID);
     }
            if (code < 0) goto cleanup2;
     if (ID >= SBNUMSYMS) {
            code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                "symbol id out of range! (%d/%d)", ID, SBNUMSYMS);
            goto cleanup2;
     }


     {
  uint32_t id = ID;

  index = 0;
  while (id >= dicts[index]->n_symbols)
      id -= dicts[index++]->n_symbols;
  IB = jbig2_image_clone(ctx, dicts[index]->glyphs[id]);

  if (!IB) {
      code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
          "missing glyph %d/%d!", index, id);
      goto cleanup2;
  }
     }
     if (params->SBREFINE) {
       if (params->SBHUFF) {
  RI = jbig2_huffman_get_bits(hs, 1, &code);
       } else {
  code = jbig2_arith_int_decode(params->IARI, as, &RI);
       }
       if (code < 0) goto cleanup2;
     } else {
  RI = 0;
     }
     if (RI) {
  Jbig2RefinementRegionParams rparams;
  Jbig2Image *IBO;
  int32_t RDW, RDH, RDX, RDY;
  Jbig2Image *refimage;
  int BMSIZE = 0;
  int code1 = 0;
  int code2 = 0;
  int code3 = 0;
  int code4 = 0;
  int code5 = 0;


  if (!params->SBHUFF) {
    code1 = jbig2_arith_int_decode(params->IARDW, as, &RDW);
    code2 = jbig2_arith_int_decode(params->IARDH, as, &RDH);
    code3 = jbig2_arith_int_decode(params->IARDX, as, &RDX);
    code4 = jbig2_arith_int_decode(params->IARDY, as, &RDY);
  } else {
    RDW = jbig2_huffman_get(hs, params->SBHUFFRDW, &code1);
    RDH = jbig2_huffman_get(hs, params->SBHUFFRDH, &code2);
    RDX = jbig2_huffman_get(hs, params->SBHUFFRDX, &code3);
    RDY = jbig2_huffman_get(hs, params->SBHUFFRDY, &code4);
    BMSIZE = jbig2_huffman_get(hs, params->SBHUFFRSIZE, &code5);
    jbig2_huffman_skip(hs);
  }

  if ((code1 < 0) || (code2 < 0) || (code3 < 0) || (code4 < 0) || (code5 < 0))
  {
      code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
          "failed to decode data");
      goto cleanup2;
  }


  IBO = IB;
  refimage = jbig2_image_new(ctx, IBO->width + RDW,
      IBO->height + RDH);
  if (refimage == ((void*)0)) {
    jbig2_image_release(ctx, IBO);
    if (params->SBHUFF) {
      jbig2_release_huffman_table(ctx, SBSYMCODES);
    }
    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL,
   segment->number,
   "couldn't allocate reference image");
         }


  rparams.GRTEMPLATE = params->SBRTEMPLATE;
  rparams.reference = IBO;
  rparams.DX = (RDW >> 1) + RDX;
  rparams.DY = (RDH >> 1) + RDY;
  rparams.TPGRON = 0;
  memcpy(rparams.grat, params->sbrat, 4);
  code = jbig2_decode_refinement_region(ctx, segment,
      &rparams, as, refimage, GR_stats);
  if (code < 0) {
      jbig2_image_release(ctx, refimage);
      goto cleanup2;
  }
  IB = refimage;

  jbig2_image_release(ctx, IBO);


  if (params->SBHUFF) {
    jbig2_huffman_advance(hs, BMSIZE);
  }

     }


     if ((!params->TRANSPOSED) && (params->REFCORNER > 1)) {
  CURS += IB->width - 1;
     } else if ((params->TRANSPOSED) && !(params->REFCORNER & 1)) {
  CURS += IB->height - 1;
     }


     S = CURS;


     if (!params->TRANSPOSED) {
  switch (params->REFCORNER) {
  case JBIG2_CORNER_TOPLEFT: x = S; y = T; break;
  case JBIG2_CORNER_TOPRIGHT: x = S - IB->width + 1; y = T; break;
  case JBIG2_CORNER_BOTTOMLEFT: x = S; y = T - IB->height + 1; break;
  case JBIG2_CORNER_BOTTOMRIGHT: x = S - IB->width + 1; y = T - IB->height + 1; break;
  }
     } else {
  switch (params->REFCORNER) {
  case JBIG2_CORNER_TOPLEFT: x = T; y = S; break;
  case JBIG2_CORNER_TOPRIGHT: x = T - IB->width + 1; y = S; break;
  case JBIG2_CORNER_BOTTOMLEFT: x = T; y = S - IB->height + 1; break;
  case JBIG2_CORNER_BOTTOMRIGHT: x = T - IB->width + 1; y = S - IB->height + 1; break;
  }
     }
# 433 "./jbig2dec/jbig2_text.c"
     code = jbig2_image_compose(ctx, image, IB, x, y, params->SBCOMBOP);
     if (code < 0) {
  jbig2_image_release(ctx, IB);
  goto cleanup2;
     }


     if ((!params->TRANSPOSED) && (params->REFCORNER < 2)) {
  CURS += IB->width -1 ;
     } else if ((params->TRANSPOSED) && (params->REFCORNER & 1)) {
  CURS += IB->height - 1;
     }


     NINSTANCES++;

     jbig2_image_release(ctx, IB);
 }

    }


cleanup2:
    if (params->SBHUFF) {
      jbig2_release_huffman_table(ctx, SBSYMCODES);
    }
    jbig2_huffman_free(ctx, hs);

    return code;
}




int
jbig2_text_region(Jbig2Ctx *ctx, Jbig2Segment *segment, const byte *segment_data)
{
    int offset = 0;
    Jbig2RegionSegmentInfo region_info;
    Jbig2TextRegionParams params;
    Jbig2Image *image = ((void*)0);
    Jbig2SymbolDict **dicts = ((void*)0);
    int n_dicts = 0;
    uint16_t flags = 0;
    uint16_t huffman_flags = 0;
    Jbig2ArithCx *GR_stats = ((void*)0);
    int code = 0;
    Jbig2WordStream *ws = ((void*)0);
    Jbig2ArithState *as = ((void*)0);
    int table_index = 0;
    const Jbig2HuffmanParams *huffman_params = ((void*)0);


    if (segment->data_length < 17)
        goto too_short;
    jbig2_get_region_segment_info(&region_info, segment_data);
    offset += 17;


    flags = jbig2_get_uint16(segment_data + offset);
    offset += 2;

    jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
 "text region header flags 0x%04x", flags);


    memset(&params, 0, sizeof(Jbig2TextRegionParams));

    params.SBHUFF = flags & 0x0001;
    params.SBREFINE = flags & 0x0002;
    params.LOGSBSTRIPS = (flags & 0x000c) >> 2;
    params.SBSTRIPS = 1 << params.LOGSBSTRIPS;
    params.REFCORNER = (Jbig2RefCorner)((flags & 0x0030) >> 4);
    params.TRANSPOSED = flags & 0x0040;
    params.SBCOMBOP = (Jbig2ComposeOp)((flags & 0x0180) >> 7);
    params.SBDEFPIXEL = flags & 0x0200;

    params.SBDSOFFSET = (flags & 0x7C00) >> 10;
    if (params.SBDSOFFSET > 0x0f) params.SBDSOFFSET -= 0x20;
    params.SBRTEMPLATE = flags & 0x8000;

    if (params.SBDSOFFSET) {
      jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
 "text region has SBDSOFFSET %d", params.SBDSOFFSET);
    }

    if (params.SBHUFF)
      {

        huffman_flags = jbig2_get_uint16(segment_data + offset);
        offset += 2;

        if (huffman_flags & 0x8000)
            jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
                "reserved bit 15 of text region huffman flags is not zero");
      }
    else
      {

        if ((params.SBREFINE) && !(params.SBRTEMPLATE))
          {
            params.sbrat[0] = segment_data[offset];
            params.sbrat[1] = segment_data[offset + 1];
            params.sbrat[2] = segment_data[offset + 2];
            params.sbrat[3] = segment_data[offset + 3];
            offset += 4;
   }
      }


    params.SBNUMINSTANCES = jbig2_get_uint32(segment_data + offset);
    offset += 4;

    if (params.SBHUFF) {




 switch (huffman_flags & 0x0003) {
   case 0:
     params.SBHUFFFS = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_F);
     break;
   case 1:
     params.SBHUFFFS = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_G);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom FS huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFFS = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
            break;
   case 2:
   default:
     code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "text region specified invalid FS huffman table");
        goto cleanup1;
     break;
 }
    if (params.SBHUFFFS == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified FS huffman table");
        goto cleanup1;
    }

 switch ((huffman_flags & 0x000c) >> 2) {
   case 0:
     params.SBHUFFDS = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_H);
     break;
   case 1:
     params.SBHUFFDS = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_I);
     break;
   case 2:
     params.SBHUFFDS = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_J);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom DS huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFDS = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
            break;
 }
    if (params.SBHUFFDS == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified DS huffman table");
        goto cleanup1;
    }

 switch ((huffman_flags & 0x0030) >> 4) {
   case 0:
     params.SBHUFFDT = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_K);
     break;
   case 1:
     params.SBHUFFDT = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_L);
     break;
   case 2:
     params.SBHUFFDT = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_M);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom DT huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFDT = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
            break;
 }
    if (params.SBHUFFDT == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified DT huffman table");
        goto cleanup1;
    }

 switch ((huffman_flags & 0x00c0) >> 6) {
   case 0:
     params.SBHUFFRDW = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_N);
     break;
   case 1:
     params.SBHUFFRDW = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_O);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom RDW huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFRDW = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
     break;
   case 2:
   default:
     code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "text region specified invalid RDW huffman table");
        goto cleanup1;
     break;
 }
    if (params.SBHUFFRDW == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified RDW huffman table");
        goto cleanup1;
    }

 switch ((huffman_flags & 0x0300) >> 8) {
   case 0:
     params.SBHUFFRDH = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_N);
     break;
   case 1:
     params.SBHUFFRDH = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_O);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom RDH huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFRDH = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
     break;
   case 2:
   default:
     code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "text region specified invalid RDH huffman table");
        goto cleanup1;
     break;
 }
    if (params.SBHUFFRDH == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified RDH huffman table");
        goto cleanup1;
    }

    switch ((huffman_flags & 0x0c00) >> 10) {
   case 0:
     params.SBHUFFRDX = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_N);
     break;
   case 1:
     params.SBHUFFRDX = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_O);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom RDX huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFRDX = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
     break;
   case 2:
   default:
     code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "text region specified invalid RDX huffman table");
        goto cleanup1;
     break;
 }
    if (params.SBHUFFRDX == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified RDX huffman table");
        goto cleanup1;
    }

 switch ((huffman_flags & 0x3000) >> 12) {
   case 0:
     params.SBHUFFRDY = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_N);
     break;
   case 1:
     params.SBHUFFRDY = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_O);
     break;
   case 3:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom RDY huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFRDY = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
     break;
   case 2:
   default:
     code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "text region specified invalid RDY huffman table");
        goto cleanup1;
     break;
 }
    if (params.SBHUFFRDY == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified RDY huffman table");
        goto cleanup1;
    }

 switch ((huffman_flags & 0x4000) >> 14) {
   case 0:
     params.SBHUFFRSIZE = jbig2_build_huffman_table(ctx,
   &jbig2_huffman_params_A);
     break;
   case 1:
            huffman_params = jbig2_find_table(ctx, segment, table_index);
            if (huffman_params == ((void*)0)) {
                code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                    "Custom RSIZE huffman table not found (%d)", table_index);
                goto cleanup1;
            }
            params.SBHUFFRSIZE = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
     break;
 }
    if (params.SBHUFFRSIZE == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate text region specified RSIZE huffman table");
        goto cleanup1;
    }

        if (huffman_flags & 0x8000) {
   jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
      "text region huffman flags bit 15 is set, contrary to spec");
 }



    }

    jbig2_error(ctx, JBIG2_SEVERITY_INFO, segment->number,
        "text region: %d x %d @ (%d,%d) %d symbols",
        region_info.width, region_info.height,
        region_info.x, region_info.y, params.SBNUMINSTANCES);


    n_dicts = jbig2_sd_count_referred(ctx, segment);
    if (n_dicts != 0) {
        dicts = jbig2_sd_list_referred(ctx, segment);
    } else {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "text region refers to no symbol dictionaries!");
        goto cleanup1;
    }
    if (dicts == ((void*)0)) {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "unable to retrive symbol dictionaries! previous parsing error?");
        goto cleanup1;
    } else {
 int index;
 if (dicts[0] == ((void*)0)) {
        code =jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
            "unable to find first referenced symbol dictionary!");
        goto cleanup1;
 }
 for (index = 1; index < n_dicts; index++)
     if (dicts[index] == ((void*)0)) {
  jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
   "unable to find all referenced symbol dictionaries!");
     n_dicts = index;
 }
    }


    {
 int stats_size = params.SBRTEMPLATE ? 1 << 10 : 1 << 13;
 GR_stats = ((Jbig2ArithCx *)jbig2_alloc(ctx->allocator, stats_size, sizeof(Jbig2ArithCx)));
    if (GR_stats == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "could not allocate GR_stats");
        goto cleanup1;
    }
 memset(GR_stats, 0, stats_size);
    }

    image = jbig2_image_new(ctx, region_info.width, region_info.height);
    if (image == ((void*)0)) {
        code =jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "couldn't allocate text region image");
        goto cleanup2;
    }

    ws = jbig2_word_stream_buf_new(ctx, segment_data + offset, segment->data_length - offset);
    if (ws == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "couldn't allocate ws in text region image");
        goto cleanup2;
    }

    as = jbig2_arith_new(ctx, ws);
    if (as == ((void*)0))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "couldn't allocate as in text region image");
        goto cleanup2;
    }

    if (!params.SBHUFF) {
 int SBSYMCODELEN, index;
        int SBNUMSYMS = 0;
 for (index = 0; index < n_dicts; index++) {
     SBNUMSYMS += dicts[index]->n_symbols;
 }

    params.IADT = jbig2_arith_int_ctx_new(ctx);
    params.IAFS = jbig2_arith_int_ctx_new(ctx);
    params.IADS = jbig2_arith_int_ctx_new(ctx);
    params.IAIT = jbig2_arith_int_ctx_new(ctx);
    if ((params.IADT == ((void*)0)) || (params.IAFS == ((void*)0)) ||
        (params.IADS == ((void*)0)) || (params.IAIT == ((void*)0)))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "couldn't allocate text region image data");
        goto cleanup3;
    }


 for (SBSYMCODELEN = 0; (1 << SBSYMCODELEN) < SBNUMSYMS; SBSYMCODELEN++);
    params.IAID = jbig2_arith_iaid_ctx_new(ctx, SBSYMCODELEN);
 params.IARI = jbig2_arith_int_ctx_new(ctx);
 params.IARDW = jbig2_arith_int_ctx_new(ctx);
 params.IARDH = jbig2_arith_int_ctx_new(ctx);
 params.IARDX = jbig2_arith_int_ctx_new(ctx);
 params.IARDY = jbig2_arith_int_ctx_new(ctx);
    if ((params.IAID == ((void*)0)) || (params.IARI == ((void*)0)) ||
        (params.IARDW == ((void*)0)) || (params.IARDH == ((void*)0)) ||
        (params.IARDX == ((void*)0)) || (params.IARDY == ((void*)0)))
    {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "couldn't allocate text region image data");
        goto cleanup4;
    }
    }

    code = jbig2_decode_text_region(ctx, segment, &params,
        (const Jbig2SymbolDict * const *)dicts, n_dicts, image,
        segment_data + offset, segment->data_length - offset,
  GR_stats, as, ws);
    if (code < 0)
    {
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to decode text region image data");
        goto cleanup4;
    }

    if ((segment->flags & 63) == 4) {

        segment->result = jbig2_image_clone(ctx, image);
    } else {

        jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
            "composing %dx%d decoded text region onto page at (%d, %d)",
            region_info.width, region_info.height, region_info.x, region_info.y);
        jbig2_page_add_result(ctx, &ctx->pages[ctx->current_page], image,
            region_info.x, region_info.y, region_info.op);
    }

cleanup4:
    if (!params.SBHUFF) {
        jbig2_arith_iaid_ctx_free(ctx, params.IAID);
        jbig2_arith_int_ctx_free(ctx, params.IARI);
        jbig2_arith_int_ctx_free(ctx, params.IARDW);
        jbig2_arith_int_ctx_free(ctx, params.IARDH);
        jbig2_arith_int_ctx_free(ctx, params.IARDX);
        jbig2_arith_int_ctx_free(ctx, params.IARDY);
    }

cleanup3:
    if (!params.SBHUFF) {
        jbig2_arith_int_ctx_free(ctx, params.IADT);
        jbig2_arith_int_ctx_free(ctx, params.IAFS);
        jbig2_arith_int_ctx_free(ctx, params.IADS);
        jbig2_arith_int_ctx_free(ctx, params.IAIT);
    }
    jbig2_free(ctx->allocator, as);
    jbig2_word_stream_buf_free(ctx, ws);

cleanup2:
    jbig2_free(ctx->allocator, GR_stats);
    jbig2_image_release(ctx, image);

cleanup1:
    if (params.SBHUFF) {
        jbig2_release_huffman_table(ctx, params.SBHUFFFS);
        jbig2_release_huffman_table(ctx, params.SBHUFFDS);
        jbig2_release_huffman_table(ctx, params.SBHUFFDT);
        jbig2_release_huffman_table(ctx, params.SBHUFFRDX);
        jbig2_release_huffman_table(ctx, params.SBHUFFRDY);
        jbig2_release_huffman_table(ctx, params.SBHUFFRDW);
        jbig2_release_huffman_table(ctx, params.SBHUFFRDH);
        jbig2_release_huffman_table(ctx, params.SBHUFFRSIZE);
    }
    jbig2_free(ctx->allocator, dicts);

    return code;

too_short:
    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
        "Segment too short");
}
