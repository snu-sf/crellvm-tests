# 1 "./jbig2dec/jbig2_symbol_dict.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./jbig2dec/jbig2_symbol_dict.c" 2
# 26 "./jbig2dec/jbig2_symbol_dict.c"
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
# 27 "./jbig2dec/jbig2_symbol_dict.c" 2

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
# 29 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 30 "./jbig2dec/jbig2_symbol_dict.c" 2

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
# 32 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 33 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 34 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 35 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 36 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 37 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 38 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 39 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 40 "./jbig2dec/jbig2_symbol_dict.c" 2
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
# 41 "./jbig2dec/jbig2_symbol_dict.c" 2







typedef struct {
  int SDHUFF;
  int SDREFAGG;
  uint32_t SDNUMINSYMS;
  Jbig2SymbolDict *SDINSYMS;
  uint32_t SDNUMNEWSYMS;
  uint32_t SDNUMEXSYMS;
  Jbig2HuffmanTable *SDHUFFDH;
  Jbig2HuffmanTable *SDHUFFDW;
  Jbig2HuffmanTable *SDHUFFBMSIZE;
  Jbig2HuffmanTable *SDHUFFAGGINST;
  int SDTEMPLATE;
  int8_t sdat[8];
  int SDRTEMPLATE;
  int8_t sdrat[4];
} Jbig2SymbolDictParams;
# 94 "./jbig2dec/jbig2_symbol_dict.c"
Jbig2SymbolDict *
jbig2_sd_new(Jbig2Ctx *ctx, int n_symbols)
{
   Jbig2SymbolDict *new = ((void*)0);

   if (n_symbols < 0) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1,
         "Negative number of symbols in symbol dict: %d", n_symbols);
     return ((void*)0);
   }

   new = ((Jbig2SymbolDict *)jbig2_alloc(ctx->allocator, 1, sizeof(Jbig2SymbolDict)));
   if (new != ((void*)0)) {
     new->glyphs = ((Jbig2Image* *)jbig2_alloc(ctx->allocator, n_symbols, sizeof(Jbig2Image*)));
     new->n_symbols = n_symbols;
   } else {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1,
         "unable to allocate new empty symbol dict");
     return ((void*)0);
   }

   if (new->glyphs != ((void*)0)) {
     memset(new->glyphs, 0, n_symbols*sizeof(Jbig2Image*));
   } else {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1,
         "unable to allocate glyphs for new empty symbol dict");
     jbig2_free(ctx->allocator, new);
     return ((void*)0);
   }

   return new;
}


void
jbig2_sd_release(Jbig2Ctx *ctx, Jbig2SymbolDict *dict)
{
   int i;

   if (dict == ((void*)0)) return;
   for (i = 0; i < dict->n_symbols; i++)
     if (dict->glyphs[i]) jbig2_image_release(ctx, dict->glyphs[i]);
   jbig2_free(ctx->allocator, dict->glyphs);
   jbig2_free(ctx->allocator, dict);
}


Jbig2Image *
jbig2_sd_glyph(Jbig2SymbolDict *dict, unsigned int id)
{
   if (dict == ((void*)0)) return ((void*)0);
   return dict->glyphs[id];
}


int
jbig2_sd_count_referred(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    int index;
    Jbig2Segment *rsegment;
    int n_dicts = 0;

    for (index = 0; index < segment->referred_to_segment_count; index++) {
        rsegment = jbig2_find_segment(ctx, segment->referred_to_segments[index]);
        if (rsegment && ((rsegment->flags & 63) == 0) &&
            rsegment->result &&
            (((Jbig2SymbolDict *)rsegment->result)->n_symbols > 0) &&
            ((*((Jbig2SymbolDict *)rsegment->result)->glyphs) != ((void*)0)))
            n_dicts++;
    }

    return (n_dicts);
}


Jbig2SymbolDict **
jbig2_sd_list_referred(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    int index;
    Jbig2Segment *rsegment;
    Jbig2SymbolDict **dicts;
    int n_dicts = jbig2_sd_count_referred(ctx, segment);
    int dindex = 0;

    dicts = ((Jbig2SymbolDict* *)jbig2_alloc(ctx->allocator, n_dicts, sizeof(Jbig2SymbolDict*)));
    if (dicts == ((void*)0))
    {
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate referred list of symbol dictionaries");
        return ((void*)0);
    }

    for (index = 0; index < segment->referred_to_segment_count; index++) {
        rsegment = jbig2_find_segment(ctx, segment->referred_to_segments[index]);
        if (rsegment && ((rsegment->flags & 63) == 0) && rsegment->result &&
            (((Jbig2SymbolDict *)rsegment->result)->n_symbols > 0) &&
            ((*((Jbig2SymbolDict *)rsegment->result)->glyphs) != ((void*)0))) {

            dicts[dindex++] = (Jbig2SymbolDict *)rsegment->result;
        }
    }

    if (dindex != n_dicts) {

        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "counted %d symbol dictionaries but built a list with %d.\n",
            n_dicts, dindex);
    }

    return (dicts);
}



Jbig2SymbolDict *
jbig2_sd_cat(Jbig2Ctx *ctx, int n_dicts, Jbig2SymbolDict **dicts)
{
  int i,j,k, symbols;
  Jbig2SymbolDict *new = ((void*)0);


  symbols = 0;
  for(i = 0; i < n_dicts; i++)
    symbols += dicts[i]->n_symbols;


  new = jbig2_sd_new(ctx, symbols);
  if (new != ((void*)0)) {
    k = 0;
    for (i = 0; i < n_dicts; i++)
      for (j = 0; j < dicts[i]->n_symbols; j++)
        new->glyphs[k++] = jbig2_image_clone(ctx, dicts[i]->glyphs[j]);
  } else {
    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1,
        "failed to allocate new symbol dictionary");
  }

  return new;
}





static Jbig2SymbolDict *
jbig2_decode_symbol_dict(Jbig2Ctx *ctx,
    Jbig2Segment *segment,
    const Jbig2SymbolDictParams *params,
    const byte *data, size_t size,
    Jbig2ArithCx *GB_stats,
    Jbig2ArithCx *GR_stats)
{
  Jbig2SymbolDict *SDNEWSYMS = ((void*)0);
  Jbig2SymbolDict *SDEXSYMS = ((void*)0);
  uint32_t HCHEIGHT;
  uint32_t NSYMSDECODED;
  uint32_t SYMWIDTH, TOTWIDTH;
  uint32_t HCFIRSTSYM;
  uint32_t *SDNEWSYMWIDTHS = ((void*)0);
  int SBSYMCODELEN = 0;
  Jbig2WordStream *ws = ((void*)0);
  Jbig2HuffmanState *hs = ((void*)0);
  Jbig2HuffmanTable *SDHUFFRDX = ((void*)0);
  Jbig2HuffmanTable *SBHUFFRSIZE = ((void*)0);
  Jbig2ArithState *as = ((void*)0);
  Jbig2ArithIntCtx *IADH = ((void*)0);
  Jbig2ArithIntCtx *IADW = ((void*)0);
  Jbig2ArithIntCtx *IAEX = ((void*)0);
  Jbig2ArithIntCtx *IAAI = ((void*)0);
  Jbig2ArithIaidCtx *IAID = ((void*)0);
  Jbig2ArithIntCtx *IARDX = ((void*)0);
  Jbig2ArithIntCtx *IARDY = ((void*)0);
  int code = 0;
  Jbig2SymbolDict **refagg_dicts = ((void*)0);
  int n_refagg_dicts = 1;

  Jbig2TextRegionParams *tparams = ((void*)0);


  HCHEIGHT = 0;
  NSYMSDECODED = 0;

  ws = jbig2_word_stream_buf_new(ctx, data, size);
  if (ws == ((void*)0))
  {
      jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
          "failed to allocate ws in jbig2_decode_symbol_dict");
      return ((void*)0);
  }

  as = jbig2_arith_new(ctx, ws);
  if (as == ((void*)0))
  {
      jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
          "failed to allocate as in jbig2_decode_symbol_dict");
      jbig2_word_stream_buf_free(ctx, ws);
      return ((void*)0);
  }

  if (!params->SDHUFF) {
      IADH = jbig2_arith_int_ctx_new(ctx);
      IADW = jbig2_arith_int_ctx_new(ctx);
      IAEX = jbig2_arith_int_ctx_new(ctx);
      IAAI = jbig2_arith_int_ctx_new(ctx);
      if ((IADH == ((void*)0)) || (IADW == ((void*)0)) || (IAEX == ((void*)0)) || (IAAI == ((void*)0)))
      {
          jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
              "failed to allocate storage for symbol bitmap");
          goto cleanup1;
      }
      if (params->SDREFAGG) {
          int64_t tmp = params->SDNUMINSYMS + params->SDNUMNEWSYMS;
          for (SBSYMCODELEN = 0; ((int64_t)1 << SBSYMCODELEN) < tmp; SBSYMCODELEN++);
          IAID = jbig2_arith_iaid_ctx_new(ctx, SBSYMCODELEN);
          IARDX = jbig2_arith_int_ctx_new(ctx);
          IARDY = jbig2_arith_int_ctx_new(ctx);
          if ((IAID == ((void*)0)) || (IARDX == ((void*)0)) || (IARDY == ((void*)0)))
          {
              jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
                  "failed to allocate storage for symbol bitmap");
              goto cleanup2;
          }
      }
  } else {
      jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
          "huffman coded symbol dictionary");
      hs = jbig2_huffman_new(ctx, ws);
      SDHUFFRDX = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_O);
      SBHUFFRSIZE = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_A);
      if ( (hs == ((void*)0)) || (SDHUFFRDX == ((void*)0)) || (SBHUFFRSIZE == ((void*)0)))
      {
          jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
              "failed to allocate storage for symbol bitmap");
          goto cleanup2;
      }
      if (!params->SDREFAGG) {
   SDNEWSYMWIDTHS = ((uint32_t *)jbig2_alloc(ctx->allocator, params->SDNUMNEWSYMS, sizeof(uint32_t)));
   if (SDNEWSYMWIDTHS == ((void*)0)) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "could not allocate storage for (%u) symbol widths",
              params->SDNUMNEWSYMS);
     goto cleanup2;
   }
      }
  }

  SDNEWSYMS = jbig2_sd_new(ctx, params->SDNUMNEWSYMS);
  if (SDNEWSYMS == ((void*)0)) {
      jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
          "could not allocate storage for (%u) new symbols",
          params->SDNUMNEWSYMS);
      goto cleanup2;
  }


  while (NSYMSDECODED < params->SDNUMNEWSYMS) {
      int32_t HCDH, DW;


      if (params->SDHUFF) {
   HCDH = jbig2_huffman_get(hs, params->SDHUFFDH, &code);
      } else {
   code = jbig2_arith_int_decode(IADH, as, &HCDH);
      }

      if (code != 0) {
 jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
   "error or OOB decoding height class delta (%d)\n", code);
      }

      if (!params->SDHUFF && jbig2_arith_get_offset(as) >= size) {
          code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "prevent DOS while decoding height classes");
          goto cleanup2;
      }


      HCHEIGHT = HCHEIGHT + HCDH;
      SYMWIDTH = 0;
      TOTWIDTH = 0;
      HCFIRSTSYM = NSYMSDECODED;

      if ((int32_t)HCHEIGHT < 0) {
          code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "Invalid HCHEIGHT value");
          goto cleanup2;
      }




      jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
        "decoding height class %d with %d syms decoded", HCHEIGHT, NSYMSDECODED);

      for (;;) {

   if (params->SDHUFF) {
       DW = jbig2_huffman_get(hs, params->SDHUFFDW, &code);
   } else {
       code = jbig2_arith_int_decode(IADW, as, &DW);
   }
          if (code < 0) goto cleanup4;


   if (code == 1) {
     jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
     " OOB signals end of height class %d", HCHEIGHT);
     break;
   }


          if (NSYMSDECODED >= params->SDNUMNEWSYMS)
          {
              jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                  "No OOB signalling end of height class %d", HCHEIGHT);
              goto cleanup4;
          }

   SYMWIDTH = SYMWIDTH + DW;
   TOTWIDTH = TOTWIDTH + SYMWIDTH;
   if ((int32_t)SYMWIDTH < 0) {
          code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "Invalid SYMWIDTH value (%d) at symbol %d", SYMWIDTH, NSYMSDECODED+1);
          goto cleanup4;
      }





   if (!params->SDHUFF || params->SDREFAGG) {





       if (!params->SDREFAGG) {
    Jbig2GenericRegionParams region_params;
    int sdat_bytes;
    Jbig2Image *image;


    region_params.MMR = 0;
    region_params.GBTEMPLATE = params->SDTEMPLATE;
    region_params.TPGDON = 0;
    region_params.USESKIP = 0;
    sdat_bytes = params->SDTEMPLATE == 0 ? 8 : 2;
    memcpy(region_params.gbat, params->sdat, sdat_bytes);

    image = jbig2_image_new(ctx, SYMWIDTH, HCHEIGHT);
          if (image == ((void*)0))
          {
              code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                  "failed to allocate image in jbig2_decode_symbol_dict");
              goto cleanup4;
          }

    code = jbig2_decode_generic_region(ctx, segment, &region_params,
              as, image, GB_stats);
          if (code < 0) {
              jbig2_image_release(ctx, image);
              goto cleanup4;
          }

          SDNEWSYMS->glyphs[NSYMSDECODED] = image;
       } else {

          uint32_t REFAGGNINST;

    if (params->SDHUFF) {
        REFAGGNINST = jbig2_huffman_get(hs, params->SDHUFFAGGINST, &code);
    } else {
        code = jbig2_arith_int_decode(IAAI, as, (int32_t*)&REFAGGNINST);
    }
    if (code || (int32_t)REFAGGNINST <= 0) {
        code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                  "invalid number of symbols or OOB in aggregate glyph");
        goto cleanup4;
    }

    jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
      "aggregate symbol coding (%d instances)", REFAGGNINST);

    if (REFAGGNINST > 1) {
        Jbig2Image *image;
        int i;

        if (tparams == ((void*)0))
        {



     refagg_dicts = ((Jbig2SymbolDict* *)jbig2_alloc(ctx->allocator, n_refagg_dicts, sizeof(Jbig2SymbolDict*)));
            if (refagg_dicts == ((void*)0)) {
         code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
          "Out of memory allocating dictionary array");
                goto cleanup4;
            }
            refagg_dicts[0] = jbig2_sd_new(ctx, params->SDNUMINSYMS + params->SDNUMNEWSYMS);
            if (refagg_dicts[0] == ((void*)0)) {
         code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
          "Out of memory allocating symbol dictionary");
                jbig2_free(ctx->allocator, refagg_dicts);
                goto cleanup4;
            }
            for (i=0;i < params->SDNUMINSYMS;i++)
            {
         refagg_dicts[0]->glyphs[i] = jbig2_image_clone(ctx, params->SDINSYMS->glyphs[i]);
            }

     tparams = ((Jbig2TextRegionParams *)jbig2_alloc(ctx->allocator, 1, sizeof(Jbig2TextRegionParams)));
     if (tparams == ((void*)0)) {
         code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
         "Out of memory creating text region params");
         goto cleanup4;
     }
              if (!params->SDHUFF) {

         tparams->IADT = jbig2_arith_int_ctx_new(ctx);
         tparams->IAFS = jbig2_arith_int_ctx_new(ctx);
         tparams->IADS = jbig2_arith_int_ctx_new(ctx);
         tparams->IAIT = jbig2_arith_int_ctx_new(ctx);

         for (SBSYMCODELEN = 0; (1 << SBSYMCODELEN) <
      (int)(params->SDNUMINSYMS + params->SDNUMNEWSYMS); SBSYMCODELEN++);
         tparams->IAID = jbig2_arith_iaid_ctx_new(ctx, SBSYMCODELEN);
         tparams->IARI = jbig2_arith_int_ctx_new(ctx);
         tparams->IARDW = jbig2_arith_int_ctx_new(ctx);
         tparams->IARDH = jbig2_arith_int_ctx_new(ctx);
         tparams->IARDX = jbig2_arith_int_ctx_new(ctx);
         tparams->IARDY = jbig2_arith_int_ctx_new(ctx);
     } else {
         tparams->SBHUFFFS = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_F);
         tparams->SBHUFFDS = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_H);
         tparams->SBHUFFDT = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_K);
         tparams->SBHUFFRDW = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_O);
         tparams->SBHUFFRDH = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_O);
         tparams->SBHUFFRDX = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_O);
         tparams->SBHUFFRDY = jbig2_build_huffman_table(ctx,
    &jbig2_huffman_params_O);
     }
     tparams->SBHUFF = params->SDHUFF;
     tparams->SBREFINE = 1;
     tparams->SBSTRIPS = 1;
     tparams->SBDEFPIXEL = 0;
     tparams->SBCOMBOP = JBIG2_COMPOSE_OR;
     tparams->TRANSPOSED = 0;
     tparams->REFCORNER = JBIG2_CORNER_TOPLEFT;
     tparams->SBDSOFFSET = 0;
     tparams->SBRTEMPLATE = params->SDRTEMPLATE;
        }
        tparams->SBNUMINSTANCES = REFAGGNINST;

              image = jbig2_image_new(ctx, SYMWIDTH, HCHEIGHT);
        if (image == ((void*)0)) {
                  code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                      "Out of memory creating symbol image");
                  goto cleanup4;
        }


        jbig2_decode_text_region(ctx, segment, tparams, (const Jbig2SymbolDict * const *)refagg_dicts,
     n_refagg_dicts, image, data, size, GR_stats, as, ws);

        SDNEWSYMS->glyphs[NSYMSDECODED] = image;
        refagg_dicts[0]->glyphs[params->SDNUMINSYMS + NSYMSDECODED] = jbig2_image_clone(ctx, SDNEWSYMS->glyphs[NSYMSDECODED]);
    } else {


        Jbig2RefinementRegionParams rparams;
        Jbig2Image *image;
        uint32_t ID;
        int32_t RDX, RDY;
        int BMSIZE = 0;
        int ninsyms = params->SDNUMINSYMS;
        int code1 = 0;
        int code2 = 0;
        int code3 = 0;
        int code4 = 0;


        if (params->SDHUFF) {
            ID = jbig2_huffman_get_bits(hs, SBSYMCODELEN, &code4);
            RDX = jbig2_huffman_get(hs, SDHUFFRDX, &code1);
            RDY = jbig2_huffman_get(hs, SDHUFFRDX, &code2);
            BMSIZE = jbig2_huffman_get(hs, SBHUFFRSIZE, &code3);
            jbig2_huffman_skip(hs);
        } else {
            code1 = jbig2_arith_iaid_decode(IAID, as, (int32_t*)&ID);
            code2 = jbig2_arith_int_decode(IARDX, as, &RDX);
            code3 = jbig2_arith_int_decode(IARDY, as, &RDY);
        }

        if ((code1 < 0) || (code2 < 0) || (code3 < 0) || (code4 < 0))
        {
            code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL,
                segment->number, "failed to decode data");
            goto cleanup4;
        }

        if (ID >= ninsyms+NSYMSDECODED) {
                  code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                      "refinement references unknown symbol %d", ID);
                  goto cleanup4;
        }

        jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
                  "symbol is a refinement of id %d with the "
                  "refinement applied at (%d,%d)", ID, RDX, RDY);

        image = jbig2_image_new(ctx, SYMWIDTH, HCHEIGHT);
              if (image == ((void*)0)) {
                  code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                      "Out of memory creating symbol image");
                  goto cleanup4;
              }


        rparams.GRTEMPLATE = params->SDRTEMPLATE;
        rparams.reference = (ID < ninsyms) ?
     params->SDINSYMS->glyphs[ID] :
     SDNEWSYMS->glyphs[ID-ninsyms];

        if (rparams.reference == ((void*)0)) {
            code = jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                "missing glyph %d/%d!", ID, ninsyms);
            jbig2_image_release(ctx, image);
            goto cleanup4;
        }
        rparams.DX = RDX;
        rparams.DY = RDY;
        rparams.TPGRON = 0;
        memcpy(rparams.grat, params->sdrat, 4);
        code = jbig2_decode_refinement_region(ctx, segment,
            &rparams, as, image, GR_stats);
     if (code < 0) goto cleanup4;

        SDNEWSYMS->glyphs[NSYMSDECODED] = image;


        if (params->SDHUFF) {
            if (BMSIZE == 0) BMSIZE = image->height * image->stride;
            jbig2_huffman_advance(hs, BMSIZE);
        }
    }
               }
# 661 "./jbig2dec/jbig2_symbol_dict.c"
   }


   if (params->SDHUFF && !params->SDREFAGG) {
     SDNEWSYMWIDTHS[NSYMSDECODED] = SYMWIDTH;
   }


          NSYMSDECODED = NSYMSDECODED + 1;

   jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
            "decoded symbol %u of %u (%ux%u)",
  NSYMSDECODED, params->SDNUMNEWSYMS,
  SYMWIDTH, HCHEIGHT);

      }


      if (params->SDHUFF && !params->SDREFAGG) {

 Jbig2Image *image;
 int BMSIZE = jbig2_huffman_get(hs, params->SDHUFFBMSIZE, &code);
 int j, x;

 if (code || (BMSIZE < 0)) {
   jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "error decoding size of collective bitmap!");
   goto cleanup4;
 }


 jbig2_huffman_skip(hs);

 image = jbig2_image_new(ctx, TOTWIDTH, HCHEIGHT);
 if (image == ((void*)0)) {
   jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "could not allocate collective bitmap image!");
   goto cleanup4;
 }

 if (BMSIZE == 0) {

   const byte *src = data + jbig2_huffman_offset(hs);
   const int stride = (image->width >> 3) +
  ((image->width & 7) ? 1 : 0);
   byte *dst = image->data;


   if (size - jbig2_huffman_offset(hs) < image->height * stride) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number, "not enough data for decoding (%d/%d)", image->height * stride, size - jbig2_huffman_offset(hs));
     jbig2_image_release(ctx, image);
     goto cleanup4;
   }

   BMSIZE = image->height * stride;
   jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
     "reading %dx%d uncompressed bitmap"
     " for %d symbols (%d bytes)",
     image->width, image->height, NSYMSDECODED - HCFIRSTSYM, BMSIZE);

   for (j = 0; j < image->height; j++) {
     memcpy(dst, src, stride);
     dst += image->stride;
     src += stride;
   }
 } else {
   Jbig2GenericRegionParams rparams;


   if (size - jbig2_huffman_offset(hs) < BMSIZE) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number, "not enough data for decoding (%d/%d)", BMSIZE, size - jbig2_huffman_offset(hs));
     jbig2_image_release(ctx, image);
     goto cleanup4;
   }

   jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, segment->number,
     "reading %dx%d collective bitmap for %d symbols (%d bytes)",
     image->width, image->height, NSYMSDECODED - HCFIRSTSYM, BMSIZE);

   rparams.MMR = 1;
   code = jbig2_decode_generic_mmr(ctx, segment, &rparams,
     data + jbig2_huffman_offset(hs), BMSIZE, image);
   if (code) {
     jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
       "error decoding MMR bitmap image!");
     jbig2_image_release(ctx, image);
     goto cleanup4;
   }
 }


 jbig2_huffman_advance(hs, BMSIZE);


 x = 0;
 for (j = HCFIRSTSYM; j < NSYMSDECODED; j++) {
   Jbig2Image *glyph;
   glyph = jbig2_image_new(ctx, SDNEWSYMWIDTHS[j], HCHEIGHT);
      if (glyph == ((void*)0))
      {
          jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
              "failed to copy the collective bitmap into symbol dictionary");
          jbig2_image_release(ctx, image);
          goto cleanup4;
      }
   jbig2_image_compose(ctx, glyph, image, -x, 0, JBIG2_COMPOSE_REPLACE);
   x += SDNEWSYMWIDTHS[j];
   SDNEWSYMS->glyphs[j] = glyph;
 }
 jbig2_image_release(ctx, image);
      }

  }


  SDEXSYMS = jbig2_sd_new(ctx, params->SDNUMEXSYMS);
  if (SDEXSYMS == ((void*)0))
  {
      jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
          "failed to allocate symbols exported from symbols dictionary");
      goto cleanup4;
  }
  else
  {
    int i = 0;
    int j = 0;
    int k;
    int exflag = 0;
    int64_t limit = params->SDNUMINSYMS + params->SDNUMNEWSYMS;
    int32_t exrunlength;
    int zerolength = 0;

    while (i < limit) {
      if (params->SDHUFF)
        exrunlength = jbig2_huffman_get(hs, SBHUFFRSIZE, &code);
      else
        code = jbig2_arith_int_decode(IAEX, as, &exrunlength);

      zerolength = exrunlength > 0 ? 0 : zerolength + 1;
      if (code || (exrunlength > limit - i) || (exrunlength < 0) || (zerolength > 4) ||
          (exflag && (exrunlength > params->SDNUMEXSYMS - j))) {
        if (code)
          jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to decode exrunlength for exported symbols");
        else if (exrunlength <= 0)
          jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "runlength too small in export symbol table (%d <= 0)\n", exrunlength);
        else
          jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "runlength too large in export symbol table (%d > %d - %d)\n",
            exrunlength, params->SDNUMEXSYMS, j);

        jbig2_sd_release(ctx, SDEXSYMS);
        SDEXSYMS = ((void*)0);
        break;
      }
      for(k = 0; k < exrunlength; k++) {
        if (exflag) {
          SDEXSYMS->glyphs[j++] = (i < params->SDNUMINSYMS) ?
            jbig2_image_clone(ctx, params->SDINSYMS->glyphs[i]) :
            jbig2_image_clone(ctx, SDNEWSYMS->glyphs[i-params->SDNUMINSYMS]);
        }
        i++;
      }
      exflag = !exflag;
    }
  }

cleanup4:
  if (tparams != ((void*)0))
  {
      if (!params->SDHUFF)
      {
          jbig2_arith_int_ctx_free(ctx, tparams->IADT);
          jbig2_arith_int_ctx_free(ctx, tparams->IAFS);
          jbig2_arith_int_ctx_free(ctx, tparams->IADS);
          jbig2_arith_int_ctx_free(ctx, tparams->IAIT);
          jbig2_arith_iaid_ctx_free(ctx, tparams->IAID);
          jbig2_arith_int_ctx_free(ctx, tparams->IARI);
          jbig2_arith_int_ctx_free(ctx, tparams->IARDW);
          jbig2_arith_int_ctx_free(ctx, tparams->IARDH);
          jbig2_arith_int_ctx_free(ctx, tparams->IARDX);
          jbig2_arith_int_ctx_free(ctx, tparams->IARDY);
      }
      else
      {
          jbig2_release_huffman_table(ctx, tparams->SBHUFFFS);
          jbig2_release_huffman_table(ctx, tparams->SBHUFFDS);
          jbig2_release_huffman_table(ctx, tparams->SBHUFFDT);
          jbig2_release_huffman_table(ctx, tparams->SBHUFFRDX);
          jbig2_release_huffman_table(ctx, tparams->SBHUFFRDY);
          jbig2_release_huffman_table(ctx, tparams->SBHUFFRDW);
          jbig2_release_huffman_table(ctx, tparams->SBHUFFRDH);
      }
      jbig2_free(ctx->allocator, tparams);
  }
  if (refagg_dicts != ((void*)0))
  {
      jbig2_sd_release(ctx, refagg_dicts[0]);
      jbig2_free(ctx->allocator, refagg_dicts);
  }

cleanup2:
  jbig2_sd_release(ctx, SDNEWSYMS);
  if (params->SDHUFF && !params->SDREFAGG)
  {
      jbig2_free(ctx->allocator, SDNEWSYMWIDTHS);
  }
  jbig2_release_huffman_table(ctx, SDHUFFRDX);
  jbig2_release_huffman_table(ctx, SBHUFFRSIZE);
  jbig2_huffman_free(ctx, hs);
  jbig2_arith_iaid_ctx_free(ctx, IAID);
  jbig2_arith_int_ctx_free(ctx, IARDX);
  jbig2_arith_int_ctx_free(ctx, IARDY);

cleanup1:
  jbig2_word_stream_buf_free(ctx, ws);
  jbig2_free(ctx->allocator, as);
  jbig2_arith_int_ctx_free(ctx, IADH);
  jbig2_arith_int_ctx_free(ctx, IADW);
  jbig2_arith_int_ctx_free(ctx, IAEX);
  jbig2_arith_int_ctx_free(ctx, IAAI);

  return SDEXSYMS;
}


int
jbig2_symbol_dictionary(Jbig2Ctx *ctx, Jbig2Segment *segment,
   const byte *segment_data)
{
  Jbig2SymbolDictParams params;
  uint16_t flags;
  int sdat_bytes;
  int offset;
  Jbig2ArithCx *GB_stats = ((void*)0);
  Jbig2ArithCx *GR_stats = ((void*)0);
  int table_index = 0;
  const Jbig2HuffmanParams *huffman_params;

  if (segment->data_length < 10)
    goto too_short;


  flags = jbig2_get_uint16(segment_data);


  memset(&params, 0, sizeof(Jbig2SymbolDictParams));

  params.SDHUFF = flags & 1;
  params.SDREFAGG = (flags >> 1) & 1;
  params.SDTEMPLATE = (flags >> 10) & 3;
  params.SDRTEMPLATE = (flags >> 12) & 1;

  if (params.SDHUFF) {
    switch ((flags & 0x000c) >> 2) {
      case 0:
 params.SDHUFFDH = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_D);
 break;
      case 1:
 params.SDHUFFDH = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_E);
 break;
      case 3:
        huffman_params = jbig2_find_table(ctx, segment, table_index);
        if (huffman_params == ((void*)0)) {
            return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                "Custom DH huffman table not found (%d)", table_index);
        }
        params.SDHUFFDH = jbig2_build_huffman_table(ctx, huffman_params);
        ++table_index;
        break;
      case 2:
      default:
 return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "symbol dictionary specified invalid huffman table");
    }
    if (params.SDHUFFDH == ((void*)0))
    {
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate DH huffman table");
        goto cleanup;
    }

    switch ((flags & 0x0030) >> 4) {
      case 0:
 params.SDHUFFDW = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_B);
 break;
      case 1:
 params.SDHUFFDW = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_C);
 break;
      case 3:
        huffman_params = jbig2_find_table(ctx, segment, table_index);
        if (huffman_params == ((void*)0)) {
            jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                "Custom DW huffman table not found (%d)", table_index);
            break;
        }
        params.SDHUFFDW = jbig2_build_huffman_table(ctx, huffman_params);
        ++table_index;
        break;
      case 2:
      default:
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
     "symbol dictionary specified invalid huffman table");
        goto cleanup;
    }
    if (params.SDHUFFDW == ((void*)0))
    {
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate DW huffman table");
        goto cleanup;
    }

    if (flags & 0x0040) {

        huffman_params = jbig2_find_table(ctx, segment, table_index);
        if (huffman_params == ((void*)0)) {
            jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                "Custom BMSIZE huffman table not found (%d)", table_index);
        } else {
            params.SDHUFFBMSIZE = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
        }
    } else {

 params.SDHUFFBMSIZE = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_A);
    }
    if (params.SDHUFFBMSIZE == ((void*)0))
    {
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate BMSIZE huffman table");
        goto cleanup;
    }

    if (flags & 0x0080) {

        huffman_params = jbig2_find_table(ctx, segment, table_index);
        if (huffman_params == ((void*)0)) {
            jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
                "Custom REFAGG huffman table not found (%d)", table_index);
        } else {
            params.SDHUFFAGGINST = jbig2_build_huffman_table(ctx, huffman_params);
            ++table_index;
        }
    } else {

 params.SDHUFFAGGINST = jbig2_build_huffman_table(ctx, &jbig2_huffman_params_A);
    }
    if (params.SDHUFFAGGINST == ((void*)0))
    {
        jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
            "failed to allocate REFAGG huffman table");
        goto cleanup;
    }
  }



  if (!params.SDHUFF) {
    if (flags & 0x000c) {
      jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
    "SDHUFF is zero, but contrary to spec SDHUFFDH is not.");
      goto cleanup;
    }
    if (flags & 0x0030) {
      jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
    "SDHUFF is zero, but contrary to spec SDHUFFDW is not.");
      goto cleanup;
    }
  }

  if (flags & 0x0080) {
      jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
        "bitmap coding context is used (NYI) symbol data likely to be garbage!");
      goto cleanup;
  }


  sdat_bytes = params.SDHUFF ? 0 : params.SDTEMPLATE == 0 ? 8 : 2;
  memcpy(params.sdat, segment_data + 2, sdat_bytes);
  offset = 2 + sdat_bytes;


  if (params.SDREFAGG && !params.SDRTEMPLATE) {
      if (offset + 4 > segment->data_length)
 goto too_short;
      memcpy(params.sdrat, segment_data + offset, 4);
      offset += 4;
  }

  if (offset + 8 > segment->data_length)
    goto too_short;


  params.SDNUMEXSYMS = jbig2_get_uint32(segment_data + offset);

  params.SDNUMNEWSYMS = jbig2_get_uint32(segment_data + offset + 4);
  offset += 8;

  jbig2_error(ctx, JBIG2_SEVERITY_INFO, segment->number,
       "symbol dictionary, flags=%04x, %u exported syms, %u new syms",
       flags, params.SDNUMEXSYMS, params.SDNUMNEWSYMS);


  {
    int n_dicts = jbig2_sd_count_referred(ctx, segment);
    Jbig2SymbolDict **dicts = ((void*)0);

    if (n_dicts > 0) {
      dicts = jbig2_sd_list_referred(ctx, segment);
      if (dicts == ((void*)0))
      {
          jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
              "failed to allocate dicts in symbol dictionary");
          goto cleanup;
      }
      params.SDINSYMS = jbig2_sd_cat(ctx, n_dicts, dicts);
      if (params.SDINSYMS == ((void*)0))
      {
          jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
              "failed to allocate symbol array in symbol dictionary");
          jbig2_free(ctx->allocator, dicts);
          goto cleanup;
      }
      jbig2_free(ctx->allocator, dicts);
    }
    if (params.SDINSYMS != ((void*)0)) {
      params.SDNUMINSYMS = params.SDINSYMS->n_symbols;
    }
  }


  if (flags & 0x0100) {
      jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
        "segment marks bitmap coding context as used (NYI)");
      goto cleanup;
  } else {
      int stats_size = params.SDTEMPLATE == 0 ? 65536 :
          params.SDTEMPLATE == 1 ? 8192 : 1024;
      GB_stats = ((Jbig2ArithCx *)jbig2_alloc(ctx->allocator, stats_size, sizeof(Jbig2ArithCx)));
      if (GB_stats == ((void*)0))
      {
          jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1,
              "failed to allocate GB_stats in jbig2_symbol_dictionary");
          goto cleanup;
      }
      memset(GB_stats, 0, stats_size);

   stats_size = params.SDRTEMPLATE ? 1 << 10 : 1 << 13;
   GR_stats = ((Jbig2ArithCx *)jbig2_alloc(ctx->allocator, stats_size, sizeof(Jbig2ArithCx)));
   if (GR_stats == ((void*)0))
   {
    jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1,
     "failed to allocate GR_stats in jbig2_symbol_dictionary");
    jbig2_free(ctx->allocator, GB_stats);
    goto cleanup;
   }
   memset(GR_stats, 0, stats_size);
  }

  segment->result = (void *)jbig2_decode_symbol_dict(ctx, segment,
      &params,
      segment_data + offset,
      segment->data_length - offset,
      GB_stats, GR_stats);





  if (flags & 0x0200) {

      jbig2_free(ctx->allocator, GR_stats);
      jbig2_free(ctx->allocator, GB_stats);
      jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number,
          "segment marks bitmap coding context as retained (NYI)");
  } else {
      jbig2_free(ctx->allocator, GR_stats);
      jbig2_free(ctx->allocator, GB_stats);
  }

cleanup:
  if (params.SDHUFF) {
      jbig2_release_huffman_table(ctx, params.SDHUFFDH);
      jbig2_release_huffman_table(ctx, params.SDHUFFDW);
      jbig2_release_huffman_table(ctx, params.SDHUFFBMSIZE);
      jbig2_release_huffman_table(ctx, params.SDHUFFAGGINST);
  }
  jbig2_sd_release(ctx, params.SDINSYMS);

  return (segment->result != ((void*)0)) ? 0 : -1;

 too_short:
  return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number,
       "Segment too short");
}
