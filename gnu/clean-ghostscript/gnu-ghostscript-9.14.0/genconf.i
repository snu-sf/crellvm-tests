# 1 "./base/genconf.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/genconf.c" 2
# 18 "./base/genconf.c"
# 1 "./base/stdpre.h" 1
# 253 "./base/stdpre.h"
typedef unsigned char byte;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
# 273 "./base/stdpre.h"
# 1 "/usr/include/sys/types.h" 1 3 4
# 25 "/usr/include/sys/types.h" 3 4
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
# 26 "/usr/include/sys/types.h" 2 3 4



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
# 30 "/usr/include/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;





typedef __ino64_t ino_t;




typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;







typedef __off64_t off_t;




typedef __off64_t off64_t;




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
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 147 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong_;
typedef unsigned short int ushort_;
typedef unsigned int uint_;
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
# 216 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 28 "/usr/include/bits/byteswap.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/byteswap.h" 2 3 4






# 1 "/usr/include/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/bits/byteswap.h" 2 3 4
# 61 "/usr/include/endian.h" 2 3 4
# 217 "/usr/include/sys/types.h" 2 3 4


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
# 248 "/usr/include/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt_t;



typedef __fsblkcnt64_t fsblkcnt_t;



typedef __fsfilcnt64_t fsfilcnt_t;





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
# 274 "./base/stdpre.h" 2
# 294 "./base/stdpre.h"
typedef int bool;
# 331 "./base/stdpre.h"
typedef const char *ptr_ord_t;
# 390 "./base/stdpre.h"
typedef const char *client_name_t;
# 401 "./base/stdpre.h"
# 1 "./base/stdpn.h" 1
# 402 "./base/stdpre.h" 2
# 19 "./base/genconf.c" 2
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
# 20 "./base/genconf.c" 2
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
# 258 "/usr/include/ctype.h" 3 4
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
# 259 "/usr/include/ctype.h" 2 3 4
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
# 21 "./base/genconf.c" 2
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
# 112 "/usr/include/stdio.h" 3 4
typedef _G_fpos64_t fpos_t;



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
# 198 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64") ;






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
# 283 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename, const char *__restrict __modes) __asm__ ("" "fopen64")

       ;
extern FILE *freopen (const char *__restrict __filename, const char *__restrict __modes, FILE *__restrict __stream) __asm__ ("" "freopen64")


       ;







extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;




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
# 781 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off64_t __off, int __whence) __asm__ ("" "fseeko64");


extern __off64_t ftello (FILE *__stream) __asm__ ("" "ftello64");
# 806 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos) __asm__ ("" "fgetpos64");

extern int fsetpos (FILE *__stream, const fpos_t *__pos) __asm__ ("" "fsetpos64");
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
# 22 "./base/genconf.c" 2
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
# 321 "/usr/include/stdlib.h" 3 4
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
# 622 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;





extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 644 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __asm__ ("" "mkstemps64") __attribute__ ((__nonnull__ (1))) ;






extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
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
# 23 "./base/genconf.c" 2
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
# 162 "/usr/include/string.h" 3 4
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
# 1301 "/usr/include/bits/string2.h" 3 4
extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 1320 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 634 "/usr/include/string.h" 2 3 4
# 24 "./base/genconf.c" 2
# 242 "./base/genconf.c"
typedef struct string_item_s {
    const char *str;
    int file_index;
    int index;
} string_item_t;


typedef enum {
    uniq_all = 1,
    uniq_first = 2,
    uniq_last = 4
} uniq_mode_t;
typedef struct string_list_s {

    const char *list_name;
    int max_count;
    uniq_mode_t mode;

    int count;
    string_item_t *items;
} string_list_t;


typedef struct string_pattern_s {
    bool upper_case;
    bool drop_extn;
    char pattern[60 + 1];
} string_pattern_t;
typedef struct config_s {
    int debug;
    const char *name_prefix;
    const char *file_prefix;

    string_list_t file_names;
    string_list_t file_contents;
    string_list_t replaces;

    union ru_ {
        struct nu_ {

            string_list_t sorted_resources;
            string_list_t resources;
            string_list_t devs;
            string_list_t compositors;
            string_list_t fonts;
            string_list_t libs;
            string_list_t libpaths;
            string_list_t links;
            string_list_t objs;
        } named;

        string_list_t indexed[9];
    } lists;
    string_pattern_t lib_p;
    string_pattern_t libpath_p;
    string_pattern_t obj_p;
} config_t;





static const config_t init_config = {
    0,
    "gs_",
    "",
    {"file name", 200},
    {"file contents", 200},
    {"-replace", 50}
};
static const string_list_t init_config_lists[] = {
    {"resource", 100, uniq_first},
    {"sorted_resource", 20, uniq_first},
    {"-comp", 10, uniq_first},
    {"-dev", 100, uniq_first},
    {"-font", 50, uniq_first},
    {"-lib", 20, uniq_last},
    {"-libpath", 10, uniq_first},
    {"-link", 10, uniq_first},
    {"-obj", 500, uniq_first}
};


static void *mrealloc(void *, size_t, size_t);
int alloc_list(string_list_t *);
void dev_file_name(char *);
int process_replaces(config_t *);
int read_dev(config_t *, const char *);
int read_token(char *, int, const char **);
int add_entry(config_t *, char *, const char *, int);
string_item_t *add_item(string_list_t *, const char *, int);
void sort_uniq(string_list_t *, bool);
void write_list(FILE *, const string_list_t *, const char *);
void write_list_pattern(FILE *, const string_list_t *, const string_pattern_t *);
bool var_expand(char *, char [120], const config_t *);
void add_definition(const char *, const char *, string_list_t *, bool);
string_item_t *lookup(const char *, const string_list_t *);

int
main(int argc, char *argv[])
{
    config_t conf;
    char escape = '&';
    int i;


    conf = init_config;
    memcpy(conf.lists.indexed, init_config_lists,
           sizeof(conf.lists.indexed));
    alloc_list(&conf.file_names);
    alloc_list(&conf.file_contents);
    alloc_list(&conf.replaces);
    for (i = 0; i < 9; ++i)
        alloc_list(&conf.lists.indexed[i]);


    conf.lib_p.upper_case = ((bool)0);
    conf.lib_p.drop_extn = ((bool)0);
    strcpy(conf.lib_p.pattern, "%s\n");
    conf.libpath_p = conf.lib_p;
    conf.obj_p = conf.lib_p;


    for (i = 1; i < argc; i++) {
        const char *arg = argv[i];
        FILE *out;
        int lib = 0, obj = 0;

        if (*arg != '-') {
            read_dev(&conf, arg);
            continue;
        }
        if (i == argc - 1) {
            fprintf(stderr, "Missing argument after %s.\n",
                    arg);
            exit(1);
        }
        switch (arg[1]) {
            case 'C':
                conf.file_prefix =
                    (argv[i + 1][0] == '-' ? "" : argv[i + 1]);
                ++i;
                continue;
            case 'e':
                escape = argv[i + 1][0];
                ++i;
                continue;
            case 'n':
                conf.name_prefix =
                    (argv[i + 1][0] == '-' ? "" : argv[i + 1]);
                ++i;
                continue;
            case 'p':
                {
                    string_pattern_t *pat;

                    switch (*(arg += 2)) {
                        case 'l':
                            pat = &conf.lib_p;
                            break;
                        case 'L':
                            pat = &conf.libpath_p;
                            break;
                        default:
                            pat = &conf.obj_p;
                            arg--;
                    }
                    pat->upper_case = ((bool)0);
                    pat->drop_extn = ((bool)0);
                    if (argv[i + 1][0] == '-')
                        strcpy(pat->pattern, "%s\n");
                    else {
                        char *p, *q;

                        for (p = pat->pattern, q = argv[++i];
                             (*p++ = *q++) != 0;
                            )
                            if (p[-1] == escape)
                                switch (*q) {
                                    case 'p':
                                        p[-1] = '%'; q++; break;
                                    case 's':
                                        p[-1] = ' '; q++; break;
                                    case '-':
                                        p[-1] = '-'; q++; break;
                                    default:
                                        if (*q == escape) {
                                            p[-1] = '\\'; q++; break;
                                        }
                                        fprintf(stderr,
                                          "%c not followed by p|s|%c|-: &%c\n",
                                                escape, escape, *q);
                                        exit(1);
                                }
                        p[-1] = '\n';
                        *p = 0;
                    }
                    for (;;) {
                        switch (*++arg) {
                            case 'u':
                                pat->upper_case = ((bool)1);
                                break;
                            case 'e':
                                pat->drop_extn = ((bool)1);
                                break;
                            case 0:
                                goto pbreak;
                            default:
                                fprintf(stderr, "Unknown switch %s.\n", arg);
                                exit(1);
                        }
                    }
                  pbreak:if (pat == &conf.obj_p) {
                        conf.lib_p = *pat;
                        conf.libpath_p = *pat;
                    }
                    continue;
                }
            case 'Z':
                conf.debug = 1;
                continue;
        }

        out = fopen(argv[++i], "w");
        if (out == 0) {
            fprintf(stderr, "Can't open %s for output.\n",
                    argv[i]);
            exit(1);
        }
        switch (arg[1]) {
            case 'f':
                process_replaces(&conf);
                fputs("/* This file was generated automatically by genconf.c. */\n", out);
                fputs("/* For documentation, see gsconfig.c. */\n", out);
                {
                    char templat[80];

                    sprintf(templat,
                            "font_(\"0.font_%%s\",%sf_%%s,zf_%%s)\n",
                            conf.name_prefix);
                    write_list(out, &conf.lists.named.fonts, templat);
                }
                break;
            case 'h':
                process_replaces(&conf);
                fputs("/* This file was generated automatically by genconf.c. */\n", out);
                write_list(out, &conf.lists.named.compositors, "%s\n");
                write_list(out, &conf.lists.named.devs, "%s\n");
                sort_uniq(&conf.lists.named.resources, ((bool)1));
                write_list(out, &conf.lists.named.resources, "%s\n");
                sort_uniq(&conf.lists.named.sorted_resources, ((bool)0));
                write_list(out, &conf.lists.named.sorted_resources, "%s\n");
                break;
            case 'l':
                lib = 1;
                obj = arg[2] == 'o';
                goto lo;
            case 'o':
                obj = 1;
                lib = arg[2] == 'l';
              lo:process_replaces(&conf);
                if (obj) {
                    sort_uniq(&conf.lists.named.objs, ((bool)1));
                    write_list_pattern(out, &conf.lists.named.objs, &conf.obj_p);
                }
                if (lib) {
                    sort_uniq(&conf.lists.named.libs, ((bool)1));
                    sort_uniq(&conf.lists.named.links, ((bool)1));
                    write_list_pattern(out, &conf.lists.named.libpaths, &conf.libpath_p);
                    write_list_pattern(out, &conf.lists.named.links, &conf.obj_p);
                    write_list_pattern(out, &conf.lists.named.libs, &conf.lib_p);
                }
                break;
            default:
                fclose(out);
                fprintf(stderr, "Unknown switch %s.\n", argv[i]);
                exit(1);
        }
        fclose(out);
    }

    return 0;
}






static void *
mrealloc(void *old_ptr, size_t old_size, size_t new_size)
{
    void *new_ptr = malloc(new_size);

    if (new_ptr == ((void*)0))
        return ((void*)0);


    if (old_ptr)
        memcpy(new_ptr, old_ptr, (((old_size) < (new_size)) ? (old_size) : (new_size)));
    return new_ptr;
}


int
alloc_list(string_list_t * list)
{
    list->count = 0;
    list->items =
        (string_item_t *) calloc(list->max_count, sizeof(string_item_t));
    ((list->items != ((void*)0)) ? (void) (0) : __assert_fail ("list->items != ((void*)0)", "./base/genconf.c", 552, __PRETTY_FUNCTION__));
    return 0;
}


void
dev_file_name(char *str)
{
    int len = strlen(str);

    if (len <= 4 || __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (".dev") && __builtin_constant_p (str + len - 4) && (__s1_len = strlen (".dev"), __s2_len = strlen (str + len - 4), (!((size_t)(const void *)((".dev") + 1) - (size_t)(const void *)(".dev") == 1) || __s1_len >= 4) && (!((size_t)(const void *)((str + len - 4) + 1) - (size_t)(const void *)(str + len - 4) == 1) || __s2_len >= 4)) ? __builtin_strcmp (".dev", str + len - 4) : (__builtin_constant_p (".dev") && ((size_t)(const void *)((".dev") + 1) - (size_t)(const void *)(".dev") == 1) && (__s1_len = strlen (".dev"), __s1_len < 4) ? (__builtin_constant_p (str + len - 4) && ((size_t)(const void *)((str + len - 4) + 1) - (size_t)(const void *)(str + len - 4) == 1) ? __builtin_strcmp (".dev", str + len - 4) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (str + len - 4); register int __result = (((const unsigned char *) (const char *) (".dev"))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (".dev"))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (".dev"))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (".dev"))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (str + len - 4) && ((size_t)(const void *)((str + len - 4) + 1) - (size_t)(const void *)(str + len - 4) == 1) && (__s2_len = strlen (str + len - 4), __s2_len < 4) ? (__builtin_constant_p (".dev") && ((size_t)(const void *)((".dev") + 1) - (size_t)(const void *)(".dev") == 1) ? __builtin_strcmp (".dev", str + len - 4) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (".dev"); register int __result = __s1[0] - ((const unsigned char *) (const char *) (str + len - 4))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (str + len - 4))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (str + len - 4))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (str + len - 4))[3]); } } __result; }))) : __builtin_strcmp (".dev", str + len - 4)))); }))
        strcat(str, ".dev");
}


int
process_replaces(config_t * pconf)
{
    char bufname[120];
    int i;

    for (i = 0; i < pconf->replaces.count; ++i) {
        int j;

        strcpy(bufname, pconf->replaces.items[i].str);

        dev_file_name(bufname);
        for (j = 0; j < pconf->file_names.count; ++j) {
            const char *fname = pconf->file_names.items[j].str;

            if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (fname) && __builtin_constant_p (bufname) && (__s1_len = strlen (fname), __s2_len = strlen (bufname), (!((size_t)(const void *)((fname) + 1) - (size_t)(const void *)(fname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((bufname) + 1) - (size_t)(const void *)(bufname) == 1) || __s2_len >= 4)) ? __builtin_strcmp (fname, bufname) : (__builtin_constant_p (fname) && ((size_t)(const void *)((fname) + 1) - (size_t)(const void *)(fname) == 1) && (__s1_len = strlen (fname), __s1_len < 4) ? (__builtin_constant_p (bufname) && ((size_t)(const void *)((bufname) + 1) - (size_t)(const void *)(bufname) == 1) ? __builtin_strcmp (fname, bufname) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (bufname); register int __result = (((const unsigned char *) (const char *) (fname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (fname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (fname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (fname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (bufname) && ((size_t)(const void *)((bufname) + 1) - (size_t)(const void *)(bufname) == 1) && (__s2_len = strlen (bufname), __s2_len < 4) ? (__builtin_constant_p (fname) && ((size_t)(const void *)((fname) + 1) - (size_t)(const void *)(fname) == 1) ? __builtin_strcmp (fname, bufname) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (fname); register int __result = __s1[0] - ((const unsigned char *) (const char *) (bufname))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (bufname))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (bufname))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (bufname))[3]); } } __result; }))) : __builtin_strcmp (fname, bufname)))); })) {
                if (pconf->debug)
                    printf("Replacing file %s.\n", fname);

                {
                    int rn;

                    for (rn = 0; rn < 9; ++rn) {
                        string_item_t *items = pconf->lists.indexed[rn].items;
                        int count = pconf->lists.indexed[rn].count;
                        int tn;

                        for (tn = 0; tn < count; ++tn) {
                            if (items[tn].file_index == j) {






                                if (pconf->debug)
                                    printf("Replacing %s %s.\n",
                                         pconf->lists.indexed[rn].list_name,
                                           items[tn].str);
                                items[tn--] = items[--count];
                            }
                        }
                        pconf->lists.indexed[rn].count = count;
                    }
                }
                pconf->file_names.items[j].str = "";
                break;
            }
        }
    }

    pconf->replaces.count = 0;
    return 0;
}







static string_item_t *
read_file(config_t * pconf, const char *fname)
{
    char *cname = malloc(strlen(fname) + strlen(pconf->file_prefix) + 1);
    int i;
    FILE *in;
    int end, nread;
    char *cont;
    string_item_t *item;

    if (cname == 0) {
        fprintf(stderr, "Can't allocate space for file name %s%s.\n",
                pconf->file_prefix, fname);
        exit(1);
    }
    strcpy(cname, pconf->file_prefix);
    strcat(cname, fname);
    for (i = 0; i < pconf->file_names.count; ++i)
        if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pconf->file_names.items[i].str) && __builtin_constant_p (cname) && (__s1_len = strlen (pconf->file_names.items[i].str), __s2_len = strlen (cname), (!((size_t)(const void *)((pconf->file_names.items[i].str) + 1) - (size_t)(const void *)(pconf->file_names.items[i].str) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((cname) + 1) - (size_t)(const void *)(cname) == 1) || __s2_len >= 4)) ? __builtin_strcmp (pconf->file_names.items[i].str, cname) : (__builtin_constant_p (pconf->file_names.items[i].str) && ((size_t)(const void *)((pconf->file_names.items[i].str) + 1) - (size_t)(const void *)(pconf->file_names.items[i].str) == 1) && (__s1_len = strlen (pconf->file_names.items[i].str), __s1_len < 4) ? (__builtin_constant_p (cname) && ((size_t)(const void *)((cname) + 1) - (size_t)(const void *)(cname) == 1) ? __builtin_strcmp (pconf->file_names.items[i].str, cname) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (cname); register int __result = (((const unsigned char *) (const char *) (pconf->file_names.items[i].str))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pconf->file_names.items[i].str))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pconf->file_names.items[i].str))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pconf->file_names.items[i].str))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (cname) && ((size_t)(const void *)((cname) + 1) - (size_t)(const void *)(cname) == 1) && (__s2_len = strlen (cname), __s2_len < 4) ? (__builtin_constant_p (pconf->file_names.items[i].str) && ((size_t)(const void *)((pconf->file_names.items[i].str) + 1) - (size_t)(const void *)(pconf->file_names.items[i].str) == 1) ? __builtin_strcmp (pconf->file_names.items[i].str, cname) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pconf->file_names.items[i].str); register int __result = __s1[0] - ((const unsigned char *) (const char *) (cname))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (cname))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (cname))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (cname))[3]); } } __result; }))) : __builtin_strcmp (pconf->file_names.items[i].str, cname)))); })) {
            free(cname);
            return &pconf->file_contents.items[i];
        }


    in = fopen(cname, "rb");
    if (in == 0) {
        in = fopen(cname, "r");
        if (in == 0) {
            fprintf(stderr, "Can't read %s.\n", cname);
            exit(1);
        }
    }
    fseek(in, 0L, 2 );
    end = ftell(in);
    cont = malloc(end + 1);
    if (cont == 0) {
        fprintf(stderr, "Can't allocate %d bytes to read %s.\n",
                end + 1, cname);
        exit(1);
    }
    rewind(in);
    nread = fread(cont, 1, end, in);
    fclose(in);
    cont[nread] = 0;
    if (pconf->debug)
        printf("File %s = %d bytes.\n", cname, nread);
    add_item(&pconf->file_names, cname, -1);
    item = add_item(&pconf->file_contents, cont, -1);
    item->index = 0;
    return item;
}


int
read_dev(config_t * pconf, const char *arg)
{
    string_item_t *item;
    const char *in;


    char *token;
    char *category;
    int file_index;
    int len;

    if (pconf->debug)
        printf("Reading %s;\n", arg);
    item = read_file(pconf, arg);
    if (item->index == uniq_first) {
        if (pconf->debug)
            printf("Skipping duplicate file.\n");
        return uniq_first;
    }
    in = item->str;
    token = malloc(4096 + 1);
    category = malloc(4096 + 1);
    file_index = item - pconf->file_contents.items;
    strcpy(category, "obj");
    while ((len = read_token(token, 4096, &in)) > 0)
        item->index |= add_entry(pconf, category, token, file_index);
    free(category);

    if (len < 0) {
        fprintf(stderr, "Token too long: %s.\n", token);
        exit(1);
    }
    if (pconf->debug)
        printf("Finished %s.\n", arg);
    free(token);
    return item->index;
}


int
read_token(char *token, int max_len, const char **pin)
{
    const char *in = *pin;
    int len = 0;

    while (len < max_len) {
        char ch = *in;

        if (ch == 0)
            break;
        ++in;
        if (((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISspace)) {
            if (len > 0)
                break;
            continue;
        }
        token[len++] = ch;
    }
    token[len] = 0;
    *pin = in;
    return (len >= max_len ? -1 : len);
}


int
add_entry(config_t * pconf, char *category, const char *item, int file_index)
{
    if (item[0] == '-' && ((*__ctype_b_loc ())[(int) ((item[1]))] & (unsigned short int) _ISlower)) {
        strcpy(category, item + 1);
        return 0;
    } else {
        char str[120];
        char templat[80];
        const char *pat = 0;
        string_list_t *list = &pconf->lists.named.resources;

        if (pconf->debug)
            printf("Adding %s %s;\n", category, item);

        switch (category[0]) {

            case 'c':
                if (!!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("comp") && (__s1_len = strlen (category), __s2_len = strlen ("comp"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("comp") + 1) - (size_t)(const void *)("comp") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "comp") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("comp") && ((size_t)(const void *)(("comp") + 1) - (size_t)(const void *)("comp") == 1) ? __builtin_strcmp (category, "comp") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("comp"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("comp") && ((size_t)(const void *)(("comp") + 1) - (size_t)(const void *)("comp") == 1) && (__s2_len = strlen ("comp"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "comp") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("comp"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("comp"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("comp"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("comp"))[3]); } } __result; }))) : __builtin_strcmp (category, "comp")))); }))
                    goto err;
                pat = "compositor_(%scomposite_%%s_type)";
                list = &pconf->lists.named.compositors;
                goto pre;
            case 'd':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("dev") && (__s1_len = strlen (category), __s2_len = strlen ("dev"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("dev") + 1) - (size_t)(const void *)("dev") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "dev") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("dev") && ((size_t)(const void *)(("dev") + 1) - (size_t)(const void *)("dev") == 1) ? __builtin_strcmp (category, "dev") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("dev"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("dev") && ((size_t)(const void *)(("dev") + 1) - (size_t)(const void *)("dev") == 1) && (__s2_len = strlen ("dev"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "dev") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("dev"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("dev"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("dev"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("dev"))[3]); } } __result; }))) : __builtin_strcmp (category, "dev")))); }))
                    pat = "device_(%s%%s_device)";
                else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("dev2") && (__s1_len = strlen (category), __s2_len = strlen ("dev2"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("dev2") + 1) - (size_t)(const void *)("dev2") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "dev2") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("dev2") && ((size_t)(const void *)(("dev2") + 1) - (size_t)(const void *)("dev2") == 1) ? __builtin_strcmp (category, "dev2") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("dev2"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("dev2") && ((size_t)(const void *)(("dev2") + 1) - (size_t)(const void *)("dev2") == 1) && (__s2_len = strlen ("dev2"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "dev2") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("dev2"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("dev2"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("dev2"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("dev2"))[3]); } } __result; }))) : __builtin_strcmp (category, "dev2")))); }))
                    pat = "device2_(%s%%s_device)";
                else
                    goto err;
                list = &pconf->lists.named.devs;
pre: sprintf(templat, pat, pconf->name_prefix);
                pat = templat;
                break;
            case 'e':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("emulator") && (__s1_len = strlen (category), __s2_len = strlen ("emulator"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("emulator") + 1) - (size_t)(const void *)("emulator") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "emulator") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("emulator") && ((size_t)(const void *)(("emulator") + 1) - (size_t)(const void *)("emulator") == 1) ? __builtin_strcmp (category, "emulator") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("emulator"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("emulator") && ((size_t)(const void *)(("emulator") + 1) - (size_t)(const void *)("emulator") == 1) && (__s2_len = strlen ("emulator"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "emulator") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("emulator"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("emulator"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("emulator"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("emulator"))[3]); } } __result; }))) : __builtin_strcmp (category, "emulator")))); })) {
                    sprintf(str, "emulator_(\"%s\",%u)",
                            item, (uint)strlen(item));
                    item = str;
                    break;
                }
                goto err;
            case 'f':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("font") && (__s1_len = strlen (category), __s2_len = strlen ("font"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("font") + 1) - (size_t)(const void *)("font") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "font") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("font") && ((size_t)(const void *)(("font") + 1) - (size_t)(const void *)("font") == 1) ? __builtin_strcmp (category, "font") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("font"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("font") && ((size_t)(const void *)(("font") + 1) - (size_t)(const void *)("font") == 1) && (__s2_len = strlen ("font"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "font") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("font"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("font"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("font"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("font"))[3]); } } __result; }))) : __builtin_strcmp (category, "font")))); })) {
                    list = &pconf->lists.named.fonts;
                    break;
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("functiontype") && (__s1_len = strlen (category), __s2_len = strlen ("functiontype"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("functiontype") + 1) - (size_t)(const void *)("functiontype") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "functiontype") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("functiontype") && ((size_t)(const void *)(("functiontype") + 1) - (size_t)(const void *)("functiontype") == 1) ? __builtin_strcmp (category, "functiontype") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("functiontype"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("functiontype") && ((size_t)(const void *)(("functiontype") + 1) - (size_t)(const void *)("functiontype") == 1) && (__s2_len = strlen ("functiontype"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "functiontype") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("functiontype"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("functiontype"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("functiontype"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("functiontype"))[3]); } } __result; }))) : __builtin_strcmp (category, "functiontype")))); })) {
                    pat = "function_type_(%%s,%sbuild_function_%%s)";
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("fapi") && (__s1_len = strlen (category), __s2_len = strlen ("fapi"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("fapi") + 1) - (size_t)(const void *)("fapi") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "fapi") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("fapi") && ((size_t)(const void *)(("fapi") + 1) - (size_t)(const void *)("fapi") == 1) ? __builtin_strcmp (category, "fapi") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("fapi"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("fapi") && ((size_t)(const void *)(("fapi") + 1) - (size_t)(const void *)("fapi") == 1) && (__s2_len = strlen ("fapi"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "fapi") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("fapi"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("fapi"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("fapi"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("fapi"))[3]); } } __result; }))) : __builtin_strcmp (category, "fapi")))); })) {
                    pat = "fapi_(%s%%s_init)";
                } else
                    goto err;
                goto pre;
            case 'h':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("halftone") && (__s1_len = strlen (category), __s2_len = strlen ("halftone"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("halftone") + 1) - (size_t)(const void *)("halftone") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "halftone") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("halftone") && ((size_t)(const void *)(("halftone") + 1) - (size_t)(const void *)("halftone") == 1) ? __builtin_strcmp (category, "halftone") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("halftone"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("halftone") && ((size_t)(const void *)(("halftone") + 1) - (size_t)(const void *)("halftone") == 1) && (__s2_len = strlen ("halftone"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "halftone") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("halftone"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("halftone"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("halftone"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("halftone"))[3]); } } __result; }))) : __builtin_strcmp (category, "halftone")))); })) {
                    pat = "halftone_(%sdht_%%s)";
                } else
                    goto err;
                goto pre;
            case 'i':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("imageclass") && (__s1_len = strlen (category), __s2_len = strlen ("imageclass"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("imageclass") + 1) - (size_t)(const void *)("imageclass") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "imageclass") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("imageclass") && ((size_t)(const void *)(("imageclass") + 1) - (size_t)(const void *)("imageclass") == 1) ? __builtin_strcmp (category, "imageclass") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("imageclass"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("imageclass") && ((size_t)(const void *)(("imageclass") + 1) - (size_t)(const void *)("imageclass") == 1) && (__s2_len = strlen ("imageclass"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "imageclass") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("imageclass"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("imageclass"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("imageclass"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("imageclass"))[3]); } } __result; }))) : __builtin_strcmp (category, "imageclass")))); })) {
                    list = &pconf->lists.named.sorted_resources;
                    pat = "image_class_(%simage_class_%%s)";
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("imagetype") && (__s1_len = strlen (category), __s2_len = strlen ("imagetype"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("imagetype") + 1) - (size_t)(const void *)("imagetype") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "imagetype") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("imagetype") && ((size_t)(const void *)(("imagetype") + 1) - (size_t)(const void *)("imagetype") == 1) ? __builtin_strcmp (category, "imagetype") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("imagetype"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("imagetype") && ((size_t)(const void *)(("imagetype") + 1) - (size_t)(const void *)("imagetype") == 1) && (__s2_len = strlen ("imagetype"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "imagetype") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("imagetype"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("imagetype"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("imagetype"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("imagetype"))[3]); } } __result; }))) : __builtin_strcmp (category, "imagetype")))); })) {
                    pat = "image_type_(%%s,%simage_type_%%s)";
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("include") && (__s1_len = strlen (category), __s2_len = strlen ("include"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("include") + 1) - (size_t)(const void *)("include") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "include") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("include") && ((size_t)(const void *)(("include") + 1) - (size_t)(const void *)("include") == 1) ? __builtin_strcmp (category, "include") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("include"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("include") && ((size_t)(const void *)(("include") + 1) - (size_t)(const void *)("include") == 1) && (__s2_len = strlen ("include"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "include") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("include"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("include"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("include"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("include"))[3]); } } __result; }))) : __builtin_strcmp (category, "include")))); })) {
                    strcpy(str, item);
                    dev_file_name(str);
                    return read_dev(pconf, str);
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("init") && (__s1_len = strlen (category), __s2_len = strlen ("init"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("init") + 1) - (size_t)(const void *)("init") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "init") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("init") && ((size_t)(const void *)(("init") + 1) - (size_t)(const void *)("init") == 1) ? __builtin_strcmp (category, "init") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("init"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("init") && ((size_t)(const void *)(("init") + 1) - (size_t)(const void *)("init") == 1) && (__s2_len = strlen ("init"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "init") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("init"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("init"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("init"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("init"))[3]); } } __result; }))) : __builtin_strcmp (category, "init")))); })) {
                    pat = "init_(%s%%s_init)";
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("iodev") && (__s1_len = strlen (category), __s2_len = strlen ("iodev"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("iodev") + 1) - (size_t)(const void *)("iodev") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "iodev") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("iodev") && ((size_t)(const void *)(("iodev") + 1) - (size_t)(const void *)("iodev") == 1) ? __builtin_strcmp (category, "iodev") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("iodev"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("iodev") && ((size_t)(const void *)(("iodev") + 1) - (size_t)(const void *)("iodev") == 1) && (__s2_len = strlen ("iodev"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "iodev") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("iodev"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("iodev"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("iodev"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("iodev"))[3]); } } __result; }))) : __builtin_strcmp (category, "iodev")))); })) {
                    pat = "io_device_(%siodev_%%s)";
                } else
                    goto err;
                goto pre;
            case 'l':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("lib") && (__s1_len = strlen (category), __s2_len = strlen ("lib"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("lib") + 1) - (size_t)(const void *)("lib") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "lib") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("lib") && ((size_t)(const void *)(("lib") + 1) - (size_t)(const void *)("lib") == 1) ? __builtin_strcmp (category, "lib") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("lib"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("lib") && ((size_t)(const void *)(("lib") + 1) - (size_t)(const void *)("lib") == 1) && (__s2_len = strlen ("lib"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "lib") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("lib"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("lib"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("lib"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("lib"))[3]); } } __result; }))) : __builtin_strcmp (category, "lib")))); })) {
                    list = &pconf->lists.named.libs;
                    break;
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("libpath") && (__s1_len = strlen (category), __s2_len = strlen ("libpath"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("libpath") + 1) - (size_t)(const void *)("libpath") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "libpath") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("libpath") && ((size_t)(const void *)(("libpath") + 1) - (size_t)(const void *)("libpath") == 1) ? __builtin_strcmp (category, "libpath") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("libpath"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("libpath") && ((size_t)(const void *)(("libpath") + 1) - (size_t)(const void *)("libpath") == 1) && (__s2_len = strlen ("libpath"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "libpath") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("libpath"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("libpath"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("libpath"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("libpath"))[3]); } } __result; }))) : __builtin_strcmp (category, "libpath")))); })) {
                    list = &pconf->lists.named.libpaths;
                    break;
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("link") && (__s1_len = strlen (category), __s2_len = strlen ("link"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("link") + 1) - (size_t)(const void *)("link") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "link") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("link") && ((size_t)(const void *)(("link") + 1) - (size_t)(const void *)("link") == 1) ? __builtin_strcmp (category, "link") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("link"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("link") && ((size_t)(const void *)(("link") + 1) - (size_t)(const void *)("link") == 1) && (__s2_len = strlen ("link"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "link") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("link"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("link"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("link"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("link"))[3]); } } __result; }))) : __builtin_strcmp (category, "link")))); })) {
                    list = &pconf->lists.named.links;
                    break;
                }
                goto err;
            case 'o':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("obj") && (__s1_len = strlen (category), __s2_len = strlen ("obj"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("obj") + 1) - (size_t)(const void *)("obj") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "obj") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("obj") && ((size_t)(const void *)(("obj") + 1) - (size_t)(const void *)("obj") == 1) ? __builtin_strcmp (category, "obj") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("obj"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("obj") && ((size_t)(const void *)(("obj") + 1) - (size_t)(const void *)("obj") == 1) && (__s2_len = strlen ("obj"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "obj") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("obj"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("obj"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("obj"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("obj"))[3]); } } __result; }))) : __builtin_strcmp (category, "obj")))); })) {
                    list = &pconf->lists.named.objs;
                    strcpy(templat, pconf->file_prefix);
                    strcat(templat, "%s");
                    pat = templat;
                    break;
                }
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("oper") && (__s1_len = strlen (category), __s2_len = strlen ("oper"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("oper") + 1) - (size_t)(const void *)("oper") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "oper") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("oper") && ((size_t)(const void *)(("oper") + 1) - (size_t)(const void *)("oper") == 1) ? __builtin_strcmp (category, "oper") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("oper"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("oper") && ((size_t)(const void *)(("oper") + 1) - (size_t)(const void *)("oper") == 1) && (__s2_len = strlen ("oper"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "oper") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("oper"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("oper"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("oper"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("oper"))[3]); } } __result; }))) : __builtin_strcmp (category, "oper")))); })) {
                    pat = "oper_(%s_op_defs)";
                    break;
                }
                goto err;
            case 'p':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("ps") && (__s1_len = strlen (category), __s2_len = strlen ("ps"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("ps") + 1) - (size_t)(const void *)("ps") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "ps") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("ps") && ((size_t)(const void *)(("ps") + 1) - (size_t)(const void *)("ps") == 1) ? __builtin_strcmp (category, "ps") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("ps"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("ps") && ((size_t)(const void *)(("ps") + 1) - (size_t)(const void *)("ps") == 1) && (__s2_len = strlen ("ps"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "ps") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("ps"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("ps"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("ps"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("ps"))[3]); } } __result; }))) : __builtin_strcmp (category, "ps")))); })) {
                    sprintf(str, "psfile_(\"%s.ps\",%u)",
                            item, (uint)(strlen(item) + 3));
                    item = str;
                    break;
                } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("plugin") && (__s1_len = strlen (category), __s2_len = strlen ("plugin"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("plugin") + 1) - (size_t)(const void *)("plugin") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "plugin") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("plugin") && ((size_t)(const void *)(("plugin") + 1) - (size_t)(const void *)("plugin") == 1) ? __builtin_strcmp (category, "plugin") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("plugin"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("plugin") && ((size_t)(const void *)(("plugin") + 1) - (size_t)(const void *)("plugin") == 1) && (__s2_len = strlen ("plugin"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "plugin") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("plugin"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("plugin"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("plugin"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("plugin"))[3]); } } __result; }))) : __builtin_strcmp (category, "plugin")))); })) {
                    pat = "plugin_(%s%%s_instantiate)";
                    goto pre;
                }
                goto err;
            case 'r':
                if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (category) && __builtin_constant_p ("replace") && (__s1_len = strlen (category), __s2_len = strlen ("replace"), (!((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("replace") + 1) - (size_t)(const void *)("replace") == 1) || __s2_len >= 4)) ? __builtin_strcmp (category, "replace") : (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) && (__s1_len = strlen (category), __s1_len < 4) ? (__builtin_constant_p ("replace") && ((size_t)(const void *)(("replace") + 1) - (size_t)(const void *)("replace") == 1) ? __builtin_strcmp (category, "replace") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("replace"); register int __result = (((const unsigned char *) (const char *) (category))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (category))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (category))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("replace") && ((size_t)(const void *)(("replace") + 1) - (size_t)(const void *)("replace") == 1) && (__s2_len = strlen ("replace"), __s2_len < 4) ? (__builtin_constant_p (category) && ((size_t)(const void *)((category) + 1) - (size_t)(const void *)(category) == 1) ? __builtin_strcmp (category, "replace") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (category); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("replace"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("replace"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("replace"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("replace"))[3]); } } __result; }))) : __builtin_strcmp (category, "replace")))); })) {
                    list = &pconf->replaces;
                    break;
                }
                goto err;

            default:
err: fprintf(stderr, "Definition not recognized: %s %s.\n",
                        category, item);
                exit(1);
        }
        if (pat) {
            sprintf(str, pat, item, item);
            ((strlen(str) < 120) ? (void) (0) : __assert_fail ("strlen(str) < 120", "./base/genconf.c", 872, __PRETTY_FUNCTION__));
            add_item(list, str, file_index);
        } else
            add_item(list, item, file_index);
        return list->mode;
    }
}


string_item_t *
add_item(string_list_t * list, const char *str, int file_index)
{
    char *rstr = malloc(strlen(str) + 1);
    int count = list->count;
    string_item_t *item;

    if (count >= list->max_count) {
        list->max_count <<= 1;
        if (list->max_count < 20)
            list->max_count = 20;
        list->items =
            (string_item_t *) mrealloc(list->items,
                                     (list->max_count >> 1) *
                                     sizeof(string_item_t),
                                     list->max_count *
                                     sizeof(string_item_t));
        ((list->items != ((void*)0)) ? (void) (0) : __assert_fail ("list->items != ((void*)0)", "./base/genconf.c", 898, __PRETTY_FUNCTION__));
    }
    item = &list->items[count];
    item->str = rstr;
    item->index = count;
    item->file_index = file_index;
    strcpy(rstr, str);
    list->count++;
    return item;
}






static int
cmp_index(const void *p1, const void *p2)
{
    const string_item_t *const psi1 = (const string_item_t *)p1;
    const string_item_t *const psi2 = (const string_item_t *)p2;
    int cmp = psi1->index - psi2->index;

    return (cmp < 0 ? -1 : cmp > 0 ? 1 : 0);
}
static int
cmp_str(const void *p1, const void *p2)
{
    const string_item_t *const psi1 = (const string_item_t *)p1;
    const string_item_t *const psi2 = (const string_item_t *)p2;

    return __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psi1->str) && __builtin_constant_p (psi2->str) && (__s1_len = strlen (psi1->str), __s2_len = strlen (psi2->str), (!((size_t)(const void *)((psi1->str) + 1) - (size_t)(const void *)(psi1->str) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((psi2->str) + 1) - (size_t)(const void *)(psi2->str) == 1) || __s2_len >= 4)) ? __builtin_strcmp (psi1->str, psi2->str) : (__builtin_constant_p (psi1->str) && ((size_t)(const void *)((psi1->str) + 1) - (size_t)(const void *)(psi1->str) == 1) && (__s1_len = strlen (psi1->str), __s1_len < 4) ? (__builtin_constant_p (psi2->str) && ((size_t)(const void *)((psi2->str) + 1) - (size_t)(const void *)(psi2->str) == 1) ? __builtin_strcmp (psi1->str, psi2->str) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (psi2->str); register int __result = (((const unsigned char *) (const char *) (psi1->str))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psi1->str))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psi1->str))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psi1->str))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (psi2->str) && ((size_t)(const void *)((psi2->str) + 1) - (size_t)(const void *)(psi2->str) == 1) && (__s2_len = strlen (psi2->str), __s2_len < 4) ? (__builtin_constant_p (psi1->str) && ((size_t)(const void *)((psi1->str) + 1) - (size_t)(const void *)(psi1->str) == 1) ? __builtin_strcmp (psi1->str, psi2->str) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psi1->str); register int __result = __s1[0] - ((const unsigned char *) (const char *) (psi2->str))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (psi2->str))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (psi2->str))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (psi2->str))[3]); } } __result; }))) : __builtin_strcmp (psi1->str, psi2->str)))); });
}
void
sort_uniq(string_list_t * list, bool by_index)
{
    string_item_t *strlist = list->items;
    int count = list->count;
    const string_item_t *from;
    string_item_t *to;
    int i;
    bool last = list->mode == uniq_last;

    if (count == 0)
        return;
    qsort((char *)strlist, count, sizeof(string_item_t), cmp_str);
    for (from = to = strlist + 1, i = 1; i < count; from++, i++)
        if (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (from->str) && __builtin_constant_p (to[-1].str) && (__s1_len = strlen (from->str), __s2_len = strlen (to[-1].str), (!((size_t)(const void *)((from->str) + 1) - (size_t)(const void *)(from->str) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((to[-1].str) + 1) - (size_t)(const void *)(to[-1].str) == 1) || __s2_len >= 4)) ? __builtin_strcmp (from->str, to[-1].str) : (__builtin_constant_p (from->str) && ((size_t)(const void *)((from->str) + 1) - (size_t)(const void *)(from->str) == 1) && (__s1_len = strlen (from->str), __s1_len < 4) ? (__builtin_constant_p (to[-1].str) && ((size_t)(const void *)((to[-1].str) + 1) - (size_t)(const void *)(to[-1].str) == 1) ? __builtin_strcmp (from->str, to[-1].str) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (to[-1].str); register int __result = (((const unsigned char *) (const char *) (from->str))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (from->str))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (from->str))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (from->str))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (to[-1].str) && ((size_t)(const void *)((to[-1].str) + 1) - (size_t)(const void *)(to[-1].str) == 1) && (__s2_len = strlen (to[-1].str), __s2_len < 4) ? (__builtin_constant_p (from->str) && ((size_t)(const void *)((from->str) + 1) - (size_t)(const void *)(from->str) == 1) ? __builtin_strcmp (from->str, to[-1].str) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (from->str); register int __result = __s1[0] - ((const unsigned char *) (const char *) (to[-1].str))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (to[-1].str))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (to[-1].str))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (to[-1].str))[3]); } } __result; }))) : __builtin_strcmp (from->str, to[-1].str)))); }))
            *to++ = *from;
        else if ((last ? from->index > to[-1].index :
                  from->index < to[-1].index)
            )
            to[-1] = *from;
    count = to - strlist;
    list->count = count;
    if (by_index)
        qsort((char *)strlist, count, sizeof(string_item_t), cmp_index);
}


void
write_list(FILE * out, const string_list_t * list, const char *pstr)
{
    string_pattern_t pat;

    pat.upper_case = ((bool)0);
    pat.drop_extn = ((bool)0);
    strcpy(pat.pattern, pstr);
    write_list_pattern(out, list, &pat);
}
void
write_list_pattern(FILE * out, const string_list_t * list,
                   const string_pattern_t * pat)
{
    int i;
    char macname[40];
    int plen = strlen(pat->pattern);

    *macname = 0;
    for (i = 0; i < list->count; i++) {
        const char *lstr = list->items[i].str;
        int len = strlen(lstr);
        char *str = malloc(len + 1);
        int xlen = plen + len * 3;
        char *xstr = malloc(xlen + 1);
        char *alist;

        strcpy(str, lstr);
        if (pat->drop_extn) {
            char *dot = str + len;

            while (dot > str && *dot != '.')
                dot--;
            if (dot > str)
                *dot = 0, len = dot - str;
        }
        if (pat->upper_case) {
            char *ptr = str;

            for (; *ptr; ptr++)
                if (((*__ctype_b_loc ())[(int) ((*ptr))] & (unsigned short int) _ISlower))
                    *ptr = (__extension__ ({ int __res; if (sizeof (*ptr) > 1) { if (__builtin_constant_p (*ptr)) { int __c = (*ptr); __res = __c < -128 || __c > 255 ? __c : (*__ctype_toupper_loc ())[__c]; } else __res = toupper (*ptr); } else __res = (*__ctype_toupper_loc ())[(int) (*ptr)]; __res; }));
        }


        sprintf(xstr, pat->pattern, str, str, str);


        alist = (__extension__ (__builtin_constant_p ('(') && !__builtin_constant_p (xstr) && ('(') == '\0' ? (char *) __rawmemchr (xstr, '(') : __builtin_strchr (xstr, '(')));
        if (alist != 0 && alist != xstr && alist[-1] == '_') {
            *alist = 0;
            if (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (xstr) && __builtin_constant_p (macname) && (__s1_len = strlen (xstr), __s2_len = strlen (macname), (!((size_t)(const void *)((xstr) + 1) - (size_t)(const void *)(xstr) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((macname) + 1) - (size_t)(const void *)(macname) == 1) || __s2_len >= 4)) ? __builtin_strcmp (xstr, macname) : (__builtin_constant_p (xstr) && ((size_t)(const void *)((xstr) + 1) - (size_t)(const void *)(xstr) == 1) && (__s1_len = strlen (xstr), __s1_len < 4) ? (__builtin_constant_p (macname) && ((size_t)(const void *)((macname) + 1) - (size_t)(const void *)(macname) == 1) ? __builtin_strcmp (xstr, macname) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (macname); register int __result = (((const unsigned char *) (const char *) (xstr))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (xstr))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (xstr))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (xstr))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (macname) && ((size_t)(const void *)((macname) + 1) - (size_t)(const void *)(macname) == 1) && (__s2_len = strlen (macname), __s2_len < 4) ? (__builtin_constant_p (xstr) && ((size_t)(const void *)((xstr) + 1) - (size_t)(const void *)(xstr) == 1) ? __builtin_strcmp (xstr, macname) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (xstr); register int __result = __s1[0] - ((const unsigned char *) (const char *) (macname))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (macname))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (macname))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (macname))[3]); } } __result; }))) : __builtin_strcmp (xstr, macname)))); })) {
                if (*macname)
                    fputs("#endif\n", out);
                fprintf(out, "#ifdef %s\n", xstr);
                strcpy(macname, xstr);
            }
            *alist = '(';
        } else {
            if (*macname) {
                fputs("#endif\n", out);
                *macname = 0;
            }
        }
        fputs(xstr, out);
        free(xstr);
        free(str);
    }
    if (*macname)
        fputs("#endif\n", out);
}
