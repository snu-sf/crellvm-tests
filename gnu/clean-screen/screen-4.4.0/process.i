# 1 "process.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "process.c" 2
# 32 "process.c"
# 1 "./config.h" 1
# 33 "process.c" 2

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



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;






# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
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
# 35 "process.c" 2
# 1 "/usr/include/sys/stat.h" 1 3 4
# 38 "/usr/include/sys/stat.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 39 "/usr/include/sys/stat.h" 2 3 4
# 106 "/usr/include/sys/stat.h" 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
# 46 "/usr/include/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __unused[3];
# 115 "/usr/include/bits/stat.h" 3 4
  };



struct stat64
  {
    __dev_t st_dev;

    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;






    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;





    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;







    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 164 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __unused[3];



  };
# 107 "/usr/include/sys/stat.h" 2 3 4
# 210 "/usr/include/sys/stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 229 "/usr/include/sys/stat.h" 3 4
extern int stat64 (const char *__restrict __file,
     struct stat64 *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));







extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 254 "/usr/include/sys/stat.h" 3 4
extern int fstatat64 (int __fd, const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));







extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 277 "/usr/include/sys/stat.h" 3 4
extern int lstat64 (const char *__restrict __file,
      struct stat64 *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ ));





extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ ));




extern __mode_t getumask (void) __attribute__ ((__nothrow__ ));



extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));






extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));





extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));





extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ ));
# 400 "/usr/include/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4)));
# 433 "/usr/include/sys/stat.h" 3 4
extern int __fxstat64 (int __ver, int __fildes, struct stat64 *__stat_buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int __xstat64 (int __ver, const char *__filename,
        struct stat64 *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat64 (int __ver, const char *__filename,
         struct stat64 *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat64 (int __ver, int __fildes, const char *__filename,
    struct stat64 *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4)));

extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 5)));
# 36 "process.c" 2
# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 75 "/usr/include/signal.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 76 "/usr/include/signal.h" 2 3 4




# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 151 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 301 "/usr/include/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));

extern __sighandler_t sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));







extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 119 "/usr/include/signal.h" 3 4
extern __sighandler_t bsd_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));






extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ ));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ ));




extern int raise (int __sig) __attribute__ ((__nothrow__ ));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ ));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 169 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 178 "/usr/include/signal.h" 3 4
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause");
# 197 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));
# 212 "/usr/include/signal.h" 3 4
typedef __sighandler_t sighandler_t;




typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int sigisemptyset (const sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigandset (sigset_t *__set, const sigset_t *__left,
        const sigset_t *__right) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));


extern int sigorset (sigset_t *__set, const sigset_t *__left,
       const sigset_t *__right) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));





# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 24 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 254 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ ));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ ));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ ));
# 311 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 335 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 341 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ ));







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 351 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ ));


# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 25 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 358 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 22 "/usr/include/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/sys/ucontext.h" 2 3 4








__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];



enum
{
  REG_R8 = 0,

  REG_R9,

  REG_R10,

  REG_R11,

  REG_R12,

  REG_R13,

  REG_R14,

  REG_R15,

  REG_RDI,

  REG_RSI,

  REG_RBP,

  REG_RBX,

  REG_RDX,

  REG_RAX,

  REG_RCX,

  REG_RSP,

  REG_RIP,

  REG_EFL,

  REG_CSGSFS,

  REG_ERR,

  REG_TRAPNO,

  REG_OLDMASK,

  REG_CR2

};


struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 361 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ ));







extern int sighold (int __sig) __attribute__ ((__nothrow__ ));


extern int sigrelse (int __sig) __attribute__ ((__nothrow__ ));


extern int sigignore (int __sig) __attribute__ ((__nothrow__ ));


extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__ ));







# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));



extern int pthread_sigqueue (pthread_t __threadid, int __signo,
        const union sigval __value) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 37 "process.c" 2
# 1 "/usr/include/fcntl.h" 1 3 4
# 35 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 35 "/usr/include/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };


struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };




# 1 "/usr/include/bits/fcntl-linux.h" 1 3 4
# 38 "/usr/include/bits/fcntl-linux.h" 3 4
# 1 "/usr/include/bits/uio.h" 1 3 4
# 43 "/usr/include/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 39 "/usr/include/bits/fcntl-linux.h" 2 3 4
# 237 "/usr/include/bits/fcntl-linux.h" 3 4
enum __pid_type
  {
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };


struct f_owner_ex
  {
    enum __pid_type type;
    __pid_t pid;
  };
# 300 "/usr/include/bits/fcntl-linux.h" 3 4
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;

  unsigned char f_handle[0];
};
# 317 "/usr/include/bits/fcntl-linux.h" 3 4
extern ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__ ));






extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);






extern ssize_t vmsplice (int __fdout, const struct iovec *__iov,
    size_t __count, unsigned int __flags);





extern ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
         __off64_t *__offout, size_t __len,
         unsigned int __flags);





extern ssize_t tee (int __fdin, int __fdout, size_t __len,
      unsigned int __flags);






extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
# 367 "/usr/include/bits/fcntl-linux.h" 3 4
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);




extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) __attribute__ ((__nothrow__ ));





extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);
# 62 "/usr/include/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 67 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 68 "/usr/include/fcntl.h" 2 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
# 69 "/usr/include/fcntl.h" 2 3 4
# 154 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 163 "/usr/include/fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 173 "/usr/include/fcntl.h" 3 4
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 187 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 198 "/usr/include/fcntl.h" 3 4
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 209 "/usr/include/fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 219 "/usr/include/fcntl.h" 3 4
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 238 "/usr/include/fcntl.h" 3 4
extern int lockf (int __fd, int __cmd, off_t __len);
# 247 "/usr/include/fcntl.h" 3 4
extern int lockf64 (int __fd, int __cmd, off64_t __len);







extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ ));
# 267 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) __attribute__ ((__nothrow__ ));
# 277 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 288 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
# 38 "process.c" 2

# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 86 "/usr/include/bits/time.h" 3 4
# 1 "/usr/include/bits/timex.h" 1 3 4
# 25 "/usr/include/bits/timex.h" 3 4
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;

  int tai;


  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
# 87 "/usr/include/bits/time.h" 2 3 4




extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) __attribute__ ((__nothrow__ ));
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





extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ ));






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
# 222 "/usr/include/time.h" 2 3 4

extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));



extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    __locale_t __loc) __attribute__ ((__nothrow__ ));






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
# 403 "/usr/include/time.h" 3 4
extern int getdate_err;
# 412 "/usr/include/time.h" 3 4
extern struct tm *getdate (const char *__string);
# 426 "/usr/include/time.h" 3 4
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);
# 40 "process.c" 2

# 1 "/usr/include/sys/time.h" 1 3 4
# 28 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/bits/time.h" 1 3 4
# 29 "/usr/include/sys/time.h" 2 3 4
# 56 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 72 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ ));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ ));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };




typedef enum __itimer_which __itimer_which_t;






extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ ));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ ));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));






extern int futimesat (int __fd, const char *__file,
        const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));
# 42 "process.c" 2

# 1 "/usr/include/sys/ioctl.h" 1 3 4
# 26 "/usr/include/sys/ioctl.h" 3 4
# 1 "/usr/include/bits/ioctls.h" 1 3 4
# 23 "/usr/include/bits/ioctls.h" 3 4
# 1 "/usr/include/asm/ioctls.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctls.h" 1 3 4



# 1 "/usr/include/linux/ioctl.h" 1 3 4



# 1 "/usr/include/asm/ioctl.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctl.h" 1 3 4
# 2 "/usr/include/asm/ioctl.h" 2 3 4
# 5 "/usr/include/linux/ioctl.h" 2 3 4
# 5 "/usr/include/asm-generic/ioctls.h" 2 3 4
# 2 "/usr/include/asm/ioctls.h" 2 3 4
# 24 "/usr/include/bits/ioctls.h" 2 3 4
# 27 "/usr/include/sys/ioctl.h" 2 3 4


# 1 "/usr/include/bits/ioctl-types.h" 1 3 4
# 24 "/usr/include/bits/ioctl-types.h" 3 4
# 1 "/usr/include/asm/ioctls.h" 1 3 4
# 25 "/usr/include/bits/ioctl-types.h" 2 3 4


struct winsize
  {
    unsigned short int ws_row;
    unsigned short int ws_col;
    unsigned short int ws_xpixel;
    unsigned short int ws_ypixel;
  };


struct termio
  {
    unsigned short int c_iflag;
    unsigned short int c_oflag;
    unsigned short int c_cflag;
    unsigned short int c_lflag;
    unsigned char c_line;
    unsigned char c_cc[8];
};
# 30 "/usr/include/sys/ioctl.h" 2 3 4






# 1 "/usr/include/sys/ttydefaults.h" 1 3 4
# 37 "/usr/include/sys/ioctl.h" 2 3 4




extern int ioctl (int __fd, unsigned long int __request, ...) __attribute__ ((__nothrow__ ));
# 44 "process.c" 2








# 1 "./screen.h" 1
# 30 "./screen.h"
# 1 "./os.h" 1
# 30 "./os.h"
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
# 31 "./os.h" 2
# 1 "/usr/include/errno.h" 1 3 4
# 35 "/usr/include/errno.h" 3 4
# 1 "/usr/include/bits/errno.h" 1 3 4
# 24 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 2 "/usr/include/asm/errno.h" 2 3 4
# 2 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/bits/errno.h" 2 3 4
# 50 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 54 "/usr/include/errno.h" 3 4
extern char *program_invocation_name, *program_invocation_short_name;
# 68 "/usr/include/errno.h" 3 4
typedef int error_t;
# 32 "./os.h" 2

# 1 "/usr/include/sys/param.h" 1 3 4
# 23 "/usr/include/sys/param.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 24 "/usr/include/sys/param.h" 2 3 4


# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 1 3 4
# 37 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 144 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 2 3 4
# 145 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 149 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/xopen_lim.h" 1 3 4
# 33 "/usr/include/bits/xopen_lim.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 34 "/usr/include/bits/xopen_lim.h" 2 3 4
# 153 "/usr/include/limits.h" 2 3 4
# 38 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 2 3 4
# 27 "/usr/include/sys/param.h" 2 3 4




# 1 "/usr/include/bits/param.h" 1 3 4
# 28 "/usr/include/bits/param.h" 3 4
# 1 "/usr/include/linux/param.h" 1 3 4



# 1 "/usr/include/asm/param.h" 1 3 4
# 1 "/usr/include/asm-generic/param.h" 1 3 4
# 2 "/usr/include/asm/param.h" 2 3 4
# 5 "/usr/include/linux/param.h" 2 3 4
# 29 "/usr/include/bits/param.h" 2 3 4
# 32 "/usr/include/sys/param.h" 2 3 4
# 34 "./os.h" 2
# 64 "./os.h"
# 1 "/usr/include/unistd.h" 1 3 4
# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 22 "/usr/include/bits/environments.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 267 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int euidaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int eaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
# 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ ));
# 345 "/usr/include/unistd.h" 3 4
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__ ));






extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 404 "/usr/include/unistd.h" 3 4
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;


extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) ;







extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;




extern int pipe2 (int __pipedes[2], int __flags) __attribute__ ((__nothrow__ )) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ ));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ ));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ )) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ )) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ )) ;





extern char *get_current_dir_name (void) __attribute__ ((__nothrow__ ));







extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));




extern int dup3 (int __fd, int __fd2, int __flags) __attribute__ ((__nothrow__ ));



extern char **__environ;

extern char **environ;





extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern int nice (int __inc) __attribute__ ((__nothrow__ )) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));






# 1 "/usr/include/bits/confname.h" 1 3 4
# 25 "/usr/include/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ ));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ ));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ ));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ ));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ ));




extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ ));
# 646 "/usr/include/unistd.h" 3 4
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ ));
# 672 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ ));
# 689 "/usr/include/unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__ ));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ ));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ ));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ ));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ )) ;



extern int group_member (__gid_t __gid) __attribute__ ((__nothrow__ ));






extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;





extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     __attribute__ ((__nothrow__ ));



extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     __attribute__ ((__nothrow__ ));



extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     __attribute__ ((__nothrow__ )) ;



extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     __attribute__ ((__nothrow__ )) ;






extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ ));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ ));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ ));





extern int ttyslot (void) __attribute__ ((__nothrow__ ));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ ));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ ));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 893 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 58 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 72 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 151 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ ));
# 894 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ )) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ ));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ ));



extern char *getusershell (void) __attribute__ ((__nothrow__ ));
extern void endusershell (void) __attribute__ ((__nothrow__ ));
extern void setusershell (void) __attribute__ ((__nothrow__ ));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ )) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);





extern int syncfs (int __fd) __attribute__ ((__nothrow__ ));






extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ ));





extern int getpagesize (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ ));
# 1015 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1027 "/usr/include/unistd.h" 3 4
extern int truncate64 (const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1038 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ )) ;
# 1048 "/usr/include/unistd.h" 3 4
extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__ )) ;
# 1059 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ )) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ ));
# 1080 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
# 1134 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);







extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern void encrypt (char *__block, int __edflag) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 65 "./os.h" 2

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
# 67 "./os.h" 2
# 83 "./os.h"
# 1 "/usr/include/strings.h" 1 3 4
# 29 "/usr/include/strings.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 30 "/usr/include/strings.h" 2 3 4
# 40 "/usr/include/strings.h" 3 4
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));


extern void bcopy (const void *__src, void *__dest, size_t __n) __attribute__ ((__nothrow__ ));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ ));
# 73 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 101 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((const));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__));
# 128 "/usr/include/strings.h" 3 4
extern int strcasecmp_l (const char *__s1, const char *__s2, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, __locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
# 84 "./os.h" 2


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
# 87 "./os.h" 2
# 188 "./os.h"
# 1 "/usr/include/termios.h" 1 3 4
# 40 "/usr/include/termios.h" 3 4
# 1 "/usr/include/bits/termios.h" 1 3 4
# 23 "/usr/include/bits/termios.h" 3 4
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;


struct termios
  {
    tcflag_t c_iflag;
    tcflag_t c_oflag;
    tcflag_t c_cflag;
    tcflag_t c_lflag;
    cc_t c_line;
    cc_t c_cc[32];
    speed_t c_ispeed;
    speed_t c_ospeed;


  };
# 41 "/usr/include/termios.h" 2 3 4








extern speed_t cfgetospeed (const struct termios *__termios_p) __attribute__ ((__nothrow__ ));


extern speed_t cfgetispeed (const struct termios *__termios_p) __attribute__ ((__nothrow__ ));


extern int cfsetospeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ ));


extern int cfsetispeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ ));



extern int cfsetspeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ ));




extern int tcgetattr (int __fd, struct termios *__termios_p) __attribute__ ((__nothrow__ ));



extern int tcsetattr (int __fd, int __optional_actions,
        const struct termios *__termios_p) __attribute__ ((__nothrow__ ));




extern void cfmakeraw (struct termios *__termios_p) __attribute__ ((__nothrow__ ));



extern int tcsendbreak (int __fd, int __duration) __attribute__ ((__nothrow__ ));





extern int tcdrain (int __fd);



extern int tcflush (int __fd, int __queue_selector) __attribute__ ((__nothrow__ ));



extern int tcflow (int __fd, int __action) __attribute__ ((__nothrow__ ));




extern __pid_t tcgetsid (int __fd) __attribute__ ((__nothrow__ ));





# 1 "/usr/include/sys/ttydefaults.h" 1 3 4
# 106 "/usr/include/termios.h" 2 3 4
# 189 "./os.h" 2
# 247 "./os.h"
  typedef char *slot_t;
# 265 "./os.h"
# 1 "/usr/include/utmp.h" 1 3 4
# 29 "/usr/include/utmp.h" 3 4
# 1 "/usr/include/bits/utmp.h" 1 3 4
# 23 "/usr/include/bits/utmp.h" 3 4
# 1 "/usr/include/paths.h" 1 3 4
# 24 "/usr/include/bits/utmp.h" 2 3 4


# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/utmp.h" 2 3 4
# 36 "/usr/include/bits/utmp.h" 3 4
struct lastlog
  {

    int32_t ll_time;



    char ll_line[32];
    char ll_host[256];
  };




struct exit_status
  {
    short int e_termination;
    short int e_exit;
  };



struct utmp
{
  short int ut_type;
  pid_t ut_pid;
  char ut_line[32];
  char ut_id[4];
  char ut_user[32];
  char ut_host[256];
  struct exit_status ut_exit;





  int32_t ut_session;
  struct
  {
    int32_t tv_sec;
    int32_t tv_usec;
  } ut_tv;





  int32_t ut_addr_v6[4];
  char __unused[20];
};
# 30 "/usr/include/utmp.h" 2 3 4
# 41 "/usr/include/utmp.h" 3 4
extern int login_tty (int __fd) __attribute__ ((__nothrow__ ));



extern void login (const struct utmp *__entry) __attribute__ ((__nothrow__ ));


extern int logout (const char *__ut_line) __attribute__ ((__nothrow__ ));


extern void logwtmp (const char *__ut_line, const char *__ut_name,
       const char *__ut_host) __attribute__ ((__nothrow__ ));


extern void updwtmp (const char *__wtmp_file, const struct utmp *__utmp)
     __attribute__ ((__nothrow__ ));


extern int utmpname (const char *__file) __attribute__ ((__nothrow__ ));


extern struct utmp *getutent (void) __attribute__ ((__nothrow__ ));


extern void setutent (void) __attribute__ ((__nothrow__ ));


extern void endutent (void) __attribute__ ((__nothrow__ ));



extern struct utmp *getutid (const struct utmp *__id) __attribute__ ((__nothrow__ ));



extern struct utmp *getutline (const struct utmp *__line) __attribute__ ((__nothrow__ ));


extern struct utmp *pututline (const struct utmp *__utmp_ptr) __attribute__ ((__nothrow__ ));




extern int getutent_r (struct utmp *__buffer, struct utmp **__result) __attribute__ ((__nothrow__ ));

extern int getutid_r (const struct utmp *__id, struct utmp *__buffer,
        struct utmp **__result) __attribute__ ((__nothrow__ ));

extern int getutline_r (const struct utmp *__line,
   struct utmp *__buffer, struct utmp **__result) __attribute__ ((__nothrow__ ));
# 266 "./os.h" 2
# 441 "./os.h"
# 1 "/usr/include/sys/wait.h" 1 3 4
# 100 "/usr/include/sys/wait.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 114 "/usr/include/sys/wait.h" 3 4
extern __pid_t wait (__WAIT_STATUS __stat_loc);
# 137 "/usr/include/sys/wait.h" 3 4
extern __pid_t waitpid (__pid_t __pid, int *__stat_loc, int __options);
# 147 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4
# 148 "/usr/include/sys/wait.h" 2 3 4
# 160 "/usr/include/sys/wait.h" 3 4
extern int waitid (idtype_t __idtype, __id_t __id, siginfo_t *__infop,
     int __options);





struct rusage;






extern __pid_t wait3 (__WAIT_STATUS __stat_loc, int __options,
        struct rusage * __usage) __attribute__ ((__nothrow__));




extern __pid_t wait4 (__pid_t __pid, __WAIT_STATUS __stat_loc, int __options,
        struct rusage *__usage) __attribute__ ((__nothrow__));
# 442 "./os.h" 2
# 31 "./screen.h" 2
# 43 "./screen.h"
# 1 "./osdef.h" 1
# 71 "./osdef.h"
extern int tgetent (char *, char *);
extern char *tgetstr (char *, char **);
extern int tgetnum (char *);
extern int tgetflag (char *);
extern void tputs (char *, int, int (*)(int));
extern char *tgoto (char *, int, int);
# 117 "./osdef.h"
struct stat;


extern int getloadavg(double *, int);
# 44 "./screen.h" 2

# 1 "./ansi.h" 1
# 63 "./ansi.h"
enum state_t
{
  LIT,
  ESC,
  ASTR,
  STRESC,
  CSI,
  PRIN,
  PRINESC,
  PRINCSI,
  PRIN4
};


enum string_t
{
  NONE,
  DCS,
  OSC,
  APC,

  PM,
  AKA,
  GM,
  STATUS
};




enum move_t {
 M_NONE,
 M_UP,
 M_CUP,
 M_DO,
 M_CDO,
 M_LE,
 M_CLE,
 M_RI,
 M_CRI,
 M_RW,
 M_CR
};
# 46 "./screen.h" 2
# 1 "./sched.h" 1
# 30 "./sched.h"
struct event
{
  struct event *next;
  void (*handler) (struct event *, char *);
  char *data;
  int fd;
  int type;
  int pri;
  struct timeval timeout;
  int queued;
  int active;
  int *condpos;
  int *condneg;
};
# 47 "./screen.h" 2
# 1 "./acls.h" 1
# 44 "./acls.h"
typedef unsigned char * AclBits;





struct aclusergroup
{
  struct acluser *u;
  struct aclusergroup *next;
};
# 64 "./acls.h"
struct plop
{
  char *buf;
  int len;

  int enc;

};






typedef struct acluser
{
  struct acluser *u_next;
  char u_name[256 + 1];
  char *u_password;
  int u_checkpassword;
  int u_detachwin;
  int u_detachotherwin;
  int u_Esc, u_MetaEsc;

  struct plop u_plop;


  int u_id;
  AclBits u_umask_w_bits[3];
  struct aclusergroup *u_group;

} User;

extern int DefaultEsc, DefaultMetaEsc;
# 48 "./screen.h" 2
# 1 "./comm.h" 1




struct comm
{
  char *name;
  int flags;

  AclBits userbits[1];

};
# 44 "./comm.h"
struct action
{
  int nr;
  char **args;
  int *argl;
  int quiet;



};
# 49 "./screen.h" 2
# 1 "./layer.h" 1
# 38 "./layer.h"
struct mchar;

struct LayFuncs
{
  void (*lf_LayProcess) (char **, int *);
  void (*lf_LayAbort) (void);
  void (*lf_LayRedisplayLine) (int, int, int, int);
  void (*lf_LayClearLine) (int, int, int, int);
  int (*lf_LayRewrite) (int, int, int, struct mchar *, int);
  int (*lf_LayResize) (int, int);
  void (*lf_LayRestore) (void);
  void (*lf_LayFree) (void *);

};

struct layer
{
  struct canvas *l_cvlist;
  int l_width;
  int l_height;
  int l_x;
  int l_y;
  int l_encoding;
  struct LayFuncs *l_layfn;
  void *l_data;

  struct layer *l_next;
  struct layer *l_bottom;
  int l_blocking;
  int l_mode;

  struct {
    unsigned char buffer[3];



    int len;
    int start;
  } l_mouseevent;

  struct {
    int d : 1;


    int *left, *right;
    int top, bottom;
    int lines;
  } l_pause;
};
# 144 "./layer.h"
void LayPause (struct layer *layer, int pause);
# 155 "./layer.h"
void LayPauseUpdateRegion (struct layer *layer, int xs, int xe, int ys, int ye);






void LayerCleanupMemory (struct layer *layer);
# 50 "./screen.h" 2
# 1 "./term.h" 1








struct term
{
  char *tcname;
  int type;
};

union tcu
{
  int flg;
  int num;
  char *str;
};
# 51 "./screen.h" 2
# 117 "./screen.h"
struct mode
{

  struct termios tio;
# 144 "./screen.h"
};




# 1 "./image.h" 1
# 60 "./image.h"
struct mchar {
  unsigned char image;
  unsigned char attr;
unsigned char font;
unsigned char fontx;
unsigned char color;

unsigned char mbcs;
};

struct mline {
  unsigned char *image;
  unsigned char *attr;
unsigned char *font;
unsigned char *fontx;
unsigned char *color;

};
# 182 "./image.h"
enum
{
  REND_BELL = 0,
  REND_MONITOR,
  REND_SILENCE,
  NUM_RENDS
};
# 149 "./screen.h" 2
# 1 "./canvas.h" 1
# 40 "./canvas.h"
struct canvas
{
  struct canvas *c_next;
  struct display *c_display;

  struct canvas *c_slnext;
  struct canvas *c_slprev;
  struct canvas *c_slperp;
  struct canvas *c_slback;
  int c_slorient;
  int c_slweight;

  struct viewport *c_vplist;
  struct layer *c_layer;
  struct canvas *c_lnext;
  struct layer c_blank;
  int c_xoff;
  int c_yoff;
  int c_xs;
  int c_xe;
  int c_ys;
  int c_ye;
  struct event c_captev;
};

struct win;

extern void SetCanvasWindow (struct canvas *, struct win *);
extern void SetForeCanvas (struct display *, struct canvas *);
extern struct canvas *FindCanvas (int, int);
extern int MakeDefaultCanvas (void);
extern int AddCanvas (int);
extern void RemCanvas (void);
extern void OneCanvas (void);
extern void FreeCanvas (struct canvas *);
extern void ResizeCanvas (struct canvas *);
extern void RecreateCanvasChain (void);
extern void RethinkViewportOffsets (struct canvas *);
extern int CountCanvasPerp (struct canvas *);
extern void EqualizeCanvas (struct canvas *, int);
extern void DupLayoutCv (struct canvas *, struct canvas *, int);
extern void PutWindowCv (struct canvas *);
# 150 "./screen.h" 2
# 1 "./display.h" 1
# 33 "./display.h"
# 1 "./layout.h" 1
# 37 "./layout.h"
struct layout
{
  struct layout *lay_next;
  char *lay_title;
  int lay_number;
  struct canvas lay_canvas;
  struct canvas *lay_forecv;
  struct canvas *lay_cvlist;
  int lay_autosave;
};

extern void AutosaveLayout (struct layout *);
extern void LoadLayout (struct layout *, struct canvas *);
extern void NewLayout (char *, int);
extern void SaveLayout (char *, struct canvas *);
extern void ShowLayouts (int);
extern struct layout *FindLayout (char *);
extern void UpdateLayoutCanvas (struct canvas *, struct win *);
extern struct layout *CreateLayout (char *, int);
extern void RemoveLayout (struct layout *);
extern int LayoutDumpCanvas (struct canvas *, char *);

extern void RenameLayout (struct layout *, const char *);
extern int RenumberLayout (struct layout *, int);
# 34 "./display.h" 2

# 1 "./viewport.h" 1
# 35 "./viewport.h"
struct viewport
{
  struct viewport *v_next;
  struct canvas *v_canvas;
  int v_xoff;
  int v_yoff;
  int v_xs;
  int v_xe;
  int v_ys;
  int v_ye;
};

extern int RethinkDisplayViewports (void);
extern void RethinkViewportOffsets (struct canvas *);
# 36 "./display.h" 2








struct kmap_ext
{
  char *str;
  int fl;
  struct action um;
  struct action dm;
  struct action mm;
};







struct win;

struct display
{
  struct display *d_next;
  struct acluser *d_user;
  struct canvas d_canvas;
  struct canvas *d_cvlist;
  struct canvas *d_forecv;
  struct layout *d_layout;
  void (*d_processinput) (char *, int);
  char *d_processinputdata;
  int d_vpxmin, d_vpxmax;
  struct win *d_fore;
  struct win *d_other;
  int d_nonblock;

  char d_termname[32 + 1];
  char *d_tentry;
  char d_tcinited;
  int d_width, d_height;
  int d_defwidth, d_defheight;
  int d_top, d_bot;
  int d_x, d_y;
  struct mchar d_rend;
  int d_col16change;
  char d_atyp;

  int d_mbcs;


  int d_encoding;
  int d_decodestate;
  int d_realfont;

  int d_insert;
  int d_keypad;
  int d_cursorkeys;
  int d_revvid;
  int d_curvis;
  int d_has_hstatus;
  int d_hstatus;
  int d_lp_missing;
  int d_mouse;
  int d_mousetrack;




  struct mchar d_lpchar;
  struct timeval d_status_time;
  int d_status;
  char d_status_bell;
  int d_status_len;
  char *d_status_lastmsg;
  int d_status_buflen;
  int d_status_lastx;
  int d_status_lasty;
  int d_status_obuflen;
  int d_status_obuffree;
  int d_status_obufpos;
  struct event d_statusev;
  struct event d_hstatusev;
  int d_kaablamm;
  struct action *d_ESCseen;
  int d_userpid;
  char d_usertty[4096];
  int d_userfd;
  struct event d_readev;
  struct event d_writeev;
  struct event d_blockedev;
  struct mode d_OldMode;
  struct mode d_NewMode;
  int d_flow;
  int d_intrc;
  char *d_obuf;
  int d_obuflen;
  int d_obufmax;
  int d_obuflenmax;
  char *d_obufp;
  int d_obuffree;

  int d_auto_nuke;


  int d_nseqs;
  int d_aseqs;
  unsigned char *d_kmaps;
  unsigned char *d_seqp;
  int d_seql;
  unsigned char *d_seqh;
  struct event d_mapev;
  int d_dontmap;
  int d_mapdefault;

  union tcu d_tcs[201];
  char *d_attrtab[6];
  char d_attrtyp[6];
  int d_hascolor;
  short d_dospeed;

  char d_c0_tab[256];
  char ***d_xtable;

  int d_UPcost, d_DOcost, d_LEcost, d_NDcost;
  int d_CRcost, d_IMcost, d_EIcost, d_NLcost;
  int d_printfd;

  slot_t d_loginslot;
  struct utmp d_utmp_logintty;
  int d_loginttymode;




  int d_blocked;
  int d_blocked_fuzz;
  struct event d_idleev;

  int d_blankerpid;
  struct event d_blankerev;

};
# 151 "./screen.h" 2
# 1 "./window.h" 1
# 37 "./window.h"
struct NewWindow
{
  int StartAt;
  char *aka;
  char **args;
  char *dir;
  char *term;
  int aflag;
  int flowflag;
  int lflag;
  int histheight;
  int monitor;
  int wlock;
  int silence;
  int wrap;
  int Lflag;
  int slow;
  int gr;
  int c1;
  int bce;
  int encoding;
  char *hstatus;
  char *charset;
  int poll_zombie_timeout;
};



struct pseudowin
{
  int p_fdpat;
  int p_pid;
  int p_ptyfd;
  struct event p_readev;
  struct event p_writeev;
  char p_cmd[768];
  char p_tty[768];
  char p_inbuf[4096];
  int p_inlen;
};
# 125 "./window.h"
struct paster
{
  char *pa_pastebuf;
  char *pa_pasteptr;
  int pa_pastelen;
  struct layer *pa_pastelayer;
  struct event pa_slowev;
};




struct win
{
  struct win *w_next;
  int w_type;
  void *w_data;
  struct layer w_layer;
  struct layer *w_savelayer;
  int w_blocked;

  struct pseudowin *w_pwin;

  struct display *w_pdisplay;
  struct display *w_lastdisp;
  int w_number;
  struct event w_readev;
  struct event w_writeev;
  struct event w_silenceev;
  struct event w_zombieev;
  int w_poll_zombie_timeout;
  int w_ptyfd;
  char w_inbuf[4096];
  int w_inlen;
  char w_outbuf[4096];
  int w_outlen;
  int w_aflag;
  char *w_title;
  char *w_akachange;
  char w_akabuf[768];
  int w_autoaka;
  struct win *w_group;
  int w_intermediate;
  int w_args[64];
  int w_NumArgs;


  int w_wlock;
  struct acluser *w_wlockuser;
  AclBits w_userbits[3];
  AclBits w_lio_notify;
  AclBits w_mon_notify;


  enum state_t w_state;
  enum string_t w_StringType;
  struct mline *w_mlines;
  struct mchar w_rend;

  char w_FontL;
  char w_FontR;

  char w_FontE;

  int w_Charset;
  int w_CharsetR;
  int w_charsets[4];

  int w_ss;
  struct cursor {
    int on;
    int x, y;
    struct mchar Rend;

    int Charset;
    int CharsetR;
    int Charsets[4];

  } w_saved;
  int w_top, w_bot;
  int w_wrap;
  int w_origin;
  int w_insert;
  int w_keypad;
  int w_cursorkeys;
  int w_revvid;
  int w_curinv;
  int w_curvvis;
  int w_autolf;
  char *w_hstatus;
  int w_gr;
  int w_c1;
  int w_bce;



  int w_decodestate;

  int w_mbcs;

  char w_string[768];
  char *w_stringp;
  char *w_tabs;
  int w_bell;
  int w_flow;
  struct logfile *w_log;
  int w_logsilence;
  int w_monitor;
  int w_silencewait;
  int w_silence;
  char w_vbwait;
  char w_norefresh;



  int w_mouse;





  int w_slowpaste;
  int w_histheight;
  int w_histidx;
  struct mline *w_hlines;
  struct paster w_paster;



  int w_pid;
  int w_deadpid;

  char *w_cmdargs[64];
  char *w_dir;
  char *w_term;

  int w_lflag;
  slot_t w_slot;

  struct utmp w_savut;


  char w_tty[768];

  int w_zauto;

  struct display *w_zdisplay;
# 284 "./window.h"
  struct {
    int on;
    struct mline *mlines;
    int width;
    int height;

    int histheight;
    struct mline *hlines;
    int histidx;



    struct cursor cursor;
  } w_alt;

  struct event w_destroyev;



  int w_exitstatus;

};
# 349 "./window.h"
int WindowChangeNumber (int, int);
# 152 "./screen.h" 2
# 192 "./screen.h"
struct msg
{
  int protocol_revision;
  int type;
  char m_tty[4096];
  union
    {
      struct
 {
   int lflag;
   int aflag;
   int flowflag;
   int hheight;
   int nargs;
   char line[4096];
   char dir[4096];
   char screenterm[32 + 1];
 }
      create;
      struct
 {
   char auser[256 + 1];
   int apid;
   int adaptflag;
   int lines, columns;
   char preselect[20];
   int esc;
   int meta_esc;
   char envterm[32 + 1];
   int encoding;
   int detachfirst;
 }
      attach;
      struct
 {
   char duser[256 + 1];
   int dpid;
 }
      detach;
      struct
 {
   char auser[256 + 1];
   int nargs;
   char cmd[4096];
   int apid;
   char preselect[20];
   char writeback[4096];

 }
      command;
      char message[4096 * 2];
    } m;
};
# 282 "./screen.h"
extern char strnomem[];
# 294 "./screen.h"
struct acl
{
  struct acl *next;
  char *name;
};





struct baud_values
{
  int idx;
  int bps;
  int sym;
};
# 53 "process.c" 2
# 1 "./extern.h" 1
# 36 "./extern.h"
extern int main (int, char **);
extern void SigHup (int);
extern void eexit (int) __attribute__((__noreturn__));
extern void Detach (int);
extern void Hangup (void);
extern void Kill (int, int);

extern void Msg (int, const char *, ...) __attribute__((format(printf, 2, 3)));
extern void Panic (int, const char *, ...) __attribute__((format(printf, 2, 3))) __attribute__((__noreturn__));
extern void QueryMsg (int, const char *, ...) __attribute__((format(printf, 2, 3)));
extern void Dummy (int, const char *, ...) __attribute__((format(printf, 2, 3)));






extern void Finit (int);
extern void MakeNewEnv (void);
extern char *MakeWinMsg (char *, struct win *, int);
extern char *MakeWinMsgEv (char *, struct win *, int, int, struct event *, int);
extern int AddWinMsgRend (const char *, int);
extern void PutWinMsg (char *, int, int);



extern void WindowDied (struct win *, int, int);

extern void setbacktick (int, int, int, char **);


extern void ResetAnsiState (struct win *);
extern void ResetWindow (struct win *);
extern void ResetCharsets (struct win *);
extern void WriteString (struct win *, char *, int);
extern void ChangeAKA (struct win *, char *, int);
extern void SetCharsets (struct win *, char *);
extern int GetAnsiStatus (struct win *, char *);
extern void WNewAutoFlow (struct win *, int);
extern void WBell (struct win *, int);
extern void WMsg (struct win *, int, char *);
extern void WChangeSize (struct win *, int, int);
extern void WindowChanged (struct win *, int);
extern int MFindUsedLine (struct win *, int, int);


extern int StartRc (char *, int);
extern void FinishRc (char *);
extern void RcLine (char *, int);
extern FILE *secfopen (char *, char *);
extern int secopen (char *, int, int);
extern void WriteFile (struct acluser *, char *, int);
extern char *ReadFile (char *, int *);
extern void KillBuffers (void);
extern int printpipe (struct win *, char *);
extern int readpipe (char **);
extern void RunBlanker (char **);
extern void do_source (char *);


extern int OpenTTY (char *, char *);
extern void InitTTY (struct mode *, int);
extern void GetTTY (int, struct mode *);
extern void SetTTY (int, struct mode *);
extern void SetMode (struct mode *, struct mode *, int, int);
extern void SetFlow (int);
extern void SendBreak (struct win *, int, int);
extern int TtyGrabConsole (int, int, char *);
extern char *TtyGetModemStatus (int, char *);



extern int fgtty (int);
extern void brktty (int);
extern struct baud_values *lookup_baud (int bps);
extern int SetBaud (struct mode *, int, int);
extern int SttyMode (struct mode *, char *);
extern int CheckTtyname (char *);



extern int GetHistory (void);
extern void MarkRoutine (void);
extern void revto_line (int, int, int);
extern void revto (int, int);
extern int InMark (void);
extern void MakePaster (struct paster *, char *, int, int);
extern void FreePaster (struct paster *);


extern void Search (int);
extern void ISearch (int);


extern void inp_setprompt (char *, char *);
extern void Input (char *, int, int, void (*)(char *, int, char *), char *, int);
extern int InInput (void);


extern void exit_with_usage (char *, char *, char *);
extern void display_help (char *, struct action *);
extern void display_copyright (void);
extern void display_displays (void);
extern void display_bindkey (char *, struct action *);
extern int InWList (void);
extern void WListUpdatecv (struct canvas *, struct win *);
extern void WListLinkChanged (void);

extern void ZmodemPage (void);



extern int MakeWindow (struct NewWindow *);
extern int RemakeWindow (struct win *);
extern void FreeWindow (struct win *);

extern int winexec (char **);
extern void FreePseudowin (struct win *);

extern void nwin_compose (struct NewWindow *, struct NewWindow *, struct NewWindow *);
extern int DoStartLog (struct win *, char *, int);
extern int ReleaseAutoWritelock (struct display *, struct win *);
extern int ObtainAutoWritelock (struct display *, struct win *);
extern void CloseDevice (struct win *);

extern void zmodem_abort (struct win *, struct display *);







extern void InitUtmp (void);
extern void RemoveLoginSlot (void);
extern void RestoreLoginSlot (void);
extern int SetUtmp (struct win *);
extern int RemoveUtmp (struct win *);

extern void SlotToggle (int);
# 188 "./extern.h"
extern void InitLoadav (void);
extern void AddLoadav (char *);



extern int OpenPTY (char **);
extern void InitPTY (int);


extern void InitKeytab (void);
extern void ProcessInput (char *, int);

extern void ProcessInput2 (char *, int);

extern void DoProcess (struct win *, char **, int *, struct paster *);
extern void DoAction (struct action *, int);
extern int FindCommnr (const char *);
extern void DoCommand (char **, int *);
extern void Activate (int);
extern void KillWindow (struct win *);
extern void SetForeWindow (struct win *);
extern int Parse (char *, int, char **, int *);
extern void SetEscape (struct acluser *, int, int);
extern void DoScreen (char *, char **);
extern int IsNumColon (char *, int, char *, int);
extern void ShowWindows (int);
extern char *AddWindows (char *, int, int, int);
extern char *AddWindowFlags (char *, int, struct win *);
extern char *AddOtherUsers (char *, int, struct win *);
extern int WindowByNoN (char *);
extern struct win *FindNiceWindow (struct win *, char *);

extern int CompileKeys (char *, int, unsigned char *);




extern int ParseSaveStr (struct action *act, char **);
extern int ParseNum (struct action *act, int *);
extern int ParseSwitch (struct action *, int *);
extern int ParseAttrColor (char *, char *, int);
extern void ApplyAttrColor (int, struct mchar *);
extern void SwitchWindow (int);
extern int StuffKey (int);


extern int InitTermcap (int, int);
extern char *MakeTermcap (int);
extern char *gettermcapstring (char *);

extern int remap (int, int);
extern void CheckEscape (void);

extern int CreateTransTable (char *);
extern void FreeTransTable (void);


extern int Attach (int);
extern void Attacher (void);
extern void AttacherFinit (int);
extern void SendCmdMessage (char *, char *, char **, int);


extern struct display *MakeDisplay (char *, char *, char *, int, int, struct mode *);
extern void FreeDisplay (void);
extern void DefProcess (char **, int *);
extern void DefRedisplayLine (int, int, int, int);
extern void DefClearLine (int, int, int, int);
extern int DefRewrite (int, int, int, struct mchar *, int);
extern int DefResize (int, int);
extern void DefRestore (void);
extern void AddCStr (char *);
extern void AddCStr2 (char *, int);
extern void InitTerm (int);
extern void FinitTerm (void);
extern void PUTCHAR (int);
extern void PUTCHARLP (int);
extern void ClearAll (void);
extern void ClearArea (int, int, int, int, int, int, int, int);
extern void ClearLine (struct mline *, int, int, int, int);
extern void RefreshAll (int);
extern void RefreshArea (int, int, int, int, int);
extern void RefreshLine (int, int, int, int);
extern void Redisplay (int);
extern void RedisplayDisplays (int);
extern void ShowHStatus (char *);
extern void RefreshHStatus (void);
extern void DisplayLine (struct mline *, struct mline *, int, int, int);
extern void GotoPos (int, int);
extern int CalcCost (char *);
extern void ScrollH (int, int, int, int, int, struct mline *);
extern void ScrollV (int, int, int, int, int, int);
extern void PutChar (struct mchar *, int, int);
extern void InsChar (struct mchar *, int, int, int, struct mline *);
extern void WrapChar (struct mchar *, int, int, int, int, int, int, int);
extern void ChangeScrollRegion (int, int);
extern void InsertMode (int);
extern void KeypadMode (int);
extern void CursorkeysMode (int);
extern void ReverseVideo (int);
extern void CursorVisibility (int);
extern void MouseMode (int);
extern void SetFont (int);
extern void SetAttr (int);
extern void SetColor (int, int);
extern void SetRendition (struct mchar *);
extern void SetRenditionMline (struct mline *, int);
extern void MakeStatus (char *);
extern void RemoveStatus (void);
extern int ResizeDisplay (int, int);
extern void AddStr (char *);
extern void AddStrn (char *, int);
extern void Flush (int);
extern void freetty (void);
extern void Resize_obuf (void);

extern void NukePending (void);






extern int color256to16 (int);




extern void ResetIdle (void);
extern void KillBlanker (void);
extern void DisplaySleep1000 (int, int);


extern int ChangeWindowSize (struct win *, int, int, int);
extern void ChangeScreenSize (int, int, int);
extern void CheckScreenSize (int);
extern char *xrealloc (char *, int);
extern void ResizeLayersToCanvases (void);
extern void ResizeLayer (struct layer *, int, int, struct display *);
extern int MayResizeLayer (struct layer *);
extern void FreeAltScreen (struct win *);
extern void EnterAltScreen (struct win *);
extern void LeaveAltScreen (struct win *);


extern void evenq (struct event *);
extern void evdeq (struct event *);
extern void SetTimeout (struct event *, int);
extern void sched (void);


extern int FindSocket (int *, int *, int *, char *);
extern int MakeClientSocket (int);
extern int MakeServerSocket (void);
extern int RecoverSocket (void);
extern int chsock (void);
extern void ReceiveMsg (void);
extern void SendCreateMsg (char *, struct NewWindow *);
extern int SendErrorMsg (char *, char *);
extern int SendAttachMsg (int, struct msg *, int);
extern void ReceiveRaw (int);


extern char *SaveStr (const char *);
extern char *SaveStrn (const char *, int);
extern char *InStr (char *, const char *);



extern void centerline (char *, int);
extern void leftline (char *, int, struct mchar *);
extern char *Filename (char *);
extern char *stripdev (char *);



extern void bclear (char *, int);
extern void closeallfiles (int);
extern int UserContext (void);
extern void UserReturn (int);
extern int UserStatus (void);

extern void (*xsignal (int, void (*)(int))) (int);





extern void xseteuid (int);
extern void xsetegid (int);

extern int AddXChar (char *, int);
extern int AddXChars (char *, int, char *);
extern void xsetenv (char *, char *);
extern void sleep1000 (int);
# 397 "./extern.h"
extern int AclCheckPermWin (struct acluser *, int, struct win *);
extern int AclCheckPermCmd (struct acluser *, int, struct comm *);
extern int AclSetPerm (struct acluser *, struct acluser *, char *, char *);
extern int AclUmask (struct acluser *, char *, char **);
extern int UsersAcl (struct acluser *, int, char **);
extern void AclWinSwap (int, int);
extern int NewWindowAcl (struct win *, struct acluser *);
extern void FreeWindowAcl (struct win *);
extern char *DoSu (struct acluser **, char *, char *, char *);
extern int AclLinkUser (char *, char *);

extern int UserFreeCopyBuffer (struct acluser *);
extern struct acluser **FindUserPtr (char *);
extern int UserAdd (char *, char *, struct acluser **);
extern int UserDel (char *, struct acluser **);
# 429 "./extern.h"
extern void LGotoPos (struct layer *, int, int);
extern void LPutChar (struct layer *, struct mchar *, int, int);
extern void LInsChar (struct layer *, struct mchar *, int, int, struct mline *);
extern void LPutStr (struct layer *, char *, int, struct mchar *, int, int);
extern void LPutWinMsg (struct layer *, char *, int, struct mchar *, int, int);
extern void LScrollH (struct layer *, int, int, int, int, int, struct mline *);
extern void LScrollV (struct layer *, int, int, int, int);
extern void LClearAll (struct layer *, int);
extern void LClearArea (struct layer *, int, int, int, int, int, int);
extern void LClearLine (struct layer *, int, int, int, int, struct mline *);
extern void LRefreshAll (struct layer *, int);
extern void LCDisplayLine (struct layer *, struct mline *, int, int, int, int);
extern void LCDisplayLineWrap (struct layer *, struct mline *, int, int, int, int);
extern void LSetRendition (struct layer *, struct mchar *);
extern void LWrapChar (struct layer *, struct mchar *, int, int, int, int);
extern void LCursorVisibility (struct layer *, int);
extern void LSetFlow (struct layer *, int);
extern void LKeypadMode (struct layer *, int);
extern void LCursorkeysMode (struct layer *, int);
extern void LMouseMode (struct layer *, int);

extern void LMsg (int, const char *, ...) __attribute__((format(printf, 2, 3)));



extern void KillLayerChain (struct layer *);
extern int InitOverlayPage (int, struct LayFuncs *, int);
extern void ExitOverlayPage (void);
extern int LayProcessMouse (struct layer *, unsigned char);
extern void LayProcessMouseSwitch (struct layer *, int);
# 473 "./extern.h"
extern const char *DoNLS (const char *);




extern void InitBuiltinTabs (void);
extern struct mchar *recode_mchar (struct mchar *, int, int);
extern struct mline *recode_mline (struct mline *, int, int, int);
extern int FromUtf8 (int, int *);
extern void AddUtf8 (int);
extern int ToUtf8 (char *, int);
extern int ToUtf8_comb (char *, int);
extern int utf8_isdouble (int);
extern int utf8_iscomb (int);
extern void utf8_handle_comb (int, struct mchar *);
extern int ContainsSpecialDeffont (struct mline *, int, int, int);
extern int LoadFontTranslation (int, char *);
extern void LoadFontTranslationsForEncoding (int);

extern void WinSwitchEncoding (struct win *, int);
extern int FindEncoding (char *);
extern char *EncodingName (int);
extern int EncodingDefFont (int);
extern void ResetEncoding (struct win *);
extern int CanEncodeFont (int, int);
extern int DecodeChar (int, int, int *);
extern int RecodeBuf (unsigned char *, int, int, int, unsigned char *);

extern int PrepareEncodedChar (int);


extern int EncodeChar (char *, int, int, int *);


extern void RemoveLayout (struct layout *);
extern int LayoutDumpCanvas (struct canvas *, char *);
# 54 "process.c" 2
# 1 "./logfile.h" 1
# 30 "./logfile.h"
struct logfile
{
  struct logfile *next;
  FILE *fp;
  char *name;
  int opencount;
  int writecount;
  int flushcount;
  struct stat *st;
};







struct logfile *logfopen (char *name, FILE *fp);






int islogfile (char *name);




int logfclose (struct logfile *);
int logfwrite (struct logfile *, char *, int);






int logfflush (struct logfile *ifany);
# 77 "./logfile.h"
void logreopen_register (int (*fn) (char *, int, struct logfile *) );
# 87 "./logfile.h"
int lf_move_fd (int fd, int wantfd);
# 55 "process.c" 2


# 1 "./list_generic.h" 1
# 23 "./list_generic.h"
struct ListData;

struct ListRow
{
  void *data;
  struct ListRow *next, *prev;
  int y;
};

struct GenericList
{
  int (*gl_printheader) (struct ListData *);
  int (*gl_printfooter) (struct ListData *);
  int (*gl_printrow) (struct ListData *, struct ListRow *);
  int (*gl_pinput) (struct ListData *, char **inp, int *len);
  int (*gl_freerow) (struct ListData *, struct ListRow *);
  int (*gl_free) (struct ListData *);
  int (*gl_matchrow) (struct ListData *, struct ListRow *, const char *);
};

struct ListData
{
  const char *name;
  struct ListRow *root;
  struct ListRow *selected;
  struct ListRow *top;

  struct GenericList *list_fn;

  char *search;

  void *data;
};

extern struct LayFuncs ListLf;


struct ListRow * glist_add_row (struct ListData *ldata, void *data, struct ListRow *after);

void glist_remove_rows (struct ListData *ldata);

void glist_display_all (struct ListData *list);

struct ListData * glist_display (struct GenericList *list, const char *name);

void glist_abort (void);

void display_displays (void);

void display_windows (int onblank, int order, struct win *group);
# 58 "process.c" 2

extern struct comm comms[];
extern char *rc_name;
extern char *RcFileName, *home;
extern char *BellString, *ActivityString, *ShellProg, *ShellArgs[];
extern char *hstatusstring, *captionstring, *timestring;
extern char *wliststr, *wlisttit;
extern int captionalways;
extern int queryflag;
extern char *hardcopydir, *screenlogfile, *logtstamp_string;
extern int log_flush, logtstamp_on, logtstamp_after;
extern char *VisualBellString;
extern int VBellWait, MsgWait, MsgMinWait, SilenceWait;
extern char SockPath[], *SockName;
extern int TtyMode, auto_detach, use_altscreen;
extern int iflag, maxwin;
extern int focusminwidth, focusminheight;
extern int use_hardstatus, visual_bell;

extern int attr2color[][4];
extern int nattr2color;

extern int hardstatusemu;
extern char *printcmd;
extern int default_startup;
extern int defobuflimit;
extern int defnonblock;
extern int defmousetrack;
extern int ZombieKey_destroy;
extern int ZombieKey_resurrect;
extern int ZombieKey_onerror;

extern int defautonuke;

extern int separate_sids;
extern struct NewWindow nwin_default, nwin_undef;

extern int join_with_cr;
extern int compacthist;
extern int search_ic;

extern int pastefont;

extern unsigned char mark_key_tab[];
extern char *BufferFile;


extern char *BufferFile, *PowDetachString;


extern struct acluser *EffectiveAclUser;

extern struct term term[];

extern char *kmapdef[];
extern char *kmapadef[];
extern char *kmapmdef[];

extern struct mchar mchar_so, mchar_null;
extern int renditions[];
extern int VerboseCreate;

extern char *screenencodings;


extern int cjkwidth;


static int CheckArgNum (int, char **);
static void ClearAction (struct action *);
static void SaveAction (struct action *, int, char **, int *);
static int NextWindow (void);
static int PreviousWindow (void);
static int MoreWindows (void);
static void CollapseWindowlist (void);
static void LogToggle (int);
static void ShowInfo (void);
static void ShowDInfo (void);
static struct win *WindowByName (char *);
static int WindowByNumber (char *);
static int ParseOnOff (struct action *, int *);
static int ParseWinNum (struct action *, int *);
static int ParseBase (struct action *, char *, int *, int, char *);
static int ParseNum1000 (struct action *, int *);
static char **SaveArgs (char **);
static int IsNum (char *, int);
static void Colonfin (char *, int, char *);
static void InputSelect (void);
static void InputSetenv (char *);
static void InputAKA (void);

static int InputSu (struct win *, struct acluser **, char *);
static void su_fin (char *, int, char *);

static void AKAfin (char *, int, char *);

static void copy_reg_fn (char *, int, char *);
static void ins_reg_fn (char *, int, char *);

static void process_fn (char *, int, char *);

static void pass1 (char *, int, char *);
static void pass2 (char *, int, char *);


static void pow_detach_fn (char *, int, char *);

static void digraph_fn (char *, int, char *);
static int digraph_find (const char *buf);
static void confirm_fn (char *, int, char *);
static int IsOnDisplay (struct win *);
static void ResizeRegions (char *, int);
static void ResizeFin (char *, int, char *);
static struct action *FindKtab (char *, int);
static void SelectFin (char *, int, char *);
static void SelectLayoutFin (char *, int, char *);
static void ShowWindowsX (char *);


extern struct layer *flayer;
extern struct display *display, *displays;
extern struct win *fore, *console_window, *windows;
extern struct acluser *users;
extern struct layout *layouts, *layout_attach, layout_last_marker;
extern struct layout *laytab[];

extern char screenterm[], HostName[], version[];
extern struct NewWindow nwin_undef, nwin_default;
extern struct LayFuncs WinLf, MarkLf;

extern int Z0width, Z1width;
extern int real_uid, real_gid;


extern int nethackflag;



extern struct win **wtab;


extern char *multi;
extern int maxusercount;

char NullStr[] = "";

struct plop plop_tab[256];





int TtyMode = 0620;
int hardcopy_append = 0;
int all_norefresh = 0;

int zmodem_mode = 0;
char *zmodem_sendcmd;
char *zmodem_recvcmd;
static char *zmodes[4] = {"off", "auto", "catch", "pass"};


int idletimo;
struct action idleaction;

char **blankerprg;


struct action ktab[256 + (188 -106)];
struct kclass {
  struct kclass *next;
  char *name;
  struct action ktab[256 + (188 -106)];
};
struct kclass *kclasses;


struct action umtab[(188 -106)+(188 -166)];
struct action dmtab[(188 -106)+(188 -166)];
struct action mmtab[(188 -106)+(188 -166)];
struct kmap_ext *kmap_exts;
int kmap_extn;
static int maptimeout = 300;






struct digraph
{
  unsigned char d[2];
  int value;
};


static struct digraph digraphs[512 + 1] = {
    {{' ', ' '}, 160},
    {{'N', 'S'}, 160},
    {{'~', '!'}, 161},
    {{'!', '!'}, 161},
    {{'!', 'I'}, 161},
    {{'c', '|'}, 162},
    {{'c', 't'}, 162},
    {{'$', '$'}, 163},
    {{'P', 'd'}, 163},
    {{'o', 'x'}, 164},
    {{'C', 'u'}, 164},
    {{'C', 'u'}, 164},
    {{'E', 'u'}, 164},
    {{'Y', '-'}, 165},
    {{'Y', 'e'}, 165},
    {{'|', '|'}, 166},
    {{'B', 'B'}, 166},
    {{'p', 'a'}, 167},
    {{'S', 'E'}, 167},
    {{'"', '"'}, 168},
    {{'\'', ':'}, 168},
    {{'c', 'O'}, 169},
    {{'C', 'o'}, 169},
    {{'a', '-'}, 170},
    {{'<', '<'}, 171},
    {{'-', ','}, 172},
    {{'N', 'O'}, 172},
    {{'-', '-'}, 173},
    {{'r', 'O'}, 174},
    {{'R', 'g'}, 174},
    {{'-', '='}, 175},
    {{'\'', 'm'}, 175},
    {{'~', 'o'}, 176},
    {{'D', 'G'}, 176},
    {{'+', '-'}, 177},
    {{'2', '2'}, 178},
    {{'2', 'S'}, 178},
    {{'3', '3'}, 179},
    {{'3', 'S'}, 179},
    {{'\'', '\''}, 180},
    {{'j', 'u'}, 181},
    {{'M', 'y'}, 181},
    {{'p', 'p'}, 182},
    {{'P', 'I'}, 182},
    {{'~', '.'}, 183},
    {{'.', 'M'}, 183},
    {{',', ','}, 184},
    {{'\'', ','}, 184},
    {{'1', '1'}, 185},
    {{'1', 'S'}, 185},
    {{'o', '-'}, 186},
    {{'>', '>'}, 187},
    {{'1', '4'}, 188},
    {{'1', '2'}, 189},
    {{'3', '4'}, 190},
    {{'~', '?'}, 191},
    {{'?', '?'}, 191},
    {{'?', 'I'}, 191},
    {{'A', '`'}, 192},
    {{'A', '!'}, 192},
    {{'A', '\''}, 193},
    {{'A', '^'}, 194},
    {{'A', '>'}, 194},
    {{'A', '~'}, 195},
    {{'A', '?'}, 195},
    {{'A', '"'}, 196},
    {{'A', ':'}, 196},
    {{'A', '@'}, 197},
    {{'A', 'A'}, 197},
    {{'A', 'E'}, 198},
    {{'C', ','}, 199},
    {{'E', '`'}, 200},
    {{'E', '!'}, 200},
    {{'E', '\''}, 201},
    {{'E', '^'}, 202},
    {{'E', '>'}, 202},
    {{'E', '"'}, 203},
    {{'E', ':'}, 203},
    {{'I', '`'}, 204},
    {{'I', '!'}, 204},
    {{'I', '\''}, 205},
    {{'I', '^'}, 206},
    {{'I', '>'}, 206},
    {{'I', '"'}, 207},
    {{'I', ':'}, 207},
    {{'D', '-'}, 208},
    {{'N', '~'}, 209},
    {{'N', '?'}, 209},
    {{'O', '`'}, 210},
    {{'O', '!'}, 210},
    {{'O', '\''}, 211},
    {{'O', '^'}, 212},
    {{'O', '>'}, 212},
    {{'O', '~'}, 213},
    {{'O', '?'}, 213},
    {{'O', '"'}, 214},
    {{'O', ':'}, 214},
    {{'/', '\\'}, 215},
    {{'*', 'x'}, 215},
    {{'O', '/'}, 216},
    {{'U', '`'}, 217},
    {{'U', '!'}, 217},
    {{'U', '\''}, 218},
    {{'U', '^'}, 219},
    {{'U', '>'}, 219},
    {{'U', '"'}, 220},
    {{'U', ':'}, 220},
    {{'Y', '\''}, 221},
    {{'I', 'p'}, 222},
    {{'T', 'H'}, 222},
    {{'s', 's'}, 223},
    {{'s', '"'}, 223},
    {{'a', '`'}, 224},
    {{'a', '!'}, 224},
    {{'a', '\''}, 225},
    {{'a', '^'}, 226},
    {{'a', '>'}, 226},
    {{'a', '~'}, 227},
    {{'a', '?'}, 227},
    {{'a', '"'}, 228},
    {{'a', ':'}, 228},
    {{'a', 'a'}, 229},
    {{'a', 'e'}, 230},
    {{'c', ','}, 231},
    {{'e', '`'}, 232},
    {{'e', '!'}, 232},
    {{'e', '\''}, 233},
    {{'e', '^'}, 234},
    {{'e', '>'}, 234},
    {{'e', '"'}, 235},
    {{'e', ':'}, 235},
    {{'i', '`'}, 236},
    {{'i', '!'}, 236},
    {{'i', '\''}, 237},
    {{'i', '^'}, 238},
    {{'i', '>'}, 238},
    {{'i', '"'}, 239},
    {{'i', ':'}, 239},
    {{'d', '-'}, 240},
    {{'n', '~'}, 241},
    {{'n', '?'}, 241},
    {{'o', '`'}, 242},
    {{'o', '!'}, 242},
    {{'o', '\''}, 243},
    {{'o', '^'}, 244},
    {{'o', '>'}, 244},
    {{'o', '~'}, 245},
    {{'o', '?'}, 245},
    {{'o', '"'}, 246},
    {{'o', ':'}, 246},
    {{':', '-'}, 247},
    {{'o', '/'}, 248},
    {{'u', '`'}, 249},
    {{'u', '!'}, 249},
    {{'u', '\''}, 250},
    {{'u', '^'}, 251},
    {{'u', '>'}, 251},
    {{'u', '"'}, 252},
    {{'u', ':'}, 252},
    {{'y', '\''}, 253},
    {{'i', 'p'}, 254},
    {{'t', 'h'}, 254},
    {{'y', '"'}, 255},
    {{'y', ':'}, 255},
    {{'"', '['}, 196},
    {{'"', '\\'}, 214},
    {{'"', ']'}, 220},
    {{'"', '{'}, 228},
    {{'"', '|'}, 246},
    {{'"', '}'}, 252},
    {{'"', '~'}, 223}
};





static char *resizeprompts[] = {
  "resize # lines: ",
  "resize -h # lines: ",
  "resize -v # lines: ",
  "resize -b # lines: ",
  "resize -l # lines: ",
  "resize -l -h # lines: ",
  "resize -l -v # lines: ",
  "resize -l -b # lines: ",
};

static int
parse_input_int(buf, len, val)
const char *buf;
int len;
int *val;
{
  int x = 0, i;
  if (len >= 1 && ((*buf == 'U' && buf[1] == '+') || (*buf == '0' && (buf[1] == 'x' || buf[1] == 'X'))))
    {
      x = 0;
      for (i = 2; i < len; i++)
 {
   if (buf[i] >= '0' && buf[i] <= '9')
     x = x * 16 | (buf[i] - '0');
   else if (buf[i] >= 'a' && buf[i] <= 'f')
     x = x * 16 | (buf[i] - ('a' - 10));
   else if (buf[i] >= 'A' && buf[i] <= 'F')
     x = x * 16 | (buf[i] - ('A' - 10));
   else
     return 0;
 }
    }
  else if (buf[0] == '0')
    {
      x = 0;
      for (i = 1; i < len; i++)
 {
   if (buf[i] < '0' || buf[i] > '7')
     return 0;
   x = x * 8 | (buf[i] - '0');
 }
    }
  else
    return 0;
  *val = x;
  return 1;
}

char *noargs[1];

int enter_window_name_mode = 0;

void
InitKeytab()
{
  register unsigned int i;

  char *argarr[2];


  for (i = 0; i < sizeof(ktab)/sizeof(*ktab); i++)
    {
      ktab[i].nr = -1;
      ktab[i].args = noargs;
      ktab[i].argl = 0;
    }

  for (i = 0; i < (188 -106)+(188 -166); i++)
    {
      umtab[i].nr = -1;
      umtab[i].args = noargs;
      umtab[i].argl = 0;
      dmtab[i].nr = -1;
      dmtab[i].args = noargs;
      dmtab[i].argl = 0;
      mmtab[i].nr = -1;
      mmtab[i].args = noargs;
      mmtab[i].argl = 0;
    }
  argarr[1] = 0;
  for (i = 0; i < 82; i++)
    {
      if (i + 106 < 106)
 continue;
      if (i + 106 >= 106 + (188 -106))
 continue;
      if (kmapdef[i] == 0)
 continue;
      argarr[0] = kmapdef[i];
      SaveAction(dmtab + i + (106 - 106), 158, argarr, 0);
    }
  for (i = 0; i < 22; i++)
    {
      if (i + 166 < 166)
 continue;
      if (i + 166 >= 166 + (188 -166))
 continue;
      if (kmapadef[i] == 0)
 continue;
      argarr[0] = kmapadef[i];
      SaveAction(dmtab + i + (166 - 166 + (188 -106)), 158, argarr, 0);
    }
  for (i = 0; i < 64; i++)
    {
      if (i + 106 < 106)
 continue;
      if (i + 106 >= 106 + (188 -106))
 continue;
      if (kmapmdef[i] == 0)
 continue;
      argarr[0] = kmapmdef[i];
      argarr[1] = 0;
      SaveAction(mmtab + i + (106 - 106), 158, argarr, 0);
    }


  ktab['h'].nr = 82;

  ktab['z'].nr = ktab[(('z')&037)].nr = 160;

  ktab['c'].nr = ktab[(('c')&037)].nr = 141;
  ktab[' '].nr = ktab[((' ')&037)].nr =
    ktab['n'].nr = ktab[(('n')&037)].nr = 115;
  ktab['N'].nr = 117;
  ktab[(('h')&037)].nr = ktab[0177].nr = ktab['p'].nr = ktab[(('p')&037)].nr = 128;
  ktab['k'].nr = ktab[(('k')&037)].nr = 94;
  ktab['l'].nr = ktab[(('l')&037)].nr = 134;
  ktab['w'].nr = ktab[(('w')&037)].nr = 179;
  ktab['v'].nr = 175;
  ktab[(('v')&037)].nr = 67;
  ktab['q'].nr = ktab[(('q')&037)].nr = 184;
  ktab['s'].nr = ktab[(('s')&037)].nr = 183;
  ktab['t'].nr = ktab[(('t')&037)].nr = 165;
  ktab['i'].nr = ktab[(('i')&037)].nr = 92;
  ktab['m'].nr = ktab[(('m')&037)].nr = 95;
  ktab['A'].nr = 166;

  ktab['L'].nr = 101;

  ktab[','].nr = 97;
  ktab['W'].nr = 177;
  ktab['.'].nr = 70;
  ktab[(('\\')&037)].nr = 131;

  ktab['d'].nr = ktab[(('d')&037)].nr = 66;

  ktab['D'].nr = 126;


  ktab['r'].nr = ktab[(('r')&037)].nr = 180;
  ktab['f'].nr = ktab[(('f')&037)].nr = 77;
  ktab['C'].nr = 32;
  ktab['Z'].nr = 139;
  ktab['H'].nr = 99;
  ktab['M'].nr = 109;
  ktab['?'].nr = 87;

  ktab['*'].nr = 69;

  {
    char *args[2];
    args[0] = "-";
    args[1] = ((void*)0);
    SaveAction(ktab + '-', 143, args, 0);
  }
  for (i = 0; i < ((maxwin && maxwin < 10) ? maxwin : 10); i++)
    {
      char *args[2], arg1[10];
      args[0] = arg1;
      args[1] = 0;
      sprintf(arg1, "%d", i);
      SaveAction(ktab + '0' + i, 143, args, 0);
    }
  ktab['\''].nr = 143;
  {
    char *args[2];
    args[0] = "-b";
    args[1] = 0;
    SaveAction(ktab + '"', 178, args, 0);
  }
  ktab[(('G')&037)].nr = 171;
  ktab[':'].nr = 34;

  ktab['['].nr = ktab[(('[')&037)].nr = 38;
  {
    char *args[2];
    args[0] = ".";
    args[1] = 0;
    SaveAction(ktab + ']', 123, args, 0);
    SaveAction(ktab + ((']')&037), 123, args, 0);
  }
  ktab['{'].nr = 88;
  ktab['}'].nr = 88;
  ktab['>'].nr = 181;
  ktab['<'].nr = 132;
  ktab['='].nr = 137;


  ktab['D'].nr = 126;


  ktab['x'].nr = ktab[(('x')&037)].nr = 98;

  ktab['b'].nr = ktab[(('b')&037)].nr = 21;
  ktab['B'].nr = 125;
  ktab['_'].nr = 149;
  ktab['S'].nr = 156;
  ktab['Q'].nr = 119;
  ktab['X'].nr = 136;
  ktab['F'].nr = 76;
  ktab['\t'].nr = 78;
  {
    char *args[2];
    args[0] = "prev";
    args[1] = 0;
    SaveAction(ktab + 140 - 106 + 256, 78, args, 0);
  }
  {
    char *args[2];
    args[0] = "-v";
    args[1] = 0;
    SaveAction(ktab + '|', 156, args, 0);
  }

  if (DefaultEsc >= 0)
    {
      ClearAction(&ktab[DefaultEsc]);
      ktab[DefaultEsc].nr = 120;
    }
  if (DefaultMetaEsc >= 0)
    {
      ClearAction(&ktab[DefaultMetaEsc]);
      ktab[DefaultMetaEsc].nr = 108;
    }

  idleaction.nr = 19;
  idleaction.args = noargs;
  idleaction.argl = 0;
}

static struct action *
FindKtab(class, create)
char *class;
int create;
{
  struct kclass *kp, **kpp;
  int i;

  if (class == 0)
    return ktab;
  for (kpp = &kclasses; (kp = *kpp) != 0; kpp = &kp->next)
    if (!strcmp(kp->name, class))
      break;
  if (kp == 0)
    {
      if (!create)
 return 0;
      if (strlen(class) > 80)
 {
   Msg(0, "Command class name too long.");
   return 0;
 }
      kp = malloc(sizeof(*kp));
      if (kp == 0)
 {
   Msg(0, "%s", strnomem);
   return 0;
 }
      kp->name = SaveStr(class);
      for (i = 0; i < (int)(sizeof(kp->ktab)/sizeof(*kp->ktab)); i++)
 {
   kp->ktab[i].nr = -1;
   kp->ktab[i].args = noargs;
   kp->ktab[i].argl = 0;
   kp->ktab[i].quiet = 0;
 }
      kp->next = 0;
      *kpp = kp;
    }
  return kp->ktab;
}

static void
ClearAction(act)
struct action *act;
{
  char **p;

  if (act->nr == -1)
    return;
  act->nr = -1;
  if (act->args == noargs)
    return;
  for (p = act->args; *p; p++)
    free(*p);
  free((char *)act->args);
  act->args = noargs;
  act->argl = 0;
}
# 745 "process.c"
void
ProcessInput(ibuf, ilen)
char *ibuf;
int ilen;
{
  int ch, slen;
  unsigned char *s, *q;
  int i, l;
  char *p;

  do {} while (0);
  if (display == 0 || ilen == 0)
    return;
  if (display->d_seql)
    evdeq(&display->d_mapev);
  slen = ilen;
  s = (unsigned char *)ibuf;
  while (ilen-- > 0)
    {
      ch = *s++;
      if (display->d_dontmap || !display->d_nseqs)
 {
          display->d_dontmap = 0;
   continue;
 }
      for (;;)
 {
   do {} while (0);
   if (*display->d_seqp != ch)
     {
       l = display->d_seqp[display->d_seqp[-display->d_seql-1] + 1];
       if (l)
  {
    display->d_seqp += l * 2 + 4;
    do {} while (0);
    continue;
  }
       do {} while (0);
       display->d_mapdefault = 0;
       l = display->d_seql;
       p = (char *)display->d_seqp - l;
       display->d_seql = 0;
       display->d_seqp = display->d_kmaps + 3;
       if (l == 0)
  break;
       if ((q = display->d_seqh) != 0)
  {
    display->d_seqh = 0;
    i = q[0] << 8 | q[1];
    i &= ~0x4000;
    do {} while (0);
    do {} while (0);
    if (StuffKey(i))
      ProcessInput2((char *)q + 3, q[2]);
    if (display == 0)
      return;
    l -= q[2];
    p += q[2];
  }
       else
         display->d_dontmap = 1;
       do {} while (0);
       ProcessInput(p, l);
       if (display == 0)
  return;
       evdeq(&display->d_mapev);
       continue;
     }
   if (display->d_seql++ == 0)
     {

       slen -= ilen + 1;
       do {} while (0);
       if (slen)
         ProcessInput2(ibuf, slen);
       if (display == 0)
  return;
       display->d_seqh = 0;
     }
   ibuf = (char *)s;
   slen = ilen;
   display->d_seqp++;
   l = display->d_seql;
   do {} while (0);
   if (l == display->d_seqp[-l - 1])
     {
       if (display->d_seqp[l] != l)
  {
    q = display->d_seqp + 1 + l;
    if (display->d_kmaps + display->d_nseqs > q && q[2] > l && !bcmp(display->d_seqp - l, q + 3, l))
      {
        do {} while (0);
        display->d_seqh = display->d_seqp - 3 - l;
        display->d_seqp = q + 3 + l;
        break;
      }
  }
       i = display->d_seqp[-l - 3] << 8 | display->d_seqp[-l - 2];
       i &= ~0x4000;
       do {} while (0);
       p = (char *)display->d_seqp - l;
       do {} while (0);
       display->d_seql = 0;
       display->d_seqp = display->d_kmaps + 3;
       display->d_seqh = 0;
       if (StuffKey(i))
  ProcessInput2(p, l);
       if (display == 0)
  return;
     }
   break;
 }
    }
  if (display->d_seql)
    {
      do {} while (0);
      l = display->d_seql;
      for (s = display->d_seqp; ; s += i * 2 + 4)
 {
   if (s[-l-3] & 0x4000 >> 8)
     break;
   if ((i = s[s[-l-1] + 1]) == 0)
     {
       SetTimeout(&display->d_mapev, maptimeout);
       evenq(&display->d_mapev);
       break;
     }
 }
    }
  ProcessInput2(ibuf, slen);
}
# 886 "process.c"
void
ProcessInput2(ibuf, ilen)
char *ibuf;
int ilen;
{
  char *s;
  int ch, slen;
  struct action *ktabp;

  do {} while (0);
  while (ilen && display)
    {
      do {} while (0);
      flayer = display->d_forecv->c_layer;
      fore = display->d_fore;
      slen = ilen;
      s = ibuf;
      if (!display->d_ESCseen)
 {
   while (ilen > 0)
     {
       if ((unsigned char)*s++ == display->d_user->u_Esc)
  break;
       ilen--;
     }
   slen -= ilen;
   if (slen)
     DoProcess(fore, &ibuf, &slen, 0);
   if (--ilen == 0)
     {
       display->d_ESCseen = ktab;
       WindowChanged(fore, 'E');
     }
 }
      if (ilen <= 0)
        return;
      ktabp = display->d_ESCseen ? display->d_ESCseen : ktab;
      if (display->d_ESCseen)
        {
          display->d_ESCseen = 0;
          WindowChanged(fore, 'E');
        }
      ch = (unsigned char)*s;







      if (ch == display->d_user->u_Esc)
        ch = DefaultEsc;
      else if (ch == display->d_user->u_MetaEsc)
        ch = DefaultMetaEsc;

      if (ch >= 0)
        DoAction(&ktabp[ch], ch);
      ibuf = (char *)(s + 1);
      ilen--;
    }
}

void
DoProcess(p, bufp, lenp, pa)
struct win *p;
char **bufp;
int *lenp;
struct paster *pa;
{
  int oldlen;
  struct display *d = display;



  if (pa && *lenp > 1 && p && p->w_slowpaste)
    {

      SetTimeout(&p->w_paster.pa_slowev, p->w_slowpaste);
      evenq(&p->w_paster.pa_slowev);
      return;
    }

  while (flayer && *lenp)
    {

      if (!pa && p && p->w_paster.pa_pastelen && flayer == p->w_paster.pa_pastelayer)
 {
   do {} while (0);
   WBell(p, visual_bell);
   *bufp += *lenp;
   *lenp = 0;
   display = d;
   return;
 }

      oldlen = *lenp;
      (*flayer->l_layfn->lf_LayProcess)(bufp, lenp);

      if (pa && !pa->pa_pastelayer)
 break;

      if (*lenp == oldlen)
 {
   if (pa)
     {
       display = d;
       return;
     }

   do {} while (0);
   WBell(p, visual_bell);
   break;
 }
    }
  *bufp += *lenp;
  *lenp = 0;
  display = d;

  if (pa && pa->pa_pastelen == 0)
    FreePaster(pa);

}

int
FindCommnr(str)
const char *str;
{
  int x, m, l = 0, r = 187;
  while (l <= r)
    {
      m = (l + r) / 2;
      x = strcmp(str, comms[m].name);
      if (x > 0)
 l = m + 1;
      else if (x < 0)
 r = m - 1;
      else
 return m;
    }
  return -1;
}

static int
CheckArgNum(nr, args)
int nr;
char **args;
{
  int i, n;
  static char *argss[] = {"no", "one", "two", "three", "four", "OOPS"};
  static char *orformat[] =
    {
      "%s: %s: %s argument%s required",
      "%s: %s: %s or %s argument%s required",
      "%s: %s: %s, %s or %s argument%s required",
      "%s: %s: %s, %s, %s or %s argument%s required"
    };

  n = comms[nr].flags & (3);
  for (i = 0; args[i]; i++)
    ;
  if (comms[nr].flags & (1<<5))
    {
      if (i < n)
 {
   Msg(0, "%s: %s: at least %s argument%s required",
       rc_name, comms[nr].name, argss[n], n != 1 ? "s" : "");
   return -1;
 }
    }
  else if ((comms[nr].flags & (1<<2)) &&
           (comms[nr].flags & (1<<3)) &&
    (comms[nr].flags & (1<<4)))
    {
      if (i != n && i != n + 1 && i != n + 2 && i != n + 3)
        {
   Msg(0, orformat[3], rc_name, comms[nr].name, argss[n],
       argss[n + 1], argss[n + 2], argss[n + 3], "");
   return -1;
 }
    }
  else if ((comms[nr].flags & (1<<2)) &&
           (comms[nr].flags & (1<<3)))
    {
      if (i != n && i != n + 1 && i != n + 2)
 {
   Msg(0, orformat[2], rc_name, comms[nr].name, argss[n],
       argss[n + 1], argss[n + 2], "");
          return -1;
 }
    }
  else if ((comms[nr].flags & (1<<2)) &&
           (comms[nr].flags & (1<<4)))
    {
      if (i != n && i != n + 1 && i != n + 3)
        {
   Msg(0, orformat[2], rc_name, comms[nr].name, argss[n],
       argss[n + 1], argss[n + 3], "");
   return -1;
 }
    }
  else if ((comms[nr].flags & (1<<3)) &&
           (comms[nr].flags & (1<<4)))
    {
      if (i != n && i != n + 2 && i != n + 3)
        {
   Msg(0, orformat[2], rc_name, comms[nr].name, argss[n],
       argss[n + 2], argss[n + 3], "");
   return -1;
 }
    }
  else if (comms[nr].flags & (1<<2))
    {
      if (i != n && i != n + 1)
        {
   Msg(0, orformat[1], rc_name, comms[nr].name, argss[n],
       argss[n + 1], n != 0 ? "s" : "");
   return -1;
 }
    }
  else if (comms[nr].flags & (1<<3))
    {
      if (i != n && i != n + 2)
        {
   Msg(0, orformat[1], rc_name, comms[nr].name, argss[n],
       argss[n + 2], "s");
   return -1;
 }
    }
  else if (comms[nr].flags & (1<<4))
    {
      if (i != n && i != n + 3)
        {
   Msg(0, orformat[1], rc_name, comms[nr].name, argss[n],
       argss[n + 3], "");
   return -1;
 }
    }
  else if (i != n)
    {
      Msg(0, orformat[0], rc_name, comms[nr].name, argss[n], n != 1 ? "s" : "");
      return -1;
    }
  return i;
}

static void
StuffFin(buf, len, data)
char *buf;
int len;
char *data;
{
  if (!flayer)
    return;
  while(len)
    (*flayer->l_layfn->lf_LayProcess)(&buf, &len);
}
# 1154 "process.c"
void
DoAction(act, key)
struct action *act;
int key;
{
  int nr = act->nr;
  char **args = act->args;
  int *argl = act->argl;
  struct win *p;
  int argc, i, n, msgok;
  char *s;
  char ch;
  struct display *odisplay = display;
  struct acluser *user;

  user = display ? display->d_user : users;
  if (nr == -1)
    {
      do {} while (0);
      return;
    }
  n = comms[nr].flags;






  if (!(n & (1<<9)) && queryflag >= 0)
    {

      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s command cannot be queried.", comms[nr].name);
      queryflag = -1;
      return;
    }
  if ((n & (1<<7)) && display == 0)
    {
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: display required", rc_name, comms[nr].name);
      queryflag = -1;
      return;
    }
  if ((n & (1<<6)) && fore == 0)
    {
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: window required", rc_name, comms[nr].name);
      queryflag = -1;
      return;
    }
  if ((n & (1<<8)) && flayer == 0)
    {
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: display or window required", rc_name, comms[nr].name);
      queryflag = -1;
      return;
    }
  if ((argc = CheckArgNum(nr, args)) < 0)
    return;

  if (display)
    {
      if (AclCheckPermCmd(display->d_user, 0, &comms[nr]))
        {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: permission denied (user %s)",
       rc_name, comms[nr].name, (EffectiveAclUser ? EffectiveAclUser : display->d_user)->u_name);
   queryflag = -1;
   return;
 }
    }


  msgok = display && !*rc_name;
  switch(nr)
    {
    case 143:
      if (!*args)
        InputSelect();
      else if (args[0][0] == '-' && !args[0][1])
 {
   SetForeWindow((struct win *)0);
   Activate(0);
 }
      else if (args[0][0] == '.' && !args[0][1])
 {
   if (!fore)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "select . needs a window");
       queryflag = -1;
     }
   else
     {
       SetForeWindow(fore);
       Activate(0);
     }
 }
      else if (ParseWinNum(act, &n) == 0)
        SwitchWindow(n);
      else if (queryflag >= 0)
 queryflag = -1;
      break;

    case 41:
      if (ParseOnOff(act, &defautonuke) == 0 && msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Default autonuke turned %s", defautonuke ? "on" : "off");
      if (display && *rc_name)
 display->d_auto_nuke = defautonuke;
      break;
    case 12:
      if (ParseOnOff(act, &display->d_auto_nuke) == 0 && msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Autonuke turned %s", display->d_auto_nuke ? "on" : "off");
      break;

    case 58:
      if (ParseNum(act, &defobuflimit) == 0 && msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Default limit set to %d", defobuflimit);
      if (display && *rc_name)
 {
   display->d_obufmax = defobuflimit;
   display->d_obuflenmax = display->d_obuflen - display->d_obufmax;
 }
      break;
    case 118:
      if (*args == 0)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Limit is %d, current buffer size is %d", display->d_obufmax, display->d_obuflen);
      else if (ParseNum(act, &display->d_obufmax) == 0 && msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Limit set to %d", display->d_obufmax);
      display->d_obuflenmax = display->d_obuflen - display->d_obufmax;
      break;
    case 70:
      WriteFile(user, (char *)0, 0);
      break;
    case 82:
      {
 int mode = 1;
 char *file = ((void*)0);

 if (args[0])
   {
     if (!strcmp(*args, "-h"))
       {
  mode = 3;
  file = args[1];
       }
     else if (!strcmp(*args, "--") && args[1])
       file = args[1];
     else
       file = args[0];
   }

 if (args[0] && file == args[0] && args[1])
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: hardcopy: too many arguments", rc_name);
     break;
   }
 WriteFile(user, file, mode);
      }
      break;
    case 52:
      (void)ParseOnOff(act, &nwin_default.Lflag);
      break;
    case 99:
      n = fore->w_log ? 1 : 0;
      ParseSwitch(act, &n);
      LogToggle(n);
      break;

    case 160:
      Detach(1);
      break;

    case 115:
      if (MoreWindows())
 SwitchWindow(NextWindow());
      break;
    case 128:
      if (MoreWindows())
 SwitchWindow(PreviousWindow());
      break;
    case 94:
      {
 char *name;

 if (key >= 0)
   {

     Input(fore->w_pwin ? "Really kill this filter [y/n]" : "Really kill this window [y/n]", 1, 2, confirm_fn, ((void*)0), 94);



     break;
   }
 n = fore->w_number;

 if (fore->w_pwin)
   {
     FreePseudowin(fore);
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Filter removed.");
     break;
   }

 name = SaveStr(fore->w_title);
 KillWindow(fore);
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Window %d (%s) killed.", n, name);
 if (name)
   free(name);
 break;
      }
    case 131:
      if (key >= 0)
 {
   Input("Really quit and kill all your windows [y/n]", 1, 2, confirm_fn, ((void*)0), 131);
   break;
 }
      Finit(0);


    case 66:
      if (*args && !strcmp(*args, "-h"))
        Hangup();
      else
        Detach(0);
      break;

    case 126:
      if (key >= 0)
 {
   static char buf[2];

   buf[0] = key;
   Input(buf, 1, 2, pow_detach_fn, ((void*)0), 0);
 }
      else
        Detach(3);
      break;


    case 40:
# 1411 "process.c"
      if (*args == 0 || strcmp("off", *args))
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Sorry, screen was compiled without -DDEBUG option.");

      break;

    case 185:
      if (*args && !strcmp(*args, "sendcmd"))
 {
   if (args[1])
     {
       free(zmodem_sendcmd);
       zmodem_sendcmd = SaveStr(args[1]);
     }
   if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "zmodem sendcmd: %s", zmodem_sendcmd);
   break;
 }
      if (*args && !strcmp(*args, "recvcmd"))
 {
   if (args[1])
     {
       free(zmodem_recvcmd);
       zmodem_recvcmd = SaveStr(args[1]);
     }
   if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "zmodem recvcmd: %s", zmodem_recvcmd);
   break;
 }
      if (*args)
 {
   for (i = 0; i < 4; i++)
     if (!strcmp(zmodes[i], *args))
       break;
   if (i == 4 && !strcmp(*args, "on"))
     i = 1;
   if (i == 4)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "usage: zmodem off|auto|catch|pass");
       break;
     }
   zmodem_mode = i;
 }
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "zmodem mode is %s", zmodes[zmodem_mode]);
      break;

    case 168:
      {
        register unsigned int i;

        for (i = 0; i < sizeof(ktab)/sizeof(*ktab); i++)
   ClearAction(&ktab[i]);
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Unbound all keys." );
        break;
      }
    case 186:
      {
        if (!(s = *args))
          {
            ZombieKey_destroy = 0;
            break;
          }
 if (*argl == 0 || *argl > 2)
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s:zombie: one or two characters expected.", rc_name);
     break;
   }
 if (args[1])
   {
     if (!strcmp(args[1], "onerror"))
       {
  ZombieKey_onerror = 1;
       } else {
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "usage: zombie [keys [onerror]]");
      break;
       }
   } else
     ZombieKey_onerror = 0;
        ZombieKey_destroy = args[0][0];
        ZombieKey_resurrect = *argl == 2 ? args[0][1] : 0;
      }
      break;
    case 176:

      s = display->d_user->u_name;



        {
   struct display *olddisplay = display;
          display = 0;
          (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s", s, *args);
   display = olddisplay;
        }
      break;
    case 9:

      if (!user)
 break;

      s = SaveStr(user->u_name);

      EffectiveAclUser = user;



      n = strlen(args[0]);
      if (n) n--;





      switch (args[0][n])
        {
 case '*':
   {
     struct display *nd;
     struct acluser *u;

     if (!n)
       u = user;
     else
       {
  for (u = users; u; u = u->u_next)
    {
      do {} while (0);
      if (!strncmp(*args, u->u_name, n))
        break;
    }
  if (!u)
    {
      args[0][n] = '\0';
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Did not find any user matching '%s'", args[0]);
      break;
    }
       }
     do {} while (0);
     for (display = displays; display; display = nd)
       {
  nd = display->d_next;
  if (display->d_forecv == 0)
    continue;
  flayer = display->d_forecv->c_layer;
  fore = display->d_fore;
         if (display->d_user != u)
    continue;
  do {} while (0);
  DoCommand(args + 1, argl + 1);
  if (display)
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "command from %s: %s %s",
        s, args[1], args[2] ? args[2] : "");
  display = ((void*)0);
  flayer = 0;
  fore = ((void*)0);
       }
     break;
   }
 case '%':
   {
     struct display *nd;

     do {} while (0);
     for (display = displays; display; display = nd)
       {
         nd = display->d_next;
  if (display->d_forecv == 0)
    continue;
  fore = display->d_fore;
  flayer = display->d_forecv->c_layer;
         if (strncmp(args[0], display->d_usertty, n) &&
      (strncmp("/dev/", display->d_usertty, 5) ||
       strncmp(args[0], display->d_usertty + 5, n)) &&
      (strncmp("/dev/tty", display->d_usertty, 8) ||
       strncmp(args[0], display->d_usertty + 8, n)))
    continue;
  do {} while (0);
  DoCommand(args + 1, argl + 1);
  if (display)
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "command from %s: %s %s",
        s, args[1], args[2] ? args[2] : "");
  display = ((void*)0);
  fore = ((void*)0);
  flayer = 0;
       }
     break;
   }
 case '#':
   n--;

 default:
   {
     struct win *nw;
     int ch;

     n++;
     ch = args[0][n];
     args[0][n] = '\0';
     if (!*args[0] || (i = WindowByNumber(args[0])) < 0)
       {
         args[0][n] = ch;

  for (fore = windows; fore; fore = nw)
    {
      nw = fore->w_next;
      if (strncmp(args[0], fore->w_title, n))
        continue;
      do {} while (0);







      i = 0;

      if (fore->w_layer.l_cvlist)
        display = fore->w_layer.l_cvlist->c_display;
      flayer = fore->w_savelayer ? fore->w_savelayer : &fore->w_layer;
      DoCommand(args + 1, argl + 1);
      if (fore && fore->w_layer.l_cvlist)
        {
          display = fore->w_layer.l_cvlist->c_display;
          (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "command from %s: %s %s",
       s, args[1], args[2] ? args[2] : "");
        }
    }
  display = ((void*)0);
  fore = ((void*)0);
  if (i < 0)
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: at '%s': no such window.\n", rc_name, args[0]);
  break;
       }
     else if (i < maxwin && (fore = wtab[i]))
       {
         args[0][n] = ch;
         do {} while (0);
  if (fore->w_layer.l_cvlist)
    display = fore->w_layer.l_cvlist->c_display;
  flayer = fore->w_savelayer ? fore->w_savelayer : &fore->w_layer;
  DoCommand(args + 1, argl + 1);
  if (fore && fore->w_layer.l_cvlist)
    {
      display = fore->w_layer.l_cvlist->c_display;
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "command from %s: %s %s",
          s, args[1], args[2] ? args[2] : "");
    }
  display = ((void*)0);
  fore = ((void*)0);
       }
     else
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: at [identifier][%%|*|#] command [args]", rc_name);
     break;
   }
 }
      free(s);

      EffectiveAclUser = ((void*)0);

      break;


    case 133:

      i = fore ? fore->w_layer.l_encoding : display ? display->d_encoding : 0;
      if (args[0] && args[1] && !strcmp(args[0], "-e"))
 {
   i = FindEncoding(args[1]);
   if (i == -1)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: readreg: unknown encoding", rc_name);
       break;
     }
   args += 2;
 }







      if ((s = *args) == ((void*)0))
 {
   Input("Copy to register:", 1, 2, copy_reg_fn, ((void*)0), 0);
   break;
 }
      if (*argl != 1)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: copyreg: character, ^x, or (octal) \\032 expected.", rc_name);
   break;
 }
      ch = args[0][0];



      if (args[1])
        {
   if (args[2])
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: readreg: too many arguments", rc_name);
       break;
     }
   if ((s = ReadFile(args[1], &n)))
     {
       struct plop *pp = plop_tab + (int)(unsigned char)ch;

       if (pp->buf)
  free(pp->buf);
       pp->buf = s;
       pp->len = n;

       pp->enc = i;

     }
 }
      else





        copy_reg_fn(&ch, 0, ((void*)0));
      break;

    case 135:

      i = fore ? fore->w_layer.l_encoding : display ? display->d_encoding : 0;
      if (args[0] && args[1] && !strcmp(args[0], "-e"))
 {
   i = FindEncoding(args[1]);
   if (i == -1)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: register: unknown encoding", rc_name);
       break;
     }
   args += 2;
   argc -= 2;
 }

      if (argc != 2)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: register: illegal number of arguments.", rc_name);
   break;
 }
      if (*argl != 1)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: register: character, ^x, or (octal) \\032 expected.", rc_name);
   break;
 }
      ch = args[0][0];

      if (ch == '.')
 {
   if (user->u_plop.buf != ((void*)0))
     UserFreeCopyBuffer(user);
   if (args[1] && args[1][0])
     {
       user->u_plop.buf = SaveStrn(args[1], argl[1]);
       user->u_plop.len = argl[1];

       user->u_plop.enc = i;

     }
 }
      else

 {
   struct plop *plp = plop_tab + (int)(unsigned char)ch;

   if (plp->buf)
     free(plp->buf);
   plp->buf = SaveStrn(args[1], argl[1]);
   plp->len = argl[1];

   plp->enc = i;

 }
      break;
    case 130:
      if ((s = *args) == ((void*)0))
 {
   Input("Process register:", 1, 2, process_fn, ((void*)0), 0);
   break;
 }
      if (*argl != 1)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: process: character, ^x, or (octal) \\032 expected.", rc_name);
   break;
 }
      ch = args[0][0];
      process_fn(&ch, 0, ((void*)0));
      break;
    case 158:
      s = *args;
      if (!args[0])
 {
   Input("Stuff:", 100, 0, StuffFin, ((void*)0), 0);
   break;
 }
      n = *argl;
      if (args[1])
 {
   if (strcmp(s, "-k"))
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: stuff: invalid option %s", rc_name, s);
       break;
     }
   s = args[1];
   for (i = 106; i < 188; i++)
     if (strcmp(term[i].tcname, s) == 0)
       break;
   if (i == 188)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: stuff: unknown key '%s'", rc_name, s);
       break;
     }

   if (StuffKey(i - 106) == 0)
     break;

   s = display ? display->d_tcs[i].str : 0;
   if (s == 0)
     break;
   n = strlen(s);
 }
      while(n)
        (*flayer->l_layfn->lf_LayProcess)(&s, &n);
      break;
    case 134:
      Activate(-1);
      break;
    case 179:
   if (args[0]) {
    ShowWindowsX(args[0]);
    break;
   }
      ShowWindows(-1);
      break;
    case 175:
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "screen %s", version);
      break;
    case 165:
      if (*args)
 {
   timestring = SaveStr(*args);
   break;
 }
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", MakeWinMsg(timestring, fore, '%'));
      break;
    case 92:
      ShowInfo();
      break;
    case 68:
      ShowDInfo();
      break;
    case 35:
 {
   struct action *ktabp = ktab;
   if (argc == 2 && !strcmp(*args, "-c"))
     {
       if ((ktabp = FindKtab(args[1], 0)) == 0)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Unknown command class '%s'", args[1]);
    break;
  }
     }
   if (display->d_ESCseen != ktab || ktabp != ktab)
     {
       if (display->d_ESCseen != ktabp)
         {
           display->d_ESCseen = ktabp;
           WindowChanged(fore, 'E');
         }
       break;
     }
   if (display->d_ESCseen)
     {
       display->d_ESCseen = 0;
       WindowChanged(fore, 'E');
     }
 }

    case 120:
      if (MoreWindows())
 SwitchWindow(display && display->d_other ? display->d_other->w_number : NextWindow());
      break;
    case 108:
      if (user->u_Esc == -1)
        break;
      ch = user->u_Esc;
      s = &ch;
      n = 1;
      (*flayer->l_layfn->lf_LayProcess)(&s, &n);
      break;
    case 184:
      ch = (('q')&037);
      s = &ch;
      n = 1;
      (*flayer->l_layfn->lf_LayProcess)(&s, &n);
      break;
    case 183:
      ch = (('s')&037);
      s = &ch;
      n = 1;
      (*flayer->l_layfn->lf_LayProcess)(&s, &n);
      break;
    case 43:
    case 22:
 {
   static char *types[] = { "TIOCSBRK", "TCSBRK", "tcsendbreak", ((void*)0) };
   extern int breaktype;

   if (*args)
     {
       if (ParseNum(act, &n))
  for (n = 0; n < (int)(sizeof(types)/sizeof(*types)); n++)
    {
      for (i = 0; i < 4; i++)
        {
   ch = args[0][i];
   if (ch >= 'a' && ch <= 'z')
     ch -= 'a' - 'A';
   if (ch != types[n][i] && (ch + ('a' - 'A')) != types[n][i])
     break;
        }
      if (i == 4)
        break;
    }
       if (n < 0 || n >= (int)(sizeof(types)/sizeof(*types)))
         (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s invalid, chose one of %s, %s or %s", *args, types[0], types[1], types[2]);
       else
         {
    breaktype = n;
           (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "breaktype set to (%d) %s", n, types[n]);
  }
     }
   else
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "breaktype is (%d) %s", breaktype, types[breaktype]);
 }
      break;
    case 125:
    case 21:
      n = 0;
      if (*args && ParseNum(act, &n))
 break;
      SendBreak(fore, n, nr == 125);
      break;

    case 98:
      Detach(5);
      break;

    case 177:
    case 86:
      {
 int w, h;
 int what = 0;

        i = 1;
 if (*args && !strcmp(*args, "-w"))
   what = 1;
 else if (*args && !strcmp(*args, "-d"))
   what = 2;
 if (what)
   args++;
 if (what == 0 && flayer && !display)
   what = 1;
 if (what == 1)
   {
     if (!flayer)
       {
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: window required", rc_name, comms[nr].name);
  break;
       }
     w = flayer->l_width;
     h = flayer->l_height;
   }
 else
   {
     if (!display)
       {
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: display required", rc_name, comms[nr].name);
  break;
       }
     w = display->d_width;
     h = display->d_height;
   }
        if (*args && args[0][0] == '-')
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: unknown option %s", rc_name, comms[nr].name, *args);
     break;
   }
 if (nr == 86)
   {
     if (!*args)
       {


  if (h == 42)
    h = 24;
  else if (h == 24)
    h = 42;
  else if (h > (42 + 24) / 2)
    h = 42;
  else
    h = 24;
       }
     else
       {
  h = atoi(*args);
  if (args[1])
    w = atoi(args[1]);
       }
   }
 else
   {
     if (!*args)
       {
  if (w == Z0width)
    w = Z1width;
  else if (w == Z1width)
    w = Z0width;
  else if (w > (Z0width + Z1width) / 2)
    w = Z0width;
  else
    w = Z1width;
       }
     else
       {
  w = atoi(*args);
  if (args[1])
    h = atoi(args[1]);
       }
   }
        if (*args && args[1] && args[2])
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: too many arguments", rc_name, comms[nr].name);
     break;
   }
 if (w <= 0)
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Illegal width");
     break;
   }
 if (h <= 0)
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Illegal height");
     break;
   }
 if (what == 1)
   {
     if (flayer->l_width == w && flayer->l_height == h)
       break;
     ResizeLayer(flayer, w, h, (struct display *)0);
     break;
   }
 if (display->d_width == w && display->d_height == h)
   break;
 if (what == 2)
   {
     ChangeScreenSize(w, h, 1);
   }
 else
   {
     if (ResizeDisplay(w, h) == 0)
       {
  Activate(display->d_fore ? display->d_fore->w_norefresh : 0);

  ResizeLayer(display->d_forecv->c_layer, display->d_forecv->c_xe - display->d_forecv->c_xs + 1, display->d_forecv->c_ye - display->d_forecv->c_ys + 1, 0);
  break;
       }
     if (h == display->d_height)
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Your termcap does not specify how to change the terminal's width to %d.", w);
     else if (w == display->d_width)
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Your termcap does not specify how to change the terminal's height to %d.", h);
     else
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Your termcap does not specify how to change the terminal's resolution to %dx%d.", w, h);
   }
      }
      break;
    case 166:
      if (queryflag >= 0)
 {
   if (fore)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", fore->w_title);
   else
     queryflag = -1;
   break;
 }
      if (*args == 0)
 InputAKA();
      else
 ChangeAKA(fore, *args, strlen(*args));
      break;
    case 34:
      Input(":", 768, 4, Colonfin, ((void*)0), 0);
      if (*args && **args)
 {
   s = *args;
   n = strlen(s);
   (*flayer->l_layfn->lf_LayProcess)(&s, &n);
 }
      break;
    case 95:
      if (display->d_status_lastmsg)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", display->d_status_lastmsg);
      break;
    case 141:
      DoScreen("key", args);
      break;
    case 180:
      if (ParseSwitch(act, &fore->w_wrap) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%cwrap", fore->w_wrap ? '+' : '-');
      break;
    case 77:
      if (*args)
 {
   if (args[0][0] == 'a')
     {
       fore->w_flow = (fore->w_flow & (1<<1)) ? (1<<2) |(1<<1)|(1<<0) : (1<<2);
     }
   else
     {
       if (ParseOnOff(act, &n))
  break;
       fore->w_flow = (fore->w_flow & (1<<1)) | n;
     }
 }
      else
 {
   if (fore->w_flow & (1<<2))
     fore->w_flow = (fore->w_flow & (1<<1)) | (1<<0);
   else if (fore->w_flow & (1<<0))
     fore->w_flow &= ~(1<<0);
   else
     fore->w_flow = fore->w_flow ? (1<<2)|(1<<1)|(1<<0) : (1<<2);
 }
      SetFlow(fore->w_flow & (1<<0));
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%cflow%s", (fore->w_flow & (1<<0)) ? '+' : '-',
     (fore->w_flow & (1<<2)) ? "(auto)" : "");
      break;

    case 65:
      if (args[0][0] == 'a')
 nwin_default.wlock = 1;
      else
 {
   if (ParseOnOff(act, &n))
     break;
   nwin_default.wlock = n ? 2 : 0;
 }
      break;
    case 182:
      if (*args)
 {
   if (args[0][0] == 'a')
     {
       fore->w_wlock = 1;
     }
   else
     {
       if (ParseOnOff(act, &n))
  break;
       fore->w_wlock = n ? 2 : 0;
     }




   if (!AclCheckPermWin(display->d_user, 1, fore))
     fore->w_wlockuser = display->d_user;
 }
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "writelock %s", (fore->w_wlock == 1) ? "auto" :
   ((fore->w_wlock == 0) ? "off" : "on"));
      break;

    case 32:
      ResetAnsiState(fore);
      WriteString(fore, "\033[H\033[J", 6);
      break;
    case 139:
      ResetAnsiState(fore);

      if (fore->w_zdisplay)
        zmodem_abort(fore, fore->w_zdisplay);

      WriteString(fore, "\033c", 2);
      break;
    case 109:
      n = fore->w_monitor != 0;

      if (display)
 n = n && (((fore->w_mon_notify)[(display->d_user->u_id) >> 3]) & (0x80 >> ((display->d_user->u_id) & 7)));

      if (ParseSwitch(act, &n))
 break;
      if (n)
 {

   if (display)
     ((fore->w_mon_notify)[(display->d_user->u_id) >> 3]) |= (0x80 >> ((display->d_user->u_id) & 7));
   else
     for (i = 0; i < maxusercount; i++)
       ((fore->w_mon_notify)[(i) >> 3]) |= (0x80 >> ((i) & 7));

   if (fore->w_monitor == 0)
     fore->w_monitor = 1;
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Window %d (%s) is now being monitored for all activity.", fore->w_number, fore->w_title);
 }
      else
 {

   if (display)
     ((fore->w_mon_notify)[(display->d_user->u_id) >> 3])
       &= ~(0x80 >> ((display->d_user->u_id) & 7));
   else
     for (i = 0; i < maxusercount; i++)
       ((fore->w_mon_notify)[(i) >> 3]) &= ~(0x80 >> ((i) & 7));
   for (i = maxusercount - 1; i >= 0; i--)
     if (((fore->w_mon_notify)[(i) >> 3]))
       break;
   if (i < 0)

     fore->w_monitor = 0;
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Window %d (%s) is no longer being monitored for activity.", fore->w_number, fore->w_title);
 }
      break;

    case 69:
      display_displays();
      break;

    case 178:
      if (!*args)
        display_windows(0, 0, (struct win *)0);
      else if (!strcmp(*args, "string"))
 {
   if (args[1])
     {
       if (wliststr)
  free(wliststr);
       wliststr = SaveStr(args[1]);
     }
   if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "windowlist string is '%s'", wliststr);
 }
      else if (!strcmp(*args, "title"))
 {
   if (args[1])
     {
       if (wlisttit)
  free(wlisttit);
       wlisttit = SaveStr(args[1]);
     }
   if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "windowlist title is '%s'", wlisttit);
 }
      else
 {
   int flag = 0;
   int blank = 0;
   for (i = 0; i < argc; i++)
     if (!args[i])
       continue;
     else if (!strcmp(args[i], "-m"))
       flag |= 1;
     else if (!strcmp(args[i], "-b"))
       blank = 1;
     else if (!strcmp(args[i], "-g"))
       flag |= 2;
     else
       {
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "usage: windowlist [-b] [-g] [-m] [string [string] | title [title]]");
  break;
       }
   if (i == argc)
     display_windows(blank, flag, (struct win *)0);
 }
      break;
    case 87:
      if (argc == 2 && !strcmp(*args, "-c"))
 {
   struct action *ktabp;
   if ((ktabp = FindKtab(args[1], 0)) == 0)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Unknown command class '%s'", args[1]);
       break;
     }
          display_help(args[1], ktabp);
 }
      else
        display_help((char *)0, ktab);
      break;
    case 97:
      display_copyright();
      break;

    case 38:
      if (flayer->l_layfn != &WinLf)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Must be on a window layer");
   break;
 }
      MarkRoutine();
      WindowChanged(fore, 'P');
      break;
    case 88:
      {
        static char *pasteargs[] = {".", 0};
 static int pasteargl[] = {1};

 if (flayer->l_layfn != &WinLf)
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Must be on a window layer");
     break;
   }
 if (GetHistory() == 0)
   break;
 if (user->u_plop.buf == ((void*)0))
   break;
 args = pasteargs;
 argl = pasteargl;
      }

    case 123:
      {
        char *ss, *dbuf, dch;
        int l = 0;

 int enc = -1;





 if ((s = *args) == ((void*)0))
   {
     Input("Paste from register:", 1, 2, ins_reg_fn, ((void*)0), 0);
     break;
   }
 if (args[1] == 0 && !fore)
   break;




 if (args[1] && argl[1] != 1)
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: paste destination: character, ^x, or (octal) \\032 expected.",
  rc_name);
     break;
   }

        else if (fore)
   enc = fore->w_layer.l_encoding;





        for (ss = s = *args; (ch = *ss); ss++)
          {
     if (ch == '.')
       {

  if (enc == -1)
    enc = user->u_plop.enc;
  if (enc != user->u_plop.enc)
    l += RecodeBuf((unsigned char *)user->u_plop.buf, user->u_plop.len, user->u_plop.enc, enc, (unsigned char *)0);
  else

    l += user->u_plop.len;
       }
     else
       {

  if (enc == -1)
    enc = plop_tab[(int)(unsigned char)ch].enc;
  if (enc != plop_tab[(int)(unsigned char)ch].enc)
    l += RecodeBuf((unsigned char *)plop_tab[(int)(unsigned char)ch].buf, plop_tab[(int)(unsigned char)ch].len, plop_tab[(int)(unsigned char)ch].enc, enc, (unsigned char *)0);
  else

                  l += plop_tab[(int)(unsigned char)ch].len;
       }
          }
        if (l == 0)
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "empty buffer");
     break;
   }





        if (s[1] == 0 && args[1] == 0)

   if (enc == (*s == '.' ? user->u_plop.enc : plop_tab[(int)(unsigned char)*s].enc))

            {
       MakePaster(&fore->w_paster, *s == '.' ? user->u_plop.buf : plop_tab[(int)(unsigned char)*s].buf, l, 0);
       break;
            }



        if ((dbuf = (char *)malloc(l)) == 0)
          {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", strnomem);
     break;
          }
        l = 0;




        for (ss = s; (ch = *ss); ss++)
          {
     struct plop *pp = (ch == '.' ? &user->u_plop : &plop_tab[(int)(unsigned char)ch]);

     if (pp->enc != enc)
       {
  l += RecodeBuf((unsigned char *)pp->buf, pp->len, pp->enc, enc, (unsigned char *)dbuf + l);
  continue;
       }

     bcopy(pp->buf, dbuf + l, pp->len);
     l += pp->len;
          }



 if (args[1] == 0)
   {
     MakePaster(&fore->w_paster, dbuf, l, 1);
   }
 else
   {




     dch = args[1][0];
     if (dch == '.')
       {
         if (user->u_plop.buf != ((void*)0))
           UserFreeCopyBuffer(user);
  user->u_plop.buf = dbuf;
  user->u_plop.len = l;

  user->u_plop.enc = enc;

       }
     else
       {
  struct plop *pp = plop_tab + (int)(unsigned char)dch;
  if (pp->buf)
    free(pp->buf);
  pp->buf = dbuf;
  pp->len = l;

  pp->enc = enc;

       }
   }
        break;
      }
    case 181:
      if (!user->u_plop.buf)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "empty buffer");
   break;
 }

 {
   struct plop oldplop;

   oldplop = user->u_plop;
   if (args[0] && args[1] && !strcmp(args[0], "-e"))
     {
       int enc, l;
       char *newbuf;

       enc = FindEncoding(args[1]);
       if (enc == -1)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: writebuf: unknown encoding", rc_name);
    break;
  }
       if (enc != oldplop.enc)
  {
    l = RecodeBuf((unsigned char *)oldplop.buf, oldplop.len, oldplop.enc, enc, (unsigned char *)0);
    newbuf = malloc(l + 1);
    if (!newbuf)
      {
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", strnomem);
        break;
      }
    user->u_plop.len = RecodeBuf((unsigned char *)oldplop.buf, oldplop.len, oldplop.enc, enc, (unsigned char *)newbuf);
    user->u_plop.buf = newbuf;
    user->u_plop.enc = enc;
  }
       args += 2;
     }

   if (args[0] && args[1])
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: writebuf: too many arguments", rc_name);
   else
     WriteFile(user, args[0], 2);

   if (user->u_plop.buf != oldplop.buf)
     free(user->u_plop.buf);
   user->u_plop = oldplop;
 }

      break;
    case 132:

      i = fore ? fore->w_layer.l_encoding : display ? display->d_encoding : 0;
      if (args[0] && args[1] && !strcmp(args[0], "-e"))
 {
   i = FindEncoding(args[1]);
   if (i == -1)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: readbuf: unknown encoding", rc_name);
       break;
     }
   args += 2;
 }

      if (args[0] && args[1])
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: readbuf: too many arguments", rc_name);
   break;
 }
      if ((s = ReadFile(args[0] ? args[0] : BufferFile, &n)))
 {
   if (user->u_plop.buf)
     UserFreeCopyBuffer(user);
   user->u_plop.len = n;
   user->u_plop.buf = s;

   user->u_plop.enc = i;

 }
      break;
    case 137:
      KillBuffers();
      break;
    case 91:
      (void)ParseSwitch(act, &search_ic);
      if (msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %signore case in searches", search_ic ? "" : "not ");
      break;

    case 73:
      if (*argl == 0)
 SetEscape(user, -1, -1);
      else if (*argl == 2)
 SetEscape(user, (int)(unsigned char)args[0][0], (int)(unsigned char)args[0][1]);
      else
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: two characters required after escape.", rc_name);
   break;
 }



      if (display && user != users)
 break;

    case 47:
      if (*argl == 0)
 SetEscape(((void*)0), -1, -1);
      else if (*argl == 2)
 SetEscape(((void*)0), (int)(unsigned char)args[0][0], (int)(unsigned char)args[0][1]);
      else
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: two characters required after defescape.", rc_name);
   break;
 }

      CheckEscape();

      break;
    case 30:
      s = *args ? *args : home;
      if (chdir(s) == -1)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)((*__errno_location ()), "%s", s);
      break;
    case 147:
    case 60:
      if (ParseSaveStr(act, &ShellProg) == 0)
        ShellArgs[0] = ShellProg;
      break;
    case 84:
      if (*args)
        (void)ParseSaveStr(act, &hardcopydir);
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "hardcopydir is %s\n", hardcopydir && *hardcopydir ? hardcopydir : "<cwd>");
      break;
    case 100:
      if (*args)
 {
   char buf[1024];
   if (args[1] && !(strcmp(*args, "flush")))
     {
       log_flush = atoi(args[1]);
       if (msgok)
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "log flush timeout set to %ds\n", log_flush);
       break;
     }
   if (ParseSaveStr(act, &screenlogfile))
     break;
   if (fore && fore->w_log)
     if (DoStartLog(fore, buf, sizeof(buf)))
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Error opening logfile \"%s\"", buf);
   if (!msgok)
     break;
 }
      (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "logfile is '%s'", screenlogfile);
      break;
    case 102:
      if (!*args || !strcmp(*args, "on") || !strcmp(*args, "off"))
        {
   if (ParseSwitch(act, &logtstamp_on) == 0 && msgok)
            (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "timestamps turned %s", logtstamp_on ? "on" : "off");
        }
      else if (!strcmp(*args, "string"))
 {
   if (args[1])
     {
       if (logtstamp_string)
  free(logtstamp_string);
       logtstamp_string = SaveStr(args[1]);
     }
   if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "logfile timestamp is '%s'", logtstamp_string);
 }
      else if (!strcmp(*args, "after"))
 {
   if (args[1])
     {
       logtstamp_after = atoi(args[1]);
       if (!msgok)
  break;
     }
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "timestamp printed after %ds\n", logtstamp_after);
 }
      else
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "usage: logtstamp [after [n]|string [str]|on|off]");
      break;
    case 148:
      (void)ParseSaveStr(act, &nwin_default.aka);
      break;
    case 162:
    case 163:
    case 164:
      if (!rc_name || !*rc_name)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Sorry, too late now. Place that in your .screenrc file.");
      break;
    case 151:
      break;
    case 161:
      s = ((void*)0);
      if (ParseSaveStr(act, &s))
 break;
      if (strlen(s) > 32)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: term: argument too long ( < %d)", rc_name, 32);
   free(s);
   break;
 }
      strncpy(screenterm, s, 32);
      screenterm[32] = '\0';
      free(s);
      do {} while (0);
      MakeTermcap((display == 0));
      do {} while (0);
      break;
    case 71:
      if (!msgok && (!rc_name || strcmp(rc_name, "-X")))
 break;




      if (argc > 1 && !strcmp(*args, "-n"))
 {
   args++;
   argc--;
 }
      s = *args;
      if (argc > 1 && !strcmp(*args, "-p"))
 {
   args++;
   argc--;
   s = *args;
   if (s)
     s = MakeWinMsg(s, fore, '%');
 }
      if (s)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", s);
      else
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: 'echo [-n] [-p] \"string\"' expected.", rc_name);
   queryflag = -1;
 }
      break;
    case 15:
    case 16:
      if (*args == 0)
 {
   char buf[256];
   AddXChars(buf, sizeof(buf), BellString);
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "bell_msg is '%s'", buf);
   break;
 }
      (void)ParseSaveStr(act, &BellString);
      break;

    case 23:
      if (*args == 0)
 BufferFile = SaveStr("/tmp/screen-exchange");
      else if (ParseSaveStr(act, &BufferFile))
        break;
      if (msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Bufferfile is now '%s'", BufferFile);
      break;

    case 5:
      (void)ParseSaveStr(act, &ActivityString);
      break;

    case 127:
      if (*args == 0)
        {
   char buf[256];
          AddXChars(buf, sizeof(buf), PowDetachString);
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "pow_detach_msg is '%s'", buf);
   break;
 }
      (void)ParseSaveStr(act, &PowDetachString);
      break;


    case 101:
      n = fore->w_slot != (slot_t)-1;
      if (*args && !strcmp(*args, "always"))
 {
   fore->w_lflag = 3;
   if (!displays && n)
     SlotToggle(n);
   break;
 }
      if (*args && !strcmp(*args, "attached"))
 {
   fore->w_lflag = 1;
   if (!displays && n)
     SlotToggle(0);
   break;
 }
      if (ParseSwitch(act, &n) == 0)
        SlotToggle(n);
      break;
    case 53:
      if (!strcmp(*args, "always"))
 nwin_default.lflag |= 2;
      else if (!strcmp(*args, "attached"))
 nwin_default.lflag &= ~2;
      else
        (void)ParseOnOff(act, &nwin_default.lflag);
      break;

    case 48:
      if (args[0] && args[1] && args[1][0] == 'i')
 {
   iflag = 1;
   for (display = displays; display; display = display->d_next)
     {
       if (!display->d_flow)
  continue;

       display->d_NewMode.tio.c_cc[0] = display->d_OldMode.tio.c_cc[0];
       display->d_NewMode.tio.c_lflag |= 0000001;



       SetTTY(display->d_userfd, &display->d_NewMode);
     }
 }
      if (args[0] && args[0][0] == 'a')
 nwin_default.flowflag = (1<<2);
      else
 (void)ParseOnOff(act, &nwin_default.flowflag);
      break;
    case 64:
      (void)ParseOnOff(act, &nwin_default.wrap);
      break;
    case 44:
      (void)ParseOnOff(act, &nwin_default.c1);
      break;

    case 42:
      (void)ParseOnOff(act, &nwin_default.bce);
      break;

    case 49:
      (void)ParseOnOff(act, &nwin_default.gr);
      break;
    case 55:
      if (ParseOnOff(act, &n) == 0)
        nwin_default.monitor = (n == 0) ? 0 : 1;
      break;
    case 56:
      if (ParseOnOff(act, &n) == 0)
 defmousetrack = (n == 0) ? 0 : 1000;
      break;
    case 110:
      if (!args[0])
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Mouse tracking for this display is turned %s", display->d_mousetrack ? "on" : "off");
 }
      else if (ParseOnOff(act, &n) == 0)
 {
   display->d_mousetrack = n == 0 ? 0 : 1000;
   if (display->d_fore)
     MouseMode(display->d_fore->w_mouse);
 }
      break;
    case 61:
      if (ParseOnOff(act, &n) == 0)
        nwin_default.silence = (n == 0) ? 0 : 1;
      break;
    case 174:
      if (!*args)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "W%s echo command when creating windows.",
   VerboseCreate ? "ill" : "on't");
      else if (ParseOnOff(act, &n) == 0)
        VerboseCreate = n;
      break;
    case 85:
      if (display)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", "");
          RemoveStatus();
 }
      if (args[0] && strcmp(args[0], "on") && strcmp(args[0], "off"))
 {
          struct display *olddisplay = display;
   int old_use, new_use = -1;

   s = args[0];
   if (!strncmp(s, "always", 6))
     s += 6;
   if (!strcmp(s, "firstline"))
     new_use = 4;
   else if (!strcmp(s, "lastline"))
     new_use = 1;
   else if (!strcmp(s, "ignore"))
     new_use = 0;
   else if (!strcmp(s, "message"))
     new_use = 2;
   else if (!strcmp(args[0], "string"))
     {
       if (!args[1])
  {
    char buf[256];
    AddXChars(buf, sizeof(buf), hstatusstring);
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "hardstatus string is '%s'", buf);
    break;
  }
     }
   else
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: usage: hardstatus [always]lastline|ignore|message|string [string]", rc_name);
       break;
     }
   if (new_use != -1)
     {
       hardstatusemu = new_use | (s == args[0] ? 0 : (1<<3));
       for (display = displays; display; display = display->d_next)
  {
    RemoveStatus();
    new_use = hardstatusemu & ~(1<<3);
    if ((display->d_tcs[75].flg) && s == args[0])
      new_use = 3;
    ShowHStatus((char *)0);
    old_use = display->d_has_hstatus;
    display->d_has_hstatus = new_use;
    if ((new_use == 1 && old_use != 1) || (new_use != 1 && old_use == 1))
      ChangeScreenSize(display->d_width, display->d_height, 1);
    if ((new_use == 4 && old_use != 4) || (new_use != 4 && old_use == 4))
      ChangeScreenSize(display->d_width, display->d_height, 1);
    RefreshHStatus();
  }
     }
   if (args[1])
     {
       if (hstatusstring)
  free(hstatusstring);
       hstatusstring = SaveStr(args[1]);
       for (display = displays; display; display = display->d_next)
         RefreshHStatus();
     }
   display = olddisplay;
   break;
 }
      (void)ParseSwitch(act, &use_hardstatus);
      if (msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "messages displayed on %s", use_hardstatus ? "hardstatus line" : "window");
      break;
    case 27:
      if (strcmp(args[0], "always") == 0 || strcmp(args[0], "splitonly") == 0)
 {
   struct display *olddisplay = display;

   captionalways = args[0][0] == 'a';
   for (display = displays; display; display = display->d_next)
     ChangeScreenSize(display->d_width, display->d_height, 1);
   display = olddisplay;
 }
      else if (strcmp(args[0], "string") == 0)
 {
   if (!args[1])
     {
       char buf[256];
       AddXChars(buf, sizeof(buf), captionstring);
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "caption string is '%s'", buf);
       break;
     }
 }
      else
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: usage: caption always|splitonly|string <string>", rc_name);
   break;
 }
      if (!args[1])
 break;
      if (captionstring)
 free(captionstring);
      captionstring = SaveStr(args[1]);
      RedisplayDisplays(0);
      break;
    case 37:
      n = (console_window != 0);
      if (ParseSwitch(act, &n))
        break;
      if (TtyGrabConsole(fore->w_ptyfd, n, rc_name))
 break;
      if (n == 0)
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: releasing console %s", rc_name, HostName);
      else if (console_window)
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: stealing console %s from window %d (%s)", rc_name,
       HostName, console_window->w_number, console_window->w_title);
      else
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: grabbing console %s", rc_name, HostName);
      console_window = n ? fore : 0;
      break;
    case 7:
      if (ParseOnOff(act, &all_norefresh))
 break;
      if (!all_norefresh && fore)
 Activate(-1);
      if (msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, all_norefresh ? "No refresh on window change!\n" :
          "Window specific refresh\n");
      break;
    case 121:
      (void)ParseSwitch(act, &n);
      fore->w_norefresh = n;
      break;
    case 171:
      if (ParseSwitch(act, &visual_bell) || !msgok)
        break;
      if (visual_bell == 0)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "switched to audible bell.");
      else
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "switched to visual bell.");
      break;
    case 173:
      if (ParseNum1000(act, &VBellWait) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "vbellwait set to %.10g seconds", VBellWait/1000.);
      break;
    case 112:
      if (ParseNum1000(act, &MsgWait) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "msgwait set to %.10g seconds", MsgWait/1000.);
      break;
    case 111:
      if (ParseNum1000(act, &MsgMinWait) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "msgminwait set to %.10g seconds", MsgMinWait/1000.);
      break;
    case 150:
      if (ParseNum(act, &SilenceWait))
 break;
      if (SilenceWait < 1)
 SilenceWait = 1;
      for (p = windows; p; p = p->w_next)
 p->w_silencewait = SilenceWait;
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "silencewait set to %d seconds", SilenceWait);
      break;
    case 25:
      if (fore->w_number < NextWindow())
        WindowChangeNumber(fore->w_number, NextWindow());
      break;
    case 24:
      if (fore->w_number > PreviousWindow())
        WindowChangeNumber(fore->w_number, PreviousWindow());
      break;
    case 33:
      CollapseWindowlist();
      break;
    case 117:
      if (*args == 0)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, queryflag >= 0 ? "%d (%s)" : "This is window %d (%s).", fore->w_number, fore->w_title);
      else
        {
   int old = fore->w_number;
   int rel = 0, parse;
   if (args[0][0] == '+')
     rel = 1;
   else if (args[0][0] == '-')
     rel = -1;
   if (rel)
     ++act->args[0];
   parse = ParseNum(act, &n);
   if (rel)
     --act->args[0];
   if (parse)
     break;
   if (rel > 0)
     n += old;
   else if (rel < 0)
     n = old - n;
   if (!WindowChangeNumber(old, n))
     {

       queryflag = -1;
       return;
     }
 }
      break;

  case 187:
   if (argc != 1) {
    Msg(0, "Setting zombie polling needs a timeout arg\n");
    break;
   }

   nwin_default.poll_zombie_timeout = atoi(args[0]);
   if (fore)
    fore->w_poll_zombie_timeout = nwin_default.poll_zombie_timeout;
   do {} while (0);
   break;

  case 154:
   if (fore) {




    Msg(0, "Sorting inside a window is not allowed. Push CTRL-a \" "
     "and try again\n");
    break;
   }




   for (i = 0; i < maxwin ; i++) {
    if (wtab[i] == ((void*)0))
     continue;
    n = i;

    for (nr = i + 1; nr < maxwin; nr++) {
     if (wtab[nr] == ((void*)0))
      continue;
     do {} while (0);
     if (strcmp(wtab[nr]->w_title,wtab[n]->w_title) < 0)
      n = nr;
    }

    if (n != i) {
     do {} while (0);
     p = wtab[n];
     wtab[n] = wtab[i];
     wtab[i] = p;
     wtab[n]->w_number = n;
     wtab[i]->w_number = i;


     AclWinSwap(i, n);

    }
   }
   WindowChanged((struct win *)0, 0);
   break;

    case 149:
      n = fore->w_silence != 0;
      i = fore->w_silencewait;
      if (args[0] && (args[0][0] == '-' || (args[0][0] >= '0' && args[0][0] <= '9')))
        {
   if (ParseNum(act, &i))
     break;
   n = i > 0;
 }
      else if (ParseSwitch(act, &n))
        break;
      if (n)
        {

   if (display)
     ((fore->w_lio_notify)[(display->d_user->u_id) >> 3]) |= (0x80 >> ((display->d_user->u_id) & 7));
   else
     for (n = 0; n < maxusercount; n++)
       ((fore->w_lio_notify)[(n) >> 3]) |= (0x80 >> ((n) & 7));

   fore->w_silencewait = i;
   fore->w_silence = 1;
   SetTimeout(&fore->w_silenceev, fore->w_silencewait * 1000);
   evenq(&fore->w_silenceev);

   if (!msgok)
     break;
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "The window is now being monitored for %d sec. silence.", fore->w_silencewait);
 }
      else
        {

   if (display)
     ((fore->w_lio_notify)[(display->d_user->u_id) >> 3])
       &= ~(0x80 >> ((display->d_user->u_id) & 7));
   else
     for (n = 0; n < maxusercount; n++)
       ((fore->w_lio_notify)[(n) >> 3]) &= ~(0x80 >> ((n) & 7));
   for (i = maxusercount - 1; i >= 0; i--)
     if (((fore->w_lio_notify)[(i) >> 3]))
       break;
   if (i < 0)

     {
       fore->w_silence = 0;
       evdeq(&fore->w_silenceev);
     }
   if (!msgok)
     break;
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "The window is no longer being monitored for silence.");
 }
      break;

    case 59:
      (void)ParseNum(act, &nwin_default.histheight);
      break;
    case 142:
      if (flayer->l_layfn == &MarkLf)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Cannot resize scrollback buffer in copy/scrollback mode.");
   break;
 }
      (void)ParseNum(act, &n);
      ChangeWindowSize(fore, fore->w_layer.l_width, fore->w_layer.l_height, n);
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "scrollback set to %d", fore->w_histheight);
      break;

    case 144:
      if (*args == 0)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "This session is named '%s'\n", SockName);
      else
 {
   char buf[4096];

   s = 0;
   if (ParseSaveStr(act, &s))
     break;
   if (!*s || strlen(s) + (SockName - SockPath) > 4096 - 13 || index(s, '/'))
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bad session name '%s'\n", rc_name, s);
       free(s);
       break;
     }
   strncpy(buf, SockPath, SockName - SockPath);
   sprintf(buf + (SockName - SockPath), "%d.%s", (int)getpid(), s);
   free(s);
   if ((access(buf, 0) == 0) || ((*__errno_location ()) != 2))
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: inappropriate path: '%s'.", rc_name, buf);
       break;
     }
   if (rename(SockPath, buf))
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)((*__errno_location ()), "%s: failed to rename(%s, %s)", rc_name, SockPath, buf);
       break;
     }
   do {} while (0);
   strcpy(SockPath, buf);
   MakeNewEnv();
   WindowChanged((struct win *)0, 'S');
 }
      break;
    case 145:
      if (!args[0] || !args[1])
        {
   do {} while (0);
          InputSetenv(args[0]);
 }
      else
        {
          xsetenv(args[0], args[1]);
          MakeNewEnv();
 }
      break;
    case 169:
      unsetenv(*args);
      MakeNewEnv();
      break;

    case 62:
      (void)ParseNum(act, &nwin_default.slow);
      break;
    case 152:
      if (*args == 0)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, fore->w_slowpaste ?
               "Slowpaste in window %d is %d milliseconds." :
               "Slowpaste in window %d is unset.",
     fore->w_number, fore->w_slowpaste);
      else if (ParseNum(act, &fore->w_slowpaste) == 0 && msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, fore->w_slowpaste ?
               "Slowpaste in window %d set to %d milliseconds." :
               "Slowpaste in window %d now unset.",
     fore->w_number, fore->w_slowpaste);
      break;
    case 106:
      if (CompileKeys(*args, *argl, mark_key_tab))
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: markkeys: syntax error.", rc_name);
   break;
 }
      do {} while (0);
      break;

    case 124:
      if (ParseSwitch(act, &pastefont) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %spaste font settings", pastefont ? "" : "not ");
      break;

    case 39:
      (void)ParseSwitch(act, &join_with_cr);
      break;
    case 36:
      if (ParseSwitch(act, &compacthist) == 0 && msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%scompacting history lines", compacthist ? "" : "not ");
      break;


    case 114:
      (void)ParseOnOff(act, &nethackflag);
      break;





    case 83:
      (void)ParseOnOff(act, &hardcopy_append);
      break;
    case 172:
      if (*args == 0)
        {
   char buf[256];
          AddXChars(buf, sizeof(buf), VisualBellString);
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "vbell_msg is '%s'", buf);
   break;
 }
      (void)ParseSaveStr(act, &VisualBellString);
      do {} while (0);
      break;
    case 54:
      if (ParseBase(act, *args, &n, 8, "octal"))
        break;
      if (n < 0 || n > 0777)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: mode: Invalid tty mode %o", rc_name, n);
          break;
 }
      TtyMode = n;
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Ttymode set to %03o", TtyMode);
      break;
    case 11:
      (void)ParseOnOff(act, &auto_detach);
      break;
    case 157:
      (void)ParseOnOff(act, &default_startup);
      break;

    case 122:
      if (*args)
 {
   n = (*user->u_password) ? 1 : 0;
   if (user->u_password != NullStr) free((char *)user->u_password);
   user->u_password = SaveStr(*args);
   if (!strcmp(user->u_password, "none"))
     {
       if (n)
         (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Password checking disabled");
       free(user->u_password);
       user->u_password = NullStr;
     }
 }
      else
 {
   if (!fore)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: password: window required", rc_name);
       break;
     }
   Input("New screen password:", 100, 1, pass1, display ? (char *)display->d_user : (char *)users, 0);
 }
      break;

    case 17:
 {
   struct action *ktabp = ktab;
   int kflag = 0;

   for (;;)
     {
       if (argc > 2 && !strcmp(*args, "-c"))
  {
    ktabp = FindKtab(args[1], 1);
    if (ktabp == 0)
      break;
    args += 2;
    argl += 2;
    argc -= 2;
  }
       else if (argc > 1 && !strcmp(*args, "-k"))
         {
    kflag = 1;
    args++;
    argl++;
    argc--;
  }
       else
         break;
     }

          if (kflag)
     {
       for (n = 0; n < (188 -106); n++)
  if (strcmp(term[n + 106].tcname, *args) == 0)
    break;
       if (n == (188 -106))
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bind: unknown key '%s'", rc_name, *args);
    break;
  }
       n += 256;
     }
   else

   if (*argl != 1)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bind: character, ^x, or (octal) \\032 expected.", rc_name);
       break;
     }
   else
     n = (unsigned char)args[0][0];

   if (args[1])
     {
       if ((i = FindCommnr(args[1])) == -1)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bind: unknown command '%s'", rc_name, args[1]);
    break;
  }
       if (CheckArgNum(i, args + 2) < 0)
  break;
       ClearAction(&ktabp[n]);
       SaveAction(ktabp + n, i, args + 2, argl + 2);
     }
   else
     ClearAction(&ktabp[n]);
 }
      break;

    case 18:
 {
   struct action *newact;
          int newnr, fl = 0, kf = 0, af = 0, df = 0, mf = 0;
   struct display *odisp = display;
   int used = 0;
          struct kmap_ext *kme = ((void*)0);

   for (; *args && **args == '-'; args++, argl++)
     {
       if (strcmp(*args, "-t") == 0)
  fl = 0x4000;
       else if (strcmp(*args, "-k") == 0)
  kf = 1;
       else if (strcmp(*args, "-a") == 0)
  af = 1;
       else if (strcmp(*args, "-d") == 0)
  df = 1;
       else if (strcmp(*args, "-m") == 0)
  mf = 1;
       else if (strcmp(*args, "--") == 0)
  {
    args++;
    argl++;
    break;
  }
       else
  {
           (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: invalid option %s", rc_name, *args);
    return;
  }
     }
   if (df && mf)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: -d does not work with -m", rc_name);
       break;
     }
   if (*args == 0)
     {
       if (mf)
  display_bindkey("Edit mode", mmtab);
       else if (df)
  display_bindkey("Default", dmtab);
       else
  display_bindkey("User", umtab);
       break;
     }
   if (kf == 0)
     {
       if (af)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: -a only works with -k", rc_name);
    break;
  }
       if (*argl == 0)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: empty string makes no sense", rc_name);
    break;
  }
       for (i = 0, kme = kmap_exts; i < kmap_extn; i++, kme++)
  if (kme->str == 0)
    {
      if (args[1])
        break;
    }
  else
    if (*argl == (kme->fl & ~0x4000) && bcmp(kme->str, *args, *argl) == 0)
        break;
       if (i == kmap_extn)
  {
    if (!args[1])
      {
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: keybinding not found", rc_name);
        break;
      }
    kmap_extn += 8;
    kmap_exts = (struct kmap_ext *)xrealloc((char *)kmap_exts, kmap_extn * sizeof(*kmap_exts));
    kme = kmap_exts + i;
    bzero((char *)kme, 8 * sizeof(*kmap_exts));
    for (; i < kmap_extn; i++, kme++)
      {
        kme->str = 0;
        kme->dm.nr = kme->mm.nr = kme->um.nr = -1;
        kme->dm.args = kme->mm.args = kme->um.args = noargs;
        kme->dm.argl = kme->mm.argl = kme->um.argl = 0;
      }
    i -= 8;
    kme -= 8;
  }
       if (df == 0 && kme->dm.nr != -1)
  used = 1;
       if (mf == 0 && kme->mm.nr != -1)
  used = 1;
       if ((df || mf) && kme->um.nr != -1)
  used = 1;
       i += (188 -106) + (188 -166);
       newact = df ? &kme->dm : mf ? &kme->mm : &kme->um;
     }
   else
     {
       for (i = 106; i < 188; i++)
  if (strcmp(term[i].tcname, *args) == 0)
    break;
       if (i == 188)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: unknown key '%s'", rc_name, *args);
    break;
  }
       if (af && i >= 166 && i < 188)
         i -= 166 - (188 -106);
       else
         i -= 106;
       newact = df ? &dmtab[i] : mf ? &mmtab[i] : &umtab[i];
     }
   if (args[1])
     {
       if ((newnr = FindCommnr(args[1])) == -1)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: bindkey: unknown command '%s'", rc_name, args[1]);
    break;
  }
       if (CheckArgNum(newnr, args + 2) < 0)
  break;
       ClearAction(newact);
       SaveAction(newact, newnr, args + 2, argl + 2);
       if (kf == 0 && args[1])
  {
    if (kme->str)
      free(kme->str);
    kme->str = SaveStrn(*args, *argl);
    kme->fl = fl | *argl;
  }
     }
   else
     ClearAction(newact);
   for (display = displays; display; display = display->d_next)
     remap(i, args[1] ? 1 : 0);
   if (kf == 0 && !args[1])
     {
       if (!used && kme->str)
  {
    free(kme->str);
    kme->str = 0;
    kme->fl = 0;
  }
     }
   display = odisp;
 }
      break;
    case 105:
      if (*args)
 {
          if (ParseNum(act, &n))
     break;
   if (n < 0)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: maptimeout: illegal time %d", rc_name, n);
       break;
     }
   maptimeout = n;
 }
      if (*args == 0 || msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "maptimeout is %dms", maptimeout);
      break;
    case 104:
      display->d_dontmap = 1;
      break;
    case 103:
      display->d_mapdefault = 1;
      break;


    case 1:
    case 0:
    case 6:
    case 28:
      UsersAcl(((void*)0), argc, args);
      break;
    case 2:
      if (UserDel(args[0], ((void*)0)))
 break;
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s removed from acl database", args[0]);
      break;
    case 3:





      if (args[1])
        {
   if (strcmp(args[1], "none"))
     {
       if (AclLinkUser(args[0], args[1]))
  break;
       if (msgok)
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "User %s joined acl-group %s", args[0], args[1]);
     }
   else
     {
       struct acluser *u;
       struct aclusergroup *g;

       if (!(u = *FindUserPtr(args[0])))
         break;
       while ((g = u->u_group))
         {
    u->u_group = g->next;
      free((char *)g);
         }
     }
 }
      else
 {
   char buf[256], *p = buf;
   int ngroups = 0;
   struct acluser *u;
   struct aclusergroup *g;

   if (!(u = *FindUserPtr(args[0])))
     {
       if (msgok)
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "User %s does not exist.", args[0]);
       break;
     }
   g = u->u_group;
   while (g)
     {
       ngroups++;
       sprintf(p, "%s ", g->u->u_name);
       p += strlen(p);
       if (p > buf+200)
  break;
       g = g->next;
     }
   if (ngroups)
     *(--p) = '\0';
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s's group%s: %s.", args[0], (ngroups == 1) ? "" : "s",
       (ngroups == 0) ? "none" : buf);
 }
      break;
    case 4:
    case 167:
      while ((s = *args++))
        {
   char *err = 0;

   if (AclUmask(display ? display->d_user : users, s, &err))
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "umask: %s\n", err);
 }
      break;
    case 113:
      if (ParseOnOff(act, &n))
 break;
      multi = n ? "" : 0;
      chsock();
      if (msgok)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Multiuser mode %s", multi ? "enabled" : "disabled");
      break;


    case 75:
      winexec(args);
      break;


    case 116:
      i = display->d_nonblock >= 0;
      if (*args && ((args[0][0] >= '0' && args[0][0] <= '9') || args[0][0] == '.'))
 {
          if (ParseNum1000(act, &i))
     break;
 }
      else if (!ParseSwitch(act, &i))
 i = i == 0 ? -1 : 1000;
      else
 break;
      if (msgok && i == -1)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "display set to blocking mode");
      else if (msgok && i == 0)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "display set to nonblocking mode, no timeout");
      else if (msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "display set to nonblocking mode, %.10gs timeout", i/1000.);
      display->d_nonblock = i;
      if (display->d_nonblock <= 0)
 evdeq(&display->d_blockedev);
      break;
    case 57:
      if (*args && ((args[0][0] >= '0' && args[0][0] <= '9') || args[0][0] == '.'))
 {
          if (ParseNum1000(act, &defnonblock))
     break;
 }
      else if (!ParseOnOff(act, &defnonblock))
        defnonblock = defnonblock == 0 ? -1 : 1000;
      else
 break;
      if (display && *rc_name)
 {
   display->d_nonblock = defnonblock;
          if (display->d_nonblock <= 0)
     evdeq(&display->d_blockedev);
 }
      break;

    case 80:

      if (fore->w_gr == 2)
 fore->w_gr = 0;

      if (ParseSwitch(act, &fore->w_gr) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %suse GR", fore->w_gr ? "" : "not ");

      if (fore->w_gr == 0 && fore->w_FontE)
 fore->w_gr = 2;

      break;
    case 26:
      if (ParseSwitch(act, &fore->w_c1) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %suse C1", fore->w_c1 ? "" : "not ");
      break;

    case 14:
      if (ParseSwitch(act, &fore->w_bce) == 0 && msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %serase with background color", fore->w_bce ? "" : "not ");
      break;


    case 93:
    case 72:

      if (*args && !strcmp(args[0], "-d"))
 {
   if (!args[1])
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "encodings directory is %s", screenencodings ? screenencodings : "<unset>");
   else
     {
       free(screenencodings);
       screenencodings = SaveStr(args[1]);
     }
   break;
 }
      if (*args && !strcmp(args[0], "-l"))
 {
   if (!args[1])
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "encoding: -l: argument required");
   else if (LoadFontTranslation(-1, args[1]))
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "encoding: could not load utf8 encoding file");
   else if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "encoding: utf8 encoding file loaded");
   break;
 }
# 3764 "process.c"
      for (i = 0; i < 2; i++)
 {
   if (args[i] == 0)
     break;
   if (!strcmp(args[i], "."))
     continue;
   n = FindEncoding(args[i]);
   if (n == -1)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "encoding: unknown encoding '%s'", args[i]);
       break;
     }
   if (i == 0 && fore)
     {
       WinSwitchEncoding(fore, n);
       ResetCharsets(fore);
     }
   else if (i && display)
     display->d_encoding = n;
 }
      break;
    case 51:
    case 46:
      n = FindEncoding(*args);
      if (n == -1)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "defencoding: unknown encoding '%s'", *args);
   break;
 }
      nwin_default.encoding = n;
      break;



    case 63:
      n = nwin_default.encoding == 8;
      if (ParseSwitch(act, &n) == 0)
 {
   nwin_default.encoding = n ? 8 : 0;
   if (msgok)
            (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %suse UTF-8 encoding for new windows", n ? "" : "not ");
 }
      break;
    case 170:
      for (i = 0; i < 2; i++)
 {
   if (i && args[i] == 0)
     break;
   if (args[i] == 0)
     n = fore->w_layer.l_encoding != 8;
   else if (strcmp(args[i], "off") == 0)
     n = 0;
   else if (strcmp(args[i], "on") == 0)
     n = 1;
   else
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "utf8: illegal argument (%s)", args[i]);
       break;
     }
   if (i == 0)
     {
       WinSwitchEncoding(fore, n ? 8 : 0);
       if (msgok)
  (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %suse UTF-8 encoding", n ? "" : "not ");
     }
   else if (display)
     display->d_encoding = n ? 8 : 0;
   if (args[i] == 0)
     break;
 }
      break;


    case 129:
      if (*args)
 {
   if (printcmd)
     free(printcmd);
   printcmd = 0;
   if (**args)
     printcmd = SaveStr(*args);
 }
      if (*args == 0 || msgok)
 {
   if (printcmd)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "using '%s' as print command", printcmd);
   else
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "using termcap entries for printing");
     break;
 }
      break;

    case 67:
      if (argl && argl[0] > 0 && argl[1] > 0)
 {
   if (argl[0] != 2)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Two characters expected to define a digraph");
       break;
     }
   i = digraph_find(args[0]);
   digraphs[i].d[0] = args[0][0];
   digraphs[i].d[1] = args[0][1];
   if (!parse_input_int(args[1], argl[1], &digraphs[i].value))
     {
       if (!(digraphs[i].value = atoi(args[1])))
  {
    if (!args[1][1])
      digraphs[i].value = (int)args[1][0];

    else
      {
        int t;
        unsigned char *s = (unsigned char *)args[1];
        digraphs[i].value = 0;
        while (*s)
   {
     t = FromUtf8(*s++, &digraphs[i].value);
     if (t == -1)
       continue;
     if (t == -2)
       digraphs[i].value = 0;
     else
       digraphs[i].value = t;
     break;
   }
      }

  }
     }
   break;
 }
      Input("Enter digraph: ", 10, 4, digraph_fn, ((void*)0), 0);
      if (*args && **args)
 {
   s = *args;
   n = strlen(s);
   (*flayer->l_layfn->lf_LayProcess)(&s, &n);
 }
      break;

    case 50:
      if (*args == 0)
 {
   char buf[256];
          *buf = 0;
   if (nwin_default.hstatus)
            AddXChars(buf, sizeof(buf), nwin_default.hstatus);
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "default hstatus is '%s'", buf);
   break;
        }
      (void)ParseSaveStr(act, &nwin_default.hstatus);
      if (*nwin_default.hstatus == 0)
 {
   free(nwin_default.hstatus);
   nwin_default.hstatus = 0;
 }
      break;
    case 89:
      (void)ParseSaveStr(act, &fore->w_hstatus);
      if (*fore->w_hstatus == 0)
 {
   free(fore->w_hstatus);
   fore->w_hstatus = 0;
 }
      WindowChanged(fore, 'h');
      break;


    case 45:
    case 29:
      if (*args == 0)
        {
   char buf[256];
          *buf = 0;
   if (nwin_default.charset)
            AddXChars(buf, sizeof(buf), nwin_default.charset);
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "default charset is '%s'", buf);
   break;
        }
      n = strlen(*args);
      if (n == 0 || n > 6)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: string has illegal size.", rc_name, comms[nr].name);
   break;
 }
      if (n > 4 && (
        ((args[0][4] < '0' || args[0][4] > '3') && args[0][4] != '.') ||
        ((args[0][5] < '0' || args[0][5] > '3') && args[0][5] && args[0][5] != '.')))
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: %s: illegal mapping number.", rc_name, comms[nr].name);
   break;
 }
      if (nr == 29)
 {
   SetCharsets(fore, *args);
   break;
 }
      if (nwin_default.charset)
 free(nwin_default.charset);
      nwin_default.charset = SaveStr(*args);
      break;


    case 10:
      s = args[0];
      if (*s >= '0' && *s <= '9')
        i = *s - '0';
      else
 for (i = 0; i < 8; i++)
   if (*s == "dubrsBiI"[i])
     break;
      s++;
      nr = 0;
      if (*s && s[1] && !s[2])
 {
   if (*s == 'd' && s[1] == 'd')
     nr = 3;
   else if (*s == '.' && s[1] == 'd')
     nr = 2;
   else if (*s == 'd' && s[1] == '.')
     nr = 1;
   else if (*s != '.' || s[1] != '.')
     s--;
   s += 2;
 }
      if (*s || i < 0 || i >= 8)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: attrcolor: unknown attribute '%s'.", rc_name, args[0]);
   break;
 }
      n = 0;
      if (args[1])
        n = ParseAttrColor(args[1], args[2], 1);
      if (n == -1)
 break;
      attr2color[i][nr] = n;
      n = 0;
      for (i = 0; i < 8; i++)
 if (attr2color[i][0] || attr2color[i][1] || attr2color[i][2] || attr2color[i][3])
   n |= 1 << i;
      nattr2color = n;
      break;

    case 138:
      i = -1;
      if (strcmp(args[0], "bell") == 0)
 {
   i = REND_BELL;
 }
      else if (strcmp(args[0], "monitor") == 0)
 {
   i = REND_MONITOR;
 }
      else if (strcmp(args[0], "silence") == 0)
 {
   i = REND_SILENCE;
 }
      else if (strcmp(args[0], "so") != 0)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Invalid option '%s' for rendition", args[0]);
   break;
 }

      ++args;
      ++argl;

      if (i != -1)
 {
   renditions[i] = ParseAttrColor(args[0], args[1], 1);
   WindowChanged((struct win *)0, 'w');
   WindowChanged((struct win *)0, 'W');
   WindowChanged((struct win *)0, 0);
   break;
 }



    case 153:
      i = 0;
      if (*args)
 {
          i = ParseAttrColor(*args, args[1], 1);
   if (i == -1)
     break;
   ApplyAttrColor(i, &mchar_so);
   WindowChanged((struct win *)0, 0);
   do {} while (0);
 }
      if (msgok)

        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Standout attributes 0x%02x  color 0x%02x", (unsigned char)mchar_so.attr, 0x99 ^ (unsigned char)mchar_so.color);



      break;

      case 155:
 do_source(*args);
 break;


    case 159:
      s = ((void*)0);
      if (!*args)
        {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s:%s screen login", HostName, SockPath);
          InputSu(display->d_fore, &display->d_user, ((void*)0));
 }
      else if (!args[1])
        InputSu(display->d_fore, &display->d_user, args[0]);
      else if (!args[2])
        s = DoSu(&display->d_user, args[0], args[1], "\377");
      else
        s = DoSu(&display->d_user, args[0], args[1], args[2]);
      if (s)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s", s);
      break;

    case 156:
      s = args[0];
      if (s && !strcmp(s, "-v"))
        AddCanvas((1 << 1));
      else
        AddCanvas((1 << 0));
      Activate(-1);
      break;
    case 136:
      RemCanvas();
      Activate(-1);
      break;
    case 119:
      OneCanvas();
      Activate(-1);
      break;
    case 76:
      display->d_forecv->c_xoff = display->d_forecv->c_xs;
      display->d_forecv->c_yoff = display->d_forecv->c_ys;
      RethinkViewportOffsets(display->d_forecv);
      ResizeLayer(display->d_forecv->c_layer, display->d_forecv->c_xe - display->d_forecv->c_xs + 1, display->d_forecv->c_ye - display->d_forecv->c_ys + 1, 0);
      flayer = display->d_forecv->c_layer;
      LGotoPos(flayer, flayer->l_x, flayer->l_y);
      break;
    case 78:
      {
 struct canvas *cv = 0;
 if (!*args || !strcmp(*args, "next"))
   cv = display->d_forecv->c_next ? display->d_forecv->c_next : display->d_cvlist;
 else if (!strcmp(*args, "prev"))
   {
     for (cv = display->d_cvlist; cv->c_next && cv->c_next != display->d_forecv; cv = cv->c_next)
       ;
   }
 else if (!strcmp(*args, "top"))
   cv = display->d_cvlist;
 else if (!strcmp(*args, "bottom"))
   {
     for (cv = display->d_cvlist; cv->c_next; cv = cv->c_next)
       ;
   }
 else if (!strcmp(*args, "up"))
   cv = FindCanvas(display->d_forecv->c_xs, display->d_forecv->c_ys - 1);
 else if (!strcmp(*args, "down"))
   cv = FindCanvas(display->d_forecv->c_xs, display->d_forecv->c_ye + 2);
 else if (!strcmp(*args, "left"))
   cv = FindCanvas(display->d_forecv->c_xs - 1, display->d_forecv->c_ys);
 else if (!strcmp(*args, "right"))
   cv = FindCanvas(display->d_forecv->c_xe + 1, display->d_forecv->c_ys);
 else
   {
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: usage: focus [next|prev|up|down|left|right|top|bottom]", rc_name);
     break;
   }
 SetForeCanvas(display, cv);
      }
      break;
    case 140:
      i = 0;
      if (display->d_forecv->c_slorient == 0)
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "resize: need more than one region");
   break;
 }
      for (; *args; args++)
 {
   if (!strcmp(*args, "-h"))
     i |= 1;
   else if (!strcmp(*args, "-v"))
     i |= 2;
   else if (!strcmp(*args, "-b"))
     i |= 1 | 2;
   else if (!strcmp(*args, "-p"))
     i |= display->d_forecv->c_slorient == (1 << 0) ? 1 : 2;
   else if (!strcmp(*args, "-l"))
     i |= 4;
   else
     break;
 }
      if (*args && args[1])
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: usage: resize [-h] [-v] [-l] [num]\n", rc_name);
   break;
 }
      if (*args)
 ResizeRegions(*args, i);
      else
 Input(resizeprompts[i], 20, 4, ResizeFin, (char*)0, i);
      break;
    case 146:
      (void)ParseSwitch(act, &separate_sids);
      break;
    case 74:
      args = SaveArgs(args);
      for (i = 0; args[i]; i++)
 {
   if (args[i][0])
     Colonfin(args[i], strlen(args[i]), (char *)0);
   free(args[i]);
 }
      free(args);
      break;
    case 8:
      (void)ParseSwitch(act, &use_altscreen);
      if (msgok)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Will %sdo alternate screen switching", use_altscreen ? "" : "not ");
      break;
    case 107:
      if (!args[0])
 {
   (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "maximum windows allowed: %d", maxwin);
   break;
 }
      if (ParseNum(act, &n))
 break;
      if (n < 1)
        (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "illegal maxwin number specified");
      else if (n > 2048)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "maximum 2048 windows allowed");
      else if (n > maxwin && windows)
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "may increase maxwin only when there's no window");
      else
 {
   if (!windows)
            {
       wtab = realloc(wtab, n * sizeof(struct win *));
              bzero(wtab, n * sizeof(struct win *));
            }
   maxwin = n;
 }
      break;
    case 13:
      if (ParseBase(act, *args, &n, 10, "decimal"))
 break;
      if (!args[1])
        setbacktick(n, 0, 0, (char **)0);
      else
 {
   int lifespan, tick;
   if (argc < 4)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: usage: backtick num [lifespan tick cmd args...]", rc_name);
       break;
     }
   if (ParseBase(act, args[1], &lifespan, 10, "decimal"))
     break;
   if (ParseBase(act, args[2], &tick, 10, "decimal"))
     break;
   setbacktick(n, lifespan, tick, SaveArgs(args + 3));
 }
      WindowChanged(0, '`');
      break;
    case 19:

      if (blankerprg)
 {
          RunBlanker(blankerprg);
   break;
 }

      ClearAll();
      CursorVisibility(-1);
      display->d_blocked = 4;
      break;

    case 20:
      if (!args[0])
 {
   if (blankerprg)
     {
       char path[4096];
       char *p = path, **pp;
       for (pp = blankerprg; *pp; pp++)
  p += snprintf(p, sizeof(path) - (p - path) - 1, "%s ", *pp);
       *(p - 1) = '\0';
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "blankerprg: %s", path);
     }
   else
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "No blankerprg set.");
   break;
 }
      if (blankerprg)
 {
   char **pp;
   for (pp = blankerprg; *pp; pp++)
     free(*pp);
   free(blankerprg);
   blankerprg = 0;
 }
      if (args[0][0])
 blankerprg = SaveArgs(args);
      break;

    case 90:
      if (*args)
 {
   struct display *olddisplay = display;
   if (!strcmp(*args, "off"))
     idletimo = 0;
   else if (args[0][0])
     idletimo = atoi(*args) * 1000;
   if (argc > 1)
     {
       if ((i = FindCommnr(args[1])) == -1)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "%s: idle: unknown command '%s'", rc_name, args[1]);
    break;
  }
       if (CheckArgNum(i, args + 2) < 0)
  break;
       ClearAction(&idleaction);
       SaveAction(&idleaction, i, args + 2, argl + 2);
     }
   for (display = displays; display; display = display->d_next)
     ResetIdle();
   display = olddisplay;
 }
      if (msgok)
 {
   if (idletimo)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "idle timeout %ds, %s", idletimo / 1000, comms[idleaction.nr].name);
   else
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "idle off");
 }
      break;
    case 79:
      for (i = 0; i < 2 && args[i]; i++)
 {
   if (!strcmp(args[i], "max") || !strcmp(args[i], "_"))
     n = -1;
   else
     n = atoi(args[i]);
   if (i == 0)
     focusminwidth = n;
   else
            focusminheight = n;
 }
      if (msgok)
 {
   char b[2][20];
   for (i = 0; i < 2; i++)
     {
       n = i == 0 ? focusminwidth : focusminheight;
       if (n == -1)
  strcpy(b[i], "max");
       else
  sprintf(b[i], "%d", n);
     }
          (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "focus min size is %s %s\n", b[0], b[1]);
 }
      break;
    case 81:
      if (*args)
 {
   fore->w_group = 0;
   if (args[0][0])
     {
       fore->w_group = WindowByName(*args);
       if (fore->w_group == fore || (fore->w_group && fore->w_group->w_type != 3))
  fore->w_group = 0;
     }
   WindowChanged((struct win *)0, 'w');
   WindowChanged((struct win *)0, 'W');
   WindowChanged((struct win *)0, 0);
 }
      if (msgok)
 {
   if (fore->w_group)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "window group is %d (%s)\n", fore->w_group->w_number, fore->w_group->w_title);
   else
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "window belongs to no group");
 }
      break;
    case 96:



      if (!strcmp(args[0], "title"))
 {
          if (!display)
            {
       if (!args[1])
  break;
       if (!layout_attach || layout_attach == &layout_last_marker)
  layout_attach = CreateLayout(args[1], 0);
       else
  RenameLayout(layout_attach, args[1]);
       break;
     }

   if (!display->d_layout)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "not on a layout");
       break;
     }
   if (!args[1])
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "current layout is %d (%s)", display->d_layout->lay_number, display->d_layout->lay_title);
       break;
     }
   RenameLayout(display->d_layout, args[1]);
 }
      else if (!strcmp(args[0], "number"))
 {
   if (!display)
     {
       if (args[1] && layout_attach && layout_attach != &layout_last_marker)
  RenumberLayout(layout_attach, atoi(args[1]));
       break;
     }

   if (!display->d_layout)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "not on a layout");
       break;
     }
   if (!args[1])
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "This is layout %d (%s).\n", display->d_layout->lay_number, display->d_layout->lay_title);
       break;
     }
    RenumberLayout(display->d_layout, atoi(args[1]));
    break;
 }
      else if (!strcmp(args[0], "autosave"))
 {
   if (!display)
     {
       if (args[1] && layout_attach && layout_attach != &layout_last_marker)
  {
    if (!strcmp(args[1], "on"))
      layout_attach->lay_autosave = 1;
    else if (!strcmp(args[1], "off"))
      layout_attach->lay_autosave = 0;
  }
       break;
     }

   if (!display->d_layout)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "not on a layout");
       break;
     }
   if (args[1])
     {
       if (!strcmp(args[1], "on"))
  display->d_layout->lay_autosave = 1;
       else if (!strcmp(args[1], "off"))
  display->d_layout->lay_autosave = 0;
       else
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "invalid argument. Give 'on' or 'off");
    break;
  }
     }
   if (msgok)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "autosave is %s", display->d_layout->lay_autosave ? "on" : "off");
 }
      else if (!strcmp(args[0], "new"))
 {
   char *t = args[1];
   n = 0;
   if (t)
     {
       while (*t >= '0' && *t <= '9')
  t++;
       if (t != args[1] && (!*t || *t == ':'))
  {
    n = atoi(args[1]);
    if (*t)
      t++;
  }
       else
  t = args[1];
     }
   if (!t || !*t)
     t = "layout";
          NewLayout(t, n);
   Activate(-1);
 }
      else if (!strcmp(args[0], "save"))
 {
   if (!args[1])
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "usage: layout save <name>");
       break;
     }
   if (display)
     SaveLayout(args[1], &display->d_canvas);
 }
      else if (!strcmp(args[0], "select"))
 {
   if (!display)
     {
       if (args[1])
  layout_attach = FindLayout(args[1]);
       break;
     }
          if (!args[1])
     {
       Input("Switch to layout: ", 20, 0, SelectLayoutFin, ((void*)0), 0);
       break;
     }
   SelectLayoutFin(args[1], strlen(args[1]), (char *)0);
 }
      else if (!strcmp(args[0], "next"))
 {
   if (!display)
     {
       if (layout_attach && layout_attach != &layout_last_marker)
  layout_attach = layout_attach->lay_next ? layout_attach->lay_next : layouts;;
       break;
     }
   struct layout *lay = display->d_layout;
   if (lay)
     lay = lay->lay_next ? lay->lay_next : layouts;
   else
     lay = layouts;
   if (!lay)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "no layout defined");
       break;
     }
   if (lay == display->d_layout)
     break;
   LoadLayout(lay, &display->d_canvas);
   Activate(-1);
 }
      else if (!strcmp(args[0], "prev"))
 {
   struct layout *lay = display ? display->d_layout : layout_attach;
   struct layout *target = lay;
   if (lay)
     {
       for (lay = layouts; lay->lay_next && lay->lay_next != target; lay = lay->lay_next)
  ;
     }
   else
     lay = layouts;

   if (!display)
     {
       layout_attach = lay;
       break;
     }

   if (!lay)
     {
       (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "no layout defined");
       break;
     }
   if (lay == display->d_layout)
     break;
   LoadLayout(lay, &display->d_canvas);
   Activate(-1);
 }
      else if (!strcmp(args[0], "attach"))
 {
   if (!args[1])
     {
       if (!layout_attach)
         (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "no attach layout set");
       else if (layout_attach == &layout_last_marker)
         (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "will attach to last layout");
       else
         (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "will attach to layout %d (%s)", layout_attach->lay_number, layout_attach->lay_title);
       break;
     }
   if (!strcmp(args[1], ":last"))
     layout_attach = &layout_last_marker;
   else if (!args[1][0])
     layout_attach = 0;
   else
     {
       struct layout *lay;
       lay = FindLayout(args[1]);
       if (!lay)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "unknown layout '%s'", args[1]);
    break;
  }
       layout_attach = lay;
     }
 }
      else if (!strcmp(args[0], "show"))
 {
   ShowLayouts(-1);
 }
      else if (!strcmp(args[0], "remove"))
 {
   struct layout *lay = display ? display->d_layout : layouts;
   if (args[1])
     {
       lay = layouts ? FindLayout(args[1]) : (struct layout *)0;
       if (!lay)
  {
    (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "unknown layout '%s'", args[1]);
    break;
  }
     }
   if (lay)
     RemoveLayout(lay);
 }
      else if (!strcmp(args[0], "dump"))
 {
   if (!display)
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Must have a display for 'layout dump'.");
   else if (!LayoutDumpCanvas(&display->d_canvas, args[1] ? args[1] : "layout-dump"))
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)((*__errno_location ()), "Error dumping layout.");
   else
     (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Layout dumped to \"%s\"", args[1] ? args[1] : "layout-dump");
 }
      else
 (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "unknown layout subcommand");
      break;

    case 31:
      if(ParseSwitch(act, &cjkwidth) == 0)
      {
        if(msgok)
          (!act->quiet ? Msg : queryflag >= 0 ? QueryMsg : Dummy)(0, "Treat ambiguous width characters as %s width", cjkwidth ? "full" : "half");
      }
      break;

    default:




      break;
    }
  if (display != odisplay)
    {
      for (display = displays; display; display = display->d_next)
        if (display == odisplay)
   break;
    }
}


void
CollapseWindowlist()

{
  int pos, moveto=0;

  for (pos = 1; pos < 100; pos++)
    if (wtab[pos])
      for (; moveto < pos; moveto++)
        if (!wtab[moveto])
          {
          WindowChangeNumber(pos, moveto);
          break;
          }
}

void
DoCommand(argv, argl)
char **argv;
int *argl;
{
  struct action act;
  const char *cmd = *argv;

  act.quiet = 0;



  if (*cmd == '@')
    {
      act.quiet |= 0x01;
      cmd++;
    }
  if (*cmd == '-')
    {
      act.quiet |= 0x02;
      cmd++;
    }

  if ((act.nr = FindCommnr(cmd)) == -1)
    {
      Msg(0, "%s: unknown command '%s'", rc_name, cmd);
      return;
    }
  act.args = argv + 1;
  act.argl = argl + 1;
  DoAction(&act, -1);
}

static void
SaveAction(act, nr, args, argl)
struct action *act;
int nr;
char **args;
int *argl;
{
  register int argc = 0;
  char **pp;
  int *lp;

  if (args)
    while (args[argc])
      argc++;
  if (argc == 0)
    {
      act->nr = nr;
      act->args = noargs;
      act->argl = 0;
      return;
    }
  if ((pp = (char **)malloc((unsigned)(argc + 1) * sizeof(char **))) == 0)
    Panic(0, "%s", strnomem);
  if ((lp = (int *)malloc((unsigned)(argc) * sizeof(int *))) == 0)
    Panic(0, "%s", strnomem);
  act->nr = nr;
  act->args = pp;
  act->argl = lp;
  while (argc--)
    {
      *lp = argl ? *argl++ : (int)strlen(*args);
      *pp++ = SaveStrn(*args++, *lp++);
    }
  *pp = 0;
}

static char **
SaveArgs(args)
char **args;
{
  register char **ap, **pp;
  register int argc = 0;

  while (args[argc])
    argc++;
  if ((pp = ap = (char **)malloc((unsigned)(argc + 1) * sizeof(char **))) == 0)
    Panic(0, "%s", strnomem);
  while (argc--)
    *pp++ = SaveStr(*args++);
  *pp = 0;
  return ap;
}
# 4735 "process.c"
int
Parse(buf, bufl, args, argl)
char *buf, **args;
int bufl, *argl;
{
  register char *p = buf, **ap = args, *pp;
  register int delim, argc;
  int *lp = argl;

  do {} while (0);
  argc = 0;
  pp = buf;
  delim = 0;
  for (;;)
    {
      *lp = 0;
      while (*p && (*p == ' ' || *p == '\t'))
 ++p;

      if (argc == 0 && *p == '!')
 {
   *ap++ = "exec";
   *lp++ = 4;
   p++;
   argc++;
   continue;
        }

      if (*p == '\0' || *p == '#' || *p == '\n')
 {
   *p = '\0';
   for (delim = 0; delim < argc; delim++)
     do {} while (0);
   args[argc] = 0;
   return argc;
 }
      if (++argc >= 64)
 {
   Msg(0, "%s: too many tokens.", rc_name);
   return 0;
 }
      *ap++ = pp;

      do {} while (0);
      while (*p)
 {
   if (*p == delim)
     delim = 0;
   else if (delim != '\'' && *p == '\\' && (p[1] == 'n' || p[1] == 'r' || p[1] == 't' || p[1] == '\'' || p[1] == '"' || p[1] == '\\' || p[1] == '$' || p[1] == '#' || p[1] == '^' || (p[1] >= '0' && p[1] <= '7')))
     {
       p++;
       if (*p >= '0' && *p <= '7')
  {
    *pp = *p - '0';
    if (p[1] >= '0' && p[1] <= '7')
      {
        p++;
        *pp = (*pp << 3) | (*p - '0');
        if (p[1] >= '0' && p[1] <= '7')
   {
     p++;
     *pp = (*pp << 3) | (*p - '0');
   }
      }
    pp++;
  }
       else
  {
    switch (*p)
      {
        case 'n': *pp = '\n'; break;
        case 'r': *pp = '\r'; break;
        case 't': *pp = '\t'; break;
        default: *pp = *p; break;
      }
    pp++;
  }
     }
   else if (delim != '\'' && *p == '$' && (p[1] == '{' || p[1] == ':' || (p[1] >= 'a' && p[1] <= 'z') || (p[1] >= 'A' && p[1] <= 'Z') || (p[1] >= '0' && p[1] <= '9') || p[1] == '_'))

     {
       char *ps, *pe, op, *v, xbuf[11], path[4096];
       int vl;

       ps = ++p;
       do {} while (0);
       p++;
       while (*p)
  {
    if (*ps == '{' && *p == '}')
      break;
    if (*ps == ':' && *p == ':')
      break;
    if (*ps != '{' && *ps != ':' && (*p < 'a' || *p > 'z') && (*p < 'A' || *p > 'Z') && (*p < '0' || *p > '9') && *p != '_')
      break;
    p++;
  }
       pe = p;
       if (*ps == '{' || *ps == ':')
  {
    if (!*p)
      {
        Msg(0, "%s: bad variable name.", rc_name);
        return 0;
      }
    p++;
  }
       op = *pe;
       *pe = 0;
       do {} while (0);
       if (*ps == ':')
  v = gettermcapstring(ps + 1);
       else
  {
    if (*ps == '{')
      ps++;
    v = xbuf;
    if (!strcmp(ps, "TERM"))
      v = display ? display->d_termname : "unknown";
    else if (!strcmp(ps, "COLUMNS"))
      sprintf(xbuf, "%d", display ? display->d_width : -1);
    else if (!strcmp(ps, "LINES"))
      sprintf(xbuf, "%d", display ? display->d_height : -1);
    else if (!strcmp(ps, "PID"))
      sprintf(xbuf, "%d", getpid());
    else if (!strcmp(ps, "PWD"))
      {
        if (getcwd(path, sizeof(path) - 1) == 0)
   v = "?";
        else
   v = path;
      }
    else if (!strcmp(ps, "STY"))
      {
        if ((v = strchr(SockName, '.')))
   v++;
        else
   v = SockName;
      }
    else
      v = getenv(ps);
  }
       *pe = op;
       vl = v ? strlen(v) : 0;
       if (vl)
  {
    do {} while (0);
    if (p - pp < vl)
      {
        int right = buf + bufl - (p + strlen(p) + 1);
        if (right > 0)
   {
     bcopy(p, p + right, strlen(p) + 1);
     p += right;
   }
      }
    if (p - pp < vl)
      {
        Msg(0, "%s: no space left for variable expansion.", rc_name);
        return 0;
      }
    bcopy(v, pp, vl);
    pp += vl;
  }
       continue;
     }
   else if (delim != '\'' && *p == '^' && p[1])
     {
       p++;
       *pp++ = *p == '?' ? '\177' : *p & 0x1f;
     }
   else if (delim == 0 && (*p == '\'' || *p == '"'))
     delim = *p;
   else if (delim == 0 && (*p == ' ' || *p == '\t' || *p == '\n'))
     break;
   else
     *pp++ = *p;
   p++;
 }
      if (delim)
 {
   Msg(0, "%s: Missing %c quote.", rc_name, delim);
   return 0;
 }
      if (*p)
 p++;
      *pp = 0;
      do {} while (0);
      *lp++ = pp - ap[-1];
      pp++;
    }
}

void
SetEscape(u, e, me)
struct acluser *u;
int e, me;
{
  if (u)
    {
      u->u_Esc = e;
      u->u_MetaEsc = me;
    }
  else
    {
      if (users)
 {
   if (DefaultEsc >= 0)
     ClearAction(&ktab[DefaultEsc]);
   if (DefaultMetaEsc >= 0)
     ClearAction(&ktab[DefaultMetaEsc]);
 }
      DefaultEsc = e;
      DefaultMetaEsc = me;
      if (users)
 {
   if (DefaultEsc >= 0)
     {
       ClearAction(&ktab[DefaultEsc]);
       ktab[DefaultEsc].nr = 120;
     }
   if (DefaultMetaEsc >= 0)
     {
       ClearAction(&ktab[DefaultMetaEsc]);
       ktab[DefaultMetaEsc].nr = 108;
     }
 }
    }
}

int
ParseSwitch(act, var)
struct action *act;
int *var;
{
  if (*act->args == 0)
    {
      *var ^= 1;
      return 0;
    }
  return ParseOnOff(act, var);
}

static int
ParseOnOff(act, var)
struct action *act;
int *var;
{
  register int num = -1;
  char **args = act->args;

  if (args[1] == 0)
    {
      if (strcmp(args[0], "on") == 0)
 num = 1;
      else if (strcmp(args[0], "off") == 0)
 num = 0;
    }
  if (num < 0)
    {
      Msg(0, "%s: %s: invalid argument. Give 'on' or 'off'", rc_name, comms[act->nr].name);
      return -1;
    }
  *var = num;
  return 0;
}

int
ParseSaveStr(act, var)
struct action *act;
char **var;
{
  char **args = act->args;
  if (*args == 0 || args[1])
    {
      Msg(0, "%s: %s: one argument required.", rc_name, comms[act->nr].name);
      return -1;
    }
  if (*var)
    free(*var);
  *var = SaveStr(*args);
  return 0;
}

int
ParseNum(act, var)
struct action *act;
int *var;
{
  int i;
  char *p, **args = act->args;

  p = *args;
  if (p == 0 || *p == 0 || args[1])
    {
      Msg(0, "%s: %s: invalid argument. Give one argument.",
          rc_name, comms[act->nr].name);
      return -1;
    }
  i = 0;
  while (*p)
    {
      if (*p >= '0' && *p <= '9')
 i = 10 * i + (*p - '0');
      else
 {
   Msg(0, "%s: %s: invalid argument. Give numeric argument.",
       rc_name, comms[act->nr].name);
   return -1;
 }
      p++;
    }
  do {} while (0);
  *var = i;
  return 0;
}

static int
ParseNum1000(act, var)
struct action *act;
int *var;
{
  int i;
  char *p, **args = act->args;
  int dig = 0;

  p = *args;
  if (p == 0 || *p == 0 || args[1])
    {
      Msg(0, "%s: %s: invalid argument. Give one argument.",
          rc_name, comms[act->nr].name);
      return -1;
    }
  i = 0;
  while (*p)
    {
      if (*p >= '0' && *p <= '9')
 {
   if (dig < 4)
     i = 10 * i + (*p - '0');
          else if (dig == 4 && *p >= '5')
     i++;
   if (dig)
     dig++;
 }
      else if (*p == '.' && !dig)
        dig++;
      else
 {
   Msg(0, "%s: %s: invalid argument. Give floating point argument.",
       rc_name, comms[act->nr].name);
   return -1;
 }
      p++;
    }
  if (dig == 0)
    i *= 1000;
  else
    while (dig++ < 4)
      i *= 10;
  if (i < 0)
    i = (int)((unsigned int)~0 >> 1);
  do {} while (0);
  *var = i;
  return 0;
}

static struct win *
WindowByName(s)
char *s;
{
  struct win *p;

  for (p = windows; p; p = p->w_next)
    if (!strcmp(p->w_title, s))
      return p;
  for (p = windows; p; p = p->w_next)
    if (!strncmp(p->w_title, s, strlen(s)))
      return p;
  return 0;
}

static int
WindowByNumber(str)
char *str;
{
  int i;
  char *s;

  for (i = 0, s = str; *s; s++)
    {
      if (*s < '0' || *s > '9')
        break;
      i = i * 10 + (*s - '0');
    }
  return *s ? -1 : i;
}






int
WindowByNoN(str)
char *str;
{
  int i;
  struct win *p;

  if ((i = WindowByNumber(str)) < 0 || i >= maxwin)
    {
      if ((p = WindowByName(str)))
 return p->w_number;
      return -1;
    }
  return i;
}

static int
ParseWinNum(act, var)
struct action *act;
int *var;
{
  char **args = act->args;
  int i = 0;

  if (*args == 0 || args[1])
    {
      Msg(0, "%s: %s: one argument required.", rc_name, comms[act->nr].name);
      return -1;
    }

  i = WindowByNoN(*args);
  if (i < 0)
    {
      Msg(0, "%s: %s: invalid argument. Give window number or name.",
          rc_name, comms[act->nr].name);
      return -1;
    }
  do {} while (0);
  *var = i;
  return 0;
}

static int
ParseBase(act, p, var, base, bname)
struct action *act;
char *p;
int *var;
int base;
char *bname;
{
  int i = 0;
  int c;

  if (*p == 0)
    {
      Msg(0, "%s: %s: empty argument.", rc_name, comms[act->nr].name);
      return -1;
    }
  while ((c = *p++))
    {
      if (c >= 'a' && c <= 'z')
 c -= 'a' - 'A';
      if (c >= 'A' && c <= 'Z')
 c -= 'A' - ('0' + 10);
      c -= '0';
      if (c < 0 || c >= base)
 {
   Msg(0, "%s: %s: argument is not %s.", rc_name, comms[act->nr].name, bname);
   return -1;
 }
      i = base * i + c;
    }
  do {} while (0);
  *var = i;
  return 0;
}

static int
IsNum(s, base)
register char *s;
register int base;
{
  for (base += '0'; *s; ++s)
    if (*s < '0' || *s > base)
      return 0;
  return 1;
}

int
IsNumColon(s, base, p, psize)
int base, psize;
char *s, *p;
{
  char *q;
  if ((q = rindex(s, ':')) != 0)
    {
      strncpy(p, q + 1, psize - 1);
      p[psize - 1] = '\0';
      *q = '\0';
    }
  else
    *p = '\0';
  return IsNum(s, base);
}

void
SwitchWindow(n)
int n;
{
  struct win *p;

  do {} while (0);
  if (n < 0 || n >= maxwin)
    {
      ShowWindows(-1);
      return;
    }
  if ((p = wtab[n]) == 0)
    {
      ShowWindows(n);
      return;
    }
  if (display == 0)
    {
      fore = p;
      return;
    }
  if (p == display->d_fore)
    {
      Msg(0, "This IS window %d (%s).", n, p->w_title);
      return;
    }

  if (AclCheckPermWin(display->d_user, 2, p))
    {
      Msg(0, "Access to window %d denied.", p->w_number);
      return;
    }

  SetForeWindow(p);
  Activate(fore->w_norefresh);
}





void
SetForeWindow(wi)
struct win *wi;
{
  struct win *p;
  if (display == 0)
    {
      fore = wi;
      return;
    }
  p = ((struct win *)(display->d_forecv->c_layer)->l_bottom->l_data);
  SetCanvasWindow(display->d_forecv, wi);
  if (p)
    WindowChanged(p, 'u');
  if (wi)
    WindowChanged(wi, 'u');
  flayer = display->d_forecv->c_layer;

}
# 5312 "process.c"
void
Activate(norefresh)
int norefresh;
{
  do {} while (0);
  if (display == 0)
    return;
  if (display->d_status)
    {
      Msg(0, "%s", "");
      RemoveStatus();
    }

  if (MayResizeLayer(display->d_forecv->c_layer))
    ResizeLayer(display->d_forecv->c_layer, display->d_forecv->c_xe - display->d_forecv->c_xs + 1, display->d_forecv->c_ye - display->d_forecv->c_ys + 1, display);

  fore = display->d_fore;
  if (fore)
    {

      if (fore->w_monitor != 0)
 fore->w_monitor = 1;
      fore->w_bell = 0;
      WindowChanged(fore, 'f');
# 5345 "process.c"
    }
  Redisplay(norefresh + all_norefresh);
}


static int
NextWindow()
{
  register struct win **pp;
  int n = fore ? fore->w_number : maxwin;
  struct win *group = fore ? fore->w_group : 0;

  for (pp = fore ? wtab + n + 1 : wtab; pp != wtab + n; pp++)
    {
      if (pp == wtab + maxwin)
 pp = wtab;
      if (*pp)
 {
   if (!fore || group == (*pp)->w_group)
     break;
 }
    }
  if (pp == wtab + n)
    return -1;
  return pp - wtab;
}

static int
PreviousWindow()
{
  register struct win **pp;
  int n = fore ? fore->w_number : -1;
  struct win *group = fore ? fore->w_group : 0;

  for (pp = wtab + n - 1; pp != wtab + n; pp--)
    {
      if (pp == wtab - 1)
 pp = wtab + maxwin - 1;
      if (*pp)
 {
   if (!fore || group == (*pp)->w_group)
     break;
 }
    }
  if (pp == wtab + n)
    return -1;
  return pp - wtab;
}

static int
MoreWindows()
{
  char *m = "No other window.";
  if (windows && (fore == 0 || windows->w_next))
    return 1;
  if (fore == 0)
    {
      Msg(0, "No window available");
      return 0;
    }
  Msg(0, m, fore->w_number);
  return 0;
}

void
KillWindow(wi)
struct win *wi;
{
  struct win **pp, *p;
  struct canvas *cv;
  int gotone;
  struct layout *lay;




  for (pp = &windows; (p = *pp); pp = &p->w_next)
    if (p == wi)
      break;
  do {} while (0);
  *pp = p->w_next;
  wi->w_inlen = 0;
  wtab[wi->w_number] = 0;

  if (windows == 0)
    {
      FreeWindow(wi);
      Finit(0);
    }




  for (display = displays; display; display = display->d_next)
    {
      gotone = 0;
      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 {
   if (((struct win *)(cv->c_layer)->l_bottom->l_data) != wi)
     continue;

   SetCanvasWindow(cv, FindNiceWindow(display->d_other, 0));
   gotone = 1;
 }
      if (gotone)
 {

   if (wi->w_zdisplay == display)
     {
       display->d_blocked = 0;
       display->d_readev.condpos = display->d_readev.condneg = 0;
     }

   Activate(-1);
 }
    }


  for (lay = layouts; lay; lay = lay->lay_next)
    UpdateLayoutCanvas(&lay->lay_canvas, wi);

  FreeWindow(wi);
  WindowChanged((struct win *)0, 'w');
  WindowChanged((struct win *)0, 'W');
  WindowChanged((struct win *)0, 0);
}

static void
LogToggle(on)
int on;
{
  char buf[1024];

  if ((fore->w_log != 0) == on)
    {
      if (display && !*rc_name)
 Msg(0, "You are %s logging.", on ? "already" : "not");
      return;
    }
  if (fore->w_log != 0)
    {
      Msg(0, "Logfile \"%s\" closed.", fore->w_log->name);
      logfclose(fore->w_log);
      fore->w_log = 0;
      WindowChanged(fore, 'f');
      return;
    }
  if (DoStartLog(fore, buf, sizeof(buf)))
    {
      Msg((*__errno_location ()), "Error opening logfile \"%s\"", buf);
      return;
    }
  if (ftell(fore->w_log->fp) == 0)
    Msg(0, "Creating logfile \"%s\".", fore->w_log->name);
  else
    Msg(0, "Appending to logfile \"%s\".", fore->w_log->name);
  WindowChanged(fore, 'f');
}

char *
AddWindows(buf, len, flags, where)
char *buf;
int len;
int flags;
int where;
{
  register char *s, *ss;
  register struct win **pp, *p;
  register char *cmd;
  int l;

  s = ss = buf;
  if ((flags & 8) && where < 0)
    {
      *s = 0;
      return ss;
    }
  for (pp = ((flags & 4) && where >= 0) ? wtab + where + 1: wtab; pp < wtab + maxwin; pp++)
    {
      int rend = -1;
      if (pp - wtab == where && ss == buf)
        ss = s;
      if ((p = *pp) == 0)
 continue;
      if ((flags & 1) && display && p == display->d_fore)
 continue;
      if (display && display->d_fore && display->d_fore->w_group != p->w_group)
 continue;

      cmd = p->w_title;
      l = strlen(cmd);
      if (l > 20)
        l = 20;
      if (s - buf + l > len - 24)
 break;
      if (s > buf || (flags & 4))
 {
   *s++ = ' ';
   *s++ = ' ';
 }
      if (p->w_number == where)
        {
          ss = s;
          if (flags & 8)
            break;
        }
      if (!(flags & 4) || where < 0 || ((flags & 4) && where < p->w_number))
 {
   if (p->w_monitor == 3 && renditions[REND_MONITOR] != -1)
     rend = renditions[REND_MONITOR];
   else if ((p->w_bell == 2 || p->w_bell == 1) && renditions[REND_BELL] != -1)
     rend = renditions[REND_BELL];
   else if ((p->w_silence == 2 || p->w_silence == 3) && renditions[REND_SILENCE] != -1)
     rend = renditions[REND_SILENCE];
 }
      if (rend != -1)
 AddWinMsgRend(s, rend);
      sprintf(s, "%d", p->w_number);
      s += strlen(s);
      if (display && p == display->d_fore)
 *s++ = '*';
      if (!(flags & 2))
 {
          if (display && p == display->d_other)
     *s++ = '-';
          s = AddWindowFlags(s, len, p);
 }
      *s++ = ' ';
      strncpy(s, cmd, l);
      s += l;
      if (rend != -1)
 AddWinMsgRend(s, -1);
    }
  *s = 0;
  return ss;
}

char *
AddWindowFlags(buf, len, p)
char *buf;
int len;
struct win *p;
{
  char *s = buf;
  if (p == 0 || len < 12)
    {
      *s = 0;
      return s;
    }






  if (p->w_layer.l_cvlist && p->w_layer.l_cvlist->c_lnext)
    *s++ = '&';
  if (p->w_monitor == 3

      && (((p->w_mon_notify)[(display->d_user->u_id) >> 3]) & (0x80 >> ((display->d_user->u_id) & 7)))

     )
    *s++ = '@';
  if (p->w_bell == 2)
    *s++ = '!';

  if (p->w_slot != (slot_t) 0 && p->w_slot != (slot_t) -1)
    *s++ = '$';

  if (p->w_log != 0)
    {
      strcpy(s, "(L)");
      s += 3;
    }
  if (p->w_ptyfd < 0 && p->w_type != 3)
    *s++ = 'Z';
  *s = 0;
  return s;
}

char *
AddOtherUsers(buf, len, p)
char *buf;
int len;
struct win *p;
{
  struct display *d, *olddisplay = display;
  struct canvas *cv;
  char *s;
  int l;

  s = buf;
  for (display = displays; display; display = display->d_next)
    {
      if (olddisplay && display->d_user == olddisplay->d_user)
 continue;
      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 if (((struct win *)(cv->c_layer)->l_bottom->l_data) == p)
   break;
      if (!cv)
 continue;
      for (d = displays; d && d != display; d = d->d_next)
 if (display->d_user == d->d_user)
   break;
      if (d && d != display)
 continue;
      if (len > 1 && s != buf)
 {
   *s++ = ',';
   len--;
 }
      l = strlen(display->d_user->u_name);
      if (l + 1 > len)
 break;
      strcpy(s, display->d_user->u_name);
      s += l;
      len -= l;
    }
  *s = 0;
  display = olddisplay;
  return s;
}

void
ShowWindows(where)
int where;
{
  char buf[1024];
  char *s, *ss;

  if (display && where == -1 && display->d_fore)
    where = display->d_fore->w_number;
  ss = AddWindows(buf, sizeof(buf), 0, where);
  s = buf + strlen(buf);
  if (display && ss - buf > display->d_width / 2)
    {
      ss -= display->d_width / 2;
      if (s - ss < display->d_width)
 {
   ss = s - display->d_width;
   if (ss < buf)
     ss = buf;
 }
    }
  else
    ss = buf;
  Msg(0, "%s", ss);
}





static void
ShowWindowsX(str)
char *str;
{
 int i;
 do {} while (0);
 for (i = 0; i < maxwin ; i++) {
  if (!wtab[i])
   continue;
  Msg(0, "%s", MakeWinMsg(str, wtab[i], '%'));
 }
}


static void
ShowInfo()
{
  char buf[512], *p;
  register struct win *wp = fore;
  register int i;

  if (wp == 0)
    {
      Msg(0, "(%d,%d)/(%d,%d) no window", display->d_x + 1, display->d_y + 1, display->d_width, display->d_height);
      return;
    }
  p = buf;
  if (buf < (p += GetAnsiStatus(wp, p)))
    *p++ = ' ';
  sprintf(p, "(%d,%d)/(%d,%d)",
    wp->w_layer.l_x + 1, wp->w_layer.l_y + 1, wp->w_layer.l_width, wp->w_layer.l_height);

  sprintf(p += strlen(p), "+%d", wp->w_histheight);

  sprintf(p += strlen(p), " %c%sflow",
     (wp->w_flow & (1<<0)) ? '+' : '-',
   (wp->w_flow & (1<<2)) ? "" :
    ((wp->w_flow & (1<<1)) ? "(+)" : "(-)"));
  if (!wp->w_wrap) sprintf(p += strlen(p), " -wrap");
  if (wp->w_insert) sprintf(p += strlen(p), " ins");
  if (wp->w_origin) sprintf(p += strlen(p), " org");
  if (wp->w_keypad) sprintf(p += strlen(p), " app");
  if (wp->w_log) sprintf(p += strlen(p), " log");
  if (wp->w_monitor != 0

      && (((wp->w_mon_notify)[(display->d_user->u_id) >> 3]) & (0x80 >> ((display->d_user->u_id) & 7)))

     )
    sprintf(p += strlen(p), " mon");
  if (wp->w_mouse) sprintf(p += strlen(p), " mouse");

  if (wp->w_bce) sprintf(p += strlen(p), " bce");

  if (!wp->w_c1) sprintf(p += strlen(p), " -c1");
  if (wp->w_norefresh) sprintf(p += strlen(p), " nored");

  p += strlen(p);


  if (wp->w_layer.l_encoding && (display == 0 || display->d_encoding != wp->w_layer.l_encoding || EncodingDefFont(wp->w_layer.l_encoding) <= 0))
    {
      *p++ = ' ';
      strcpy(p, EncodingName(wp->w_layer.l_encoding));
      p += strlen(p);
    }

  if (wp->w_layer.l_encoding != 8)


    if ((display->d_tcs[100].str) || ((display->d_tcs[98].str) && *(display->d_tcs[98].str)))
      {
 if (wp->w_gr == 2)
   {
     sprintf(p, " G%c", wp->w_Charset + '0');
     if (wp->w_FontE >= ' ')
       p[3] = wp->w_FontE;
     else
       {
         p[3] = '^';
         p[4] = wp->w_FontE ^ 0x40;
  p++;
       }
     p[4] = '[';
     p++;
   }
 else if (wp->w_gr)
   sprintf(p++, " G%c%c[", wp->w_Charset + '0', wp->w_CharsetR + '0');
 else
   sprintf(p, " G%c[", wp->w_Charset + '0');
 p += 4;
 for (i = 0; i < 4; i++)
   {
     if (wp->w_charsets[i] == 0)
       *p++ = 'B';
     else if (wp->w_charsets[i] >= ' ')
       *p++ = wp->w_charsets[i];
     else
       {
  *p++ = '^';
  *p++ = wp->w_charsets[i] ^ 0x40;
       }
   }
 *p++ = ']';
 *p = 0;
      }


  if (wp->w_type == 1)
    {

      *p++ = ' ';
      TtyGetModemStatus(wp->w_ptyfd, p);
    }







  Msg(0, "%s %d(%s)", buf, wp->w_number, wp->w_title);
}

static void
ShowDInfo()
{
  char buf[512], *p;
  if (display == 0)
    return;
  p = buf;
  sprintf(p, "(%d,%d)", display->d_width, display->d_height),
  p += strlen(p);

  if (display->d_encoding)
    {
      *p++ = ' ';
      strcpy(p, EncodingName(display->d_encoding));
      p += strlen(p);
    }

  if ((display->d_tcs[96].flg))
    {
      strcpy(p, " xterm");
      p += strlen(p);
    }

  if (display->d_hascolor)
    {
      strcpy(p, " color");
      p += strlen(p);
    }


  if ((display->d_tcs[97].flg))
    {
      strcpy(p, " iso2022");
      p += strlen(p);
    }
  else if ((display->d_tcs[98].str) && *(display->d_tcs[98].str))
    {
      strcpy(p, " altchar");
      p += strlen(p);
    }

  Msg(0, "%s", buf);
}

static void
AKAfin(buf, len, data)
char *buf;
int len;
char *data;
{
  do {} while (0);
  if (len && fore)
    ChangeAKA(fore, buf, strlen(buf));

  enter_window_name_mode = 0;
}

static void
InputAKA()
{
  char *s, *ss;
  int n;

  if (enter_window_name_mode == 1) return;

  enter_window_name_mode = 1;

  Input("Set window's title to: ", sizeof(fore->w_akabuf) - 1, 0, AKAfin, ((void*)0), 0);
  s = fore->w_title;
  if (!s)
    return;
  for (; *s; s++)
    {
      if ((*(unsigned char *)s & 0x7f) < 0x20 || *s == 0x7f)
 continue;
      ss = s;
      n = 1;
      (*flayer->l_layfn->lf_LayProcess)(&ss, &n);
    }
}

static void
Colonfin(buf, len, data)
char *buf;
int len;
char *data;
{
  char mbuf[256];

  RemoveStatus();
  if (buf[len] == '\t')
    {
      int m, x;
      int l = 0, r = 187;
      int showmessage = 0;
      char *s = buf;

      while (*s && s - buf < len)
 if (*s++ == ' ')
   return;


      if (display &&
   (captionalways || display->d_has_hstatus == 1 || (display->d_canvas.c_slperp && display->d_canvas.c_slperp->c_slnext)))
 showmessage = 1;

      while (l <= r)
 {
   m = (l + r) / 2;
   x = strncmp(buf, comms[m].name, len);
   if (x > 0)
     l = m + 1;
   else if (x < 0)
     r = m - 1;
   else
     {
       s = mbuf;
       for (l = m - 1; l >= 0 && strncmp(buf, comms[l].name, len) == 0; l--)
  ;
       for (m = ++l; m <= r && strncmp(buf, comms[m].name, len) == 0 && s - mbuf < sizeof(mbuf); m++)
  s += snprintf(s, sizeof(mbuf) - (s - mbuf), " %s", comms[m].name);
       if (l < m - 1)
  {
    if (showmessage)
      Msg(0, "Possible commands:%s", mbuf);
  }
       else
  {
    s = mbuf;
    len = snprintf(mbuf, sizeof(mbuf), "%s \t", comms[l].name + len);
    if (len > 0 && len < sizeof(mbuf))
      (*flayer->l_layfn->lf_LayProcess)(&s, &len);
  }
       break;
     }
 }
      if (l > r && showmessage)
 Msg(0, "No commands matching '%*s'", len, buf);
      return;
    }

  if (!len || buf[len])
    return;

  len = strlen(buf) + 1;
  if (len > (int)sizeof(mbuf))
    RcLine(buf, len);
  else
    {
      bcopy(buf, mbuf, len);
      RcLine(mbuf, sizeof mbuf);
    }
}

static void
SelectFin(buf, len, data)
char *buf;
int len;
char *data;
{
  int n;

  if (!len || !display)
    return;
  if (len == 1 && *buf == '-')
    {
      SetForeWindow((struct win *)0);
      Activate(0);
      return;
    }
  if ((n = WindowByNoN(buf)) < 0)
    return;
  SwitchWindow(n);
}

static void
SelectLayoutFin(buf, len, data)
char *buf;
int len;
char *data;
{
  struct layout *lay;

  if (!len || !display)
    return;
  if (len == 1 && *buf == '-')
    {
      LoadLayout((struct layout *)0, (struct canvas *)0);
      Activate(0);
      return;
    }
  lay = FindLayout(buf);
  if (!lay)
    Msg(0, "No such layout\n");
  else if (lay == display->d_layout)
    Msg(0, "This IS layout %d (%s).\n", lay->lay_number, lay->lay_title);
  else
    {
      LoadLayout(lay, &display->d_canvas);
      Activate(0);
    }
}


static void
InputSelect()
{
  Input("Switch to window: ", 20, 0, SelectFin, ((void*)0), 0);
}

static char setenv_var[31];


static void
SetenvFin1(buf, len, data)
char *buf;
int len;
char *data;
{
  if (!len || !display)
    return;
  InputSetenv(buf);
}

static void
SetenvFin2(buf, len, data)
char *buf;
int len;
char *data;
{
  if (!len || !display)
    return;
  do {} while (0);
  xsetenv(setenv_var, buf);
  MakeNewEnv();
}

static void
InputSetenv(arg)
char *arg;
{
  static char setenv_buf[50 + sizeof(setenv_var)];

  if (arg)
    {
      strncpy(setenv_var, arg, sizeof(setenv_var) - 1);
      sprintf(setenv_buf, "Enter value for %s: ", setenv_var);
      Input(setenv_buf, 30, 0, SetenvFin2, ((void*)0), 0);
    }
  else
    Input("Setenv: Enter variable name: ", 30, 0, SetenvFin1, ((void*)0), 0);
}
# 6081 "process.c"
void
DoScreen(fn, av)
char *fn, **av;
{
  struct NewWindow nwin;
  register int num;
  char buf[20];

  nwin = nwin_undef;
  while (av && *av && av[0][0] == '-')
    {
      if (av[0][1] == '-')
 {
   av++;
   break;
 }
      switch (av[0][1])
 {
 case 'f':
   switch (av[0][2])
     {
     case 'n':
     case '0':
       nwin.flowflag = (1<<0) * 0;
       break;
     case 'y':
     case '1':
     case '\0':
       nwin.flowflag = (1<<0) * 1;
       break;
     case 'a':
       nwin.flowflag = (1<<2);
       break;
     default:
       break;
     }
   break;
 case 't':
   if (av[0][2])
     nwin.aka = &av[0][2];
   else if (*++av)
     nwin.aka = *av;
   else
     --av;
   break;
 case 'T':
   if (av[0][2])
     nwin.term = &av[0][2];
   else if (*++av)
     nwin.term = *av;
   else
     --av;
   break;
 case 'h':
   if (av[0][2])
     nwin.histheight = atoi(av[0] + 2);
   else if (*++av)
     nwin.histheight = atoi(*av);
   else
     --av;
   break;

 case 'l':
   switch (av[0][2])
     {
     case 'n':
     case '0':
       nwin.lflag = 0;
       break;
     case 'y':
     case '1':
     case '\0':
       nwin.lflag = 1;
       break;
     case 'a':
       nwin.lflag = 3;
       break;
     default:
       break;
     }
   break;

 case 'a':
   nwin.aflag = 1;
   break;
 case 'M':
   nwin.monitor = 1;
   break;
 case 'L':
   nwin.Lflag = 1;
   break;
 default:
   Msg(0, "%s: screen: invalid option -%c.", fn, av[0][1]);
   break;
 }
      ++av;
    }
  num = 0;
  if (av && *av && IsNumColon(*av, 10, buf, sizeof(buf)))
    {
      if (*buf != '\0')
 nwin.aka = buf;
      num = atoi(*av);
      if (num < 0 || (maxwin && num > maxwin - 1) || (!maxwin && num > 100 - 1))
 {
   Msg(0, "%s: illegal screen number %d.", fn, num);
   num = 0;
 }
      nwin.StartAt = num;
      ++av;
    }
  if (av && *av)
    {
      nwin.args = av;
      if (!nwin.aka)
        nwin.aka = Filename(*av);
    }
  MakeWindow(&nwin);
}
# 6211 "process.c"
int
CompileKeys(s, sl, array)
char *s;
int sl;
unsigned char *array;
{
  int i;
  unsigned char key, value;

  if (sl == 0)
    {
      for (i = 0; i < 256; i++)
        array[i] = i;
      return 0;
    }
  do {} while (0);
  while (sl)
    {
      key = *(unsigned char *)s++;
      if (*s != '=' || sl < 3)
 return -1;
      sl--;
      do
 {
   s++;
   sl -= 2;
   value = *(unsigned char *)s++;
   array[value] = key;
 }
      while (*s == '=' && sl >= 2);
      if (sl == 0)
 break;
      if (*s++ != ':')
 return -1;
      sl--;
    }
  return 0;
}







static void
pow_detach_fn(buf, len, data)
char *buf;
int len;
char *data;
{
  do {} while (0);
  if (len)
    {
      *buf = 0;
      return;
    }
  if (ktab[(int)(unsigned char)*buf].nr != 126)
    {
      if (display)
        write(display->d_userfd, "\007", 1);
      Msg(0, "Detach aborted.");
    }
  else
    Detach(3);
}



static void
copy_reg_fn(buf, len, data)
char *buf;
int len;
char *data;
{
  struct plop *pp = plop_tab + (int)(unsigned char)*buf;

  if (len)
    {
      *buf = 0;
      return;
    }
  if (pp->buf)
    free(pp->buf);
  pp->buf = 0;
  pp->len = 0;
  if (display->d_user->u_plop.len)
    {
      if ((pp->buf = (char *)malloc(display->d_user->u_plop.len)) == ((void*)0))
 {
   Msg(0, "%s", strnomem);
   return;
 }
      bcopy(display->d_user->u_plop.buf, pp->buf, display->d_user->u_plop.len);
    }
  pp->len = display->d_user->u_plop.len;

  pp->enc = display->d_user->u_plop.enc;

  Msg(0, "Copied %d characters into register %c", display->d_user->u_plop.len, *buf);
}

static void
ins_reg_fn(buf, len, data)
char *buf;
int len;
char *data;
{
  struct plop *pp = plop_tab + (int)(unsigned char)*buf;

  if (len)
    {
      *buf = 0;
      return;
    }
  if (!fore)
    return;
  if (*buf == '.')
    Msg(0, "ins_reg_fn: Warning: pasting real register '.'!");
  if (pp->buf)
    {
      MakePaster(&fore->w_paster, pp->buf, pp->len, 0);
      return;
    }
  Msg(0, "Empty register.");
}


static void
process_fn(buf, len, data)
char *buf;
int len;
char *data;
{
  struct plop *pp = plop_tab + (int)(unsigned char)*buf;

  if (len)
    {
      *buf = 0;
      return;
    }
  if (pp->buf)
    {
      ProcessInput(pp->buf, pp->len);
      return;
    }
  Msg(0, "Empty register.");
}

static void
confirm_fn(buf, len, data)
char *buf;
int len;
char *data;
{
  struct action act;

  if (len || (*buf != 'y' && *buf != 'Y'))
    {
      *buf = 0;
      return;
    }
  act.nr = *(int *)data;
  act.args = noargs;
  act.argl = 0;
  act.quiet = 0;
  DoAction(&act, -1);
}


struct inputsu
{
  struct acluser **up;
  char name[24];
  char pw1[130];
  char pw2[130];
};

static void
su_fin(buf, len, data)
char *buf;
int len;
char *data;
{
  struct inputsu *i = (struct inputsu *)data;
  char *p;
  int l;

  if (!*i->name)
    { p = i->name; l = sizeof(i->name) - 1; }
  else if (!*i->pw1)
    { strcpy(p = i->pw1, "\377"); l = sizeof(i->pw1) - 1; }
  else
    { strcpy(p = i->pw2, "\377"); l = sizeof(i->pw2) - 1; }
  if (buf && len)
    strncpy(p, buf, 1 + ((l < len) ? l : len));
  if (!*i->name)
    Input("Screen User: ", sizeof(i->name) - 1, 0, su_fin, (char *)i, 0);
  else if (!*i->pw1)
    Input("User's UNIX Password: ", sizeof(i->pw1)-1, 0|1, su_fin, (char *)i, 0);
  else if (!*i->pw2)
    Input("User's Screen Password: ", sizeof(i->pw2)-1, 0|1, su_fin, (char *)i, 0);
  else
    {
      if ((p = DoSu(i->up, i->name, i->pw2, i->pw1)))
        Msg(0, "%s", p);
      free((char *)i);
    }
}

static int
InputSu(w, up, name)
struct win *w;
struct acluser **up;
char *name;
{
  struct inputsu *i;

  if (!(i = (struct inputsu *)calloc(1, sizeof(struct inputsu))))
    return -1;

  i->up = up;
  if (name && *name)
    su_fin(name, (int)strlen(name), (char *)i);
  else
    su_fin((char *)0, 0, (char *)i);
  return 0;
}




static void
pass1(buf, len, data)
char *buf;
int len;
char *data;
{
  struct acluser *u = (struct acluser *)data;

  if (!*buf)
    return;
  do {} while (0);
  if (u->u_password != NullStr)
    free((char *)u->u_password);
  u->u_password = SaveStr(buf);
  bzero(buf, strlen(buf));
  Input("Retype new password:", 100, 1, pass2, data, 0);
}

static void
pass2(buf, len, data)
char *buf;
int len;
char *data;
{
  int st;
  char salt[3];
  struct acluser *u = (struct acluser *)data;

  do {} while (0);
  if (!buf || strcmp(u->u_password, buf))
    {
      Msg(0, "[ Passwords don't match - checking turned off ]");
      if (u->u_password != NullStr)
        {
          bzero(u->u_password, strlen(u->u_password));
          free((char *)u->u_password);
 }
      u->u_password = NullStr;
    }
  else if (u->u_password[0] == '\0')
    {
      Msg(0, "[ No password - no secure ]");
      if (buf)
        bzero(buf, strlen(buf));
    }

  if (u->u_password != NullStr)
    {
      for (st = 0; st < 2; st++)
 salt[st] = 'A' + (int)((time(0) >> 6 * st) % 26);
      salt[2] = 0;
      buf = crypt(u->u_password, salt);
      bzero(u->u_password, strlen(u->u_password));
      free((char *)u->u_password);
      if (!buf)
 {
   Msg(0, "[ crypt() error - no secure ]");
   u->u_password = NullStr;
   return;
 }
      u->u_password = SaveStr(buf);
      bzero(buf, strlen(buf));

      if (u->u_plop.buf)
 UserFreeCopyBuffer(u);
      u->u_plop.len = strlen(u->u_password);

      u->u_plop.enc = 0;

      if (!(u->u_plop.buf = SaveStr(u->u_password)))
 {
   Msg(0, "%s", strnomem);
          display->d_user->u_plop.len = 0;
 }
      else
 Msg(0, "[ Password moved into copybuffer ]");



    }
}


static int
digraph_find(buf)
const char *buf;
{
  int i;
  for (i = 0; i < 512 && digraphs[i].d[0]; i++)
    if ((digraphs[i].d[0] == (unsigned char)buf[0] && digraphs[i].d[1] == (unsigned char)buf[1]) ||
 (digraphs[i].d[0] == (unsigned char)buf[1] && digraphs[i].d[1] == (unsigned char)buf[0]))
      break;
  return i;
}

static void
digraph_fn(buf, len, data)
char *buf;
int len;
char *data;
{
  int ch, i, x;

  ch = buf[len];
  if (ch)
    {
      buf[len + 1] = ch;
      if (ch < ' ' || ch == '\177')
 return;
      if (len >= 1 && ((*buf == 'U' && buf[1] == '+') || (*buf == '0' && (buf[1] == 'x' || buf[1] == 'X'))))
 {
   if (len == 1)
     return;
   if ((ch < '0' || ch > '9') && (ch < 'a' || ch > 'f') && (ch < 'A' || ch > 'F'))
     {
       buf[len] = '\034';
       return;
     }
   if (len == (*buf == 'U' ? 5 : 3))
     buf[len] = '\n';
   return;
 }
      if (len && *buf == '0')
 {
   if (ch < '0' || ch > '7')
     {
       buf[len] = '\034';
       return;
     }
   if (len == 3)
     buf[len] = '\n';
   return;
 }
      if (len == 1)
        buf[len] = '\n';
      return;
    }
  if (len < 1)
    return;
  if (buf[len + 1])
    {
      buf[len] = buf[len + 1];
      len++;
    }
  if (len < 2)
    return;
  if (!parse_input_int(buf, len, &x))
    {
      i = digraph_find(buf);
      if ((x = digraphs[i].value) <= 0)
 {
   Msg(0, "Unknown digraph");
   return;
 }
    }
  i = 1;
  *buf = x;

  if (flayer->l_encoding == 8)
    i = ToUtf8(buf, x);

  while(i)
    (*flayer->l_layfn->lf_LayProcess)(&buf, &i);
}


int
StuffKey(i)
int i;
{
  struct action *act;
  int discard = 0;
  int keyno = i;

  do {} while (0);





  if (i < (188 -106) && display->d_ESCseen)
    {
      struct action *act = &display->d_ESCseen[i + 256];
      if (act->nr != -1)
 {
   display->d_ESCseen = 0;
   WindowChanged(fore, 'E');
          DoAction(act, i + 256);
   return 0;
 }
      discard = 1;
    }

  if (i >= 166 - 106 && i < 170 - 106 && display->d_cursorkeys)
    i += 188 - 166;
  else if (i >= 170 - 106 && i < 188 - 106 && display->d_keypad)
    i += 188 - 166;
  do {} while (0);
  flayer = display->d_forecv->c_layer;
  fore = display->d_fore;
  act = 0;

  if (flayer && flayer->l_mode == 1)
    act = i < (188 -106)+(188 -166) ? &mmtab[i] : &kmap_exts[i - ((188 -106)+(188 -166))].mm;

  if ((!act || act->nr == -1) && !display->d_mapdefault)
    act = i < (188 -106)+(188 -166) ? &umtab[i] : &kmap_exts[i - ((188 -106)+(188 -166))].um;
  if (!act || act->nr == -1)
    act = i < (188 -106)+(188 -166) ? &dmtab[i] : &kmap_exts[i - ((188 -106)+(188 -166))].dm;

  if (discard && (!act || act->nr != 35))
    {

      if (display->d_tcs[keyno + 106].str && strlen(display->d_tcs[keyno + 106].str) == 1)
 return -1;
      if (display->d_ESCseen)
        {
          display->d_ESCseen = 0;
          WindowChanged(fore, 'E');
        }
      return 0;
    }
  display->d_mapdefault = 0;

  if (act == 0 || act->nr == -1)
    return -1;
  DoAction(act, 0);
  return 0;
}



static int
IsOnDisplay(wi)
struct win *wi;
{
  struct canvas *cv;
  do {} while (0);
  for (cv = display->d_cvlist; cv; cv = cv->c_next)
    if (((struct win *)(cv->c_layer)->l_bottom->l_data) == wi)
      return 1;
  return 0;
}

struct win *
FindNiceWindow(wi, presel)
struct win *wi;
char *presel;
{
  int i;

  do {} while (0);
  if (presel)
    {
      i = WindowByNoN(presel);
      if (i >= 0)
 wi = wtab[i];
    }
  if (!display)
    return wi;

  if (wi && AclCheckPermWin(display->d_user, 2, wi))
    wi = 0;

  if (!wi || (IsOnDisplay(wi) && !presel))
    {

      wi = 0;

      for (wi = windows; wi; wi = wi->w_next)
 if (!wi->w_layer.l_cvlist && !AclCheckPermWin(display->d_user, 1, wi))
   break;
      if (!wi)
        for (wi = windows; wi; wi = wi->w_next)
   if (wi->w_layer.l_cvlist && !IsOnDisplay(wi) && !AclCheckPermWin(display->d_user, 1, wi))
     break;
      if (!wi)
 for (wi = windows; wi; wi = wi->w_next)
   if (!wi->w_layer.l_cvlist && !AclCheckPermWin(display->d_user, 2, wi))
     break;
      if (!wi)
 for (wi = windows; wi; wi = wi->w_next)
   if (wi->w_layer.l_cvlist && !IsOnDisplay(wi) && !AclCheckPermWin(display->d_user, 2, wi))
     break;

      if (!wi)
 for (wi = windows; wi; wi = wi->w_next)
   if (!wi->w_layer.l_cvlist)
     break;
      if (!wi)
 for (wi = windows; wi; wi = wi->w_next)
   if (wi->w_layer.l_cvlist && !IsOnDisplay(wi))
     break;
    }

  if (wi && AclCheckPermWin(display->d_user, 2, wi))
    wi = 0;

  return wi;
}
# 6806 "process.c"
static int
CalcSlicePercent(cv, percent)
struct canvas *cv;
int percent;
{
  int w, wsum, up;
  if (!cv || !cv->c_slback)
    return percent;
  up = CalcSlicePercent(cv->c_slback->c_slback, percent);
  w = cv->c_slweight;
  for (cv = cv->c_slback->c_slperp, wsum = 0; cv; cv = cv->c_slnext)
    wsum += cv->c_slweight;
  if (wsum == 0)
    return 0;
  return (up * w) / wsum;
}

static int
ChangeCanvasSize(fcv, abs, diff, gflag, percent)
struct canvas *fcv;
int abs;
int diff;
int gflag;
int percent;
{
  struct canvas *cv;
  int done, have, m, dir;

  do {} while (0);
  if (abs == 0 && diff == 0)
    return 0;
  if (abs == 2)
    {
      if (diff == 0)
   fcv->c_slweight = 0;
      else
 {
          for (cv = fcv->c_slback->c_slperp; cv; cv = cv->c_slnext)
     cv->c_slweight = 0;
   fcv->c_slweight = 1;
   cv = fcv->c_slback->c_slback;
   if (gflag && cv && cv->c_slback)
     ChangeCanvasSize(cv, abs, diff, gflag, percent);
 }
      return diff;
    }
  if (abs)
    {
      if (diff < 0)
 diff = 0;
      if (percent && diff > percent)
 diff = percent;
    }
  if (percent)
    {
      int wsum, up;
      for (cv = fcv->c_slback->c_slperp, wsum = 0; cv; cv = cv->c_slnext)
 wsum += cv->c_slweight;
      if (wsum)
 {
   up = gflag ? CalcSlicePercent(fcv->c_slback->c_slback, percent) : percent;
          do {} while (0);
   if (wsum < 1000)
     {
       int scale = wsum < 10 ? 1000 : 100;
       for (cv = fcv->c_slback->c_slperp; cv; cv = cv->c_slnext)
  cv->c_slweight *= scale;
       wsum *= scale;
       do {} while (0);
     }
   for (cv = fcv->c_slback->c_slperp; cv; cv = cv->c_slnext)
     {
       if (cv->c_slweight)
  {
           cv->c_slweight = (cv->c_slweight * up) / percent;
    if (cv->c_slweight == 0)
      cv->c_slweight = 1;
  }
       do {} while (0);
     }
   diff = (diff * wsum) / percent;
   percent = wsum;
 }
    }
  else
    {
      if (abs && diff == (fcv->c_slorient == (1 << 0) ? fcv->c_ye - fcv->c_ys + 2 : fcv->c_xe - fcv->c_xs + 2))
 return 0;

      for (cv = fcv->c_slback->c_slperp; cv; cv = cv->c_slnext)
 {
   cv->c_slweight = cv->c_slorient == (1 << 0) ? cv->c_ye - cv->c_ys + 2 : cv->c_xe - cv->c_xs + 2;
   do {} while (0);
 }
    }
  if (abs)
    diff = diff - fcv->c_slweight;
  do {} while (0);
  if (diff == 0)
    return 0;
  if (diff < 0)
    {
      cv = fcv->c_slnext ? fcv->c_slnext : fcv->c_slprev;
      fcv->c_slweight += diff;
      cv->c_slweight -= diff;
      return diff;
    }
  done = 0;
  dir = 1;
  for (cv = fcv->c_slnext; diff > 0; cv = dir > 0 ? cv->c_slnext : cv->c_slprev)
    {
      if (!cv)
 {
   do {} while (0);
   if (dir == -1)
     break;
   dir = -1;
   cv = fcv;
   continue;
 }
      if (percent)
 m = 1;
      else
        m = cv->c_slperp ? CountCanvasPerp(cv) * 2 : 2;
      do {} while (0);
      if (cv->c_slweight > m)
 {
   have = cv->c_slweight - m;
   if (have > diff)
     have = diff;
   do {} while (0);
   cv->c_slweight -= have;
   done += have;
   diff -= have;
 }
    }
  if (diff && gflag)
    {

      cv = fcv->c_slback->c_slback;
      if (cv && cv->c_slback)
        done += ChangeCanvasSize(fcv->c_slback->c_slback, 0, diff, gflag, percent);
    }
  fcv->c_slweight += done;
  do {} while (0);
  return done;
}

static void
ResizeRegions(arg, flags)
char *arg;
int flags;
{
  struct canvas *cv;
  int diff, l;
  int gflag = 0, abs = 0, percent = 0;
  int orient = 0;

  do {} while (0);
  if (!*arg)
    return;
  if (display->d_forecv->c_slorient == 0)
    {
      Msg(0, "resize: need more than one region");
      return;
    }
  gflag = flags & 4 ? 0 : 1;
  orient |= flags & 1 ? (1 << 1) : 0;
  orient |= flags & 2 ? (1 << 0) : 0;
  if (orient == 0)
    orient = display->d_forecv->c_slorient;
  l = strlen(arg);
  if (*arg == '=')
    {

      struct canvas *cv = gflag ? &display->d_canvas : display->d_forecv->c_slback;
      if (cv->c_slperp->c_slorient & orient)
 EqualizeCanvas(cv->c_slperp, gflag);

      if ((cv->c_slperp->c_slorient ^ ((1 << 1) ^ (1 << 0))) & orient)
        {
   if (cv->c_slback)
     {
       cv = cv->c_slback;
       EqualizeCanvas(cv->c_slperp, gflag);
     }
   else
    EqualizeCanvas(cv, gflag);
        }
      ResizeCanvas(cv);
      RecreateCanvasChain();
      RethinkDisplayViewports();
      ResizeLayersToCanvases();
      return;
    }
  if (!strcmp(arg, "min") || !strcmp(arg, "0"))
    {
      abs = 2;
      diff = 0;
    }
  else if (!strcmp(arg, "max") || !strcmp(arg, "_"))
    {
      abs = 2;
      diff = 1;
    }
  else
    {
      if (l > 0 && arg[l - 1] == '%')
 percent = 1000;
      if (*arg == '+')
 diff = atoi(arg + 1);
      else if (*arg == '-')
 diff = -atoi(arg + 1);
      else
 {
   diff = atoi(arg);
   if (diff < 0)
     diff = 0;
   abs = diff == 0 ? 2 : 1;
 }
    }
  if (!abs && !diff)
    return;
  if (percent)
    diff = diff * percent / 100;
  cv = display->d_forecv;
  if (cv->c_slorient & orient)
    ChangeCanvasSize(cv, abs, diff, gflag, percent);
  if (cv->c_slback->c_slorient & orient)
    ChangeCanvasSize(cv->c_slback, abs, diff, gflag, percent);

  ResizeCanvas(&display->d_canvas);
  RecreateCanvasChain();
  RethinkDisplayViewports();
  ResizeLayersToCanvases();
  return;
# 7103 "process.c"
}

static void
ResizeFin(buf, len, data)
char *buf;
int len;
char *data;
{
  int ch;
  int flags = *(int *)data;
  ch = ((unsigned char *)buf)[len];
  if (ch == 0)
    {
      ResizeRegions(buf, flags);
      return;
    }
  if (ch == 'h')
    flags ^= 1;
  else if (ch == 'v')
    flags ^= 2;
  else if (ch == 'b')
    flags |= 1|2;
  else if (ch == 'p')
    flags ^= display->d_forecv->c_slorient == (1 << 0) ? 1 : 2;
  else if (ch == 'l')
    flags ^= 4;
  else
    return;
  inp_setprompt(resizeprompts[flags], ((void*)0));
  *(int *)data = flags;
  buf[len] = '\034';
}

void
SetForeCanvas(d, cv)
struct display *d;
struct canvas *cv;
{
  struct display *odisplay = display;
  if (d->d_forecv == cv)
    return;

  display = d;
  display->d_forecv = cv;
  if ((focusminwidth && (focusminwidth < 0 || display->d_forecv->c_xe - display->d_forecv->c_xs + 1 < focusminwidth)) ||
      (focusminheight && (focusminheight < 0 || display->d_forecv->c_ye - display->d_forecv->c_ys + 1 < focusminheight)))
    {
      ResizeCanvas(&display->d_canvas);
      RecreateCanvasChain();
      RethinkDisplayViewports();
      ResizeLayersToCanvases();
    }
  fore = display->d_fore = ((struct win *)(display->d_forecv->c_layer)->l_bottom->l_data);
  if (display->d_other == fore)
    display->d_other = 0;
  flayer = display->d_forecv->c_layer;







    {
      RefreshHStatus();



      flayer = display->d_forecv->c_layer;
      { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = display->d_forecv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = display->d_forecv->c_lnext; flayer = l; l->l_cvlist = display->d_forecv; display->d_forecv->c_lnext = 0; (*flayer->l_layfn->lf_LayRestore)();LGotoPos(flayer, flayer->l_x, flayer->l_y); flayer = oldflayer; l->l_cvlist = cvlist; display->d_forecv->c_lnext = cvlnext; display = olddisplay; };
      WindowChanged(0, 'F');
    }

  display = odisplay;
}
# 7192 "process.c"
int
ParseAttrColor(s1, s2, msgok)
char *s1, *s2;
int msgok;
{
  int i, n;
  char *s, *ss;
  int r = 0;

  s = s1;
  while (*s == ' ')
    s++;
  ss = s;
  while (*ss && *ss != ' ')
    ss++;
  while (*ss == ' ')
    ss++;
  if (*s && (s2 || *ss || !((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') || *s == '.')))
    {
      int mode = 0, n = 0;
      if (*s == '+')
 {
   mode = 1;
   s++;
 }
      else if (*s == '-')
 {
   mode = -1;
   s++;
 }
      else if (*s == '!')
 {
   mode = 2;
   s++;
 }
      else if (*s == '=')
 s++;
      if (*s >= '0' && *s <= '9')
 {
   n = *s++ - '0';
   if (*s >= '0' && *s <= '9')
     n = n * 16 + (*s++ - '0');
   else if (*s >= 'a' && *s <= 'f')
     n = n * 16 + (*s++ - ('a' - 10));
   else if (*s >= 'A' && *s <= 'F')
     n = n * 16 + (*s++ - ('A' - 10));
   else if (*s && *s != ' ')
     {
       if (msgok)
  Msg(0, "Illegal attribute hexchar '%c'", *s);
       return -1;
     }
 }
      else
 {
   while (*s && *s != ' ')
     {
       if (*s == 'd')
  n |= (1<<0);
       else if (*s == 'u')
  n |= (1<<1);
       else if (*s == 'b')
  n |= (1<<2);
       else if (*s == 'r')
  n |= (1<<3);
       else if (*s == 's')
  n |= (1<<4);
       else if (*s == 'B')
  n |= (1<<5);
       else
  {
    if (msgok)
      Msg(0, "Illegal attribute specifier '%c'", *s);
    return -1;
  }
       s++;
     }
 }
      if (*s && *s != ' ')
 {
   if (msgok)
     Msg(0, "junk after attribute description: '%c'", *s);
   return -1;
 }
      if (mode == -1)
 r = n << 8 | n;
      else if (mode == 1)
 r = n << 8;
      else if (mode == 2)
 r = n;
      else if (mode == 0)
 r = 0xffff ^ n;
    }
  while (*s && *s == ' ')
    s++;

  if (s2)
    {
      if (*s)
 {
   if (msgok)
     Msg(0, "junk after description: '%c'", *s);
   return -1;
 }
      s = s2;
      while (*s && *s == ' ')
 s++;
    }


  if (*s)
    {
      static char costr[] = "krgybmcw d    i.01234567 9     f               FKRGYBMCW      I ";
      int numco = 0, j;

      n = 0;
      if (*s == '.')
 {
   numco++;
   n = 0x0f;
   s++;
 }
      for (j = 0; j < 2 && *s && *s != ' '; j++)
 {
   for (i = 0; costr[i]; i++)
     if (*s == costr[i])
       break;
   if (!costr[i])
     {
       if (msgok)
  Msg(0, "illegal color descriptor: '%c'", *s);
       return -1;
     }
   numco++;
   n = n << 4 | (i & 15);

   if (i >= 48)
     n = (n & 0x20ff) | 0x200;

   s++;
 }
      if ((n & 0xf00) == 0xf00)
        n ^= 0xf00;

      if (n & 0x2000)
 n ^= 0x2400;

      if (numco == 1)
 n |= 0xf0;
      if (numco != 2 && n != 0xff)
 n |= 0x100;
      if (*s && *s != ' ')
 {
   if (msgok)
     Msg(0, "junk after color description: '%c'", *s);
   return -1;
 }
      n ^= 0xff;
      r |= n << 16;
    }


  while (*s && *s == ' ')
    s++;
  if (*s)
    {
      if (msgok)
 Msg(0, "junk after description: '%c'", *s);
      return -1;
    }
  do {} while (0);
  return r;
}
# 7374 "process.c"
void
ApplyAttrColor(i, mc)
int i;
struct mchar *mc;
{
  do {} while (0);
  mc->attr |= i >> 8 & 255;
  mc->attr ^= i & 255;

  i = (i >> 16) ^ 0xff;
  if ((i & 0x100) != 0)
    {
      i &= 0xeff;
      if (mc->attr & ((1<<4)|(1<<3)))

        i = ((i & 0x0f) << 4) | ((i & 0xf0) >> 4) | ((i & 0x200) << 1) | ((i & 0x400) >> 1);



    }

  if ((i & 0x0f) != 0x0f)
    mc->attr = (mc->attr & 0xbf) | ((i >> 3) & 0x40);
  if ((i & 0xf0) != 0xf0)
    mc->attr = (mc->attr & 0x7f) | ((i >> 3) & 0x80);

  mc->color = 0x99 ^ mc->color;
  if ((i & 0x0e) == 0x0e)
    i = (i & 0xf0) | (mc->color & 0x0f);
  if ((i & 0xe0) == 0xe0)
    i = (i & 0x0f) | (mc->color & 0xf0);
  mc->color = 0x99 ^ i;
  do {} while (0);

}
