# 1 "./trio/trio.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./trio/trio.c" 2
# 47 "./trio/trio.c"
# 1 "./trio/triodef.h" 1
# 178 "./trio/triodef.h"
# 1 "/usr/include/unistd.h" 1 3 4
# 25 "/usr/include/unistd.h" 3 4
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
# 26 "/usr/include/unistd.h" 2 3 4
# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 22 "/usr/include/bits/environments.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 217 "/usr/include/unistd.h" 3 4
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
# 218 "/usr/include/unistd.h" 2 3 4


typedef __ssize_t ssize_t;






# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 227 "/usr/include/unistd.h" 2 3 4





typedef __gid_t gid_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;




typedef __pid_t pid_t;






typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 304 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
# 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ ));
# 353 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 417 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;
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
# 525 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));
# 543 "/usr/include/unistd.h" 3 4
extern char **__environ;







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
# 598 "/usr/include/unistd.h" 3 4
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
# 722 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
# 778 "/usr/include/unistd.h" 3 4
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
# 991 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ ));





extern int getpagesize (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ ));
# 1015 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1038 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ )) ;
# 1059 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ )) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ ));
# 1080 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
# 1103 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1134 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 179 "./trio/triodef.h" 2
# 247 "./trio/triodef.h"
typedef long double trio_long_double_t;
typedef void * trio_pointer_t;
# 48 "./trio/trio.c" 2
# 1 "./trio/trio.h" 1
# 35 "./trio/trio.h"
# 1 "./trio/triop.h" 1
# 31 "./trio/triop.h"
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
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
# 28 "/usr/include/bits/byteswap.h" 3 4
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
# 70 "/usr/include/sys/types.h" 3 4
typedef __mode_t mode_t;




typedef __nlink_t nlink_t;
# 104 "/usr/include/sys/types.h" 3 4
typedef __id_t id_t;
# 115 "/usr/include/sys/types.h" 3 4
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
# 32 "./trio/triop.h" 2



# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 36 "./trio/triop.h" 2
# 401 "./trio/triop.h"
typedef int (*trio_callback_t) (trio_pointer_t);

trio_pointer_t trio_register (trio_callback_t callback, const char *name);
void trio_unregister (trio_pointer_t handle);

const char *trio_get_format (trio_pointer_t ref);
const trio_pointer_t trio_get_argument (trio_pointer_t ref);


int trio_get_width (trio_pointer_t ref);
void trio_set_width (trio_pointer_t ref, int width);
int trio_get_precision (trio_pointer_t ref);
void trio_set_precision (trio_pointer_t ref, int precision);
int trio_get_base (trio_pointer_t ref);
void trio_set_base (trio_pointer_t ref, int base);
int trio_get_padding (trio_pointer_t ref);
void trio_set_padding (trio_pointer_t ref, int is_padding);
int trio_get_short (trio_pointer_t ref);
void trio_set_shortshort (trio_pointer_t ref, int is_shortshort);
int trio_get_shortshort (trio_pointer_t ref);
void trio_set_short (trio_pointer_t ref, int is_short);
int trio_get_long (trio_pointer_t ref);
void trio_set_long (trio_pointer_t ref, int is_long);
int trio_get_longlong (trio_pointer_t ref);
void trio_set_longlong (trio_pointer_t ref, int is_longlong);
int trio_get_longdouble (trio_pointer_t ref);
void trio_set_longdouble (trio_pointer_t ref, int is_longdouble);
int trio_get_alternative (trio_pointer_t ref);
void trio_set_alternative (trio_pointer_t ref, int is_alternative);
int trio_get_alignment (trio_pointer_t ref);
void trio_set_alignment (trio_pointer_t ref, int is_leftaligned);
int trio_get_spacing (trio_pointer_t ref);
void trio_set_spacing (trio_pointer_t ref, int is_space);
int trio_get_sign (trio_pointer_t ref);
void trio_set_sign (trio_pointer_t ref, int is_showsign);




int trio_get_upper (trio_pointer_t ref);
void trio_set_upper (trio_pointer_t ref, int is_upper);

int trio_get_largest (trio_pointer_t ref);
void trio_set_largest (trio_pointer_t ref, int is_largest);


int trio_get_ptrdiff (trio_pointer_t ref);
void trio_set_ptrdiff (trio_pointer_t ref, int is_ptrdiff);


int trio_get_size (trio_pointer_t ref);
void trio_set_size (trio_pointer_t ref, int is_size);



int trio_print_ref (trio_pointer_t ref, const char *format, ...);
int trio_vprint_ref (trio_pointer_t ref, const char *format, va_list args);
int trio_printv_ref (trio_pointer_t ref, const char *format, trio_pointer_t *args);

void trio_print_int (trio_pointer_t ref, int number);
void trio_print_uint (trio_pointer_t ref, unsigned int number);


void trio_print_double (trio_pointer_t ref, double number);
void trio_print_string (trio_pointer_t ref, const char *string);
void trio_print_pointer (trio_pointer_t ref, trio_pointer_t pointer);
# 36 "./trio/trio.h" 2

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
# 38 "./trio/trio.h" 2
# 48 "./trio/trio.h"
enum {
  TRIO_EOF = 1,
  TRIO_EINVAL = 2,
  TRIO_ETOOMANY = 3,
  TRIO_EDBLREF = 4,
  TRIO_EGAP = 5,
  TRIO_ENOMEM = 6,
  TRIO_ERANGE = 7,
  TRIO_ERRNO = 8,
  TRIO_ECUSTOM = 9
};






typedef int (*trio_outstream_t) (trio_pointer_t, int);
typedef int (*trio_instream_t) (trio_pointer_t);

const char *trio_strerror (int);





int trio_printf (const char *format, ...);
int trio_vprintf (const char *format, va_list args);
int trio_printfv (const char *format, void **args);

int trio_fprintf (FILE *file, const char *format, ...);
int trio_vfprintf (FILE *file, const char *format, va_list args);
int trio_fprintfv (FILE *file, const char *format, void **args);

int trio_dprintf (int fd, const char *format, ...);
int trio_vdprintf (int fd, const char *format, va_list args);
int trio_dprintfv (int fd, const char *format, void **args);

int trio_cprintf (trio_outstream_t stream, trio_pointer_t closure, const char *format, ...);

int trio_vcprintf (trio_outstream_t stream, trio_pointer_t closure, const char *format, va_list args);

int trio_cprintfv (trio_outstream_t stream, trio_pointer_t closure, const char *format, void **args);


int trio_sprintf (char *buffer, const char *format, ...);
int trio_vsprintf (char *buffer, const char *format, va_list args);
int trio_sprintfv (char *buffer, const char *format, void **args);

int trio_snprintf (char *buffer, size_t max, const char *format, ...);
int trio_vsnprintf (char *buffer, size_t bufferSize, const char *format, va_list args);

int trio_snprintfv (char *buffer, size_t bufferSize, const char *format, void **args);


int trio_snprintfcat (char *buffer, size_t max, const char *format, ...);
int trio_vsnprintfcat (char *buffer, size_t bufferSize, const char *format, va_list args);



char *trio_aprintf (const char *format, ...);
char *trio_vaprintf (const char *format, va_list args);


int trio_asprintf (char **ret, const char *format, ...);
int trio_vasprintf (char **ret, const char *format, va_list args);
int trio_asprintfv (char **result, const char *format, trio_pointer_t * args);




int trio_scanf (const char *format, ...);
int trio_vscanf (const char *format, va_list args);
int trio_scanfv (const char *format, void **args);

int trio_fscanf (FILE *file, const char *format, ...);
int trio_vfscanf (FILE *file, const char *format, va_list args);
int trio_fscanfv (FILE *file, const char *format, void **args);

int trio_dscanf (int fd, const char *format, ...);
int trio_vdscanf (int fd, const char *format, va_list args);
int trio_dscanfv (int fd, const char *format, void **args);

int trio_cscanf (trio_instream_t stream, trio_pointer_t closure, const char *format, ...);

int trio_vcscanf (trio_instream_t stream, trio_pointer_t closure, const char *format, va_list args);

int trio_cscanfv (trio_instream_t stream, trio_pointer_t closure, const char *format, void **args);


int trio_sscanf (const char *buffer, const char *format, ...);
int trio_vsscanf (const char *buffer, const char *format, va_list args);
int trio_sscanfv (const char *buffer, const char *format, void **args);




void trio_locale_set_decimal_point (char *decimalPoint);
void trio_locale_set_thousand_separator (char *thousandSeparator);
void trio_locale_set_grouping (char *grouping);
# 49 "./trio/trio.c" 2
# 61 "./trio/trio.c"
# 1 "./trio/trionan.h" 1
# 34 "./trio/trionan.h"
enum {
  TRIO_FP_INFINITE,
  TRIO_FP_NAN,
  TRIO_FP_NORMAL,
  TRIO_FP_SUBNORMAL,
  TRIO_FP_ZERO
};
# 101 "./trio/trionan.h"
static double
trio_nan
(void);






static double
trio_pinf
(void);






static double
trio_ninf
(void);
# 147 "./trio/trionan.h"
static int
trio_isinf
(double number);
# 174 "./trio/trionan.h"
static int
trio_fpclassify_and_signbit
(double number, int *is_negative);
# 62 "./trio/trio.c" 2
# 114 "./trio/trio.c"
# 1 "./trio/triostr.h" 1
# 25 "./trio/triostr.h"
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
# 26 "./trio/triostr.h" 2

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
# 28 "./trio/triostr.h" 2
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
# 29 "./trio/triostr.h" 2







enum {
  TRIO_HASH_NONE = 0,
  TRIO_HASH_PLAIN,
  TRIO_HASH_TWOSIGNED
};
# 254 "./trio/triostr.h"
static int
trio_copy_max
(char *target, size_t max, const char *source);
# 284 "./trio/triostr.h"
static int
trio_equal
(const char *first, const char *second);



static int
trio_equal_case
(const char *first, const char *second);
# 314 "./trio/triostr.h"
static const char *
trio_error
(int);
# 344 "./trio/triostr.h"
static size_t
trio_length
(const char *string);



static size_t
trio_length_max
(const char *string, size_t max);
# 392 "./trio/triostr.h"
static double
trio_to_double
(const char *source, char **endp);



static float
trio_to_float
(const char *source, char **endp);



static long
trio_to_long
(const char *source, char **endp, int base);
# 416 "./trio/triostr.h"
static trio_long_double_t
trio_to_long_double
(const char *source, char **endp);
# 428 "./trio/triostr.h"
static int
trio_to_upper
(int source);
# 453 "./trio/triostr.h"
typedef struct _trio_string_t trio_string_t;
# 115 "./trio/trio.c" 2







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 1 3
# 37 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 3
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
# 38 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 2 3
# 123 "./trio/trio.c" 2

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
# 125 "./trio/trio.c" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/float.h" 1 3
# 126 "./trio/trio.c" 2
# 187 "./trio/trio.c"
# 1 "/usr/include/assert.h" 1 3 4
# 188 "./trio/trio.c" 2
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
# 189 "./trio/trio.c" 2








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
# 198 "./trio/trio.c" 2



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
# 202 "./trio/trio.c" 2
# 227 "./trio/trio.c"
typedef unsigned long trio_flags_t;








# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 117 "/usr/include/bits/sigset.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int __sigismember (const __sigset_t *__set, int __sig) { unsigned long int __mask = (((unsigned long int) 1) << (((__sig) - 1) % (8 * sizeof (unsigned long int)))); unsigned long int __word = (((__sig) - 1) / (8 * sizeof (unsigned long int))); return (__set->__val[__word] & __mask) ? 1 : 0; }
extern __inline __attribute__ ((__gnu_inline__)) int __sigaddset ( __sigset_t *__set, int __sig) { unsigned long int __mask = (((unsigned long int) 1) << (((__sig) - 1) % (8 * sizeof (unsigned long int)))); unsigned long int __word = (((__sig) - 1) / (8 * sizeof (unsigned long int))); return ((__set->__val[__word] |= __mask), 0); }
extern __inline __attribute__ ((__gnu_inline__)) int __sigdelset ( __sigset_t *__set, int __sig) { unsigned long int __mask = (((unsigned long int) 1) << (((__sig) - 1) % (8 * sizeof (unsigned long int)))); unsigned long int __word = (((__sig) - 1) / (8 * sizeof (unsigned long int))); return ((__set->__val[__word] &= ~__mask), 0); }
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 80 "/usr/include/signal.h" 3 4
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
# 102 "/usr/include/signal.h" 3 4
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 127 "/usr/include/signal.h" 3 4
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
# 197 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));
# 217 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/signal.h" 3 4
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
# 92 "/usr/include/sys/ucontext.h" 3 4
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
# 396 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 236 "./trio/trio.c" 2
# 1 "/usr/include/locale.h" 1 3 4
# 29 "/usr/include/locale.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 30 "/usr/include/locale.h" 2 3 4
# 1 "/usr/include/bits/locale.h" 1 3 4
# 31 "/usr/include/locale.h" 2 3 4
# 54 "/usr/include/locale.h" 3 4
struct lconv
{


  char *decimal_point;
  char *thousands_sep;





  char *grouping;





  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;

  char p_cs_precedes;

  char p_sep_by_space;

  char n_cs_precedes;

  char n_sep_by_space;






  char p_sign_posn;
  char n_sign_posn;


  char int_p_cs_precedes;

  char int_p_sep_by_space;

  char int_n_cs_precedes;

  char int_n_sep_by_space;






  char int_p_sign_posn;
  char int_n_sign_posn;
# 121 "/usr/include/locale.h" 3 4
};



extern char *setlocale (int __category, const char *__locale) __attribute__ ((__nothrow__ ));


extern struct lconv *localeconv (void) __attribute__ ((__nothrow__ ));
# 152 "/usr/include/locale.h" 3 4
extern __locale_t newlocale (int __category_mask, const char *__locale,
        __locale_t __base) __attribute__ ((__nothrow__ ));
# 187 "/usr/include/locale.h" 3 4
extern __locale_t duplocale (__locale_t __dataset) __attribute__ ((__nothrow__ ));



extern void freelocale (__locale_t __dataset) __attribute__ ((__nothrow__ ));






extern __locale_t uselocale (__locale_t __dataset) __attribute__ ((__nothrow__ ));
# 237 "./trio/trio.c" 2
# 308 "./trio/trio.c"
typedef signed long long int trio_longlong_t;
typedef unsigned long long int trio_ulonglong_t;
# 322 "./trio/trio.c"
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
# 122 "/usr/include/stdint.h" 3 4
typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 64 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 2 3
# 323 "./trio/trio.c" 2
typedef intmax_t trio_intmax_t;
typedef uintmax_t trio_uintmax_t;
typedef int8_t trio_int8_t;
typedef int16_t trio_int16_t;
typedef int32_t trio_int32_t;
typedef int64_t trio_int64_t;
# 455 "./trio/trio.c"
enum {
  TYPE_PRINT = 1,

  TYPE_SCAN = 2,



  FLAGS_NEW = 0,
  FLAGS_STICKY = 1,
  FLAGS_SPACE = 2 * FLAGS_STICKY,
  FLAGS_SHOWSIGN = 2 * FLAGS_SPACE,
  FLAGS_LEFTADJUST = 2 * FLAGS_SHOWSIGN,
  FLAGS_ALTERNATIVE = 2 * FLAGS_LEFTADJUST,
  FLAGS_SHORT = 2 * FLAGS_ALTERNATIVE,
  FLAGS_SHORTSHORT = 2 * FLAGS_SHORT,
  FLAGS_LONG = 2 * FLAGS_SHORTSHORT,
  FLAGS_QUAD = 2 * FLAGS_LONG,
  FLAGS_LONGDOUBLE = 2 * FLAGS_QUAD,
  FLAGS_SIZE_T = 2 * FLAGS_LONGDOUBLE,
  FLAGS_PTRDIFF_T = 2 * FLAGS_SIZE_T,
  FLAGS_INTMAX_T = 2 * FLAGS_PTRDIFF_T,
  FLAGS_NILPADDING = 2 * FLAGS_INTMAX_T,
  FLAGS_UNSIGNED = 2 * FLAGS_NILPADDING,
  FLAGS_UPPER = 2 * FLAGS_UNSIGNED,
  FLAGS_WIDTH = 2 * FLAGS_UPPER,
  FLAGS_WIDTH_PARAMETER = 2 * FLAGS_WIDTH,
  FLAGS_PRECISION = 2 * FLAGS_WIDTH_PARAMETER,
  FLAGS_PRECISION_PARAMETER = 2 * FLAGS_PRECISION,
  FLAGS_BASE = 2 * FLAGS_PRECISION_PARAMETER,
  FLAGS_BASE_PARAMETER = 2 * FLAGS_BASE,
  FLAGS_FLOAT_E = 2 * FLAGS_BASE_PARAMETER,
  FLAGS_FLOAT_G = 2 * FLAGS_FLOAT_E,
  FLAGS_QUOTE = 2 * FLAGS_FLOAT_G,
  FLAGS_WIDECHAR = 2 * FLAGS_QUOTE,
  FLAGS_IGNORE = 2 * FLAGS_WIDECHAR,
  FLAGS_IGNORE_PARAMETER = 2 * FLAGS_IGNORE,
  FLAGS_VARSIZE_PARAMETER = 2 * FLAGS_IGNORE_PARAMETER,
  FLAGS_FIXED_SIZE = 2 * FLAGS_VARSIZE_PARAMETER,
  FLAGS_LAST = FLAGS_FIXED_SIZE,

  FLAGS_EXCLUDE = FLAGS_SHORT,
  FLAGS_USER_DEFINED = FLAGS_IGNORE,
  FLAGS_USER_DEFINED_PARAMETER = FLAGS_IGNORE_PARAMETER,
  FLAGS_ROUNDING = FLAGS_INTMAX_T,

  FLAGS_ALL_VARSIZES = FLAGS_LONG | FLAGS_QUAD | FLAGS_INTMAX_T | FLAGS_PTRDIFF_T | FLAGS_SIZE_T,
  FLAGS_ALL_SIZES = FLAGS_ALL_VARSIZES | FLAGS_SHORTSHORT | FLAGS_SHORT,

  NO_POSITION = -1,
  NO_WIDTH = 0,
  NO_PRECISION = -1,
  NO_SIZE = -1,


  NO_BASE = -1,
  MIN_BASE = 2,
  MAX_BASE = 36,
  BASE_BINARY = 2,
  BASE_OCTAL = 8,
  BASE_DECIMAL = 10,
  BASE_HEX = 16,


  MAX_PARAMETERS = 64,

  MAX_CHARACTER_CLASS = (127*2 +1) + 1,
# 529 "./trio/trio.c"
  MAX_LOCALE_SEPARATOR_LENGTH = 16,

  MAX_LOCALE_GROUPS = 64
};
# 772 "./trio/trio.c"
typedef struct {

  int type;

  trio_flags_t flags;

  int width;

  int precision;

  int base;

  int baseSpecifier;

  int varsize;

  int beginOffset;

  int endOffset;

  int position;

  union {
    char *string;



    trio_pointer_t pointer;
    union {
      trio_intmax_t as_signed;
      trio_uintmax_t as_unsigned;
    } number;

    double doubleNumber;
    double *doublePointer;
    trio_long_double_t longdoubleNumber;
    trio_long_double_t *longdoublePointer;

    int errorNumber;
  } data;
# 820 "./trio/trio.c"
} trio_parameter_t;


typedef struct {
  union {
    trio_outstream_t out;
    trio_instream_t in;
  } stream;
  trio_pointer_t closure;
} trio_custom_t;


typedef struct _trio_class_t {



  void (*OutStream) (struct _trio_class_t *, int);



  void (*InStream) (struct _trio_class_t *, int *);



  void (*UndoStream) (struct _trio_class_t *);



  trio_pointer_t location;



  int current;




  int processed;
  union {




    int committed;



    int cached;
  } actually;



  int max;



  int error;
} trio_class_t;


typedef struct _trio_reference_t {
  trio_class_t *data;
  trio_parameter_t *parameter;
} trio_reference_t;
# 900 "./trio/trio.c"
static const char rcsid[] = "@(#)$Id: trio.c,v 1.129 2009/09/20 11:37:15 breese Exp $";
# 913 "./trio/trio.c"
static const char internalNullString[] = "(nil)";
# 924 "./trio/trio.c"
static int internalDecimalPointLength = 1;
static char internalDecimalPoint = '.';
static char internalDecimalPointString[MAX_LOCALE_SEPARATOR_LENGTH + 1] = ".";


static int internalThousandSeparatorLength = 1;
static char internalThousandSeparator[MAX_LOCALE_SEPARATOR_LENGTH + 1] = ",";
static char internalGrouping[MAX_LOCALE_GROUPS] = { (char)((int)127) };


static const char internalDigitsLower[] = "0123456789abcdefghijklmnopqrstuvwxyz";
static const char internalDigitsUpper[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

static int internalDigitsUnconverted = (! (1 == 0));
static int internalDigitArray[128];
# 959 "./trio/trio.c"
# 1 "./trio/trionan.c" 1
# 52 "./trio/trionan.c"
# 1 "/usr/include/assert.h" 1 3 4
# 53 "./trio/trionan.c" 2
# 369 "./trio/trionan.c"
static inline int
c99_fpclassify_and_signbit
(double number,int *is_negative)


{
  *is_negative = (sizeof (number) == sizeof (float) ? __signbitf (number) : sizeof (number) == sizeof (double) ? __signbit (number) : __signbitl (number));
  switch ((sizeof (number) == sizeof (float) ? __fpclassifyf (number) : sizeof (number) == sizeof (double) ? __fpclassify (number) : __fpclassifyl (number))) {
  case 0:
    return TRIO_FP_NAN;
  case 1:
    return TRIO_FP_INFINITE;
  case 3:
    return TRIO_FP_SUBNORMAL;
  case 2:
    return TRIO_FP_ZERO;
  default:
    return TRIO_FP_NORMAL;
  }
}
# 740 "./trio/trionan.c"
static int
trio_fpclassify_and_signbit
(double number,int *is_negative)


{




  return c99_fpclassify_and_signbit(number, is_negative);
# 819 "./trio/trionan.c"
}
# 851 "./trio/trionan.c"
static int
trio_isinf
(double number)

{
  int is_negative;

  if (trio_fpclassify_and_signbit(number, &is_negative) == TRIO_FP_INFINITE)
    {
      return (is_negative) ? -1 : 1;
    }
  else
    {
      return 0;
    }
}
# 973 "./trio/trionan.c"
static double
trio_pinf(void)
{

  static double pinf_value = 0.0;

  if (pinf_value == 0.0) {



    pinf_value = (double)(__builtin_inff());
# 1014 "./trio/trionan.c"
  }
  return pinf_value;
}
# 1027 "./trio/trionan.c"
static double
trio_ninf(void)
{
  static double ninf_value = 0.0;

  if (ninf_value == 0.0) {





    ninf_value = -trio_pinf();
  }
  return ninf_value;
}
# 1052 "./trio/trionan.c"
static double
trio_nan(void)
{

  static double nan_value = 0.0;

  if (nan_value == 0.0) {



    nan_value = nan("");
# 1099 "./trio/trionan.c"
  }
  return nan_value;
}
# 960 "./trio/trio.c" 2



# 1 "./trio/triostr.c" 1
# 25 "./trio/triostr.c"
# 1 "/usr/include/assert.h" 1 3 4
# 26 "./trio/triostr.c" 2
# 151 "./trio/triostr.c"
struct _trio_string_t
{
  char *content;
  size_t length;
  size_t allocated;
};
# 295 "./trio/triostr.c"
static inline int
internal_to_upper
(int source)

{


  return (__extension__ ({ int __res; if (sizeof (source) > 1) { if (__builtin_constant_p (source)) { int __c = (source); __res = __c < -128 || __c > 255 ? __c : (*__ctype_toupper_loc ())[__c]; } else __res = toupper (source); } else __res = (*__ctype_toupper_loc ())[(int) (source)]; __res; }));
# 312 "./trio/triostr.c"
}
# 363 "./trio/triostr.c"
static size_t
trio_length
(const char *string)

{
  return strlen(string);
}
# 382 "./trio/triostr.c"
static size_t
trio_length_max
(const char *string,size_t max)


{
  size_t i;

  for (i = 0; i < max; ++i)
    {
      if (string[i] == 0)
 break;
    }
  return i;
}
# 542 "./trio/triostr.c"
static int
trio_copy_max
(char *target,size_t max,const char *source)



{
  ((void) (0));
  ((void) (0));
  ((void) (0));

  (void)__builtin_strncpy (target, source, max - 1);
  target[max - 1] = (char)0;
  return (! (1 == 0));
}
# 623 "./trio/triostr.c"
static int
trio_equal
(const char *first,const char *second)


{
  ((void) (0));
  ((void) (0));

  if ((first != ((void*)0)) && (second != ((void*)0)))
    {

      return (0 == strcasecmp(first, second));
# 648 "./trio/triostr.c"
    }
  return (1 == 0);
}
# 665 "./trio/triostr.c"
static int
trio_equal_case
(const char *first,const char *second)


{
  ((void) (0));
  ((void) (0));

  if ((first != ((void*)0)) && (second != ((void*)0)))
    {
      return (0 == __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (first) && __builtin_constant_p (second) && (__s1_len = strlen (first), __s2_len = strlen (second), (!((size_t)(const void *)((first) + 1) - (size_t)(const void *)(first) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((second) + 1) - (size_t)(const void *)(second) == 1) || __s2_len >= 4)) ? __builtin_strcmp (first, second) : (__builtin_constant_p (first) && ((size_t)(const void *)((first) + 1) - (size_t)(const void *)(first) == 1) && (__s1_len = strlen (first), __s1_len < 4) ? (__builtin_constant_p (second) && ((size_t)(const void *)((second) + 1) - (size_t)(const void *)(second) == 1) ? __builtin_strcmp (first, second) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (second); register int __result = (((const unsigned char *) (const char *) (first))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (first))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (first))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (first))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (second) && ((size_t)(const void *)((second) + 1) - (size_t)(const void *)(second) == 1) && (__s2_len = strlen (second), __s2_len < 4) ? (__builtin_constant_p (first) && ((size_t)(const void *)((first) + 1) - (size_t)(const void *)(first) == 1) ? __builtin_strcmp (first, second) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (first); register int __result = __s1[0] - ((const unsigned char *) (const char *) (second))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (second))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (second))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (second))[3]); } } __result; }))) : __builtin_strcmp (first, second)))); }));
    }
  return (1 == 0);
}
# 798 "./trio/triostr.c"
static const char *
trio_error
(int error_number)

{


  return strerror(error_number);
# 823 "./trio/triostr.c"
}
# 1219 "./trio/triostr.c"
static trio_long_double_t
trio_to_long_double
(const char *source,char **endp)


{



  int isNegative = (1 == 0);
  int isExponentNegative = (1 == 0);
  trio_long_double_t integer = 0.0;
  trio_long_double_t fraction = 0.0;
  unsigned long exponent = 0;
  trio_long_double_t base;
  trio_long_double_t fracdiv = 1.0;
  trio_long_double_t value = 0.0;


  if ((source[0] == '0') && ((source[1] == 'x') || (source[1] == 'X')))
    {
      base = 16.0;
      source += 2;
      while (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISxdigit))
 {
   integer *= base;
   integer += (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISdigit)
        ? (*source - '0')
        : 10 + (internal_to_upper((int)*source) - 'A'));
   source++;
 }
      if (*source == '.')
 {
   source++;
   while (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISxdigit))
     {
       fracdiv /= base;
       fraction += fracdiv * (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISdigit)
         ? (*source - '0')
         : 10 + (internal_to_upper((int)*source) - 'A'));
       source++;
     }
   if ((*source == 'p') || (*source == 'P'))
     {
       source++;
       if ((*source == '+') || (*source == '-'))
  {
    isExponentNegative = (*source == '-');
    source++;
  }
       while (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISdigit))
  {
    exponent *= 10;
    exponent += (*source - '0');
    source++;
  }
     }
 }

      base = 2.0;
    }
  else
    {
      base = 10.0;
      isNegative = (*source == '-');

      if ((*source == '+') || (*source == '-'))
 source++;


      while (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISdigit))
 {
   integer *= base;
   integer += (*source - '0');
   source++;
 }

      if (*source == '.')
 {
   source++;
   while (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISdigit))
     {
       fracdiv /= base;
       fraction += (*source - '0') * fracdiv;
       source++;
     }
 }
      if ((*source == 'e')
   || (*source == 'E')

   || (*source == 'd')
   || (*source == 'D')

   )
 {
   source++;
   isExponentNegative = (*source == '-');
   if ((*source == '+') || (*source == '-'))
     source++;
   while (((*__ctype_b_loc ())[(int) (((int)*source))] & (unsigned short int) _ISdigit))
     {
       exponent *= (int)base;
       exponent += (*source - '0');
       source++;
     }
 }
    }

  value = integer + fraction;
  if (exponent != 0)
    {
      if (isExponentNegative)
 value /= powl((base),((trio_long_double_t)exponent));
      else
 value *= powl((base),((trio_long_double_t)exponent));
    }
  if (isNegative)
    value = -value;

  if (endp)
    *endp = (char *)source;
  return value;

}
# 1357 "./trio/triostr.c"
static double
trio_to_double
(const char *source,char **endp)


{

  return strtod(source, endp);



}
# 1383 "./trio/triostr.c"
static float
trio_to_float
(const char *source,char **endp)


{

  return strtof(source, endp);



}
# 1407 "./trio/triostr.c"
static long
trio_to_long
(const char *string,char **endp,int base)



{
  ((void) (0));
  ((void) (0));

  return strtol(string, endp, base);
}
# 1483 "./trio/triostr.c"
static int
trio_to_upper
(int source)

{
  return internal_to_upper(source);
}
# 964 "./trio/trio.c" 2








static void
TrioInitializeParameter
(trio_parameter_t *parameter)

{
  parameter->type = 0;
  parameter->flags = 0;
  parameter->width = 0;
  parameter->precision = 0;
  parameter->base = 0;
  parameter->baseSpecifier = 0;
  parameter->varsize = 0;
  parameter->beginOffset = 0;
  parameter->endOffset = 0;
  parameter->position = 0;
  parameter->data.pointer = 0;




}







static void
TrioCopyParameter
(trio_parameter_t *target,const trio_parameter_t *source)


{




  target->type = source->type;
  target->flags = source->flags;
  target->width = source->width;
  target->precision = source->precision;
  target->base = source->base;
  target->baseSpecifier = source->baseSpecifier;
  target->varsize = source->varsize;
  target->beginOffset = source->beginOffset;
  target->endOffset = source->endOffset;
  target->position = source->position;
  target->data = source->data;
# 1031 "./trio/trio.c"
}
# 1040 "./trio/trio.c"
static int
TrioIsQualifier
(const char character)

{

  switch (character)
    {
    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
    case '+':
    case '-':
    case ' ':
    case '.':
    case '*':
    case '#':
    case 'h':
    case 'l':
    case '^':
    case 'L':
    case 'z':
    case 't':
    case 'j':
    case 'q':
    case 'Z':

    case 'w':

    case '\'':
    case '!':
    case '&':



    case 'I':
    case 'R':
      return (! (1 == 0));
    default:
      return (1 == 0);
    }
}
# 1205 "./trio/trio.c"
static int
TrioGetPosition
(const char *format,int *offsetPointer)


{

  char *tmpformat;
  int number = 0;
  int offset = *offsetPointer;

  number = (int)trio_to_long(&format[offset], &tmpformat, BASE_DECIMAL);
  offset = (int)(tmpformat - format);
  if ((number != 0) && ('$' == format[offset++]))
    {
      *offsetPointer = offset;




      return number - 1;
    }

  return NO_POSITION;
}
# 1273 "./trio/trio.c"
static trio_long_double_t
TrioPower
(int number,int exponent)


{
  trio_long_double_t result;

  if (number == 10)
    {
      switch (exponent)
 {

 case 0:
   result = (trio_long_double_t)number * 1E-1L;
   break;
 case 1:
   result = (trio_long_double_t)number * 1E+0L;
   break;
 case 2:
   result = (trio_long_double_t)number * 1E+1L;
   break;
 case 3:
   result = (trio_long_double_t)number * 1E+2L;
   break;
 case 4:
   result = (trio_long_double_t)number * 1E+3L;
   break;
 case 5:
   result = (trio_long_double_t)number * 1E+4L;
   break;
 case 6:
   result = (trio_long_double_t)number * 1E+5L;
   break;
 case 7:
   result = (trio_long_double_t)number * 1E+6L;
   break;
 case 8:
   result = (trio_long_double_t)number * 1E+7L;
   break;
 case 9:
   result = (trio_long_double_t)number * 1E+8L;
   break;
 default:
   result = powl(((trio_long_double_t)number),((trio_long_double_t)exponent));

   break;
 }
    }
  else
    {
      return powl(((trio_long_double_t)number),((trio_long_double_t)exponent));

    }
  return result;
}






static trio_long_double_t
TrioLogarithm
(trio_long_double_t number,int base)


{
  trio_long_double_t result;

  if (number <= 0.0)
    {

      result = (number == 0.0) ? trio_ninf() : trio_nan();
    }
  else
    {
      if (base == 10)
 {
   result = log10l((number));
 }
      else
 {
   result = log10l((number)) / log10l(((double)base));
 }
    }
  return result;
}






static double
TrioLogarithmBase
(int base)

{
  switch (base)
    {
    case BASE_BINARY : return 1.0;
    case BASE_OCTAL : return 3.0;
    case BASE_DECIMAL: return 3.321928094887362345;
    case BASE_HEX : return 4.0;
    default : return TrioLogarithm((double)base, 2);
    }
}
# 1389 "./trio/trio.c"
static int
TrioParseQualifiers
(int type,const char *format,int offset,trio_parameter_t *parameter)




{
  char ch;
  int dots = 0;
  char *tmpformat;

  parameter->beginOffset = offset - 1;
  parameter->flags = FLAGS_NEW;
  parameter->position = TrioGetPosition(format, &offset);


  parameter->width = NO_WIDTH;
  parameter->precision = NO_PRECISION;
  parameter->base = NO_BASE;
  parameter->varsize = NO_SIZE;

  while (TrioIsQualifier(format[offset]))
    {
      ch = format[offset++];

      switch (ch)
        {
 case ' ':
   parameter->flags |= FLAGS_SPACE;
   break;

 case '+':
   parameter->flags |= FLAGS_SHOWSIGN;
   break;

 case '-':
   parameter->flags |= FLAGS_LEFTADJUST;
   parameter->flags &= ~FLAGS_NILPADDING;
   break;

 case '#':
   parameter->flags |= FLAGS_ALTERNATIVE;
   break;

 case '.':
   if (dots == 0)
     {
       dots++;


       if ('.' == format[offset])
  break;


       parameter->flags |= FLAGS_PRECISION;
       if (('*' == format[offset])



    )
  {
    offset++;
    parameter->flags |= FLAGS_PRECISION_PARAMETER;
    parameter->precision = TrioGetPosition(format, &offset);
  }
       else
  {
    parameter->precision = trio_to_long(&format[offset],
            &tmpformat,
            BASE_DECIMAL);
    offset = (int)(tmpformat - format);
  }
     }
   else if (dots == 1)
     {
       dots++;


       parameter->flags |= FLAGS_BASE;
       if (('*' == format[offset])



    )
  {
    offset++;
    parameter->flags |= FLAGS_BASE_PARAMETER;
    parameter->base = TrioGetPosition(format, &offset);
  }
       else
  {
    parameter->base = trio_to_long(&format[offset],
       &tmpformat,
       BASE_DECIMAL);
    if (parameter->base > MAX_BASE)
      return (- ((TRIO_EINVAL) + ((offset) << 8)));
    offset = (int)(tmpformat - format);
  }
     }
   else
     {
       return (- ((TRIO_EINVAL) + ((offset) << 8)));
     }
   break;






 case '*':

   if (TYPE_PRINT == type)
     {

       int width = TrioGetPosition(format, &offset);
       parameter->flags |= (FLAGS_WIDTH | FLAGS_WIDTH_PARAMETER);
       if (NO_POSITION != width)
                parameter->width = width;

     }

   else
     {

       parameter->flags |= FLAGS_IGNORE;
     }

   break;

 case '0':
   if (! (parameter->flags & FLAGS_LEFTADJUST))
     parameter->flags |= FLAGS_NILPADDING;

 case '1': case '2': case '3': case '4':
 case '5': case '6': case '7': case '8': case '9':
   parameter->flags |= FLAGS_WIDTH;




   parameter->width = trio_to_long(&format[offset - 1],
       &tmpformat,
       BASE_DECIMAL);
   offset = (int)(tmpformat - format);
   break;

 case 'h':
   if (parameter->flags & FLAGS_SHORTSHORT)
     return (- ((TRIO_EINVAL) + ((offset) << 8)));
   else if (parameter->flags & FLAGS_SHORT)
     parameter->flags |= FLAGS_SHORTSHORT;
   else
     parameter->flags |= FLAGS_SHORT;
   break;

 case 'l':
   if (parameter->flags & FLAGS_QUAD)
     return (- ((TRIO_EINVAL) + ((offset) << 8)));
   else if (parameter->flags & FLAGS_LONG)
     parameter->flags |= FLAGS_QUAD;
   else
     parameter->flags |= FLAGS_LONG;
   break;


 case 'L':
   parameter->flags |= FLAGS_LONGDOUBLE;
   break;



 case 'z':
   parameter->flags |= FLAGS_SIZE_T;

   if (sizeof(size_t) == sizeof(trio_ulonglong_t))
     parameter->flags |= FLAGS_QUAD;
   else if (sizeof(size_t) == sizeof(long))
     parameter->flags |= FLAGS_LONG;
   break;



 case 't':
   parameter->flags |= FLAGS_PTRDIFF_T;
   if (sizeof(ptrdiff_t) == sizeof(trio_ulonglong_t))
     parameter->flags |= FLAGS_QUAD;
   else if (sizeof(ptrdiff_t) == sizeof(long))
     parameter->flags |= FLAGS_LONG;
   break;



 case 'j':
   parameter->flags |= FLAGS_INTMAX_T;
   if (sizeof(trio_intmax_t) == sizeof(trio_ulonglong_t))
     parameter->flags |= FLAGS_QUAD;
   else if (sizeof(trio_intmax_t) == sizeof(long))
     parameter->flags |= FLAGS_LONG;
   break;



 case 'q':
   parameter->flags |= FLAGS_QUAD;
   break;



 case 'I':
   if (parameter->flags & FLAGS_FIXED_SIZE)
     return (- ((TRIO_EINVAL) + ((offset) << 8)));

   if (parameter->flags & (FLAGS_ALL_SIZES |
      FLAGS_LONGDOUBLE |
      FLAGS_WIDECHAR |
      FLAGS_VARSIZE_PARAMETER))
     return (- ((TRIO_EINVAL) + ((offset) << 8)));

   if ((format[offset] == '6') &&
       (format[offset + 1] == '4'))
     {
       parameter->varsize = sizeof(trio_int64_t);
       offset += 2;
     }
   else if ((format[offset] == '3') &&
     (format[offset + 1] == '2'))
     {
       parameter->varsize = sizeof(trio_int32_t);
       offset += 2;
     }
   else if ((format[offset] == '1') &&
     (format[offset + 1] == '6'))
     {
       parameter->varsize = sizeof(trio_int16_t);
       offset += 2;
     }
   else if (format[offset] == '8')
     {
       parameter->varsize = sizeof(trio_int8_t);
       offset++;
     }
   else
     return (- ((TRIO_EINVAL) + ((offset) << 8)));

   parameter->flags |= FLAGS_FIXED_SIZE;
   break;



 case 'w':
   parameter->flags |= FLAGS_WIDECHAR;
   break;



 case 'Z':
   break;
# 1674 "./trio/trio.c"
 default:

   return (- ((TRIO_EINVAL) + ((offset) << 8)));
 }
    }

  parameter->endOffset = offset;

  return 0;
}







static int
TrioParseSpecifier
(int type,const char *format,int offset,trio_parameter_t *parameter)




{
  parameter->baseSpecifier = NO_BASE;

  switch (format[offset++])
    {

    case 'C':
      parameter->flags |= FLAGS_WIDECHAR;


    case 'c':
      if (parameter->flags & FLAGS_LONG)
 parameter->flags |= FLAGS_WIDECHAR;
      else if (parameter->flags & FLAGS_SHORT)
 parameter->flags &= ~FLAGS_WIDECHAR;
      parameter->type = 3;
      break;


    case 'S':
      parameter->flags |= FLAGS_WIDECHAR;


    case 's':
      if (parameter->flags & FLAGS_LONG)
 parameter->flags |= FLAGS_WIDECHAR;
      else if (parameter->flags & FLAGS_SHORT)
 parameter->flags &= ~FLAGS_WIDECHAR;
      parameter->type = 4;
      break;


    case '[':
      if (TYPE_SCAN == type)
 {
   int depth = 1;
   parameter->type = 8;
   if (format[offset] == '^')
     offset++;
   if (format[offset] == ']')
     offset++;
   if (format[offset] == '-')
     offset++;

   while (format[offset] != ((char)0))
     {
       if (format[offset] == '[')
  {
    depth++;
  }
       else if (format[offset] == ']')
       {
  if (--depth <= 0)
    {
      offset++;
      break;
    }
       }
       offset++;
     }
 }
      break;


    case 'i':
      parameter->type = 1;
      break;

    case 'u':
      parameter->flags |= FLAGS_UNSIGNED;
      parameter->type = 1;
      break;

    case 'd':
      parameter->baseSpecifier = BASE_DECIMAL;
      parameter->type = 1;
      break;

    case 'o':
      parameter->flags |= FLAGS_UNSIGNED;
      parameter->baseSpecifier = BASE_OCTAL;
      parameter->type = 1;
      break;
# 1793 "./trio/trio.c"
    case 'X':
      parameter->flags |= FLAGS_UPPER;

    case 'x':
      parameter->flags |= FLAGS_UNSIGNED;
      parameter->baseSpecifier = BASE_HEX;
      parameter->type = 1;
      break;



    case 'E':
      parameter->flags |= FLAGS_UPPER;


    case 'e':
      parameter->flags |= FLAGS_FLOAT_E;
      parameter->type = 2;
      break;




    case 'G':
      parameter->flags |= FLAGS_UPPER;


    case 'g':
      parameter->flags |= FLAGS_FLOAT_G;
      parameter->type = 2;
      break;




    case 'F':
      parameter->flags |= FLAGS_UPPER;


    case 'f':
      parameter->type = 2;
      break;






    case 'p':
      if (sizeof(trio_pointer_t) == sizeof(trio_ulonglong_t))
 parameter->flags |= FLAGS_QUAD;
      else if (sizeof(trio_pointer_t) == sizeof(long))
 parameter->flags |= FLAGS_LONG;
      parameter->type = 5;
      break;




    case 'n':
      parameter->type = 6;
      break;


    case 'A':
      parameter->flags |= FLAGS_UPPER;

    case 'a':
      parameter->baseSpecifier = BASE_HEX;
      parameter->type = 2;
      break;



    case 'm':
      parameter->type = 9;
      break;
# 1923 "./trio/trio.c"
    default:

      return (- ((TRIO_EINVAL) + ((offset) << 8)));
  }

  parameter->endOffset = offset;

  return 0;
}







static int
TrioParse
(int type,const char *format,trio_parameter_t *parameters,va_list arglist,trio_pointer_t *argarray)





{

  unsigned short usedEntries[MAX_PARAMETERS];

  int parameterPosition;
  int maxParam = -1;

  int offset;
  int positional;







  int indices[MAX_PARAMETERS];
  int pos = 0;


  int charlen;

  int save_errno;
  int i = -1;
  int num;
  trio_parameter_t workParameter;
  int status;





  memset(usedEntries, 0, sizeof(usedEntries));

  save_errno = (*__errno_location ());
  offset = 0;
  parameterPosition = 0;

  charlen = mblen(((void*)0), 0);


  while (format[offset])
    {
      TrioInitializeParameter(&workParameter);


      if (! (((format[offset]) & ~0x7f) == 0))
 {




   charlen = mblen(&format[offset], 16);
   offset += (charlen > 0) ? charlen : 1;
   continue;
 }


      switch(format[offset++]) {

      case '%':
 {
   if ('%' == format[offset])
     {

       offset++;
       continue;
     }

   status = TrioParseQualifiers(type, format, offset, &workParameter);
   if (status < 0)
     return status;

   status = TrioParseSpecifier(type, format, workParameter.endOffset, &workParameter);
   if (status < 0)
     return status;
 }
 break;
# 2040 "./trio/trio.c"
      default:
 continue;
      }


      positional = (NO_POSITION != workParameter.position);





      if (workParameter.flags & FLAGS_WIDTH_PARAMETER)
        {
   if (workParameter.width == NO_WIDTH)
     {
       workParameter.width = parameterPosition++;
     }
   else
     {
       if (! positional)
    workParameter.position = workParameter.width + 1;
     }

   usedEntries[workParameter.width] += 1;
   if (workParameter.width > maxParam)
     maxParam = workParameter.width;
   parameters[pos].type = 7;
   parameters[pos].flags = 0;
   indices[workParameter.width] = pos;
   workParameter.width = pos++;
 }
      if (workParameter.flags & FLAGS_PRECISION_PARAMETER)
 {
   if (workParameter.precision == NO_PRECISION)
     {
       workParameter.precision = parameterPosition++;
     }
   else
     {
       if (! positional)
    workParameter.position = workParameter.precision + 1;
     }

   usedEntries[workParameter.precision] += 1;
   if (workParameter.precision > maxParam)
     maxParam = workParameter.precision;
   parameters[pos].type = 7;
   parameters[pos].flags = 0;
   indices[workParameter.precision] = pos;
   workParameter.precision = pos++;
 }
      if (workParameter.flags & FLAGS_BASE_PARAMETER)
 {
   if (workParameter.base == NO_BASE)
     {
       workParameter.base = parameterPosition++;
     }
   else
     {
       if (! positional)
    workParameter.position = workParameter.base + 1;
     }

   usedEntries[workParameter.base] += 1;
   if (workParameter.base > maxParam)
     maxParam = workParameter.base;
   parameters[pos].type = 7;
   parameters[pos].flags = 0;
   indices[workParameter.base] = pos;
   workParameter.base = pos++;
 }
# 2140 "./trio/trio.c"
      if (NO_POSITION == workParameter.position)
 {
   workParameter.position = parameterPosition++;
 }

      if (workParameter.position > maxParam)
 maxParam = workParameter.position;

      if (workParameter.position >= MAX_PARAMETERS)
 {

   return (- ((TRIO_ETOOMANY) + ((offset) << 8)));
 }

      indices[workParameter.position] = pos;


      usedEntries[workParameter.position] += 1;
# 2188 "./trio/trio.c"
      if (workParameter.base == NO_BASE)
 workParameter.base = BASE_DECIMAL;

      offset = workParameter.endOffset;

      TrioCopyParameter(&parameters[pos++], &workParameter);
    }

  parameters[pos].type = -1;
  parameters[pos].beginOffset = offset;

  for (num = 0; num <= maxParam; num++)
    {
      if (usedEntries[num] != 1)
 {
   if (usedEntries[num] == 0)
     return (- ((TRIO_EGAP) + ((num) << 8)));
   else
     return (- ((TRIO_EDBLREF) + ((num) << 8)));
 }

      i = indices[num];






      if ((parameters[i].type != 7) &&
   (parameters[i].flags & FLAGS_IGNORE))
 continue;
# 2240 "./trio/trio.c"
      switch (parameters[i].type)
 {
 case 8:
 case 4:
# 2253 "./trio/trio.c"
     {
       parameters[i].data.string = (argarray == ((void*)0))
  ? __builtin_va_arg(arglist, char *)
  : (char *)(argarray[num]);
     }
   break;




 case 5:
 case 6:
 case 0:
   parameters[i].data.pointer = (argarray == ((void*)0))
     ? __builtin_va_arg(arglist, trio_pointer_t)
     : argarray[num];
   break;

 case 3:
 case 1:

   if (TYPE_SCAN == type)
     {
              if (argarray == ((void*)0))
                parameters[i].data.pointer =
                  (trio_pointer_t)__builtin_va_arg(arglist, trio_pointer_t);
              else
                {
                  if (parameters[i].type == 3)
                    parameters[i].data.pointer =
                      (trio_pointer_t)((char *)argarray[num]);
                  else if (parameters[i].flags & FLAGS_SHORT)
                    parameters[i].data.pointer =
                      (trio_pointer_t)((short *)argarray[num]);
                  else
                    parameters[i].data.pointer =
                      (trio_pointer_t)((int *)argarray[num]);
                }
     }
   else

     {

       if (parameters[i].flags
    & (FLAGS_VARSIZE_PARAMETER | FLAGS_FIXED_SIZE))
  {
    int varsize;
    if (parameters[i].flags & FLAGS_VARSIZE_PARAMETER)
      {
# 2311 "./trio/trio.c"
        varsize = (int)parameters[parameters[i].varsize].data.number.as_unsigned;
      }
    else
      {

        varsize = parameters[i].varsize;
      }
    parameters[i].flags &= ~FLAGS_ALL_VARSIZES;

    if (varsize <= (int)sizeof(int))
      ;
    else if (varsize <= (int)sizeof(long))
      parameters[i].flags |= FLAGS_LONG;

    else if (varsize <= (int)sizeof(trio_longlong_t))
      parameters[i].flags |= FLAGS_QUAD;
    else
      parameters[i].flags |= FLAGS_INTMAX_T;




  }


       if (parameters[i].flags & FLAGS_SIZE_T)
  parameters[i].data.number.as_unsigned = (argarray == ((void*)0))
    ? (trio_uintmax_t)__builtin_va_arg(arglist, size_t)
    : (trio_uintmax_t)(*((size_t *)argarray[num]));
       else


       if (parameters[i].flags & FLAGS_PTRDIFF_T)
  parameters[i].data.number.as_unsigned = (argarray == ((void*)0))
    ? (trio_uintmax_t)__builtin_va_arg(arglist, ptrdiff_t)
    : (trio_uintmax_t)(*((ptrdiff_t *)argarray[num]));
       else


       if (parameters[i].flags & FLAGS_INTMAX_T)
  parameters[i].data.number.as_unsigned = (argarray == ((void*)0))
    ? (trio_uintmax_t)__builtin_va_arg(arglist, trio_intmax_t)
    : (trio_uintmax_t)(*((trio_intmax_t *)argarray[num]));
       else

       if (parameters[i].flags & FLAGS_QUAD)
  parameters[i].data.number.as_unsigned = (argarray == ((void*)0))
    ? (trio_uintmax_t)__builtin_va_arg(arglist, trio_ulonglong_t)
    : (trio_uintmax_t)(*((trio_ulonglong_t *)argarray[num]));
       else if (parameters[i].flags & FLAGS_LONG)
  parameters[i].data.number.as_unsigned = (argarray == ((void*)0))
    ? (trio_uintmax_t)__builtin_va_arg(arglist, long)
    : (trio_uintmax_t)(*((long *)argarray[num]));
       else
  {
    if (argarray == ((void*)0))
      parameters[i].data.number.as_unsigned = (trio_uintmax_t)__builtin_va_arg(arglist, int);
    else
      {
        if (parameters[i].type == 3)
   parameters[i].data.number.as_unsigned = (trio_uintmax_t)(*((char *)argarray[num]));
        else if (parameters[i].flags & FLAGS_SHORT)
   parameters[i].data.number.as_unsigned = (trio_uintmax_t)(*((short *)argarray[num]));
        else
   parameters[i].data.number.as_unsigned = (trio_uintmax_t)(*((int *)argarray[num]));
      }
  }
     }
   break;

 case 7:




   if (parameters[i].flags & FLAGS_USER_DEFINED)
     parameters[i].data.pointer = (argarray == ((void*)0))
       ? __builtin_va_arg(arglist, trio_pointer_t)
       : argarray[num];
   else
     parameters[i].data.number.as_unsigned = (argarray == ((void*)0))
       ? (trio_uintmax_t)__builtin_va_arg(arglist, int)
       : (trio_uintmax_t)(*((int *)argarray[num]));
   break;


 case 2:

   if (TYPE_SCAN == type)
     {
       if (parameters[i].flags & FLAGS_LONGDOUBLE)
  parameters[i].data.longdoublePointer = (argarray == ((void*)0))
    ? __builtin_va_arg(arglist, trio_long_double_t *)
    : (trio_long_double_t *)argarray[num];
       else
                {
    if (parameters[i].flags & FLAGS_LONG)
      parameters[i].data.doublePointer = (argarray == ((void*)0))
        ? __builtin_va_arg(arglist, double *)
        : (double *)argarray[num];
    else
      parameters[i].data.doublePointer = (argarray == ((void*)0))
        ? (double *)__builtin_va_arg(arglist, float *)
        : (double *)((float *)argarray[num]);
                }
     }
   else

     {
       if (parameters[i].flags & FLAGS_LONGDOUBLE)
  parameters[i].data.longdoubleNumber = (argarray == ((void*)0))
    ? __builtin_va_arg(arglist, trio_long_double_t)
    : (trio_long_double_t)(*((trio_long_double_t *)argarray[num]));
       else
  {
    if (argarray == ((void*)0))
      parameters[i].data.longdoubleNumber =
        (trio_long_double_t)__builtin_va_arg(arglist, double);
    else
      {
        if (parameters[i].flags & FLAGS_SHORT)
   parameters[i].data.longdoubleNumber =
     (trio_long_double_t)(*((float *)argarray[num]));
        else
   parameters[i].data.longdoubleNumber =
     (trio_long_double_t)(*((double *)argarray[num]));
      }
  }
     }
   break;



 case 9:
   parameters[i].data.errorNumber = save_errno;
   break;


 default:
   break;
 }
    }
  return num;
}
# 2472 "./trio/trio.c"
static void
TrioWriteNumber
(trio_class_t *self,trio_uintmax_t number,trio_flags_t flags,int width,int precision,int base)






{
  int isNegative;
  int isNumberZero;
  int isPrecisionZero;
  int ignoreNumber;
  char buffer[(sizeof(trio_uintmax_t) * 8) * (1 + MAX_LOCALE_SEPARATOR_LENGTH) + 1];
  char *bufferend;
  char *pointer;
  const char *digits;
  int i;




  int count;
  int digitOffset;

  ((void) (0));
  ((void) (0));
  ((void) (0));

  digits = (flags & FLAGS_UPPER) ? internalDigitsUpper : internalDigitsLower;
  if (base == NO_BASE)
    base = BASE_DECIMAL;

  isNumberZero = (number == 0);
  isPrecisionZero = (precision == 0);
  ignoreNumber = (isNumberZero
    && isPrecisionZero
    && !((flags & FLAGS_ALTERNATIVE) && (base == BASE_OCTAL)));

  if (flags & FLAGS_UNSIGNED)
    {
      isNegative = (1 == 0);
      flags &= ~FLAGS_SHOWSIGN;
    }
  else
    {
      isNegative = ((trio_intmax_t)number < 0);
      if (isNegative)
 number = -((trio_intmax_t)number);
    }

  if (flags & FLAGS_QUAD)
    number &= (trio_ulonglong_t)-1;
  else if (flags & FLAGS_LONG)
    number &= (unsigned long)-1;
  else
    number &= (unsigned int)-1;


  pointer = bufferend = &buffer[sizeof(buffer) - 1];
  *pointer-- = ((char)0);
  for (i = 1; i < (int)sizeof(buffer); i++)
    {
      digitOffset = number % base;
      *pointer-- = digits[digitOffset];
      number /= base;
      if (number == 0)
 break;
# 2559 "./trio/trio.c"
    }

  if (! ignoreNumber)
    {

      width -= (bufferend - pointer) - 1;
    }


  if (NO_PRECISION != precision)
    {
      precision -= (bufferend - pointer) - 1;
      if (precision < 0)
 precision = 0;
      flags |= FLAGS_NILPADDING;
    }


  count = (! ((flags & FLAGS_LEFTADJUST) || (precision == NO_PRECISION)))
    ? precision
    : 0;


  if (isNegative || (flags & FLAGS_SHOWSIGN) || (flags & FLAGS_SPACE))
    width--;
  if ((flags & FLAGS_ALTERNATIVE) && !isNumberZero)
    {
      switch (base)
 {
 case BASE_BINARY:
 case BASE_HEX:
   width -= 2;
   break;
 case BASE_OCTAL:
   if (!(flags & FLAGS_NILPADDING) || (count == 0))
     width--;
   break;
 default:
   break;
 }
    }


  if (! ((flags & FLAGS_LEFTADJUST) ||
  ((flags & FLAGS_NILPADDING) && (precision == NO_PRECISION))))
    {
      while (width-- > count)
 self->OutStream(self, ' ');
    }


  if (isNegative)
    self->OutStream(self, '-');
  else if (flags & FLAGS_SHOWSIGN)
    self->OutStream(self, '+');
  else if (flags & FLAGS_SPACE)
    self->OutStream(self, ' ');


  if ((flags & FLAGS_ALTERNATIVE) && !isNumberZero)
    {
      switch (base)
 {
 case BASE_BINARY:
   self->OutStream(self, '0');
   self->OutStream(self, (flags & FLAGS_UPPER) ? 'B' : 'b');
   break;

 case BASE_OCTAL:
   if (!(flags & FLAGS_NILPADDING) || (count == 0))
     self->OutStream(self, '0');
   break;

 case BASE_HEX:
   self->OutStream(self, '0');
   self->OutStream(self, (flags & FLAGS_UPPER) ? 'X' : 'x');
   break;

 default:
   break;
 }
    }


  if (flags & FLAGS_NILPADDING)
    {
      if (precision == NO_PRECISION)
 precision = width;
      while (precision-- > 0)
 {
   self->OutStream(self, '0');
   width--;
 }
    }

  if (! ignoreNumber)
    {

      while (*(++pointer))
 {
   self->OutStream(self, *pointer);
 }
    }


  if (flags & FLAGS_LEFTADJUST)
    {
      while (width-- > 0)
 self->OutStream(self, ' ');
    }
}







static void
TrioWriteStringCharacter
(trio_class_t *self,int ch,trio_flags_t flags)



{
  if (flags & FLAGS_ALTERNATIVE)
    {
      if (! ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISprint))
 {




   self->OutStream(self, '\\');
   switch (ch)
     {
     case '\007': self->OutStream(self, 'a'); break;
     case '\b': self->OutStream(self, 'b'); break;
     case '\f': self->OutStream(self, 'f'); break;
     case '\n': self->OutStream(self, 'n'); break;
     case '\r': self->OutStream(self, 'r'); break;
     case '\t': self->OutStream(self, 't'); break;
     case '\v': self->OutStream(self, 'v'); break;
     case '\\': self->OutStream(self, '\\'); break;
     default:
       self->OutStream(self, 'x');
       TrioWriteNumber(self, (trio_uintmax_t)ch,
         FLAGS_UNSIGNED | FLAGS_NILPADDING,
         2, 2, BASE_HEX);
       break;
     }
 }
      else if (ch == '\\')
 {
   self->OutStream(self, '\\');
   self->OutStream(self, '\\');
 }
      else
 {
   self->OutStream(self, ch);
 }
    }
  else
    {
      self->OutStream(self, ch);
    }
}







static void
TrioWriteString
(trio_class_t *self,const char *string,trio_flags_t flags,int width,int precision)





{
  int length;
  int ch;

  ((void) (0));
  ((void) (0));

  if (string == ((void*)0))
    {
      string = internalNullString;
      length = sizeof(internalNullString) - 1;




      width = 0;
    }
  else
    {
      if (precision == 0)
 {
   length = trio_length(string);
 }
      else
 {
   length = trio_length_max(string, precision);
 }
    }
  if ((NO_PRECISION != precision) &&
      (precision < length))
    {
      length = precision;
    }
  width -= length;






  if (! (flags & FLAGS_LEFTADJUST))
    {
      while (width-- > 0)
 self->OutStream(self, ' ');
    }

  while (length-- > 0)
    {

      ch = (int)((unsigned char)(*string++));
      TrioWriteStringCharacter(self, ch, flags);
    }

  if (flags & FLAGS_LEFTADJUST)
    {
      while (width-- > 0)
 self->OutStream(self, ' ');
    }




}
# 2935 "./trio/trio.c"
static void
TrioWriteDouble
(trio_class_t *self,trio_long_double_t number,trio_flags_t flags,int width,int precision,int base)






{
  trio_long_double_t integerNumber;
  trio_long_double_t fractionNumber;
  trio_long_double_t workNumber;
  int integerDigits;
  int fractionDigits;
  int exponentDigits;
  int workDigits;
  int baseDigits;
  int integerThreshold;
  int fractionThreshold;
  int expectedWidth;
  int exponent = 0;
  unsigned int uExponent = 0;
  int exponentBase;
  trio_long_double_t dblBase;
  trio_long_double_t dblFractionBase;
  trio_long_double_t integerAdjust;
  trio_long_double_t fractionAdjust;
  trio_long_double_t workFractionNumber;
  trio_long_double_t workFractionAdjust;
  int fractionDigitsInspect;
  int isNegative;
  int isExponentNegative = (1 == 0);
  int requireTwoDigitExponent;
  int isHex;
  const char *digits;



  int i;
  int offset;
  int hasOnlyZeroes;
  int leadingFractionZeroes = -1;
  register int trailingZeroes;
  int keepTrailingZeroes;
  int keepDecimalPoint;
  trio_long_double_t epsilon;
  int adjustNumber = (1 == 0);

  ((void) (0));
  ((void) (0));
  ((void) (0));


  switch (trio_fpclassify_and_signbit(number, &isNegative))
    {
    case TRIO_FP_NAN:
      TrioWriteString(self,
        (flags & FLAGS_UPPER)
        ? "NAN"
        : "nan",
        flags, width, precision);
      return;

    case TRIO_FP_INFINITE:
      if (isNegative)
 {

   TrioWriteString(self,
     (flags & FLAGS_UPPER)
     ? "-" "INF"
     : "-" "inf",
     flags, width, precision);
   return;
 }
      else
 {

   TrioWriteString(self,
     (flags & FLAGS_UPPER)
     ? "INF"
     : "inf",
     flags, width, precision);
   return;
 }

    default:

      break;
    }


  if (flags & FLAGS_LONGDOUBLE)
    {
      baseDigits = (base == 10)
 ? 18
 : (int)floorl((64 / TrioLogarithmBase(base)));
      epsilon = 1.08420217248550443401e-19L;
    }
  else if (flags & FLAGS_SHORT)
    {
      baseDigits = (base == BASE_DECIMAL)
 ? 6
 : (int)floorl((24 / TrioLogarithmBase(base)));
      epsilon = 1.19209290e-7F;
    }
  else
    {
      baseDigits = (base == BASE_DECIMAL)
 ? 15
 : (int)floorl((53 / TrioLogarithmBase(base)));
      epsilon = 2.2204460492503131e-16;
    }

  digits = (flags & FLAGS_UPPER) ? internalDigitsUpper : internalDigitsLower;
  isHex = (base == BASE_HEX);
  if (base == NO_BASE)
    base = BASE_DECIMAL;
  dblBase = (trio_long_double_t)base;
  keepTrailingZeroes = !( (flags & FLAGS_ROUNDING) ||
     ( (flags & FLAGS_FLOAT_G) &&
       !(flags & FLAGS_ALTERNATIVE) ) );
# 3065 "./trio/trio.c"
  if (precision == NO_PRECISION)
    {
      if (isHex)
 {
   keepTrailingZeroes = (1 == 0);
   precision = 24;
 }
      else
 {
   precision = 6;
 }
    }

  if (isNegative)
    {
      number = -number;
    }

  if (isHex)
    {
      flags |= FLAGS_FLOAT_E;
    }

 reprocess:

  if (flags & FLAGS_FLOAT_G)
    {
      if (precision == 0)
 precision = 1;






      if ( (number < 9.9999989999999991e-05L) ||
    (number >= TrioPower(base, (trio_long_double_t)precision)) )

 {

   flags |= FLAGS_FLOAT_E;
 }
      else if (number < 1.0)
 {





   workNumber = TrioLogarithm(number, base);
   workNumber = (((workNumber) < 0.0) ? -(workNumber) : (workNumber));
   if (workNumber - floorl((workNumber)) < epsilon)
     workNumber--;
   leadingFractionZeroes = (int)floorl((workNumber));
 }
    }

  if (flags & FLAGS_FLOAT_E)
    {

      workNumber = TrioLogarithm(number, base);
      if (trio_isinf(workNumber) == -1)
 {
   exponent = 0;

   if (flags & FLAGS_FLOAT_G)
     flags &= ~FLAGS_FLOAT_E;
 }
      else
 {
   exponent = (int)floorl((workNumber));
   workNumber = number;




   workNumber *= TrioPower(dblBase, (trio_long_double_t)-exponent);
   if (trio_isinf(workNumber)) {




     workNumber /= TrioPower(dblBase, (trio_long_double_t)(exponent / 2));
     workNumber /= TrioPower(dblBase, (trio_long_double_t)(exponent - (exponent / 2)));
   }
   number = workNumber;
   isExponentNegative = (exponent < 0);
   uExponent = (isExponentNegative) ? -exponent : exponent;
   if (isHex)
     uExponent *= 4;




 }
    }

  integerNumber = floorl((number));
  fractionNumber = number - integerNumber;







  integerDigits = 1;
  if (integerNumber > epsilon)
    {
      integerDigits += (int)TrioLogarithm(integerNumber, base);
    }

  fractionDigits = precision;
  if (flags & FLAGS_FLOAT_G)
    {
      if (leadingFractionZeroes > 0)
 {
   fractionDigits += leadingFractionZeroes;
 }
      if ((integerNumber > epsilon) || (number <= epsilon))
 {
   fractionDigits -= integerDigits;
 }
    }

  dblFractionBase = TrioPower(base, fractionDigits);

  if (integerNumber < 1.0)
    {
      workNumber = number * dblFractionBase + 0.5L;
      if (floorl((number * dblFractionBase)) != floorl((workNumber)))
 {
   adjustNumber = (! (1 == 0));

   if ((int)TrioLogarithm(number * dblFractionBase, base) != (int)TrioLogarithm(workNumber, base))
     {
       --leadingFractionZeroes;
     }
 }
      workNumber /= dblFractionBase;
    }
  else
    {
      workNumber = number + 0.5L / dblFractionBase;
      adjustNumber = (floorl((number)) != floorl((workNumber)));
    }
  if (adjustNumber)
    {
      if ((flags & FLAGS_FLOAT_G) && !(flags & FLAGS_FLOAT_E))
 {

   if ( (workNumber < 1.0E-4L) ||
        (workNumber >= TrioPower(base, (trio_long_double_t)precision)) )
     {

       flags |= FLAGS_FLOAT_E;
       goto reprocess;
     }
 }

      if (flags & FLAGS_FLOAT_E)
 {
   workDigits = 1 + TrioLogarithm(floorl((workNumber)), base);
   if (integerDigits == workDigits)
     {

       number += 0.5L / dblFractionBase;
       integerNumber = floorl((number));
       fractionNumber = number - integerNumber;
     }
   else
     {

       exponent++;
       isExponentNegative = (exponent < 0);
       uExponent = (isExponentNegative) ? -exponent : exponent;
       if (isHex)
  uExponent *= 4;
       workNumber = (number + 0.5L / dblFractionBase) / dblBase;
       integerNumber = floorl((workNumber));
       fractionNumber = workNumber - integerNumber;
     }
 }
      else
 {
   if (workNumber > 1.0)
     {

       integerNumber = floorl((workNumber));
       fractionNumber = 0.0;
       integerDigits = (integerNumber > epsilon)
  ? 1 + (int)TrioLogarithm(integerNumber, base)
  : 1;
       if (flags & FLAGS_FLOAT_G)
  {
    if (flags & FLAGS_ALTERNATIVE)
      {
        if ((integerNumber > epsilon) || (number <= epsilon))
   {
     fractionDigits -= integerDigits;
   }
      }
    else
      {
        fractionDigits = 0;
      }
  }
     }
   else
     {
       integerNumber = floorl((workNumber));
       fractionNumber = workNumber - integerNumber;
       if (flags & FLAGS_FLOAT_G)
  {
    if (flags & FLAGS_ALTERNATIVE)
      {
        fractionDigits = precision;
        if (leadingFractionZeroes > 0)
   {
     fractionDigits += leadingFractionZeroes;
   }
        if ((integerNumber > epsilon) || (number <= epsilon))
   {
     fractionDigits -= integerDigits;
   }
      }
  }
     }
 }
    }


  integerAdjust = fractionAdjust = 0.5L;
# 3320 "./trio/trio.c"
    {
      integerThreshold = 2147483647;
      fractionThreshold = 2147483647;
    }






  fractionAdjust /= dblFractionBase;
  hasOnlyZeroes = (floorl(((fractionNumber + fractionAdjust) * dblFractionBase)) < epsilon);

  keepDecimalPoint = ( (flags & FLAGS_ALTERNATIVE) ||
         !((precision == 0) ||
    (!keepTrailingZeroes && hasOnlyZeroes)) );

  expectedWidth = integerDigits + fractionDigits;

  if (!keepTrailingZeroes)
    {
      trailingZeroes = 0;
      workFractionNumber = fractionNumber;
      workFractionAdjust = fractionAdjust;
      fractionDigitsInspect = fractionDigits;

      if (integerDigits > integerThreshold)
 {
   fractionDigitsInspect = 0;
 }
      else if (fractionThreshold <= fractionDigits)
 {
   fractionDigitsInspect = fractionThreshold + 1;
 }

      trailingZeroes = fractionDigits - fractionDigitsInspect;
      for (i = 0; i < fractionDigitsInspect; i++)
 {
   workFractionNumber *= dblBase;
   workFractionAdjust *= dblBase;
   workNumber = floorl((workFractionNumber + workFractionAdjust));
   workFractionNumber -= workNumber;
   offset = (int)fmodl((workNumber),(dblBase));
   if (offset == 0)
     {
       trailingZeroes++;
     }
   else
     {
       trailingZeroes = 0;
     }
 }
      expectedWidth -= trailingZeroes;
    }

  if (keepDecimalPoint)
    {
      expectedWidth += internalDecimalPointLength;
    }
# 3387 "./trio/trio.c"
  if (isNegative || (flags & FLAGS_SHOWSIGN) || (flags & FLAGS_SPACE))
    {
      expectedWidth += sizeof("-") - 1;
    }

  exponentDigits = 0;
  if (flags & FLAGS_FLOAT_E)
    {
      exponentDigits = (uExponent == 0)
 ? 1
 : (int)ceill((TrioLogarithm((double)(uExponent + 1), (isHex) ? 10 : base)));

    }
  requireTwoDigitExponent = ((base == BASE_DECIMAL) && (exponentDigits == 1));
  if (exponentDigits > 0)
    {
      expectedWidth += exponentDigits;
      expectedWidth += (requireTwoDigitExponent
   ? sizeof("E+0") - 1
   : sizeof("E+") - 1);
    }

  if (isHex)
    {
      expectedWidth += sizeof("0X") - 1;
    }


  if (flags & FLAGS_NILPADDING)
    {

      if (isNegative)
 self->OutStream(self, '-');
      else if (flags & FLAGS_SHOWSIGN)
 self->OutStream(self, '+');
      else if (flags & FLAGS_SPACE)
 self->OutStream(self, ' ');
      if (isHex)
 {
   self->OutStream(self, '0');
   self->OutStream(self, (flags & FLAGS_UPPER) ? 'X' : 'x');
 }
      if (!(flags & FLAGS_LEFTADJUST))
 {
   for (i = expectedWidth; i < width; i++)
     {
       self->OutStream(self, '0');
     }
 }
    }
  else
    {

      if (!(flags & FLAGS_LEFTADJUST))
 {
   for (i = expectedWidth; i < width; i++)
     {
       self->OutStream(self, ' ');
     }
 }
      if (isNegative)
 self->OutStream(self, '-');
      else if (flags & FLAGS_SHOWSIGN)
 self->OutStream(self, '+');
      else if (flags & FLAGS_SPACE)
 self->OutStream(self, ' ');
      if (isHex)
 {
   self->OutStream(self, '0');
   self->OutStream(self, (flags & FLAGS_UPPER) ? 'X' : 'x');
 }
    }


  for (i = 0; i < integerDigits; i++)
    {
      workNumber = floorl((((integerNumber + integerAdjust) / TrioPower(base, integerDigits - i - 1))));

      if (i > integerThreshold)
 {

   self->OutStream(self, digits[0]);
 }
      else
 {
   self->OutStream(self, digits[(int)fmodl((workNumber),(dblBase))]);
 }
# 3487 "./trio/trio.c"
    }


  trailingZeroes = 0;

  if (keepDecimalPoint)
    {
      if (internalDecimalPoint)
 {
   self->OutStream(self, internalDecimalPoint);
 }
      else
 {
   for (i = 0; i < internalDecimalPointLength; i++)
     {
       self->OutStream(self, internalDecimalPointString[i]);
     }
 }
    }

  for (i = 0; i < fractionDigits; i++)
    {
      if ((integerDigits > integerThreshold) || (i > fractionThreshold))
 {

   trailingZeroes++;
 }
      else
 {
   fractionNumber *= dblBase;
   fractionAdjust *= dblBase;
   workNumber = floorl((fractionNumber + fractionAdjust));
   if (workNumber > fractionNumber)
     {

       fractionNumber = 0.0;
       fractionAdjust = 0.0;
     }
   else
     {
       fractionNumber -= workNumber;
     }
   offset = (int)fmodl((workNumber),(dblBase));
   if (offset == 0)
     {
       trailingZeroes++;
     }
   else
     {
       while (trailingZeroes > 0)
  {

    self->OutStream(self, digits[0]);
    trailingZeroes--;
  }
       self->OutStream(self, digits[offset]);
     }
 }
    }

  if (keepTrailingZeroes)
    {
      while (trailingZeroes > 0)
 {
   self->OutStream(self, digits[0]);
   trailingZeroes--;
 }
    }


  if (exponentDigits > 0)
    {
      self->OutStream(self,
        isHex
        ? ((flags & FLAGS_UPPER) ? 'P' : 'p')
        : ((flags & FLAGS_UPPER) ? 'E' : 'e'));
      self->OutStream(self, (isExponentNegative) ? '-' : '+');


      if (requireTwoDigitExponent)
        self->OutStream(self, '0');

      if (isHex)
 base = 10;
      exponentBase = (int)TrioPower(base, exponentDigits - 1);
      for (i = 0; i < exponentDigits; i++)
 {
   self->OutStream(self, digits[(uExponent / exponentBase) % base]);
   exponentBase /= base;
 }
    }

  if (flags & FLAGS_LEFTADJUST)
    {
      for (i = expectedWidth; i < width; i++)
 {
   self->OutStream(self, ' ');
 }
    }
}
# 3595 "./trio/trio.c"
static int
TrioFormatProcess
(trio_class_t *data,const char *format,trio_parameter_t *parameters)



{
  int i;

  const char *string;

  trio_pointer_t pointer;
  trio_flags_t flags;
  int width;
  int precision;
  int base;
  int offset;

  offset = 0;
  i = 0;

  for (;;)
    {

      while (parameters[i].type == 7)
 i++;


      while (offset < parameters[i].beginOffset)
        {
   if ('%' == format[offset] && '%' == format[offset + 1])
     {
       data->OutStream(data, '%');
       offset += 2;
     }
   else
     {
       data->OutStream(data, format[offset++]);
     }
 }


      if (parameters[i].type == -1)
 break;


      flags = parameters[i].flags;


      width = parameters[i].width;
      if (flags & FLAGS_WIDTH_PARAMETER)
 {

   width = (int)parameters[width].data.number.as_signed;
   if (width < 0)
     {




       flags |= FLAGS_LEFTADJUST;
       flags &= ~FLAGS_NILPADDING;
       width = -width;
     }
 }


      if (flags & FLAGS_PRECISION)
 {
   precision = parameters[i].precision;
   if (flags & FLAGS_PRECISION_PARAMETER)
     {

       precision = (int)parameters[precision].data.number.as_signed;
       if (precision < 0)
  {




    precision = NO_PRECISION;
  }
     }
 }
      else
 {
   precision = NO_PRECISION;
 }


      if (NO_BASE != parameters[i].baseSpecifier)
 {

   base = parameters[i].baseSpecifier;
 }
      else if (flags & FLAGS_BASE_PARAMETER)
 {

   base = parameters[i].base;
   base = (int)parameters[base].data.number.as_signed;
 }
      else
 {

   base = parameters[i].base;
 }

      switch (parameters[i].type)
        {
 case 3:




   if (! (flags & FLAGS_LEFTADJUST))
     {
       while (--width > 0)
  data->OutStream(data, ' ');
     }
# 3724 "./trio/trio.c"
   {
     TrioWriteStringCharacter(data,
         (int)parameters[i].data.number.as_signed,
         flags);
   }

   if (flags & FLAGS_LEFTADJUST)
     {
       while(--width > 0)
  data->OutStream(data, ' ');
     }





   break;

 case 1:
   TrioWriteNumber(data,
     parameters[i].data.number.as_unsigned,
     flags,
     width,
     precision,
     base);

   break;


 case 2:
   TrioWriteDouble(data,
     parameters[i].data.longdoubleNumber,
     flags,
     width,
     precision,
     base);
   break;


 case 4:
# 3775 "./trio/trio.c"
     {
       TrioWriteString(data,
         parameters[i].data.string,
         flags,
         width,
         precision);
     }
   break;

 case 5:
   {
     trio_reference_t reference;

     reference.data = data;
     reference.parameter = &parameters[i];
     trio_print_pointer(&reference, parameters[i].data.pointer);
   }
   break;

 case 6:
   pointer = parameters[i].data.pointer;
   if (((void*)0) != pointer)
     {






       if (flags & FLAGS_SIZE_T)
  *(size_t *)pointer = (size_t)data->actually.committed;
       else


       if (flags & FLAGS_PTRDIFF_T)
  *(ptrdiff_t *)pointer = (ptrdiff_t)data->actually.committed;
       else


       if (flags & FLAGS_INTMAX_T)
  *(trio_intmax_t *)pointer = (trio_intmax_t)data->actually.committed;
       else

       if (flags & FLAGS_QUAD)
  {
    *(trio_ulonglong_t *)pointer = (trio_ulonglong_t)data->actually.committed;
  }
       else if (flags & FLAGS_LONG)
  {
    *(long int *)pointer = (long int)data->actually.committed;
  }
       else if (flags & FLAGS_SHORT)
  {
    *(short int *)pointer = (short int)data->actually.committed;
  }
       else
  {
    *(int *)pointer = (int)data->actually.committed;
  }
     }
   break;

 case 7:
   break;


 case 9:
   string = trio_error(parameters[i].data.errorNumber);
   if (string)
     {
       TrioWriteString(data,
         string,
         flags,
         width,
         precision);
     }
   else
   {
     data->OutStream(data, '#');
     TrioWriteNumber(data,
       (trio_uintmax_t)parameters[i].data.errorNumber,
       flags,
       width,
       precision,
       BASE_DECIMAL);
   }
   break;
# 3892 "./trio/trio.c"
 default:
   break;
 }


      offset = parameters[i].endOffset;
      i++;
    }

  return data->processed;
}
# 3935 "./trio/trio.c"
static int
TrioFormat
(trio_pointer_t destination,size_t destinationSize,void (*OutStream) (trio_class_t *, int),const char *format,va_list arglist,trio_pointer_t *argarray)






{
  int status;
  trio_class_t data;
  trio_parameter_t parameters[MAX_PARAMETERS];

  ((void) (0));
  ((void) (0));

  memset(&data, 0, sizeof(data));
  data.OutStream = OutStream;
  data.location = destination;
  data.max = destinationSize;
  data.error = 0;
# 3965 "./trio/trio.c"
  status = TrioParse(TYPE_PRINT, format, parameters, arglist, argarray);
  if (status < 0)
    return status;

  status = TrioFormatProcess(&data, format, parameters);
  if (data.error != 0)
    {
      status = data.error;
    }
  return status;
}





static void
TrioOutStreamFile
(trio_class_t *self,int output)


{
  FILE *file;

  ((void) (0));
  ((void) (0));

  file = (FILE *)self->location;
  self->processed++;
  if (fputc(output, file) == (-1))
    {
      self->error = (- ((TRIO_EOF) + ((0) << 8)));
    }
  else
    {
      self->actually.committed++;
    }
}






static void
TrioOutStreamFileDescriptor
(trio_class_t *self,int output)


{
  int fd;
  char ch;

  ((void) (0));

  fd = *((int *)self->location);
  ch = (char)output;
  self->processed++;
  if (write(fd, &ch, sizeof(char)) == -1)
    {
      self->error = (- ((TRIO_ERRNO) + ((0) << 8)));
    }
  else
    {
      self->actually.committed++;
    }
}
# 4073 "./trio/trio.c"
static void
TrioOutStreamString
(trio_class_t *self,int output)


{
  char **buffer;

  ((void) (0));
  ((void) (0));

  buffer = (char **)self->location;
  **buffer = (char)output;
  (*buffer)++;
  self->processed++;
  self->actually.committed++;
}




static void
TrioOutStreamStringMax
(trio_class_t *self,int output)


{
  char **buffer;

  ((void) (0));
  ((void) (0));

  buffer = (char **)self->location;

  if (self->processed < self->max)
    {
      **buffer = (char)output;
      (*buffer)++;
      self->actually.committed++;
    }
  self->processed++;
}
# 4165 "./trio/trio.c"
            int
trio_printf
(const char *format,...)


{
  int status;
  va_list args;

  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioFormat(stdout, 0, TrioOutStreamFile, format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 4191 "./trio/trio.c"
            int
trio_vprintf
(const char *format,va_list args)


{
  ((void) (0));

  return TrioFormat(stdout, 0, TrioOutStreamFile, format, args, ((void*)0));
}
# 4211 "./trio/trio.c"
            int
trio_printfv
(const char *format,trio_pointer_t * args)


{
  static va_list unused;

  ((void) (0));

  return TrioFormat(stdout, 0, TrioOutStreamFile, format, unused, args);
}
# 4238 "./trio/trio.c"
            int
trio_fprintf
(FILE *file,const char *format,...)



{
  int status;
  va_list args;

  ((void) (0));
  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioFormat(file, 0, TrioOutStreamFile, format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 4267 "./trio/trio.c"
            int
trio_vfprintf
(FILE *file,const char *format,va_list args)



{
  ((void) (0));
  ((void) (0));

  return TrioFormat(file, 0, TrioOutStreamFile, format, args, ((void*)0));
}
# 4290 "./trio/trio.c"
            int
trio_fprintfv
(FILE *file,const char *format,trio_pointer_t * args)



{
  static va_list unused;

  ((void) (0));
  ((void) (0));

  return TrioFormat(file, 0, TrioOutStreamFile, format, unused, args);
}
# 4319 "./trio/trio.c"
            int
trio_dprintf
(int fd,const char *format,...)



{
  int status;
  va_list args;

  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioFormat(&fd, 0, TrioOutStreamFileDescriptor, format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 4347 "./trio/trio.c"
            int
trio_vdprintf
(int fd,const char *format,va_list args)



{
  ((void) (0));

  return TrioFormat(&fd, 0, TrioOutStreamFileDescriptor, format, args, ((void*)0));
}
# 4369 "./trio/trio.c"
            int
trio_dprintfv
(int fd,const char *format,trio_pointer_t *args)



{
  static va_list unused;

  ((void) (0));

  return TrioFormat(&fd, 0, TrioOutStreamFileDescriptor, format, unused, args);
}
# 4465 "./trio/trio.c"
            int
trio_sprintf
(char *buffer,const char *format,...)



{
  int status;
  va_list args;

  ((void) (0));
  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioFormat(&buffer, 0, TrioOutStreamString, format, args, ((void*)0));
  *buffer = ((char)0);
  __builtin_va_end(args);
  return status;
}
# 4493 "./trio/trio.c"
            int
trio_vsprintf
(char *buffer,const char *format,va_list args)



{
  int status;

  ((void) (0));
  ((void) (0));

  status = TrioFormat(&buffer, 0, TrioOutStreamString, format, args, ((void*)0));
  *buffer = ((char)0);
  return status;
}
# 4518 "./trio/trio.c"
            int
trio_sprintfv
(char *buffer,const char *format,trio_pointer_t *args)



{
  static va_list unused;
  int status;

  ((void) (0));
  ((void) (0));

  status = TrioFormat(&buffer, 0, TrioOutStreamString, format, unused, args);
  *buffer = ((char)0);
  return status;
}
# 4549 "./trio/trio.c"
            int
trio_snprintf
(char *buffer,size_t max,const char *format,...)




{
  int status;
  va_list args;

  ((void) (0));
  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioFormat(&buffer, max > 0 ? max - 1 : 0,
        TrioOutStreamStringMax, format, args, ((void*)0));
  if (max > 0)
    *buffer = ((char)0);
  __builtin_va_end(args);
  return status;
}
# 4581 "./trio/trio.c"
            int
trio_vsnprintf
(char *buffer,size_t max,const char *format,va_list args)




{
  int status;

  ((void) (0));
  ((void) (0));

  status = TrioFormat(&buffer, max > 0 ? max - 1 : 0,
        TrioOutStreamStringMax, format, args, ((void*)0));
  if (max > 0)
    *buffer = ((char)0);
  return status;
}
# 4610 "./trio/trio.c"
            int
trio_snprintfv
(char *buffer,size_t max,const char *format,trio_pointer_t *args)




{
  static va_list unused;
  int status;

  ((void) (0));
  ((void) (0));

  status = TrioFormat(&buffer, max > 0 ? max - 1 : 0,
        TrioOutStreamStringMax, format, unused, args);
  if (max > 0)
    *buffer = ((char)0);
  return status;
}
# 5627 "./trio/trio.c"
void
trio_print_pointer
(trio_pointer_t ref,trio_pointer_t pointer)


{
  trio_reference_t *self = (trio_reference_t *)ref;
  trio_flags_t flags;
  trio_uintmax_t number;

  if (((void*)0) == pointer)
    {
      const char *string = internalNullString;
      while (*string)
 self->data->OutStream(self->data, *string++);
    }
  else
    {







      number = (trio_uintmax_t)((char *)pointer - (char *)0);

      number &= (trio_uintmax_t)-1;
      flags = self->parameter->flags;
      flags |= (FLAGS_UNSIGNED | FLAGS_ALTERNATIVE |
         FLAGS_NILPADDING);
      TrioWriteNumber(self->data,
        number,
        flags,
        ((sizeof("0x") - 1) + sizeof(trio_pointer_t) * 8 / 4),
        NO_PRECISION,
        BASE_HEX);
    }
}
# 5683 "./trio/trio.c"
            void
trio_locale_set_decimal_point
(char *decimalPoint)

{






  internalDecimalPointLength = trio_length(decimalPoint);
  if (internalDecimalPointLength == 1)
    {
      internalDecimalPoint = *decimalPoint;
    }
  else
    {
      internalDecimalPoint = ((char)0);
      trio_copy_max(internalDecimalPointString,
      sizeof(internalDecimalPointString),
      decimalPoint);
    }
}
# 5715 "./trio/trio.c"
            void
trio_locale_set_thousand_separator
(char *thousandSeparator)

{






  trio_copy_max(internalThousandSeparator,
  sizeof(internalThousandSeparator),
  thousandSeparator);
  internalThousandSeparatorLength = trio_length(internalThousandSeparator);
}
# 5746 "./trio/trio.c"
            void
trio_locale_set_grouping
(char *grouping)

{






  trio_copy_max(internalGrouping,
  sizeof(internalGrouping),
  grouping);
}
# 5775 "./trio/trio.c"
static int
TrioSkipWhitespaces
(trio_class_t *self)

{
  int ch;

  ch = self->current;
  while (((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISspace))
    {
      self->InStream(self, &ch);
    }
  return ch;
}
# 5827 "./trio/trio.c"
static int
TrioGetCharacterClass
(const char *format,int *offsetPointer,trio_flags_t *flagsPointer,int *characterclass)




{
  int offset = *offsetPointer;
  int i;
  char ch;
  char range_begin;
  char range_end;

  *flagsPointer &= ~FLAGS_EXCLUDE;

  if (format[offset] == '^')
    {
      *flagsPointer |= FLAGS_EXCLUDE;
      offset++;
    }





  if (format[offset] == ']')
    {
      characterclass[(int)']']++;
      offset++;
    }




  if (format[offset] == '-')
    {
      characterclass[(int)'-']++;
      offset++;
    }

  for (ch = format[offset];
       (ch != ']') && (ch != ((char)0));
       ch = format[++offset])
    {
      switch (ch)
 {
 case '-':
# 5889 "./trio/trio.c"
   range_begin = format[offset - 1];
   range_end = format[++offset];
   if (range_end == ']')
     {

       characterclass[(int)ch]++;
       ch = range_end;
       break;
     }
   if (range_end == ((char)0))
     return (- ((TRIO_EINVAL) + ((offset) << 8)));
   if (range_begin > range_end)
     return (- ((TRIO_ERANGE) + ((offset) << 8)));

   for (i = (int)range_begin; i <= (int)range_end; i++)
     characterclass[i]++;

   ch = range_end;
   break;
# 6072 "./trio/trio.c"
 default:
   characterclass[(int)ch]++;
   break;
 }
    }
  return 0;
}







static int
TrioReadNumber
(trio_class_t *self,trio_uintmax_t *target,trio_flags_t flags,int width,int base)





{
  trio_uintmax_t number = 0;
  int digit;
  int count;
  int isNegative = (1 == 0);
  int gotNumber = (1 == 0);
  int j;

  ((void) (0));
  ((void) (0));
  ((void) (0));

  if (internalDigitsUnconverted)
    {

      memset(internalDigitArray, -1, sizeof(internalDigitArray));
      for (j = 0; j < (int)sizeof(internalDigitsLower) - 1; j++)
 {
   internalDigitArray[(int)internalDigitsLower[j]] = j;
   internalDigitArray[(int)internalDigitsUpper[j]] = j;
 }
      internalDigitsUnconverted = (1 == 0);
    }

  TrioSkipWhitespaces(self);


  if (self->current == '+')
    {
      self->InStream(self, ((void*)0));
    }
  else if (self->current == '-')
    {
      self->InStream(self, ((void*)0));
      isNegative = (! (1 == 0));
    }

  count = self->processed;

  if (flags & FLAGS_ALTERNATIVE)
    {
      switch (base)
 {
 case NO_BASE:
 case BASE_OCTAL:
 case BASE_HEX:
 case BASE_BINARY:
   if (self->current == '0')
     {
       self->InStream(self, ((void*)0));
       if (self->current)
  {
    if ((base == BASE_HEX) &&
        (trio_to_upper(self->current) == 'X'))
      {
        self->InStream(self, ((void*)0));
      }
    else if ((base == BASE_BINARY) &&
      (trio_to_upper(self->current) == 'B'))
      {
        self->InStream(self, ((void*)0));
      }
  }
     }
   else
     return (1 == 0);
   break;
 default:
   break;
 }
    }

  while (((width == NO_WIDTH) || (self->processed - count < width)) &&
  (! ((self->current == (-1)) || ((*__ctype_b_loc ())[(int) ((self->current))] & (unsigned short int) _ISspace))))
    {
      if ((((self->current) & ~0x7f) == 0))
 {
   digit = internalDigitArray[self->current];

   if ((digit == -1) || (digit >= base))
     break;
 }
# 6193 "./trio/trio.c"
      else
 break;

      number *= base;
      number += digit;
      gotNumber = (! (1 == 0));

      self->InStream(self, ((void*)0));
    }


  if (!gotNumber)
    return (1 == 0);

  if (target)
    *target = (isNegative) ? (trio_uintmax_t)(-((trio_intmax_t)number)) : number;
  return (! (1 == 0));
}




static int
TrioReadChar
(trio_class_t *self,char *target,trio_flags_t flags,int width)




{
  int i;
  char ch;
  trio_uintmax_t number;

  ((void) (0));
  ((void) (0));

  for (i = 0;
       (self->current != (-1)) && (i < width);
       i++)
    {
      ch = (char)self->current;
      self->InStream(self, ((void*)0));
      if ((flags & FLAGS_ALTERNATIVE) && (ch == '\\'))
 {
   switch (self->current)
     {
     case '\\': ch = '\\'; break;
     case 'a': ch = '\007'; break;
     case 'b': ch = '\b'; break;
     case 'f': ch = '\f'; break;
     case 'n': ch = '\n'; break;
     case 'r': ch = '\r'; break;
     case 't': ch = '\t'; break;
     case 'v': ch = '\v'; break;
     default:
       if (((*__ctype_b_loc ())[(int) ((self->current))] & (unsigned short int) _ISdigit))
  {

    if (!TrioReadNumber(self, &number, 0, 3, BASE_OCTAL))
      return 0;
    ch = (char)number;
  }
       else if (trio_to_upper(self->current) == 'X')
  {

    self->InStream(self, ((void*)0));
    if (!TrioReadNumber(self, &number, 0, 2, BASE_HEX))
      return 0;
    ch = (char)number;
  }
       else
  {
    ch = (char)self->current;
  }
       break;
     }
 }

      if (target)
 target[i] = ch;
    }
  return i + 1;
}




static int
TrioReadString
(trio_class_t *self,char *target,trio_flags_t flags,int width)




{
  int i;

  ((void) (0));
  ((void) (0));

  TrioSkipWhitespaces(self);





  for (i = 0;
       ((width == NO_WIDTH) || (i < width)) &&
       (! ((self->current == (-1)) || ((*__ctype_b_loc ())[(int) ((self->current))] & (unsigned short int) _ISspace)));
       i++)
    {
      if (TrioReadChar(self, (target ? &target[i] : 0), flags, 1) == 0)
 break;
    }
  if (target)
    target[i] = ((char)0);
  return (! (1 == 0));
}
# 6427 "./trio/trio.c"
static int
TrioReadGroup
(trio_class_t *self,char *target,int *characterclass,trio_flags_t flags,int width)





{
  int ch;
  int i;

  ((void) (0));
  ((void) (0));

  ch = self->current;
  for (i = 0;
       ((width == NO_WIDTH) || (i < width)) &&
       (! ((ch == (-1)) ||
    (((flags & FLAGS_EXCLUDE) != 0) ^ (characterclass[ch] == 0))));
       i++)
    {
      if (target)
 target[i] = (char)ch;
      self->InStream(self, &ch);
    }

  if (i == 0)
    return (1 == 0);


  if (target)
    target[i] = ((char)0);
  return (! (1 == 0));
}
# 6471 "./trio/trio.c"
static int
TrioReadDouble
(trio_class_t *self,trio_pointer_t target,trio_flags_t flags,int width)




{
  int ch;
  char doubleString[512];
  int offset = 0;
  int start;



  int isHex = (1 == 0);
  trio_long_double_t infinity;

  doubleString[0] = 0;

  if ((width == NO_WIDTH) || (width > (int)sizeof(doubleString) - 1))
    width = sizeof(doubleString) - 1;

  TrioSkipWhitespaces(self);






  ch = self->current;
  if ((ch == '+') || (ch == '-'))
    {
      doubleString[offset++] = (char)ch;
      self->InStream(self, &ch);
      width--;
    }

  start = offset;
  switch (ch)
    {
    case 'n':
    case 'N':

      if (offset != 0)
 break;

    case 'i':
    case 'I':

      while (((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISalpha) && (offset - start < width))
 {
   doubleString[offset++] = (char)ch;
   self->InStream(self, &ch);
 }
      doubleString[offset] = ((char)0);


      if (trio_equal(&doubleString[start], "INF") ||
   trio_equal(&doubleString[start], "INFINITE"))
 {
   infinity = ((start == 1) && (doubleString[0] == '-'))
     ? trio_ninf()
     : trio_pinf();
   if (flags & FLAGS_LONGDOUBLE)
     {
       *((trio_long_double_t *)target) = infinity;
     }
   else if (flags & FLAGS_LONG)
     {
       *((double *)target) = infinity;
     }
   else
     {
       *((float *)target) = infinity;
     }
   return (! (1 == 0));
 }
      if (trio_equal(doubleString, "NAN"))
 {

   if (flags & FLAGS_LONGDOUBLE)
     {
       *((trio_long_double_t *)target) = trio_nan();
     }
   else if (flags & FLAGS_LONG)
     {
       *((double *)target) = trio_nan();
     }
   else
     {
       *((float *)target) = trio_nan();
     }
   return (! (1 == 0));
 }
      return (1 == 0);

    case '0':
      doubleString[offset++] = (char)ch;
      self->InStream(self, &ch);
      if (trio_to_upper(ch) == 'X')
 {
   isHex = (! (1 == 0));
   doubleString[offset++] = (char)ch;
   self->InStream(self, &ch);
 }
      break;

    default:
      break;
    }

  while ((ch != (-1)) && (offset - start < width))
    {

      if (isHex ? ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISxdigit) : ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISdigit))
 {
   doubleString[offset++] = (char)ch;
   self->InStream(self, &ch);
 }
# 6608 "./trio/trio.c"
      else
 break;
    }
  if (ch == '.')
    {

      doubleString[offset++] = (char)ch;
      self->InStream(self, &ch);
      while ((isHex ? ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISxdigit) : ((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISdigit)) &&
      (offset - start < width))
 {
   doubleString[offset++] = (char)ch;
   self->InStream(self, &ch);
 }
    }
  if (isHex ? (trio_to_upper(ch) == 'P') : (trio_to_upper(ch) == 'E'))
    {

      doubleString[offset++] = (char)ch;
      self->InStream(self, &ch);
      if ((ch == '+') || (ch == '-'))
 {
   doubleString[offset++] = (char)ch;
   self->InStream(self, &ch);
 }
      while (((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISdigit) && (offset - start < width))
 {
   doubleString[offset++] = (char)ch;
   self->InStream(self, &ch);
 }
    }

  if ((offset == start) || (*doubleString == ((char)0)))
    return (1 == 0);

  doubleString[offset] = 0;

  if (flags & FLAGS_LONGDOUBLE)
    {
      *((trio_long_double_t *)target) = trio_to_long_double(doubleString, ((void*)0));
    }
  else if (flags & FLAGS_LONG)
    {
      *((double *)target) = trio_to_double(doubleString, ((void*)0));
    }
  else
    {
      *((float *)target) = trio_to_float(doubleString, ((void*)0));
    }
  return (! (1 == 0));
}





static int
TrioReadPointer
(trio_class_t *self,trio_pointer_t *target,trio_flags_t flags)



{
  trio_uintmax_t number;
  char buffer[sizeof(internalNullString)];

  flags |= (FLAGS_UNSIGNED | FLAGS_ALTERNATIVE | FLAGS_NILPADDING);

  if (TrioReadNumber(self,
       &number,
       flags,
       ((sizeof("0x") - 1) + sizeof(trio_pointer_t) * 8 / 4),
       BASE_HEX))
    {
      if (target)
 {





   *target = &((char *)0)[number];



 }
      return (! (1 == 0));
    }
  else if (TrioReadString(self,
     (flags & FLAGS_IGNORE)
     ? ((void*)0)
     : buffer,
     0,
     sizeof(internalNullString) - 1))
    {
      if (trio_equal_case(buffer, internalNullString))
 {
   if (target)
     *target = ((void*)0);
   return (! (1 == 0));
 }
    }
  return (1 == 0);
}




static int
TrioScanProcess
(trio_class_t *data,const char *format,trio_parameter_t *parameters)



{
  int status;
  int assignment;
  int ch;
  int offset;
  int i;
  trio_flags_t flags;
  int width;
  int base;
  trio_pointer_t pointer;


  if (format[0] == ((char)0))
    return 0;

  status = 0;
  assignment = 0;
  i = 0;
  offset = 0;
  data->InStream(data, &ch);

  for (;;)
    {

      while (parameters[i].type == 7)
 {
   ((void) (0));
   i++;
 }


      while (offset < parameters[i].beginOffset)
 {
   if (('%' == format[offset]) &&
       ('%' == format[offset + 1]))
     {

       if ('%' == ch)
  {
    data->InStream(data, &ch);
    offset += 2;
    continue;
  }
       else
  {
    status = (- ((TRIO_EINVAL) + ((offset) << 8)));
    goto end;
  }
     }
   else
     {
       if (((*__ctype_b_loc ())[(int) (((int)format[offset]))] & (unsigned short int) _ISspace))
  {

    ch = TrioSkipWhitespaces(data);
  }
       else if (ch == format[offset])
  {
    data->InStream(data, &ch);
  }
       else
  {
    status = assignment;
    goto end;
  }

       offset++;
     }
 }

      if (parameters[i].type == -1)
 break;

      if (((-1) == ch) && (parameters[i].type != 6))
 {
   status = (assignment > 0) ? assignment : (-1);
   goto end;
 }

      flags = parameters[i].flags;


      width = parameters[i].width;
      if (flags & FLAGS_WIDTH_PARAMETER)
 {

   width = (int)parameters[width].data.number.as_signed;
 }


      if (NO_BASE != parameters[i].baseSpecifier)
 {

   base = parameters[i].baseSpecifier;
 }
      else if (flags & FLAGS_BASE_PARAMETER)
 {

   base = parameters[i].base;
   base = (int)parameters[base].data.number.as_signed;
 }
      else
 {

   base = parameters[i].base;
 }

      switch (parameters[i].type)
 {
 case 1:
   {
     trio_uintmax_t number;

     if (0 == base)
       base = BASE_DECIMAL;

     if (!TrioReadNumber(data,
    &number,
    flags,
    width,
    base))
       {
  status = assignment;
  goto end;
       }

     if (!(flags & FLAGS_IGNORE))
       {
  assignment++;

  pointer = parameters[i].data.pointer;

  if (flags & FLAGS_SIZE_T)
    *(size_t *)pointer = (size_t)number;
  else


  if (flags & FLAGS_PTRDIFF_T)
    *(ptrdiff_t *)pointer = (ptrdiff_t)number;
  else


  if (flags & FLAGS_INTMAX_T)
    *(trio_intmax_t *)pointer = (trio_intmax_t)number;
  else

  if (flags & FLAGS_QUAD)
    *(trio_ulonglong_t *)pointer = (trio_ulonglong_t)number;
  else if (flags & FLAGS_LONG)
    *(long int *)pointer = (long int)number;
  else if (flags & FLAGS_SHORT)
    *(short int *)pointer = (short int)number;
  else
    *(int *)pointer = (int)number;
       }
   }
   break;

 case 4:
# 6897 "./trio/trio.c"
     {
       if (!TrioReadString(data,
      (flags & FLAGS_IGNORE)
      ? ((void*)0)
      : parameters[i].data.string,
      flags,
      width))
  {
    status = assignment;
    goto end;
  }
     }
   if (!(flags & FLAGS_IGNORE))
     assignment++;
   break;


 case 2:
   {
     if (flags & FLAGS_IGNORE)
       {
  pointer = ((void*)0);
       }
     else
       {
  pointer = (flags & FLAGS_LONGDOUBLE)
    ? (trio_pointer_t)parameters[i].data.longdoublePointer
    : (trio_pointer_t)parameters[i].data.doublePointer;
       }
     if (!TrioReadDouble(data, pointer, flags, width))
       {
  status = assignment;
  goto end;
       }
     if (!(flags & FLAGS_IGNORE))
       {
  assignment++;
       }
     break;
   }


 case 8:
   {
     int characterclass[MAX_CHARACTER_CLASS + 1];


     while (format[offset] != '[')
       {
  offset++;
       }

     offset++;

     memset(characterclass, 0, sizeof(characterclass));
     status = TrioGetCharacterClass(format,
        &offset,
        &flags,
        characterclass);
     if (status < 0)
       goto end;

     if (!TrioReadGroup(data,
          (flags & FLAGS_IGNORE)
          ? ((void*)0)
          : parameters[i].data.string,
          characterclass,
          flags,
          parameters[i].width))
       {
  status = assignment;
  goto end;
       }
     if (!(flags & FLAGS_IGNORE))
       assignment++;
   }
   break;

 case 6:
   pointer = parameters[i].data.pointer;
   if (((void*)0) != pointer)
     {
       int count = data->processed;
       if (ch != (-1))
  count--;

       if (flags & FLAGS_SIZE_T)
  *(size_t *)pointer = (size_t)count;
       else


       if (flags & FLAGS_PTRDIFF_T)
  *(ptrdiff_t *)pointer = (ptrdiff_t)count;
       else


       if (flags & FLAGS_INTMAX_T)
  *(trio_intmax_t *)pointer = (trio_intmax_t)count;
       else

       if (flags & FLAGS_QUAD)
  {
    *(trio_ulonglong_t *)pointer = (trio_ulonglong_t)count;
  }
       else if (flags & FLAGS_LONG)
  {
    *(long int *)pointer = (long int)count;
  }
       else if (flags & FLAGS_SHORT)
  {
    *(short int *)pointer = (short int)count;
  }
       else
  {
    *(int *)pointer = (int)count;
  }
     }
   break;

 case 3:
# 7033 "./trio/trio.c"
     {
       if (TrioReadChar(data,
          (flags & FLAGS_IGNORE)
          ? ((void*)0)
          : parameters[i].data.string,
          flags,
          (width == NO_WIDTH) ? 1 : width) == 0)
  {
    status = assignment;
    goto end;
  }
     }
   if (!(flags & FLAGS_IGNORE))
     assignment++;
   break;

 case 5:
   if (!TrioReadPointer(data,
          (flags & FLAGS_IGNORE)
          ? ((void*)0)
          : (trio_pointer_t *)parameters[i].data.pointer,
          flags))
     {
       status = assignment;
       goto end;
     }
   if (!(flags & FLAGS_IGNORE))
     assignment++;
   break;

 case 7:
   break;

 default:
   status = (- ((TRIO_EINVAL) + ((offset) << 8)));
   goto end;
 }

      ch = data->current;
      offset = parameters[i].endOffset;
      i++;
    }

  status = assignment;
 end:
  if (data->UndoStream)
    data->UndoStream(data);
  return status;
}




static int
TrioScan
(trio_pointer_t source,size_t sourceSize,void (*InStream) (trio_class_t *, int *),void (*UndoStream) (trio_class_t *),const char *format,va_list arglist,trio_pointer_t *argarray)







{
  int status;
  trio_parameter_t parameters[MAX_PARAMETERS];
  trio_class_t data;

  ((void) (0));
  ((void) (0));

  memset(&data, 0, sizeof(data));
  data.InStream = InStream;
  data.UndoStream = UndoStream;
  data.location = (trio_pointer_t)source;
  data.max = sourceSize;
  data.error = 0;
# 7118 "./trio/trio.c"
  status = TrioParse(TYPE_SCAN, format, parameters, arglist, argarray);
  if (status < 0)
    return status;

  status = TrioScanProcess(&data, format, parameters);
  if (data.error != 0)
    {
      status = data.error;
    }
  return status;
}





static void
TrioInStreamFile
(trio_class_t *self,int *intPointer)


{
  FILE *file = (FILE *)self->location;

  ((void) (0));
  ((void) (0));

  self->actually.cached = 0;


  if (self->current == (-1))
    {
      self->error = (ferror(file))
 ? (- ((TRIO_ERRNO) + ((0) << 8)))
 : (- ((TRIO_EOF) + ((0) << 8)));
    }
  else
    {
      self->processed++;
      self->actually.cached++;
    }

  self->current = fgetc(file);

  if ((((void*)0) != (intPointer)))
    {
      *intPointer = self->current;
    }
}






static void
TrioUndoStreamFile
(trio_class_t *self)

{
  FILE *file = (FILE *)self->location;

  ((void) (0));
  ((void) (0));

  if (self->actually.cached > 0)
    {
      ((void) (0));

      self->current = ungetc(self->current, file);
      self->actually.cached = 0;
    }
}






static void
TrioInStreamFileDescriptor
(trio_class_t *self,int *intPointer)


{
  int fd = *((int *)self->location);
  int size;
  unsigned char input;

  ((void) (0));

  self->actually.cached = 0;

  size = read(fd, &input, sizeof(char));
  if (size == -1)
    {
      self->error = (- ((TRIO_ERRNO) + ((0) << 8)));
      self->current = (-1);
    }
  else
    {
      self->current = (size == 0) ? (-1) : input;
    }
  if (self->current != (-1))
    {
      self->actually.cached++;
      self->processed++;
    }

  if ((((void*)0) != (intPointer)))
    {
      *intPointer = self->current;
    }
}
# 7277 "./trio/trio.c"
static void
TrioInStreamString
(trio_class_t *self,int *intPointer)


{
  unsigned char **buffer;

  ((void) (0));
  ((void) (0));

  self->actually.cached = 0;

  buffer = (unsigned char **)self->location;
  self->current = (*buffer)[0];
  if (self->current == ((char)0))
    {
      self->current = (-1);
    }
  else
    {
      (*buffer)++;
      self->processed++;
      self->actually.cached++;
    }

  if ((((void*)0) != (intPointer)))
    {
      *intPointer = self->current;
    }
}
# 7334 "./trio/trio.c"
            int
trio_scanf
(const char *format,...)


{
  int status;
  va_list args;

  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioScan((trio_pointer_t)stdin, 0,
      TrioInStreamFile,
      TrioUndoStreamFile,
      format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 7363 "./trio/trio.c"
            int
trio_vscanf
(const char *format,va_list args)


{
  ((void) (0));

  return TrioScan((trio_pointer_t)stdin, 0,
    TrioInStreamFile,
    TrioUndoStreamFile,
    format, args, ((void*)0));
}
# 7386 "./trio/trio.c"
            int
trio_scanfv
(const char *format,trio_pointer_t *args)


{
  static va_list unused;

  ((void) (0));

  return TrioScan((trio_pointer_t)stdin, 0,
    TrioInStreamFile,
    TrioUndoStreamFile,
    format, unused, args);
}
# 7416 "./trio/trio.c"
            int
trio_fscanf
(FILE *file,const char *format,...)



{
  int status;
  va_list args;

  ((void) (0));
  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioScan((trio_pointer_t)file, 0,
      TrioInStreamFile,
      TrioUndoStreamFile,
      format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 7448 "./trio/trio.c"
            int
trio_vfscanf
(FILE *file,const char *format,va_list args)



{
  ((void) (0));
  ((void) (0));

  return TrioScan((trio_pointer_t)file, 0,
    TrioInStreamFile,
    TrioUndoStreamFile,
    format, args, ((void*)0));
}
# 7474 "./trio/trio.c"
            int
trio_fscanfv
(FILE *file,const char *format,trio_pointer_t *args)



{
  static va_list unused;

  ((void) (0));
  ((void) (0));

  return TrioScan((trio_pointer_t)file, 0,
    TrioInStreamFile,
    TrioUndoStreamFile,
    format, unused, args);
}
# 7506 "./trio/trio.c"
            int
trio_dscanf
(int fd,const char *format,...)



{
  int status;
  va_list args;

  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioScan((trio_pointer_t)&fd, 0,
      TrioInStreamFileDescriptor,
      ((void*)0),
      format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 7537 "./trio/trio.c"
            int
trio_vdscanf
(int fd,const char *format,va_list args)



{
  ((void) (0));

  return TrioScan((trio_pointer_t)&fd, 0,
    TrioInStreamFileDescriptor,
    ((void*)0),
    format, args, ((void*)0));
}
# 7562 "./trio/trio.c"
            int
trio_dscanfv
(int fd,const char *format,trio_pointer_t *args)



{
  static va_list unused;

  ((void) (0));

  return TrioScan((trio_pointer_t)&fd, 0,
    TrioInStreamFileDescriptor,
    ((void*)0),
    format, unused, args);
}
# 7661 "./trio/trio.c"
            int
trio_sscanf
(const char *buffer,const char *format,...)



{
  int status;
  va_list args;

  ((void) (0));
  ((void) (0));

  __builtin_va_start(args, format);
  status = TrioScan((trio_pointer_t)&buffer, 0,
      TrioInStreamString,
      ((void*)0),
      format, args, ((void*)0));
  __builtin_va_end(args);
  return status;
}
# 7691 "./trio/trio.c"
            int
trio_vsscanf
(const char *buffer,const char *format,va_list args)



{
  ((void) (0));
  ((void) (0));

  return TrioScan((trio_pointer_t)&buffer, 0,
    TrioInStreamString,
    ((void*)0),
    format, args, ((void*)0));
}
# 7715 "./trio/trio.c"
            int
trio_sscanfv
(const char *buffer,const char *format,trio_pointer_t *args)



{
  static va_list unused;

  ((void) (0));
  ((void) (0));

  return TrioScan((trio_pointer_t)&buffer, 0,
    TrioInStreamString,
    ((void*)0),
    format, unused, args);
}
# 7740 "./trio/trio.c"
            const char *
trio_strerror
(int errorcode)

{


  switch (((-(errorcode)) & 0x00FF))
    {
    case TRIO_EOF:
      return "End of file";
    case TRIO_EINVAL:
      return "Invalid argument";
    case TRIO_ETOOMANY:
      return "Too many arguments";
    case TRIO_EDBLREF:
      return "Double reference";
    case TRIO_EGAP:
      return "Reference gap";
    case TRIO_ENOMEM:
      return "Out of memory";
    case TRIO_ERANGE:
      return "Invalid range";
    case TRIO_ECUSTOM:
      return "Custom error";
    default:
      return "Unknown";
    }



}
