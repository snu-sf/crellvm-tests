# 1 "display.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "display.c" 2
# 29 "display.c"
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
# 30 "display.c" 2
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
# 31 "display.c" 2
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
# 32 "display.c" 2

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
# 34 "display.c" 2


# 1 "./config.h" 1
# 37 "display.c" 2
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
# 235 "/usr/include/stdlib.h" 3 4
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
# 236 "/usr/include/stdlib.h" 2 3 4



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
# 119 "./os.h"
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
# 120 "./os.h" 2

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
# 122 "./os.h" 2
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
# 38 "display.c" 2
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
# 39 "display.c" 2
# 1 "./braille.h" 1
# 40 "display.c" 2


static int CountChars (int);
static int DoAddChar (int);
static int BlankResize (int, int);
static int CallRewrite (int, int, int, int);
static void disp_readev_fn (struct event *, char *);
static void disp_writeev_fn (struct event *, char *);

static void disp_writeev_eagain (struct event *, char *);

static void disp_status_fn (struct event *, char *);
static void disp_hstatus_fn (struct event *, char *);
static void disp_blocked_fn (struct event *, char *);

static void disp_map_fn (struct event *, char *);

static void disp_idle_fn (struct event *, char *);

static void disp_blanker_fn (struct event *, char *);

static void WriteLP (int, int);
static void INSERTCHAR (int);
static void RAW_PUTCHAR (int);

static void SetBackColor (int);

static void RemoveStatusMinWait (void);


extern struct layer *flayer;
extern struct win *windows, *fore;
extern struct LayFuncs WinLf;

extern int use_hardstatus;
extern int MsgWait, MsgMinWait;
extern int Z0width, Z1width;
extern unsigned char *blank, *null;
extern struct mline mline_blank, mline_null, mline_old;
extern struct mchar mchar_null, mchar_blank, mchar_so;
extern struct NewWindow nwin_default;
extern struct action idleaction;


extern char *hstatusstring;
extern char *captionstring;

extern int pastefont;
extern int idletimo;


extern int pty_preopen;

extern struct winsize glwz;

extern char **NewEnv;
extern int real_uid, real_gid;






extern

short ospeed;


struct display *display, *displays;

int attr2color[8][4];
int nattr2color;
# 121 "display.c"
int defobuflimit = 256;
int defnonblock = -1;
int defmousetrack = 0;

int defautonuke = 0;

int captionalways;
int hardstatusemu = 0;

int focusminwidth, focusminheight;





void
DefProcess(bufp, lenp)
char **bufp;
int *lenp;
{
  *bufp += *lenp;
  *lenp = 0;
}

void
DefRedisplayLine(y, xs, xe, isblank)
int y, xs, xe, isblank;
{
  if (isblank == 0 && y >= 0)
    DefClearLine(y, xs, xe, 0);
}

void
DefClearLine(y, xs, xe, bce)
int y, xs, xe, bce;
{
  LClearLine(flayer, y, xs, xe, bce, (struct mline *)0);
}


int
DefRewrite(y, xs, xe, rend, doit)
int y, xs, xe, doit;
struct mchar *rend;
{
  return 1000;
}


int
DefResize(wi, he)
int wi, he;
{
  return -1;
}

void
DefRestore()
{
  do { struct display *olddisplay = display; struct canvas *cv; for (display = displays; display; display = display->d_next) { for (cv = display->d_cvlist; cv; cv = cv->c_next) if (cv->c_layer == flayer) break; if (cv == 0) continue; InsertMode(0); } display = olddisplay; } while(0);

  LKeypadMode(flayer, 0);
  LCursorkeysMode(flayer, 0);
  LCursorVisibility(flayer, 0);
  LMouseMode(flayer, 0);
  LSetRendition(flayer, &mchar_null);
  LSetFlow(flayer, nwin_default.flowflag & (1<<0));
}





struct LayFuncs BlankLf =
{
  DefProcess,
  0,
  DefRedisplayLine,
  DefClearLine,
  DefRewrite,
  BlankResize,
  DefRestore,
  0
};


static int
BlankResize(wi, he)
int wi, he;
{
  flayer->l_width = wi;
  flayer->l_height = he;
  return 0;
}
# 223 "display.c"
struct display *
MakeDisplay(uname, utty, term, fd, pid, Mode)
char *uname, *utty, *term;
int fd, pid;
struct mode *Mode;
{
  struct acluser **u;
  struct baud_values *b;

  if (!*(u = FindUserPtr(uname)) && UserAdd(uname, (char *)0, u))
    return 0;


  if ((display = (struct display *)calloc(1, sizeof(*display))) == 0)
    return 0;






  display->d_next = displays;
  displays = display;
  display->d_flow = 1;
  display->d_nonblock = defnonblock;
  display->d_userfd = fd;
  display->d_readev.fd = display->d_writeev.fd = fd;
  display->d_readev.type = 1;
  display->d_writeev.type = 2;
  display->d_readev.data = display->d_writeev.data = (char *)display;
  display->d_readev.handler = disp_readev_fn;
  display->d_writeev.handler = disp_writeev_fn;
  evenq(&display->d_readev);
  display->d_writeev.condpos = &display->d_obuflen;
  display->d_writeev.condneg = &display->d_obuffree;
  evenq(&display->d_writeev);
  display->d_statusev.type = 0;
  display->d_statusev.data = (char *)display;
  display->d_statusev.handler = disp_status_fn;
  display->d_hstatusev.type = 0;
  display->d_hstatusev.data = (char *)display;
  display->d_hstatusev.handler = disp_hstatus_fn;
  display->d_blockedev.type = 0;
  display->d_blockedev.data = (char *)display;
  display->d_blockedev.handler = disp_blocked_fn;
  display->d_blockedev.condpos = &display->d_obuffree;
  display->d_blockedev.condneg = &display->d_obuflenmax;
  display->d_hstatusev.handler = disp_hstatus_fn;

  display->d_mapev.type = 0;
  display->d_mapev.data = (char *)display;
  display->d_mapev.handler = disp_map_fn;

  display->d_idleev.type = 0;
  display->d_idleev.data = (char *)display;
  display->d_idleev.handler = disp_idle_fn;

  display->d_blankerev.type = 1;
  display->d_blankerev.data = (char *)display;
  display->d_blankerev.handler = disp_blanker_fn;
  display->d_blankerev.fd = -1;

  display->d_OldMode = *Mode;
  display->d_status_obuffree = -1;
  Resize_obuf();
  display->d_obufmax = defobuflimit;
  display->d_obuflenmax = display->d_obuflen - display->d_obufmax;

  display->d_auto_nuke = defautonuke;

  display->d_obufp = display->d_obuf;
  display->d_printfd = -1;
  display->d_userpid = pid;


  if ((b = lookup_baud((int)cfgetospeed(&display->d_OldMode.tio))))
    display->d_dospeed = b->idx;
# 308 "display.c"
  do {} while (0);

  strncpy(display->d_usertty, utty, sizeof(display->d_usertty) - 1);
  display->d_usertty[sizeof(display->d_usertty) - 1] = 0;
  strncpy(display->d_termname, term, 32);
  display->d_termname[32] = 0;
  display->d_user = *u;
  display->d_processinput = ProcessInput;
  display->d_mousetrack = defmousetrack;
  return display;
}


void
FreeDisplay()
{
  struct win *p;

  struct display *d, **dp;



  FreeTransTable();


  KillBlanker();

  if (display->d_userfd >= 0)
    {
      Flush(3);
      if (!display)
 return;
      SetTTY(display->d_userfd, &display->d_OldMode);
      fcntl(display->d_userfd, 4, 0);
    }
  freetty();
  if (display->d_tentry)
    free(display->d_tentry);
  display->d_tentry = 0;
  if (display->d_processinputdata)
    free(display->d_processinputdata);
  display->d_processinputdata = 0;
  display->d_tcinited = 0;
  evdeq(&display->d_hstatusev);
  evdeq(&display->d_statusev);
  evdeq(&display->d_readev);
  evdeq(&display->d_writeev);
  evdeq(&display->d_blockedev);

  evdeq(&display->d_mapev);
  if (display->d_kmaps)
    {
      free(display->d_kmaps);
      display->d_kmaps = 0;
      display->d_aseqs = 0;
      display->d_nseqs = 0;
      display->d_seqp = 0;
      display->d_seql = 0;
      display->d_seqh = 0;
    }

  evdeq(&display->d_idleev);

  evdeq(&display->d_blankerev);
# 382 "display.c"
  for (dp = &displays; (d = *dp) ; dp = &d->d_next)
    if (d == display)
      break;
  do {} while (0);
  if (display->d_status_lastmsg)
    free(display->d_status_lastmsg);
  if (display->d_obuf)
    free(display->d_obuf);
  *dp = display->d_next;






  while (display->d_canvas.c_slperp)
    FreeCanvas(display->d_canvas.c_slperp);
  display->d_cvlist = 0;

  for (p = windows; p; p = p->w_next)
    {
      if (p->w_pdisplay == display)
 p->w_pdisplay = 0;
      if (p->w_lastdisp == display)
 p->w_lastdisp = 0;
      if (p->w_readev.condneg == &display->d_status || p->w_readev.condneg == &display->d_obuflenmax)
 p->w_readev.condpos = p->w_readev.condneg = 0;
    }

  for (p = windows; p; p = p->w_next)
    if (p->w_zdisplay == display)
      zmodem_abort(p, 0);

  if (display->d_mousetrack)
    {
      display->d_mousetrack = 0;
      MouseMode(0);
    }

  free((char *)display);

  display = 0;
}





void
InitTerm(adapt)
int adapt;
{
  do {} while (0);
  do {} while (0);
  display->d_top = display->d_bot = -1;
  AddCStr((display->d_tcs[39].str));
  AddCStr((display->d_tcs[40].str));

  if ((display->d_tcs[27].str) && strcmp((display->d_tcs[27].str), (display->d_tcs[28].str)))
    AddCStr((display->d_tcs[28].str));
  display->d_insert = 0;

  AddCStr((display->d_tcs[69].str));
  AddCStr((display->d_tcs[71].str));







  display->d_keypad = 0;
  display->d_cursorkeys = 0;
  AddCStr((display->d_tcs[55].str));
  AddCStr((display->d_tcs[104].str));
  AddCStr((display->d_tcs[99].str));
  display->d_rend = mchar_null;
  display->d_atyp = 0;
  if (adapt == 0)
    ResizeDisplay(display->d_defwidth, display->d_defheight);
  ChangeScrollRegion(0, display->d_height - 1);
  display->d_x = display->d_y = 0;
  Flush(3);
  ClearAll();
  do {} while (0);


  CheckScreenSize((adapt) ? 2 : 0);
}

void
FinitTerm()
{
  do {} while (0);

  KillBlanker();

  if (display->d_tcinited)
    {
      ResizeDisplay(display->d_defwidth, display->d_defheight);
      InsertMode(0);
      ChangeScrollRegion(0, display->d_height - 1);
      KeypadMode(0);
      CursorkeysMode(0);
      CursorVisibility(0);
      if (display->d_mousetrack)
 display->d_mousetrack = 0;
      MouseMode(0);
      SetRendition(&mchar_null);
      SetFlow((1<<0));

      AddCStr((display->d_tcs[70].str));
      AddCStr((display->d_tcs[72].str));

      if (display->d_hstatus)
 ShowHStatus((char *)0);



      display->d_x = display->d_y = -1;
      GotoPos(0, display->d_height - 1);
      do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ('\r'); } while (0);
      do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ('\n'); } while (0);
      AddCStr((display->d_tcs[41].str));
    }
  Flush(3);
}


static void
INSERTCHAR(c)
int c;
{
  do {} while (0);
  if (!display->d_insert && display->d_x < display->d_width - 1)
    {
      if ((display->d_tcs[29].str) || (display->d_tcs[30].str))
 {
   if ((display->d_tcs[29].str))
     AddCStr((display->d_tcs[29].str));
   else
     AddCStr2((display->d_tcs[30].str), 1);
   RAW_PUTCHAR(c);
   return;
 }
      InsertMode(1);
      if (!display->d_insert)
 {
          RefreshLine(display->d_y, display->d_x, display->d_width-1, 0);
   return;
 }
    }
  RAW_PUTCHAR(c);
}

void
PUTCHAR(c)
int c;
{
  do {} while (0);
  if (display->d_insert && display->d_x < display->d_width - 1)
    InsertMode(0);
  RAW_PUTCHAR(c);
}

void
PUTCHARLP(c)
int c;
{
  if (display->d_x < display->d_width - 1)
    {
      if (display->d_insert)
 InsertMode(0);
      RAW_PUTCHAR(c);
      return;
    }
  if ((display->d_tcs[87].flg) || display->d_y != display->d_bot)
    {
      int y = display->d_y;
      RAW_PUTCHAR(c);
      if ((display->d_tcs[83].flg) && !(display->d_tcs[87].flg))
 GotoPos(display->d_width - 1, y);
      return;
    }
  do {} while (0);
  display->d_lp_missing = 1;
  display->d_rend.image = c;
  display->d_lpchar = display->d_rend;


  if (display->d_mbcs)
    {
      display->d_lpchar.mbcs = c;
      display->d_lpchar.image = display->d_mbcs;
      display->d_mbcs = 0;
      display->d_x--;
    }

}






static void
RAW_PUTCHAR(c)
int c;
{
  do {} while (0);



  if (display->d_encoding == 8)
    {
      c = (c & 255) | (unsigned char)display->d_rend.font << 8 | (unsigned char)display->d_rend.fontx << 16;

      if (display->d_mbcs)
 {
   c = display->d_mbcs;
   if (display->d_x == display->d_width)
     display->d_x += (display->d_tcs[83].flg) ? 1 : -1;
   display->d_mbcs = 0;
 }
      else if (utf8_isdouble(c))
 {
   display->d_mbcs = c;
   display->d_x++;
   return;
 }

      if (c < 32)
 {
   AddCStr2((display->d_tcs[98].str), '0');
   do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (c + 0x5f); } while (0);
   AddCStr((display->d_tcs[99].str));
   goto addedutf8;
 }
      if (c < 0x80)
 {
   if (display->d_xtable && display->d_xtable[(int)(unsigned char)display->d_rend.font] && display->d_xtable[(int)(unsigned char)display->d_rend.font][(int)(unsigned char)c])
     AddStr(display->d_xtable[(int)(unsigned char)display->d_rend.font][(int)(unsigned char)c]);
   else
     do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (c); } while (0);
 }
      else
 AddUtf8(c);
      goto addedutf8;
    }


  if (((display->d_rend.font) && ((display->d_rend.font) & 0x60) == 0))
    {
      int t = c;
      if (display->d_mbcs == 0)
 {
   display->d_mbcs = c;
   display->d_x++;
   return;
 }
      display->d_x--;
      if (display->d_x == display->d_width - 1)
 display->d_x += (display->d_tcs[83].flg) ? 1 : -1;
      c = display->d_mbcs;
      display->d_mbcs = t;
    }


  if (display->d_encoding)
    c = PrepareEncodedChar(c);


  kanjiloop:

  if (display->d_xtable && display->d_xtable[(int)(unsigned char)display->d_rend.font] && display->d_xtable[(int)(unsigned char)display->d_rend.font][(int)(unsigned char)c])
    AddStr(display->d_xtable[(int)(unsigned char)display->d_rend.font][(int)(unsigned char)c]);
  else
    do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (display->d_rend.font != '0' ? c : display->d_c0_tab[(int)(unsigned char)c]); } while (0);





addedutf8:

  if (++display->d_x >= display->d_width)
    {
      if ((display->d_tcs[83].flg) == 0)
        display->d_x = display->d_width - 1;
      else if (!(display->d_tcs[87].flg) || display->d_x > display->d_width)
 {
   display->d_x -= display->d_width;
   if (display->d_y < display->d_height-1 && display->d_y != display->d_bot)
     display->d_y++;
 }
    }

  if (display->d_mbcs)
    {
      c = display->d_mbcs;
      display->d_mbcs = 0;
      goto kanjiloop;
    }

}

static int
DoAddChar(c)
int c;
{

  do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (c); } while (0);
  return c;
}

void
AddCStr(s)
char *s;
{
  if (display && s && *s)
    {
      ospeed = display->d_dospeed;
      tputs(s, 1, DoAddChar);
    }
}

void
AddCStr2(s, c)
char *s;
int c;
{
  if (display && s && *s)
    {
      ospeed = display->d_dospeed;
      tputs(tgoto(s, 0, c), 1, DoAddChar);
    }
}




void
InsertMode(on)
int on;
{
  if (display && on != display->d_insert && (display->d_tcs[27].str))
    {
      display->d_insert = on;
      if (on)
 AddCStr((display->d_tcs[27].str));
      else
 AddCStr((display->d_tcs[28].str));
    }
}



void
KeypadMode(on)
int on;
{

  if (display)
    display->d_keypad = on;
# 756 "display.c"
}

void
CursorkeysMode(on)
int on;
{

  if (display)
    display->d_cursorkeys = on;
# 775 "display.c"
}

void
ReverseVideo(on)
int on;
{
  if (display && display->d_revvid != on && (display->d_tcs[93].str))
    {
      display->d_revvid = on;
      if (display->d_revvid)
 AddCStr((display->d_tcs[93].str));
      else
 AddCStr((display->d_tcs[94].str));
    }
}

void
CursorVisibility(v)
int v;
{
  if (display && display->d_curvis != v)
    {
      if (display->d_curvis)
 AddCStr((display->d_tcs[82].str));
      display->d_curvis = 0;
      if (v == -1 && (display->d_tcs[80].str))
 AddCStr((display->d_tcs[80].str));
      else if (v == 1 && (display->d_tcs[81].str))
 AddCStr((display->d_tcs[81].str));
      else
 return;
      display->d_curvis = v;
    }
}

void
MouseMode(mode)
int mode;
{
  if (!display)
    return;

  if (mode < display->d_mousetrack)
    mode = display->d_mousetrack;

  if (display->d_mouse != mode)
    {
      char mousebuf[20];
      if (!(display->d_tcs[96].flg))
 return;
      if (display->d_mouse)
        {
          sprintf(mousebuf, "\033[?%dl", display->d_mouse);
          AddStr(mousebuf);
 }
      if (mode)
        {
          sprintf(mousebuf, "\033[?%dh", mode);
          AddStr(mousebuf);
 }
      display->d_mouse = mode;
    }
}

static int StrCost;


static int
CountChars(c)
int c;
{
  StrCost++;
  return c;
}

int
CalcCost(s)
register char *s;
{
  do {} while (0);
  if (s)
    {
      StrCost = 0;
      ospeed = display->d_dospeed;
      tputs(s, 1, CountChars);
      return StrCost;
    }
  else
    return 1000;
}

static int
CallRewrite(y, xs, xe, doit)
int y, xs, xe, doit;
{
  struct canvas *cv, *cvlist, *cvlnext;
  struct viewport *vp;
  struct layer *oldflayer;
  int cost;

  do {} while (0);
  do {} while (0);
  do {} while (0);

  vp = 0;
  for (cv = display->d_cvlist; cv; cv = cv->c_next)
    {
      if (y < cv->c_ys || y > cv->c_ye || xe < cv->c_xs || xs > cv->c_xe)
 continue;
      for (vp = cv->c_vplist; vp; vp = vp->v_next)
 if (y >= vp->v_ys && y <= vp->v_ye && xe >= vp->v_xs && xs <= vp->v_xe)
   break;
      if (vp)
 break;
    }
  if (doit)
    {
      oldflayer = flayer;
      flayer = cv->c_layer;
      cvlist = flayer->l_cvlist;
      cvlnext = cv->c_lnext;
      flayer->l_cvlist = cv;
      cv->c_lnext = 0;
      (*flayer->l_layfn->lf_LayRewrite)(y - vp->v_yoff, xs - vp->v_xoff, xe - vp->v_xoff, &display->d_rend, 1);
      flayer->l_cvlist = cvlist;
      cv->c_lnext = cvlnext;
      flayer = oldflayer;
      return 0;
    }
  if (cv == 0 || cv->c_layer == 0)
    return 1000;
  if (xs < vp->v_xs || xe > vp->v_xe)
    return 1000;
  if (y - vp->v_yoff < 0 || y - vp->v_yoff >= cv->c_layer->l_height)
    return 1000;
  if (xs - vp->v_xoff < 0 || xe - vp->v_xoff >= cv->c_layer->l_width)
    return 1000;

  if (display->d_encoding == 8)
    display->d_rend.font = 0;

  oldflayer = flayer;
  flayer = cv->c_layer;
  do {} while (0);
  cost = (*flayer->l_layfn->lf_LayRewrite)(y - vp->v_yoff, xs - vp->v_xoff, xe - vp->v_xoff, &display->d_rend, 0);
  flayer = oldflayer;
  if (display->d_insert)
    cost += display->d_EIcost + display->d_IMcost;
  return cost;
}


void
GotoPos(x2, y2)
int x2, y2;
{
  register int dy, dx, x1, y1;
  register int costx, costy;
  register int m;
  register char *s;
  int CMcost;
  enum move_t xm = M_NONE, ym = M_NONE;

  if (!display)
    return;

  x1 = display->d_x;
  y1 = display->d_y;

  if (x1 == display->d_width)
    {
      if ((display->d_tcs[87].flg) && (display->d_tcs[83].flg))
        x1 = -1;
      else
        x1--;
    }
  if (x2 == display->d_width)
    x2--;
  dx = x2 - x1;
  dy = y2 - y1;
  if (dy == 0 && dx == 0)
    return;
  do {} while (0);
  do {} while (0);
  if (!(display->d_tcs[56].flg))
    SetRendition(&mchar_null);
  if (y1 < 0
      || (y2 > display->d_bot && y1 <= display->d_bot)
      || (y2 < display->d_top && y1 >= display->d_top))
    {
    DoCM:
      if ((display->d_tcs[6].str) && !x2 && !y2)
        AddCStr((display->d_tcs[6].str));
      else
        AddCStr(tgoto((display->d_tcs[5].str), x2, y2));
      display->d_x = x2;
      display->d_y = y2;
      return;
    }




  if ((y1 > display->d_bot && y2 > y1) || (y1 < display->d_top && y2 < y1))
    goto DoCM;


  if ((display->d_tcs[6].str) && !x2 && !y2)
    s = (display->d_tcs[6].str);
  else
    s = tgoto((display->d_tcs[5].str), x2, y2);
  CMcost = CalcCost(s);


  costx = 1000;
  if (x1 >= 0)
    {
      if (dx > 0)
 {
   if ((display->d_tcs[17].str) && (dx > 1 || !(display->d_tcs[16].str)))
     {
       costx = CalcCost(tgoto((display->d_tcs[17].str), 0, dx));
       xm = M_CRI;
     }
   if ((m = display->d_NDcost * dx) < costx)
     {
       costx = m;
       xm = M_RI;
     }

   if (dx < costx && (m = CallRewrite(y1, x1, x2 - 1, 0)) < costx)
     {
       costx = m;
       xm = M_RW;
     }
 }
      else if (dx < 0)
 {
   if ((display->d_tcs[15].str) && (dx < -1 || !(display->d_tcs[13].str)))
     {
       costx = CalcCost(tgoto((display->d_tcs[15].str), 0, -dx));
       xm = M_CLE;
     }
   if ((m = -dx * display->d_LEcost) < costx)
     {
       costx = m;
       xm = M_LE;
     }
 }
      else
 costx = 0;
    }

  if (x2 + display->d_CRcost < costx && (m = (x2 ? CallRewrite(y1, 0, x2 - 1, 0) : 0) + display->d_CRcost) < costx)
    {
      costx = m;
      xm = M_CR;
    }


  if (costx >= CMcost)
    goto DoCM;


  costy = 1000;
  if (dy > 0)
    {
      if ((display->d_tcs[11].str) && dy > 1)
 {
   costy = CalcCost(tgoto((display->d_tcs[11].str), 0, dy));
   ym = M_CDO;
 }
      if ((m = dy * ((x2 == 0) ? display->d_NLcost : display->d_DOcost)) < costy)
 {
   costy = m;
   ym = M_DO;
 }
    }
  else if (dy < 0)
    {
      if ((display->d_tcs[9].str) && (dy < -1 || !(display->d_tcs[8].str)))
 {
   costy = CalcCost(tgoto((display->d_tcs[9].str), 0, -dy));
   ym = M_CUP;
 }
      if ((m = -dy * display->d_UPcost) < costy)
 {
   costy = m;
   ym = M_UP;
 }
    }
  else
    costy = 0;


  if (costx + costy >= CMcost)
    goto DoCM;

  switch (xm)
    {
    case M_LE:
      while (dx++ < 0)
 AddCStr((display->d_tcs[13].str));
      break;
    case M_CLE:
      AddCStr2((display->d_tcs[15].str), -dx);
      break;
    case M_RI:
      while (dx-- > 0)
 AddCStr((display->d_tcs[16].str));
      break;
    case M_CRI:
      AddCStr2((display->d_tcs[17].str), dx);
      break;
    case M_CR:
      AddCStr((display->d_tcs[7].str));
      display->d_x = 0;
      x1 = 0;

    case M_RW:
      if (x1 < x2)
 (void) CallRewrite(y1, x1, x2 - 1, 1);
      break;
    default:
      break;
    }

  switch (ym)
    {
    case M_UP:
      while (dy++ < 0)
 AddCStr((display->d_tcs[8].str));
      break;
    case M_CUP:
      AddCStr2((display->d_tcs[9].str), -dy);
      break;
    case M_DO:
      s = (x2 == 0) ? (display->d_tcs[19].str) : (display->d_tcs[10].str);
      while (dy-- > 0)
 AddCStr(s);
      break;
    case M_CDO:
      AddCStr2((display->d_tcs[11].str), dy);
      break;
    default:
      break;
    }
  display->d_x = x2;
  display->d_y = y2;
}

void
ClearAll()
{
  do {} while (0);
  ClearArea(0, 0, 0, display->d_width - 1, display->d_width - 1, display->d_height - 1, 0, 0);
}

void
ClearArea(x1, y1, xs, xe, x2, y2, bce, uselayfn)
int x1, y1, xs, xe, x2, y2, bce, uselayfn;
{
  int y, xxe;
  struct canvas *cv;
  struct viewport *vp;

  do {} while (0);
  do {} while (0);
  do {} while (0);
  do {} while (0);
  do {} while (0);
  if (x1 == display->d_width)
    x1--;
  if (x2 == display->d_width)
    x2--;
  if (xs == -1)
    xs = x1;
  if (xe == -1)
    xe = x2;
  if ((display->d_tcs[33].flg))
    SetRendition(&mchar_null);

  if ((display->d_tcs[66].flg))
    SetBackColor(bce);

  if (display->d_lp_missing && y1 <= display->d_bot && xe >= display->d_width - 1)
    {
      if (y2 > display->d_bot || (y2 == display->d_bot && x2 >= display->d_width - 1))
 display->d_lp_missing = 0;
    }
  if (x2 == display->d_width - 1 && (xs == 0 || y1 == y2) && xe == display->d_width - 1 && y2 == display->d_height - 1 && (!bce || (display->d_tcs[66].flg)))
    {

      if (x1 == 0 && y1 == 0 && display->d_auto_nuke)
 NukePending();

      if (x1 == 0 && y1 == 0 && (display->d_tcs[34].str))
 {
   AddCStr((display->d_tcs[34].str));
   display->d_y = display->d_x = 0;
   return;
 }




      if ((display->d_tcs[35].str) && (y1 < y2 || !(display->d_tcs[37].str)))
 {
   GotoPos(x1, y1);
   AddCStr((display->d_tcs[35].str));
   return;
 }
    }
  if (x1 == 0 && xs == 0 && (xe == display->d_width - 1 || y1 == y2) && y1 == 0 && (display->d_tcs[36].str) && (!bce || (display->d_tcs[66].flg)))
    {
      GotoPos(x1, y1);
      AddCStr((display->d_tcs[36].str));
      return;
    }
  xxe = xe;
  for (y = y1; y <= y2; y++, x1 = xs)
    {
      if (y == y2)
 xxe = x2;
      if (x1 == 0 && (display->d_tcs[38].str) && (xxe != display->d_width - 1 || (display->d_x == xxe && display->d_y == y)) && (!bce || (display->d_tcs[66].flg)))
 {
   GotoPos(xxe, y);
   AddCStr((display->d_tcs[38].str));
   continue;
 }
      if (xxe == display->d_width - 1 && (display->d_tcs[37].str) && (!bce || (display->d_tcs[66].flg)))
 {
   GotoPos(x1, y);
   AddCStr((display->d_tcs[37].str));
   continue;
 }
      if (uselayfn)
 {
   vp = 0;
   for (cv = display->d_cvlist; cv; cv = cv->c_next)
     {
       if (y < cv->c_ys || y > cv->c_ye || xxe < cv->c_xs || x1 > cv->c_xe)
  continue;
       for (vp = cv->c_vplist; vp; vp = vp->v_next)
         if (y >= vp->v_ys && y <= vp->v_ye && xxe >= vp->v_xs && x1 <= vp->v_xe)
    break;
       if (vp)
  break;
     }
   if (cv && cv->c_layer && x1 >= vp->v_xs && xxe <= vp->v_xe &&
              y - vp->v_yoff >= 0 && y - vp->v_yoff < cv->c_layer->l_height &&
              xxe - vp->v_xoff >= 0 && x1 - vp->v_xoff < cv->c_layer->l_width)
     {
       struct layer *oldflayer = flayer;
       struct canvas *cvlist, *cvlnext;
       flayer = cv->c_layer;
       cvlist = flayer->l_cvlist;
       cvlnext = cv->c_lnext;
       flayer->l_cvlist = cv;
       cv->c_lnext = 0;
              (*flayer->l_layfn->lf_LayClearLine)(y - vp->v_yoff, x1 - vp->v_xoff, xxe - vp->v_xoff, bce);
       flayer->l_cvlist = cvlist;
       cv->c_lnext = cvlnext;
       flayer = oldflayer;
       continue;
     }
 }
      ClearLine((struct mline *)0, y, x1, xxe, bce);
    }
}






void
Redisplay(cur_only)
int cur_only;
{
  do {} while (0);


  InsertMode(0);
  ChangeScrollRegion(0, display->d_height - 1);
  KeypadMode(0);
  CursorkeysMode(0);
  CursorVisibility(0);
  MouseMode(0);
  SetRendition(&mchar_null);
  SetFlow((1<<0));

  ClearAll();



  if (cur_only > 0 && display->d_fore)
    RefreshArea(0, display->d_fore->w_layer.l_y, display->d_width - 1, display->d_fore->w_layer.l_y, 1);
  else
    RefreshAll(1);
  RefreshHStatus();
  { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = display->d_forecv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = display->d_forecv->c_lnext; flayer = l; l->l_cvlist = display->d_forecv; display->d_forecv->c_lnext = 0; (*flayer->l_layfn->lf_LayRestore)();LGotoPos(flayer, flayer->l_x, flayer->l_y); flayer = oldflayer; l->l_cvlist = cvlist; display->d_forecv->c_lnext = cvlnext; display = olddisplay; };
}

void
RedisplayDisplays(cur_only)
int cur_only;
{
  struct display *olddisplay = display;
  for (display = displays; display; display = display->d_next)
    Redisplay(cur_only);
  display = olddisplay;
}



void
ScrollH(y, xs, xe, n, bce, oml)
int y, xs, xe, n, bce;
struct mline *oml;
{
  int i;

  if (n == 0)
    return;
  if (xe != display->d_width - 1)
    {
      RefreshLine(y, xs, xe, 0);

      return;
    }
  GotoPos(xs, y);
  if ((display->d_tcs[33].flg))
    SetRendition(&mchar_null);

  if ((display->d_tcs[66].flg))
    SetBackColor(bce);

  if (n > 0)
    {
      if (n >= xe - xs + 1)
 n = xe - xs + 1;
      if ((display->d_tcs[32].str) && !(n == 1 && (display->d_tcs[31].str)))
 AddCStr2((display->d_tcs[32].str), n);
      else if ((display->d_tcs[31].str))
 {
   for (i = n; i--; )
     AddCStr((display->d_tcs[31].str));
 }
      else
 {
   RefreshLine(y, xs, xe, 0);

   return;
 }
    }
  else
    {
      if (-n >= xe - xs + 1)
 n = -(xe - xs + 1);
      if (!display->d_insert)
 {
   if ((display->d_tcs[30].str) && !(n == -1 && (display->d_tcs[29].str)))
     AddCStr2((display->d_tcs[30].str), -n);
   else if ((display->d_tcs[29].str))
     {
       for (i = -n; i--; )
  AddCStr((display->d_tcs[29].str));
     }
   else if ((display->d_tcs[27].str))
     {
       InsertMode(1);
       SetRendition(&mchar_null);

       SetBackColor(bce);

       for (i = -n; i--; )
  INSERTCHAR(' ');
       bce = 0;
     }
   else
     {

       RefreshLine(y, xs, xe, 0);
       return;
     }
 }
      else
 {
   SetRendition(&mchar_null);

   SetBackColor(bce);

   for (i = -n; i--; )
     INSERTCHAR(' ');
   bce = 0;
 }
    }
  if (bce && !(display->d_tcs[66].flg))
    {
      if (n > 0)
        ClearLine((struct mline *)0, y, xe - n + 1, xe, bce);
      else
        ClearLine((struct mline *)0, y, xs, xs - n - 1, bce);
    }
  if (display->d_lp_missing && y == display->d_bot)
    {
      if (n > 0)
        WriteLP(display->d_width - 1 - n, y);
      display->d_lp_missing = 0;
    }
}

void
ScrollV(xs, ys, xe, ye, n, bce)
int xs, ys, xe, ye, n, bce;
{
  int i;
  int up;
  int oldtop, oldbot;
  int alok, dlok, aldlfaster;
  int missy = 0;

  do {} while (0);
  if (n == 0)
    return;
  if (n >= ye - ys + 1 || -n >= ye - ys + 1)
    {
      ClearArea(xs, ys, xs, xe, xe, ye, bce, 0);
      return;
    }
  if (xs > display->d_vpxmin || xe < display->d_vpxmax)
    {
      RefreshArea(xs, ys, xe, ye, 0);
      return;
    }

  if (display->d_lp_missing)
    {
      if (display->d_bot > ye || display->d_bot < ys)
 missy = display->d_bot;
      else
 {
   missy = display->d_bot - n;
          if (missy > ye || missy < ys)
     display->d_lp_missing = 0;
 }
    }

  up = 1;
  if (n < 0)
    {
      up = 0;
      n = -n;
    }
  if (n >= ye - ys + 1)
    n = ye - ys + 1;

  oldtop = display->d_top;
  oldbot = display->d_bot;
  if (ys < display->d_top || display->d_bot != ye)
    ChangeScrollRegion(ys, ye);
  alok = ((display->d_tcs[22].str) || (display->d_tcs[23].str) || (ys >= display->d_top && ye == display->d_bot && up));
  dlok = ((display->d_tcs[24].str) || (display->d_tcs[25].str) || (ys >= display->d_top && ye == display->d_bot && !up));
  if (display->d_top != ys && !(alok && dlok))
    ChangeScrollRegion(ys, ye);

  if (display->d_lp_missing &&
      (oldbot != display->d_bot ||
       (oldbot == display->d_bot && up && display->d_top == ys && display->d_bot == ye)))
    {
      WriteLP(display->d_width - 1, oldbot);
      if (oldbot == display->d_bot)
 {
   if (--n == 0)
     {



       if (bce && !(display->d_tcs[66].flg))
  ClearLine((struct mline *)0, ye, xs, xe, bce);
       return;
     }
 }
    }

  if ((display->d_tcs[33].flg))
    SetRendition(&mchar_null);

  if ((display->d_tcs[66].flg))
    SetBackColor(bce);


  aldlfaster = (n > 1 && ys >= display->d_top && ye == display->d_bot && ((up && (display->d_tcs[25].str)) || (!up && (display->d_tcs[23].str))));

  if ((up || (display->d_tcs[21].str)) && display->d_top == ys && display->d_bot == ye && !aldlfaster)
    {
      if (up)
 {
   GotoPos(0, ye);
   for(i = n; i-- > 0; )
     AddCStr((display->d_tcs[19].str));
 }
      else
 {
   GotoPos(0, ys);
   for(i = n; i-- > 0; )
     AddCStr((display->d_tcs[21].str));
 }
    }
  else if (alok && dlok)
    {
      if (up || ye != display->d_bot)
 {
          GotoPos(0, up ? ys : ye+1-n);
          if ((display->d_tcs[25].str) && !(n == 1 && (display->d_tcs[24].str)))
     AddCStr2((display->d_tcs[25].str), n);
   else
     for(i = n; i--; )
       AddCStr((display->d_tcs[24].str));
 }
      if (!up || ye != display->d_bot)
 {
          GotoPos(0, up ? ye+1-n : ys);
          if ((display->d_tcs[23].str) && !(n == 1 && (display->d_tcs[22].str)))
     AddCStr2((display->d_tcs[23].str), n);
   else
     for(i = n; i--; )
       AddCStr((display->d_tcs[22].str));
 }
    }
  else
    {
      RefreshArea(xs, ys, xe, ye, 0);
      return;
    }
  if (bce && !(display->d_tcs[66].flg))
    {
      if (up)
        ClearArea(xs, ye - n + 1, xs, xe, xe, ye, bce, 0);
      else
        ClearArea(xs, ys, xs, xe, xe, ys + n - 1, bce, 0);
    }
  if (display->d_lp_missing && missy != display->d_bot)
    WriteLP(display->d_width - 1, missy);





}

void
SetAttr(new)
register int new;
{
  register int i, j, old, typ;

  if (!display || (old = display->d_rend.attr) == new)
    return;

  display->d_col16change = (old ^ new) & ((1<<6) | (1<<7));
  new ^= display->d_col16change;
  if (old == new)
    return;
# 1559 "display.c"
  display->d_rend.attr = new;
  typ = display->d_atyp;
  if ((new & old) != old)
    {
      if ((typ & (1<<2)))
        AddCStr((display->d_tcs[53].str));
      if ((typ & (1<<1)))
        AddCStr((display->d_tcs[54].str));
      if ((typ & (1<<0)))
 {
          AddCStr((display->d_tcs[55].str));


   if (display->d_hascolor)
     ((&display->d_rend)->color = 0, (&display->d_rend)->attr &= ~((1<<7)|(1<<6)));


   if (!(display->d_tcs[97].flg))
     {

       display->d_rend.font = 0;

       display->d_realfont = 0;

     }

 }
      old = 0;
      typ = 0;
    }
  old ^= new;
  for (i = 0, j = 1; old && i < 6; i++, j <<= 1)
    {
      if ((old & j) == 0)
 continue;
      old ^= j;
      if (display->d_attrtab[i])
 {
   AddCStr(display->d_attrtab[i]);
   typ |= display->d_attrtyp[i];
 }
    }
  display->d_atyp = typ;
}


void
SetFont(new)
int new;
{
  int old = display->d_rend.font;
  if (!display || old == new)
    return;
  display->d_rend.font = new;

  if (display->d_encoding && CanEncodeFont(display->d_encoding, new))
    return;
  if (new == display->d_realfont)
    return;
  display->d_realfont = new;

  if (display->d_xtable && display->d_xtable[(int)(unsigned char)new] &&
      display->d_xtable[(int)(unsigned char)new][256])
    {
      AddCStr(display->d_xtable[(int)(unsigned char)new][256]);
      return;
    }

  if (!(display->d_tcs[97].flg) && new != '0')
    {
      new = 0;
      if (old == new)
 return;
    }

  if (new == 0)
    AddCStr((display->d_tcs[99].str));

  else if (new < ' ')
    {
      AddStr("\033$");
      if (new > 2)
        do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ('('); } while (0);
      do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (new + '@'); } while (0);
    }

  else
    AddCStr2((display->d_tcs[98].str), new);
}




int
color256to16(jj)
int jj;
{
  int min, max;
  int r, g, b;

  if (jj >= 232)
    {
      jj = (jj - 232) / 6;
      jj = (jj & 1) << 3 | (jj & 2 ? 7 : 0);
    }
  else if (jj >= 16)
    {
      jj -= 16;
      r = jj / 36;
      g = (jj / 6) % 6;
      b = jj % 6;
      min = r < g ? (r < b ? r : b) : (g < b ? g : b);
      max = r > g ? (r > b ? r : b) : (g > b ? g : b);
      if (min == max)
        jj = ((max + 1) & 2) << 2 | ((max + 1) & 4 ? 7 : 0);
      else
        jj = (b - min) / (max - min) << 2 | (g - min) / (max - min) << 1 | (r -
min) / (max - min) | (max > 3 ? 8 : 0);
    }
  return jj;
}
# 1702 "display.c"
void
SetColor(f, b)
int f, b;
{
  int of, ob;
  static unsigned char sftrans[8] = {0,4,2,6,1,5,3,7};

  if (!display)
    return;

  of = (((&display->d_rend)->color & 0x0f) | ((&display->d_rend)->attr & (1<<6) ? 0x100 : 0));
  ob = (((&display->d_rend)->color & 0xf0) >> 4 | ((&display->d_rend)->attr & (1<<7) ? 0x100 : 0));



  if (f == 0x100)
    f = 0;
  if (b == 0x100)
    b = 0;

  do {} while (0);
  do {} while (0);
  do {} while (0);
  do {} while (0);

  if (!(display->d_tcs[67].flg) && display->d_hascolor && ((f == 0 && f != of) || (b == 0 && b != ob)))
    {
      if ((display->d_tcs[64].str))
        AddCStr((display->d_tcs[64].str));
      else
 {
   int oattr;
   oattr = display->d_rend.attr;
   AddCStr((display->d_tcs[55].str) ? (display->d_tcs[55].str) : "\033[m");

   if ((display->d_tcs[55].str) && !(display->d_tcs[97].flg))
     {

       display->d_rend.font = 0;

       display->d_realfont = 0;

     }

   display->d_atyp = 0;
   display->d_rend.attr = 0;
   SetAttr(oattr);
 }
      of = ob = 0;
    }
  ((&display->d_rend)->color = ((&display->d_rend)->color & 0xf0) | (f & 0x0f), (&display->d_rend)->attr = ((&display->d_rend)->attr | (1<<6)) ^ (f & 0x100 ? 0 : (1<<6)));
  ((&display->d_rend)->color = ((&display->d_rend)->color & 0x0f) | (b << 4 & 0xf0), (&display->d_rend)->attr = ((&display->d_rend)->attr | (1<<7)) ^ (b & 0x100 ? 0 : (1<<7)));

  display->d_col16change = 0;

  if (!display->d_hascolor)
    return;
  f = f ? ((((f) & 0x1f8) == 0x108 ? (f) ^ 0x108 : (f & 0xff)) ^ 9) : -1;
  b = b ? ((((b) & 0x1f8) == 0x108 ? (b) ^ 0x108 : (b & 0xff)) ^ 9) : -1;
  of = of ? ((((of) & 0x1f8) == 0x108 ? (of) ^ 0x108 : (of & 0xff)) ^ 9) : -1;
  ob = ob ? ((((ob) & 0x1f8) == 0x108 ? (ob) ^ 0x108 : (ob & 0xff)) ^ 9) : -1;
# 1779 "display.c"
  if (f != of && f != (of | 8))
    {
      if (f == -1)
 AddCStr("\033[39m");
      else if ((display->d_tcs[60].str))
 AddCStr2((display->d_tcs[60].str), f & 7);
      else if ((display->d_tcs[62].str))
 AddCStr2((display->d_tcs[62].str), sftrans[f & 7]);
    }
  if (b != ob && b != (ob | 8))
    {
      if (b == -1)
 AddCStr("\033[49m");
      else if ((display->d_tcs[61].str))
 AddCStr2((display->d_tcs[61].str), b & 7);
      else if ((display->d_tcs[63].str))
 AddCStr2((display->d_tcs[63].str), sftrans[b & 7]);
    }

  if (f != of && (display->d_tcs[96].flg) && (f & 8) != 0 && f != -1)
    {

      AddCStr2("\033[9%p1%dm", f & 7);



    }
  if (b != ob && (display->d_tcs[96].flg) && (b & 8) != 0 && b != -1)
    {

      AddCStr2("\033[10%p1%dm", b & 7);



    }

}

static void
SetBackColor(new)
int new;
{
  if (!display)
    return;
  SetColor((((&display->d_rend)->color & 0x0f) | ((&display->d_rend)->attr & (1<<6) ? 0x100 : 0)), new);
}


void
SetRendition(mc)
struct mchar *mc;
{
  if (!display)
    return;

  if (nattr2color && display->d_hascolor && (mc->attr & nattr2color) != 0)
    {
      static struct mchar mmc;
      int i;
      mmc = *mc;
      for (i = 0; i < 8; i++)
 if (attr2color[i] && (mc->attr & (1 << i)) != 0)
   {
     if (mc->color == 0 && attr2color[i][3])
              ApplyAttrColor(attr2color[i][3], &mmc);
     else if ((mc->color & 0x0f) == 0 && attr2color[i][2])
              ApplyAttrColor(attr2color[i][2], &mmc);
     else if ((mc->color & 0xf0) == 0 && attr2color[i][1])
              ApplyAttrColor(attr2color[i][1], &mmc);
     else
              ApplyAttrColor(attr2color[i][0], &mmc);
   }
      mc = &mmc;
      do {} while (0);
    }

  if (display->d_hascolor && (display->d_tcs[68].flg) && (mc->attr & ((1<<6)|(1<<7))))
    {
      int a = mc->attr;
      if ((mc->attr & (1<<6)) && (display->d_tcs[49].str))
 a |= (1<<2);
      if ((mc->attr & (1<<7)) && (display->d_tcs[52].str))
 a |= (1<<5);
      if (display->d_rend.attr != a)
        SetAttr(a);
    }
  else


    if (display->d_rend.attr != mc->attr)
    SetAttr(mc->attr);


  if (display->d_rend.color != mc->color




      || display->d_col16change

    )
    SetColor((((mc)->color & 0x0f) | ((mc)->attr & (1<<6) ? 0x100 : 0)), (((mc)->color & 0xf0) >> 4 | ((mc)->attr & (1<<7) ? 0x100 : 0)));


  if (display->d_rend.font != mc->font)
    SetFont(mc->font);

  if (display->d_encoding == 8)
    display->d_rend.fontx = mc->fontx;


}

void
SetRenditionMline(ml, x)
struct mline *ml;
int x;
{
  if (!display)
    return;

  if (nattr2color && display->d_hascolor && (ml->attr[x] & nattr2color) != 0)
    {
      struct mchar mc;
      do { (&mc)->image = (ml)->image[x]; (&mc)->attr = (ml)->attr[x]; (&mc)->font = (ml)->font[x]; (&mc)->fontx = (ml)->fontx[x]; (&mc)->color = (ml)->color[x]; (&mc)->mbcs = 0; } while (0);
      SetRendition(&mc);
      return;
    }

  if (display->d_hascolor && (display->d_tcs[68].flg) && (ml->attr[x] & ((1<<6)|(1<<7))))
    {
      int a = ml->attr[x];
      if ((ml->attr[x] & (1<<6)) && (display->d_tcs[49].str))
 a |= (1<<2);
      if ((ml->attr[x] & (1<<7)) && (display->d_tcs[52].str))
 a |= (1<<5);
      if (display->d_rend.attr != a)
        SetAttr(a);
    }
  else


    if (display->d_rend.attr != ml->attr[x])
    SetAttr(ml->attr[x]);

  if (display->d_rend.color != ml->color[x]




      || display->d_col16change

    )
    {
      struct mchar mc;
      do { (&mc)->image = (ml)->image[x]; (&mc)->attr = (ml)->attr[x]; (&mc)->font = (ml)->font[x]; (&mc)->fontx = (ml)->fontx[x]; (&mc)->color = (ml)->color[x]; (&mc)->mbcs = 0; } while (0);
      SetColor((((&mc)->color & 0x0f) | ((&mc)->attr & (1<<6) ? 0x100 : 0)), (((&mc)->color & 0xf0) >> 4 | ((&mc)->attr & (1<<7) ? 0x100 : 0)));
    }


  if (display->d_rend.font != ml->font[x])
    SetFont(ml->font[x]);

  if (display->d_encoding == 8)
    display->d_rend.fontx = ml->fontx[x];


}

void
MakeStatus(msg)
char *msg;
{
  register char *s, *t;
  register int max;

  if (!display)
    return;

  if (display->d_blocked)
    return;
  if (!display->d_tcinited)
    {
      do {} while (0);
      if (display->d_processinputdata)
 return;
      AddStr(msg);
      AddStr("\r\n");
      Flush(0);
      return;
    }
  if (!use_hardstatus || !(display->d_tcs[75].flg))
    {
      max = display->d_width;
      if ((display->d_tcs[87].flg) == 0)
 max--;
    }
  else
    max = (display->d_tcs[76].num) > 0 ? (display->d_tcs[76].num) : (display->d_width - !(display->d_tcs[87].flg));
  if (display->d_status)
    {

      if (strcmp(msg, display->d_status_lastmsg) == 0)
 {
   do {} while (0);
   if (!display->d_status_obufpos)
     SetTimeout(&display->d_statusev, MsgWait);
   return;
 }
      RemoveStatusMinWait();
    }
  for (s = t = msg; *s && t - msg < max; ++s)
    if (*s == ((('g')&037)))
      AddCStr((display->d_tcs[42].str));
    else if ((unsigned char)*s >= ' ' && *s != 0177)
      *t++ = *s;
  *t = '\0';
  if (t == msg)
    return;
  if (t - msg >= display->d_status_buflen)
    {
      char *buf;
      if (display->d_status_lastmsg)
 buf = realloc(display->d_status_lastmsg, t - msg + 1);
      else
 buf = malloc(t - msg + 1);
      if (buf)
 {
   display->d_status_lastmsg = buf;
   display->d_status_buflen = t - msg + 1;
 }
    }
  if (t - msg < display->d_status_buflen)
    strcpy(display->d_status_lastmsg, msg);
  display->d_status_len = t - msg;
  display->d_status_lastx = display->d_x;
  display->d_status_lasty = display->d_y;
  if (!use_hardstatus || display->d_has_hstatus == 0 || display->d_has_hstatus == 2)
    {
      display->d_status = 1;
      do {} while (0);
      GotoPos(0, (display->d_height-1));
      SetRendition(&mchar_so);
      InsertMode(0);
      AddStr(msg);
      if (display->d_status_len < max)
 {

   display->d_status_len++;
   SetRendition(&mchar_null);
   do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (' '); } while (0);
   if (display->d_status_len < max)
     {
       display->d_status_len++;
       do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (' '); } while (0);
       do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ('\b'); } while (0);
     }
   do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ('\b'); } while (0);
 }
      display->d_x = -1;
    }
  else
    {
      display->d_status = 2;
      ShowHStatus(msg);
    }

  display->d_status_obufpos = display->d_obufp - display->d_obuf;
  do {} while (0);

  if (display->d_status == 1)
    {
      struct display *olddisplay = display;
      struct layer *oldflayer = flayer;


      display->d_status = 0;
      GotoPos(0, (display->d_height-1));
      RefreshLine((display->d_height-1), 0, display->d_status_len - 1, 0);
      GotoPos(display->d_status_lastx, display->d_status_lasty);
      flayer = display->d_forecv ? display->d_forecv->c_layer : 0;
      if (flayer)
 LGotoPos(flayer, flayer->l_x, flayer->l_y);
      display = olddisplay;
      flayer = oldflayer;
      display->d_status = 1;
    }
}

void
RemoveStatus()
{
  struct display *olddisplay;
  struct layer *oldflayer;
  int where;

  if (!display)
    return;
  if (!(where = display->d_status))
    return;

  do {} while (0);
  if (display->d_status_obuffree >= 0)
    {
      display->d_obuflen = display->d_status_obuflen;
      display->d_obuffree = display->d_status_obuffree;
      display->d_status_obuffree = -1;
    }
  display->d_status = 0;
  display->d_status_obufpos = 0;
  display->d_status_bell = 0;
  evdeq(&display->d_statusev);
  olddisplay = display;
  oldflayer = flayer;
  if (where == 1)
    {
      if (captionalways || (display->d_canvas.c_slperp && display->d_canvas.c_slperp->c_slnext))
 {
   GotoPos(0, (display->d_height-1));
   RefreshLine((display->d_height-1), 0, display->d_status_len - 1, 0);
   GotoPos(display->d_status_lastx, display->d_status_lasty);
 }
    }
  else
    RefreshHStatus();
  flayer = display->d_forecv ? display->d_forecv->c_layer : 0;
  if (flayer)
    LGotoPos(flayer, flayer->l_x, flayer->l_y);
  display = olddisplay;
  flayer = oldflayer;
}


static void
RemoveStatusMinWait()
{

  if (!display->d_status_bell && !display->d_status_obufpos)
    {
      struct timeval now;
      int ti;
      gettimeofday(&now, ((void*)0));
      ti = (now.tv_sec - display->d_status_time.tv_sec) * 1000 + (now.tv_usec - display->d_status_time.tv_usec) / 1000;
      if (ti < MsgMinWait)
 DisplaySleep1000(MsgMinWait - ti, 0);
    }
  RemoveStatus();
}


static int
strlen_onscreen(unsigned char *c, unsigned char *end)
{
  int len = 0;
  while (*c && (!end || c < end))
    {
      int v, dec = 0;
      do
 {
   v = FromUtf8(*c++, &dec);
   if (v == -2)
     c--;
 }
      while (v < 0 && (!end || c < end));
      if (!utf8_iscomb(v))
        {
          if (utf8_isdouble(v))
            len++;
          len++;
        }
    }

  return len;
}

static int
PrePutWinMsg(s, start, max)
char *s;
int start, max;
{



  if (display->d_encoding == 8)
    {
      int chars = strlen_onscreen((unsigned char *)(s + start), (unsigned char *)(s + max));
      display->d_encoding = 0;
      PutWinMsg(s, start, max + ((max - start) - chars));
      display->d_encoding = 8;
      display->d_x -= (max - chars);


      return start + chars;
    }
  else
    {
      PutWinMsg(s, start, max);
      return max;
    }
}
# 2191 "display.c"
void
ShowHStatus(str)
char *str;
{
  int l, ox, oy, max;

  if (display->d_status == 1 && display->d_has_hstatus == 1 && (display->d_height-1) == display->d_height-1)
    return;
  if (display->d_blocked)
    return;

  if ((display->d_tcs[75].flg) && display->d_has_hstatus == 3)
    {
      if (!display->d_hstatus && (str == 0 || *str == 0))
 return;
      do {} while (0);
      SetRendition(&mchar_null);
      InsertMode(0);
      if (display->d_hstatus)
 AddCStr((display->d_tcs[79].str));
      display->d_hstatus = 0;
      if (str == 0 || *str == 0)
 return;
      AddCStr2((display->d_tcs[77].str), 0);
      max = (display->d_tcs[76].num) > 0 ? (display->d_tcs[76].num) : (display->d_width - !(display->d_tcs[87].flg));
      if ((int)strlen(str) > max)
 AddStrn(str, max);
      else
 AddStr(str);
      AddCStr((display->d_tcs[78].str));
      display->d_hstatus = 1;
    }
  else if (display->d_has_hstatus == 1)
    {
      do {} while (0);
      ox = display->d_x;
      oy = display->d_y;
      str = str ? str : "";
      l = strlen(str);
      if (l > display->d_width)
 l = display->d_width;
      GotoPos(0, display->d_height - 1);
      SetRendition(captionalways || display->d_cvlist == 0 || display->d_cvlist->c_next ? &mchar_null: &mchar_so);
      l = PrePutWinMsg(str, 0, l);
      if (!captionalways && display->d_cvlist && !display->d_cvlist->c_next)
        while (l++ < display->d_width)
   PUTCHARLP(' ');
      if (l < display->d_width)
        ClearArea(l, display->d_height - 1, l, display->d_width - 1, display->d_width - 1, display->d_height - 1, 0, 0);
      if (ox != -1 && oy != -1)
 GotoPos(ox, oy);
      display->d_hstatus = *str ? 1 : 0;
      SetRendition(&mchar_null);
    }
  else if (display->d_has_hstatus == 4)
    {
      do {} while (0);
      ox = display->d_x;
      oy = display->d_y;
      str = str ? str : "";
      l = strlen(str);
      if (l > display->d_width)
        l = display->d_width;
      GotoPos(0, 0);
      SetRendition(captionalways || display->d_cvlist == 0 || display->d_cvlist->c_next ? &mchar_null: &mchar_so);
      l = PrePutWinMsg(str, 0, l);
      if (!captionalways || (display->d_cvlist && !display->d_cvlist->c_next))
        while (l++ < display->d_width)
          PUTCHARLP(' ');
      if (l < display->d_width)
        ClearArea(l, 0, l, display->d_width - 1, display->d_width - 1, 0, 0, 0);
      if (ox != -1 && oy != -1)
        GotoPos(ox, oy);
      display->d_hstatus = *str ? 1 : 0;
      SetRendition(&mchar_null);
    }
  else if (str && *str && display->d_has_hstatus == 2)
    {
      do {} while (0);
      Msg(0, "%s", str);
    }
}





void
RefreshHStatus()
{
  char *buf;

  int extrabytes = strlen(hstatusstring) - strlen_onscreen(hstatusstring, ((void*)0));



  evdeq(&display->d_hstatusev);
  if (display->d_status == 2)
    return;
  buf = MakeWinMsgEv(hstatusstring, display->d_fore, '%', ((display->d_tcs[75].flg) && display->d_has_hstatus == 3 && (display->d_tcs[76].num) > 0) ? (display->d_tcs[76].num) : display->d_width - !(display->d_tcs[87].flg) + extrabytes, &display->d_hstatusev, 0);
  if (buf && *buf)
    {
      ShowHStatus(buf);
      if (display->d_has_hstatus != 0 && display->d_hstatusev.timeout.tv_sec)
        evenq(&display->d_hstatusev);
    }
  else
    ShowHStatus((char *)0);
}






void
RefreshAll(isblank)
int isblank;
{
  struct canvas *cv;

  do {} while (0);
  do {} while (0);
  for (cv = display->d_cvlist; cv; cv = cv->c_next)
    {
      { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = cv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = cv->c_lnext; flayer = l; l->l_cvlist = cv; cv->c_lnext = 0; (*flayer->l_layfn->lf_LayRedisplayLine)(-1, -1, -1, isblank); flayer = oldflayer; l->l_cvlist = cvlist; cv->c_lnext = cvlnext; display = olddisplay; };
      display = cv->c_display;
    }
  RefreshArea(0, 0, display->d_width - 1, display->d_height - 1, isblank);
}

void
RefreshArea(xs, ys, xe, ye, isblank)
int xs, ys, xe, ye, isblank;
{
  int y;
  do {} while (0);
  do {} while (0);
  do {} while (0);
  if (!isblank && xs == 0 && xe == display->d_width - 1 && ye == display->d_height - 1 && (ys == 0 || (display->d_tcs[35].str)))
    {
      ClearArea(xs, ys, xs, xe, xe, ye, 0, 0);
      isblank = 1;
    }
  for (y = ys; y <= ye; y++)
    RefreshLine(y, xs, xe, isblank);
}

void
RefreshLine(y, from, to, isblank)
int y, from, to, isblank;
{
  struct viewport *vp, *lvp;
  struct canvas *cv, *lcv, *cvlist, *cvlnext;
  struct layer *oldflayer;
  int xx, yy, l;
  char *buf;
  struct win *p;

  do {} while (0);

  do {} while (0);
  do {} while (0);

  if (display->d_status == 1 && y == (display->d_height-1))
    {
      if (to >= display->d_status_len)
 display->d_status_len = to + 1;
      return;
    }

  if (isblank == 0 && (display->d_tcs[37].str) && to == display->d_width - 1 && from < to && display->d_status != 2)
    {
      GotoPos(from, y);
      if ((display->d_tcs[33].flg) || (display->d_tcs[66].flg))
 SetRendition(&mchar_null);
      AddCStr((display->d_tcs[37].str));
      isblank = 1;
    }

  if ((y == display->d_height - 1 && display->d_has_hstatus == 1) || (y == 0 && display->d_has_hstatus == 4) )
    {
      RefreshHStatus();
      return;
    }

  while (from <= to)
    {
      lcv = 0;
      lvp = 0;
      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 {
   if (y == cv->c_ye + 1 && from >= cv->c_xs && from <= cv->c_xe)
     {

       int extrabytes = strlen(captionstring) - strlen_onscreen(captionstring, ((void*)0));



       p = ((struct win *)(cv->c_layer)->l_bottom->l_data);
       buf = MakeWinMsgEv(captionstring, p, '%', cv->c_xe - cv->c_xs + (cv->c_xe + 1 < display->d_width || (display->d_tcs[87].flg)) + extrabytes, &cv->c_captev, 0);
       if (cv->c_captev.timeout.tv_sec)
  evenq(&cv->c_captev);
       xx = to > cv->c_xe ? cv->c_xe : to;
       l = strlen(buf);
       GotoPos(from, y);
       SetRendition(&mchar_so);
       if (l > xx - cv->c_xs + 1)
  l = xx - cv->c_xs + 1;
       l = PrePutWinMsg(buf, from - cv->c_xs, l + extrabytes);
       from = cv->c_xs + l;
       for (; from <= xx; from++)
  PUTCHARLP(' ');
       break;
     }
   if (from == cv->c_xe + 1 && y >= cv->c_ys && y <= cv->c_ye + 1)
     {
       GotoPos(from, y);
       SetRendition(&mchar_so);
       PUTCHARLP(' ');
       from++;
       break;
     }
   if (y < cv->c_ys || y > cv->c_ye || to < cv->c_xs || from > cv->c_xe)
     continue;
   do {} while (0);
   do {} while (0);
   for (vp = cv->c_vplist; vp; vp = vp->v_next)
     {
       do {} while (0);
       do {} while (0);

       if (y >= vp->v_ys && y <= vp->v_ye && from <= vp->v_xe && to >= vp->v_xs && (lvp == 0 || lvp->v_xs > vp->v_xs))
  {
    lcv = cv;
    lvp = vp;
  }
     }
 }
      if (cv)
 continue;
      if (lvp == 0)
 break;
      if (from < lvp->v_xs)
 {
   if (!isblank)
     DisplayLine(&mline_null, &mline_blank, y, from, lvp->v_xs - 1);
   from = lvp->v_xs;
 }


      yy = y - lvp->v_yoff;
      xx = to < lvp->v_xe ? to : lvp->v_xe;

      if (lcv->c_layer && lcv->c_xoff + lcv->c_layer->l_width == from)
 {
   GotoPos(from, y);
   SetRendition(&mchar_blank);
   PUTCHARLP('|');
   from++;
 }
      if (lcv->c_layer && yy == lcv->c_layer->l_height)
 {
   GotoPos(from, y);
   SetRendition(&mchar_blank);
   while (from <= lvp->v_xe && from - lvp->v_xoff < lcv->c_layer->l_width)
     {
       PUTCHARLP('-');
       from++;
     }
   if (from >= lvp->v_xe + 1)
     continue;
 }
      if (lcv->c_layer == 0 || yy >= lcv->c_layer->l_height || from - lvp->v_xoff >= lcv->c_layer->l_width)
 {
   if (!isblank)
     DisplayLine(&mline_null, &mline_blank, y, from, lvp->v_xe);
   from = lvp->v_xe + 1;
   continue;
 }

      if (xx - lvp->v_xoff >= lcv->c_layer->l_width)
 xx = lcv->c_layer->l_width + lvp->v_xoff - 1;
      oldflayer = flayer;
      flayer = lcv->c_layer;
      cvlist = flayer->l_cvlist;
      cvlnext = lcv->c_lnext;
      flayer->l_cvlist = lcv;
      lcv->c_lnext = 0;
      (*flayer->l_layfn->lf_LayRedisplayLine)(yy, from - lvp->v_xoff, xx - lvp->v_xoff, isblank);
      flayer->l_cvlist = cvlist;
      lcv->c_lnext = cvlnext;
      flayer = oldflayer;

      from = xx + 1;
    }
  if (!isblank && from <= to)
    DisplayLine(&mline_null, &mline_blank, y, from, to);
}






static void
WriteLP(x2, y2)
int x2, y2;
{
  struct mchar oldrend;

  do {} while (0);
  do {} while (0);
  oldrend = display->d_rend;
  do {} while (0);

  if (display->d_lpchar.mbcs)
    {
      if (x2 > 0)
 x2--;
      else
 display->d_lpchar = mchar_blank;
    }


  GotoPos(x2, y2);
  SetRendition(&display->d_lpchar);
  PUTCHAR(display->d_lpchar.image);

  if (display->d_lpchar.mbcs)
    PUTCHAR(display->d_lpchar.mbcs);

  display->d_lp_missing = 0;
  SetRendition(&oldrend);
}

void
ClearLine(oml, y, from, to, bce)
struct mline *oml;
int from, to, y, bce;
{
  int x;

  struct mchar bcechar;


  do {} while (0);
  if ((display->d_tcs[33].flg))
    SetRendition(&mchar_null);

  if ((display->d_tcs[66].flg))
    SetBackColor(bce);

  if (from == 0 && (display->d_tcs[38].str) && (to != display->d_width - 1 || (display->d_x == to && display->d_y == y)) && (!bce || (display->d_tcs[66].flg)))
    {
      GotoPos(to, y);
      AddCStr((display->d_tcs[38].str));
      return;
    }
  if (to == display->d_width - 1 && (display->d_tcs[37].str) && (!bce || (display->d_tcs[66].flg)))
    {
      GotoPos(from, y);
      AddCStr((display->d_tcs[37].str));
      return;
    }
  if (oml == 0)
    oml = &mline_null;

  if (!bce)
    {
      DisplayLine(oml, &mline_blank, y, from, to);
      return;
    }
  bcechar = mchar_null;
  ((&bcechar)->color = ((&bcechar)->color & 0x0f) | (bce << 4 & 0xf0), (&bcechar)->attr = ((&bcechar)->attr | (1<<7)) ^ (bce & 0x100 ? 0 : (1<<7)));
  for (x = from; x <= to; x++)
    do { (&mline_old)->image[x] = (&bcechar)->image; (&mline_old)->attr[x] = (&bcechar)->attr; (&mline_old)->font[x] = (&bcechar)->font; (&mline_old)->fontx[x] = (&bcechar)->fontx; (&mline_old)->color[x] = (&bcechar)->color; } while (0);
  DisplayLine(oml, &mline_old, y, from, to);



}

void
DisplayLine(oml, ml, y, from, to)
struct mline *oml, *ml;
int from, to, y;
{
  register int x;
  int last2flag = 0, delete_lp = 0;

  do {} while (0);
  do {} while (0);
  do {} while (0);
  do {} while (0);
  if (!(display->d_tcs[87].flg) && y == display->d_bot && to == display->d_width - 1)
    {
      if (display->d_lp_missing || !( (oml)->image[to] == (ml)->image[to] && (oml)->attr[to] == (ml)->attr[to] && (oml)->font[to] == (ml)->font[to] && (oml)->fontx[to] == (ml)->fontx[to] && (oml)->color[to] == (ml)->color[to] ))
 {

   if (((display->d_tcs[29].str) || (display->d_tcs[27].str)) && from < to && !((display->d_encoding == 8) ? (unsigned char)(ml)->font[(to) + 1] == 0xff && (unsigned char)(ml)->image[(to) + 1] == 0xff : ((unsigned char)(ml)->font[to] & 0x1f) != 0 && ((unsigned char)(ml)->font[to] & 0xe0) == 0 ))



     {
       last2flag = 1;
       display->d_lp_missing = 0;
       to--;
     }
   else
     {
       delete_lp = !( (&mchar_blank)->image == (oml)->image[to] && (&mchar_blank)->attr == (oml)->attr[to] && (&mchar_blank)->font == (oml)->font[to] && (&mchar_blank)->fontx == (oml)->fontx[to] && (&mchar_blank)->color == (oml)->color[to] ) && ((display->d_tcs[37].str) || (display->d_tcs[31].str) || (display->d_tcs[32].str));
       display->d_lp_missing = !( (&mchar_blank)->image == (ml)->image[to] && (&mchar_blank)->attr == (ml)->attr[to] && (&mchar_blank)->font == (ml)->font[to] && (&mchar_blank)->fontx == (ml)->fontx[to] && (&mchar_blank)->color == (ml)->color[to] );
       do { (&display->d_lpchar)->image = (ml)->image[to]; (&display->d_lpchar)->attr = (ml)->attr[to]; (&display->d_lpchar)->font = (ml)->font[to]; (&display->d_lpchar)->fontx = (ml)->fontx[to]; (&display->d_lpchar)->color = (ml)->color[to]; (&display->d_lpchar)->mbcs = 0; } while (0);
     }
 }
      to--;
    }

  if (display->d_mbcs)
    {

      do {} while (0);
      SetRenditionMline(ml, from);
      PUTCHAR(ml->image[from]);
      from++;
    }

  for (x = from; x <= to; x++)
    {



        {
   if (ml != ((void*)0) && (x < to || x != display->d_width - 1 || ml->image[x + 1]))
     if (( (oml)->image[x] == (ml)->image[x] && (oml)->attr[x] == (ml)->attr[x] && (oml)->font[x] == (ml)->font[x] && (oml)->fontx[x] == (ml)->fontx[x] && (oml)->color[x] == (ml)->color[x] ))
       continue;
   GotoPos(x, y);
        }

      if (((display->d_encoding == 8) ? (unsigned char)(ml)->font[x] == 0xff && (unsigned char)(ml)->image[x] == 0xff : ((unsigned char)(ml)->font[x] & 0xe0) == 0x80 ))
 {
   x--;
   do {} while (0);
   GotoPos(x, y);
 }
      if (x == to && ((display->d_encoding == 8) ? (unsigned char)(ml)->font[(x) + 1] == 0xff && (unsigned char)(ml)->image[(x) + 1] == 0xff : ((unsigned char)(ml)->font[x] & 0x1f) != 0 && ((unsigned char)(ml)->font[x] & 0xe0) == 0 ))
 break;

      SetRenditionMline(ml, x);
      PUTCHAR(ml->image[x]);

      if (((display->d_encoding == 8) ? (unsigned char)(ml)->font[(x) + 1] == 0xff && (unsigned char)(ml)->image[(x) + 1] == 0xff : ((unsigned char)(ml)->font[x] & 0x1f) != 0 && ((unsigned char)(ml)->font[x] & 0xe0) == 0 ))
        PUTCHAR(ml->image[++x]);

    }





  if (last2flag)
    {
      GotoPos(x, y);
      SetRenditionMline(ml, x + 1);
      PUTCHAR(ml->image[x + 1]);
      GotoPos(x, y);
      SetRenditionMline(ml, x);
      INSERTCHAR(ml->image[x]);
    }
  else if (delete_lp)
    {
      if ((display->d_tcs[33].flg))
 SetRendition(&mchar_null);
      if ((display->d_tcs[31].str))
 AddCStr((display->d_tcs[31].str));
      else if ((display->d_tcs[32].str))
 AddCStr2((display->d_tcs[32].str), 1);
      else if ((display->d_tcs[37].str))
 AddCStr((display->d_tcs[37].str));
    }
}

void
PutChar(c, x, y)
struct mchar *c;
int x, y;
{
  GotoPos(x, y);
  SetRendition(c);
  PUTCHARLP(c->image);

  if (c->mbcs)
    {

      if (display->d_encoding == 8)
        display->d_rend.font = 0;

      PUTCHARLP(c->mbcs);
    }

}

void
InsChar(c, x, xe, y, oml)
struct mchar *c;
int x, xe, y;
struct mline *oml;
{
  GotoPos(x, y);
  if (y == display->d_bot && !(display->d_tcs[87].flg))
    {
      if (x == display->d_width - 1)
        {
          display->d_lp_missing = 1;
          display->d_lpchar = *c;
          return;
        }
      if (xe == display->d_width - 1)
        display->d_lp_missing = 0;
    }
  if (x == xe)
    {
      SetRendition(c);
      PUTCHARLP(c->image);
      return;
    }
  if (!((display->d_tcs[29].str) || (display->d_tcs[30].str) || (display->d_tcs[27].str)) || xe != display->d_width - 1)
    {
      RefreshLine(y, x, xe, 0);
      GotoPos(x + 1, y);

      return;
    }
  InsertMode(1);
  if (!display->d_insert)
    {

      if (c->mbcs && (display->d_tcs[29].str))
        AddCStr((display->d_tcs[29].str));
      if ((display->d_tcs[29].str))
        AddCStr((display->d_tcs[29].str));
      else
        AddCStr2((display->d_tcs[30].str), c->mbcs ? 2 : 1);






    }
  SetRendition(c);
  RAW_PUTCHAR(c->image);

  if (c->mbcs)
    {

      if (display->d_encoding == 8)
 display->d_rend.font = 0;

      if (display->d_x == display->d_width - 1)
 PUTCHARLP(c->mbcs);
      else
 RAW_PUTCHAR(c->mbcs);
    }

}

void
WrapChar(c, x, y, xs, ys, xe, ye, ins)
struct mchar *c;
int x, y;
int xs, ys, xe, ye;
int ins;
{
  int bce;


  bce = (((c)->color & 0xf0) >> 4 | ((c)->attr & (1<<7) ? 0x100 : 0));



  do {} while (0);
  do {} while (0);
  do {} while (0);
  do {} while (0);
  do {} while (0);
  if (xs != 0 || x != display->d_width || !(display->d_tcs[83].flg))
    {
      if (y == ye)
 ScrollV(xs, ys, xe, ye, 1, bce);
      else if (y < display->d_height - 1)
 y++;
      if (ins)
 InsChar(c, xs, xe, y, 0);
      else
        PutChar(c, xs, y);
      return;
    }
  if (y == ye)
    {
      do {} while (0);
      ChangeScrollRegion(ys, ye);
      if (display->d_bot != y || display->d_x != display->d_width || (!bce && !(display->d_tcs[66].flg)))
 {
   do {} while (0);
   ScrollV(xs, ys, xe, ye, 1, bce);
   y--;
 }
    }
  else if (y == display->d_bot)
    ChangeScrollRegion(0, display->d_height - 1);
  if (display->d_x != display->d_width || display->d_y != y)
    {
      if ((display->d_tcs[87].flg) && y >= 0)
        RefreshLine(y, display->d_width - 1, display->d_width - 1, 0);
      do {} while (0);
      if (display->d_x != display->d_width || display->d_y != y)
 {
   if (y == ye)
     ScrollV(xs, ys, xe, ye, 1, bce);
   GotoPos(xs, y == ye || y == display->d_height - 1 ? y : y + 1);
 }
    }
  do {} while (0);
  if (y != ye && y < display->d_height - 1)
    y++;
  if (ins != display->d_insert)
    InsertMode(ins);
  if (ins && !display->d_insert)
    {
      InsChar(c, 0, xe, y, 0);
      do {} while (0);
      return;
    }
  display->d_y = y;
  display->d_x = 0;
  SetRendition(c);
  RAW_PUTCHAR(c->image);

  if (c->mbcs)
    {

      if (display->d_encoding == 8)
 display->d_rend.font = 0;

      RAW_PUTCHAR(c->mbcs);
    }

  do {} while (0);
}

int
ResizeDisplay(wi, he)
int wi, he;
{
  do {} while (0);
  do {} while (0);
  if (display->d_width == wi && display->d_height == he)
    {
      do {} while (0);
      return 0;
    }
  if (display->d_width != wi && (display->d_height == he || !(display->d_tcs[44].str)) && (display->d_tcs[45].str) && (wi == Z0width || wi == Z1width))
    {
      do {} while (0);
      AddCStr(wi == Z0width ? (display->d_tcs[45].str) : (display->d_tcs[46].str));
      ChangeScreenSize(wi, display->d_height, 0);
      return (he == display->d_height) ? 0 : -1;
    }
  if ((display->d_tcs[44].str))
    {
      do {} while (0);
      AddCStr(tgoto((display->d_tcs[44].str), wi, he));
      ChangeScreenSize(wi, he, 0);
      return 0;
    }
  return -1;
}

void
ChangeScrollRegion(newtop, newbot)
int newtop, newbot;
{
  if (display == 0)
    return;
  if (newtop == newbot)
    return;
  if (newtop == -1)
    newtop = 0;
  if (newbot == -1)
    newbot = display->d_height - 1;
  if ((display->d_tcs[18].str) == 0)
    {
      display->d_top = 0;
      display->d_bot = display->d_height - 1;
      return;
    }
  if (display->d_top == newtop && display->d_bot == newbot)
    return;
  do {} while (0);
  AddCStr(tgoto((display->d_tcs[18].str), newbot, newtop));
  display->d_top = newtop;
  display->d_bot = newbot;
  display->d_y = display->d_x = -1;
}
# 2947 "display.c"
void
AddStr(str)
char *str;
{
  register char c;

  do {} while (0);


  if (display->d_encoding == 8)
    {
      while ((c = *str++))
        AddUtf8((unsigned char)c);
      return;
    }

  while ((c = *str++))
    do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (c); } while (0);
}

void
AddStrn(str, n)
char *str;
int n;
{
  register char c;

  do {} while (0);

  if (display->d_encoding == 8)
    {
      while ((c = *str++) && n-- > 0)
        AddUtf8((unsigned char)c);
    }
  else

  while ((c = *str++) && n-- > 0)
    do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (c); } while (0);
  while (n-- > 0)
    do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (' '); } while (0);
}

void
Flush(progress)
int progress;
{
  register int l;
  int wr;
  register char *p;

  do {} while (0);
  l = display->d_obufp - display->d_obuf;
  do {} while (0);
  if (l == 0)
    return;
  do {} while (0);
  if (display->d_userfd < 0)
    {
      display->d_obuffree += l;
      display->d_obufp = display->d_obuf;
      return;
    }
  p = display->d_obuf;
  if (!progress)
    {
      if (fcntl(display->d_userfd, 4, 0))
 do {} while (0);
    }
  while (l)
    {
      if (progress)
 {
   fd_set w;
   do { int __d0, __d1; __asm__ __volatile__ ("cld; rep; " "stosq" : "=c" (__d0), "=D" (__d1) : "a" (0), "0" (sizeof (fd_set) / sizeof (__fd_mask)), "1" (&((&w)->fds_bits)[0]) : "memory"); } while (0);
   ((void) (((&w)->fds_bits)[((display->d_userfd) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) 1 << ((display->d_userfd) % (8 * (int) sizeof (__fd_mask))))));
   struct timeval t;
   t.tv_sec = progress;
   t.tv_usec = 0;
   wr = select(1024, (fd_set *)0, &w, (fd_set *)0, &t);
   if (wr == -1)
     {
       if ((*__errno_location ()) == 4)
  continue;
       do {} while (0);
       break;
     }
   if (wr == 0)
     {

       do {} while (0);
       break;
     }
 }
      wr = write(display->d_userfd, p, l);
      if (wr <= 0)
 {
   if ((*__errno_location ()) == 4)
     continue;
   do {} while (0);
   break;
 }
      display->d_obuffree += wr;
      p += wr;
      l -= wr;
    }
  if (l)
    do {} while (0);
  display->d_obuffree += l;
  display->d_obufp = display->d_obuf;
  if (!progress)
    {
      if (fcntl(display->d_userfd, 4, 04000))
 do {} while (0);
    }
  if (display->d_blocked == 1)
    display->d_blocked = 0;
  display->d_blocked_fuzz = 0;
}

void
freetty()
{
  if (display->d_userfd >= 0)
    close(display->d_userfd);
  do {} while (0);
  display->d_userfd = -1;
  display->d_obufp = 0;
  display->d_obuffree = 0;
  if (display->d_obuf)
    free(display->d_obuf);
  display->d_obuf = 0;
  display->d_obuflen = 0;
  display->d_obuflenmax = -display->d_obufmax;
  display->d_blocked = 0;
  display->d_blocked_fuzz = 0;
}






void
Resize_obuf()
{
  register int ind;

  do {} while (0);
  if (display->d_status_obuffree >= 0)
    {
      do {} while (0);
      RemoveStatusMinWait();
      if (--display->d_obuffree > 0)
 return;
    }
  if (display->d_obuflen && display->d_obuf)
    {
      ind = display->d_obufp - display->d_obuf;
      display->d_obuflen += 4096;
      display->d_obuffree += 4096;
      display->d_obuf = realloc(display->d_obuf, display->d_obuflen);
    }
  else
    {
      ind = 0;
      display->d_obuflen = 4096;
      display->d_obuffree = 4096;
      display->d_obuf = malloc(display->d_obuflen);
    }
  if (!display->d_obuf)
    Panic(0, "Out of memory");
  display->d_obufp = display->d_obuf + ind;
  display->d_obuflenmax = display->d_obuflen - display->d_obufmax;
  do {} while (0);
}

void
DisplaySleep1000(n, eat)
int n;
int eat;
{
  char buf;
  fd_set r;
  struct timeval t;

  if (n <= 0)
    return;
  if (!display)
    {
      do {} while (0);
      sleep1000(n);
      return;
    }
  t.tv_usec = (n % 1000) * 1000;
  t.tv_sec = n / 1000;
  do { int __d0, __d1; __asm__ __volatile__ ("cld; rep; " "stosq" : "=c" (__d0), "=D" (__d1) : "a" (0), "0" (sizeof (fd_set) / sizeof (__fd_mask)), "1" (&((&r)->fds_bits)[0]) : "memory"); } while (0);
  ((void) (((&r)->fds_bits)[((display->d_userfd) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) 1 << ((display->d_userfd) % (8 * (int) sizeof (__fd_mask))))));
  if (select(1024, &r, (fd_set *)0, (fd_set *)0, &t) > 0)
    {
      do {} while (0);
      if (eat)
        read(display->d_userfd, &buf, 1);
    }
  do {} while (0);
}


void
NukePending()
{
  register int len;
  int oldtop = display->d_top, oldbot = display->d_bot;
  struct mchar oldrend;
  int oldkeypad = display->d_keypad, oldcursorkeys = display->d_cursorkeys;
  int oldcurvis = display->d_curvis;
  int oldmouse = display->d_mouse;

  oldrend = display->d_rend;
  len = display->d_obufp - display->d_obuf;
  do {} while (0);



  tcflush(display->d_userfd, 1);






  display->d_obufp = display->d_obuf;
  display->d_obuffree += len;
  display->d_top = display->d_bot = -1;
  AddCStr((display->d_tcs[39].str));
  AddCStr((display->d_tcs[40].str));

  if ((display->d_tcs[55].str))
    AddCStr((display->d_tcs[55].str));
  else
    {

      if (display->d_hascolor)
 AddStr("\033[m");

      AddCStr((display->d_tcs[54].str));
      AddCStr((display->d_tcs[53].str));
    }

  if ((display->d_tcs[27].str) && strcmp((display->d_tcs[27].str), (display->d_tcs[28].str)))
    AddCStr((display->d_tcs[28].str));
  display->d_insert = 0;


  if ((display->d_tcs[69].str) && strcmp((display->d_tcs[69].str), (display->d_tcs[70].str)))
    AddCStr((display->d_tcs[69].str));
  if ((display->d_tcs[71].str) && strcmp((display->d_tcs[71].str), (display->d_tcs[72].str)))
    AddCStr((display->d_tcs[71].str));
# 3212 "display.c"
  AddCStr((display->d_tcs[99].str));
  display->d_rend = mchar_null;
  display->d_atyp = 0;
  AddCStr((display->d_tcs[79].str));
  display->d_hstatus = 0;
  AddCStr((display->d_tcs[82].str));
  display->d_curvis = 0;
  ChangeScrollRegion(oldtop, oldbot);
  SetRendition(&oldrend);
  KeypadMode(oldkeypad);
  CursorkeysMode(oldcursorkeys);
  CursorVisibility(oldcurvis);
  MouseMode(oldmouse);
  if ((display->d_tcs[44].str))
    {
      do {} while (0);
      AddCStr(tgoto((display->d_tcs[44].str), display->d_width, display->d_height));
    }
  else if ((display->d_tcs[45].str) && (display->d_width == Z0width || display->d_width == Z1width))
    {
      do {} while (0);
      AddCStr(display->d_width == Z0width ? (display->d_tcs[45].str) : (display->d_tcs[46].str));
    }
}






static void
disp_writeev_eagain(ev, data)
struct event *ev;
char *data;
{
  display = (struct display *)data;
  evdeq(&display->d_writeev);
  display->d_writeev.type = 2;
  display->d_writeev.handler = disp_writeev_fn;
  evenq(&display->d_writeev);
}


static void
disp_writeev_fn(ev, data)
struct event *ev;
char *data;
{
  int len, size = 256;

  display = (struct display *)data;
  len = display->d_obufp - display->d_obuf;
  if (len < size)
    size = len;
  if (display->d_status_obufpos && size > display->d_status_obufpos)
    size = display->d_status_obufpos;
  do {} while (0);
  size = write(display->d_userfd, display->d_obuf, size);
  if (size >= 0)
    {
      len -= size;
      if (len)
 {
   bcopy(display->d_obuf + size, display->d_obuf, len);
   do {} while (0);
 }
      display->d_obufp -= size;
      display->d_obuffree += size;
      if (display->d_status_obufpos)
 {
   display->d_status_obufpos -= size;
   if (!display->d_status_obufpos)
     {
       do {} while (0);

       if (display->d_status == 1)
  {

    display->d_status_obuflen = display->d_obuflen;
    display->d_status_obuffree = display->d_obuffree;


    display->d_obuffree = display->d_obuflen = 0;
  }
       gettimeofday(&display->d_status_time, ((void*)0));
       SetTimeout(&display->d_statusev, MsgWait);
       evenq(&display->d_statusev);



     }
 }
      if (display->d_blocked_fuzz)
 {
   display->d_blocked_fuzz -= size;
   if (display->d_blocked_fuzz < 0)
     display->d_blocked_fuzz = 0;
 }
      if (display->d_blockedev.queued)
 {
   if (display->d_obufp - display->d_obuf > display->d_obufmax / 2)
     {
       do {} while (0);
       SetTimeout(&display->d_blockedev, display->d_nonblock);
     }
   else
     {
       do {} while (0);
       evdeq(&display->d_blockedev);
     }
 }
      if (display->d_blocked == 1 && display->d_obuf == display->d_obufp)
 {

          do {} while (0);
   display->d_blocked = 0;
   Activate(display->d_fore ? display->d_fore->w_norefresh : 0);
   display->d_blocked_fuzz = display->d_obufp - display->d_obuf;
 }
    }
  else
    {


      if ((*__errno_location ()) == 11)
 {
   evdeq(&display->d_writeev);
   display->d_writeev.type = 0;
   display->d_writeev.handler = disp_writeev_eagain;
   SetTimeout(&display->d_writeev, 100);
   evenq(&display->d_writeev);
 }

      if ((*__errno_location ()) != 4 && (*__errno_location ()) != 11)



   Msg((*__errno_location ()), "Error writing output to display");
    }
}

static void
disp_readev_fn(ev, data)
struct event *ev;
char *data;
{
  int size;
  char buf[4096];
  struct canvas *cv;

  display = (struct display *)data;


  if (display->d_forecv)
    for (cv = display->d_forecv->c_layer->l_cvlist; cv; cv = cv->c_lnext)
      {
        display = cv->c_display;
        if (display->d_status == 1)
          RemoveStatus();
      }

  display = (struct display *)data;
  if (display->d_fore == 0)
    size = 4096;
  else
    {

      if (((display->d_fore)->w_pwin && ((display->d_fore)->w_pwin->p_fdpat & 0x1000)))
 size = sizeof(display->d_fore->w_pwin->p_inbuf) - display->d_fore->w_pwin->p_inlen;
      else

 size = sizeof(display->d_fore->w_inbuf) - display->d_fore->w_inlen;
    }

  if (size > 4096)
    size = 4096;
  if (size <= 0)
    size = 1;

  size = read(display->d_userfd, buf, size);
  if (size < 0)
    {
      if ((*__errno_location ()) == 4 || (*__errno_location ()) == 11)
 return;




      do {} while (0);
      Hangup();
      sleep(1);
      return;
    }
  else if (size == 0)
    {
      do {} while (0);
      Hangup();
      sleep(1);
      return;
    }
  if (display->d_blocked == 4)
    {
      display->d_blocked = 0;

      KillBlanker();

      Activate(display->d_fore ? display->d_fore->w_norefresh : 0);
      ResetIdle();
      return;
    }

  if (display->d_blocked > 1)
    {
      char *bufp;
      struct win *p;

      flayer = 0;
      for (p = windows; p ; p = p->w_next)
 if (p->w_zdisplay == display)
   {
     flayer = &p->w_layer;
     bufp = buf;
     while (size > 0)
       (*flayer->l_layfn->lf_LayProcess)(&bufp, &size);
     return;
   }
      do {} while (0);
      zmodem_abort(0, display);
    }

  if (idletimo > 0)
    ResetIdle();
  if (display->d_fore)
    display->d_fore->w_lastdisp = display;
  if (display->d_mouse && display->d_forecv)
    {
      unsigned char *bp = (unsigned char *)buf;
      int x, y, i = size;


      for (i = size; i > 0; i--, bp++)
 {
   if (i > 5 && bp[0] == 033 && bp[1] == '[' && bp[2] == 'M')
     {
       bp++;
       i--;
     }
   else if (i < 5 || bp[0] != 0233 || bp[1] != 'M')
     continue;
   x = bp[3] - 33;
   y = bp[4] - 33;
   if (x >= display->d_forecv->c_xs && x <= display->d_forecv->c_xe && y >= display->d_forecv->c_ys && y <= display->d_forecv->c_ye)
     {
       if ((display->d_fore && display->d_fore->w_mouse) || (display->d_mousetrack && display->d_forecv->c_layer->l_mode == 1))
  {

    x -= display->d_forecv->c_xoff;
    y -= display->d_forecv->c_yoff;
    if (x >= 0 && x < display->d_forecv->c_layer->l_width && y >= 0 && y < display->d_forecv->c_layer->l_height)
      {
        bp[3] = x + 33;
        bp[4] = y + 33;
        i -= 4;
        bp += 4;
        continue;
      }
  }
     }
   else if (display->d_mousetrack && bp[2] == '#')
     {

       struct canvas *cv = FindCanvas(x, y);
       if (cv)
  {
    SetForeCanvas(display, cv);

  }
     }
   if (bp[0] == '[')
     {
       bcopy((char *)bp + 1, (char *)bp, i);
       bp--;
       size--;
     }
   if (i > 5)
     bcopy((char *)bp + 5, (char *)bp, i - 5);
   bp--;
   i -= 4;
   size -= 5;
 }
    }

  if (display->d_encoding != (display->d_forecv ? display->d_forecv->c_layer->l_encoding : 0))
    {
      int i, j, c, enc;
      char buf2[4096 * 2 + 10];
      enc = display->d_forecv ? display->d_forecv->c_layer->l_encoding : 0;
      for (i = j = 0; i < size; i++)
 {
   c = ((unsigned char *)buf)[i];
   c = DecodeChar(c, display->d_encoding, &display->d_decodestate);
   if (c == -2)
     i--;
   if (c < 0)
     continue;
   if (pastefont)
     {
       int font = 0;
       j += EncodeChar(buf2 + j, c, enc, &font);
       j += EncodeChar(buf2 + j, -1, enc, &font);
     }
   else
     j += EncodeChar(buf2 + j, c, enc, 0);
   if (j > (int)sizeof(buf2) - 10)
     break;
 }
      (*display->d_processinput)(buf2, j);
      return;
    }

  (*display->d_processinput)(buf, size);
}

static void
disp_status_fn(ev, data)
struct event *ev;
char *data;
{
  display = (struct display *)data;
  do {} while (0);
  if (display->d_status)
    RemoveStatus();
}

static void
disp_hstatus_fn(ev, data)
struct event *ev;
char *data;
{
  display = (struct display *)data;
  if (display->d_status == 2)
    {
      SetTimeout(ev, 1);
      evenq(ev);
      return;
    }
  RefreshHStatus();
}

static void
disp_blocked_fn(ev, data)
struct event *ev;
char *data;
{
  struct win *p;

  display = (struct display *)data;
  do {} while (0);
  if (display->d_obufp - display->d_obuf > display->d_obufmax + display->d_blocked_fuzz)
    {
      do {} while (0);
      display->d_blocked = 1;

      for (p = windows; p; p = p->w_next)
 if (p->w_readev.condneg == &display->d_obuflenmax)
   {
     do {} while (0);
     p->w_readev.condpos = p->w_readev.condneg = 0;
   }
    }
}


static void
disp_map_fn(ev, data)
struct event *ev;
char *data;
{
  char *p;
  int l, i;
  unsigned char *q;
  display = (struct display *)data;
  do {} while (0);
  if (!(l = display->d_seql))
    return;
  p = (char *)display->d_seqp - l;
  display->d_seqp = display->d_kmaps + 3;
  display->d_seql = 0;
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
  ProcessInput(p, l);
}


static void
disp_idle_fn(ev, data)
struct event *ev;
char *data;
{
  struct display *olddisplay;
  display = (struct display *)data;
  do {} while (0);
  if (idletimo <= 0 || idleaction.nr == -1)
    return;
  olddisplay = display;
  flayer = display->d_forecv->c_layer;
  fore = display->d_fore;
  DoAction(&idleaction, -1);
  if (idleaction.nr == 19)
    return;
  for (display = displays; display; display = display->d_next)
    if (olddisplay == display)
      break;
  if (display)
    ResetIdle();
}

void
ResetIdle()
{
  if (idletimo > 0)
    {
      SetTimeout(&display->d_idleev, idletimo);
      if (!display->d_idleev.queued)
 evenq(&display->d_idleev);
    }
  else
    evdeq(&display->d_idleev);
}




static void
disp_blanker_fn(ev, data)
struct event *ev;
char *data;
{
  char buf[4096], *b;
  int size;

  display = (struct display *)data;
  size = read(display->d_blankerev.fd, buf, 4096);
  if (size <= 0)
    {
      evdeq(&display->d_blankerev);
      close(display->d_blankerev.fd);
      display->d_blankerev.fd = -1;
      return;
    }
  for (b = buf; size; size--)
    do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (*b++); } while (0);
}

void
KillBlanker()
{
  int oldtop = display->d_top, oldbot = display->d_bot;
  struct mchar oldrend;

  if (display->d_blankerev.fd == -1)
    return;
  if (display->d_blocked == 4)
    display->d_blocked = 0;
  evdeq(&display->d_blankerev);
  close(display->d_blankerev.fd);
  display->d_blankerev.fd = -1;
  Kill(display->d_blankerpid, 1);
  display->d_top = display->d_bot = -1;
  oldrend = display->d_rend;
  if ((display->d_tcs[55].str))
    {
      AddCStr((display->d_tcs[55].str));
      AddCStr((display->d_tcs[55].str));
    }
  else
    {

      if (display->d_hascolor)
 AddStr("\033[m\033[m");

      AddCStr((display->d_tcs[54].str));
      AddCStr((display->d_tcs[53].str));
    }
  AddCStr((display->d_tcs[82].str));
  AddCStr((display->d_tcs[99].str));
  display->d_rend = mchar_null;
  display->d_atyp = 0;
  display->d_curvis = 0;
  display->d_x = display->d_y = -1;
  ChangeScrollRegion(oldtop, oldbot);
  SetRendition(&oldrend);
  ClearAll();
}

void
RunBlanker(cmdv)
char **cmdv;
{
  char *m;
  int pid;
  int slave = -1;
  char termname[32 + 6];



  char **np;

  strcpy(termname, "TERM=");
  strncpy(termname + 5, display->d_termname, 32 - 6);
  termname[sizeof(termname) - 1] = 0;
  KillBlanker();
  display->d_blankerpid = -1;
  if ((display->d_blankerev.fd = OpenPTY(&m)) == -1)
    {
      Msg(0, "OpenPty failed");
      return;
    }

  if (pty_preopen)
    {
      if ((slave = open(m, 02|0400)) == -1)
 {
   Msg((*__errno_location ()), "%s", m);
   close(display->d_blankerev.fd);
   display->d_blankerev.fd = -1;
   return;
 }
    }

  switch (pid = (int)fork())
    {
    case -1:
      Msg((*__errno_location ()), "fork");
      close(display->d_blankerev.fd);
      display->d_blankerev.fd = -1;
      close(slave);
      return;
    case 0:
      displays = 0;







      if (setgid(real_gid) || setuid(real_uid))
        Panic((*__errno_location ()), "setuid/setgid");
      brktty(display->d_userfd);
      freetty();
      close(0);
      close(1);
      close(2);
      closeallfiles(slave);
      if (open(m, 02))
 Panic((*__errno_location ()), "Cannot open %s", m);
      dup(0);
      dup(0);
      if (slave != -1)
 close(slave);
      InitPTY(0);
      fgtty(0);
      SetTTY(0, &display->d_OldMode);
      np = NewEnv + 3;
      *np++ = NewEnv[0];
      *np++ = termname;

      glwz.ws_col = display->d_width;
      glwz.ws_row = display->d_height;
      (void)ioctl(0, 0x5414, (char *)&glwz);







      xsignal(13, ((__sighandler_t) 0));

      display = 0;
      execvpe(*cmdv, cmdv, NewEnv + 3);
      Panic((*__errno_location ()), "%s", *cmdv);
    default:
      break;
    }
  display->d_blankerpid = pid;
  evenq(&display->d_blankerev);
  display->d_blocked = 4;
  ClearAll();
  close(slave);
}
