# 1 "./obj/jfdctint.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./obj/jfdctint.c" 2
# 45 "./obj/jfdctint.c"
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
# 46 "./obj/jfdctint.c" 2
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
# 47 "./obj/jfdctint.c" 2
# 1 "./jpeg/jdct.h" 1
# 36 "./jpeg/jdct.h"
typedef int DCTELEM;




typedef void (*forward_DCT_method_ptr) (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);


typedef void (*float_DCT_method_ptr) (float * data, JSAMPARRAY sample_data, JDIMENSION start_col);
# 66 "./jpeg/jdct.h"
typedef int ISLOW_MULT_TYPE;

typedef int IFAST_MULT_TYPE;





typedef float FLOAT_MULT_TYPE;
# 169 "./jpeg/jdct.h"
extern void jpeg_fdct_islow
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_ifast
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_float
    (float * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_7x7
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_6x6
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_5x5
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_4x4
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_3x3
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_2x2
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_1x1
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_9x9
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_10x10
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_11x11
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_12x12
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_13x13
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_14x14
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_15x15
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_16x16
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_16x8
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_14x7
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_12x6
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_10x5
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_8x4
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_6x3
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_4x2
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_2x1
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_8x16
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_7x14
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_6x12
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_5x10
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_4x8
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_3x6
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_2x4
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);
extern void jpeg_fdct_1x2
    (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col);

extern void jpeg_idct_islow
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_ifast
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_float
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_7x7
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_6x6
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_5x5
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_4x4
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_3x3
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_2x2
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_1x1
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_9x9
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_10x10
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_11x11
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_12x12
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_13x13
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_14x14
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_15x15
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_16x16
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_16x8
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_14x7
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_12x6
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_10x5
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_8x4
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_6x3
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_4x2
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_2x1
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_8x16
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_7x14
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_6x12
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_5x10
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_4x8
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_3x6
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_2x4
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);

extern void jpeg_idct_1x2
    (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);
# 48 "./obj/jfdctint.c" 2
# 157 "./obj/jfdctint.c"
void
jpeg_fdct_islow (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3;
  INT32 tmp10, tmp11, tmp12, tmp13;
  INT32 z1;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;
# 174 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 8; ctr++) {
    elemptr = sample_data[ctr] + start_col;





    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[7]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[6]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[5]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[4]));

    tmp10 = tmp0 + tmp3;
    tmp12 = tmp0 - tmp3;
    tmp11 = tmp1 + tmp2;
    tmp13 = tmp1 - tmp2;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[7]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[6]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[5]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[4]));


    dataptr[0] = (DCTELEM) ((tmp10 + tmp11 - 8 * 128) << 2);
    dataptr[4] = (DCTELEM) ((tmp10 - tmp11) << 2);

    z1 = ((tmp12 + tmp13) * (((INT32) 4433)));

    z1 += ((INT32) 1) << (13 -2 -1);

    dataptr[2] = (DCTELEM)
      ((z1 + ((tmp12) * (((INT32) 6270)))) >> (13 -2));

    dataptr[6] = (DCTELEM)
      ((z1 - ((tmp13) * (((INT32) 15137)))) >> (13 -2));






    tmp12 = tmp0 + tmp2;
    tmp13 = tmp1 + tmp3;

    z1 = ((tmp12 + tmp13) * (((INT32) 9633)));

    z1 += ((INT32) 1) << (13 -2 -1);

    tmp12 = ((tmp12) * (- ((INT32) 3196)));
    tmp13 = ((tmp13) * (- ((INT32) 16069)));
    tmp12 += z1;
    tmp13 += z1;

    z1 = ((tmp0 + tmp3) * (- ((INT32) 7373)));
    tmp0 = ((tmp0) * (((INT32) 12299)));
    tmp3 = ((tmp3) * (((INT32) 2446)));
    tmp0 += z1 + tmp12;
    tmp3 += z1 + tmp13;

    z1 = ((tmp1 + tmp2) * (- ((INT32) 20995)));
    tmp1 = ((tmp1) * (((INT32) 25172)));
    tmp2 = ((tmp2) * (((INT32) 16819)));
    tmp1 += z1 + tmp13;
    tmp2 += z1 + tmp12;

    dataptr[1] = (DCTELEM) ((tmp0) >> (13 -2));
    dataptr[3] = (DCTELEM) ((tmp1) >> (13 -2));
    dataptr[5] = (DCTELEM) ((tmp2) >> (13 -2));
    dataptr[7] = (DCTELEM) ((tmp3) >> (13 -2));

    dataptr += 8;
  }







  dataptr = data;
  for (ctr = 8 -1; ctr >= 0; ctr--) {




    tmp0 = dataptr[8*0] + dataptr[8*7];
    tmp1 = dataptr[8*1] + dataptr[8*6];
    tmp2 = dataptr[8*2] + dataptr[8*5];
    tmp3 = dataptr[8*3] + dataptr[8*4];


    tmp10 = tmp0 + tmp3 + (((INT32) 1) << (2 -1));
    tmp12 = tmp0 - tmp3;
    tmp11 = tmp1 + tmp2;
    tmp13 = tmp1 - tmp2;

    tmp0 = dataptr[8*0] - dataptr[8*7];
    tmp1 = dataptr[8*1] - dataptr[8*6];
    tmp2 = dataptr[8*2] - dataptr[8*5];
    tmp3 = dataptr[8*3] - dataptr[8*4];

    dataptr[8*0] = (DCTELEM) ((tmp10 + tmp11) >> (2));
    dataptr[8*4] = (DCTELEM) ((tmp10 - tmp11) >> (2));

    z1 = ((tmp12 + tmp13) * (((INT32) 4433)));

    z1 += ((INT32) 1) << (13 +2 -1);

    dataptr[8*2] = (DCTELEM)
      ((z1 + ((tmp12) * (((INT32) 6270)))) >> (13 +2));

    dataptr[8*6] = (DCTELEM)
      ((z1 - ((tmp13) * (((INT32) 15137)))) >> (13 +2));






    tmp12 = tmp0 + tmp2;
    tmp13 = tmp1 + tmp3;

    z1 = ((tmp12 + tmp13) * (((INT32) 9633)));

    z1 += ((INT32) 1) << (13 +2 -1);

    tmp12 = ((tmp12) * (- ((INT32) 3196)));
    tmp13 = ((tmp13) * (- ((INT32) 16069)));
    tmp12 += z1;
    tmp13 += z1;

    z1 = ((tmp0 + tmp3) * (- ((INT32) 7373)));
    tmp0 = ((tmp0) * (((INT32) 12299)));
    tmp3 = ((tmp3) * (((INT32) 2446)));
    tmp0 += z1 + tmp12;
    tmp3 += z1 + tmp13;

    z1 = ((tmp1 + tmp2) * (- ((INT32) 20995)));
    tmp1 = ((tmp1) * (((INT32) 25172)));
    tmp2 = ((tmp2) * (((INT32) 16819)));
    tmp1 += z1 + tmp13;
    tmp2 += z1 + tmp12;

    dataptr[8*1] = (DCTELEM) ((tmp0) >> (13 +2));
    dataptr[8*3] = (DCTELEM) ((tmp1) >> (13 +2));
    dataptr[8*5] = (DCTELEM) ((tmp2) >> (13 +2));
    dataptr[8*7] = (DCTELEM) ((tmp3) >> (13 +2));

    dataptr++;
  }
}
# 334 "./obj/jfdctint.c"
void
jpeg_fdct_7x7 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3;
  INT32 tmp10, tmp11, tmp12;
  INT32 z1, z2, z3;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));







  dataptr = data;
  for (ctr = 0; ctr < 7; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[6]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[5]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[4]));
    tmp3 = ((int) (elemptr[3]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[6]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[5]));
    tmp12 = ((int) (elemptr[2])) - ((int) (elemptr[4]));

    z1 = tmp0 + tmp2;

    dataptr[0] = (DCTELEM)
      ((z1 + tmp1 + tmp3 - 7 * 128) << 2);
    tmp3 += tmp3;
    z1 -= tmp3;
    z1 -= tmp3;
    z1 = ((z1) * (((INT32) ((0.353553391) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp0 - tmp2) * (((INT32) ((0.920609002) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp1 - tmp2) * (((INT32) ((0.314692123) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM) (((z1 + z2 + z3) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    z1 -= z2;
    z2 = ((tmp0 - tmp1) * (((INT32) ((0.881747734) * (((INT32) 1) << 13) + 0.5))));
    dataptr[4] = (DCTELEM)
      (((z2 + z3 - ((tmp1 - tmp3) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[6] = (DCTELEM) (((z1 + z2) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));



    tmp1 = ((tmp10 + tmp11) * (((INT32) ((0.935414347) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 - tmp11) * (((INT32) ((0.170262339) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 - tmp2;
    tmp1 += tmp2;
    tmp2 = ((tmp11 + tmp12) * (- ((INT32) ((1.378756276) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp2;
    tmp3 = ((tmp10 + tmp12) * (((INT32) ((0.613604268) * (((INT32) 1) << 13) + 0.5))));
    tmp0 += tmp3;
    tmp2 += tmp3 + ((tmp12) * (((INT32) ((1.870828693) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr += 8;
  }
# 414 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 7; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*6];
    tmp1 = dataptr[8*1] + dataptr[8*5];
    tmp2 = dataptr[8*2] + dataptr[8*4];
    tmp3 = dataptr[8*3];

    tmp10 = dataptr[8*0] - dataptr[8*6];
    tmp11 = dataptr[8*1] - dataptr[8*5];
    tmp12 = dataptr[8*2] - dataptr[8*4];

    z1 = tmp0 + tmp2;
    dataptr[8*0] = (DCTELEM)
      (((((z1 + tmp1 + tmp3) * (((INT32) ((1.306122449) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp3 += tmp3;
    z1 -= tmp3;
    z1 -= tmp3;
    z1 = ((z1) * (((INT32) ((0.461784020) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp0 - tmp2) * (((INT32) ((1.202428084) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp1 - tmp2) * (((INT32) ((0.411026446) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM) (((z1 + z2 + z3) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    z1 -= z2;
    z2 = ((tmp0 - tmp1) * (((INT32) ((1.151670509) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*4] = (DCTELEM)
      (((z2 + z3 - ((tmp1 - tmp3) * (((INT32) ((0.923568041) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*6] = (DCTELEM) (((z1 + z2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));



    tmp1 = ((tmp10 + tmp11) * (((INT32) ((1.221765677) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 - tmp11) * (((INT32) ((0.222383464) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 - tmp2;
    tmp1 += tmp2;
    tmp2 = ((tmp11 + tmp12) * (- ((INT32) ((1.800824523) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp2;
    tmp3 = ((tmp10 + tmp12) * (((INT32) ((0.801442310) * (((INT32) 1) << 13) + 0.5))));
    tmp0 += tmp3;
    tmp2 += tmp3 + ((tmp12) * (((INT32) ((2.443531355) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
  }
}






void
jpeg_fdct_6x6 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2;
  INT32 tmp10, tmp11, tmp12;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));







  dataptr = data;
  for (ctr = 0; ctr < 6; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[5]));
    tmp11 = ((int) (elemptr[1])) + ((int) (elemptr[4]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[3]));

    tmp10 = tmp0 + tmp2;
    tmp12 = tmp0 - tmp2;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[5]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[4]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[3]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 - 6 * 128) << 2);
    dataptr[2] = (DCTELEM)
      (((((tmp12) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp11) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));




    tmp10 = (((((tmp0 + tmp2) * (((INT32) ((0.366025404) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    dataptr[1] = (DCTELEM) (tmp10 + ((tmp0 + tmp1) << 2));
    dataptr[3] = (DCTELEM) ((tmp0 - tmp1 - tmp2) << 2);
    dataptr[5] = (DCTELEM) (tmp10 + ((tmp2 - tmp1) << 2));

    dataptr += 8;
  }
# 536 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 6; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*5];
    tmp11 = dataptr[8*1] + dataptr[8*4];
    tmp2 = dataptr[8*2] + dataptr[8*3];

    tmp10 = tmp0 + tmp2;
    tmp12 = tmp0 - tmp2;

    tmp0 = dataptr[8*0] - dataptr[8*5];
    tmp1 = dataptr[8*1] - dataptr[8*4];
    tmp2 = dataptr[8*2] - dataptr[8*3];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*2] = (DCTELEM)
      (((((tmp12) * (((INT32) ((2.177324216) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp11) * (((INT32) ((1.257078722) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp10 = ((tmp0 + tmp2) * (((INT32) ((0.650711829) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM)
      (((tmp10 + ((tmp0 + tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*3] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp2) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*5] = (DCTELEM)
      (((tmp10 + ((tmp2 - tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr++;
  }
}






void
jpeg_fdct_5x5 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2;
  INT32 tmp10, tmp11;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 605 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 5; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[4]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[3]));
    tmp2 = ((int) (elemptr[2]));

    tmp10 = tmp0 + tmp1;
    tmp11 = tmp0 - tmp1;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[4]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[3]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp2 - 5 * 128) << (2 +1));
    tmp11 = ((tmp11) * (((INT32) ((0.790569415) * (((INT32) 1) << 13) + 0.5))));
    tmp10 -= tmp2 << 2;
    tmp10 = ((tmp10) * (((INT32) ((0.353553391) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM) (((tmp11 + tmp10) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));
    dataptr[4] = (DCTELEM) (((tmp11 - tmp10) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));



    tmp10 = ((tmp0 + tmp1) * (((INT32) ((0.831253876) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM)
      (((tmp10 + ((tmp0) * (((INT32) ((0.513743148) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));

    dataptr[3] = (DCTELEM)
      (((tmp10 - ((tmp1) * (((INT32) ((2.176250899) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));


    dataptr += 8;
  }
# 652 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 5; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*4];
    tmp1 = dataptr[8*1] + dataptr[8*3];
    tmp2 = dataptr[8*2];

    tmp10 = tmp0 + tmp1;
    tmp11 = tmp0 - tmp1;

    tmp0 = dataptr[8*0] - dataptr[8*4];
    tmp1 = dataptr[8*1] - dataptr[8*3];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp2) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp11 = ((tmp11) * (((INT32) ((1.011928851) * (((INT32) 1) << 13) + 0.5))));
    tmp10 -= tmp2 << 2;
    tmp10 = ((tmp10) * (((INT32) ((0.452548340) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM) (((tmp11 + tmp10) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*4] = (DCTELEM) (((tmp11 - tmp10) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));



    tmp10 = ((tmp0 + tmp1) * (((INT32) ((1.064004961) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM)
      (((tmp10 + ((tmp0) * (((INT32) ((0.657591230) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*3] = (DCTELEM)
      (((tmp10 - ((tmp1) * (((INT32) ((2.785601151) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr++;
  }
}






void
jpeg_fdct_4x4 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1;
  INT32 tmp10, tmp11;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 715 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 4; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[3]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[2]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[3]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[2]));


    dataptr[0] = (DCTELEM)
      ((tmp0 + tmp1 - 4 * 128) << (2 +2));
    dataptr[2] = (DCTELEM) ((tmp0 - tmp1) << (2 +2));



    tmp0 = ((tmp10 + tmp11) * (((INT32) 4433)));

    tmp0 += ((INT32) 1) << (13 -2 -3);

    dataptr[1] = (DCTELEM)
      ((tmp0 + ((tmp10) * (((INT32) 6270)))) >> (13 -2 -2));

    dataptr[3] = (DCTELEM)
      ((tmp0 - ((tmp11) * (((INT32) 15137)))) >> (13 -2 -2));


    dataptr += 8;
  }







  dataptr = data;
  for (ctr = 0; ctr < 4; ctr++) {



    tmp0 = dataptr[8*0] + dataptr[8*3] + (((INT32) 1) << (2 -1));
    tmp1 = dataptr[8*1] + dataptr[8*2];

    tmp10 = dataptr[8*0] - dataptr[8*3];
    tmp11 = dataptr[8*1] - dataptr[8*2];

    dataptr[8*0] = (DCTELEM) ((tmp0 + tmp1) >> (2));
    dataptr[8*2] = (DCTELEM) ((tmp0 - tmp1) >> (2));



    tmp0 = ((tmp10 + tmp11) * (((INT32) 4433)));

    tmp0 += ((INT32) 1) << (13 +2 -1);

    dataptr[8*1] = (DCTELEM)
      ((tmp0 + ((tmp10) * (((INT32) 6270)))) >> (13 +2));

    dataptr[8*3] = (DCTELEM)
      ((tmp0 - ((tmp11) * (((INT32) 15137)))) >> (13 +2));


    dataptr++;
  }
}






void
jpeg_fdct_3x3 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 810 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 3; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[2]));
    tmp1 = ((int) (elemptr[1]));

    tmp2 = ((int) (elemptr[0])) - ((int) (elemptr[2]));


    dataptr[0] = (DCTELEM)
      ((tmp0 + tmp1 - 3 * 128) << (2 +2));
    dataptr[2] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp1) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -2)-1))) >> (13 -2 -2));




    dataptr[1] = (DCTELEM)
      (((((tmp2) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -2)-1))) >> (13 -2 -2));


    dataptr += 8;
  }
# 845 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 3; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*2];
    tmp1 = dataptr[8*1];

    tmp2 = dataptr[8*0] - dataptr[8*2];

    dataptr[8*0] = (DCTELEM)
      (((((tmp0 + tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*2] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp1) * (((INT32) ((1.257078722) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    dataptr[8*1] = (DCTELEM)
      (((((tmp2) * (((INT32) ((2.177324216) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr++;
  }
}






void
jpeg_fdct_2x2 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  DCTELEM tmp0, tmp1, tmp2, tmp3;
  JSAMPROW elemptr;


  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));






  elemptr = sample_data[0] + start_col;

  tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[1]));
  tmp1 = ((int) (elemptr[0])) - ((int) (elemptr[1]));


  elemptr = sample_data[1] + start_col;

  tmp2 = ((int) (elemptr[0])) + ((int) (elemptr[1]));
  tmp3 = ((int) (elemptr[0])) - ((int) (elemptr[1]));
# 908 "./obj/jfdctint.c"
  data[8*0] = (tmp0 + tmp2 - 4 * 128) << 4;
  data[8*1] = (tmp0 - tmp2) << 4;


  data[8*0+1] = (tmp1 + tmp3) << 4;
  data[8*1+1] = (tmp1 - tmp3) << 4;
}






void
jpeg_fdct_1x1 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  DCTELEM dcval;


  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));

  dcval = ((int) (sample_data[0][start_col]));




  data[0] = (dcval - 128) << 6;
}






void
jpeg_fdct_9x9 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4;
  INT32 tmp10, tmp11, tmp12, tmp13;
  INT32 z1, z2;
  DCTELEM workspace[8];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;
# 962 "./obj/jfdctint.c"
  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[8]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[7]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[6]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[5]));
    tmp4 = ((int) (elemptr[4]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[8]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[7]));
    tmp12 = ((int) (elemptr[2])) - ((int) (elemptr[6]));
    tmp13 = ((int) (elemptr[3])) - ((int) (elemptr[5]));

    z1 = tmp0 + tmp2 + tmp3;
    z2 = tmp1 + tmp4;

    dataptr[0] = (DCTELEM) ((z1 + z2 - 9 * 128) << 1);
    dataptr[6] = (DCTELEM)
      (((((z1 - z2 - z2) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    z1 = ((tmp0 - tmp2) * (((INT32) ((1.328926049) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp1 - tmp4 - tmp4) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM)
      (((((tmp2 - tmp3) * (((INT32) ((1.083350441) * (((INT32) 1) << 13) + 0.5)))) + z1 + z2) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    dataptr[4] = (DCTELEM)
      (((((tmp3 - tmp0) * (((INT32) ((0.245575608) * (((INT32) 1) << 13) + 0.5)))) + z1 - z2) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));




    dataptr[3] = (DCTELEM)
      (((((tmp10 - tmp12 - tmp13) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));


    tmp11 = ((tmp11) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = ((tmp10 + tmp12) * (((INT32) ((0.909038955) * (((INT32) 1) << 13) + 0.5))));
    tmp1 = ((tmp10 + tmp13) * (((INT32) ((0.483689525) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp11 + tmp0 + tmp1) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    tmp2 = ((tmp12 - tmp13) * (((INT32) ((1.392728481) * (((INT32) 1) << 13) + 0.5))));

    dataptr[5] = (DCTELEM) (((tmp0 - tmp11 - tmp2) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));
    dataptr[7] = (DCTELEM) (((tmp1 - tmp11 + tmp2) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    ctr++;

    if (ctr != 8) {
      if (ctr == 9)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 1030 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*0];
    tmp1 = dataptr[8*1] + dataptr[8*7];
    tmp2 = dataptr[8*2] + dataptr[8*6];
    tmp3 = dataptr[8*3] + dataptr[8*5];
    tmp4 = dataptr[8*4];

    tmp10 = dataptr[8*0] - wsptr[8*0];
    tmp11 = dataptr[8*1] - dataptr[8*7];
    tmp12 = dataptr[8*2] - dataptr[8*6];
    tmp13 = dataptr[8*3] - dataptr[8*5];

    z1 = tmp0 + tmp2 + tmp3;
    z2 = tmp1 + tmp4;
    dataptr[8*0] = (DCTELEM)
      (((((z1 + z2) * (((INT32) ((1.580246914) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*6] = (DCTELEM)
      (((((z1 - z2 - z2) * (((INT32) ((1.117403309) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    z1 = ((tmp0 - tmp2) * (((INT32) ((2.100031287) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp1 - tmp4 - tmp4) * (((INT32) ((1.117403309) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM)
      (((((tmp2 - tmp3) * (((INT32) ((1.711961190) * (((INT32) 1) << 13) + 0.5)))) + z1 + z2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*4] = (DCTELEM)
      (((((tmp3 - tmp0) * (((INT32) ((0.388070096) * (((INT32) 1) << 13) + 0.5)))) + z1 - z2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    dataptr[8*3] = (DCTELEM)
      (((((tmp10 - tmp12 - tmp13) * (((INT32) ((1.935399303) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp11 = ((tmp11) * (((INT32) ((1.935399303) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = ((tmp10 + tmp12) * (((INT32) ((1.436506004) * (((INT32) 1) << 13) + 0.5))));
    tmp1 = ((tmp10 + tmp13) * (((INT32) ((0.764348879) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM)
      (((tmp11 + tmp0 + tmp1) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp2 = ((tmp12 - tmp13) * (((INT32) ((2.200854883) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*5] = (DCTELEM)
      (((tmp0 - tmp11 - tmp2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*7] = (DCTELEM)
      (((tmp1 - tmp11 + tmp2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_10x10 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14;
  DCTELEM workspace[8*2];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;
# 1112 "./obj/jfdctint.c"
  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[9]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[8]));
    tmp12 = ((int) (elemptr[2])) + ((int) (elemptr[7]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[6]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[5]));

    tmp10 = tmp0 + tmp4;
    tmp13 = tmp0 - tmp4;
    tmp11 = tmp1 + tmp3;
    tmp14 = tmp1 - tmp3;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[9]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[8]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[7]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[6]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[5]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 + tmp12 - 10 * 128) << 1);
    tmp12 += tmp12;
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.144122806) * (((INT32) 1) << 13) + 0.5)))) - ((tmp11 - tmp12) * (((INT32) ((0.437016024) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));


    tmp10 = ((tmp13 + tmp14) * (((INT32) ((0.831253876) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM)
      (((tmp10 + ((tmp13) * (((INT32) ((0.513743148) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    dataptr[6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((2.176250899) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));




    tmp10 = tmp0 + tmp4;
    tmp11 = tmp1 - tmp3;
    dataptr[5] = (DCTELEM) ((tmp10 - tmp11 - tmp2) << 1);
    tmp2 <<= 13;
    dataptr[1] = (DCTELEM)
      (((((tmp0) * (((INT32) ((1.396802247) * (((INT32) 1) << 13) + 0.5)))) + ((tmp1) * (((INT32) ((1.260073511) * (((INT32) 1) << 13) + 0.5)))) + tmp2 + ((tmp3) * (((INT32) ((0.642039522) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.221231742) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));




    tmp12 = ((tmp0 - tmp4) * (((INT32) ((0.951056516) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp1 + tmp3) * (((INT32) ((0.587785252) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp10 + tmp11) * (((INT32) ((0.309016994) * (((INT32) 1) << 13) + 0.5)))) +
     (tmp11 << (13 - 1)) - tmp2;
    dataptr[3] = (DCTELEM) (((tmp12 + tmp13) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));
    dataptr[7] = (DCTELEM) (((tmp12 - tmp13) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    ctr++;

    if (ctr != 8) {
      if (ctr == 10)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 1188 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*1];
    tmp1 = dataptr[8*1] + wsptr[8*0];
    tmp12 = dataptr[8*2] + dataptr[8*7];
    tmp3 = dataptr[8*3] + dataptr[8*6];
    tmp4 = dataptr[8*4] + dataptr[8*5];

    tmp10 = tmp0 + tmp4;
    tmp13 = tmp0 - tmp4;
    tmp11 = tmp1 + tmp3;
    tmp14 = tmp1 - tmp3;

    tmp0 = dataptr[8*0] - wsptr[8*1];
    tmp1 = dataptr[8*1] - wsptr[8*0];
    tmp2 = dataptr[8*2] - dataptr[8*7];
    tmp3 = dataptr[8*3] - dataptr[8*6];
    tmp4 = dataptr[8*4] - dataptr[8*5];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11 + tmp12) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp12 += tmp12;
    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.464477191) * (((INT32) 1) << 13) + 0.5)))) - ((tmp11 - tmp12) * (((INT32) ((0.559380511) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp10 = ((tmp13 + tmp14) * (((INT32) ((1.064004961) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM)
      (((tmp10 + ((tmp13) * (((INT32) ((0.657591230) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((2.785601151) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp10 = tmp0 + tmp4;
    tmp11 = tmp1 - tmp3;
    dataptr[8*5] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp2) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp2 = ((tmp2) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*1] = (DCTELEM)
      (((((tmp0) * (((INT32) ((1.787906876) * (((INT32) 1) << 13) + 0.5)))) + ((tmp1) * (((INT32) ((1.612894094) * (((INT32) 1) << 13) + 0.5)))) + tmp2 + ((tmp3) * (((INT32) ((0.821810588) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.283176630) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp12 = ((tmp0 - tmp4) * (((INT32) ((1.217352341) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp1 + tmp3) * (((INT32) ((0.752365123) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp10 + tmp11) * (((INT32) ((0.395541753) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp11) * (((INT32) ((0.64) * (((INT32) 1) << 13) + 0.5)))) - tmp2;
    dataptr[8*3] = (DCTELEM) (((tmp12 + tmp13) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*7] = (DCTELEM) (((tmp12 - tmp13) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_11x11 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14;
  INT32 z1, z2, z3;
  DCTELEM workspace[8*3];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;
# 1277 "./obj/jfdctint.c"
  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[10]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[9]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[8]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[7]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[6]));
    tmp5 = ((int) (elemptr[5]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[10]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[9]));
    tmp12 = ((int) (elemptr[2])) - ((int) (elemptr[8]));
    tmp13 = ((int) (elemptr[3])) - ((int) (elemptr[7]));
    tmp14 = ((int) (elemptr[4])) - ((int) (elemptr[6]));


    dataptr[0] = (DCTELEM)
      ((tmp0 + tmp1 + tmp2 + tmp3 + tmp4 + tmp5 - 11 * 128) << 1);
    tmp5 += tmp5;
    tmp0 -= tmp5;
    tmp1 -= tmp5;
    tmp2 -= tmp5;
    tmp3 -= tmp5;
    tmp4 -= tmp5;
    z1 = ((tmp0 + tmp3) * (((INT32) ((1.356927976) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp2 + tmp4) * (((INT32) ((0.201263574) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp1 - tmp3) * (((INT32) ((0.926112931) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp0 - tmp1) * (((INT32) ((1.189712156) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM)
      (((z1 + z2 - ((tmp3) * (((INT32) ((1.018300590) * (((INT32) 1) << 13) + 0.5)))) - ((tmp4) * (((INT32) ((1.390975730) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));


    dataptr[4] = (DCTELEM)
      (((z2 + z3 + ((tmp1) * (((INT32) ((0.062335650) * (((INT32) 1) << 13) + 0.5)))) - ((tmp2) * (((INT32) ((1.356927976) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.587485545) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));



    dataptr[6] = (DCTELEM)
      (((z1 + z3 - ((tmp0) * (((INT32) ((1.620527200) * (((INT32) 1) << 13) + 0.5)))) - ((tmp2) * (((INT32) ((0.788749120) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));





    tmp1 = ((tmp10 + tmp11) * (((INT32) ((1.286413905) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 + tmp12) * (((INT32) ((1.068791298) * (((INT32) 1) << 13) + 0.5))));
    tmp3 = ((tmp10 + tmp13) * (((INT32) ((0.764581576) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 + tmp2 + tmp3 - ((tmp10) * (((INT32) ((1.719967871) * (((INT32) 1) << 13) + 0.5))))
    + ((tmp14) * (((INT32) ((0.398430003) * (((INT32) 1) << 13) + 0.5))));
    tmp4 = ((tmp11 + tmp12) * (- ((INT32) ((0.764581576) * (((INT32) 1) << 13) + 0.5))));
    tmp5 = ((tmp11 + tmp13) * (- ((INT32) ((1.399818907) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp4 + tmp5 + ((tmp11) * (((INT32) ((1.276416582) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp14) * (((INT32) ((1.068791298) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = ((tmp12 + tmp13) * (((INT32) ((0.398430003) * (((INT32) 1) << 13) + 0.5))));
    tmp2 += tmp4 + tmp10 - ((tmp12) * (((INT32) ((1.989053629) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp14) * (((INT32) ((1.399818907) * (((INT32) 1) << 13) + 0.5))));
    tmp3 += tmp5 + tmp10 + ((tmp13) * (((INT32) ((1.305598626) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp14) * (((INT32) ((1.286413905) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));
    dataptr[3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));
    dataptr[5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));
    dataptr[7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13 -1)-1))) >> (13 -1));

    ctr++;

    if (ctr != 8) {
      if (ctr == 11)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 1363 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*2];
    tmp1 = dataptr[8*1] + wsptr[8*1];
    tmp2 = dataptr[8*2] + wsptr[8*0];
    tmp3 = dataptr[8*3] + dataptr[8*7];
    tmp4 = dataptr[8*4] + dataptr[8*6];
    tmp5 = dataptr[8*5];

    tmp10 = dataptr[8*0] - wsptr[8*2];
    tmp11 = dataptr[8*1] - wsptr[8*1];
    tmp12 = dataptr[8*2] - wsptr[8*0];
    tmp13 = dataptr[8*3] - dataptr[8*7];
    tmp14 = dataptr[8*4] - dataptr[8*6];

    dataptr[8*0] = (DCTELEM)
      (((((tmp0 + tmp1 + tmp2 + tmp3 + tmp4 + tmp5) * (((INT32) ((1.057851240) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp5 += tmp5;
    tmp0 -= tmp5;
    tmp1 -= tmp5;
    tmp2 -= tmp5;
    tmp3 -= tmp5;
    tmp4 -= tmp5;
    z1 = ((tmp0 + tmp3) * (((INT32) ((1.435427942) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp2 + tmp4) * (((INT32) ((0.212906922) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp1 - tmp3) * (((INT32) ((0.979689713) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp0 - tmp1) * (((INT32) ((1.258538479) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM)
      (((z1 + z2 - ((tmp3) * (((INT32) ((1.077210542) * (((INT32) 1) << 13) + 0.5)))) - ((tmp4) * (((INT32) ((1.471445400) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr[8*4] = (DCTELEM)
      (((z2 + z3 + ((tmp1) * (((INT32) ((0.065941844) * (((INT32) 1) << 13) + 0.5)))) - ((tmp2) * (((INT32) ((1.435427942) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.621472312) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));



    dataptr[8*6] = (DCTELEM)
      (((z1 + z3 - ((tmp0) * (((INT32) ((1.714276708) * (((INT32) 1) << 13) + 0.5)))) - ((tmp2) * (((INT32) ((0.834379234) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));





    tmp1 = ((tmp10 + tmp11) * (((INT32) ((1.360834544) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 + tmp12) * (((INT32) ((1.130622199) * (((INT32) 1) << 13) + 0.5))));
    tmp3 = ((tmp10 + tmp13) * (((INT32) ((0.808813568) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 + tmp2 + tmp3 - ((tmp10) * (((INT32) ((1.819470145) * (((INT32) 1) << 13) + 0.5))))
    + ((tmp14) * (((INT32) ((0.421479672) * (((INT32) 1) << 13) + 0.5))));
    tmp4 = ((tmp11 + tmp12) * (- ((INT32) ((0.808813568) * (((INT32) 1) << 13) + 0.5))));
    tmp5 = ((tmp11 + tmp13) * (- ((INT32) ((1.480800167) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp4 + tmp5 + ((tmp11) * (((INT32) ((1.350258864) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp14) * (((INT32) ((1.130622199) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = ((tmp12 + tmp13) * (((INT32) ((0.421479672) * (((INT32) 1) << 13) + 0.5))));
    tmp2 += tmp4 + tmp10 - ((tmp12) * (((INT32) ((2.104122847) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp14) * (((INT32) ((1.480800167) * (((INT32) 1) << 13) + 0.5))));
    tmp3 += tmp5 + tmp10 + ((tmp13) * (((INT32) ((1.381129125) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp14) * (((INT32) ((1.360834544) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_12x12 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
  DCTELEM workspace[8*4];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[11]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[10]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[9]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[8]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[7]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[6]));

    tmp10 = tmp0 + tmp5;
    tmp13 = tmp0 - tmp5;
    tmp11 = tmp1 + tmp4;
    tmp14 = tmp1 - tmp4;
    tmp12 = tmp2 + tmp3;
    tmp15 = tmp2 - tmp3;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[11]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[10]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[9]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[8]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[7]));
    tmp5 = ((int) (elemptr[5])) - ((int) (elemptr[6]));


    dataptr[0] = (DCTELEM) (tmp10 + tmp11 + tmp12 - 12 * 128);
    dataptr[6] = (DCTELEM) (tmp13 - tmp14 - tmp15);
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));

    dataptr[2] = (DCTELEM)
      (((tmp14 - tmp15 + ((tmp13 + tmp15) * (((INT32) ((1.366025404) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));




    tmp10 = ((tmp1 + tmp4) * (((INT32) 4433)));
    tmp14 = tmp10 + ((tmp1) * (((INT32) 6270)));
    tmp15 = tmp10 - ((tmp4) * (((INT32) 15137)));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((1.121971054) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((0.860918669) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp12 + tmp13 + tmp14 - ((tmp0) * (((INT32) ((0.580774953) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.184591911) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp2 + tmp3) * (- ((INT32) ((0.184591911) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp11 - tmp15 - ((tmp2) * (((INT32) ((2.339493912) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.860918669) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp11 - tmp14 + ((tmp3) * (((INT32) ((0.725788011) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp5) * (((INT32) ((1.121971054) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = tmp15 + ((tmp0 - tmp3) * (((INT32) ((1.306562965) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp2 + tmp5) * (((INT32) 4433)));

    dataptr[1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13)-1))) >> (13));

    ctr++;

    if (ctr != 8) {
      if (ctr == 12)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 1535 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*3];
    tmp1 = dataptr[8*1] + wsptr[8*2];
    tmp2 = dataptr[8*2] + wsptr[8*1];
    tmp3 = dataptr[8*3] + wsptr[8*0];
    tmp4 = dataptr[8*4] + dataptr[8*7];
    tmp5 = dataptr[8*5] + dataptr[8*6];

    tmp10 = tmp0 + tmp5;
    tmp13 = tmp0 - tmp5;
    tmp11 = tmp1 + tmp4;
    tmp14 = tmp1 - tmp4;
    tmp12 = tmp2 + tmp3;
    tmp15 = tmp2 - tmp3;

    tmp0 = dataptr[8*0] - wsptr[8*3];
    tmp1 = dataptr[8*1] - wsptr[8*2];
    tmp2 = dataptr[8*2] - wsptr[8*1];
    tmp3 = dataptr[8*3] - wsptr[8*0];
    tmp4 = dataptr[8*4] - dataptr[8*7];
    tmp5 = dataptr[8*5] - dataptr[8*6];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11 + tmp12) * (((INT32) ((0.888888889) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));

    dataptr[8*6] = (DCTELEM)
      (((((tmp13 - tmp14 - tmp15) * (((INT32) ((0.888888889) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));

    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.088662108) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));

    dataptr[8*2] = (DCTELEM)
      (((((tmp14 - tmp15) * (((INT32) ((0.888888889) * (((INT32) 1) << 13) + 0.5)))) + ((tmp13 + tmp15) * (((INT32) ((1.214244803) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));





    tmp10 = ((tmp1 + tmp4) * (((INT32) ((0.481063200) * (((INT32) 1) << 13) + 0.5))));
    tmp14 = tmp10 + ((tmp1) * (((INT32) ((0.680326102) * (((INT32) 1) << 13) + 0.5))));
    tmp15 = tmp10 - ((tmp4) * (((INT32) ((1.642452502) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((0.997307603) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((0.765261039) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp12 + tmp13 + tmp14 - ((tmp0) * (((INT32) ((0.516244403) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.164081699) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp2 + tmp3) * (- ((INT32) ((0.164081699) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp11 - tmp15 - ((tmp2) * (((INT32) ((2.079550144) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.765261039) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp11 - tmp14 + ((tmp3) * (((INT32) ((0.645144899) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp5) * (((INT32) ((0.997307603) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = tmp15 + ((tmp0 - tmp3) * (((INT32) ((1.161389302) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp2 + tmp5) * (((INT32) ((0.481063200) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));

    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_13x13 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
  INT32 z1, z2;
  DCTELEM workspace[8*5];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[12]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[11]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[10]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[9]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[8]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[7]));
    tmp6 = ((int) (elemptr[6]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[12]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[11]));
    tmp12 = ((int) (elemptr[2])) - ((int) (elemptr[10]));
    tmp13 = ((int) (elemptr[3])) - ((int) (elemptr[9]));
    tmp14 = ((int) (elemptr[4])) - ((int) (elemptr[8]));
    tmp15 = ((int) (elemptr[5])) - ((int) (elemptr[7]));


    dataptr[0] = (DCTELEM)
      (tmp0 + tmp1 + tmp2 + tmp3 + tmp4 + tmp5 + tmp6 - 13 * 128);
    tmp6 += tmp6;
    tmp0 -= tmp6;
    tmp1 -= tmp6;
    tmp2 -= tmp6;
    tmp3 -= tmp6;
    tmp4 -= tmp6;
    tmp5 -= tmp6;
    dataptr[2] = (DCTELEM)
      (((((tmp0) * (((INT32) ((1.373119086) * (((INT32) 1) << 13) + 0.5)))) + ((tmp1) * (((INT32) ((1.058554052) * (((INT32) 1) << 13) + 0.5)))) + ((tmp2) * (((INT32) ((0.501487041) * (((INT32) 1) << 13) + 0.5)))) - ((tmp3) * (((INT32) ((0.170464608) * (((INT32) 1) << 13) + 0.5)))) - ((tmp4) * (((INT32) ((0.803364869) * (((INT32) 1) << 13) + 0.5)))) - ((tmp5) * (((INT32) ((1.252223920) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));






    z1 = ((tmp0 - tmp2) * (((INT32) ((1.155388986) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp3 - tmp4) * (((INT32) ((0.435816023) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp1 - tmp5) * (((INT32) ((0.316450131) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp0 + tmp2) * (((INT32) ((0.096834934) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp3 + tmp4) * (((INT32) ((0.937303064) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp1 + tmp5) * (((INT32) ((0.486914739) * (((INT32) 1) << 13) + 0.5))));

    dataptr[4] = (DCTELEM) (((z1 + z2) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[6] = (DCTELEM) (((z1 - z2) + (((INT32) 1) << ((13)-1))) >> (13));



    tmp1 = ((tmp10 + tmp11) * (((INT32) ((1.322312651) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 + tmp12) * (((INT32) ((1.163874945) * (((INT32) 1) << 13) + 0.5))));
    tmp3 = ((tmp10 + tmp13) * (((INT32) ((0.937797057) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp14 + tmp15) * (((INT32) ((0.338443458) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 + tmp2 + tmp3 -
    ((tmp10) * (((INT32) ((2.020082300) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp14) * (((INT32) ((0.318774355) * (((INT32) 1) << 13) + 0.5))));
    tmp4 = ((tmp14 - tmp15) * (((INT32) ((0.937797057) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp11 + tmp12) * (((INT32) ((0.338443458) * (((INT32) 1) << 13) + 0.5))));
    tmp5 = ((tmp11 + tmp13) * (- ((INT32) ((1.163874945) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp4 + tmp5 +
     ((tmp11) * (((INT32) ((0.837223564) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp14) * (((INT32) ((2.341699410) * (((INT32) 1) << 13) + 0.5))));
    tmp6 = ((tmp12 + tmp13) * (- ((INT32) ((0.657217813) * (((INT32) 1) << 13) + 0.5))));
    tmp2 += tmp4 + tmp6 -
     ((tmp12) * (((INT32) ((1.572116027) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp15) * (((INT32) ((2.260109708) * (((INT32) 1) << 13) + 0.5))));
    tmp3 += tmp5 + tmp6 +
     ((tmp13) * (((INT32) ((2.205608352) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp15) * (((INT32) ((1.742345811) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13)-1))) >> (13));

    ctr++;

    if (ctr != 8) {
      if (ctr == 13)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 1720 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*4];
    tmp1 = dataptr[8*1] + wsptr[8*3];
    tmp2 = dataptr[8*2] + wsptr[8*2];
    tmp3 = dataptr[8*3] + wsptr[8*1];
    tmp4 = dataptr[8*4] + wsptr[8*0];
    tmp5 = dataptr[8*5] + dataptr[8*7];
    tmp6 = dataptr[8*6];

    tmp10 = dataptr[8*0] - wsptr[8*4];
    tmp11 = dataptr[8*1] - wsptr[8*3];
    tmp12 = dataptr[8*2] - wsptr[8*2];
    tmp13 = dataptr[8*3] - wsptr[8*1];
    tmp14 = dataptr[8*4] - wsptr[8*0];
    tmp15 = dataptr[8*5] - dataptr[8*7];

    dataptr[8*0] = (DCTELEM)
      (((((tmp0 + tmp1 + tmp2 + tmp3 + tmp4 + tmp5 + tmp6) * (((INT32) ((0.757396450) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));


    tmp6 += tmp6;
    tmp0 -= tmp6;
    tmp1 -= tmp6;
    tmp2 -= tmp6;
    tmp3 -= tmp6;
    tmp4 -= tmp6;
    tmp5 -= tmp6;
    dataptr[8*2] = (DCTELEM)
      (((((tmp0) * (((INT32) ((1.039995521) * (((INT32) 1) << 13) + 0.5)))) + ((tmp1) * (((INT32) ((0.801745081) * (((INT32) 1) << 13) + 0.5)))) + ((tmp2) * (((INT32) ((0.379824504) * (((INT32) 1) << 13) + 0.5)))) - ((tmp3) * (((INT32) ((0.129109289) * (((INT32) 1) << 13) + 0.5)))) - ((tmp4) * (((INT32) ((0.608465700) * (((INT32) 1) << 13) + 0.5)))) - ((tmp5) * (((INT32) ((0.948429952) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));






    z1 = ((tmp0 - tmp2) * (((INT32) ((0.875087516) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp3 - tmp4) * (((INT32) ((0.330085509) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp1 - tmp5) * (((INT32) ((0.239678205) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp0 + tmp2) * (((INT32) ((0.073342435) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp3 + tmp4) * (((INT32) ((0.709910013) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp1 + tmp5) * (((INT32) ((0.368787494) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*4] = (DCTELEM) (((z1 + z2) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*6] = (DCTELEM) (((z1 - z2) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));



    tmp1 = ((tmp10 + tmp11) * (((INT32) ((1.001514908) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 + tmp12) * (((INT32) ((0.881514751) * (((INT32) 1) << 13) + 0.5))));
    tmp3 = ((tmp10 + tmp13) * (((INT32) ((0.710284161) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp14 + tmp15) * (((INT32) ((0.256335874) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 + tmp2 + tmp3 -
    ((tmp10) * (((INT32) ((1.530003162) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp14) * (((INT32) ((0.241438564) * (((INT32) 1) << 13) + 0.5))));
    tmp4 = ((tmp14 - tmp15) * (((INT32) ((0.710284161) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp11 + tmp12) * (((INT32) ((0.256335874) * (((INT32) 1) << 13) + 0.5))));
    tmp5 = ((tmp11 + tmp13) * (- ((INT32) ((0.881514751) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp4 + tmp5 +
     ((tmp11) * (((INT32) ((0.634110155) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp14) * (((INT32) ((1.773594819) * (((INT32) 1) << 13) + 0.5))));
    tmp6 = ((tmp12 + tmp13) * (- ((INT32) ((0.497774438) * (((INT32) 1) << 13) + 0.5))));
    tmp2 += tmp4 + tmp6 -
     ((tmp12) * (((INT32) ((1.190715098) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp15) * (((INT32) ((1.711799069) * (((INT32) 1) << 13) + 0.5))));
    tmp3 += tmp5 + tmp6 +
     ((tmp13) * (((INT32) ((1.670519935) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp15) * (((INT32) ((1.319646532) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));
    dataptr[8*7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));

    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_14x14 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16;
  DCTELEM workspace[8*6];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[13]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[12]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[11]));
    tmp13 = ((int) (elemptr[3])) + ((int) (elemptr[10]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[9]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[8]));
    tmp6 = ((int) (elemptr[6])) + ((int) (elemptr[7]));

    tmp10 = tmp0 + tmp6;
    tmp14 = tmp0 - tmp6;
    tmp11 = tmp1 + tmp5;
    tmp15 = tmp1 - tmp5;
    tmp12 = tmp2 + tmp4;
    tmp16 = tmp2 - tmp4;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[13]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[12]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[11]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[10]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[9]));
    tmp5 = ((int) (elemptr[5])) - ((int) (elemptr[8]));
    tmp6 = ((int) (elemptr[6])) - ((int) (elemptr[7]));


    dataptr[0] = (DCTELEM)
      (tmp10 + tmp11 + tmp12 + tmp13 - 14 * 128);
    tmp13 += tmp13;
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((1.274162392) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp13) * (((INT32) ((0.314692123) * (((INT32) 1) << 13) + 0.5)))) - ((tmp12 - tmp13) * (((INT32) ((0.881747734) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));




    tmp10 = ((tmp14 + tmp15) * (((INT32) ((1.105676686) * (((INT32) 1) << 13) + 0.5))));

    dataptr[2] = (DCTELEM)
      (((tmp10 + ((tmp14) * (((INT32) ((0.273079590) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((0.613604268) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));


    dataptr[6] = (DCTELEM)
      (((tmp10 - ((tmp15) * (((INT32) ((1.719280954) * (((INT32) 1) << 13) + 0.5)))) - ((tmp16) * (((INT32) ((1.378756276) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));





    tmp10 = tmp1 + tmp2;
    tmp11 = tmp5 - tmp4;
    dataptr[7] = (DCTELEM) (tmp0 - tmp10 + tmp3 - tmp11 - tmp6);
    tmp3 <<= 13;
    tmp10 = ((tmp10) * (- ((INT32) ((0.158341681) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp11) * (((INT32) ((1.405321284) * (((INT32) 1) << 13) + 0.5))));
    tmp10 += tmp11 - tmp3;
    tmp11 = ((tmp0 + tmp2) * (((INT32) ((1.197448846) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (((INT32) ((0.752406978) * (((INT32) 1) << 13) + 0.5))));
    dataptr[5] = (DCTELEM)
      (((tmp10 + tmp11 - ((tmp2) * (((INT32) ((2.373959773) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((1.119999435) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));


    tmp12 = ((tmp0 + tmp1) * (((INT32) ((1.334852607) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp6) * (((INT32) ((0.467085129) * (((INT32) 1) << 13) + 0.5))));
    dataptr[3] = (DCTELEM)
      (((tmp10 + tmp12 - ((tmp1) * (((INT32) ((0.424103948) * (((INT32) 1) << 13) + 0.5)))) - ((tmp5) * (((INT32) ((3.069855259) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));


    dataptr[1] = (DCTELEM)
      (((tmp11 + tmp12 + tmp3 + tmp6 - ((tmp0 + tmp6) * (((INT32) ((1.126980169) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));



    ctr++;

    if (ctr != 8) {
      if (ctr == 14)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 1918 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*5];
    tmp1 = dataptr[8*1] + wsptr[8*4];
    tmp2 = dataptr[8*2] + wsptr[8*3];
    tmp13 = dataptr[8*3] + wsptr[8*2];
    tmp4 = dataptr[8*4] + wsptr[8*1];
    tmp5 = dataptr[8*5] + wsptr[8*0];
    tmp6 = dataptr[8*6] + dataptr[8*7];

    tmp10 = tmp0 + tmp6;
    tmp14 = tmp0 - tmp6;
    tmp11 = tmp1 + tmp5;
    tmp15 = tmp1 - tmp5;
    tmp12 = tmp2 + tmp4;
    tmp16 = tmp2 - tmp4;

    tmp0 = dataptr[8*0] - wsptr[8*5];
    tmp1 = dataptr[8*1] - wsptr[8*4];
    tmp2 = dataptr[8*2] - wsptr[8*3];
    tmp3 = dataptr[8*3] - wsptr[8*2];
    tmp4 = dataptr[8*4] - wsptr[8*1];
    tmp5 = dataptr[8*5] - wsptr[8*0];
    tmp6 = dataptr[8*6] - dataptr[8*7];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11 + tmp12 + tmp13) * (((INT32) ((0.653061224) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));


    tmp13 += tmp13;
    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((0.832106052) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp13) * (((INT32) ((0.205513223) * (((INT32) 1) << 13) + 0.5)))) - ((tmp12 - tmp13) * (((INT32) ((0.575835255) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));




    tmp10 = ((tmp14 + tmp15) * (((INT32) ((0.722074570) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*2] = (DCTELEM)
      (((tmp10 + ((tmp14) * (((INT32) ((0.178337691) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((0.400721155) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));


    dataptr[8*6] = (DCTELEM)
      (((tmp10 - ((tmp15) * (((INT32) ((1.122795725) * (((INT32) 1) << 13) + 0.5)))) - ((tmp16) * (((INT32) ((0.900412262) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));





    tmp10 = tmp1 + tmp2;
    tmp11 = tmp5 - tmp4;
    dataptr[8*7] = (DCTELEM)
      (((((tmp0 - tmp10 + tmp3 - tmp11 - tmp6) * (((INT32) ((0.653061224) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));


    tmp3 = ((tmp3) * (((INT32) ((0.653061224) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = ((tmp10) * (- ((INT32) ((0.103406812) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp11) * (((INT32) ((0.917760839) * (((INT32) 1) << 13) + 0.5))));
    tmp10 += tmp11 - tmp3;
    tmp11 = ((tmp0 + tmp2) * (((INT32) ((0.782007410) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (((INT32) ((0.491367823) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*5] = (DCTELEM)
      (((tmp10 + tmp11 - ((tmp2) * (((INT32) ((1.550341076) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.731428202) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));


    tmp12 = ((tmp0 + tmp1) * (((INT32) ((0.871740478) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp6) * (((INT32) ((0.305035186) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*3] = (DCTELEM)
      (((tmp10 + tmp12 - ((tmp1) * (((INT32) ((0.276965844) * (((INT32) 1) << 13) + 0.5)))) - ((tmp5) * (((INT32) ((2.004803435) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));


    dataptr[8*1] = (DCTELEM)
      (((tmp11 + tmp12 + tmp3 - ((tmp0) * (((INT32) ((0.735987049) * (((INT32) 1) << 13) + 0.5)))) - ((tmp6) * (((INT32) ((0.082925825) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +1)-1))) >> (13 +1));




    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_15x15 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16;
  INT32 z1, z2, z3;
  DCTELEM workspace[8*7];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[14]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[13]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[12]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[11]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[10]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[9]));
    tmp6 = ((int) (elemptr[6])) + ((int) (elemptr[8]));
    tmp7 = ((int) (elemptr[7]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[14]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[13]));
    tmp12 = ((int) (elemptr[2])) - ((int) (elemptr[12]));
    tmp13 = ((int) (elemptr[3])) - ((int) (elemptr[11]));
    tmp14 = ((int) (elemptr[4])) - ((int) (elemptr[10]));
    tmp15 = ((int) (elemptr[5])) - ((int) (elemptr[9]));
    tmp16 = ((int) (elemptr[6])) - ((int) (elemptr[8]));

    z1 = tmp0 + tmp4 + tmp5;
    z2 = tmp1 + tmp3 + tmp6;
    z3 = tmp2 + tmp7;

    dataptr[0] = (DCTELEM) (z1 + z2 + z3 - 15 * 128);
    z3 += z3;
    dataptr[6] = (DCTELEM)
      (((((z1 - z3) * (((INT32) ((1.144122806) * (((INT32) 1) << 13) + 0.5)))) - ((z2 - z3) * (((INT32) ((0.437016024) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13)-1))) >> (13));


    tmp2 += ((tmp1 + tmp4) >> 1) - tmp7 - tmp7;
    z1 = ((tmp3 - tmp2) * (((INT32) ((1.531135173) * (((INT32) 1) << 13) + 0.5)))) -
         ((tmp6 - tmp2) * (((INT32) ((2.238241955) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp5 - tmp2) * (((INT32) ((0.798468008) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp0 - tmp2) * (((INT32) ((0.091361227) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp0 - tmp3) * (((INT32) ((1.383309603) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp6 - tmp5) * (((INT32) ((0.946293579) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp1 - tmp4) * (((INT32) ((0.790569415) * (((INT32) 1) << 13) + 0.5))));

    dataptr[2] = (DCTELEM) (((z1 + z3) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[4] = (DCTELEM) (((z2 + z3) + (((INT32) 1) << ((13)-1))) >> (13));



    tmp2 = ((tmp10 - tmp12 - tmp13 + tmp15 + tmp16) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))));

    tmp1 = ((tmp10 - tmp14 - tmp15) * (((INT32) ((1.344997024) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp11 - tmp13 - tmp16) * (((INT32) ((0.831253876) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp12) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))));
    tmp4 = ((tmp10 - tmp16) * (((INT32) ((1.406466353) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp11 + tmp14) * (((INT32) ((1.344997024) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp13 + tmp15) * (((INT32) ((0.575212477) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = ((tmp13) * (((INT32) ((0.475753014) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp14) * (((INT32) ((0.513743148) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp16) * (((INT32) ((1.700497885) * (((INT32) 1) << 13) + 0.5)))) + tmp4 + tmp12;
    tmp3 = ((tmp10) * (- ((INT32) ((0.355500862) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp11) * (((INT32) ((2.176250899) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp15) * (((INT32) ((0.869244010) * (((INT32) 1) << 13) + 0.5)))) + tmp4 - tmp12;

    dataptr[1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13)-1))) >> (13));
    dataptr[7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13)-1))) >> (13));

    ctr++;

    if (ctr != 8) {
      if (ctr == 15)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 2111 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*6];
    tmp1 = dataptr[8*1] + wsptr[8*5];
    tmp2 = dataptr[8*2] + wsptr[8*4];
    tmp3 = dataptr[8*3] + wsptr[8*3];
    tmp4 = dataptr[8*4] + wsptr[8*2];
    tmp5 = dataptr[8*5] + wsptr[8*1];
    tmp6 = dataptr[8*6] + wsptr[8*0];
    tmp7 = dataptr[8*7];

    tmp10 = dataptr[8*0] - wsptr[8*6];
    tmp11 = dataptr[8*1] - wsptr[8*5];
    tmp12 = dataptr[8*2] - wsptr[8*4];
    tmp13 = dataptr[8*3] - wsptr[8*3];
    tmp14 = dataptr[8*4] - wsptr[8*2];
    tmp15 = dataptr[8*5] - wsptr[8*1];
    tmp16 = dataptr[8*6] - wsptr[8*0];

    z1 = tmp0 + tmp4 + tmp5;
    z2 = tmp1 + tmp3 + tmp6;
    z3 = tmp2 + tmp7;
    dataptr[8*0] = (DCTELEM)
      (((((z1 + z2 + z3) * (((INT32) ((1.137777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    z3 += z3;
    dataptr[8*6] = (DCTELEM)
      (((((z1 - z3) * (((INT32) ((1.301757503) * (((INT32) 1) << 13) + 0.5)))) - ((z2 - z3) * (((INT32) ((0.497227121) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp2 += ((tmp1 + tmp4) >> 1) - tmp7 - tmp7;
    z1 = ((tmp3 - tmp2) * (((INT32) ((1.742091575) * (((INT32) 1) << 13) + 0.5)))) -
         ((tmp6 - tmp2) * (((INT32) ((2.546621957) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp5 - tmp2) * (((INT32) ((0.908479156) * (((INT32) 1) << 13) + 0.5)))) -
  ((tmp0 - tmp2) * (((INT32) ((0.103948774) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp0 - tmp3) * (((INT32) ((1.573898926) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp6 - tmp5) * (((INT32) ((1.076671805) * (((INT32) 1) << 13) + 0.5)))) +
  ((tmp1 - tmp4) * (((INT32) ((0.899492312) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*2] = (DCTELEM) (((z1 + z3) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*4] = (DCTELEM) (((z2 + z3) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));



    tmp2 = ((tmp10 - tmp12 - tmp13 + tmp15 + tmp16) * (((INT32) ((1.393487498) * (((INT32) 1) << 13) + 0.5))));

    tmp1 = ((tmp10 - tmp14 - tmp15) * (((INT32) ((1.530307725) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp11 - tmp13 - tmp16) * (((INT32) ((0.945782187) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp12) * (((INT32) ((1.393487498) * (((INT32) 1) << 13) + 0.5))));
    tmp4 = ((tmp10 - tmp16) * (((INT32) ((1.600246161) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp11 + tmp14) * (((INT32) ((1.530307725) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp13 + tmp15) * (((INT32) ((0.654463974) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = ((tmp13) * (((INT32) ((0.541301207) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp14) * (((INT32) ((0.584525538) * (((INT32) 1) << 13) + 0.5)))) +
    ((tmp16) * (((INT32) ((1.934788705) * (((INT32) 1) << 13) + 0.5)))) + tmp4 + tmp12;
    tmp3 = ((tmp10) * (- ((INT32) ((0.404480980) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp11) * (((INT32) ((2.476089912) * (((INT32) 1) << 13) + 0.5)))) -
    ((tmp15) * (((INT32) ((0.989006518) * (((INT32) 1) << 13) + 0.5)))) + tmp4 - tmp12;

    dataptr[8*1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
    wsptr++;
  }
}






void
jpeg_fdct_16x16 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17;
  DCTELEM workspace[64];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;
# 2206 "./obj/jfdctint.c"
  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[15]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[14]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[13]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[12]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[11]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[10]));
    tmp6 = ((int) (elemptr[6])) + ((int) (elemptr[9]));
    tmp7 = ((int) (elemptr[7])) + ((int) (elemptr[8]));

    tmp10 = tmp0 + tmp7;
    tmp14 = tmp0 - tmp7;
    tmp11 = tmp1 + tmp6;
    tmp15 = tmp1 - tmp6;
    tmp12 = tmp2 + tmp5;
    tmp16 = tmp2 - tmp5;
    tmp13 = tmp3 + tmp4;
    tmp17 = tmp3 - tmp4;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[15]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[14]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[13]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[12]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[11]));
    tmp5 = ((int) (elemptr[5])) - ((int) (elemptr[10]));
    tmp6 = ((int) (elemptr[6])) - ((int) (elemptr[9]));
    tmp7 = ((int) (elemptr[7])) - ((int) (elemptr[8]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 + tmp12 + tmp13 - 16 * 128) << 2);
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((1.306562965) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp12) * (((INT32) 4433)))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));



    tmp10 = ((tmp17 - tmp15) * (((INT32) ((0.275899379) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp14 - tmp16) * (((INT32) ((1.387039845) * (((INT32) 1) << 13) + 0.5))));

    dataptr[2] = (DCTELEM)
      (((tmp10 + ((tmp15) * (((INT32) ((1.451774982) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((2.172734804) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    dataptr[6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((0.211164243) * (((INT32) 1) << 13) + 0.5)))) - ((tmp17) * (((INT32) ((1.061594338) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));





    tmp11 = ((tmp0 + tmp1) * (((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp7) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 + tmp7) * (((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((1.093201867) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 - tmp7) * (((INT32) ((0.897167586) * (((INT32) 1) << 13) + 0.5))));
    tmp14 = ((tmp1 + tmp2) * (((INT32) ((0.138617169) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp5) * (((INT32) ((1.407403738) * (((INT32) 1) << 13) + 0.5))));
    tmp15 = ((tmp1 + tmp3) * (- ((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (- ((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5))));
    tmp16 = ((tmp2 + tmp3) * (- ((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp4) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp11 + tmp12 + tmp13 -
     ((tmp0) * (((INT32) ((2.286341144) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp7) * (((INT32) ((0.779653625) * (((INT32) 1) << 13) + 0.5))));
    tmp11 += tmp14 + tmp15 + ((tmp1) * (((INT32) ((0.071888074) * (((INT32) 1) << 13) + 0.5))))
      - ((tmp6) * (((INT32) ((1.663905119) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp14 + tmp16 - ((tmp2) * (((INT32) ((1.125726048) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp5) * (((INT32) ((1.227391138) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp15 + tmp16 + ((tmp3) * (((INT32) ((1.065388962) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp4) * (((INT32) ((2.167985692) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    ctr++;

    if (ctr != 8) {
      if (ctr == 8 * 2)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 2306 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*7];
    tmp1 = dataptr[8*1] + wsptr[8*6];
    tmp2 = dataptr[8*2] + wsptr[8*5];
    tmp3 = dataptr[8*3] + wsptr[8*4];
    tmp4 = dataptr[8*4] + wsptr[8*3];
    tmp5 = dataptr[8*5] + wsptr[8*2];
    tmp6 = dataptr[8*6] + wsptr[8*1];
    tmp7 = dataptr[8*7] + wsptr[8*0];

    tmp10 = tmp0 + tmp7;
    tmp14 = tmp0 - tmp7;
    tmp11 = tmp1 + tmp6;
    tmp15 = tmp1 - tmp6;
    tmp12 = tmp2 + tmp5;
    tmp16 = tmp2 - tmp5;
    tmp13 = tmp3 + tmp4;
    tmp17 = tmp3 - tmp4;

    tmp0 = dataptr[8*0] - wsptr[8*7];
    tmp1 = dataptr[8*1] - wsptr[8*6];
    tmp2 = dataptr[8*2] - wsptr[8*5];
    tmp3 = dataptr[8*3] - wsptr[8*4];
    tmp4 = dataptr[8*4] - wsptr[8*3];
    tmp5 = dataptr[8*5] - wsptr[8*2];
    tmp6 = dataptr[8*6] - wsptr[8*1];
    tmp7 = dataptr[8*7] - wsptr[8*0];

    dataptr[8*0] = (DCTELEM)
      (((tmp10 + tmp11 + tmp12 + tmp13) + (((INT32) 1) << ((2 +2)-1))) >> (2 +2));
    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((1.306562965) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp12) * (((INT32) 4433)))) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));



    tmp10 = ((tmp17 - tmp15) * (((INT32) ((0.275899379) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp14 - tmp16) * (((INT32) ((1.387039845) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*2] = (DCTELEM)
      (((tmp10 + ((tmp15) * (((INT32) ((1.451774982) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((2.172734804) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));


    dataptr[8*6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((0.211164243) * (((INT32) 1) << 13) + 0.5)))) - ((tmp17) * (((INT32) ((1.061594338) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));





    tmp11 = ((tmp0 + tmp1) * (((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp7) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 + tmp7) * (((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((1.093201867) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 - tmp7) * (((INT32) ((0.897167586) * (((INT32) 1) << 13) + 0.5))));
    tmp14 = ((tmp1 + tmp2) * (((INT32) ((0.138617169) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp5) * (((INT32) ((1.407403738) * (((INT32) 1) << 13) + 0.5))));
    tmp15 = ((tmp1 + tmp3) * (- ((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (- ((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5))));
    tmp16 = ((tmp2 + tmp3) * (- ((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp4) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp11 + tmp12 + tmp13 -
     ((tmp0) * (((INT32) ((2.286341144) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp7) * (((INT32) ((0.779653625) * (((INT32) 1) << 13) + 0.5))));
    tmp11 += tmp14 + tmp15 + ((tmp1) * (((INT32) ((0.071888074) * (((INT32) 1) << 13) + 0.5))))
      - ((tmp6) * (((INT32) ((1.663905119) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp14 + tmp16 - ((tmp2) * (((INT32) ((1.125726048) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp5) * (((INT32) ((1.227391138) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp15 + tmp16 + ((tmp3) * (((INT32) ((1.065388962) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp4) * (((INT32) ((2.167985692) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));
    dataptr[8*3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));
    dataptr[8*5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));
    dataptr[8*7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 +2 +2)-1))) >> (13 +2 +2));

    dataptr++;
    wsptr++;
  }
}
# 2398 "./obj/jfdctint.c"
void
jpeg_fdct_16x8 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17;
  INT32 z1;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;
# 2415 "./obj/jfdctint.c"
  dataptr = data;
  ctr = 0;
  for (ctr = 0; ctr < 8; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[15]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[14]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[13]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[12]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[11]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[10]));
    tmp6 = ((int) (elemptr[6])) + ((int) (elemptr[9]));
    tmp7 = ((int) (elemptr[7])) + ((int) (elemptr[8]));

    tmp10 = tmp0 + tmp7;
    tmp14 = tmp0 - tmp7;
    tmp11 = tmp1 + tmp6;
    tmp15 = tmp1 - tmp6;
    tmp12 = tmp2 + tmp5;
    tmp16 = tmp2 - tmp5;
    tmp13 = tmp3 + tmp4;
    tmp17 = tmp3 - tmp4;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[15]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[14]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[13]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[12]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[11]));
    tmp5 = ((int) (elemptr[5])) - ((int) (elemptr[10]));
    tmp6 = ((int) (elemptr[6])) - ((int) (elemptr[9]));
    tmp7 = ((int) (elemptr[7])) - ((int) (elemptr[8]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 + tmp12 + tmp13 - 16 * 128) << 2);
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((1.306562965) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp12) * (((INT32) 4433)))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));



    tmp10 = ((tmp17 - tmp15) * (((INT32) ((0.275899379) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp14 - tmp16) * (((INT32) ((1.387039845) * (((INT32) 1) << 13) + 0.5))));

    dataptr[2] = (DCTELEM)
      (((tmp10 + ((tmp15) * (((INT32) ((1.451774982) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((2.172734804) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    dataptr[6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((0.211164243) * (((INT32) 1) << 13) + 0.5)))) - ((tmp17) * (((INT32) ((1.061594338) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));





    tmp11 = ((tmp0 + tmp1) * (((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp7) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 + tmp7) * (((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((1.093201867) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 - tmp7) * (((INT32) ((0.897167586) * (((INT32) 1) << 13) + 0.5))));
    tmp14 = ((tmp1 + tmp2) * (((INT32) ((0.138617169) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp5) * (((INT32) ((1.407403738) * (((INT32) 1) << 13) + 0.5))));
    tmp15 = ((tmp1 + tmp3) * (- ((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (- ((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5))));
    tmp16 = ((tmp2 + tmp3) * (- ((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp4) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp11 + tmp12 + tmp13 -
     ((tmp0) * (((INT32) ((2.286341144) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp7) * (((INT32) ((0.779653625) * (((INT32) 1) << 13) + 0.5))));
    tmp11 += tmp14 + tmp15 + ((tmp1) * (((INT32) ((0.071888074) * (((INT32) 1) << 13) + 0.5))))
      - ((tmp6) * (((INT32) ((1.663905119) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp14 + tmp16 - ((tmp2) * (((INT32) ((1.125726048) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp5) * (((INT32) ((1.227391138) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp15 + tmp16 + ((tmp3) * (((INT32) ((1.065388962) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp4) * (((INT32) ((2.167985692) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr += 8;
  }
# 2508 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 8 -1; ctr >= 0; ctr--) {




    tmp0 = dataptr[8*0] + dataptr[8*7];
    tmp1 = dataptr[8*1] + dataptr[8*6];
    tmp2 = dataptr[8*2] + dataptr[8*5];
    tmp3 = dataptr[8*3] + dataptr[8*4];

    tmp10 = tmp0 + tmp3;
    tmp12 = tmp0 - tmp3;
    tmp11 = tmp1 + tmp2;
    tmp13 = tmp1 - tmp2;

    tmp0 = dataptr[8*0] - dataptr[8*7];
    tmp1 = dataptr[8*1] - dataptr[8*6];
    tmp2 = dataptr[8*2] - dataptr[8*5];
    tmp3 = dataptr[8*3] - dataptr[8*4];

    dataptr[8*0] = (DCTELEM) (((tmp10 + tmp11) + (((INT32) 1) << ((2 +1)-1))) >> (2 +1));
    dataptr[8*4] = (DCTELEM) (((tmp10 - tmp11) + (((INT32) 1) << ((2 +1)-1))) >> (2 +1));

    z1 = ((tmp12 + tmp13) * (((INT32) 4433)));
    dataptr[8*2] = (DCTELEM)
      (((z1 + ((tmp12) * (((INT32) 6270)))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr[8*6] = (DCTELEM)
      (((z1 - ((tmp13) * (((INT32) 15137)))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));






    tmp12 = tmp0 + tmp2;
    tmp13 = tmp1 + tmp3;

    z1 = ((tmp12 + tmp13) * (((INT32) 9633)));
    tmp12 = ((tmp12) * (- ((INT32) 3196)));
    tmp13 = ((tmp13) * (- ((INT32) 16069)));
    tmp12 += z1;
    tmp13 += z1;

    z1 = ((tmp0 + tmp3) * (- ((INT32) 7373)));
    tmp0 = ((tmp0) * (((INT32) 12299)));
    tmp3 = ((tmp3) * (((INT32) 2446)));
    tmp0 += z1 + tmp12;
    tmp3 += z1 + tmp13;

    z1 = ((tmp1 + tmp2) * (- ((INT32) 20995)));
    tmp1 = ((tmp1) * (((INT32) 25172)));
    tmp2 = ((tmp2) * (((INT32) 16819)));
    tmp1 += z1 + tmp13;
    tmp2 += z1 + tmp12;

    dataptr[8*1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr++;
  }
}
# 2581 "./obj/jfdctint.c"
void
jpeg_fdct_14x7 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16;
  INT32 z1, z2, z3;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(&data[8*7]), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 8));







  dataptr = data;
  for (ctr = 0; ctr < 7; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[13]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[12]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[11]));
    tmp13 = ((int) (elemptr[3])) + ((int) (elemptr[10]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[9]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[8]));
    tmp6 = ((int) (elemptr[6])) + ((int) (elemptr[7]));

    tmp10 = tmp0 + tmp6;
    tmp14 = tmp0 - tmp6;
    tmp11 = tmp1 + tmp5;
    tmp15 = tmp1 - tmp5;
    tmp12 = tmp2 + tmp4;
    tmp16 = tmp2 - tmp4;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[13]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[12]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[11]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[10]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[9]));
    tmp5 = ((int) (elemptr[5])) - ((int) (elemptr[8]));
    tmp6 = ((int) (elemptr[6])) - ((int) (elemptr[7]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 + tmp12 + tmp13 - 14 * 128) << 2);
    tmp13 += tmp13;
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((1.274162392) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp13) * (((INT32) ((0.314692123) * (((INT32) 1) << 13) + 0.5)))) - ((tmp12 - tmp13) * (((INT32) ((0.881747734) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));




    tmp10 = ((tmp14 + tmp15) * (((INT32) ((1.105676686) * (((INT32) 1) << 13) + 0.5))));

    dataptr[2] = (DCTELEM)
      (((tmp10 + ((tmp14) * (((INT32) ((0.273079590) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((0.613604268) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    dataptr[6] = (DCTELEM)
      (((tmp10 - ((tmp15) * (((INT32) ((1.719280954) * (((INT32) 1) << 13) + 0.5)))) - ((tmp16) * (((INT32) ((1.378756276) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));





    tmp10 = tmp1 + tmp2;
    tmp11 = tmp5 - tmp4;
    dataptr[7] = (DCTELEM) ((tmp0 - tmp10 + tmp3 - tmp11 - tmp6) << 2);
    tmp3 <<= 13;
    tmp10 = ((tmp10) * (- ((INT32) ((0.158341681) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp11) * (((INT32) ((1.405321284) * (((INT32) 1) << 13) + 0.5))));
    tmp10 += tmp11 - tmp3;
    tmp11 = ((tmp0 + tmp2) * (((INT32) ((1.197448846) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (((INT32) ((0.752406978) * (((INT32) 1) << 13) + 0.5))));
    dataptr[5] = (DCTELEM)
      (((tmp10 + tmp11 - ((tmp2) * (((INT32) ((2.373959773) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((1.119999435) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    tmp12 = ((tmp0 + tmp1) * (((INT32) ((1.334852607) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp6) * (((INT32) ((0.467085129) * (((INT32) 1) << 13) + 0.5))));
    dataptr[3] = (DCTELEM)
      (((tmp10 + tmp12 - ((tmp1) * (((INT32) ((0.424103948) * (((INT32) 1) << 13) + 0.5)))) - ((tmp5) * (((INT32) ((3.069855259) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    dataptr[1] = (DCTELEM)
      (((tmp11 + tmp12 + tmp3 + tmp6 - ((tmp0 + tmp6) * (((INT32) ((1.126980169) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));



    dataptr += 8;
  }
# 2688 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + dataptr[8*6];
    tmp1 = dataptr[8*1] + dataptr[8*5];
    tmp2 = dataptr[8*2] + dataptr[8*4];
    tmp3 = dataptr[8*3];

    tmp10 = dataptr[8*0] - dataptr[8*6];
    tmp11 = dataptr[8*1] - dataptr[8*5];
    tmp12 = dataptr[8*2] - dataptr[8*4];

    z1 = tmp0 + tmp2;
    dataptr[8*0] = (DCTELEM)
      (((((z1 + tmp1 + tmp3) * (((INT32) ((1.306122449) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    tmp3 += tmp3;
    z1 -= tmp3;
    z1 -= tmp3;
    z1 = ((z1) * (((INT32) ((0.461784020) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp0 - tmp2) * (((INT32) ((1.202428084) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp1 - tmp2) * (((INT32) ((0.411026446) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM) (((z1 + z2 + z3) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    z1 -= z2;
    z2 = ((tmp0 - tmp1) * (((INT32) ((1.151670509) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*4] = (DCTELEM)
      (((z2 + z3 - ((tmp1 - tmp3) * (((INT32) ((0.923568041) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr[8*6] = (DCTELEM) (((z1 + z2) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));



    tmp1 = ((tmp10 + tmp11) * (((INT32) ((1.221765677) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 - tmp11) * (((INT32) ((0.222383464) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 - tmp2;
    tmp1 += tmp2;
    tmp2 = ((tmp11 + tmp12) * (- ((INT32) ((1.800824523) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp2;
    tmp3 = ((tmp10 + tmp12) * (((INT32) ((0.801442310) * (((INT32) 1) << 13) + 0.5))));
    tmp0 += tmp3;
    tmp2 += tmp3 + ((tmp12) * (((INT32) ((2.443531355) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr++;
  }
}
# 2746 "./obj/jfdctint.c"
void
jpeg_fdct_12x6 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(&data[8*6]), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 8 * 2));







  dataptr = data;
  for (ctr = 0; ctr < 6; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[11]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[10]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[9]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[8]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[7]));
    tmp5 = ((int) (elemptr[5])) + ((int) (elemptr[6]));

    tmp10 = tmp0 + tmp5;
    tmp13 = tmp0 - tmp5;
    tmp11 = tmp1 + tmp4;
    tmp14 = tmp1 - tmp4;
    tmp12 = tmp2 + tmp3;
    tmp15 = tmp2 - tmp3;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[11]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[10]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[9]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[8]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[7]));
    tmp5 = ((int) (elemptr[5])) - ((int) (elemptr[6]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 + tmp12 - 12 * 128) << 2);
    dataptr[6] = (DCTELEM) ((tmp13 - tmp14 - tmp15) << 2);
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[2] = (DCTELEM)
      (((tmp14 - tmp15 + ((tmp13 + tmp15) * (((INT32) ((1.366025404) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));




    tmp10 = ((tmp1 + tmp4) * (((INT32) 4433)));
    tmp14 = tmp10 + ((tmp1) * (((INT32) 6270)));
    tmp15 = tmp10 - ((tmp4) * (((INT32) 15137)));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((1.121971054) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((0.860918669) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp12 + tmp13 + tmp14 - ((tmp0) * (((INT32) ((0.580774953) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.184591911) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp2 + tmp3) * (- ((INT32) ((0.184591911) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp11 - tmp15 - ((tmp2) * (((INT32) ((2.339493912) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.860918669) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp11 - tmp14 + ((tmp3) * (((INT32) ((0.725788011) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp5) * (((INT32) ((1.121971054) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = tmp15 + ((tmp0 - tmp3) * (((INT32) ((1.306562965) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp2 + tmp5) * (((INT32) 4433)));

    dataptr[1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr += 8;
  }
# 2836 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + dataptr[8*5];
    tmp11 = dataptr[8*1] + dataptr[8*4];
    tmp2 = dataptr[8*2] + dataptr[8*3];

    tmp10 = tmp0 + tmp2;
    tmp12 = tmp0 - tmp2;

    tmp0 = dataptr[8*0] - dataptr[8*5];
    tmp1 = dataptr[8*1] - dataptr[8*4];
    tmp2 = dataptr[8*2] - dataptr[8*3];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr[8*2] = (DCTELEM)
      (((((tmp12) * (((INT32) ((2.177324216) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp11) * (((INT32) ((1.257078722) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));




    tmp10 = ((tmp0 + tmp2) * (((INT32) ((0.650711829) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM)
      (((tmp10 + ((tmp0 + tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr[8*3] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp2) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr[8*5] = (DCTELEM)
      (((tmp10 + ((tmp2 - tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));


    dataptr++;
  }
}
# 2886 "./obj/jfdctint.c"
void
jpeg_fdct_10x5 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(&data[8*5]), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 8 * 3));







  dataptr = data;
  for (ctr = 0; ctr < 5; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[9]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[8]));
    tmp12 = ((int) (elemptr[2])) + ((int) (elemptr[7]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[6]));
    tmp4 = ((int) (elemptr[4])) + ((int) (elemptr[5]));

    tmp10 = tmp0 + tmp4;
    tmp13 = tmp0 - tmp4;
    tmp11 = tmp1 + tmp3;
    tmp14 = tmp1 - tmp3;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[9]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[8]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[7]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[6]));
    tmp4 = ((int) (elemptr[4])) - ((int) (elemptr[5]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 + tmp12 - 10 * 128) << 2);
    tmp12 += tmp12;
    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.144122806) * (((INT32) 1) << 13) + 0.5)))) - ((tmp11 - tmp12) * (((INT32) ((0.437016024) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    tmp10 = ((tmp13 + tmp14) * (((INT32) ((0.831253876) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM)
      (((tmp10 + ((tmp13) * (((INT32) ((0.513743148) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((2.176250899) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));




    tmp10 = tmp0 + tmp4;
    tmp11 = tmp1 - tmp3;
    dataptr[5] = (DCTELEM) ((tmp10 - tmp11 - tmp2) << 2);
    tmp2 <<= 13;
    dataptr[1] = (DCTELEM)
      (((((tmp0) * (((INT32) ((1.396802247) * (((INT32) 1) << 13) + 0.5)))) + ((tmp1) * (((INT32) ((1.260073511) * (((INT32) 1) << 13) + 0.5)))) + tmp2 + ((tmp3) * (((INT32) ((0.642039522) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.221231742) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));




    tmp12 = ((tmp0 - tmp4) * (((INT32) ((0.951056516) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp1 + tmp3) * (((INT32) ((0.587785252) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp10 + tmp11) * (((INT32) ((0.309016994) * (((INT32) 1) << 13) + 0.5)))) +
     (tmp11 << (13 - 1)) - tmp2;
    dataptr[3] = (DCTELEM) (((tmp12 + tmp13) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[7] = (DCTELEM) (((tmp12 - tmp13) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr += 8;
  }
# 2974 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + dataptr[8*4];
    tmp1 = dataptr[8*1] + dataptr[8*3];
    tmp2 = dataptr[8*2];

    tmp10 = tmp0 + tmp1;
    tmp11 = tmp0 - tmp1;

    tmp0 = dataptr[8*0] - dataptr[8*4];
    tmp1 = dataptr[8*1] - dataptr[8*3];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp2) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp11 = ((tmp11) * (((INT32) ((1.011928851) * (((INT32) 1) << 13) + 0.5))));
    tmp10 -= tmp2 << 2;
    tmp10 = ((tmp10) * (((INT32) ((0.452548340) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM) (((tmp11 + tmp10) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*4] = (DCTELEM) (((tmp11 - tmp10) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));



    tmp10 = ((tmp0 + tmp1) * (((INT32) ((1.064004961) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM)
      (((tmp10 + ((tmp0) * (((INT32) ((0.657591230) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*3] = (DCTELEM)
      (((tmp10 - ((tmp1) * (((INT32) ((2.785601151) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr++;
  }
}
# 3019 "./obj/jfdctint.c"
void
jpeg_fdct_8x4 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3;
  INT32 tmp10, tmp11, tmp12, tmp13;
  INT32 z1;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(&data[8*4]), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 8 * 4));
# 3040 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 4; ctr++) {
    elemptr = sample_data[ctr] + start_col;





    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[7]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[6]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[5]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[4]));

    tmp10 = tmp0 + tmp3;
    tmp12 = tmp0 - tmp3;
    tmp11 = tmp1 + tmp2;
    tmp13 = tmp1 - tmp2;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[7]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[6]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[5]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[4]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 - 8 * 128) << (2 +1));
    dataptr[4] = (DCTELEM) ((tmp10 - tmp11) << (2 +1));

    z1 = ((tmp12 + tmp13) * (((INT32) 4433)));

    z1 += ((INT32) 1) << (13 -2 -2);

    dataptr[2] = (DCTELEM)
      ((z1 + ((tmp12) * (((INT32) 6270)))) >> (13 -2 -1));

    dataptr[6] = (DCTELEM)
      ((z1 - ((tmp13) * (((INT32) 15137)))) >> (13 -2 -1));






    tmp12 = tmp0 + tmp2;
    tmp13 = tmp1 + tmp3;

    z1 = ((tmp12 + tmp13) * (((INT32) 9633)));

    z1 += ((INT32) 1) << (13 -2 -2);

    tmp12 = ((tmp12) * (- ((INT32) 3196)));
    tmp13 = ((tmp13) * (- ((INT32) 16069)));
    tmp12 += z1;
    tmp13 += z1;

    z1 = ((tmp0 + tmp3) * (- ((INT32) 7373)));
    tmp0 = ((tmp0) * (((INT32) 12299)));
    tmp3 = ((tmp3) * (((INT32) 2446)));
    tmp0 += z1 + tmp12;
    tmp3 += z1 + tmp13;

    z1 = ((tmp1 + tmp2) * (- ((INT32) 20995)));
    tmp1 = ((tmp1) * (((INT32) 25172)));
    tmp2 = ((tmp2) * (((INT32) 16819)));
    tmp1 += z1 + tmp13;
    tmp2 += z1 + tmp12;

    dataptr[1] = (DCTELEM) ((tmp0) >> (13 -2 -1));
    dataptr[3] = (DCTELEM) ((tmp1) >> (13 -2 -1));
    dataptr[5] = (DCTELEM) ((tmp2) >> (13 -2 -1));
    dataptr[7] = (DCTELEM) ((tmp3) >> (13 -2 -1));

    dataptr += 8;
  }
# 3122 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 8 -1; ctr >= 0; ctr--) {



    tmp0 = dataptr[8*0] + dataptr[8*3] + (((INT32) 1) << (2 -1));
    tmp1 = dataptr[8*1] + dataptr[8*2];

    tmp10 = dataptr[8*0] - dataptr[8*3];
    tmp11 = dataptr[8*1] - dataptr[8*2];

    dataptr[8*0] = (DCTELEM) ((tmp0 + tmp1) >> (2));
    dataptr[8*2] = (DCTELEM) ((tmp0 - tmp1) >> (2));



    tmp0 = ((tmp10 + tmp11) * (((INT32) 4433)));

    tmp0 += ((INT32) 1) << (13 +2 -1);

    dataptr[8*1] = (DCTELEM)
      ((tmp0 + ((tmp10) * (((INT32) 6270)))) >> (13 +2));

    dataptr[8*3] = (DCTELEM)
      ((tmp0 - ((tmp11) * (((INT32) 15137)))) >> (13 +2));


    dataptr++;
  }
}
# 3160 "./obj/jfdctint.c"
void
jpeg_fdct_6x3 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2;
  INT32 tmp10, tmp11, tmp12;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 3181 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 3; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[5]));
    tmp11 = ((int) (elemptr[1])) + ((int) (elemptr[4]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[3]));

    tmp10 = tmp0 + tmp2;
    tmp12 = tmp0 - tmp2;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[5]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[4]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[3]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 - 6 * 128) << (2 +1));
    dataptr[2] = (DCTELEM)
      (((((tmp12) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));

    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp11) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));




    tmp10 = (((((tmp0 + tmp2) * (((INT32) ((0.366025404) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));


    dataptr[1] = (DCTELEM) (tmp10 + ((tmp0 + tmp1) << (2 +1)));
    dataptr[3] = (DCTELEM) ((tmp0 - tmp1 - tmp2) << (2 +1));
    dataptr[5] = (DCTELEM) (tmp10 + ((tmp2 - tmp1) << (2 +1)));

    dataptr += 8;
  }
# 3228 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 6; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*2];
    tmp1 = dataptr[8*1];

    tmp2 = dataptr[8*0] - dataptr[8*2];

    dataptr[8*0] = (DCTELEM)
      (((((tmp0 + tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*2] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp1) * (((INT32) ((1.257078722) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    dataptr[8*1] = (DCTELEM)
      (((((tmp2) * (((INT32) ((2.177324216) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr++;
  }
}
# 3261 "./obj/jfdctint.c"
void
jpeg_fdct_4x2 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1;
  INT32 tmp10, tmp11;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 3282 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 2; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[3]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[2]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[3]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[2]));


    dataptr[0] = (DCTELEM)
      ((tmp0 + tmp1 - 4 * 128) << (2 +3));
    dataptr[2] = (DCTELEM) ((tmp0 - tmp1) << (2 +3));



    tmp0 = ((tmp10 + tmp11) * (((INT32) 4433)));

    tmp0 += ((INT32) 1) << (13 -2 -4);

    dataptr[1] = (DCTELEM)
      ((tmp0 + ((tmp10) * (((INT32) 6270)))) >> (13 -2 -3));

    dataptr[3] = (DCTELEM)
      ((tmp0 - ((tmp11) * (((INT32) 15137)))) >> (13 -2 -3));


    dataptr += 8;
  }






  dataptr = data;
  for (ctr = 0; ctr < 4; ctr++) {



    tmp0 = dataptr[8*0] + (((INT32) 1) << (2 -1));
    tmp1 = dataptr[8*1];

    dataptr[8*0] = (DCTELEM) ((tmp0 + tmp1) >> (2));



    dataptr[8*1] = (DCTELEM) ((tmp0 - tmp1) >> (2));

    dataptr++;
  }
}
# 3345 "./obj/jfdctint.c"
void
jpeg_fdct_2x1 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  DCTELEM tmp0, tmp1;
  JSAMPROW elemptr;


  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));

  elemptr = sample_data[0] + start_col;

  tmp0 = ((int) (elemptr[0]));
  tmp1 = ((int) (elemptr[1]));
# 3366 "./obj/jfdctint.c"
  data[0] = (tmp0 + tmp1 - 2 * 128) << 5;



  data[1] = (tmp0 - tmp1) << 5;
}
# 3380 "./obj/jfdctint.c"
void
jpeg_fdct_8x16 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17;
  INT32 z1;
  DCTELEM workspace[64];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;
# 3399 "./obj/jfdctint.c"
  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;





    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[7]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[6]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[5]));
    tmp3 = ((int) (elemptr[3])) + ((int) (elemptr[4]));

    tmp10 = tmp0 + tmp3;
    tmp12 = tmp0 - tmp3;
    tmp11 = tmp1 + tmp2;
    tmp13 = tmp1 - tmp2;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[7]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[6]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[5]));
    tmp3 = ((int) (elemptr[3])) - ((int) (elemptr[4]));


    dataptr[0] = (DCTELEM) ((tmp10 + tmp11 - 8 * 128) << 2);
    dataptr[4] = (DCTELEM) ((tmp10 - tmp11) << 2);

    z1 = ((tmp12 + tmp13) * (((INT32) 4433)));
    dataptr[2] = (DCTELEM)
      (((z1 + ((tmp12) * (((INT32) 6270)))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[6] = (DCTELEM)
      (((z1 - ((tmp13) * (((INT32) 15137)))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));






    tmp12 = tmp0 + tmp2;
    tmp13 = tmp1 + tmp3;

    z1 = ((tmp12 + tmp13) * (((INT32) 9633)));
    tmp12 = ((tmp12) * (- ((INT32) 3196)));
    tmp13 = ((tmp13) * (- ((INT32) 16069)));
    tmp12 += z1;
    tmp13 += z1;

    z1 = ((tmp0 + tmp3) * (- ((INT32) 7373)));
    tmp0 = ((tmp0) * (((INT32) 12299)));
    tmp3 = ((tmp3) * (((INT32) 2446)));
    tmp0 += z1 + tmp12;
    tmp3 += z1 + tmp13;

    z1 = ((tmp1 + tmp2) * (- ((INT32) 20995)));
    tmp1 = ((tmp1) * (((INT32) 25172)));
    tmp2 = ((tmp2) * (((INT32) 16819)));
    tmp1 += z1 + tmp13;
    tmp2 += z1 + tmp12;

    dataptr[1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[7] = (DCTELEM) (((tmp3) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    ctr++;

    if (ctr != 8) {
      if (ctr == 8 * 2)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 3482 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 8 -1; ctr >= 0; ctr--) {


    tmp0 = dataptr[8*0] + wsptr[8*7];
    tmp1 = dataptr[8*1] + wsptr[8*6];
    tmp2 = dataptr[8*2] + wsptr[8*5];
    tmp3 = dataptr[8*3] + wsptr[8*4];
    tmp4 = dataptr[8*4] + wsptr[8*3];
    tmp5 = dataptr[8*5] + wsptr[8*2];
    tmp6 = dataptr[8*6] + wsptr[8*1];
    tmp7 = dataptr[8*7] + wsptr[8*0];

    tmp10 = tmp0 + tmp7;
    tmp14 = tmp0 - tmp7;
    tmp11 = tmp1 + tmp6;
    tmp15 = tmp1 - tmp6;
    tmp12 = tmp2 + tmp5;
    tmp16 = tmp2 - tmp5;
    tmp13 = tmp3 + tmp4;
    tmp17 = tmp3 - tmp4;

    tmp0 = dataptr[8*0] - wsptr[8*7];
    tmp1 = dataptr[8*1] - wsptr[8*6];
    tmp2 = dataptr[8*2] - wsptr[8*5];
    tmp3 = dataptr[8*3] - wsptr[8*4];
    tmp4 = dataptr[8*4] - wsptr[8*3];
    tmp5 = dataptr[8*5] - wsptr[8*2];
    tmp6 = dataptr[8*6] - wsptr[8*1];
    tmp7 = dataptr[8*7] - wsptr[8*0];

    dataptr[8*0] = (DCTELEM)
      (((tmp10 + tmp11 + tmp12 + tmp13) + (((INT32) 1) << ((2 +1)-1))) >> (2 +1));
    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((1.306562965) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp12) * (((INT32) 4433)))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));



    tmp10 = ((tmp17 - tmp15) * (((INT32) ((0.275899379) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp14 - tmp16) * (((INT32) ((1.387039845) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*2] = (DCTELEM)
      (((tmp10 + ((tmp15) * (((INT32) ((1.451774982) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((2.172734804) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));


    dataptr[8*6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((0.211164243) * (((INT32) 1) << 13) + 0.5)))) - ((tmp17) * (((INT32) ((1.061594338) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));





    tmp11 = ((tmp0 + tmp1) * (((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp7) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 + tmp7) * (((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((1.093201867) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 - tmp7) * (((INT32) ((0.897167586) * (((INT32) 1) << 13) + 0.5))));
    tmp14 = ((tmp1 + tmp2) * (((INT32) ((0.138617169) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp6 - tmp5) * (((INT32) ((1.407403738) * (((INT32) 1) << 13) + 0.5))));
    tmp15 = ((tmp1 + tmp3) * (- ((INT32) ((0.666655658) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (- ((INT32) ((1.247225013) * (((INT32) 1) << 13) + 0.5))));
    tmp16 = ((tmp2 + tmp3) * (- ((INT32) ((1.353318001) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp4) * (((INT32) ((0.410524528) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp11 + tmp12 + tmp13 -
     ((tmp0) * (((INT32) ((2.286341144) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp7) * (((INT32) ((0.779653625) * (((INT32) 1) << 13) + 0.5))));
    tmp11 += tmp14 + tmp15 + ((tmp1) * (((INT32) ((0.071888074) * (((INT32) 1) << 13) + 0.5))))
      - ((tmp6) * (((INT32) ((1.663905119) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp14 + tmp16 - ((tmp2) * (((INT32) ((1.125726048) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp5) * (((INT32) ((1.227391138) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp15 + tmp16 + ((tmp3) * (((INT32) ((1.065388962) * (((INT32) 1) << 13) + 0.5))))
      + ((tmp4) * (((INT32) ((2.167985692) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));
    dataptr[8*7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 +2 +1)-1))) >> (13 +2 +1));

    dataptr++;
    wsptr++;
  }
}
# 3574 "./obj/jfdctint.c"
void
jpeg_fdct_7x14 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16;
  INT32 z1, z2, z3;
  DCTELEM workspace[8*6];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[6]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[5]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[4]));
    tmp3 = ((int) (elemptr[3]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[6]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[5]));
    tmp12 = ((int) (elemptr[2])) - ((int) (elemptr[4]));

    z1 = tmp0 + tmp2;

    dataptr[0] = (DCTELEM)
      ((z1 + tmp1 + tmp3 - 7 * 128) << 2);
    tmp3 += tmp3;
    z1 -= tmp3;
    z1 -= tmp3;
    z1 = ((z1) * (((INT32) ((0.353553391) * (((INT32) 1) << 13) + 0.5))));
    z2 = ((tmp0 - tmp2) * (((INT32) ((0.920609002) * (((INT32) 1) << 13) + 0.5))));
    z3 = ((tmp1 - tmp2) * (((INT32) ((0.314692123) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM) (((z1 + z2 + z3) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    z1 -= z2;
    z2 = ((tmp0 - tmp1) * (((INT32) ((0.881747734) * (((INT32) 1) << 13) + 0.5))));
    dataptr[4] = (DCTELEM)
      (((z2 + z3 - ((tmp1 - tmp3) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[6] = (DCTELEM) (((z1 + z2) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));



    tmp1 = ((tmp10 + tmp11) * (((INT32) ((0.935414347) * (((INT32) 1) << 13) + 0.5))));
    tmp2 = ((tmp10 - tmp11) * (((INT32) ((0.170262339) * (((INT32) 1) << 13) + 0.5))));
    tmp0 = tmp1 - tmp2;
    tmp1 += tmp2;
    tmp2 = ((tmp11 + tmp12) * (- ((INT32) ((1.378756276) * (((INT32) 1) << 13) + 0.5))));
    tmp1 += tmp2;
    tmp3 = ((tmp10 + tmp12) * (((INT32) ((0.613604268) * (((INT32) 1) << 13) + 0.5))));
    tmp0 += tmp3;
    tmp2 += tmp3 + ((tmp12) * (((INT32) ((1.870828693) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM) (((tmp0) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[3] = (DCTELEM) (((tmp1) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[5] = (DCTELEM) (((tmp2) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    ctr++;

    if (ctr != 8) {
      if (ctr == 14)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 3664 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 0; ctr < 7; ctr++) {


    tmp0 = dataptr[8*0] + wsptr[8*5];
    tmp1 = dataptr[8*1] + wsptr[8*4];
    tmp2 = dataptr[8*2] + wsptr[8*3];
    tmp13 = dataptr[8*3] + wsptr[8*2];
    tmp4 = dataptr[8*4] + wsptr[8*1];
    tmp5 = dataptr[8*5] + wsptr[8*0];
    tmp6 = dataptr[8*6] + dataptr[8*7];

    tmp10 = tmp0 + tmp6;
    tmp14 = tmp0 - tmp6;
    tmp11 = tmp1 + tmp5;
    tmp15 = tmp1 - tmp5;
    tmp12 = tmp2 + tmp4;
    tmp16 = tmp2 - tmp4;

    tmp0 = dataptr[8*0] - wsptr[8*5];
    tmp1 = dataptr[8*1] - wsptr[8*4];
    tmp2 = dataptr[8*2] - wsptr[8*3];
    tmp3 = dataptr[8*3] - wsptr[8*2];
    tmp4 = dataptr[8*4] - wsptr[8*1];
    tmp5 = dataptr[8*5] - wsptr[8*0];
    tmp6 = dataptr[8*6] - dataptr[8*7];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11 + tmp12 + tmp13) * (((INT32) ((0.653061224) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp13 += tmp13;
    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp13) * (((INT32) ((0.832106052) * (((INT32) 1) << 13) + 0.5)))) + ((tmp11 - tmp13) * (((INT32) ((0.205513223) * (((INT32) 1) << 13) + 0.5)))) - ((tmp12 - tmp13) * (((INT32) ((0.575835255) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp10 = ((tmp14 + tmp15) * (((INT32) ((0.722074570) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*2] = (DCTELEM)
      (((tmp10 + ((tmp14) * (((INT32) ((0.178337691) * (((INT32) 1) << 13) + 0.5)))) + ((tmp16) * (((INT32) ((0.400721155) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr[8*6] = (DCTELEM)
      (((tmp10 - ((tmp15) * (((INT32) ((1.122795725) * (((INT32) 1) << 13) + 0.5)))) - ((tmp16) * (((INT32) ((0.900412262) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));





    tmp10 = tmp1 + tmp2;
    tmp11 = tmp5 - tmp4;
    dataptr[8*7] = (DCTELEM)
      (((((tmp0 - tmp10 + tmp3 - tmp11 - tmp6) * (((INT32) ((0.653061224) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp3 = ((tmp3) * (((INT32) ((0.653061224) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = ((tmp10) * (- ((INT32) ((0.103406812) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp11) * (((INT32) ((0.917760839) * (((INT32) 1) << 13) + 0.5))));
    tmp10 += tmp11 - tmp3;
    tmp11 = ((tmp0 + tmp2) * (((INT32) ((0.782007410) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp4 + tmp6) * (((INT32) ((0.491367823) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*5] = (DCTELEM)
      (((tmp10 + tmp11 - ((tmp2) * (((INT32) ((1.550341076) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.731428202) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp12 = ((tmp0 + tmp1) * (((INT32) ((0.871740478) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp5 - tmp6) * (((INT32) ((0.305035186) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*3] = (DCTELEM)
      (((tmp10 + tmp12 - ((tmp1) * (((INT32) ((0.276965844) * (((INT32) 1) << 13) + 0.5)))) - ((tmp5) * (((INT32) ((2.004803435) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr[8*1] = (DCTELEM)
      (((tmp11 + tmp12 + tmp3 - ((tmp0) * (((INT32) ((0.735987049) * (((INT32) 1) << 13) + 0.5)))) - ((tmp6) * (((INT32) ((0.082925825) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    dataptr++;
    wsptr++;
  }
}
# 3756 "./obj/jfdctint.c"
void
jpeg_fdct_6x12 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
  DCTELEM workspace[8*4];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[5]));
    tmp11 = ((int) (elemptr[1])) + ((int) (elemptr[4]));
    tmp2 = ((int) (elemptr[2])) + ((int) (elemptr[3]));

    tmp10 = tmp0 + tmp2;
    tmp12 = tmp0 - tmp2;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[5]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[4]));
    tmp2 = ((int) (elemptr[2])) - ((int) (elemptr[3]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp11 - 6 * 128) << 2);
    dataptr[2] = (DCTELEM)
      (((((tmp12) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[4] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp11) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));




    tmp10 = (((((tmp0 + tmp2) * (((INT32) ((0.366025404) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    dataptr[1] = (DCTELEM) (tmp10 + ((tmp0 + tmp1) << 2));
    dataptr[3] = (DCTELEM) ((tmp0 - tmp1 - tmp2) << 2);
    dataptr[5] = (DCTELEM) (tmp10 + ((tmp2 - tmp1) << 2));

    ctr++;

    if (ctr != 8) {
      if (ctr == 12)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 3832 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 0; ctr < 6; ctr++) {


    tmp0 = dataptr[8*0] + wsptr[8*3];
    tmp1 = dataptr[8*1] + wsptr[8*2];
    tmp2 = dataptr[8*2] + wsptr[8*1];
    tmp3 = dataptr[8*3] + wsptr[8*0];
    tmp4 = dataptr[8*4] + dataptr[8*7];
    tmp5 = dataptr[8*5] + dataptr[8*6];

    tmp10 = tmp0 + tmp5;
    tmp13 = tmp0 - tmp5;
    tmp11 = tmp1 + tmp4;
    tmp14 = tmp1 - tmp4;
    tmp12 = tmp2 + tmp3;
    tmp15 = tmp2 - tmp3;

    tmp0 = dataptr[8*0] - wsptr[8*3];
    tmp1 = dataptr[8*1] - wsptr[8*2];
    tmp2 = dataptr[8*2] - wsptr[8*1];
    tmp3 = dataptr[8*3] - wsptr[8*0];
    tmp4 = dataptr[8*4] - dataptr[8*7];
    tmp5 = dataptr[8*5] - dataptr[8*6];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11 + tmp12) * (((INT32) ((0.888888889) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*6] = (DCTELEM)
      (((((tmp13 - tmp14 - tmp15) * (((INT32) ((0.888888889) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.088662108) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*2] = (DCTELEM)
      (((((tmp14 - tmp15) * (((INT32) ((0.888888889) * (((INT32) 1) << 13) + 0.5)))) + ((tmp13 + tmp15) * (((INT32) ((1.214244803) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));





    tmp10 = ((tmp1 + tmp4) * (((INT32) ((0.481063200) * (((INT32) 1) << 13) + 0.5))));
    tmp14 = tmp10 + ((tmp1) * (((INT32) ((0.680326102) * (((INT32) 1) << 13) + 0.5))));
    tmp15 = tmp10 - ((tmp4) * (((INT32) ((1.642452502) * (((INT32) 1) << 13) + 0.5))));
    tmp12 = ((tmp0 + tmp2) * (((INT32) ((0.997307603) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp0 + tmp3) * (((INT32) ((0.765261039) * (((INT32) 1) << 13) + 0.5))));
    tmp10 = tmp12 + tmp13 + tmp14 - ((tmp0) * (((INT32) ((0.516244403) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.164081699) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = ((tmp2 + tmp3) * (- ((INT32) ((0.164081699) * (((INT32) 1) << 13) + 0.5))));
    tmp12 += tmp11 - tmp15 - ((tmp2) * (((INT32) ((2.079550144) * (((INT32) 1) << 13) + 0.5))))
     + ((tmp5) * (((INT32) ((0.765261039) * (((INT32) 1) << 13) + 0.5))));
    tmp13 += tmp11 - tmp14 + ((tmp3) * (((INT32) ((0.645144899) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp5) * (((INT32) ((0.997307603) * (((INT32) 1) << 13) + 0.5))));
    tmp11 = tmp15 + ((tmp0 - tmp3) * (((INT32) ((1.161389302) * (((INT32) 1) << 13) + 0.5))))
     - ((tmp2 + tmp5) * (((INT32) ((0.481063200) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM) (((tmp10) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*3] = (DCTELEM) (((tmp11) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*5] = (DCTELEM) (((tmp12) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*7] = (DCTELEM) (((tmp13) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
    wsptr++;
  }
}
# 3906 "./obj/jfdctint.c"
void
jpeg_fdct_5x10 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3, tmp4;
  INT32 tmp10, tmp11, tmp12, tmp13, tmp14;
  DCTELEM workspace[8*2];
  DCTELEM *dataptr;
  DCTELEM *wsptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));







  dataptr = data;
  ctr = 0;
  for (;;) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[4]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[3]));
    tmp2 = ((int) (elemptr[2]));

    tmp10 = tmp0 + tmp1;
    tmp11 = tmp0 - tmp1;

    tmp0 = ((int) (elemptr[0])) - ((int) (elemptr[4]));
    tmp1 = ((int) (elemptr[1])) - ((int) (elemptr[3]));


    dataptr[0] = (DCTELEM)
      ((tmp10 + tmp2 - 5 * 128) << 2);
    tmp11 = ((tmp11) * (((INT32) ((0.790569415) * (((INT32) 1) << 13) + 0.5))));
    tmp10 -= tmp2 << 2;
    tmp10 = ((tmp10) * (((INT32) ((0.353553391) * (((INT32) 1) << 13) + 0.5))));
    dataptr[2] = (DCTELEM) (((tmp11 + tmp10) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));
    dataptr[4] = (DCTELEM) (((tmp11 - tmp10) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));



    tmp10 = ((tmp0 + tmp1) * (((INT32) ((0.831253876) * (((INT32) 1) << 13) + 0.5))));

    dataptr[1] = (DCTELEM)
      (((tmp10 + ((tmp0) * (((INT32) ((0.513743148) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));

    dataptr[3] = (DCTELEM)
      (((tmp10 - ((tmp1) * (((INT32) ((2.176250899) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2)-1))) >> (13 -2));


    ctr++;

    if (ctr != 8) {
      if (ctr == 10)
 break;
      dataptr += 8;
    } else
      dataptr = workspace;
  }
# 3982 "./obj/jfdctint.c"
  dataptr = data;
  wsptr = workspace;
  for (ctr = 0; ctr < 5; ctr++) {


    tmp0 = dataptr[8*0] + wsptr[8*1];
    tmp1 = dataptr[8*1] + wsptr[8*0];
    tmp12 = dataptr[8*2] + dataptr[8*7];
    tmp3 = dataptr[8*3] + dataptr[8*6];
    tmp4 = dataptr[8*4] + dataptr[8*5];

    tmp10 = tmp0 + tmp4;
    tmp13 = tmp0 - tmp4;
    tmp11 = tmp1 + tmp3;
    tmp14 = tmp1 - tmp3;

    tmp0 = dataptr[8*0] - wsptr[8*1];
    tmp1 = dataptr[8*1] - wsptr[8*0];
    tmp2 = dataptr[8*2] - dataptr[8*7];
    tmp3 = dataptr[8*3] - dataptr[8*6];
    tmp4 = dataptr[8*4] - dataptr[8*5];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11 + tmp12) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp12 += tmp12;
    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp12) * (((INT32) ((1.464477191) * (((INT32) 1) << 13) + 0.5)))) - ((tmp11 - tmp12) * (((INT32) ((0.559380511) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    tmp10 = ((tmp13 + tmp14) * (((INT32) ((1.064004961) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*2] = (DCTELEM)
      (((tmp10 + ((tmp13) * (((INT32) ((0.657591230) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*6] = (DCTELEM)
      (((tmp10 - ((tmp14) * (((INT32) ((2.785601151) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp10 = tmp0 + tmp4;
    tmp11 = tmp1 - tmp3;
    dataptr[8*5] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp2) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    tmp2 = ((tmp2) * (((INT32) ((1.28) * (((INT32) 1) << 13) + 0.5))));
    dataptr[8*1] = (DCTELEM)
      (((((tmp0) * (((INT32) ((1.787906876) * (((INT32) 1) << 13) + 0.5)))) + ((tmp1) * (((INT32) ((1.612894094) * (((INT32) 1) << 13) + 0.5)))) + tmp2 + ((tmp3) * (((INT32) ((0.821810588) * (((INT32) 1) << 13) + 0.5)))) + ((tmp4) * (((INT32) ((0.283176630) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp12 = ((tmp0 - tmp4) * (((INT32) ((1.217352341) * (((INT32) 1) << 13) + 0.5)))) -
     ((tmp1 + tmp3) * (((INT32) ((0.752365123) * (((INT32) 1) << 13) + 0.5))));
    tmp13 = ((tmp10 + tmp11) * (((INT32) ((0.395541753) * (((INT32) 1) << 13) + 0.5)))) +
     ((tmp11) * (((INT32) ((0.64) * (((INT32) 1) << 13) + 0.5)))) - tmp2;
    dataptr[8*3] = (DCTELEM) (((tmp12 + tmp13) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));
    dataptr[8*7] = (DCTELEM) (((tmp12 - tmp13) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr++;
    wsptr++;
  }
}
# 4053 "./obj/jfdctint.c"
void
jpeg_fdct_4x8 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2, tmp3;
  INT32 tmp10, tmp11, tmp12, tmp13;
  INT32 z1;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 4075 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 8; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[3]));
    tmp1 = ((int) (elemptr[1])) + ((int) (elemptr[2]));

    tmp10 = ((int) (elemptr[0])) - ((int) (elemptr[3]));
    tmp11 = ((int) (elemptr[1])) - ((int) (elemptr[2]));


    dataptr[0] = (DCTELEM)
      ((tmp0 + tmp1 - 4 * 128) << (2 +1));
    dataptr[2] = (DCTELEM) ((tmp0 - tmp1) << (2 +1));



    tmp0 = ((tmp10 + tmp11) * (((INT32) 4433)));

    tmp0 += ((INT32) 1) << (13 -2 -2);

    dataptr[1] = (DCTELEM)
      ((tmp0 + ((tmp10) * (((INT32) 6270)))) >> (13 -2 -1));

    dataptr[3] = (DCTELEM)
      ((tmp0 - ((tmp11) * (((INT32) 15137)))) >> (13 -2 -1));


    dataptr += 8;
  }







  dataptr = data;
  for (ctr = 0; ctr < 4; ctr++) {




    tmp0 = dataptr[8*0] + dataptr[8*7];
    tmp1 = dataptr[8*1] + dataptr[8*6];
    tmp2 = dataptr[8*2] + dataptr[8*5];
    tmp3 = dataptr[8*3] + dataptr[8*4];


    tmp10 = tmp0 + tmp3 + (((INT32) 1) << (2 -1));
    tmp12 = tmp0 - tmp3;
    tmp11 = tmp1 + tmp2;
    tmp13 = tmp1 - tmp2;

    tmp0 = dataptr[8*0] - dataptr[8*7];
    tmp1 = dataptr[8*1] - dataptr[8*6];
    tmp2 = dataptr[8*2] - dataptr[8*5];
    tmp3 = dataptr[8*3] - dataptr[8*4];

    dataptr[8*0] = (DCTELEM) ((tmp10 + tmp11) >> (2));
    dataptr[8*4] = (DCTELEM) ((tmp10 - tmp11) >> (2));

    z1 = ((tmp12 + tmp13) * (((INT32) 4433)));

    z1 += ((INT32) 1) << (13 +2 -1);

    dataptr[8*2] = (DCTELEM)
      ((z1 + ((tmp12) * (((INT32) 6270)))) >> (13 +2));

    dataptr[8*6] = (DCTELEM)
      ((z1 - ((tmp13) * (((INT32) 15137)))) >> (13 +2));






    tmp12 = tmp0 + tmp2;
    tmp13 = tmp1 + tmp3;

    z1 = ((tmp12 + tmp13) * (((INT32) 9633)));

    z1 += ((INT32) 1) << (13 +2 -1);

    tmp12 = ((tmp12) * (- ((INT32) 3196)));
    tmp13 = ((tmp13) * (- ((INT32) 16069)));
    tmp12 += z1;
    tmp13 += z1;

    z1 = ((tmp0 + tmp3) * (- ((INT32) 7373)));
    tmp0 = ((tmp0) * (((INT32) 12299)));
    tmp3 = ((tmp3) * (((INT32) 2446)));
    tmp0 += z1 + tmp12;
    tmp3 += z1 + tmp13;

    z1 = ((tmp1 + tmp2) * (- ((INT32) 20995)));
    tmp1 = ((tmp1) * (((INT32) 25172)));
    tmp2 = ((tmp2) * (((INT32) 16819)));
    tmp1 += z1 + tmp13;
    tmp2 += z1 + tmp12;

    dataptr[8*1] = (DCTELEM) ((tmp0) >> (13 +2));
    dataptr[8*3] = (DCTELEM) ((tmp1) >> (13 +2));
    dataptr[8*5] = (DCTELEM) ((tmp2) >> (13 +2));
    dataptr[8*7] = (DCTELEM) ((tmp3) >> (13 +2));

    dataptr++;
  }
}
# 4194 "./obj/jfdctint.c"
void
jpeg_fdct_3x6 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1, tmp2;
  INT32 tmp10, tmp11, tmp12;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 4215 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 6; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0])) + ((int) (elemptr[2]));
    tmp1 = ((int) (elemptr[1]));

    tmp2 = ((int) (elemptr[0])) - ((int) (elemptr[2]));


    dataptr[0] = (DCTELEM)
      ((tmp0 + tmp1 - 3 * 128) << (2 +1));
    dataptr[2] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp1) * (((INT32) ((0.707106781) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));




    dataptr[1] = (DCTELEM)
      (((((tmp2) * (((INT32) ((1.224744871) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 -2 -1)-1))) >> (13 -2 -1));


    dataptr += 8;
  }
# 4250 "./obj/jfdctint.c"
  dataptr = data;
  for (ctr = 0; ctr < 3; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*5];
    tmp11 = dataptr[8*1] + dataptr[8*4];
    tmp2 = dataptr[8*2] + dataptr[8*3];

    tmp10 = tmp0 + tmp2;
    tmp12 = tmp0 - tmp2;

    tmp0 = dataptr[8*0] - dataptr[8*5];
    tmp1 = dataptr[8*1] - dataptr[8*4];
    tmp2 = dataptr[8*2] - dataptr[8*3];

    dataptr[8*0] = (DCTELEM)
      (((((tmp10 + tmp11) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*2] = (DCTELEM)
      (((((tmp12) * (((INT32) ((2.177324216) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*4] = (DCTELEM)
      (((((tmp10 - tmp11 - tmp11) * (((INT32) ((1.257078722) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));




    tmp10 = ((tmp0 + tmp2) * (((INT32) ((0.650711829) * (((INT32) 1) << 13) + 0.5))));

    dataptr[8*1] = (DCTELEM)
      (((tmp10 + ((tmp0 + tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*3] = (DCTELEM)
      (((((tmp0 - tmp1 - tmp2) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));

    dataptr[8*5] = (DCTELEM)
      (((tmp10 + ((tmp2 - tmp1) * (((INT32) ((1.777777778) * (((INT32) 1) << 13) + 0.5))))) + (((INT32) 1) << ((13 +2)-1))) >> (13 +2));


    dataptr++;
  }
}
# 4300 "./obj/jfdctint.c"
void
jpeg_fdct_2x4 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  INT32 tmp0, tmp1;
  INT32 tmp10, tmp11;
  DCTELEM *dataptr;
  JSAMPROW elemptr;
  int ctr;



  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));






  dataptr = data;
  for (ctr = 0; ctr < 4; ctr++) {
    elemptr = sample_data[ctr] + start_col;



    tmp0 = ((int) (elemptr[0]));
    tmp1 = ((int) (elemptr[1]));


    dataptr[0] = (DCTELEM) ((tmp0 + tmp1 - 2 * 128) << 3);



    dataptr[1] = (DCTELEM) ((tmp0 - tmp1) << 3);

    dataptr += 8;
  }







  dataptr = data;
  for (ctr = 0; ctr < 2; ctr++) {


    tmp0 = dataptr[8*0] + dataptr[8*3];
    tmp1 = dataptr[8*1] + dataptr[8*2];

    tmp10 = dataptr[8*0] - dataptr[8*3];
    tmp11 = dataptr[8*1] - dataptr[8*2];

    dataptr[8*0] = (DCTELEM) (tmp0 + tmp1);
    dataptr[8*2] = (DCTELEM) (tmp0 - tmp1);



    tmp0 = ((tmp10 + tmp11) * (((INT32) 4433)));

    tmp0 += ((INT32) 1) << (13 -1);

    dataptr[8*1] = (DCTELEM)
      ((tmp0 + ((tmp10) * (((INT32) 6270)))) >> (13));

    dataptr[8*3] = (DCTELEM)
      ((tmp0 - ((tmp11) * (((INT32) 15137)))) >> (13));


    dataptr++;
  }
}
# 4380 "./obj/jfdctint.c"
void
jpeg_fdct_1x2 (DCTELEM * data, JSAMPARRAY sample_data, JDIMENSION start_col)
{
  DCTELEM tmp0, tmp1;


  memset((void *)(data), 0, (size_t)(((size_t) sizeof(DCTELEM)) * 64));
# 4397 "./obj/jfdctint.c"
  tmp0 = ((int) (sample_data[0][start_col]));
  tmp1 = ((int) (sample_data[1][start_col]));


  data[8*0] = (tmp0 + tmp1 - 2 * 128) << 5;



  data[8*1] = (tmp0 - tmp1) << 5;
}
