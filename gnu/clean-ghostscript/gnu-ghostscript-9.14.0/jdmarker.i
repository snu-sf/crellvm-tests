# 1 "./obj/jdmarker.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./obj/jdmarker.c" 2
# 17 "./obj/jdmarker.c"
# 1 "./obj/jinclude.h" 1
# 20 "./obj/jinclude.h"
# 1 "./obj/jconfig.h" 1
# 303 "./obj/jconfig.h"
typedef unsigned char byte;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
# 323 "./obj/jconfig.h"
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
# 324 "./obj/jconfig.h" 2
# 344 "./obj/jconfig.h"
typedef int bool;
# 381 "./obj/jconfig.h"
typedef const char *ptr_ord_t;
# 440 "./obj/jconfig.h"
typedef const char *client_name_t;
# 507 "./obj/jconfig.h"
# 1 "./obj/arch.h" 1
# 508 "./obj/jconfig.h" 2
# 21 "./obj/jinclude.h" 2
# 35 "./obj/jinclude.h"
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
# 36 "./obj/jinclude.h" 2



# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
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
# 40 "./obj/jinclude.h" 2






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
# 47 "./obj/jinclude.h" 2
# 66 "./obj/jinclude.h"
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
# 67 "./obj/jinclude.h" 2
# 18 "./obj/jdmarker.c" 2
# 1 "./obj/jpeglib.h" 1
# 27 "./obj/jpeglib.h"
# 1 "./obj/jmorecfg.h" 1
# 22 "./obj/jmorecfg.h"
# 1 "./obj/jmcorig.h" 1
# 69 "./obj/jmcorig.h"
typedef unsigned char JSAMPLE;
# 151 "./obj/jmcorig.h"
typedef short JCOEF;
# 162 "./obj/jmcorig.h"
typedef unsigned char JOCTET;
# 187 "./obj/jmcorig.h"
typedef unsigned char UINT8;
# 199 "./obj/jmcorig.h"
typedef unsigned short UINT16;







typedef short INT16;
# 216 "./obj/jmcorig.h"
typedef long INT32;
# 229 "./obj/jmcorig.h"
typedef unsigned int JDIMENSION;
# 280 "./obj/jmcorig.h"
typedef void noreturn_t;
# 317 "./obj/jmcorig.h"
typedef enum { FALSE = 0, TRUE = 1 } boolean;
# 23 "./obj/jmorecfg.h" 2
# 28 "./obj/jpeglib.h" 2
# 75 "./obj/jpeglib.h"
typedef JSAMPLE *JSAMPROW;
typedef JSAMPROW *JSAMPARRAY;
typedef JSAMPARRAY *JSAMPIMAGE;

typedef JCOEF JBLOCK[64];
typedef JBLOCK *JBLOCKROW;
typedef JBLOCKROW *JBLOCKARRAY;
typedef JBLOCKARRAY *JBLOCKIMAGE;

typedef JCOEF *JCOEFPTR;







typedef struct {




  UINT16 quantval[64];





  boolean sent_table;
} JQUANT_TBL;




typedef struct {

  UINT8 bits[17];

  UINT8 huffval[256];





  boolean sent_table;
} JHUFF_TBL;




typedef struct {



  int component_id;
  int component_index;
  int h_samp_factor;
  int v_samp_factor;
  int quant_tbl_no;




  int dc_tbl_no;
  int ac_tbl_no;
# 148 "./obj/jpeglib.h"
  JDIMENSION width_in_blocks;
  JDIMENSION height_in_blocks;





  int DCT_h_scaled_size;
  int DCT_v_scaled_size;







  JDIMENSION downsampled_width;
  JDIMENSION downsampled_height;
# 174 "./obj/jpeglib.h"
  boolean component_needed;



  int MCU_width;
  int MCU_height;
  int MCU_blocks;
  int MCU_sample_width;
  int last_col_width;
  int last_row_height;





  JQUANT_TBL * quant_table;


  void * dct_table;
} jpeg_component_info;




typedef struct {
  int comps_in_scan;
  int component_index[4];
  int Ss, Se;
  int Ah, Al;
} jpeg_scan_info;



typedef struct jpeg_marker_struct * jpeg_saved_marker_ptr;

struct jpeg_marker_struct {
  jpeg_saved_marker_ptr next;
  UINT8 marker;
  unsigned int original_length;
  unsigned int data_length;
  JOCTET * data;

};



typedef enum {
 JCS_UNKNOWN,
 JCS_GRAYSCALE,
 JCS_RGB,
 JCS_YCbCr,
 JCS_CMYK,
 JCS_YCCK,
 JCS_BG_RGB,
 JCS_BG_YCC
} J_COLOR_SPACE;



typedef enum {
 JCT_NONE = 0,
 JCT_SUBTRACT_GREEN = 1
} J_COLOR_TRANSFORM;



typedef enum {
 JDCT_ISLOW,
 JDCT_IFAST,
 JDCT_FLOAT
} J_DCT_METHOD;
# 255 "./obj/jpeglib.h"
typedef enum {
 JDITHER_NONE,
 JDITHER_ORDERED,
 JDITHER_FS
} J_DITHER_MODE;
# 276 "./obj/jpeglib.h"
struct jpeg_common_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;




};

typedef struct jpeg_common_struct * j_common_ptr;
typedef struct jpeg_compress_struct * j_compress_ptr;
typedef struct jpeg_decompress_struct * j_decompress_ptr;




struct jpeg_compress_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;


  struct jpeg_destination_mgr * dest;






  JDIMENSION image_width;
  JDIMENSION image_height;
  int input_components;
  J_COLOR_SPACE in_color_space;

  double input_gamma;
# 317 "./obj/jpeglib.h"
  unsigned int scale_num, scale_denom;

  JDIMENSION jpeg_width;
  JDIMENSION jpeg_height;







  int data_precision;

  int num_components;
  J_COLOR_SPACE jpeg_color_space;

  jpeg_component_info * comp_info;


  JQUANT_TBL * quant_tbl_ptrs[4];
  int q_scale_factor[4];




  JHUFF_TBL * dc_huff_tbl_ptrs[4];
  JHUFF_TBL * ac_huff_tbl_ptrs[4];


  UINT8 arith_dc_L[16];
  UINT8 arith_dc_U[16];
  UINT8 arith_ac_K[16];

  int num_scans;
  const jpeg_scan_info * scan_info;





  boolean raw_data_in;
  boolean arith_code;
  boolean optimize_coding;
  boolean CCIR601_sampling;
  boolean do_fancy_downsampling;
  int smoothing_factor;
  J_DCT_METHOD dct_method;






  unsigned int restart_interval;
  int restart_in_rows;



  boolean write_JFIF_header;
  UINT8 JFIF_major_version;
  UINT8 JFIF_minor_version;




  UINT8 density_unit;
  UINT16 X_density;
  UINT16 Y_density;
  boolean write_Adobe_marker;

  J_COLOR_TRANSFORM color_transform;







  JDIMENSION next_scanline;
# 404 "./obj/jpeglib.h"
  boolean progressive_mode;
  int max_h_samp_factor;
  int max_v_samp_factor;

  int min_DCT_h_scaled_size;
  int min_DCT_v_scaled_size;

  JDIMENSION total_iMCU_rows;
# 422 "./obj/jpeglib.h"
  int comps_in_scan;
  jpeg_component_info * cur_comp_info[4];


  JDIMENSION MCUs_per_row;
  JDIMENSION MCU_rows_in_scan;

  int blocks_in_MCU;
  int MCU_membership[10];



  int Ss, Se, Ah, Al;

  int block_size;
  const int * natural_order;
  int lim_Se;




  struct jpeg_comp_master * master;
  struct jpeg_c_main_controller * main;
  struct jpeg_c_prep_controller * prep;
  struct jpeg_c_coef_controller * coef;
  struct jpeg_marker_writer * marker;
  struct jpeg_color_converter * cconvert;
  struct jpeg_downsampler * downsample;
  struct jpeg_forward_dct * fdct;
  struct jpeg_entropy_encoder * entropy;
  jpeg_scan_info * script_space;
  int script_space_size;
};




struct jpeg_decompress_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;


  struct jpeg_source_mgr * src;




  JDIMENSION image_width;
  JDIMENSION image_height;
  int num_components;
  J_COLOR_SPACE jpeg_color_space;






  J_COLOR_SPACE out_color_space;

  unsigned int scale_num, scale_denom;

  double output_gamma;

  boolean buffered_image;
  boolean raw_data_out;

  J_DCT_METHOD dct_method;
  boolean do_fancy_upsampling;
  boolean do_block_smoothing;

  boolean quantize_colors;

  J_DITHER_MODE dither_mode;
  boolean two_pass_quantize;
  int desired_number_of_colors;

  boolean enable_1pass_quant;
  boolean enable_external_quant;
  boolean enable_2pass_quant;







  JDIMENSION output_width;
  JDIMENSION output_height;
  int out_color_components;
  int output_components;



  int rec_outbuf_height;
# 526 "./obj/jpeglib.h"
  int actual_number_of_colors;
  JSAMPARRAY colormap;
# 537 "./obj/jpeglib.h"
  JDIMENSION output_scanline;




  int input_scan_number;
  JDIMENSION input_iMCU_row;





  int output_scan_number;
  JDIMENSION output_iMCU_row;
# 559 "./obj/jpeglib.h"
  int (*coef_bits)[64];
# 570 "./obj/jpeglib.h"
  JQUANT_TBL * quant_tbl_ptrs[4];


  JHUFF_TBL * dc_huff_tbl_ptrs[4];
  JHUFF_TBL * ac_huff_tbl_ptrs[4];






  int data_precision;

  jpeg_component_info * comp_info;


  boolean is_baseline;
  boolean progressive_mode;
  boolean arith_code;

  UINT8 arith_dc_L[16];
  UINT8 arith_dc_U[16];
  UINT8 arith_ac_K[16];

  unsigned int restart_interval;




  boolean saw_JFIF_marker;

  UINT8 JFIF_major_version;
  UINT8 JFIF_minor_version;
  UINT8 density_unit;
  UINT16 X_density;
  UINT16 Y_density;
  boolean saw_Adobe_marker;
  UINT8 Adobe_transform;

  J_COLOR_TRANSFORM color_transform;


  boolean CCIR601_sampling;





  jpeg_saved_marker_ptr marker_list;
# 627 "./obj/jpeglib.h"
  int max_h_samp_factor;
  int max_v_samp_factor;

  int min_DCT_h_scaled_size;
  int min_DCT_v_scaled_size;

  JDIMENSION total_iMCU_rows;
# 642 "./obj/jpeglib.h"
  JSAMPLE * sample_range_limit;






  int comps_in_scan;
  jpeg_component_info * cur_comp_info[4];


  JDIMENSION MCUs_per_row;
  JDIMENSION MCU_rows_in_scan;

  int blocks_in_MCU;
  int MCU_membership[64];



  int Ss, Se, Ah, Al;



  int block_size;
  const int * natural_order;
  int lim_Se;





  int unread_marker;




  struct jpeg_decomp_master * master;
  struct jpeg_d_main_controller * main;
  struct jpeg_d_coef_controller * coef;
  struct jpeg_d_post_controller * post;
  struct jpeg_input_controller * inputctl;
  struct jpeg_marker_reader * marker;
  struct jpeg_entropy_decoder * entropy;
  struct jpeg_inverse_dct * idct;
  struct jpeg_upsampler * upsample;
  struct jpeg_color_deconverter * cconvert;
  struct jpeg_color_quantizer * cquantize;
};
# 702 "./obj/jpeglib.h"
struct jpeg_error_mgr {

  noreturn_t (*error_exit) (j_common_ptr cinfo);

  void (*emit_message) (j_common_ptr cinfo, int msg_level);

  void (*output_message) (j_common_ptr cinfo);

  void (*format_message) (j_common_ptr cinfo, char * buffer);


  void (*reset_error_mgr) (j_common_ptr cinfo);




  int msg_code;

  union {
    int i[8];
    char s[80];
  } msg_parm;



  int trace_level;







  long num_warnings;
# 747 "./obj/jpeglib.h"
  const char * const * jpeg_message_table;
  int last_jpeg_message;



  const char * const * addon_message_table;
  int first_addon_message;
  int last_addon_message;
};




struct jpeg_progress_mgr {
  void (*progress_monitor) (j_common_ptr cinfo);

  long pass_counter;
  long pass_limit;
  int completed_passes;
  int total_passes;
};




struct jpeg_destination_mgr {
  JOCTET * next_output_byte;
  size_t free_in_buffer;

  void (*init_destination) (j_compress_ptr cinfo);
  boolean (*empty_output_buffer) (j_compress_ptr cinfo);
  void (*term_destination) (j_compress_ptr cinfo);
};




struct jpeg_source_mgr {
  const JOCTET * next_input_byte;
  size_t bytes_in_buffer;

  void (*init_source) (j_decompress_ptr cinfo);
  boolean (*fill_input_buffer) (j_decompress_ptr cinfo);
  void (*skip_input_data) (j_decompress_ptr cinfo, long num_bytes);
  boolean (*resync_to_restart) (j_decompress_ptr cinfo, int desired);
  void (*term_source) (j_decompress_ptr cinfo);
};
# 811 "./obj/jpeglib.h"
typedef struct jvirt_sarray_control * jvirt_sarray_ptr;
typedef struct jvirt_barray_control * jvirt_barray_ptr;


struct jpeg_memory_mgr {

  void * (*alloc_small) (j_common_ptr cinfo, int pool_id, size_t sizeofobject);

  void * (*alloc_large) (j_common_ptr cinfo, int pool_id, size_t sizeofobject);

  JSAMPARRAY (*alloc_sarray) (j_common_ptr cinfo, int pool_id, JDIMENSION samplesperrow, JDIMENSION numrows);


  JBLOCKARRAY (*alloc_barray) (j_common_ptr cinfo, int pool_id, JDIMENSION blocksperrow, JDIMENSION numrows);


  jvirt_sarray_ptr (*request_virt_sarray) (j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION samplesperrow, JDIMENSION numrows, JDIMENSION maxaccess);





  jvirt_barray_ptr (*request_virt_barray) (j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION blocksperrow, JDIMENSION numrows, JDIMENSION maxaccess);





  void (*realize_virt_arrays) (j_common_ptr cinfo);
  JSAMPARRAY (*access_virt_sarray) (j_common_ptr cinfo, jvirt_sarray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);




  JBLOCKARRAY (*access_virt_barray) (j_common_ptr cinfo, jvirt_barray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);




  void (*free_pool) (j_common_ptr cinfo, int pool_id);
  void (*self_destruct) (j_common_ptr cinfo);






  long max_memory_to_use;


  long max_alloc_chunk;
};





typedef boolean (*jpeg_marker_parser_method) (j_decompress_ptr cinfo);
# 948 "./obj/jpeglib.h"
extern struct jpeg_error_mgr * jpeg_std_error
 (struct jpeg_error_mgr * err);
# 964 "./obj/jpeglib.h"
extern void jpeg_CreateCompress (j_compress_ptr cinfo, int version, size_t structsize);

extern void jpeg_CreateDecompress (j_decompress_ptr cinfo, int version, size_t structsize);


extern void jpeg_destroy_compress (j_compress_ptr cinfo);
extern void jpeg_destroy_decompress (j_decompress_ptr cinfo);



extern void jpeg_stdio_dest (j_compress_ptr cinfo, FILE * outfile);
extern void jpeg_stdio_src (j_decompress_ptr cinfo, FILE * infile);


extern void jpeg_mem_dest (j_compress_ptr cinfo, unsigned char ** outbuffer, unsigned long * outsize);


extern void jpeg_mem_src (j_decompress_ptr cinfo, const unsigned char * inbuffer, unsigned long insize);




extern void jpeg_set_defaults (j_compress_ptr cinfo);

extern void jpeg_set_colorspace (j_compress_ptr cinfo, J_COLOR_SPACE colorspace);

extern void jpeg_default_colorspace (j_compress_ptr cinfo);
extern void jpeg_set_quality (j_compress_ptr cinfo, int quality, boolean force_baseline);

extern void jpeg_set_linear_quality (j_compress_ptr cinfo, int scale_factor, boolean force_baseline);


extern void jpeg_default_qtables (j_compress_ptr cinfo, boolean force_baseline);

extern void jpeg_add_quant_table (j_compress_ptr cinfo, int which_tbl, const unsigned int *basic_table, int scale_factor, boolean force_baseline);



extern int jpeg_quality_scaling (int quality);
extern void jpeg_simple_progression (j_compress_ptr cinfo);
extern void jpeg_suppress_tables (j_compress_ptr cinfo, boolean suppress);

extern JQUANT_TBL * jpeg_alloc_quant_table (j_common_ptr cinfo);
extern JHUFF_TBL * jpeg_alloc_huff_table (j_common_ptr cinfo);


extern void jpeg_start_compress (j_compress_ptr cinfo, boolean write_all_tables);

extern JDIMENSION jpeg_write_scanlines (j_compress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION num_lines);


extern void jpeg_finish_compress (j_compress_ptr cinfo);


extern void jpeg_calc_jpeg_dimensions (j_compress_ptr cinfo);


extern JDIMENSION jpeg_write_raw_data (j_compress_ptr cinfo, JSAMPIMAGE data, JDIMENSION num_lines);




extern void jpeg_write_marker
 (j_compress_ptr cinfo, int marker, const JOCTET * dataptr, unsigned int datalen);


extern void jpeg_write_m_header
 (j_compress_ptr cinfo, int marker, unsigned int datalen);
extern void jpeg_write_m_byte
 (j_compress_ptr cinfo, int val);


extern void jpeg_write_tables (j_compress_ptr cinfo);


extern int jpeg_read_header (j_decompress_ptr cinfo, boolean require_image);
# 1052 "./obj/jpeglib.h"
extern boolean jpeg_start_decompress (j_decompress_ptr cinfo);
extern JDIMENSION jpeg_read_scanlines (j_decompress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION max_lines);


extern boolean jpeg_finish_decompress (j_decompress_ptr cinfo);


extern JDIMENSION jpeg_read_raw_data (j_decompress_ptr cinfo, JSAMPIMAGE data, JDIMENSION max_lines);




extern boolean jpeg_has_multiple_scans (j_decompress_ptr cinfo);
extern boolean jpeg_start_output (j_decompress_ptr cinfo, int scan_number);

extern boolean jpeg_finish_output (j_decompress_ptr cinfo);
extern boolean jpeg_input_complete (j_decompress_ptr cinfo);
extern void jpeg_new_colormap (j_decompress_ptr cinfo);
extern int jpeg_consume_input (j_decompress_ptr cinfo);
# 1079 "./obj/jpeglib.h"
extern void jpeg_core_output_dimensions (j_decompress_ptr cinfo);
extern void jpeg_calc_output_dimensions (j_decompress_ptr cinfo);


extern void jpeg_save_markers
 (j_decompress_ptr cinfo, int marker_code, unsigned int length_limit);



extern void jpeg_set_marker_processor
 (j_decompress_ptr cinfo, int marker_code, jpeg_marker_parser_method routine);



extern jvirt_barray_ptr * jpeg_read_coefficients (j_decompress_ptr cinfo);
extern void jpeg_write_coefficients (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays);

extern void jpeg_copy_critical_parameters (j_decompress_ptr srcinfo, j_compress_ptr dstinfo);
# 1105 "./obj/jpeglib.h"
extern void jpeg_abort_compress (j_compress_ptr cinfo);
extern void jpeg_abort_decompress (j_decompress_ptr cinfo);




extern void jpeg_abort (j_common_ptr cinfo);
extern void jpeg_destroy (j_common_ptr cinfo);


extern boolean jpeg_resync_to_restart (j_decompress_ptr cinfo, int desired);
# 1170 "./obj/jpeglib.h"
# 1 "./jpeg/jpegint.h" 1
# 17 "./jpeg/jpegint.h"
typedef enum {
 JBUF_PASS_THRU,

 JBUF_SAVE_SOURCE,
 JBUF_CRANK_DEST,
 JBUF_SAVE_AND_PASS
} J_BUF_MODE;
# 46 "./jpeg/jpegint.h"
struct jpeg_comp_master {
  void (*prepare_for_pass) (j_compress_ptr cinfo);
  void (*pass_startup) (j_compress_ptr cinfo);
  void (*finish_pass) (j_compress_ptr cinfo);


  boolean call_pass_startup;
  boolean is_last_pass;
};


struct jpeg_c_main_controller {
  void (*start_pass) (j_compress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*process_data) (j_compress_ptr cinfo, JSAMPARRAY input_buf, JDIMENSION *in_row_ctr, JDIMENSION in_rows_avail);


};


struct jpeg_c_prep_controller {
  void (*start_pass) (j_compress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*pre_process_data) (j_compress_ptr cinfo, JSAMPARRAY input_buf, JDIMENSION *in_row_ctr, JDIMENSION in_rows_avail, JSAMPIMAGE output_buf, JDIMENSION *out_row_group_ctr, JDIMENSION out_row_groups_avail);






};


struct jpeg_c_coef_controller {
  void (*start_pass) (j_compress_ptr cinfo, J_BUF_MODE pass_mode);
  boolean (*compress_data) (j_compress_ptr cinfo, JSAMPIMAGE input_buf);

};


struct jpeg_color_converter {
  void (*start_pass) (j_compress_ptr cinfo);
  void (*color_convert) (j_compress_ptr cinfo, JSAMPARRAY input_buf, JSAMPIMAGE output_buf, JDIMENSION output_row, int num_rows);


};


struct jpeg_downsampler {
  void (*start_pass) (j_compress_ptr cinfo);
  void (*downsample) (j_compress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION in_row_index, JSAMPIMAGE output_buf, JDIMENSION out_row_group_index);




  boolean need_context_rows;
};


typedef void (*forward_DCT_ptr) (j_compress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY sample_data, JBLOCKROW coef_blocks, JDIMENSION start_row, JDIMENSION start_col, JDIMENSION num_blocks);





struct jpeg_forward_dct {
  void (*start_pass) (j_compress_ptr cinfo);

  forward_DCT_ptr forward_DCT[10];
};


struct jpeg_entropy_encoder {
  void (*start_pass) (j_compress_ptr cinfo, boolean gather_statistics);
  boolean (*encode_mcu) (j_compress_ptr cinfo, JBLOCKROW *MCU_data);
  void (*finish_pass) (j_compress_ptr cinfo);
};


struct jpeg_marker_writer {
  void (*write_file_header) (j_compress_ptr cinfo);
  void (*write_frame_header) (j_compress_ptr cinfo);
  void (*write_scan_header) (j_compress_ptr cinfo);
  void (*write_file_trailer) (j_compress_ptr cinfo);
  void (*write_tables_only) (j_compress_ptr cinfo);


  void (*write_marker_header) (j_compress_ptr cinfo, int marker, unsigned int datalen);

  void (*write_marker_byte) (j_compress_ptr cinfo, int val);
};





struct jpeg_decomp_master {
  void (*prepare_for_output_pass) (j_decompress_ptr cinfo);
  void (*finish_output_pass) (j_decompress_ptr cinfo);


  boolean is_dummy_pass;
};


struct jpeg_input_controller {
  int (*consume_input) (j_decompress_ptr cinfo);
  void (*reset_input_controller) (j_decompress_ptr cinfo);
  void (*start_input_pass) (j_decompress_ptr cinfo);
  void (*finish_input_pass) (j_decompress_ptr cinfo);


  boolean has_multiple_scans;
  boolean eoi_reached;
};


struct jpeg_d_main_controller {
  void (*start_pass) (j_decompress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*process_data) (j_decompress_ptr cinfo, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail);


};


struct jpeg_d_coef_controller {
  void (*start_input_pass) (j_decompress_ptr cinfo);
  int (*consume_data) (j_decompress_ptr cinfo);
  void (*start_output_pass) (j_decompress_ptr cinfo);
  int (*decompress_data) (j_decompress_ptr cinfo, JSAMPIMAGE output_buf);


  jvirt_barray_ptr *coef_arrays;
};


struct jpeg_d_post_controller {
  void (*start_pass) (j_decompress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*post_process_data) (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail);






};


struct jpeg_marker_reader {
  void (*reset_marker_reader) (j_decompress_ptr cinfo);




  int (*read_markers) (j_decompress_ptr cinfo);

  jpeg_marker_parser_method read_restart_marker;




  boolean saw_SOI;
  boolean saw_SOF;
  int next_restart_num;
  unsigned int discarded_bytes;
};


struct jpeg_entropy_decoder {
  void (*start_pass) (j_decompress_ptr cinfo);
  boolean (*decode_mcu) (j_decompress_ptr cinfo, JBLOCKROW *MCU_data);
  void (*finish_pass) (j_decompress_ptr cinfo);
};


typedef void (*inverse_DCT_method_ptr) (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);




struct jpeg_inverse_dct {
  void (*start_pass) (j_decompress_ptr cinfo);

  inverse_DCT_method_ptr inverse_DCT[10];
};


struct jpeg_upsampler {
  void (*start_pass) (j_decompress_ptr cinfo);
  void (*upsample) (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail);







  boolean need_context_rows;
};


struct jpeg_color_deconverter {
  void (*start_pass) (j_decompress_ptr cinfo);
  void (*color_convert) (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION input_row, JSAMPARRAY output_buf, int num_rows);


};


struct jpeg_color_quantizer {
  void (*start_pass) (j_decompress_ptr cinfo, boolean is_pre_scan);
  void (*color_quantize) (j_decompress_ptr cinfo, JSAMPARRAY input_buf, JSAMPARRAY output_buf, int num_rows);


  void (*finish_pass) (j_decompress_ptr cinfo);
  void (*new_color_map) (j_decompress_ptr cinfo);
};
# 360 "./jpeg/jpegint.h"
extern void jinit_compress_master (j_compress_ptr cinfo);
extern void jinit_c_master_control (j_compress_ptr cinfo, boolean transcode_only);

extern void jinit_c_main_controller (j_compress_ptr cinfo, boolean need_full_buffer);

extern void jinit_c_prep_controller (j_compress_ptr cinfo, boolean need_full_buffer);

extern void jinit_c_coef_controller (j_compress_ptr cinfo, boolean need_full_buffer);

extern void jinit_color_converter (j_compress_ptr cinfo);
extern void jinit_downsampler (j_compress_ptr cinfo);
extern void jinit_forward_dct (j_compress_ptr cinfo);
extern void jinit_huff_encoder (j_compress_ptr cinfo);
extern void jinit_arith_encoder (j_compress_ptr cinfo);
extern void jinit_marker_writer (j_compress_ptr cinfo);

extern void jinit_master_decompress (j_decompress_ptr cinfo);
extern void jinit_d_main_controller (j_decompress_ptr cinfo, boolean need_full_buffer);

extern void jinit_d_coef_controller (j_decompress_ptr cinfo, boolean need_full_buffer);

extern void jinit_d_post_controller (j_decompress_ptr cinfo, boolean need_full_buffer);

extern void jinit_input_controller (j_decompress_ptr cinfo);
extern void jinit_marker_reader (j_decompress_ptr cinfo);
extern void jinit_huff_decoder (j_decompress_ptr cinfo);
extern void jinit_arith_decoder (j_decompress_ptr cinfo);
extern void jinit_inverse_dct (j_decompress_ptr cinfo);
extern void jinit_upsampler (j_decompress_ptr cinfo);
extern void jinit_color_deconverter (j_decompress_ptr cinfo);
extern void jinit_1pass_quantizer (j_decompress_ptr cinfo);
extern void jinit_2pass_quantizer (j_decompress_ptr cinfo);
extern void jinit_merged_upsampler (j_decompress_ptr cinfo);

extern void jinit_memory_mgr (j_common_ptr cinfo);


extern long jdiv_round_up (long a, long b);
extern long jround_up (long a, long b);
extern void jcopy_sample_rows (JSAMPARRAY input_array, int source_row, JSAMPARRAY output_array, int dest_row, int num_rows, JDIMENSION num_cols);


extern void jcopy_block_row (JBLOCKROW input_row, JBLOCKROW output_row, JDIMENSION num_blocks);





extern const int jpeg_natural_order[];
extern const int jpeg_natural_order7[];
extern const int jpeg_natural_order6[];
extern const int jpeg_natural_order5[];
extern const int jpeg_natural_order4[];
extern const int jpeg_natural_order3[];
extern const int jpeg_natural_order2[];


extern const INT32 jpeg_aritab[];
# 1171 "./obj/jpeglib.h" 2
# 1 "./jpeg/jerror.h" 1
# 34 "./jpeg/jerror.h"
typedef enum {





JMSG_NOMESSAGE ,


JERR_BAD_ALIGN_TYPE ,
JERR_BAD_ALLOC_CHUNK ,
JERR_BAD_BUFFER_MODE ,
JERR_BAD_COMPONENT_ID ,
JERR_BAD_CROP_SPEC ,
JERR_BAD_DCT_COEF ,
JERR_BAD_DCTSIZE ,
JERR_BAD_DROP_SAMPLING ,

JERR_BAD_HUFF_TABLE ,
JERR_BAD_IN_COLORSPACE ,
JERR_BAD_J_COLORSPACE ,
JERR_BAD_LENGTH ,
JERR_BAD_LIB_VERSION ,

JERR_BAD_MCU_SIZE ,
JERR_BAD_POOL_ID ,
JERR_BAD_PRECISION ,
JERR_BAD_PROGRESSION ,

JERR_BAD_PROG_SCRIPT ,

JERR_BAD_SAMPLING ,
JERR_BAD_SCAN_SCRIPT ,
JERR_BAD_STATE ,
JERR_BAD_STRUCT_SIZE ,

JERR_BAD_VIRTUAL_ACCESS ,
JERR_BUFFER_SIZE ,
JERR_CANT_SUSPEND ,
JERR_CCIR601_NOTIMPL ,
JERR_COMPONENT_COUNT ,
JERR_CONVERSION_NOTIMPL ,
JERR_DAC_INDEX ,
JERR_DAC_VALUE ,
JERR_DHT_INDEX ,
JERR_DQT_INDEX ,
JERR_EMPTY_IMAGE ,
JERR_EMS_READ ,
JERR_EMS_WRITE ,
JERR_EOI_EXPECTED ,
JERR_FILE_READ ,
JERR_FILE_WRITE ,
JERR_FRACT_SAMPLE_NOTIMPL ,
JERR_HUFF_CLEN_OVERFLOW ,
JERR_HUFF_MISSING_CODE ,
JERR_IMAGE_TOO_BIG ,
JERR_INPUT_EMPTY ,
JERR_INPUT_EOF ,
JERR_MISMATCHED_QUANT_TABLE ,

JERR_MISSING_DATA ,
JERR_MODE_CHANGE ,
JERR_NOTIMPL ,
JERR_NOT_COMPILED ,
JERR_NO_ARITH_TABLE ,
JERR_NO_BACKING_STORE ,
JERR_NO_HUFF_TABLE ,
JERR_NO_IMAGE ,
JERR_NO_QUANT_TABLE ,
JERR_NO_SOI ,
JERR_OUT_OF_MEMORY ,
JERR_QUANT_COMPONENTS ,

JERR_QUANT_FEW_COLORS ,
JERR_QUANT_MANY_COLORS ,
JERR_SOF_BEFORE ,
JERR_SOF_DUPLICATE ,
JERR_SOF_NO_SOS ,
JERR_SOF_UNSUPPORTED ,
JERR_SOI_DUPLICATE ,
JERR_TFILE_CREATE ,
JERR_TFILE_READ ,
JERR_TFILE_SEEK ,
JERR_TFILE_WRITE ,

JERR_TOO_LITTLE_DATA ,
JERR_UNKNOWN_MARKER ,
JERR_VIRTUAL_BUG ,
JERR_WIDTH_OVERFLOW ,
JERR_XMS_READ ,
JERR_XMS_WRITE ,
JMSG_COPYRIGHT ,
JMSG_VERSION ,
JTRC_16BIT_TABLES ,

JTRC_ADOBE ,

JTRC_APP0 ,
JTRC_APP14 ,
JTRC_DAC ,
JTRC_DHT ,
JTRC_DQT ,
JTRC_DRI ,
JTRC_EMS_CLOSE ,
JTRC_EMS_OPEN ,
JTRC_EOI ,
JTRC_HUFFBITS ,
JTRC_JFIF ,
JTRC_JFIF_BADTHUMBNAILSIZE ,

JTRC_JFIF_EXTENSION ,

JTRC_JFIF_THUMBNAIL ,
JTRC_MISC_MARKER ,
JTRC_PARMLESS_MARKER ,
JTRC_QUANTVALS ,
JTRC_QUANT_3_NCOLORS ,
JTRC_QUANT_NCOLORS ,
JTRC_QUANT_SELECTED ,
JTRC_RECOVERY_ACTION ,
JTRC_RST ,
JTRC_SMOOTH_NOTIMPL ,

JTRC_SOF ,
JTRC_SOF_COMPONENT ,
JTRC_SOI ,
JTRC_SOS ,
JTRC_SOS_COMPONENT ,
JTRC_SOS_PARAMS ,
JTRC_TFILE_CLOSE ,
JTRC_TFILE_OPEN ,
JTRC_THUMB_JPEG ,

JTRC_THUMB_PALETTE ,

JTRC_THUMB_RGB ,

JTRC_UNKNOWN_IDS ,

JTRC_XMS_CLOSE ,
JTRC_XMS_OPEN ,
JWRN_ADOBE_XFORM ,
JWRN_ARITH_BAD_CODE ,
JWRN_BOGUS_PROGRESSION ,

JWRN_EXTRANEOUS_DATA ,

JWRN_HIT_MARKER ,
JWRN_HUFF_BAD_CODE ,
JWRN_JFIF_MAJOR ,
JWRN_JPEG_EOF ,
JWRN_MUST_RESYNC ,

JWRN_NOT_SEQUENTIAL ,
JWRN_TOO_MUCH_DATA ,



  JMSG_LASTMSGCODE
} J_MESSAGE_CODE;
# 1172 "./obj/jpeglib.h" 2
# 19 "./obj/jdmarker.c" 2


typedef enum {
  M_SOF0 = 0xc0,
  M_SOF1 = 0xc1,
  M_SOF2 = 0xc2,
  M_SOF3 = 0xc3,

  M_SOF5 = 0xc5,
  M_SOF6 = 0xc6,
  M_SOF7 = 0xc7,

  M_JPG = 0xc8,
  M_SOF9 = 0xc9,
  M_SOF10 = 0xca,
  M_SOF11 = 0xcb,

  M_SOF13 = 0xcd,
  M_SOF14 = 0xce,
  M_SOF15 = 0xcf,

  M_DHT = 0xc4,

  M_DAC = 0xcc,

  M_RST0 = 0xd0,
  M_RST1 = 0xd1,
  M_RST2 = 0xd2,
  M_RST3 = 0xd3,
  M_RST4 = 0xd4,
  M_RST5 = 0xd5,
  M_RST6 = 0xd6,
  M_RST7 = 0xd7,

  M_SOI = 0xd8,
  M_EOI = 0xd9,
  M_SOS = 0xda,
  M_DQT = 0xdb,
  M_DNL = 0xdc,
  M_DRI = 0xdd,
  M_DHP = 0xde,
  M_EXP = 0xdf,

  M_APP0 = 0xe0,
  M_APP1 = 0xe1,
  M_APP2 = 0xe2,
  M_APP3 = 0xe3,
  M_APP4 = 0xe4,
  M_APP5 = 0xe5,
  M_APP6 = 0xe6,
  M_APP7 = 0xe7,
  M_APP8 = 0xe8,
  M_APP9 = 0xe9,
  M_APP10 = 0xea,
  M_APP11 = 0xeb,
  M_APP12 = 0xec,
  M_APP13 = 0xed,
  M_APP14 = 0xee,
  M_APP15 = 0xef,

  M_JPG0 = 0xf0,
  M_JPG8 = 0xf8,
  M_JPG13 = 0xfd,
  M_COM = 0xfe,

  M_TEM = 0x01,

  M_ERROR = 0x100
} JPEG_MARKER;




typedef struct {
  struct jpeg_marker_reader pub;


  jpeg_marker_parser_method process_COM;
  jpeg_marker_parser_method process_APPn[16];


  unsigned int length_limit_COM;
  unsigned int length_limit_APPn[16];


  jpeg_saved_marker_ptr cur_marker;
  unsigned int bytes_read;

} my_marker_reader;

typedef my_marker_reader * my_marker_ptr;
# 198 "./obj/jdmarker.c"
static boolean
get_soi (j_decompress_ptr cinfo)

{
  int i;

  ((cinfo)->err->msg_code = (JTRC_SOI), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  if (cinfo->marker->saw_SOI)
    ((cinfo)->err->msg_code = (JERR_SOI_DUPLICATE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));



  for (i = 0; i < 16; i++) {
    cinfo->arith_dc_L[i] = 0;
    cinfo->arith_dc_U[i] = 1;
    cinfo->arith_ac_K[i] = 5;
  }
  cinfo->restart_interval = 0;



  cinfo->jpeg_color_space = JCS_UNKNOWN;
  cinfo->color_transform = JCT_NONE;
  cinfo->CCIR601_sampling = FALSE;

  cinfo->saw_JFIF_marker = FALSE;
  cinfo->JFIF_major_version = 1;
  cinfo->JFIF_minor_version = 1;
  cinfo->density_unit = 0;
  cinfo->X_density = 1;
  cinfo->Y_density = 1;
  cinfo->saw_Adobe_marker = FALSE;
  cinfo->Adobe_transform = 0;

  cinfo->marker->saw_SOI = TRUE;

  return TRUE;
}


static boolean
get_sof (j_decompress_ptr cinfo, boolean is_baseline, boolean is_prog,
  boolean is_arith)

{
  INT32 length;
  int c, ci, i;
  jpeg_component_info * compptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  cinfo->is_baseline = is_baseline;
  cinfo->progressive_mode = is_prog;
  cinfo->arith_code = is_arith;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->data_precision = (*next_input_byte++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_height = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_height += (*next_input_byte++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_width = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_width += (*next_input_byte++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->num_components = (*next_input_byte++); } while (0);

  length -= 8;

  do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (cinfo->unread_marker); _mp[1] = ((int) cinfo->image_width); _mp[2] = ((int) cinfo->image_height); _mp[3] = (cinfo->num_components); (cinfo)->err->msg_code = (JTRC_SOF); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);



  if (cinfo->marker->saw_SOF)
    ((cinfo)->err->msg_code = (JERR_SOF_DUPLICATE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));




  if (cinfo->image_height <= 0 || cinfo->image_width <= 0 ||
      cinfo->num_components <= 0)
    ((cinfo)->err->msg_code = (JERR_EMPTY_IMAGE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  if (length != (cinfo->num_components * 3))
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  if (cinfo->comp_info == ((void*)0))
    cinfo->comp_info = (jpeg_component_info *) (*cinfo->mem->alloc_small)
   ((j_common_ptr) cinfo, 1,
    cinfo->num_components * ((size_t) sizeof(jpeg_component_info)));

  for (ci = 0; ci < cinfo->num_components; ci++) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);




    for (i = 0, compptr = cinfo->comp_info; i < ci; i++, compptr++) {
      if (c == compptr->component_id) {
 compptr = cinfo->comp_info;
 c = compptr->component_id;
 compptr++;
 for (i = 1; i < ci; i++, compptr++) {
   if (compptr->component_id > c) c = compptr->component_id;
 }
 c++;
 break;
      }
    }
    compptr->component_id = c;
    compptr->component_index = ci;
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
    compptr->h_samp_factor = (c >> 4) & 15;
    compptr->v_samp_factor = (c ) & 15;
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; compptr->quant_tbl_no = (*next_input_byte++); } while (0);

    do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (compptr->component_id); _mp[1] = (compptr->h_samp_factor); _mp[2] = (compptr->v_samp_factor); _mp[3] = (compptr->quant_tbl_no); (cinfo)->err->msg_code = (JTRC_SOF_COMPONENT); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);


  }

  cinfo->marker->saw_SOF = TRUE;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}


static boolean
get_sos (j_decompress_ptr cinfo)

{
  INT32 length;
  int c, ci, i, n;
  jpeg_component_info * compptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  if (! cinfo->marker->saw_SOF)
    ((cinfo)->err->msg_code = (JERR_SOF_BEFORE), __builtin_strncpy ((cinfo)->err->msg_parm.s, ("SOS"), 80), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; n = (*next_input_byte++); } while (0);

  ((cinfo)->err->msg_code = (JTRC_SOS), (cinfo)->err->msg_parm.i[0] = (n), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  if (length != (n * 2 + 6) || n > 4 ||
      (n == 0 && !cinfo->progressive_mode))

    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  cinfo->comps_in_scan = n;



  for (i = 0; i < n; i++) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);






    for (ci = 0; ci < i; ci++) {
      if (c == cinfo->cur_comp_info[ci]->component_id) {
 c = cinfo->cur_comp_info[0]->component_id;
 for (ci = 1; ci < i; ci++) {
   compptr = cinfo->cur_comp_info[ci];
   if (compptr->component_id > c) c = compptr->component_id;
 }
 c++;
 break;
      }
    }

    for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
  ci++, compptr++) {
      if (c == compptr->component_id)
 goto id_found;
    }

    ((cinfo)->err->msg_code = (JERR_BAD_COMPONENT_ID), (cinfo)->err->msg_parm.i[0] = (c), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  id_found:

    cinfo->cur_comp_info[i] = compptr;
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
    compptr->dc_tbl_no = (c >> 4) & 15;
    compptr->ac_tbl_no = (c ) & 15;

    do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (compptr->component_id); _mp[1] = (compptr->dc_tbl_no); _mp[2] = (compptr->ac_tbl_no); (cinfo)->err->msg_code = (JTRC_SOS_COMPONENT); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);

  }


  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
  cinfo->Ss = c;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
  cinfo->Se = c;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
  cinfo->Ah = (c >> 4) & 15;
  cinfo->Al = (c ) & 15;

  do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (cinfo->Ss); _mp[1] = (cinfo->Se); _mp[2] = (cinfo->Ah); _mp[3] = (cinfo->Al); (cinfo)->err->msg_code = (JTRC_SOS_PARAMS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);



  cinfo->marker->next_restart_num = 0;


  if (n) cinfo->input_scan_number++;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}




static boolean
get_dac (j_decompress_ptr cinfo)

{
  INT32 length;
  int index, val;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);
  length -= 2;

  while (length > 0) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; index = (*next_input_byte++); } while (0);
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; val = (*next_input_byte++); } while (0);

    length -= 2;

    ((cinfo)->err->msg_code = (JTRC_DAC), (cinfo)->err->msg_parm.i[0] = (index), (cinfo)->err->msg_parm.i[1] = (val), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    if (index < 0 || index >= (2*16))
      ((cinfo)->err->msg_code = (JERR_DAC_INDEX), (cinfo)->err->msg_parm.i[0] = (index), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

    if (index >= 16) {
      cinfo->arith_ac_K[index-16] = (UINT8) val;
    } else {
      cinfo->arith_dc_L[index] = (UINT8) (val & 0x0F);
      cinfo->arith_dc_U[index] = (UINT8) (val >> 4);
      if (cinfo->arith_dc_L[index] > cinfo->arith_dc_U[index])
 ((cinfo)->err->msg_code = (JERR_DAC_VALUE), (cinfo)->err->msg_parm.i[0] = (val), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
    }
  }

  if (length != 0)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}
# 458 "./obj/jdmarker.c"
static boolean
get_dht (j_decompress_ptr cinfo)

{
  INT32 length;
  UINT8 bits[17];
  UINT8 huffval[256];
  int i, index, count;
  JHUFF_TBL **htblptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);
  length -= 2;

  while (length > 16) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; index = (*next_input_byte++); } while (0);

    ((cinfo)->err->msg_code = (JTRC_DHT), (cinfo)->err->msg_parm.i[0] = (index), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    bits[0] = 0;
    count = 0;
    for (i = 1; i <= 16; i++) {
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; bits[i] = (*next_input_byte++); } while (0);
      count += bits[i];
    }

    length -= 1 + 16;

    do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (bits[1]); _mp[1] = (bits[2]); _mp[2] = (bits[3]); _mp[3] = (bits[4]); _mp[4] = (bits[5]); _mp[5] = (bits[6]); _mp[6] = (bits[7]); _mp[7] = (bits[8]); (cinfo)->err->msg_code = (JTRC_HUFFBITS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (2)); } while (0);


    do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (bits[9]); _mp[1] = (bits[10]); _mp[2] = (bits[11]); _mp[3] = (bits[12]); _mp[4] = (bits[13]); _mp[5] = (bits[14]); _mp[6] = (bits[15]); _mp[7] = (bits[16]); (cinfo)->err->msg_code = (JTRC_HUFFBITS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (2)); } while (0);






    if (count > 256 || ((INT32) count) > length)
      ((cinfo)->err->msg_code = (JERR_BAD_HUFF_TABLE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

    memset((void *)(huffval), 0, (size_t)(((size_t) sizeof(huffval))));

    for (i = 0; i < count; i++)
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; huffval[i] = (*next_input_byte++); } while (0);

    length -= count;

    if (index & 0x10) {
      index -= 0x10;
      htblptr = &cinfo->ac_huff_tbl_ptrs[index];
    } else {
      htblptr = &cinfo->dc_huff_tbl_ptrs[index];
    }

    if (index < 0 || index >= 4)
      ((cinfo)->err->msg_code = (JERR_DHT_INDEX), (cinfo)->err->msg_parm.i[0] = (index), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

    if (*htblptr == ((void*)0))
      *htblptr = jpeg_alloc_huff_table((j_common_ptr) cinfo);

    memcpy((void *)((*htblptr)->bits), (const void *)(bits), (size_t)(((size_t) sizeof((*htblptr)->bits))));
    memcpy((void *)((*htblptr)->huffval), (const void *)(huffval), (size_t)(((size_t) sizeof((*htblptr)->huffval))));
  }

  if (length != 0)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}


static boolean
get_dqt (j_decompress_ptr cinfo)

{
  INT32 length, count, i;
  int n, prec;
  unsigned int tmp;
  JQUANT_TBL *quant_ptr;
  const int *natural_order;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);
  length -= 2;

  while (length > 0) {
    length--;
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; n = (*next_input_byte++); } while (0);
    prec = n >> 4;
    n &= 0x0F;

    ((cinfo)->err->msg_code = (JTRC_DQT), (cinfo)->err->msg_parm.i[0] = (n), (cinfo)->err->msg_parm.i[1] = (prec), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    if (n >= 4)
      ((cinfo)->err->msg_code = (JERR_DQT_INDEX), (cinfo)->err->msg_parm.i[0] = (n), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

    if (cinfo->quant_tbl_ptrs[n] == ((void*)0))
      cinfo->quant_tbl_ptrs[n] = jpeg_alloc_quant_table((j_common_ptr) cinfo);
    quant_ptr = cinfo->quant_tbl_ptrs[n];

    if (prec) {
      if (length < 64 * 2) {

 for (i = 0; i < 64; i++) {
   quant_ptr->quantval[i] = 1;
 }
 count = length >> 1;
      } else
 count = 64;
    } else {
      if (length < 64) {

 for (i = 0; i < 64; i++) {
   quant_ptr->quantval[i] = 1;
 }
 count = length;
      } else
 count = 64;
    }

    switch (count) {
    case (2*2): natural_order = jpeg_natural_order2; break;
    case (3*3): natural_order = jpeg_natural_order3; break;
    case (4*4): natural_order = jpeg_natural_order4; break;
    case (5*5): natural_order = jpeg_natural_order5; break;
    case (6*6): natural_order = jpeg_natural_order6; break;
    case (7*7): natural_order = jpeg_natural_order7; break;
    default: natural_order = jpeg_natural_order; break;
    }

    for (i = 0; i < count; i++) {
      if (prec)
 do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
      else
 do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte++); } while (0);

      quant_ptr->quantval[natural_order[i]] = (UINT16) tmp;
    }

    if (cinfo->err->trace_level >= 2) {
      for (i = 0; i < 64; i += 8) {
 do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (quant_ptr->quantval[i]); _mp[1] = (quant_ptr->quantval[i+1]); _mp[2] = (quant_ptr->quantval[i+2]); _mp[3] = (quant_ptr->quantval[i+3]); _mp[4] = (quant_ptr->quantval[i+4]); _mp[5] = (quant_ptr->quantval[i+5]); _mp[6] = (quant_ptr->quantval[i+6]); _mp[7] = (quant_ptr->quantval[i+7]); (cinfo)->err->msg_code = (JTRC_QUANTVALS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (2)); } while (0);




      }
    }

    length -= count;
    if (prec) length -= count;
  }

  if (length != 0)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}


static boolean
get_dri (j_decompress_ptr cinfo)

{
  INT32 length;
  unsigned int tmp;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);

  if (length != 4)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);

  ((cinfo)->err->msg_code = (JTRC_DRI), (cinfo)->err->msg_parm.i[0] = (tmp), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  cinfo->restart_interval = tmp;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}


static boolean
get_lse (j_decompress_ptr cinfo)

{
  INT32 length;
  unsigned int tmp;
  int cid;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  if (! cinfo->marker->saw_SOF)
    ((cinfo)->err->msg_code = (JERR_SOF_BEFORE), __builtin_strncpy ((cinfo)->err->msg_parm.s, ("LSE"), 80), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  if (cinfo->num_components < 3) goto bad;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);

  if (length != 24)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte++); } while (0);
  if (tmp != 0x0D)
    ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 255) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte++); } while (0);
  if (tmp != 3) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cid = (*next_input_byte++); } while (0);
  if (cid != cinfo->comp_info[1].component_id) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cid = (*next_input_byte++); } while (0);
  if (cid != cinfo->comp_info[0].component_id) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cid = (*next_input_byte++); } while (0);
  if (cid != cinfo->comp_info[2].component_id) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte++); } while (0);
  if (tmp != 0x80) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 0) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 0) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte++); } while (0);
  if (tmp != 0) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 1) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 0) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte++); } while (0);
  if (tmp != 0) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 1) goto bad;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte++); } while (0);
  if (tmp != 0) {
    bad:
    ((cinfo)->err->msg_code = (JERR_CONVERSION_NOTIMPL), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
  }


  cinfo->color_transform = JCT_SUBTRACT_GREEN;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}
# 719 "./obj/jdmarker.c"
static void
examine_app0 (j_decompress_ptr cinfo, JOCTET * data,
       unsigned int datalen, INT32 remaining)




{
  INT32 totallen = (INT32) datalen + remaining;

  if (datalen >= 14 &&
      (data[0]) == 0x4A &&
      (data[1]) == 0x46 &&
      (data[2]) == 0x49 &&
      (data[3]) == 0x46 &&
      (data[4]) == 0) {

    cinfo->saw_JFIF_marker = TRUE;
    cinfo->JFIF_major_version = (data[5]);
    cinfo->JFIF_minor_version = (data[6]);
    cinfo->density_unit = (data[7]);
    cinfo->X_density = ((data[8]) << 8) + (data[9]);
    cinfo->Y_density = ((data[10]) << 8) + (data[11]);







    if (cinfo->JFIF_major_version != 1 && cinfo->JFIF_major_version != 2)
      ((cinfo)->err->msg_code = (JWRN_JFIF_MAJOR), (cinfo)->err->msg_parm.i[0] = (cinfo->JFIF_major_version), (cinfo)->err->msg_parm.i[1] = (cinfo->JFIF_minor_version), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));


    do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (cinfo->JFIF_major_version); _mp[1] = (cinfo->JFIF_minor_version); _mp[2] = (cinfo->X_density); _mp[3] = (cinfo->Y_density); _mp[4] = (cinfo->density_unit); (cinfo)->err->msg_code = (JTRC_JFIF); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);



    if ((data[12]) | (data[13]))
      ((cinfo)->err->msg_code = (JTRC_JFIF_THUMBNAIL), (cinfo)->err->msg_parm.i[0] = ((data[12])), (cinfo)->err->msg_parm.i[1] = ((data[13])), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    totallen -= 14;
    if (totallen !=
 ((INT32)(data[12]) * (INT32)(data[13]) * (INT32) 3))
      ((cinfo)->err->msg_code = (JTRC_JFIF_BADTHUMBNAILSIZE), (cinfo)->err->msg_parm.i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
  } else if (datalen >= 6 &&
      (data[0]) == 0x4A &&
      (data[1]) == 0x46 &&
      (data[2]) == 0x58 &&
      (data[3]) == 0x58 &&
      (data[4]) == 0) {




    switch ((data[5])) {
    case 0x10:
      ((cinfo)->err->msg_code = (JTRC_THUMB_JPEG), (cinfo)->err->msg_parm.i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;
    case 0x11:
      ((cinfo)->err->msg_code = (JTRC_THUMB_PALETTE), (cinfo)->err->msg_parm.i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;
    case 0x13:
      ((cinfo)->err->msg_code = (JTRC_THUMB_RGB), (cinfo)->err->msg_parm.i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;
    default:
      ((cinfo)->err->msg_code = (JTRC_JFIF_EXTENSION), (cinfo)->err->msg_parm.i[0] = ((data[5])), (cinfo)->err->msg_parm.i[1] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

      break;
    }
  } else {

    ((cinfo)->err->msg_code = (JTRC_APP0), (cinfo)->err->msg_parm.i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
  }
}


static void
examine_app14 (j_decompress_ptr cinfo, JOCTET * data,
        unsigned int datalen, INT32 remaining)




{
  unsigned int version, flags0, flags1, transform;

  if (datalen >= 12 &&
      (data[0]) == 0x41 &&
      (data[1]) == 0x64 &&
      (data[2]) == 0x6F &&
      (data[3]) == 0x62 &&
      (data[4]) == 0x65) {

    version = ((data[5]) << 8) + (data[6]);
    flags0 = ((data[7]) << 8) + (data[8]);
    flags1 = ((data[9]) << 8) + (data[10]);
    transform = (data[11]);
    do { int * _mp = (cinfo)->err->msg_parm.i; _mp[0] = (version); _mp[1] = (flags0); _mp[2] = (flags1); _mp[3] = (transform); (cinfo)->err->msg_code = (JTRC_ADOBE); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);
    cinfo->saw_Adobe_marker = TRUE;
    cinfo->Adobe_transform = (UINT8) transform;
  } else {

    ((cinfo)->err->msg_code = (JTRC_APP14), (cinfo)->err->msg_parm.i[0] = ((int) (datalen + remaining)), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
  }
}


static boolean
get_interesting_appn (j_decompress_ptr cinfo)

{
  INT32 length;
  JOCTET b[14];
  unsigned int i, numtoread;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);
  length -= 2;


  if (length >= 14)
    numtoread = 14;
  else if (length > 0)
    numtoread = (unsigned int) length;
  else
    numtoread = 0;
  for (i = 0; i < numtoread; i++)
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; b[i] = (*next_input_byte++); } while (0);
  length -= numtoread;


  switch (cinfo->unread_marker) {
  case M_APP0:
    examine_app0(cinfo, (JOCTET *) b, numtoread, length);
    break;
  case M_APP14:
    examine_app14(cinfo, (JOCTET *) b, numtoread, length);
    break;
  default:

    ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
    break;
  }


  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  if (length > 0)
    (*cinfo->src->skip_input_data) (cinfo, (long) length);

  return TRUE;
}




static boolean
save_marker (j_decompress_ptr cinfo)

{
  my_marker_ptr marker = (my_marker_ptr) cinfo->marker;
  jpeg_saved_marker_ptr cur_marker = marker->cur_marker;
  unsigned int bytes_read, data_length;
  JOCTET * data;
  INT32 length = 0;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  if (cur_marker == ((void*)0)) {

    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);
    length -= 2;
    if (length >= 0) {

      unsigned int limit;
      if (cinfo->unread_marker == (int) M_COM)
 limit = marker->length_limit_COM;
      else
 limit = marker->length_limit_APPn[cinfo->unread_marker - (int) M_APP0];
      if ((unsigned int) length < limit)
 limit = (unsigned int) length;

      cur_marker = (jpeg_saved_marker_ptr)
 (*cinfo->mem->alloc_large) ((j_common_ptr) cinfo, 1,
        ((size_t) sizeof(struct jpeg_marker_struct)) + limit);
      cur_marker->next = ((void*)0);
      cur_marker->marker = (UINT8) cinfo->unread_marker;
      cur_marker->original_length = (unsigned int) length;
      cur_marker->data_length = limit;

      data = cur_marker->data = (JOCTET *) (cur_marker + 1);
      marker->cur_marker = cur_marker;
      marker->bytes_read = 0;
      bytes_read = 0;
      data_length = limit;
    } else {

      bytes_read = data_length = 0;
      data = ((void*)0);
    }
  } else {

    bytes_read = marker->bytes_read;
    data_length = cur_marker->data_length;
    data = cur_marker->data + bytes_read;
  }

  while (bytes_read < data_length) {
    ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
    marker->bytes_read = bytes_read;

    if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); };

    while (bytes_read < data_length && bytes_in_buffer > 0) {
      *data++ = *next_input_byte++;
      bytes_in_buffer--;
      bytes_read++;
    }
  }


  if (cur_marker != ((void*)0)) {

    if (cinfo->marker_list == ((void*)0)) {
      cinfo->marker_list = cur_marker;
    } else {
      jpeg_saved_marker_ptr prev = cinfo->marker_list;
      while (prev->next != ((void*)0))
 prev = prev->next;
      prev->next = cur_marker;
    }

    data = cur_marker->data;
    length = cur_marker->original_length - data_length;
  }

  marker->cur_marker = ((void*)0);


  switch (cinfo->unread_marker) {
  case M_APP0:
    examine_app0(cinfo, data, data_length, length);
    break;
  case M_APP14:
    examine_app14(cinfo, data, data_length, length);
    break;
  default:
    ((cinfo)->err->msg_code = (JTRC_MISC_MARKER), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (cinfo)->err->msg_parm.i[1] = ((int) (data_length + length)), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    break;
  }


  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  if (length > 0)
    (*cinfo->src->skip_input_data) (cinfo, (long) length);

  return TRUE;
}




static boolean
skip_variable (j_decompress_ptr cinfo)

{
  INT32 length;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte++); } while (0);
  length -= 2;

  ((cinfo)->err->msg_code = (JTRC_MISC_MARKER), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (cinfo)->err->msg_parm.i[1] = ((int) length), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  if (length > 0)
    (*cinfo->src->skip_input_data) (cinfo, (long) length);

  return TRUE;
}
# 1010 "./obj/jdmarker.c"
static boolean
next_marker (j_decompress_ptr cinfo)
{
  int c;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  for (;;) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);





    while (c != 0xFF) {
      cinfo->marker->discarded_bytes++;
      ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
    }





    do {
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
    } while (c == 0xFF);
    if (c != 0)
      break;



    cinfo->marker->discarded_bytes += 2;
    ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  }

  if (cinfo->marker->discarded_bytes != 0) {
    ((cinfo)->err->msg_code = (JWRN_EXTRANEOUS_DATA), (cinfo)->err->msg_parm.i[0] = (cinfo->marker->discarded_bytes), (cinfo)->err->msg_parm.i[1] = (c), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));
    cinfo->marker->discarded_bytes = 0;
  }

  cinfo->unread_marker = c;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}


static boolean
first_marker (j_decompress_ptr cinfo)






{
  int c, c2;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return FALSE; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c2 = (*next_input_byte++); } while (0);
  if (c != 0xFF || c2 != (int) M_SOI)
    ((cinfo)->err->msg_code = (JERR_NO_SOI), (cinfo)->err->msg_parm.i[0] = (c), (cinfo)->err->msg_parm.i[1] = (c2), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  cinfo->unread_marker = c2;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return TRUE;
}
# 1093 "./obj/jdmarker.c"
static int
read_markers (j_decompress_ptr cinfo)
{

  for (;;) {


    if (cinfo->unread_marker == 0) {
      if (! cinfo->marker->saw_SOI) {
 if (! first_marker(cinfo))
   return 0;
      } else {
 if (! next_marker(cinfo))
   return 0;
      }
    }




    switch (cinfo->unread_marker) {
    case M_SOI:
      if (! get_soi(cinfo))
 return 0;
      break;

    case M_SOF0:
      if (! get_sof(cinfo, TRUE, FALSE, FALSE))
 return 0;
      break;

    case M_SOF1:
      if (! get_sof(cinfo, FALSE, FALSE, FALSE))
 return 0;
      break;

    case M_SOF2:
      if (! get_sof(cinfo, FALSE, TRUE, FALSE))
 return 0;
      break;

    case M_SOF9:
      if (! get_sof(cinfo, FALSE, FALSE, TRUE))
 return 0;
      break;

    case M_SOF10:
      if (! get_sof(cinfo, FALSE, TRUE, TRUE))
 return 0;
      break;


    case M_SOF3:
    case M_SOF5:
    case M_SOF6:
    case M_SOF7:
    case M_JPG:
    case M_SOF11:
    case M_SOF13:
    case M_SOF14:
    case M_SOF15:
      ((cinfo)->err->msg_code = (JERR_SOF_UNSUPPORTED), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
      break;

    case M_SOS:
      if (! get_sos(cinfo))
 return 0;
      cinfo->unread_marker = 0;
      return 1;

    case M_EOI:
      ((cinfo)->err->msg_code = (JTRC_EOI), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      cinfo->unread_marker = 0;
      return 2;

    case M_DAC:
      if (! get_dac(cinfo))
 return 0;
      break;

    case M_DHT:
      if (! get_dht(cinfo))
 return 0;
      break;

    case M_DQT:
      if (! get_dqt(cinfo))
 return 0;
      break;

    case M_DRI:
      if (! get_dri(cinfo))
 return 0;
      break;

    case M_JPG8:
      if (! get_lse(cinfo))
 return 0;
      break;

    case M_APP0:
    case M_APP1:
    case M_APP2:
    case M_APP3:
    case M_APP4:
    case M_APP5:
    case M_APP6:
    case M_APP7:
    case M_APP8:
    case M_APP9:
    case M_APP10:
    case M_APP11:
    case M_APP12:
    case M_APP13:
    case M_APP14:
    case M_APP15:
      if (! (*((my_marker_ptr) cinfo->marker)->process_APPn[
  cinfo->unread_marker - (int) M_APP0]) (cinfo))
 return 0;
      break;

    case M_COM:
      if (! (*((my_marker_ptr) cinfo->marker)->process_COM) (cinfo))
 return 0;
      break;

    case M_RST0:
    case M_RST1:
    case M_RST2:
    case M_RST3:
    case M_RST4:
    case M_RST5:
    case M_RST6:
    case M_RST7:
    case M_TEM:
      ((cinfo)->err->msg_code = (JTRC_PARMLESS_MARKER), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;

    case M_DNL:
      if (! skip_variable(cinfo))
 return 0;
      break;

    default:





      ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm.i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
      break;
    }

    cinfo->unread_marker = 0;
  }
}
# 1263 "./obj/jdmarker.c"
static boolean
read_restart_marker (j_decompress_ptr cinfo)
{


  if (cinfo->unread_marker == 0) {
    if (! next_marker(cinfo))
      return FALSE;
  }

  if (cinfo->unread_marker ==
      ((int) M_RST0 + cinfo->marker->next_restart_num)) {

    ((cinfo)->err->msg_code = (JTRC_RST), (cinfo)->err->msg_parm.i[0] = (cinfo->marker->next_restart_num), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (3)));
    cinfo->unread_marker = 0;
  } else {


    if (! (*cinfo->src->resync_to_restart) (cinfo,
         cinfo->marker->next_restart_num))
      return FALSE;
  }


  cinfo->marker->next_restart_num = (cinfo->marker->next_restart_num + 1) & 7;

  return TRUE;
}
# 1342 "./obj/jdmarker.c"
boolean
jpeg_resync_to_restart (j_decompress_ptr cinfo, int desired)
{
  int marker = cinfo->unread_marker;
  int action = 1;


  ((cinfo)->err->msg_code = (JWRN_MUST_RESYNC), (cinfo)->err->msg_parm.i[0] = (marker), (cinfo)->err->msg_parm.i[1] = (desired), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));


  for (;;) {
    if (marker < (int) M_SOF0)
      action = 2;
    else if (marker < (int) M_RST0 || marker > (int) M_RST7)
      action = 3;
    else {
      if (marker == ((int) M_RST0 + ((desired+1) & 7)) ||
   marker == ((int) M_RST0 + ((desired+2) & 7)))
 action = 3;
      else if (marker == ((int) M_RST0 + ((desired-1) & 7)) ||
        marker == ((int) M_RST0 + ((desired-2) & 7)))
 action = 2;
      else
 action = 1;
    }
    ((cinfo)->err->msg_code = (JTRC_RECOVERY_ACTION), (cinfo)->err->msg_parm.i[0] = (marker), (cinfo)->err->msg_parm.i[1] = (action), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (4)));
    switch (action) {
    case 1:

      cinfo->unread_marker = 0;
      return TRUE;
    case 2:

      if (! next_marker(cinfo))
 return FALSE;
      marker = cinfo->unread_marker;
      break;
    case 3:


      return TRUE;
    }
  }
}






static void
reset_marker_reader (j_decompress_ptr cinfo)
{
  my_marker_ptr marker = (my_marker_ptr) cinfo->marker;

  cinfo->comp_info = ((void*)0);
  cinfo->input_scan_number = 0;
  cinfo->unread_marker = 0;
  marker->pub.saw_SOI = FALSE;
  marker->pub.saw_SOF = FALSE;
  marker->pub.discarded_bytes = 0;
  marker->cur_marker = ((void*)0);
}







void
jinit_marker_reader (j_decompress_ptr cinfo)
{
  my_marker_ptr marker;
  int i;


  marker = (my_marker_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, 0,
    ((size_t) sizeof(my_marker_reader)));
  cinfo->marker = &marker->pub;

  marker->pub.reset_marker_reader = reset_marker_reader;
  marker->pub.read_markers = read_markers;
  marker->pub.read_restart_marker = read_restart_marker;




  marker->process_COM = skip_variable;
  marker->length_limit_COM = 0;
  for (i = 0; i < 16; i++) {
    marker->process_APPn[i] = skip_variable;
    marker->length_limit_APPn[i] = 0;
  }
  marker->process_APPn[0] = get_interesting_appn;
  marker->process_APPn[14] = get_interesting_appn;

  reset_marker_reader(cinfo);
}
# 1450 "./obj/jdmarker.c"
void
jpeg_save_markers (j_decompress_ptr cinfo, int marker_code,
     unsigned int length_limit)
{
  my_marker_ptr marker = (my_marker_ptr) cinfo->marker;
  long maxlength;
  jpeg_marker_parser_method processor;




  maxlength = cinfo->mem->max_alloc_chunk - ((size_t) sizeof(struct jpeg_marker_struct));
  if (((long) length_limit) > maxlength)
    length_limit = (unsigned int) maxlength;




  if (length_limit) {
    processor = save_marker;

    if (marker_code == (int) M_APP0 && length_limit < 14)
      length_limit = 14;
    else if (marker_code == (int) M_APP14 && length_limit < 12)
      length_limit = 12;
  } else {
    processor = skip_variable;

    if (marker_code == (int) M_APP0 || marker_code == (int) M_APP14)
      processor = get_interesting_appn;
  }

  if (marker_code == (int) M_COM) {
    marker->process_COM = processor;
    marker->length_limit_COM = length_limit;
  } else if (marker_code >= (int) M_APP0 && marker_code <= (int) M_APP15) {
    marker->process_APPn[marker_code - (int) M_APP0] = processor;
    marker->length_limit_APPn[marker_code - (int) M_APP0] = length_limit;
  } else
    ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm.i[0] = (marker_code), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
}
# 1499 "./obj/jdmarker.c"
void
jpeg_set_marker_processor (j_decompress_ptr cinfo, int marker_code,
      jpeg_marker_parser_method routine)
{
  my_marker_ptr marker = (my_marker_ptr) cinfo->marker;

  if (marker_code == (int) M_COM)
    marker->process_COM = routine;
  else if (marker_code >= (int) M_APP0 && marker_code <= (int) M_APP15)
    marker->process_APPn[marker_code - (int) M_APP0] = routine;
  else
    ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm.i[0] = (marker_code), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
}
