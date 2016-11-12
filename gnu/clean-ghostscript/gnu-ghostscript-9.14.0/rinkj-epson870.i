# 1 "./devices/rinkj/rinkj-epson870.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./devices/rinkj/rinkj-epson870.c" 2
# 19 "./devices/rinkj/rinkj-epson870.c"
# 1 "/usr/include/stdlib.h" 1 3 4
# 24 "/usr/include/stdlib.h" 3 4
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
# 25 "/usr/include/stdlib.h" 2 3 4







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef int wchar_t;
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
# 20 "./devices/rinkj/rinkj-epson870.c" 2
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
# 21 "./devices/rinkj/rinkj-epson870.c" 2
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
# 22 "./devices/rinkj/rinkj-epson870.c" 2

# 1 "./devices/rinkj/rinkj-byte-stream.h" 1
# 19 "./devices/rinkj/rinkj-byte-stream.h"
typedef struct _RinkjByteStream RinkjByteStream;

struct _RinkjByteStream {
  int (*write) (RinkjByteStream *self, const char *buf, int size);
};

int
rinkj_byte_stream_write (RinkjByteStream *bs, const char *buf, int size);

int
rinkj_byte_stream_puts (RinkjByteStream *bs, const char *str);

int
rinkj_byte_stream_printf (RinkjByteStream *bs, const char *fmt, ...);

int
rinkj_byte_stream_close (RinkjByteStream *bs);

RinkjByteStream *
rinkj_byte_stream_file_new (FILE *f);
# 24 "./devices/rinkj/rinkj-epson870.c" 2
# 1 "./devices/rinkj/rinkj-device.h" 1
# 19 "./devices/rinkj/rinkj-device.h"
typedef struct _RinkjDevice RinkjDevice;
typedef struct _RinkjDeviceParams RinkjDeviceParams;

struct _RinkjDeviceParams {
  int width;
  int height;
  int n_planes;
  char *plane_names;
};

struct _RinkjDevice {
  int (*set) (RinkjDevice *self, const char *config);
  int (*init) (RinkjDevice *self, const RinkjDeviceParams *params);
  int (*write) (RinkjDevice *self, const char **data);
  int init_happened;
};


int
rinkj_device_set (RinkjDevice *self, const char *config);

int
rinkj_device_set_param (RinkjDevice *self, const char *key,
                        const char *value, int value_size);


int
rinkj_device_set_param_string (RinkjDevice *self, const char *key,
                               const char *value);
int
rinkj_device_set_param_int (RinkjDevice *self, const char *key, int value);

int
rinkj_device_init (RinkjDevice *self, const RinkjDeviceParams *params);

int
rinkj_device_write (RinkjDevice *self, const char **data);
# 25 "./devices/rinkj/rinkj-epson870.c" 2
# 1 "./devices/rinkj/rinkj-config.h" 1
# 19 "./devices/rinkj/rinkj-config.h"
char *
rinkj_strdup_size (const char *src, int size);

char *
rinkj_config_get (const char *config, const char *key);

char *
rinkj_config_keyval (const char *config, char **p_val, const char **p_next);
# 26 "./devices/rinkj/rinkj-epson870.c" 2
# 1 "./devices/rinkj/rinkj-epson870.h" 1
# 19 "./devices/rinkj/rinkj-epson870.h"
RinkjDevice *
rinkj_epson870_new (RinkjByteStream *out);
# 27 "./devices/rinkj/rinkj-epson870.c" 2

typedef struct _RinkjEscp RinkjEscp;

struct _RinkjEscp {
  RinkjDevice super;
  RinkjByteStream *out;
  int width;
  int height;
  int y;

  char *manufacturer;
  char *model;

  int num_chan;
  int bps;

  int xres;
  int yres;

  int head_bps;
  int head_xres;
  int head_yres;


  int passes_per_scan;


  int spacing;
  int n_pins;

  int plane_offsets[6];
  int max_offset;

  char *buf;
  unsigned char *buf_linevalid;
  int bufheight;
  int rowstride;
  int planestride;
  int pass;

  int vertpos;


  int autocut;
  int blankskip;
  int microdot;
  int unidir;
  int printer_weave;
};

static int
rinkj_escp_set (RinkjDevice *self, const char *config)
{
  RinkjEscp *z = (RinkjEscp *)self;
  const char *p, *next;
  char *key, *val;

  for (p = config; (key = rinkj_config_keyval (p, &val, &next)); p = next)
    {
      if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("Resolution") && (__s1_len = strlen (key), __s2_len = strlen ("Resolution"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Resolution") + 1) - (size_t)(const void *)("Resolution") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "Resolution") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("Resolution") && ((size_t)(const void *)(("Resolution") + 1) - (size_t)(const void *)("Resolution") == 1) ? __builtin_strcmp (key, "Resolution") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Resolution"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Resolution") && ((size_t)(const void *)(("Resolution") + 1) - (size_t)(const void *)("Resolution") == 1) && (__s2_len = strlen ("Resolution"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "Resolution") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Resolution"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Resolution"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Resolution"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Resolution"))[3]); } } __result; }))) : __builtin_strcmp (key, "Resolution")))); }))
        {
          char *p;

          z->xres = atoi (val);
          p = (__extension__ (__builtin_constant_p ('x') && !__builtin_constant_p (val) && ('x') == '\0' ? (char *) __rawmemchr (val, 'x') : __builtin_strchr (val, 'x')));
          if (p != ((void*)0))
            z->yres = atoi (p + 1);
          else
            z->yres = z->xres;



        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("Manufacturer") && (__s1_len = strlen (key), __s2_len = strlen ("Manufacturer"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Manufacturer") + 1) - (size_t)(const void *)("Manufacturer") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "Manufacturer") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("Manufacturer") && ((size_t)(const void *)(("Manufacturer") + 1) - (size_t)(const void *)("Manufacturer") == 1) ? __builtin_strcmp (key, "Manufacturer") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Manufacturer"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Manufacturer") && ((size_t)(const void *)(("Manufacturer") + 1) - (size_t)(const void *)("Manufacturer") == 1) && (__s2_len = strlen ("Manufacturer"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "Manufacturer") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Manufacturer"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Manufacturer"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Manufacturer"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Manufacturer"))[3]); } } __result; }))) : __builtin_strcmp (key, "Manufacturer")))); }))
        {
          if (z->manufacturer)
            free (z->manufacturer);
          z->manufacturer = val;
          val = ((void*)0);
        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("Model") && (__s1_len = strlen (key), __s2_len = strlen ("Model"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Model") + 1) - (size_t)(const void *)("Model") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "Model") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("Model") && ((size_t)(const void *)(("Model") + 1) - (size_t)(const void *)("Model") == 1) ? __builtin_strcmp (key, "Model") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Model"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Model") && ((size_t)(const void *)(("Model") + 1) - (size_t)(const void *)("Model") == 1) && (__s2_len = strlen ("Model"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "Model") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Model"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Model"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Model"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Model"))[3]); } } __result; }))) : __builtin_strcmp (key, "Model")))); }))
        {
          if (z->model)
            free (z->model);
          z->model = val;
          val = ((void*)0);
        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("BitsPerSample") && (__s1_len = strlen (key), __s2_len = strlen ("BitsPerSample"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("BitsPerSample") + 1) - (size_t)(const void *)("BitsPerSample") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "BitsPerSample") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("BitsPerSample") && ((size_t)(const void *)(("BitsPerSample") + 1) - (size_t)(const void *)("BitsPerSample") == 1) ? __builtin_strcmp (key, "BitsPerSample") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("BitsPerSample"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("BitsPerSample") && ((size_t)(const void *)(("BitsPerSample") + 1) - (size_t)(const void *)("BitsPerSample") == 1) && (__s2_len = strlen ("BitsPerSample"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "BitsPerSample") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("BitsPerSample"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("BitsPerSample"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("BitsPerSample"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("BitsPerSample"))[3]); } } __result; }))) : __builtin_strcmp (key, "BitsPerSample")))); }))
        {
          z->bps = atoi (val);



        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("NumChan") && (__s1_len = strlen (key), __s2_len = strlen ("NumChan"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("NumChan") + 1) - (size_t)(const void *)("NumChan") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "NumChan") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("NumChan") && ((size_t)(const void *)(("NumChan") + 1) - (size_t)(const void *)("NumChan") == 1) ? __builtin_strcmp (key, "NumChan") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("NumChan"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("NumChan") && ((size_t)(const void *)(("NumChan") + 1) - (size_t)(const void *)("NumChan") == 1) && (__s2_len = strlen ("NumChan"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "NumChan") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("NumChan"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("NumChan"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("NumChan"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("NumChan"))[3]); } } __result; }))) : __builtin_strcmp (key, "NumChan")))); }))
        {

          z->num_chan = atoi (val);



        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("PrinterWeave") && (__s1_len = strlen (key), __s2_len = strlen ("PrinterWeave"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("PrinterWeave") + 1) - (size_t)(const void *)("PrinterWeave") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "PrinterWeave") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("PrinterWeave") && ((size_t)(const void *)(("PrinterWeave") + 1) - (size_t)(const void *)("PrinterWeave") == 1) ? __builtin_strcmp (key, "PrinterWeave") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("PrinterWeave"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("PrinterWeave") && ((size_t)(const void *)(("PrinterWeave") + 1) - (size_t)(const void *)("PrinterWeave") == 1) && (__s2_len = strlen ("PrinterWeave"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "PrinterWeave") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("PrinterWeave"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("PrinterWeave"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("PrinterWeave"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("PrinterWeave"))[3]); } } __result; }))) : __builtin_strcmp (key, "PrinterWeave")))); }))
        {
          z->printer_weave = atoi (val);
        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("Microdot") && (__s1_len = strlen (key), __s2_len = strlen ("Microdot"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Microdot") + 1) - (size_t)(const void *)("Microdot") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "Microdot") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("Microdot") && ((size_t)(const void *)(("Microdot") + 1) - (size_t)(const void *)("Microdot") == 1) ? __builtin_strcmp (key, "Microdot") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Microdot"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Microdot") && ((size_t)(const void *)(("Microdot") + 1) - (size_t)(const void *)("Microdot") == 1) && (__s2_len = strlen ("Microdot"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "Microdot") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Microdot"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Microdot"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Microdot"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Microdot"))[3]); } } __result; }))) : __builtin_strcmp (key, "Microdot")))); }))
        {
          z->microdot = atoi (val);
        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("Unidirectional") && (__s1_len = strlen (key), __s2_len = strlen ("Unidirectional"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Unidirectional") + 1) - (size_t)(const void *)("Unidirectional") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "Unidirectional") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("Unidirectional") && ((size_t)(const void *)(("Unidirectional") + 1) - (size_t)(const void *)("Unidirectional") == 1) ? __builtin_strcmp (key, "Unidirectional") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Unidirectional"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Unidirectional") && ((size_t)(const void *)(("Unidirectional") + 1) - (size_t)(const void *)("Unidirectional") == 1) && (__s2_len = strlen ("Unidirectional"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "Unidirectional") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Unidirectional"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Unidirectional"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Unidirectional"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Unidirectional"))[3]); } } __result; }))) : __builtin_strcmp (key, "Unidirectional")))); }))
        {
          z->unidir = atoi (val);
        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("AutoCut") && (__s1_len = strlen (key), __s2_len = strlen ("AutoCut"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("AutoCut") + 1) - (size_t)(const void *)("AutoCut") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "AutoCut") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("AutoCut") && ((size_t)(const void *)(("AutoCut") + 1) - (size_t)(const void *)("AutoCut") == 1) ? __builtin_strcmp (key, "AutoCut") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("AutoCut"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("AutoCut") && ((size_t)(const void *)(("AutoCut") + 1) - (size_t)(const void *)("AutoCut") == 1) && (__s2_len = strlen ("AutoCut"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "AutoCut") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("AutoCut"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("AutoCut"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("AutoCut"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("AutoCut"))[3]); } } __result; }))) : __builtin_strcmp (key, "AutoCut")))); }))
        {
          z->autocut = atoi (val);
        }
      else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (key) && __builtin_constant_p ("BlankSkip") && (__s1_len = strlen (key), __s2_len = strlen ("BlankSkip"), (!((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("BlankSkip") + 1) - (size_t)(const void *)("BlankSkip") == 1) || __s2_len >= 4)) ? __builtin_strcmp (key, "BlankSkip") : (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) && (__s1_len = strlen (key), __s1_len < 4) ? (__builtin_constant_p ("BlankSkip") && ((size_t)(const void *)(("BlankSkip") + 1) - (size_t)(const void *)("BlankSkip") == 1) ? __builtin_strcmp (key, "BlankSkip") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("BlankSkip"); register int __result = (((const unsigned char *) (const char *) (key))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (key))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (key))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("BlankSkip") && ((size_t)(const void *)(("BlankSkip") + 1) - (size_t)(const void *)("BlankSkip") == 1) && (__s2_len = strlen ("BlankSkip"), __s2_len < 4) ? (__builtin_constant_p (key) && ((size_t)(const void *)((key) + 1) - (size_t)(const void *)(key) == 1) ? __builtin_strcmp (key, "BlankSkip") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (key); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("BlankSkip"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("BlankSkip"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("BlankSkip"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("BlankSkip"))[3]); } } __result; }))) : __builtin_strcmp (key, "BlankSkip")))); }))
        {
          z->blankskip = atoi (val);
        }
      free (key);
      if (val)
        free (val);
    }
  return 0;
}

static int
rinkj_escp_ytop (RinkjEscp *z, int pass, int *p_x_pass)
{
  int ytop;
  int x_pass, y_pass;
  int passes_per_scan = z->passes_per_scan;
  int spacing = z->spacing;
  int n_cycle = spacing * passes_per_scan;
  int mod_pass = pass % n_cycle;
  int y_modulo;
  const int four[4] = { 0, 3, 1, 2 };
  const int six[6] = { 0, 3, 2, 5, 1, 4 };

  ytop = mod_pass * z->n_pins * spacing / n_cycle;

  x_pass = mod_pass / spacing;
  y_pass = mod_pass % spacing;
  if (passes_per_scan == 4)
    x_pass = four[x_pass];





  switch (spacing)
    {
    case 4:
      y_modulo = four[y_pass];
      break;
    case 6:
      y_modulo = six[y_pass];
      break;
    case 8:
      y_modulo = y_pass * 3;
      break;
    default:
      y_modulo = y_pass;
      break;
    }

  ytop += (spacing + y_modulo - ytop % spacing) % spacing;
  ytop += (pass / n_cycle) * spacing * z->n_pins;

  if (spacing == 4 && passes_per_scan == 4 && z->n_pins == 96)
    {
      const int sixteen[] = { 0, 3, 1, 0, 3, 1, 2, 3, 1, 2, 0, 1, 2, 0, 3, 2 };
      x_pass = sixteen[mod_pass & 15];
      ytop = pass * 23;
    }





  if (p_x_pass)
    *p_x_pass = x_pass;
  return ytop;
}

static int
rinkj_epson_headres (RinkjEscp *z, int baseres)
{
  return rinkj_byte_stream_printf (z->out, "\033(D\004%c%c%c%c%c", 0,
                                   baseres & 255, baseres >> 8,
                                   baseres / z->head_yres,
                                   baseres / z->head_xres);
}

static int
rinkj_epson_units (RinkjEscp *z, int xres, int yres, int baseres)
{
  return rinkj_byte_stream_printf (z->out, "\033(U\005%c%c%c%c%c%c", 0,
                                   baseres / yres,
                                   baseres / yres,
                                   baseres / xres,
                                   baseres & 255, baseres >> 8);
}

static int
rinkj_epson_set_common (RinkjEscp *z)
{
  int status = 0;

  if (z->printer_weave >= 0)

    status = rinkj_byte_stream_printf (z->out, "\033(i\001%c%c", 0,
                                       z->printer_weave);

  if (status == 0 && z->unidir >= 0)

    status = rinkj_byte_stream_printf (z->out, "\033U%c", z->unidir);

  if (status == 0 && z->microdot >= 0)

    status = rinkj_byte_stream_printf (z->out, "\033(e\002%c%c%c", 0, 0,
                                       z->microdot);

  return status;
}





static int
rinkj_epson870_init (RinkjDevice *self, const RinkjDeviceParams *params)
{
  RinkjEscp *z = (RinkjEscp *)self;

  rinkj_byte_stream_printf (z->out,
                            "%c%c%c\033\001@EJL 1284.4\n", 0, 0, 0);
  rinkj_byte_stream_printf (z->out, "@EJL     \n\033@\033@");




  rinkj_byte_stream_printf (z->out, "\033(G\001%c\001", 0);


  rinkj_byte_stream_printf (z->out, "\033(U\005%c\002\002\002\240\005", 0);

  rinkj_epson_set_common(z);


  rinkj_byte_stream_printf (z->out, "\033(C\002%cx\037", 0);







  rinkj_byte_stream_printf (z->out, "\033(D\004%c@8x(", 0);




  return 0;
}





static int
rinkj_epson2200_init (RinkjDevice *self, const RinkjDeviceParams *params)
{
  RinkjEscp *z = (RinkjEscp *)self;

  rinkj_byte_stream_printf (z->out,
                            "%c%c%c\033\001@EJL 1284.4\n", 0, 0, 0);
  rinkj_byte_stream_printf (z->out, "@EJL     \n\033@\033@");


  rinkj_byte_stream_printf( z->out,
                            "\033(R%c%c%cREMOTE1", 8, 0, 0);
  rinkj_byte_stream_printf( z->out,
                            "PP\003%c%c\002%cPH\002%c%c\001SN\003%c%c\004k",
                            0, 0, 0, 0, 0, 0, 0);
  rinkj_byte_stream_printf( z->out,
                            "\033%c%c%c", 0, 0, 0);


  rinkj_byte_stream_printf (z->out, "\033(G\001%c\001", 0);

  rinkj_epson_units(z, z->xres, z->yres, 2880);

  rinkj_epson_set_common(z);


  rinkj_byte_stream_printf (z->out, "\033(C\002%c\200p", 0);





  rinkj_epson_headres (z, 2880);




  return 0;
}





static int
rinkj_epson7600_init (RinkjDevice *self, const RinkjDeviceParams *params)
{
  RinkjEscp *z = (RinkjEscp *)self;
  int pl;
  int pw = 720 * 24;






  rinkj_byte_stream_printf (z->out, "\033@\033@");



  rinkj_byte_stream_printf( z->out,
                            "\033(R%c%c%cREMOTE1", 8, 0, 0);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 1, 0);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 2, 6);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 3, 0);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 4, 129);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 5, 51);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 8, 0);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 9, 2);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 10, 0);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 128, 1);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 129, 0);
  if (z->autocut >= 0)
    rinkj_byte_stream_printf( z->out, "AC%c%c%c%c", 2, 0, 0, z->autocut);
  if (z->blankskip >= 0)
    rinkj_byte_stream_printf( z->out, "AC%c%c%c%c", 2, 0, 0, 64 + z->blankskip);
  rinkj_byte_stream_printf( z->out, "DR%c%c%c%c%c%c", 4, 0, 0, 1, 0, 0);
  rinkj_byte_stream_printf( z->out, "DR%c%c%c%c%c%c", 4, 0, 0, 0, 0, 0);
  rinkj_byte_stream_printf( z->out, "PH%c%c%c%c", 2, 0, 0, 0);
  rinkj_byte_stream_printf( z->out, "FP%c%c%c%c%c", 3, 0, 0, 0, 0);
  rinkj_byte_stream_printf( z->out, "AC%c%c%c%c", 2, 0, 0, 64);
  rinkj_byte_stream_printf( z->out, "SN%c%c%c%c%c", 3, 0, 0, 132, 1);
  rinkj_byte_stream_printf( z->out, "PP%c%c%c%c%c", 3, 0, 0, 3, 0);
  rinkj_byte_stream_printf( z->out, "IK%c%c%c%c", 2, 0, 0, 1);
  rinkj_byte_stream_printf( z->out, "EX%c%c%c%c%c%c%c%c", 6, 0, 0, 0, 0, 0, 20, 0);
  rinkj_byte_stream_printf( z->out,
                            "\033%c%c%c", 0, 0, 0);



  rinkj_byte_stream_printf (z->out, "\033(G\001%c\001", 0);


  rinkj_byte_stream_printf (z->out, "\033(U\005%c\002\002\002\240\005", 0);

  rinkj_epson_set_common(z);

  pl = z->height * 720 / z->yres + 180;

  rinkj_byte_stream_printf (z->out, "\033(S\010%c%c%c%c%c%c%c%c%c", 0,
                            pw & 255, (pw >> 8) & 255, (pw >> 16) & 255, pw >> 24,
                            pl & 255, (pl >> 8) & 255, (pl >> 16) & 255, pl >> 24);

  rinkj_byte_stream_printf (z->out, "\033(c\010%c%c%c%c%c%c%c%c%c", 0,
                            0, 0, 0, 0,
                            pl & 255, (pl >> 8) & 255, (pl >> 16) & 255, pl >> 24);

  rinkj_epson_headres (z, 2880);




  return 0;
}





static int
rinkj_epsonc80_init (RinkjDevice *self, const RinkjDeviceParams *params)
{
  RinkjEscp *z = (RinkjEscp *)self;

  rinkj_byte_stream_printf (z->out,
                            "%c%c%c\033\001@EJL 1284.4\n", 0, 0, 0);
  rinkj_byte_stream_printf (z->out, "@EJL     \n\033@\033@");




  rinkj_byte_stream_printf (z->out, "\033(G\001%c\001", 0);


  rinkj_byte_stream_printf (z->out, "\033(U\005%c\002\002\002\240\005", 0);

  rinkj_epson_set_common(z);


  rinkj_byte_stream_printf (z->out, "\033(C\002%cx\037", 0);


  rinkj_byte_stream_printf (z->out, "\033(c\010%c\040\376\377\377\376\036%c%c",
                            0, 0, 0);







  rinkj_byte_stream_printf (z->out, "\033(D\004%c@8P(", 0);




  return 0;
}

static int
rinkj_escp_init (RinkjDevice *self, const RinkjDeviceParams *params)
{
  RinkjEscp *z = (RinkjEscp *)self;
  int resolution = 720;
  int uweave;
  int height, top, bottom;
  int i;

  z->width = params->width;
  z->height = params->height;
  z->num_chan = params->n_planes;


  z->pass = 0;


  top = 0 * resolution;
  bottom = params->height + 0.5 * resolution;
  height = params->height * resolution + resolution;


  for (i = 0; i < sizeof(z->plane_offsets) / sizeof(z->plane_offsets[0]); i++)
    z->plane_offsets[i] = 0;






  if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus Photo 870") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus Photo 870"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus Photo 870") + 1) - (size_t)(const void *)("Stylus Photo 870") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus Photo 870") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus Photo 870") && ((size_t)(const void *)(("Stylus Photo 870") + 1) - (size_t)(const void *)("Stylus Photo 870") == 1) ? __builtin_strcmp (z->model, "Stylus Photo 870") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus Photo 870"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus Photo 870") && ((size_t)(const void *)(("Stylus Photo 870") + 1) - (size_t)(const void *)("Stylus Photo 870") == 1) && (__s2_len = strlen ("Stylus Photo 870"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus Photo 870") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus Photo 870")))); }))
    {
      z->head_xres = 360;
      z->head_yres = 120;
      z->head_bps = 2;
      z->n_pins = 48;
      z->printer_weave = 0;
    }
  else if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus Photo 2200") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus Photo 2200"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus Photo 2200") + 1) - (size_t)(const void *)("Stylus Photo 2200") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus Photo 2200") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus Photo 2200") && ((size_t)(const void *)(("Stylus Photo 2200") + 1) - (size_t)(const void *)("Stylus Photo 2200") == 1) ? __builtin_strcmp (z->model, "Stylus Photo 2200") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus Photo 2200"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus Photo 2200") && ((size_t)(const void *)(("Stylus Photo 2200") + 1) - (size_t)(const void *)("Stylus Photo 2200") == 1) && (__s2_len = strlen ("Stylus Photo 2200"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus Photo 2200") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus Photo 2200")))); }))
    {
      z->head_xres = 360;
      z->head_yres = 180;
      z->head_bps = 2;
      if (z->xres == 2880)
        {
          z->head_xres = 720;
          z->head_bps = 1;
        }
      z->n_pins = 96;
      z->printer_weave = 0;
      z->plane_offsets[3] = z->yres / 360;
      z->plane_offsets[4] = z->yres / 360;
      z->plane_offsets[5] = z->yres / 360;
    }
  else if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus Photo 7600") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus Photo 7600"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus Photo 7600") + 1) - (size_t)(const void *)("Stylus Photo 7600") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus Photo 7600") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus Photo 7600") && ((size_t)(const void *)(("Stylus Photo 7600") + 1) - (size_t)(const void *)("Stylus Photo 7600") == 1) ? __builtin_strcmp (z->model, "Stylus Photo 7600") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus Photo 7600"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus Photo 7600") && ((size_t)(const void *)(("Stylus Photo 7600") + 1) - (size_t)(const void *)("Stylus Photo 7600") == 1) && (__s2_len = strlen ("Stylus Photo 7600"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus Photo 7600") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus Photo 7600")))); }))
    {
      z->head_xres = z->xres;
      z->head_yres = z->yres;
      z->head_bps = z->bps;
      z->n_pins = 1;
    }
  else if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus C80") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus C80"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus C80") + 1) - (size_t)(const void *)("Stylus C80") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus C80") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus C80") && ((size_t)(const void *)(("Stylus C80") + 1) - (size_t)(const void *)("Stylus C80") == 1) ? __builtin_strcmp (z->model, "Stylus C80") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus C80"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus C80") && ((size_t)(const void *)(("Stylus C80") + 1) - (size_t)(const void *)("Stylus C80") == 1) && (__s2_len = strlen ("Stylus C80"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus C80") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus C80"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus C80"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus C80"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus C80"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus C80")))); }))
    {
      z->head_xres = 360;
      z->head_yres = 180;
      z->head_bps = 2;
      z->n_pins = 60;
      z->printer_weave = 0;
      z->plane_offsets[0] = 480;
      z->plane_offsets[1] = 240;
      z->plane_offsets[2] = 480;
    }
  else
    {
      z->spacing = 1;
      z->n_pins = 1;
    }

  z->spacing = z->yres / z->head_yres;
  z->passes_per_scan = z->xres / z->head_xres;


  uweave = (z->n_pins == 1);

  z->max_offset = 0;
  for (i = 0; i < sizeof(z->plane_offsets) / sizeof(z->plane_offsets[0]); i++)
    if (z->plane_offsets[i] > z->max_offset)
      z->max_offset = z->plane_offsets[i];

  z->y = rinkj_escp_ytop (z, z->spacing * z->passes_per_scan - 1, ((void*)0)) -
    (z->spacing - 1) + z->max_offset;

  z->planestride = (z->width * z->bps + 7) >> 3;
  z->rowstride = z->planestride * z->num_chan;
  z->bufheight = 2048;
  z->buf = (char *)calloc (z->rowstride, z->bufheight);
  z->buf_linevalid = (unsigned char *)calloc (z->num_chan, z->bufheight);
  z->vertpos = -1;

  if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus Photo 870") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus Photo 870"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus Photo 870") + 1) - (size_t)(const void *)("Stylus Photo 870") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus Photo 870") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus Photo 870") && ((size_t)(const void *)(("Stylus Photo 870") + 1) - (size_t)(const void *)("Stylus Photo 870") == 1) ? __builtin_strcmp (z->model, "Stylus Photo 870") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus Photo 870"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus Photo 870") && ((size_t)(const void *)(("Stylus Photo 870") + 1) - (size_t)(const void *)("Stylus Photo 870") == 1) && (__s2_len = strlen ("Stylus Photo 870"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus Photo 870") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus Photo 870"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus Photo 870")))); }))
    rinkj_epson870_init (self, params);
  else if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus Photo 2200") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus Photo 2200"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus Photo 2200") + 1) - (size_t)(const void *)("Stylus Photo 2200") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus Photo 2200") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus Photo 2200") && ((size_t)(const void *)(("Stylus Photo 2200") + 1) - (size_t)(const void *)("Stylus Photo 2200") == 1) ? __builtin_strcmp (z->model, "Stylus Photo 2200") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus Photo 2200"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus Photo 2200") && ((size_t)(const void *)(("Stylus Photo 2200") + 1) - (size_t)(const void *)("Stylus Photo 2200") == 1) && (__s2_len = strlen ("Stylus Photo 2200"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus Photo 2200") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus Photo 2200"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus Photo 2200")))); }))
    rinkj_epson2200_init (self, params);
  else if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus Photo 7600") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus Photo 7600"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus Photo 7600") + 1) - (size_t)(const void *)("Stylus Photo 7600") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus Photo 7600") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus Photo 7600") && ((size_t)(const void *)(("Stylus Photo 7600") + 1) - (size_t)(const void *)("Stylus Photo 7600") == 1) ? __builtin_strcmp (z->model, "Stylus Photo 7600") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus Photo 7600"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus Photo 7600") && ((size_t)(const void *)(("Stylus Photo 7600") + 1) - (size_t)(const void *)("Stylus Photo 7600") == 1) && (__s2_len = strlen ("Stylus Photo 7600"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus Photo 7600") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus Photo 7600"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus Photo 7600")))); }))
    rinkj_epson7600_init (self, params);
  else if (z->model && !__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (z->model) && __builtin_constant_p ("Stylus C80") && (__s1_len = strlen (z->model), __s2_len = strlen ("Stylus C80"), (!((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Stylus C80") + 1) - (size_t)(const void *)("Stylus C80") == 1) || __s2_len >= 4)) ? __builtin_strcmp (z->model, "Stylus C80") : (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) && (__s1_len = strlen (z->model), __s1_len < 4) ? (__builtin_constant_p ("Stylus C80") && ((size_t)(const void *)(("Stylus C80") + 1) - (size_t)(const void *)("Stylus C80") == 1) ? __builtin_strcmp (z->model, "Stylus C80") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Stylus C80"); register int __result = (((const unsigned char *) (const char *) (z->model))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (z->model))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (z->model))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Stylus C80") && ((size_t)(const void *)(("Stylus C80") + 1) - (size_t)(const void *)("Stylus C80") == 1) && (__s2_len = strlen ("Stylus C80"), __s2_len < 4) ? (__builtin_constant_p (z->model) && ((size_t)(const void *)((z->model) + 1) - (size_t)(const void *)(z->model) == 1) ? __builtin_strcmp (z->model, "Stylus C80") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (z->model); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Stylus C80"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Stylus C80"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Stylus C80"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Stylus C80"))[3]); } } __result; }))) : __builtin_strcmp (z->model, "Stylus C80")))); }))
    rinkj_epsonc80_init (self, params);


  return 0;

}
# 585 "./devices/rinkj/rinkj-epson870.c"
static void
rinkj_escp_shuffle_dblx (char *dst, const char *src, int pass, int n_bytes)
{
  int i;
  int n_dst;
  unsigned char s0, s1;

  n_dst = n_bytes >> 1;
  for (i = 0; i < n_dst; i++)
    {
      s0 = src[i * 2] << pass;
      s1 = src[i * 2 + 1] << pass;
      dst[i] = (s0 & 0x80) | ((s0 & 0x20) << 1) | ((s0 & 8) << 2) | ((s0 & 2) << 3) |
        ((s1 & 0x80) >> 4) | ((s1 & 0x20) >> 3) | ((s1 & 8) >> 2) | ((s1 & 2) >> 1);
    }
  if (n_bytes & 1)
    {
      s0 = src[n_bytes - 1] << pass;
      dst[n_dst] = (s0 & 0x80) | ((s0 & 0x20) << 1) | ((s0 & 8) << 2) | ((s0 & 2) << 3);
    }
}
# 618 "./devices/rinkj/rinkj-epson870.c"
static void
rinkj_escp_shuffle_4pass_1bit (char *dst, const char *src, int pass, int n_bytes)
{
  int i;
  int n_dst;
  unsigned char s0, s1, s2, s3;
  int shift = pass;

  n_dst = n_bytes >> 2;
  for (i = 0; i < n_dst; i++)
    {
      s0 = src[i * 4] << shift;
      s1 = src[i * 4 + 1] << shift;
      s2 = src[i * 4 + 2] << shift;
      s3 = src[i * 4 + 3] << shift;
      dst[i] = (s0 & 0x80) | ((s0 & 8) << 3) |
        ((s1 & 0x80) >> 2) | ((s1 & 8) << 1) |
        ((s2 & 0x80) >> 4) | ((s2 & 8) >> 1) |
        ((s3 & 0x80) >> 6) | ((s3 & 8) >> 3);
    }
  if (n_bytes & 3)
    {
      char d = 0;

      for (i = 0; i < (n_bytes & 3); i++)
        {
          s0 = src[n_dst * 4 + i] << shift;
          d |= ((s0 & 0x80) | ((s0 & 8) << 3)) >> (i << 1);
        }
      dst[n_dst] = d;
    }
}
# 662 "./devices/rinkj/rinkj-epson870.c"
static void
rinkj_escp_shuffle_2pass_2bit (char *dst, const char *src, int pass, int n_bytes)
{
  int i;
  int n_dst;
  unsigned char s0, s1;
  int shift = pass << 1;

  n_dst = n_bytes >> 1;
  for (i = 0; i < n_dst; i++)
    {
      s0 = src[i * 2] << shift;
      s1 = src[i * 2 + 1] << shift;
      dst[i] = (s0 & 0xc0) | ((s0 & 0x0c) << 2) |
        ((s1 & 0xc0) >> 4) | ((s1 & 0x0c) >> 2);
    }
  if (n_bytes & 1)
    {
      s0 = src[n_bytes - 1] << shift;
      dst[i] = (s0 & 0xc0) | ((s0 & 0x0c) << 2);
    }
}
# 696 "./devices/rinkj/rinkj-epson870.c"
static void
rinkj_escp_shuffle_4pass_2bit (char *dst, const char *src, int pass, int n_bytes)
{
  int i;
  int n_dst;
  unsigned char s0, s1, s2, s3;
  int shift = pass << 1;

  n_dst = n_bytes >> 2;
  for (i = 0; i < n_dst; i++)
    {
      s0 = src[i * 4] << shift;
      s1 = src[i * 4 + 1] << shift;
      s2 = src[i * 4 + 2] << shift;
      s3 = src[i * 4 + 3] << shift;
      dst[i] = (s0 & 0xc0) | ((s1 & 0xc0) >> 2) |
        ((s2 & 0xc0) >> 4) | ((s3 & 0xc0) >> 6);
    }
  if (n_bytes & 3)
    {
      char d = 0;

      for (i = 0; i < (n_bytes & 3); i++)
        d |= ((src[n_dst * 4 + i] << shift) & 0xc0) >> (i << 1);
      dst[n_dst] = d;
    }
}



static void
rinkj_escp_1pass_dblx (char *dst, const char *src, int n_bytes)
{
  int i;


  for (i = 0; i < n_bytes; i ++)
    {
      unsigned char s = src[i];
      dst[i * 2] = (((s & 0x80) >> 1) | ((s & 0x40) >> 2) |
                    ((s & 0x20) >> 3) | ((s & 0x10) >> 4)) * 3;
      dst[i * 2 + 1] = (((s & 8) << 3) | ((s & 4) << 2) |
                    ((s & 2) << 1) | (s & 1)) * 3;
    }
}

static void
rinkj_escp_select_dblx (char *dst, const char *src, int x_pass, int n_bytes)
{
  int i;

  for (i = 0; i < n_bytes; i++)
    dst[i] = (src[i] >> (1 - x_pass) & 0x55) * 3;
}

static void
rinkj_escp_sel_shuffle_dblx (char *dst, const char *src, int pass, int n_bytes)
{
  int i;
  int n_dst;
  unsigned char s0, s1;

  n_dst = n_bytes >> 1;
  for (i = 0; i < n_dst; i++)
    {
      s0 = src[i * 2] << pass;
      s1 = src[i * 2 + 1] << pass;
      dst[i] = (((s0 & 0x80) >> 1) | ((s0 & 8) << 1) |
        ((s1 & 0x80) >> 5) | ((s1 & 0x8) >> 3)) * 3;
    }
  if (n_bytes & 1)
    {
      s0 = src[n_bytes - 1] << pass;
      dst[n_dst] = (((s0 & 0x80) >> 1) | ((s0 & 8) << 1)) * 3;
    }
}

static void
rinkj_escp_shuffle (char *dst, const char *src, int pass, int n_bytes,
                    int passes_per_scan, int bps, int head_bps)
{
  if (bps == 2 && head_bps == 2)
    {
      if (passes_per_scan == 1)
        memcpy (dst, src, n_bytes);
      else if (passes_per_scan == 2)
        rinkj_escp_shuffle_2pass_2bit (dst, src, pass, n_bytes);
      else if (passes_per_scan == 4)
        rinkj_escp_shuffle_4pass_2bit (dst, src, pass, n_bytes);
    }
  else if (bps == 1 && head_bps == 2)
    {
      if (passes_per_scan == 1)
        rinkj_escp_1pass_dblx (dst, src, n_bytes);
      if (passes_per_scan == 2)
        rinkj_escp_select_dblx (dst, src, pass, n_bytes);
      else if (passes_per_scan == 4)
        rinkj_escp_sel_shuffle_dblx (dst, src, pass, n_bytes);
    }
  else if (bps == 1 && head_bps == 1)
    {
      if (passes_per_scan == 1)
        memcpy (dst, src, n_bytes);
      else if (passes_per_scan == 2)
        rinkj_escp_shuffle_dblx (dst, src, pass, n_bytes);
      else if (passes_per_scan == 4)
        rinkj_escp_shuffle_4pass_1bit (dst, src, pass, n_bytes);
    }
}
# 817 "./devices/rinkj/rinkj-epson870.c"
static int
rinkj_escp_compress_rle (char *dst, const char *src, int n)
{
  int i, j;
  int b;
  int run;

  j = 0;
  for (i = 0; i < n; i += run)
    {
      b = src[i];
      for (run = 1; run < 129 && i + run < n; run++)
        if (b != src[i + run])
          break;
      if (run > 2)
        {
          dst[j++] = 257 - run;
          dst[j++] = b;
        }
      else
        {
          for (run = 1; run < 128 && i + run < n; run++)
            {
              b = src[i + run];
              if (i + run + 2 < n &&
                  b == src[i + run + 1] && b == src[i + run + 2])
                break;
            }
          dst[j++] = run - 1;
          memcpy (dst + j, src + i, run);
          j += run;
        }
    }

  return j;
}

static int
rinkj_escp_flush (RinkjEscp *z)
{
  int xsb, xsb_out;
  int xs_out;
  int status;
  const int plane[7] = {3, 1, 0, 2, 5, 4, 6};
  const int color[7] = {0, 1, 2, 4, 17, 18, 16};
  int i, j;
  int ytop, ysc;
  int bufy;
  char *thisbuf;
  char *compress_buf = ((void*)0);
  int rle = 1;
  int x_pass;
  char pass_mask;
  int m;

  ytop = rinkj_escp_ytop (z, z->pass, &x_pass);
  pass_mask = 1 << x_pass;






  xsb = (z->width * z->bps + 7) >> 3;

  xs_out = (z->width + z->passes_per_scan - 1) / (z->passes_per_scan);
  xsb_out = (((z->width * z->head_bps + 7) >> 3) + z->passes_per_scan - 1) /
    (z->passes_per_scan);

  thisbuf = malloc (xsb_out);
  if (rle)
    compress_buf = malloc (xsb_out + ((xsb_out + 127) >> 7));
  ysc = ytop;
  if (z->vertpos == -1)
    status = rinkj_byte_stream_printf (z->out, "\033(V%c%c%c%c",
                                       2, 0, ysc & 0xff, (ysc >> 8) & 0xff);
  else
    {
      int yrel = ysc - z->vertpos;
      status = rinkj_byte_stream_printf (z->out, "\033(v%c%c%c%c%c%c",
                                         4, 0, yrel & 0xff, (yrel >> 8) & 0xff, (yrel >> 16) & 0xff, (yrel >> 24) & 0xff);
    }

  z->vertpos = ysc;

  if (status < 0)
    {
      free (thisbuf);
      if (rle)
 free (compress_buf);
      return status;
    }

  for (i = 0; i < z->num_chan; i++)
    {
      int plane_off = z->plane_offsets[i];

      m = (z->y - ytop + z->spacing - 1 - plane_off) / z->spacing;
      if (m > z->n_pins)
        m = z->n_pins;

      if (m <= 0)
        continue;

      if (1)
        {

          int x = (x_pass & 3);
          status = rinkj_byte_stream_printf (z->out, "\033($\4%c%c%c%c%c",
                                             0, x & 0xff,
                                             (x >> 8) & 0xff,
                                             (x >> 16) & 0xff,
                                             (x >> 24) & 0xff);

          if (status < 0)
     {
       free(thisbuf);
       if (rle)
  free(compress_buf);
       return status;
     }
        }

      status = rinkj_byte_stream_printf (z->out, "\033i%c%c%c%c%c%c%c",
                                         color[i],
                                         rle,
                                         z->head_bps,
                                         xsb_out & 0xff,
                                         (xsb_out >> 8) & 0xff,
                                         m & 0xff, m >> 8);
      if (status < 0)
 {
   free(thisbuf);
   if (rle)
     free(compress_buf);
   return status;
 }
      for (j = 0; j < m; j++)
        {
          const char *line;

          bufy = (ytop + j * z->spacing + plane_off) % z->bufheight;
          line = z->buf + bufy * z->rowstride + plane[i] * z->planestride;
          if (z->buf_linevalid[bufy * z->num_chan + i] & pass_mask)
            rinkj_escp_shuffle (thisbuf, line, x_pass, xsb,
                                z->passes_per_scan, z->bps, z->head_bps);
          else
            memset (thisbuf, 0, xsb_out);
          z->buf_linevalid[bufy * z->num_chan + i] &= ~pass_mask;







          if (rle)
            {
              int nbytes;

              nbytes = rinkj_escp_compress_rle (compress_buf, thisbuf, xsb_out);
              status = rinkj_byte_stream_write (z->out, compress_buf, nbytes);
            }
          else
            status = rinkj_byte_stream_write (z->out, thisbuf, xsb_out);
        }
      if (status < 0) return status;




    }

  z->pass++;
  if (rle)
    free (compress_buf);
  free (thisbuf);
  return status;
}

static int
rinkj_escp_flush_bottom (RinkjEscp *z)
{
  int ytop;
  int status;

  for (;;)
    {
      ytop = rinkj_escp_ytop (z, z->pass, ((void*)0));
      if (ytop >= z->y)
        break;
      status = rinkj_escp_flush (z);
      if (status != 0)
        return status;
    }
  return 0;
}

static void
rinkj_escp_free (RinkjEscp *z)
{
  if (z->manufacturer)
    free (z->manufacturer);
  if (z->model)
    free (z->model);
  free (z->buf);
  free (z->buf_linevalid);
  free (z);
}

static int
rinkj_escp_write (RinkjDevice *self, const char **data)
{
  RinkjEscp *z = (RinkjEscp *)self;
  int xsb;
  int status;
  int i;
  int ytop;
  int bufy;
  int dblx_pass;

  if (data == ((void*)0))
    {
      status = rinkj_escp_flush_bottom (z);

      status = rinkj_byte_stream_puts (z->out, "\f\033@");

      status = rinkj_byte_stream_close (z->out);
      rinkj_escp_free (z);
      return status;
    }

  xsb = (z->width * z->bps + 7) >> 3;
  bufy = z->y % z->bufheight;
  for (i = 0; i < z->num_chan; i++)
    {
      memcpy (z->buf + bufy * z->rowstride + i * z->planestride, data[i], xsb);
      z->buf_linevalid[bufy * z->num_chan + i] = 0xff;
    }

  z->y++;

  ytop = rinkj_escp_ytop (z, z->pass, &dblx_pass);

  if (z->y < ytop + (z->n_pins - 1) * z->spacing + 1 + z->max_offset)
    return 0;

  return rinkj_escp_flush (z);
}

RinkjDevice *
rinkj_epson870_new (RinkjByteStream *out)
{
  RinkjEscp *result;

  result = (RinkjEscp *)malloc (sizeof (RinkjEscp));

  result->super.set = rinkj_escp_set;
  result->super.write = rinkj_escp_write;
  result->super.init = rinkj_escp_init;
  result->super.init_happened = 0;
  result->width = 0;
  result->out = out;

  result->num_chan = 4;
  result->bps = 1;

  result->manufacturer = ((void*)0);
  result->model = ((void*)0);

  result->autocut = -1;
  result->microdot = -1;
  result->unidir = -1;
  result->printer_weave = -1;

  return &result->super;
}
