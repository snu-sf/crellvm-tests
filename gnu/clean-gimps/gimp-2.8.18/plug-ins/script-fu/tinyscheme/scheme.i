# 1 "scheme.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "scheme.c" 2
# 25 "scheme.c"
# 1 "../../../config.h" 1
# 26 "scheme.c" 2



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
# 30 "scheme.c" 2
# 41 "scheme.c"
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
# 42 "scheme.c" 2


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
# 45 "scheme.c" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/float.h" 1 3
# 46 "scheme.c" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 40 "/usr/include/ctype.h" 3 4
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
# 41 "/usr/include/ctype.h" 2 3 4






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
# 47 "scheme.c" 2
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
# 48 "scheme.c" 2

# 1 "./../script-fu-intl.h" 1
# 28 "./../script-fu-intl.h"
# 1 "/usr/include/glib-2.0/glib/gi18n.h" 1
# 21 "/usr/include/glib-2.0/glib/gi18n.h"
# 1 "/usr/include/glib-2.0/glib.h" 1
# 30 "/usr/include/glib-2.0/glib.h"
# 1 "/usr/include/glib-2.0/glib/galloca.h" 1
# 32 "/usr/include/glib-2.0/glib/galloca.h"
# 1 "/usr/include/glib-2.0/glib/gtypes.h" 1
# 32 "/usr/include/glib-2.0/glib/gtypes.h"
# 1 "/usr/lib64/glib-2.0/include/glibconfig.h" 1








# 1 "/usr/include/glib-2.0/glib/gmacros.h" 1
# 38 "/usr/include/glib-2.0/glib/gmacros.h"
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
# 39 "/usr/include/glib-2.0/glib/gmacros.h" 2
# 10 "/usr/lib64/glib-2.0/include/glibconfig.h" 2
# 37 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed char gint8;
typedef unsigned char guint8;
typedef signed short gint16;
typedef unsigned short guint16;



typedef signed int gint32;
typedef unsigned int guint32;





typedef signed long gint64;
typedef unsigned long guint64;
# 65 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed long gssize;
typedef unsigned long gsize;
# 76 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef gint64 goffset;
# 91 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed long gintptr;
typedef unsigned long guintptr;
# 193 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef int GPid;
# 33 "/usr/include/glib-2.0/glib/gtypes.h" 2

# 1 "/usr/include/glib-2.0/glib/gversionmacros.h" 1
# 35 "/usr/include/glib-2.0/glib/gtypes.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 59 "/usr/include/time.h" 3 4
typedef __clock_t clock_t;
# 75 "/usr/include/time.h" 3 4
typedef __time_t time_t;
# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
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
# 36 "/usr/include/glib-2.0/glib/gtypes.h" 2
# 46 "/usr/include/glib-2.0/glib/gtypes.h"
typedef char gchar;
typedef short gshort;
typedef long glong;
typedef int gint;
typedef gint gboolean;

typedef unsigned char guchar;
typedef unsigned short gushort;
typedef unsigned long gulong;
typedef unsigned int guint;

typedef float gfloat;
typedef double gdouble;
# 77 "/usr/include/glib-2.0/glib/gtypes.h"
typedef void* gpointer;
typedef const void *gconstpointer;

typedef gint (*GCompareFunc) (gconstpointer a,
                                                 gconstpointer b);
typedef gint (*GCompareDataFunc) (gconstpointer a,
                                                 gconstpointer b,
       gpointer user_data);
typedef gboolean (*GEqualFunc) (gconstpointer a,
                                                 gconstpointer b);
typedef void (*GDestroyNotify) (gpointer data);
typedef void (*GFunc) (gpointer data,
                                                 gpointer user_data);
typedef guint (*GHashFunc) (gconstpointer key);
typedef void (*GHFunc) (gpointer key,
                                                 gpointer value,
                                                 gpointer user_data);
# 103 "/usr/include/glib-2.0/glib/gtypes.h"
typedef void (*GFreeFunc) (gpointer data);
# 117 "/usr/include/glib-2.0/glib/gtypes.h"
typedef const gchar * (*GTranslateFunc) (const gchar *str,
       gpointer data);
# 399 "/usr/include/glib-2.0/glib/gtypes.h"
typedef union _GDoubleIEEE754 GDoubleIEEE754;
typedef union _GFloatIEEE754 GFloatIEEE754;





union _GFloatIEEE754
{
  gfloat v_float;
  struct {
    guint mantissa : 23;
    guint biased_exponent : 8;
    guint sign : 1;
  } mpn;
};
union _GDoubleIEEE754
{
  gdouble v_double;
  struct {
    guint mantissa_low : 32;
    guint mantissa_high : 20;
    guint biased_exponent : 11;
    guint sign : 1;
  } mpn;
};
# 449 "/usr/include/glib-2.0/glib/gtypes.h"
typedef struct _GTimeVal GTimeVal;

struct _GTimeVal
{
  glong tv_sec;
  glong tv_usec;
};
# 33 "/usr/include/glib-2.0/glib/galloca.h" 2
# 31 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/garray.h" 1
# 36 "/usr/include/glib-2.0/glib/garray.h"
typedef struct _GBytes GBytes;
typedef struct _GArray GArray;
typedef struct _GByteArray GByteArray;
typedef struct _GPtrArray GPtrArray;

struct _GArray
{
  gchar *data;
  guint len;
};

struct _GByteArray
{
  guint8 *data;
  guint len;
};

struct _GPtrArray
{
  gpointer *pdata;
  guint len;
};
# 69 "/usr/include/glib-2.0/glib/garray.h"
extern
GArray* g_array_new (gboolean zero_terminated,
       gboolean clear_,
       guint element_size);
extern
GArray* g_array_sized_new (gboolean zero_terminated,
       gboolean clear_,
       guint element_size,
       guint reserved_size);
extern
gchar* g_array_free (GArray *array,
       gboolean free_segment);
extern
GArray *g_array_ref (GArray *array);
extern
void g_array_unref (GArray *array);
extern
guint g_array_get_element_size (GArray *array);
extern
GArray* g_array_append_vals (GArray *array,
       gconstpointer data,
       guint len);
extern
GArray* g_array_prepend_vals (GArray *array,
       gconstpointer data,
       guint len);
extern
GArray* g_array_insert_vals (GArray *array,
       guint index_,
       gconstpointer data,
       guint len);
extern
GArray* g_array_set_size (GArray *array,
       guint length);
extern
GArray* g_array_remove_index (GArray *array,
       guint index_);
extern
GArray* g_array_remove_index_fast (GArray *array,
       guint index_);
extern
GArray* g_array_remove_range (GArray *array,
       guint index_,
       guint length);
extern
void g_array_sort (GArray *array,
       GCompareFunc compare_func);
extern
void g_array_sort_with_data (GArray *array,
       GCompareDataFunc compare_func,
       gpointer user_data);
extern
void g_array_set_clear_func (GArray *array,
                                   GDestroyNotify clear_func);






extern
GPtrArray* g_ptr_array_new (void);
extern
GPtrArray* g_ptr_array_new_with_free_func (GDestroyNotify element_free_func);
extern
GPtrArray* g_ptr_array_sized_new (guint reserved_size);
extern
GPtrArray* g_ptr_array_new_full (guint reserved_size,
        GDestroyNotify element_free_func);
extern
gpointer* g_ptr_array_free (GPtrArray *array,
        gboolean free_seg);
extern
GPtrArray* g_ptr_array_ref (GPtrArray *array);
extern
void g_ptr_array_unref (GPtrArray *array);
extern
void g_ptr_array_set_free_func (GPtrArray *array,
                                           GDestroyNotify element_free_func);
extern
void g_ptr_array_set_size (GPtrArray *array,
        gint length);
extern
gpointer g_ptr_array_remove_index (GPtrArray *array,
        guint index_);
extern
gpointer g_ptr_array_remove_index_fast (GPtrArray *array,
        guint index_);
extern
gboolean g_ptr_array_remove (GPtrArray *array,
        gpointer data);
extern
gboolean g_ptr_array_remove_fast (GPtrArray *array,
        gpointer data);
extern
GPtrArray *g_ptr_array_remove_range (GPtrArray *array,
        guint index_,
        guint length);
extern
void g_ptr_array_add (GPtrArray *array,
        gpointer data);
extern
void g_ptr_array_insert (GPtrArray *array,
                                           gint index_,
                                           gpointer data);
extern
void g_ptr_array_sort (GPtrArray *array,
        GCompareFunc compare_func);
extern
void g_ptr_array_sort_with_data (GPtrArray *array,
        GCompareDataFunc compare_func,
        gpointer user_data);
extern
void g_ptr_array_foreach (GPtrArray *array,
        GFunc func,
        gpointer user_data);






extern
GByteArray* g_byte_array_new (void);
extern
GByteArray* g_byte_array_new_take (guint8 *data,
                                            gsize len);
extern
GByteArray* g_byte_array_sized_new (guint reserved_size);
extern
guint8* g_byte_array_free (GByteArray *array,
         gboolean free_segment);
extern
GBytes* g_byte_array_free_to_bytes (GByteArray *array);
extern
GByteArray *g_byte_array_ref (GByteArray *array);
extern
void g_byte_array_unref (GByteArray *array);
extern
GByteArray* g_byte_array_append (GByteArray *array,
         const guint8 *data,
         guint len);
extern
GByteArray* g_byte_array_prepend (GByteArray *array,
         const guint8 *data,
         guint len);
extern
GByteArray* g_byte_array_set_size (GByteArray *array,
         guint length);
extern
GByteArray* g_byte_array_remove_index (GByteArray *array,
         guint index_);
extern
GByteArray* g_byte_array_remove_index_fast (GByteArray *array,
         guint index_);
extern
GByteArray* g_byte_array_remove_range (GByteArray *array,
         guint index_,
         guint length);
extern
void g_byte_array_sort (GByteArray *array,
         GCompareFunc compare_func);
extern
void g_byte_array_sort_with_data (GByteArray *array,
         GCompareDataFunc compare_func,
         gpointer user_data);
# 32 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gasyncqueue.h" 1
# 32 "/usr/include/glib-2.0/glib/gasyncqueue.h"
# 1 "/usr/include/glib-2.0/glib/gthread.h" 1
# 32 "/usr/include/glib-2.0/glib/gthread.h"
# 1 "/usr/include/glib-2.0/glib/gatomic.h" 1
# 31 "/usr/include/glib-2.0/glib/gatomic.h"
extern
gint g_atomic_int_get (const volatile gint *atomic);
extern
void g_atomic_int_set (volatile gint *atomic,
                                                               gint newval);
extern
void g_atomic_int_inc (volatile gint *atomic);
extern
gboolean g_atomic_int_dec_and_test (volatile gint *atomic);
extern
gboolean g_atomic_int_compare_and_exchange (volatile gint *atomic,
                                                               gint oldval,
                                                               gint newval);
extern
gint g_atomic_int_add (volatile gint *atomic,
                                                               gint val);
extern
guint g_atomic_int_and (volatile guint *atomic,
                                                               guint val);
extern
guint g_atomic_int_or (volatile guint *atomic,
                                                               guint val);
extern
guint g_atomic_int_xor (volatile guint *atomic,
                                                               guint val);

extern
gpointer g_atomic_pointer_get (const volatile void *atomic);
extern
void g_atomic_pointer_set (volatile void *atomic,
                                                               gpointer newval);
extern
gboolean g_atomic_pointer_compare_and_exchange (volatile void *atomic,
                                                               gpointer oldval,
                                                               gpointer newval);
extern
gssize g_atomic_pointer_add (volatile void *atomic,
                                                               gssize val);
extern
gsize g_atomic_pointer_and (volatile void *atomic,
                                                               gsize val);
extern
gsize g_atomic_pointer_or (volatile void *atomic,
                                                               gsize val);
extern
gsize g_atomic_pointer_xor (volatile void *atomic,
                                                               gsize val);

__attribute__((__deprecated__)) extern
gint g_atomic_int_exchange_and_add (volatile gint *atomic,
                                                               gint val);
# 33 "/usr/include/glib-2.0/glib/gthread.h" 2
# 1 "/usr/include/glib-2.0/glib/gerror.h" 1
# 27 "/usr/include/glib-2.0/glib/gerror.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 28 "/usr/include/glib-2.0/glib/gerror.h" 2

# 1 "/usr/include/glib-2.0/glib/gquark.h" 1
# 36 "/usr/include/glib-2.0/glib/gquark.h"
typedef guint32 GQuark;



extern
GQuark g_quark_try_string (const gchar *string);
extern
GQuark g_quark_from_static_string (const gchar *string);
extern
GQuark g_quark_from_string (const gchar *string);
extern
const gchar * g_quark_to_string (GQuark quark) __attribute__((__const__));
# 61 "/usr/include/glib-2.0/glib/gquark.h"
extern
const gchar * g_intern_string (const gchar *string);
extern
const gchar * g_intern_static_string (const gchar *string);
# 30 "/usr/include/glib-2.0/glib/gerror.h" 2
# 42 "/usr/include/glib-2.0/glib/gerror.h"
typedef struct _GError GError;

struct _GError
{
  GQuark domain;
  gint code;
  gchar *message;
};

extern
GError* g_error_new (GQuark domain,
                                gint code,
                                const gchar *format,
                                ...) __attribute__((__format__ (__printf__, 3, 4)));

extern
GError* g_error_new_literal (GQuark domain,
                                gint code,
                                const gchar *message);
extern
GError* g_error_new_valist (GQuark domain,
                                gint code,
                                const gchar *format,
                                va_list args) __attribute__((__format__ (__printf__, 3, 0)));

extern
void g_error_free (GError *error);
extern
GError* g_error_copy (const GError *error);

extern
gboolean g_error_matches (const GError *error,
                                GQuark domain,
                                gint code);




extern
void g_set_error (GError **err,
                                GQuark domain,
                                gint code,
                                const gchar *format,
                                ...) __attribute__((__format__ (__printf__, 4, 5)));

extern
void g_set_error_literal (GError **err,
                                GQuark domain,
                                gint code,
                                const gchar *message);



extern
void g_propagate_error (GError **dest,
    GError *src);


extern
void g_clear_error (GError **err);


extern
void g_prefix_error (GError **err,
                                       const gchar *format,
                                       ...) __attribute__((__format__ (__printf__, 2, 3)));


extern
void g_propagate_prefixed_error (GError **dest,
                                       GError *src,
                                       const gchar *format,
                                       ...) __attribute__((__format__ (__printf__, 3, 4)));
# 34 "/usr/include/glib-2.0/glib/gthread.h" 2




extern
GQuark g_thread_error_quark (void);

typedef enum
{
  G_THREAD_ERROR_AGAIN
} GThreadError;

typedef gpointer (*GThreadFunc) (gpointer data);

typedef struct _GThread GThread;

typedef union _GMutex GMutex;
typedef struct _GRecMutex GRecMutex;
typedef struct _GRWLock GRWLock;
typedef struct _GCond GCond;
typedef struct _GPrivate GPrivate;
typedef struct _GOnce GOnce;

union _GMutex
{

  gpointer p;
  guint i[2];
};

struct _GRWLock
{

  gpointer p;
  guint i[2];
};

struct _GCond
{

  gpointer p;
  guint i[2];
};

struct _GRecMutex
{

  gpointer p;
  guint i[2];
};


struct _GPrivate
{

  gpointer p;
  GDestroyNotify notify;
  gpointer future[2];
};

typedef enum
{
  G_ONCE_STATUS_NOTCALLED,
  G_ONCE_STATUS_PROGRESS,
  G_ONCE_STATUS_READY
} GOnceStatus;


struct _GOnce
{
  volatile GOnceStatus status;
  volatile gpointer retval;
};
# 139 "/usr/include/glib-2.0/glib/gthread.h"
extern
GThread * g_thread_ref (GThread *thread);
extern
void g_thread_unref (GThread *thread);
extern
GThread * g_thread_new (const gchar *name,
                                                 GThreadFunc func,
                                                 gpointer data);
extern
GThread * g_thread_try_new (const gchar *name,
                                                 GThreadFunc func,
                                                 gpointer data,
                                                 GError **error);
extern
GThread * g_thread_self (void);
extern
void g_thread_exit (gpointer retval);
extern
gpointer g_thread_join (GThread *thread);
extern
void g_thread_yield (void);


extern
void g_mutex_init (GMutex *mutex);
extern
void g_mutex_clear (GMutex *mutex);
extern
void g_mutex_lock (GMutex *mutex);
extern
gboolean g_mutex_trylock (GMutex *mutex);
extern
void g_mutex_unlock (GMutex *mutex);

extern
void g_rw_lock_init (GRWLock *rw_lock);
extern
void g_rw_lock_clear (GRWLock *rw_lock);
extern
void g_rw_lock_writer_lock (GRWLock *rw_lock);
extern
gboolean g_rw_lock_writer_trylock (GRWLock *rw_lock);
extern
void g_rw_lock_writer_unlock (GRWLock *rw_lock);
extern
void g_rw_lock_reader_lock (GRWLock *rw_lock);
extern
gboolean g_rw_lock_reader_trylock (GRWLock *rw_lock);
extern
void g_rw_lock_reader_unlock (GRWLock *rw_lock);

extern
void g_rec_mutex_init (GRecMutex *rec_mutex);
extern
void g_rec_mutex_clear (GRecMutex *rec_mutex);
extern
void g_rec_mutex_lock (GRecMutex *rec_mutex);
extern
gboolean g_rec_mutex_trylock (GRecMutex *rec_mutex);
extern
void g_rec_mutex_unlock (GRecMutex *rec_mutex);

extern
void g_cond_init (GCond *cond);
extern
void g_cond_clear (GCond *cond);
extern
void g_cond_wait (GCond *cond,
                                                 GMutex *mutex);
extern
void g_cond_signal (GCond *cond);
extern
void g_cond_broadcast (GCond *cond);
extern
gboolean g_cond_wait_until (GCond *cond,
                                                 GMutex *mutex,
                                                 gint64 end_time);

extern
gpointer g_private_get (GPrivate *key);
extern
void g_private_set (GPrivate *key,
                                                 gpointer value);
extern
void g_private_replace (GPrivate *key,
                                                 gpointer value);

extern
gpointer g_once_impl (GOnce *once,
                                                 GThreadFunc func,
                                                 gpointer arg);
extern
gboolean g_once_init_enter (volatile void *location);
extern
void g_once_init_leave (volatile void *location,
                                                 gsize result);
# 266 "/usr/include/glib-2.0/glib/gthread.h"
extern
guint g_get_num_processors (void);
# 33 "/usr/include/glib-2.0/glib/gasyncqueue.h" 2



typedef struct _GAsyncQueue GAsyncQueue;

extern
GAsyncQueue *g_async_queue_new (void);
extern
GAsyncQueue *g_async_queue_new_full (GDestroyNotify item_free_func);
extern
void g_async_queue_lock (GAsyncQueue *queue);
extern
void g_async_queue_unlock (GAsyncQueue *queue);
extern
GAsyncQueue *g_async_queue_ref (GAsyncQueue *queue);
extern
void g_async_queue_unref (GAsyncQueue *queue);

__attribute__((__deprecated__)) extern
void g_async_queue_ref_unlocked (GAsyncQueue *queue);

__attribute__((__deprecated__)) extern
void g_async_queue_unref_and_unlock (GAsyncQueue *queue);

extern
void g_async_queue_push (GAsyncQueue *queue,
                                                 gpointer data);
extern
void g_async_queue_push_unlocked (GAsyncQueue *queue,
                                                 gpointer data);
extern
void g_async_queue_push_sorted (GAsyncQueue *queue,
                                                 gpointer data,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
void g_async_queue_push_sorted_unlocked (GAsyncQueue *queue,
                                                 gpointer data,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
gpointer g_async_queue_pop (GAsyncQueue *queue);
extern
gpointer g_async_queue_pop_unlocked (GAsyncQueue *queue);
extern
gpointer g_async_queue_try_pop (GAsyncQueue *queue);
extern
gpointer g_async_queue_try_pop_unlocked (GAsyncQueue *queue);
extern
gpointer g_async_queue_timeout_pop (GAsyncQueue *queue,
                                                 guint64 timeout);
extern
gpointer g_async_queue_timeout_pop_unlocked (GAsyncQueue *queue,
                                                 guint64 timeout);
extern
gint g_async_queue_length (GAsyncQueue *queue);
extern
gint g_async_queue_length_unlocked (GAsyncQueue *queue);
extern
void g_async_queue_sort (GAsyncQueue *queue,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
void g_async_queue_sort_unlocked (GAsyncQueue *queue,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);

__attribute__((__deprecated__)) extern
gpointer g_async_queue_timed_pop (GAsyncQueue *queue,
                                                 GTimeVal *end_time);
__attribute__((__deprecated__)) extern
gpointer g_async_queue_timed_pop_unlocked (GAsyncQueue *queue,
                                                 GTimeVal *end_time);
# 33 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gbacktrace.h" 1
# 33 "/usr/include/glib-2.0/glib/gbacktrace.h"
# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 23 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 49 "/usr/include/signal.h" 3 4
typedef __sigset_t sigset_t;








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
# 297 "/usr/include/bits/siginfo.h" 3 4
typedef union pthread_attr_t pthread_attr_t;



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
# 395 "/usr/include/signal.h" 3 4
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
# 396 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 34 "/usr/include/glib-2.0/glib/gbacktrace.h" 2



extern
void g_on_error_query (const gchar *prg_name);
extern
void g_on_error_stack_trace (const gchar *prg_name);
# 35 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbase64.h" 1
# 30 "/usr/include/glib-2.0/glib/gbase64.h"
extern
gsize g_base64_encode_step (const guchar *in,
                                 gsize len,
                                 gboolean break_lines,
                                 gchar *out,
                                 gint *state,
                                 gint *save);
extern
gsize g_base64_encode_close (gboolean break_lines,
                                 gchar *out,
                                 gint *state,
                                 gint *save);
extern
gchar* g_base64_encode (const guchar *data,
                                 gsize len) __attribute__((__malloc__));
extern
gsize g_base64_decode_step (const gchar *in,
                                 gsize len,
                                 guchar *out,
                                 gint *state,
                                 guint *save);
extern
guchar *g_base64_decode (const gchar *text,
                                 gsize *out_len) __attribute__((__malloc__));
extern
guchar *g_base64_decode_inplace (gchar *text,
                                 gsize *out_len);
# 36 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbitlock.h" 1
# 32 "/usr/include/glib-2.0/glib/gbitlock.h"
extern
void g_bit_lock (volatile gint *address,
                                           gint lock_bit);
extern
gboolean g_bit_trylock (volatile gint *address,
                                           gint lock_bit);
extern
void g_bit_unlock (volatile gint *address,
                                           gint lock_bit);

extern
void g_pointer_bit_lock (volatile void *address,
                                           gint lock_bit);
extern
gboolean g_pointer_bit_trylock (volatile void *address,
                                           gint lock_bit);
extern
void g_pointer_bit_unlock (volatile void *address,
                                           gint lock_bit);
# 37 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbookmarkfile.h" 1
# 57 "/usr/include/glib-2.0/glib/gbookmarkfile.h"
typedef enum
{
  G_BOOKMARK_FILE_ERROR_INVALID_URI,
  G_BOOKMARK_FILE_ERROR_INVALID_VALUE,
  G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED,
  G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND,
  G_BOOKMARK_FILE_ERROR_READ,
  G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING,
  G_BOOKMARK_FILE_ERROR_WRITE,
  G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND
} GBookmarkFileError;

extern
GQuark g_bookmark_file_error_quark (void);







typedef struct _GBookmarkFile GBookmarkFile;

extern
GBookmarkFile *g_bookmark_file_new (void);
extern
void g_bookmark_file_free (GBookmarkFile *bookmark);

extern
gboolean g_bookmark_file_load_from_file (GBookmarkFile *bookmark,
          const gchar *filename,
          GError **error);
extern
gboolean g_bookmark_file_load_from_data (GBookmarkFile *bookmark,
          const gchar *data,
          gsize length,
          GError **error);
extern
gboolean g_bookmark_file_load_from_data_dirs (GBookmarkFile *bookmark,
          const gchar *file,
          gchar **full_path,
          GError **error);
extern
gchar * g_bookmark_file_to_data (GBookmarkFile *bookmark,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_to_file (GBookmarkFile *bookmark,
          const gchar *filename,
          GError **error);

extern
void g_bookmark_file_set_title (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *title);
extern
gchar * g_bookmark_file_get_title (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_description (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *description);
extern
gchar * g_bookmark_file_get_description (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_mime_type (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *mime_type);
extern
gchar * g_bookmark_file_get_mime_type (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_groups (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar **groups,
          gsize length);
extern
void g_bookmark_file_add_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group);
extern
gboolean g_bookmark_file_has_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group,
          GError **error);
extern
gchar ** g_bookmark_file_get_groups (GBookmarkFile *bookmark,
          const gchar *uri,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_add_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          const gchar *exec);
extern
gboolean g_bookmark_file_has_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          GError **error);
extern
gchar ** g_bookmark_file_get_applications (GBookmarkFile *bookmark,
          const gchar *uri,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_set_app_info (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          const gchar *exec,
          gint count,
          time_t stamp,
          GError **error);
extern
gboolean g_bookmark_file_get_app_info (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          gchar **exec,
          guint *count,
          time_t *stamp,
          GError **error);
extern
void g_bookmark_file_set_is_private (GBookmarkFile *bookmark,
          const gchar *uri,
          gboolean is_private);
extern
gboolean g_bookmark_file_get_is_private (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_icon (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *href,
          const gchar *mime_type);
extern
gboolean g_bookmark_file_get_icon (GBookmarkFile *bookmark,
          const gchar *uri,
          gchar **href,
          gchar **mime_type,
          GError **error);
extern
void g_bookmark_file_set_added (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t added);
extern
time_t g_bookmark_file_get_added (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_modified (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t modified);
extern
time_t g_bookmark_file_get_modified (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_visited (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t visited);
extern
time_t g_bookmark_file_get_visited (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
gboolean g_bookmark_file_has_item (GBookmarkFile *bookmark,
          const gchar *uri);
extern
gint g_bookmark_file_get_size (GBookmarkFile *bookmark);
extern
gchar ** g_bookmark_file_get_uris (GBookmarkFile *bookmark,
          gsize *length) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_remove_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group,
          GError **error);
extern
gboolean g_bookmark_file_remove_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          GError **error);
extern
gboolean g_bookmark_file_remove_item (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
gboolean g_bookmark_file_move_item (GBookmarkFile *bookmark,
          const gchar *old_uri,
          const gchar *new_uri,
          GError **error);
# 38 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbytes.h" 1
# 34 "/usr/include/glib-2.0/glib/gbytes.h"
extern
GBytes * g_bytes_new (gconstpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_take (gpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_static (gconstpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_with_free_func (gconstpointer data,
                                                 gsize size,
                                                 GDestroyNotify free_func,
                                                 gpointer user_data);

extern
GBytes * g_bytes_new_from_bytes (GBytes *bytes,
                                                 gsize offset,
                                                 gsize length);

extern
gconstpointer g_bytes_get_data (GBytes *bytes,
                                                 gsize *size);

extern
gsize g_bytes_get_size (GBytes *bytes);

extern
GBytes * g_bytes_ref (GBytes *bytes);

extern
void g_bytes_unref (GBytes *bytes);

extern
gpointer g_bytes_unref_to_data (GBytes *bytes,
                                                 gsize *size);

extern
GByteArray * g_bytes_unref_to_array (GBytes *bytes);

extern
guint g_bytes_hash (gconstpointer bytes);

extern
gboolean g_bytes_equal (gconstpointer bytes1,
                                                 gconstpointer bytes2);

extern
gint g_bytes_compare (gconstpointer bytes1,
                                                 gconstpointer bytes2);
# 39 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gcharset.h" 1
# 31 "/usr/include/glib-2.0/glib/gcharset.h"
extern
gboolean g_get_charset (const char **charset);
extern
gchar * g_get_codeset (void);

extern
const gchar * const * g_get_language_names (void);
extern
gchar ** g_get_locale_variants (const gchar *locale);
# 40 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gchecksum.h" 1
# 46 "/usr/include/glib-2.0/glib/gchecksum.h"
typedef enum {
  G_CHECKSUM_MD5,
  G_CHECKSUM_SHA1,
  G_CHECKSUM_SHA256,
  G_CHECKSUM_SHA512
} GChecksumType;
# 62 "/usr/include/glib-2.0/glib/gchecksum.h"
typedef struct _GChecksum GChecksum;

extern
gssize g_checksum_type_get_length (GChecksumType checksum_type);

extern
GChecksum * g_checksum_new (GChecksumType checksum_type);
extern
void g_checksum_reset (GChecksum *checksum);
extern
GChecksum * g_checksum_copy (const GChecksum *checksum);
extern
void g_checksum_free (GChecksum *checksum);
extern
void g_checksum_update (GChecksum *checksum,
                                                     const guchar *data,
                                                     gssize length);
extern
const gchar * g_checksum_get_string (GChecksum *checksum);
extern
void g_checksum_get_digest (GChecksum *checksum,
                                                     guint8 *buffer,
                                                     gsize *digest_len);

extern
gchar *g_compute_checksum_for_data (GChecksumType checksum_type,
                                                     const guchar *data,
                                                     gsize length);
extern
gchar *g_compute_checksum_for_string (GChecksumType checksum_type,
                                                     const gchar *str,
                                                     gssize length);

extern
gchar *g_compute_checksum_for_bytes (GChecksumType checksum_type,
                                                     GBytes *data);
# 41 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gconvert.h" 1
# 49 "/usr/include/glib-2.0/glib/gconvert.h"
typedef enum
{
  G_CONVERT_ERROR_NO_CONVERSION,
  G_CONVERT_ERROR_ILLEGAL_SEQUENCE,
  G_CONVERT_ERROR_FAILED,
  G_CONVERT_ERROR_PARTIAL_INPUT,
  G_CONVERT_ERROR_BAD_URI,
  G_CONVERT_ERROR_NOT_ABSOLUTE_PATH,
  G_CONVERT_ERROR_NO_MEMORY
} GConvertError;
# 68 "/usr/include/glib-2.0/glib/gconvert.h"
extern
GQuark g_convert_error_quark (void);







typedef struct _GIConv *GIConv;

extern
GIConv g_iconv_open (const gchar *to_codeset,
         const gchar *from_codeset);
extern
gsize g_iconv (GIConv converter,
         gchar **inbuf,
         gsize *inbytes_left,
         gchar **outbuf,
         gsize *outbytes_left);
extern
gint g_iconv_close (GIConv converter);


extern
gchar* g_convert (const gchar *str,
    gssize len,
    const gchar *to_codeset,
    const gchar *from_codeset,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));
extern
gchar* g_convert_with_iconv (const gchar *str,
    gssize len,
    GIConv converter,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));
extern
gchar* g_convert_with_fallback (const gchar *str,
    gssize len,
    const gchar *to_codeset,
    const gchar *from_codeset,
    const gchar *fallback,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));




extern
gchar* g_locale_to_utf8 (const gchar *opsysstring,
      gssize len,
      gsize *bytes_read,
      gsize *bytes_written,
      GError **error) __attribute__((__malloc__));
extern
gchar* g_locale_from_utf8 (const gchar *utf8string,
      gssize len,
      gsize *bytes_read,
      gsize *bytes_written,
      GError **error) __attribute__((__malloc__));




extern
gchar* g_filename_to_utf8 (const gchar *opsysstring,
        gssize len,
        gsize *bytes_read,
        gsize *bytes_written,
        GError **error) __attribute__((__malloc__));
extern
gchar* g_filename_from_utf8 (const gchar *utf8string,
        gssize len,
        gsize *bytes_read,
        gsize *bytes_written,
        GError **error) __attribute__((__malloc__));

extern
gchar *g_filename_from_uri (const gchar *uri,
       gchar **hostname,
       GError **error) __attribute__((__malloc__));

extern
gchar *g_filename_to_uri (const gchar *filename,
       const gchar *hostname,
       GError **error) __attribute__((__malloc__));
extern
gchar *g_filename_display_name (const gchar *filename) __attribute__((__malloc__));
extern
gboolean g_get_filename_charsets (const gchar ***charsets);

extern
gchar *g_filename_display_basename (const gchar *filename) __attribute__((__malloc__));

extern
gchar **g_uri_list_extract_uris (const gchar *uri_list) __attribute__((__malloc__));
# 42 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdataset.h" 1
# 36 "/usr/include/glib-2.0/glib/gdataset.h"
typedef struct _GData GData;

typedef void (*GDataForeachFunc) (GQuark key_id,
                                                 gpointer data,
                                                 gpointer user_data);



extern
void g_datalist_init (GData **datalist);
extern
void g_datalist_clear (GData **datalist);
extern
gpointer g_datalist_id_get_data (GData **datalist,
      GQuark key_id);
extern
void g_datalist_id_set_data_full (GData **datalist,
      GQuark key_id,
      gpointer data,
      GDestroyNotify destroy_func);

typedef gpointer (*GDuplicateFunc) (gpointer data, gpointer user_data);

extern
gpointer g_datalist_id_dup_data (GData **datalist,
                                         GQuark key_id,
                                         GDuplicateFunc dup_func,
      gpointer user_data);
extern
gboolean g_datalist_id_replace_data (GData **datalist,
                                         GQuark key_id,
                                         gpointer oldval,
                                         gpointer newval,
                                         GDestroyNotify destroy,
      GDestroyNotify *old_destroy);

extern
gpointer g_datalist_id_remove_no_notify (GData **datalist,
      GQuark key_id);
extern
void g_datalist_foreach (GData **datalist,
      GDataForeachFunc func,
      gpointer user_data);
# 89 "/usr/include/glib-2.0/glib/gdataset.h"
extern
void g_datalist_set_flags (GData **datalist,
      guint flags);
extern
void g_datalist_unset_flags (GData **datalist,
      guint flags);
extern
guint g_datalist_get_flags (GData **datalist);
# 113 "/usr/include/glib-2.0/glib/gdataset.h"
extern
void g_dataset_destroy (gconstpointer dataset_location);
extern
gpointer g_dataset_id_get_data (gconstpointer dataset_location,
                                         GQuark key_id);
extern
gpointer g_datalist_get_data (GData **datalist,
       const gchar *key);
extern
void g_dataset_id_set_data_full (gconstpointer dataset_location,
                                         GQuark key_id,
                                         gpointer data,
                                         GDestroyNotify destroy_func);
extern
gpointer g_dataset_id_remove_no_notify (gconstpointer dataset_location,
                                         GQuark key_id);
extern
void g_dataset_foreach (gconstpointer dataset_location,
                                         GDataForeachFunc func,
                                         gpointer user_data);
# 43 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdate.h" 1
# 48 "/usr/include/glib-2.0/glib/gdate.h"
typedef gint32 GTime;
typedef guint16 GDateYear;
typedef guint8 GDateDay;
typedef struct _GDate GDate;


typedef enum
{
  G_DATE_DAY = 0,
  G_DATE_MONTH = 1,
  G_DATE_YEAR = 2
} GDateDMY;


typedef enum
{
  G_DATE_BAD_WEEKDAY = 0,
  G_DATE_MONDAY = 1,
  G_DATE_TUESDAY = 2,
  G_DATE_WEDNESDAY = 3,
  G_DATE_THURSDAY = 4,
  G_DATE_FRIDAY = 5,
  G_DATE_SATURDAY = 6,
  G_DATE_SUNDAY = 7
} GDateWeekday;
typedef enum
{
  G_DATE_BAD_MONTH = 0,
  G_DATE_JANUARY = 1,
  G_DATE_FEBRUARY = 2,
  G_DATE_MARCH = 3,
  G_DATE_APRIL = 4,
  G_DATE_MAY = 5,
  G_DATE_JUNE = 6,
  G_DATE_JULY = 7,
  G_DATE_AUGUST = 8,
  G_DATE_SEPTEMBER = 9,
  G_DATE_OCTOBER = 10,
  G_DATE_NOVEMBER = 11,
  G_DATE_DECEMBER = 12
} GDateMonth;
# 99 "/usr/include/glib-2.0/glib/gdate.h"
struct _GDate
{
  guint julian_days : 32;





  guint julian : 1;
  guint dmy : 1;


  guint day : 6;
  guint month : 4;
  guint year : 16;
};





extern
GDate* g_date_new (void);
extern
GDate* g_date_new_dmy (GDateDay day,
                                           GDateMonth month,
                                           GDateYear year);
extern
GDate* g_date_new_julian (guint32 julian_day);
extern
void g_date_free (GDate *date);






extern
gboolean g_date_valid (const GDate *date);
extern
gboolean g_date_valid_day (GDateDay day) __attribute__((__const__));
extern
gboolean g_date_valid_month (GDateMonth month) __attribute__((__const__));
extern
gboolean g_date_valid_year (GDateYear year) __attribute__((__const__));
extern
gboolean g_date_valid_weekday (GDateWeekday weekday) __attribute__((__const__));
extern
gboolean g_date_valid_julian (guint32 julian_date) __attribute__((__const__));
extern
gboolean g_date_valid_dmy (GDateDay day,
                                           GDateMonth month,
                                           GDateYear year) __attribute__((__const__));

extern
GDateWeekday g_date_get_weekday (const GDate *date);
extern
GDateMonth g_date_get_month (const GDate *date);
extern
GDateYear g_date_get_year (const GDate *date);
extern
GDateDay g_date_get_day (const GDate *date);
extern
guint32 g_date_get_julian (const GDate *date);
extern
guint g_date_get_day_of_year (const GDate *date);






extern
guint g_date_get_monday_week_of_year (const GDate *date);
extern
guint g_date_get_sunday_week_of_year (const GDate *date);
extern
guint g_date_get_iso8601_week_of_year (const GDate *date);





extern
void g_date_clear (GDate *date,
                                           guint n_dates);





extern
void g_date_set_parse (GDate *date,
                                           const gchar *str);
extern
void g_date_set_time_t (GDate *date,
        time_t timet);
extern
void g_date_set_time_val (GDate *date,
        GTimeVal *timeval);

__attribute__((__deprecated__)) extern
void g_date_set_time (GDate *date,
                                           GTime time_);

extern
void g_date_set_month (GDate *date,
                                           GDateMonth month);
extern
void g_date_set_day (GDate *date,
                                           GDateDay day);
extern
void g_date_set_year (GDate *date,
                                           GDateYear year);
extern
void g_date_set_dmy (GDate *date,
                                           GDateDay day,
                                           GDateMonth month,
                                           GDateYear y);
extern
void g_date_set_julian (GDate *date,
                                           guint32 julian_date);
extern
gboolean g_date_is_first_of_month (const GDate *date);
extern
gboolean g_date_is_last_of_month (const GDate *date);


extern
void g_date_add_days (GDate *date,
                                           guint n_days);
extern
void g_date_subtract_days (GDate *date,
                                           guint n_days);


extern
void g_date_add_months (GDate *date,
                                           guint n_months);
extern
void g_date_subtract_months (GDate *date,
                                           guint n_months);


extern
void g_date_add_years (GDate *date,
                                           guint n_years);
extern
void g_date_subtract_years (GDate *date,
                                           guint n_years);
extern
gboolean g_date_is_leap_year (GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_days_in_month (GDateMonth month,
                                           GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_monday_weeks_in_year (GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_sunday_weeks_in_year (GDateYear year) __attribute__((__const__));



extern
gint g_date_days_between (const GDate *date1,
        const GDate *date2);


extern
gint g_date_compare (const GDate *lhs,
                                           const GDate *rhs);
extern
void g_date_to_struct_tm (const GDate *date,
                                           struct tm *tm);

extern
void g_date_clamp (GDate *date,
        const GDate *min_date,
        const GDate *max_date);


extern
void g_date_order (GDate *date1, GDate *date2);




extern
gsize g_date_strftime (gchar *s,
                                           gsize slen,
                                           const gchar *format,
                                           const GDate *date);
# 44 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdatetime.h" 1
# 33 "/usr/include/glib-2.0/glib/gdatetime.h"
# 1 "/usr/include/glib-2.0/glib/gtimezone.h" 1
# 31 "/usr/include/glib-2.0/glib/gtimezone.h"
typedef struct _GTimeZone GTimeZone;
# 48 "/usr/include/glib-2.0/glib/gtimezone.h"
typedef enum
{
  G_TIME_TYPE_STANDARD,
  G_TIME_TYPE_DAYLIGHT,
  G_TIME_TYPE_UNIVERSAL
} GTimeType;

extern
GTimeZone * g_time_zone_new (const gchar *identifier);
extern
GTimeZone * g_time_zone_new_utc (void);
extern
GTimeZone * g_time_zone_new_local (void);

extern
GTimeZone * g_time_zone_ref (GTimeZone *tz);
extern
void g_time_zone_unref (GTimeZone *tz);

extern
gint g_time_zone_find_interval (GTimeZone *tz,
                                                                         GTimeType type,
                                                                         gint64 time_);

extern
gint g_time_zone_adjust_time (GTimeZone *tz,
                                                                         GTimeType type,
                                                                         gint64 *time_);

extern
const gchar * g_time_zone_get_abbreviation (GTimeZone *tz,
                                                                         gint interval);
extern
gint32 g_time_zone_get_offset (GTimeZone *tz,
                                                                         gint interval);
extern
gboolean g_time_zone_is_dst (GTimeZone *tz,
                                                                         gint interval);
# 34 "/usr/include/glib-2.0/glib/gdatetime.h" 2
# 89 "/usr/include/glib-2.0/glib/gdatetime.h"
typedef gint64 GTimeSpan;
# 99 "/usr/include/glib-2.0/glib/gdatetime.h"
typedef struct _GDateTime GDateTime;

extern
void g_date_time_unref (GDateTime *datetime);
extern
GDateTime * g_date_time_ref (GDateTime *datetime);

extern
GDateTime * g_date_time_new_now (GTimeZone *tz);
extern
GDateTime * g_date_time_new_now_local (void);
extern
GDateTime * g_date_time_new_now_utc (void);

extern
GDateTime * g_date_time_new_from_unix_local (gint64 t);
extern
GDateTime * g_date_time_new_from_unix_utc (gint64 t);

extern
GDateTime * g_date_time_new_from_timeval_local (const GTimeVal *tv);
extern
GDateTime * g_date_time_new_from_timeval_utc (const GTimeVal *tv);

extern
GDateTime * g_date_time_new (GTimeZone *tz,
                                                                         gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);
extern
GDateTime * g_date_time_new_local (gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);
extern
GDateTime * g_date_time_new_utc (gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add (GDateTime *datetime,
                                                                         GTimeSpan timespan);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_years (GDateTime *datetime,
                                                                         gint years);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_months (GDateTime *datetime,
                                                                         gint months);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_weeks (GDateTime *datetime,
                                                                         gint weeks);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_days (GDateTime *datetime,
                                                                         gint days);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_hours (GDateTime *datetime,
                                                                         gint hours);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_minutes (GDateTime *datetime,
                                                                         gint minutes);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_seconds (GDateTime *datetime,
                                                                         gdouble seconds);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_full (GDateTime *datetime,
                                                                         gint years,
                                                                         gint months,
                                                                         gint days,
                                                                         gint hours,
                                                                         gint minutes,
                                                                         gdouble seconds);

extern
gint g_date_time_compare (gconstpointer dt1,
                                                                         gconstpointer dt2);
extern
GTimeSpan g_date_time_difference (GDateTime *end,
                                                                         GDateTime *begin);
extern
guint g_date_time_hash (gconstpointer datetime);
extern
gboolean g_date_time_equal (gconstpointer dt1,
                                                                         gconstpointer dt2);

extern
void g_date_time_get_ymd (GDateTime *datetime,
                                                                         gint *year,
                                                                         gint *month,
                                                                         gint *day);

extern
gint g_date_time_get_year (GDateTime *datetime);
extern
gint g_date_time_get_month (GDateTime *datetime);
extern
gint g_date_time_get_day_of_month (GDateTime *datetime);

extern
gint g_date_time_get_week_numbering_year (GDateTime *datetime);
extern
gint g_date_time_get_week_of_year (GDateTime *datetime);
extern
gint g_date_time_get_day_of_week (GDateTime *datetime);

extern
gint g_date_time_get_day_of_year (GDateTime *datetime);

extern
gint g_date_time_get_hour (GDateTime *datetime);
extern
gint g_date_time_get_minute (GDateTime *datetime);
extern
gint g_date_time_get_second (GDateTime *datetime);
extern
gint g_date_time_get_microsecond (GDateTime *datetime);
extern
gdouble g_date_time_get_seconds (GDateTime *datetime);

extern
gint64 g_date_time_to_unix (GDateTime *datetime);
extern
gboolean g_date_time_to_timeval (GDateTime *datetime,
                                                                         GTimeVal *tv);

extern
GTimeSpan g_date_time_get_utc_offset (GDateTime *datetime);
extern
const gchar * g_date_time_get_timezone_abbreviation (GDateTime *datetime);
extern
gboolean g_date_time_is_daylight_savings (GDateTime *datetime);

extern
GDateTime * g_date_time_to_timezone (GDateTime *datetime,
                                                                         GTimeZone *tz);
extern
GDateTime * g_date_time_to_local (GDateTime *datetime);
extern
GDateTime * g_date_time_to_utc (GDateTime *datetime);

extern
gchar * g_date_time_format (GDateTime *datetime,
                                                                         const gchar *format) __attribute__((__malloc__));
# 45 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdir.h" 1
# 32 "/usr/include/glib-2.0/glib/gdir.h"
# 1 "/usr/include/dirent.h" 1 3 4
# 62 "/usr/include/dirent.h" 3 4
# 1 "/usr/include/bits/dirent.h" 1 3 4
# 22 "/usr/include/bits/dirent.h" 3 4
struct dirent
  {

    __ino_t d_ino;
    __off_t d_off;




    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
# 63 "/usr/include/dirent.h" 2 3 4
# 98 "/usr/include/dirent.h" 3 4
enum
  {
    DT_UNKNOWN = 0,

    DT_FIFO = 1,

    DT_CHR = 2,

    DT_DIR = 4,

    DT_BLK = 6,

    DT_REG = 8,

    DT_LNK = 10,

    DT_SOCK = 12,

    DT_WHT = 14

  };
# 128 "/usr/include/dirent.h" 3 4
typedef struct __dirstream DIR;






extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));






extern DIR *fdopendir (int __fd);







extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 163 "/usr/include/dirent.h" 3 4
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 184 "/usr/include/dirent.h" 3 4
extern int readdir_r (DIR *__restrict __dirp,
        struct dirent *__restrict __entry,
        struct dirent **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3)));
# 209 "/usr/include/dirent.h" 3 4
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 245 "/usr/include/dirent.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 246 "/usr/include/dirent.h" 2 3 4
# 255 "/usr/include/dirent.h" 3 4
extern int scandir (const char *__restrict __dir,
      struct dirent ***__restrict __namelist,
      int (*__selector) (const struct dirent *),
      int (*__cmp) (const struct dirent **,
      const struct dirent **))
     __attribute__ ((__nonnull__ (1, 2)));
# 325 "/usr/include/dirent.h" 3 4
extern int alphasort (const struct dirent **__e1,
        const struct dirent **__e2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 353 "/usr/include/dirent.h" 3 4
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
    size_t __nbytes,
    __off_t *__restrict __basep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
# 33 "/usr/include/glib-2.0/glib/gdir.h" 2




typedef struct _GDir GDir;

extern
GDir * g_dir_open (const gchar *path,
            guint flags,
            GError **error);
extern
const gchar * g_dir_read_name (GDir *dir);
extern
void g_dir_rewind (GDir *dir);
extern
void g_dir_close (GDir *dir);
# 46 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/genviron.h" 1
# 36 "/usr/include/glib-2.0/glib/genviron.h"
extern
const gchar * g_getenv (const gchar *variable);
extern
gboolean g_setenv (const gchar *variable,
                                  const gchar *value,
                                  gboolean overwrite);
extern
void g_unsetenv (const gchar *variable);
extern
gchar ** g_listenv (void);

extern
gchar ** g_get_environ (void);
extern
const gchar * g_environ_getenv (gchar **envp,
                                  const gchar *variable);
extern
gchar ** g_environ_setenv (gchar **envp,
                                  const gchar *variable,
                                  const gchar *value,
                                  gboolean overwrite) __attribute__((warn_unused_result));
extern
gchar ** g_environ_unsetenv (gchar **envp,
                                  const gchar *variable) __attribute__((warn_unused_result));
# 47 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gfileutils.h" 1
# 33 "/usr/include/glib-2.0/glib/gfileutils.h"
typedef enum
{
  G_FILE_ERROR_EXIST,
  G_FILE_ERROR_ISDIR,
  G_FILE_ERROR_ACCES,
  G_FILE_ERROR_NAMETOOLONG,
  G_FILE_ERROR_NOENT,
  G_FILE_ERROR_NOTDIR,
  G_FILE_ERROR_NXIO,
  G_FILE_ERROR_NODEV,
  G_FILE_ERROR_ROFS,
  G_FILE_ERROR_TXTBSY,
  G_FILE_ERROR_FAULT,
  G_FILE_ERROR_LOOP,
  G_FILE_ERROR_NOSPC,
  G_FILE_ERROR_NOMEM,
  G_FILE_ERROR_MFILE,
  G_FILE_ERROR_NFILE,
  G_FILE_ERROR_BADF,
  G_FILE_ERROR_INVAL,
  G_FILE_ERROR_PIPE,
  G_FILE_ERROR_AGAIN,
  G_FILE_ERROR_INTR,
  G_FILE_ERROR_IO,
  G_FILE_ERROR_PERM,
  G_FILE_ERROR_NOSYS,
  G_FILE_ERROR_FAILED
} GFileError;





typedef enum
{
  G_FILE_TEST_IS_REGULAR = 1 << 0,
  G_FILE_TEST_IS_SYMLINK = 1 << 1,
  G_FILE_TEST_IS_DIR = 1 << 2,
  G_FILE_TEST_IS_EXECUTABLE = 1 << 3,
  G_FILE_TEST_EXISTS = 1 << 4
} GFileTest;

extern
GQuark g_file_error_quark (void);

extern
GFileError g_file_error_from_errno (gint err_no);

extern
gboolean g_file_test (const gchar *filename,
                              GFileTest test);
extern
gboolean g_file_get_contents (const gchar *filename,
                              gchar **contents,
                              gsize *length,
                              GError **error);
extern
gboolean g_file_set_contents (const gchar *filename,
                              const gchar *contents,
                              gssize length,
                              GError **error);
extern
gchar *g_file_read_link (const gchar *filename,
                              GError **error);


extern
gchar *g_mkdtemp (gchar *tmpl);
extern
gchar *g_mkdtemp_full (gchar *tmpl,
                               gint mode);


extern
gint g_mkstemp (gchar *tmpl);
extern
gint g_mkstemp_full (gchar *tmpl,
                               gint flags,
                               gint mode);


extern
gint g_file_open_tmp (const gchar *tmpl,
                               gchar **name_used,
                               GError **error);
extern
gchar *g_dir_make_tmp (const gchar *tmpl,
                               GError **error);

extern
gchar *g_build_path (const gchar *separator,
                               const gchar *first_element,
                               ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar *g_build_pathv (const gchar *separator,
                               gchar **args) __attribute__((__malloc__));

extern
gchar *g_build_filename (const gchar *first_element,
                               ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar *g_build_filenamev (gchar **args) __attribute__((__malloc__));

extern
gint g_mkdir_with_parents (const gchar *pathname,
                               gint mode);
# 162 "/usr/include/glib-2.0/glib/gfileutils.h"
extern
gboolean g_path_is_absolute (const gchar *file_name);
extern
const gchar *g_path_skip_root (const gchar *file_name);

__attribute__((__deprecated__)) extern
const gchar *g_basename (const gchar *file_name);




extern
gchar *g_get_current_dir (void);
extern
gchar *g_path_get_basename (const gchar *file_name) __attribute__((__malloc__));
extern
gchar *g_path_get_dirname (const gchar *file_name) __attribute__((__malloc__));
# 49 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ggettext.h" 1
# 36 "/usr/include/glib-2.0/glib/ggettext.h"
extern
const gchar *g_strip_context (const gchar *msgid,
                              const gchar *msgval) __attribute__((__format_arg__ (1)));

extern
const gchar *g_dgettext (const gchar *domain,
                              const gchar *msgid) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dcgettext (const gchar *domain,
                              const gchar *msgid,
                              gint category) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dngettext (const gchar *domain,
                              const gchar *msgid,
                              const gchar *msgid_plural,
                              gulong n) __attribute__((__format_arg__ (3)));
extern
const gchar *g_dpgettext (const gchar *domain,
                              const gchar *msgctxtid,
                              gsize msgidoffset) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dpgettext2 (const gchar *domain,
                              const gchar *context,
                              const gchar *msgid) __attribute__((__format_arg__ (3)));
# 50 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghash.h" 1
# 33 "/usr/include/glib-2.0/glib/ghash.h"
# 1 "/usr/include/glib-2.0/glib/glist.h" 1
# 32 "/usr/include/glib-2.0/glib/glist.h"
# 1 "/usr/include/glib-2.0/glib/gmem.h" 1
# 49 "/usr/include/glib-2.0/glib/gmem.h"
typedef struct _GMemVTable GMemVTable;
# 68 "/usr/include/glib-2.0/glib/gmem.h"
extern
void g_free (gpointer mem);

extern
void g_clear_pointer (gpointer *pp,
                           GDestroyNotify destroy);

extern
gpointer g_malloc (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_malloc0 (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_realloc (gpointer mem,
      gsize n_bytes) __attribute__((warn_unused_result));
extern
gpointer g_try_malloc (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_malloc0 (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_realloc (gpointer mem,
      gsize n_bytes) __attribute__((warn_unused_result));

extern
gpointer g_malloc_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_malloc0_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_realloc_n (gpointer mem,
      gsize n_blocks,
      gsize n_block_bytes) __attribute__((warn_unused_result));
extern
gpointer g_try_malloc_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_malloc0_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_realloc_n (gpointer mem,
      gsize n_blocks,
      gsize n_block_bytes) __attribute__((warn_unused_result));
# 271 "/usr/include/glib-2.0/glib/gmem.h"
struct _GMemVTable {
  gpointer (*malloc) (gsize n_bytes);
  gpointer (*realloc) (gpointer mem,
      gsize n_bytes);
  void (*free) (gpointer mem);

  gpointer (*calloc) (gsize n_blocks,
      gsize n_block_bytes);
  gpointer (*try_malloc) (gsize n_bytes);
  gpointer (*try_realloc) (gpointer mem,
      gsize n_bytes);
};
extern
void g_mem_set_vtable (GMemVTable *vtable);
extern
gboolean g_mem_is_system_malloc (void);

extern gboolean g_mem_gc_friendly;



extern GMemVTable *glib_mem_profiler_table;
extern
void g_mem_profile (void);
# 33 "/usr/include/glib-2.0/glib/glist.h" 2
# 1 "/usr/include/glib-2.0/glib/gnode.h" 1
# 36 "/usr/include/glib-2.0/glib/gnode.h"
typedef struct _GNode GNode;


typedef enum
{
  G_TRAVERSE_LEAVES = 1 << 0,
  G_TRAVERSE_NON_LEAVES = 1 << 1,
  G_TRAVERSE_ALL = G_TRAVERSE_LEAVES | G_TRAVERSE_NON_LEAVES,
  G_TRAVERSE_MASK = 0x03,
  G_TRAVERSE_LEAFS = G_TRAVERSE_LEAVES,
  G_TRAVERSE_NON_LEAFS = G_TRAVERSE_NON_LEAVES
} GTraverseFlags;


typedef enum
{
  G_IN_ORDER,
  G_PRE_ORDER,
  G_POST_ORDER,
  G_LEVEL_ORDER
} GTraverseType;

typedef gboolean (*GNodeTraverseFunc) (GNode *node,
       gpointer data);
typedef void (*GNodeForeachFunc) (GNode *node,
       gpointer data);
# 75 "/usr/include/glib-2.0/glib/gnode.h"
typedef gpointer (*GCopyFunc) (gconstpointer src,
                                                 gpointer data);



struct _GNode
{
  gpointer data;
  GNode *next;
  GNode *prev;
  GNode *parent;
  GNode *children;
};
# 113 "/usr/include/glib-2.0/glib/gnode.h"
extern
GNode* g_node_new (gpointer data);
extern
void g_node_destroy (GNode *root);
extern
void g_node_unlink (GNode *node);
extern
GNode* g_node_copy_deep (GNode *node,
     GCopyFunc copy_func,
     gpointer data);
extern
GNode* g_node_copy (GNode *node);
extern
GNode* g_node_insert (GNode *parent,
     gint position,
     GNode *node);
extern
GNode* g_node_insert_before (GNode *parent,
     GNode *sibling,
     GNode *node);
extern
GNode* g_node_insert_after (GNode *parent,
     GNode *sibling,
     GNode *node);
extern
GNode* g_node_prepend (GNode *parent,
     GNode *node);
extern
guint g_node_n_nodes (GNode *root,
     GTraverseFlags flags);
extern
GNode* g_node_get_root (GNode *node);
extern
gboolean g_node_is_ancestor (GNode *node,
     GNode *descendant);
extern
guint g_node_depth (GNode *node);
extern
GNode* g_node_find (GNode *root,
     GTraverseType order,
     GTraverseFlags flags,
     gpointer data);
# 238 "/usr/include/glib-2.0/glib/gnode.h"
extern
void g_node_traverse (GNode *root,
     GTraverseType order,
     GTraverseFlags flags,
     gint max_depth,
     GNodeTraverseFunc func,
     gpointer data);






extern
guint g_node_max_height (GNode *root);

extern
void g_node_children_foreach (GNode *node,
      GTraverseFlags flags,
      GNodeForeachFunc func,
      gpointer data);
extern
void g_node_reverse_children (GNode *node);
extern
guint g_node_n_children (GNode *node);
extern
GNode* g_node_nth_child (GNode *node,
      guint n);
extern
GNode* g_node_last_child (GNode *node);
extern
GNode* g_node_find_child (GNode *node,
      GTraverseFlags flags,
      gpointer data);
extern
gint g_node_child_position (GNode *node,
      GNode *child);
extern
gint g_node_child_index (GNode *node,
      gpointer data);

extern
GNode* g_node_first_sibling (GNode *node);
extern
GNode* g_node_last_sibling (GNode *node);
# 34 "/usr/include/glib-2.0/glib/glist.h" 2



typedef struct _GList GList;

struct _GList
{
  gpointer data;
  GList *next;
  GList *prev;
};



extern
GList* g_list_alloc (void) __attribute__((warn_unused_result));
extern
void g_list_free (GList *list);
extern
void g_list_free_1 (GList *list);

extern
void g_list_free_full (GList *list,
      GDestroyNotify free_func);
extern
GList* g_list_append (GList *list,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_prepend (GList *list,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_insert (GList *list,
      gpointer data,
      gint position) __attribute__((warn_unused_result));
extern
GList* g_list_insert_sorted (GList *list,
      gpointer data,
      GCompareFunc func) __attribute__((warn_unused_result));
extern
GList* g_list_insert_sorted_with_data (GList *list,
      gpointer data,
      GCompareDataFunc func,
      gpointer user_data) __attribute__((warn_unused_result));
extern
GList* g_list_insert_before (GList *list,
      GList *sibling,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_concat (GList *list1,
      GList *list2) __attribute__((warn_unused_result));
extern
GList* g_list_remove (GList *list,
      gconstpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_remove_all (GList *list,
      gconstpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_remove_link (GList *list,
      GList *llink) __attribute__((warn_unused_result));
extern
GList* g_list_delete_link (GList *list,
      GList *link_) __attribute__((warn_unused_result));
extern
GList* g_list_reverse (GList *list) __attribute__((warn_unused_result));
extern
GList* g_list_copy (GList *list) __attribute__((warn_unused_result));

extern
GList* g_list_copy_deep (GList *list,
      GCopyFunc func,
      gpointer user_data) __attribute__((warn_unused_result));

extern
GList* g_list_nth (GList *list,
      guint n);
extern
GList* g_list_nth_prev (GList *list,
      guint n);
extern
GList* g_list_find (GList *list,
      gconstpointer data);
extern
GList* g_list_find_custom (GList *list,
      gconstpointer data,
      GCompareFunc func);
extern
gint g_list_position (GList *list,
      GList *llink);
extern
gint g_list_index (GList *list,
      gconstpointer data);
extern
GList* g_list_last (GList *list);
extern
GList* g_list_first (GList *list);
extern
guint g_list_length (GList *list);
extern
void g_list_foreach (GList *list,
      GFunc func,
      gpointer user_data);
extern
GList* g_list_sort (GList *list,
      GCompareFunc compare_func) __attribute__((warn_unused_result));
extern
GList* g_list_sort_with_data (GList *list,
      GCompareDataFunc compare_func,
      gpointer user_data) __attribute__((warn_unused_result));
extern
gpointer g_list_nth_data (GList *list,
      guint n);
# 34 "/usr/include/glib-2.0/glib/ghash.h" 2



typedef struct _GHashTable GHashTable;

typedef gboolean (*GHRFunc) (gpointer key,
                               gpointer value,
                               gpointer user_data);

typedef struct _GHashTableIter GHashTableIter;

struct _GHashTableIter
{

  gpointer dummy1;
  gpointer dummy2;
  gpointer dummy3;
  int dummy4;
  gboolean dummy5;
  gpointer dummy6;
};

extern
GHashTable* g_hash_table_new (GHashFunc hash_func,
                                            GEqualFunc key_equal_func);
extern
GHashTable* g_hash_table_new_full (GHashFunc hash_func,
                                            GEqualFunc key_equal_func,
                                            GDestroyNotify key_destroy_func,
                                            GDestroyNotify value_destroy_func);
extern
void g_hash_table_destroy (GHashTable *hash_table);
extern
gboolean g_hash_table_insert (GHashTable *hash_table,
                                            gpointer key,
                                            gpointer value);
extern
gboolean g_hash_table_replace (GHashTable *hash_table,
                                            gpointer key,
                                            gpointer value);
extern
gboolean g_hash_table_add (GHashTable *hash_table,
                                            gpointer key);
extern
gboolean g_hash_table_remove (GHashTable *hash_table,
                                            gconstpointer key);
extern
void g_hash_table_remove_all (GHashTable *hash_table);
extern
gboolean g_hash_table_steal (GHashTable *hash_table,
                                            gconstpointer key);
extern
void g_hash_table_steal_all (GHashTable *hash_table);
extern
gpointer g_hash_table_lookup (GHashTable *hash_table,
                                            gconstpointer key);
extern
gboolean g_hash_table_contains (GHashTable *hash_table,
                                            gconstpointer key);
extern
gboolean g_hash_table_lookup_extended (GHashTable *hash_table,
                                            gconstpointer lookup_key,
                                            gpointer *orig_key,
                                            gpointer *value);
extern
void g_hash_table_foreach (GHashTable *hash_table,
                                            GHFunc func,
                                            gpointer user_data);
extern
gpointer g_hash_table_find (GHashTable *hash_table,
                                            GHRFunc predicate,
                                            gpointer user_data);
extern
guint g_hash_table_foreach_remove (GHashTable *hash_table,
                                            GHRFunc func,
                                            gpointer user_data);
extern
guint g_hash_table_foreach_steal (GHashTable *hash_table,
                                            GHRFunc func,
                                            gpointer user_data);
extern
guint g_hash_table_size (GHashTable *hash_table);
extern
GList * g_hash_table_get_keys (GHashTable *hash_table);
extern
GList * g_hash_table_get_values (GHashTable *hash_table);
extern
gpointer * g_hash_table_get_keys_as_array (GHashTable *hash_table,
                                            guint *length);

extern
void g_hash_table_iter_init (GHashTableIter *iter,
                                            GHashTable *hash_table);
extern
gboolean g_hash_table_iter_next (GHashTableIter *iter,
                                            gpointer *key,
                                            gpointer *value);
extern
GHashTable* g_hash_table_iter_get_hash_table (GHashTableIter *iter);
extern
void g_hash_table_iter_remove (GHashTableIter *iter);
extern
void g_hash_table_iter_replace (GHashTableIter *iter,
                                            gpointer value);
extern
void g_hash_table_iter_steal (GHashTableIter *iter);

extern
GHashTable* g_hash_table_ref (GHashTable *hash_table);
extern
void g_hash_table_unref (GHashTable *hash_table);
# 153 "/usr/include/glib-2.0/glib/ghash.h"
extern
gboolean g_str_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_str_hash (gconstpointer v);

extern
gboolean g_int_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_int_hash (gconstpointer v);

extern
gboolean g_int64_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_int64_hash (gconstpointer v);

extern
gboolean g_double_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_double_hash (gconstpointer v);

extern
guint g_direct_hash (gconstpointer v) __attribute__((__const__));
extern
gboolean g_direct_equal (gconstpointer v1,
                         gconstpointer v2) __attribute__((__const__));
# 51 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghmac.h" 1
# 40 "/usr/include/glib-2.0/glib/ghmac.h"
typedef struct _GHmac GHmac;

extern
GHmac * g_hmac_new (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len);
extern
GHmac * g_hmac_copy (const GHmac *hmac);
extern
GHmac * g_hmac_ref (GHmac *hmac);
extern
void g_hmac_unref (GHmac *hmac);
extern
void g_hmac_update (GHmac *hmac,
                                                     const guchar *data,
                                                     gssize length);
extern
const gchar * g_hmac_get_string (GHmac *hmac);
extern
void g_hmac_get_digest (GHmac *hmac,
                                                     guint8 *buffer,
                                                     gsize *digest_len);

extern
gchar *g_compute_hmac_for_data (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len,
                                                     const guchar *data,
                                                     gsize length);
extern
gchar *g_compute_hmac_for_string (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len,
                                                     const gchar *str,
                                                     gssize length);
# 52 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghook.h" 1
# 38 "/usr/include/glib-2.0/glib/ghook.h"
typedef struct _GHook GHook;
typedef struct _GHookList GHookList;

typedef gint (*GHookCompareFunc) (GHook *new_hook,
       GHook *sibling);
typedef gboolean (*GHookFindFunc) (GHook *hook,
       gpointer data);
typedef void (*GHookMarshaller) (GHook *hook,
       gpointer marshal_data);
typedef gboolean (*GHookCheckMarshaller) (GHook *hook,
       gpointer marshal_data);
typedef void (*GHookFunc) (gpointer data);
typedef gboolean (*GHookCheckFunc) (gpointer data);
typedef void (*GHookFinalizeFunc) (GHookList *hook_list,
       GHook *hook);
typedef enum
{
  G_HOOK_FLAG_ACTIVE = 1 << 0,
  G_HOOK_FLAG_IN_CALL = 1 << 1,
  G_HOOK_FLAG_MASK = 0x0f
} GHookFlagMask;




struct _GHookList
{
  gulong seq_id;
  guint hook_size : 16;
  guint is_setup : 1;
  GHook *hooks;
  gpointer dummy3;
  GHookFinalizeFunc finalize_hook;
  gpointer dummy[2];
};
struct _GHook
{
  gpointer data;
  GHook *next;
  GHook *prev;
  guint ref_count;
  gulong hook_id;
  guint flags;
  gpointer func;
  GDestroyNotify destroy;
};
# 104 "/usr/include/glib-2.0/glib/ghook.h"
extern
void g_hook_list_init (GHookList *hook_list,
      guint hook_size);
extern
void g_hook_list_clear (GHookList *hook_list);
extern
GHook* g_hook_alloc (GHookList *hook_list);
extern
void g_hook_free (GHookList *hook_list,
      GHook *hook);
extern
GHook * g_hook_ref (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_unref (GHookList *hook_list,
      GHook *hook);
extern
gboolean g_hook_destroy (GHookList *hook_list,
      gulong hook_id);
extern
void g_hook_destroy_link (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_prepend (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_insert_before (GHookList *hook_list,
      GHook *sibling,
      GHook *hook);
extern
void g_hook_insert_sorted (GHookList *hook_list,
      GHook *hook,
      GHookCompareFunc func);
extern
GHook* g_hook_get (GHookList *hook_list,
      gulong hook_id);
extern
GHook* g_hook_find (GHookList *hook_list,
      gboolean need_valids,
      GHookFindFunc func,
      gpointer data);
extern
GHook* g_hook_find_data (GHookList *hook_list,
      gboolean need_valids,
      gpointer data);
extern
GHook* g_hook_find_func (GHookList *hook_list,
      gboolean need_valids,
      gpointer func);
extern
GHook* g_hook_find_func_data (GHookList *hook_list,
      gboolean need_valids,
      gpointer func,
      gpointer data);

extern
GHook* g_hook_first_valid (GHookList *hook_list,
      gboolean may_be_in_call);



extern
GHook* g_hook_next_valid (GHookList *hook_list,
      GHook *hook,
      gboolean may_be_in_call);

extern
gint g_hook_compare_ids (GHook *new_hook,
      GHook *sibling);





extern
void g_hook_list_invoke (GHookList *hook_list,
      gboolean may_recurse);



extern
void g_hook_list_invoke_check (GHookList *hook_list,
      gboolean may_recurse);


extern
void g_hook_list_marshal (GHookList *hook_list,
      gboolean may_recurse,
      GHookMarshaller marshaller,
      gpointer marshal_data);
extern
void g_hook_list_marshal_check (GHookList *hook_list,
      gboolean may_recurse,
      GHookCheckMarshaller marshaller,
      gpointer marshal_data);
# 53 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghostutils.h" 1
# 29 "/usr/include/glib-2.0/glib/ghostutils.h"
extern
gboolean g_hostname_is_non_ascii (const gchar *hostname);
extern
gboolean g_hostname_is_ascii_encoded (const gchar *hostname);
extern
gboolean g_hostname_is_ip_address (const gchar *hostname);

extern
gchar *g_hostname_to_ascii (const gchar *hostname);
extern
gchar *g_hostname_to_unicode (const gchar *hostname);
# 54 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/giochannel.h" 1
# 33 "/usr/include/glib-2.0/glib/giochannel.h"
# 1 "/usr/include/glib-2.0/glib/gmain.h" 1
# 25 "/usr/include/glib-2.0/glib/gmain.h"
# 1 "/usr/include/glib-2.0/glib/gpoll.h" 1
# 58 "/usr/include/glib-2.0/glib/gpoll.h"
typedef struct _GPollFD GPollFD;
# 73 "/usr/include/glib-2.0/glib/gpoll.h"
typedef gint (*GPollFunc) (GPollFD *ufds,
                                 guint nfsd,
                                 gint timeout_);
# 90 "/usr/include/glib-2.0/glib/gpoll.h"
struct _GPollFD
{





  gint fd;

  gushort events;
  gushort revents;
};
# 119 "/usr/include/glib-2.0/glib/gpoll.h"
extern
gint
g_poll (GPollFD *fds,
 guint nfds,
 gint timeout);
# 26 "/usr/include/glib-2.0/glib/gmain.h" 2
# 1 "/usr/include/glib-2.0/glib/gslist.h" 1
# 37 "/usr/include/glib-2.0/glib/gslist.h"
typedef struct _GSList GSList;

struct _GSList
{
  gpointer data;
  GSList *next;
};



extern
GSList* g_slist_alloc (void) __attribute__((warn_unused_result));
extern
void g_slist_free (GSList *list);
extern
void g_slist_free_1 (GSList *list);

extern
void g_slist_free_full (GSList *list,
       GDestroyNotify free_func);
extern
GSList* g_slist_append (GSList *list,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_prepend (GSList *list,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert (GSList *list,
       gpointer data,
       gint position) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_sorted (GSList *list,
       gpointer data,
       GCompareFunc func) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_sorted_with_data (GSList *list,
       gpointer data,
       GCompareDataFunc func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_before (GSList *slist,
       GSList *sibling,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_concat (GSList *list1,
       GSList *list2) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove (GSList *list,
       gconstpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove_all (GSList *list,
       gconstpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove_link (GSList *list,
       GSList *link_) __attribute__((warn_unused_result));
extern
GSList* g_slist_delete_link (GSList *list,
       GSList *link_) __attribute__((warn_unused_result));
extern
GSList* g_slist_reverse (GSList *list) __attribute__((warn_unused_result));
extern
GSList* g_slist_copy (GSList *list) __attribute__((warn_unused_result));

extern
GSList* g_slist_copy_deep (GSList *list,
       GCopyFunc func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
GSList* g_slist_nth (GSList *list,
       guint n);
extern
GSList* g_slist_find (GSList *list,
       gconstpointer data);
extern
GSList* g_slist_find_custom (GSList *list,
       gconstpointer data,
       GCompareFunc func);
extern
gint g_slist_position (GSList *list,
       GSList *llink);
extern
gint g_slist_index (GSList *list,
       gconstpointer data);
extern
GSList* g_slist_last (GSList *list);
extern
guint g_slist_length (GSList *list);
extern
void g_slist_foreach (GSList *list,
       GFunc func,
       gpointer user_data);
extern
GSList* g_slist_sort (GSList *list,
       GCompareFunc compare_func) __attribute__((warn_unused_result));
extern
GSList* g_slist_sort_with_data (GSList *list,
       GCompareDataFunc compare_func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
gpointer g_slist_nth_data (GSList *list,
       guint n);
# 27 "/usr/include/glib-2.0/glib/gmain.h" 2




typedef enum
{
  G_IO_IN =1,
  G_IO_OUT =4,
  G_IO_PRI =2,
  G_IO_ERR =8,
  G_IO_HUP =16,
  G_IO_NVAL =32
} GIOCondition;
# 48 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GMainContext GMainContext;







typedef struct _GMainLoop GMainLoop;







typedef struct _GSource GSource;
typedef struct _GSourcePrivate GSourcePrivate;
# 77 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GSourceCallbackFuncs GSourceCallbackFuncs;
# 128 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GSourceFuncs GSourceFuncs;
# 153 "/usr/include/glib-2.0/glib/gmain.h"
typedef gboolean (*GSourceFunc) (gpointer user_data);
# 166 "/usr/include/glib-2.0/glib/gmain.h"
typedef void (*GChildWatchFunc) (GPid pid,
                                       gint status,
                                       gpointer user_data);
struct _GSource
{

  gpointer callback_data;
  GSourceCallbackFuncs *callback_funcs;

  const GSourceFuncs *source_funcs;
  guint ref_count;

  GMainContext *context;

  gint priority;
  guint flags;
  guint source_id;

  GSList *poll_fds;

  GSource *prev;
  GSource *next;

  char *name;

  GSourcePrivate *priv;
};

struct _GSourceCallbackFuncs
{
  void (*ref) (gpointer cb_data);
  void (*unref) (gpointer cb_data);
  void (*get) (gpointer cb_data,
                 GSource *source,
                 GSourceFunc *func,
                 gpointer *data);
};







typedef void (*GSourceDummyMarshal) (void);

struct _GSourceFuncs
{
  gboolean (*prepare) (GSource *source,
                        gint *timeout_);
  gboolean (*check) (GSource *source);
  gboolean (*dispatch) (GSource *source,
                        GSourceFunc callback,
                        gpointer user_data);
  void (*finalize) (GSource *source);



  GSourceFunc closure_callback;
  GSourceDummyMarshal closure_marshal;
};
# 303 "/usr/include/glib-2.0/glib/gmain.h"
extern
GMainContext *g_main_context_new (void);
extern
GMainContext *g_main_context_ref (GMainContext *context);
extern
void g_main_context_unref (GMainContext *context);
extern
GMainContext *g_main_context_default (void);

extern
gboolean g_main_context_iteration (GMainContext *context,
                                        gboolean may_block);
extern
gboolean g_main_context_pending (GMainContext *context);



extern
GSource *g_main_context_find_source_by_id (GMainContext *context,
                                                             guint source_id);
extern
GSource *g_main_context_find_source_by_user_data (GMainContext *context,
                                                             gpointer user_data);
extern
GSource *g_main_context_find_source_by_funcs_user_data (GMainContext *context,
                                                             GSourceFuncs *funcs,
                                                             gpointer user_data);



extern
void g_main_context_wakeup (GMainContext *context);
extern
gboolean g_main_context_acquire (GMainContext *context);
extern
void g_main_context_release (GMainContext *context);
extern
gboolean g_main_context_is_owner (GMainContext *context);
extern
gboolean g_main_context_wait (GMainContext *context,
                                 GCond *cond,
                                 GMutex *mutex);

extern
gboolean g_main_context_prepare (GMainContext *context,
                                  gint *priority);
extern
gint g_main_context_query (GMainContext *context,
                                  gint max_priority,
                                  gint *timeout_,
                                  GPollFD *fds,
                                  gint n_fds);
extern
gint g_main_context_check (GMainContext *context,
                                  gint max_priority,
                                  GPollFD *fds,
                                  gint n_fds);
extern
void g_main_context_dispatch (GMainContext *context);

extern
void g_main_context_set_poll_func (GMainContext *context,
                                       GPollFunc func);
extern
GPollFunc g_main_context_get_poll_func (GMainContext *context);



extern
void g_main_context_add_poll (GMainContext *context,
                                     GPollFD *fd,
                                     gint priority);
extern
void g_main_context_remove_poll (GMainContext *context,
                                     GPollFD *fd);

extern
gint g_main_depth (void);
extern
GSource *g_main_current_source (void);



extern
void g_main_context_push_thread_default (GMainContext *context);
extern
void g_main_context_pop_thread_default (GMainContext *context);
extern
GMainContext *g_main_context_get_thread_default (void);
extern
GMainContext *g_main_context_ref_thread_default (void);



extern
GMainLoop *g_main_loop_new (GMainContext *context,
                                   gboolean is_running);
extern
void g_main_loop_run (GMainLoop *loop);
extern
void g_main_loop_quit (GMainLoop *loop);
extern
GMainLoop *g_main_loop_ref (GMainLoop *loop);
extern
void g_main_loop_unref (GMainLoop *loop);
extern
gboolean g_main_loop_is_running (GMainLoop *loop);
extern
GMainContext *g_main_loop_get_context (GMainLoop *loop);



extern
GSource *g_source_new (GSourceFuncs *source_funcs,
                                   guint struct_size);
extern
GSource *g_source_ref (GSource *source);
extern
void g_source_unref (GSource *source);

extern
guint g_source_attach (GSource *source,
                                   GMainContext *context);
extern
void g_source_destroy (GSource *source);

extern
void g_source_set_priority (GSource *source,
                                   gint priority);
extern
gint g_source_get_priority (GSource *source);
extern
void g_source_set_can_recurse (GSource *source,
                                   gboolean can_recurse);
extern
gboolean g_source_get_can_recurse (GSource *source);
extern
guint g_source_get_id (GSource *source);

extern
GMainContext *g_source_get_context (GSource *source);

extern
void g_source_set_callback (GSource *source,
                                   GSourceFunc func,
                                   gpointer data,
                                   GDestroyNotify notify);

extern
void g_source_set_funcs (GSource *source,
                                   GSourceFuncs *funcs);
extern
gboolean g_source_is_destroyed (GSource *source);

extern
void g_source_set_name (GSource *source,
                                              const char *name);
extern
const char * g_source_get_name (GSource *source);
extern
void g_source_set_name_by_id (guint tag,
                                              const char *name);

extern
void g_source_set_ready_time (GSource *source,
                                              gint64 ready_time);
extern
gint64 g_source_get_ready_time (GSource *source);


extern
gpointer g_source_add_unix_fd (GSource *source,
                                              gint fd,
                                              GIOCondition events);
extern
void g_source_modify_unix_fd (GSource *source,
                                              gpointer tag,
                                              GIOCondition new_events);
extern
void g_source_remove_unix_fd (GSource *source,
                                              gpointer tag);
extern
GIOCondition g_source_query_unix_fd (GSource *source,
                                              gpointer tag);



extern
void g_source_set_callback_indirect (GSource *source,
                                     gpointer callback_data,
                                     GSourceCallbackFuncs *callback_funcs);

extern
void g_source_add_poll (GSource *source,
           GPollFD *fd);
extern
void g_source_remove_poll (GSource *source,
           GPollFD *fd);

extern
void g_source_add_child_source (GSource *source,
           GSource *child_source);
extern
void g_source_remove_child_source (GSource *source,
           GSource *child_source);

__attribute__((__deprecated__)) extern
void g_source_get_current_time (GSource *source,
                                    GTimeVal *timeval);

extern
gint64 g_source_get_time (GSource *source);







extern
GSource *g_idle_source_new (void);
extern
GSource *g_child_watch_source_new (GPid pid);
extern
GSource *g_timeout_source_new (guint interval);
extern
GSource *g_timeout_source_new_seconds (guint interval);



extern
void g_get_current_time (GTimeVal *result);
extern
gint64 g_get_monotonic_time (void);
extern
gint64 g_get_real_time (void);



extern
gboolean g_source_remove (guint tag);
extern
gboolean g_source_remove_by_user_data (gpointer user_data);
extern
gboolean g_source_remove_by_funcs_user_data (GSourceFuncs *funcs,
                                              gpointer user_data);


extern
guint g_timeout_add_full (gint priority,
                                     guint interval,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_timeout_add (guint interval,
                                     GSourceFunc function,
                                     gpointer data);
extern
guint g_timeout_add_seconds_full (gint priority,
                                     guint interval,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_timeout_add_seconds (guint interval,
                                     GSourceFunc function,
                                     gpointer data);
extern
guint g_child_watch_add_full (gint priority,
                                     GPid pid,
                                     GChildWatchFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_child_watch_add (GPid pid,
                                     GChildWatchFunc function,
                                     gpointer data);
extern
guint g_idle_add (GSourceFunc function,
                                     gpointer data);
extern
guint g_idle_add_full (gint priority,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
gboolean g_idle_remove_by_data (gpointer data);

extern
void g_main_context_invoke_full (GMainContext *context,
                                     gint priority,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
void g_main_context_invoke (GMainContext *context,
                                     GSourceFunc function,
                                     gpointer data);


extern GSourceFuncs g_timeout_funcs;
extern GSourceFuncs g_child_watch_funcs;
extern GSourceFuncs g_idle_funcs;

extern GSourceFuncs g_unix_signal_funcs;
extern GSourceFuncs g_unix_fd_source_funcs;
# 34 "/usr/include/glib-2.0/glib/giochannel.h" 2
# 1 "/usr/include/glib-2.0/glib/gstring.h" 1
# 33 "/usr/include/glib-2.0/glib/gstring.h"
# 1 "/usr/include/glib-2.0/glib/gunicode.h" 1
# 60 "/usr/include/glib-2.0/glib/gunicode.h"
typedef guint32 gunichar;
# 78 "/usr/include/glib-2.0/glib/gunicode.h"
typedef guint16 gunichar2;
# 117 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_CONTROL,
  G_UNICODE_FORMAT,
  G_UNICODE_UNASSIGNED,
  G_UNICODE_PRIVATE_USE,
  G_UNICODE_SURROGATE,
  G_UNICODE_LOWERCASE_LETTER,
  G_UNICODE_MODIFIER_LETTER,
  G_UNICODE_OTHER_LETTER,
  G_UNICODE_TITLECASE_LETTER,
  G_UNICODE_UPPERCASE_LETTER,
  G_UNICODE_SPACING_MARK,
  G_UNICODE_ENCLOSING_MARK,
  G_UNICODE_NON_SPACING_MARK,
  G_UNICODE_DECIMAL_NUMBER,
  G_UNICODE_LETTER_NUMBER,
  G_UNICODE_OTHER_NUMBER,
  G_UNICODE_CONNECT_PUNCTUATION,
  G_UNICODE_DASH_PUNCTUATION,
  G_UNICODE_CLOSE_PUNCTUATION,
  G_UNICODE_FINAL_PUNCTUATION,
  G_UNICODE_INITIAL_PUNCTUATION,
  G_UNICODE_OTHER_PUNCTUATION,
  G_UNICODE_OPEN_PUNCTUATION,
  G_UNICODE_CURRENCY_SYMBOL,
  G_UNICODE_MODIFIER_SYMBOL,
  G_UNICODE_MATH_SYMBOL,
  G_UNICODE_OTHER_SYMBOL,
  G_UNICODE_LINE_SEPARATOR,
  G_UNICODE_PARAGRAPH_SEPARATOR,
  G_UNICODE_SPACE_SEPARATOR
} GUnicodeType;
# 212 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_BREAK_MANDATORY,
  G_UNICODE_BREAK_CARRIAGE_RETURN,
  G_UNICODE_BREAK_LINE_FEED,
  G_UNICODE_BREAK_COMBINING_MARK,
  G_UNICODE_BREAK_SURROGATE,
  G_UNICODE_BREAK_ZERO_WIDTH_SPACE,
  G_UNICODE_BREAK_INSEPARABLE,
  G_UNICODE_BREAK_NON_BREAKING_GLUE,
  G_UNICODE_BREAK_CONTINGENT,
  G_UNICODE_BREAK_SPACE,
  G_UNICODE_BREAK_AFTER,
  G_UNICODE_BREAK_BEFORE,
  G_UNICODE_BREAK_BEFORE_AND_AFTER,
  G_UNICODE_BREAK_HYPHEN,
  G_UNICODE_BREAK_NON_STARTER,
  G_UNICODE_BREAK_OPEN_PUNCTUATION,
  G_UNICODE_BREAK_CLOSE_PUNCTUATION,
  G_UNICODE_BREAK_QUOTATION,
  G_UNICODE_BREAK_EXCLAMATION,
  G_UNICODE_BREAK_IDEOGRAPHIC,
  G_UNICODE_BREAK_NUMERIC,
  G_UNICODE_BREAK_INFIX_SEPARATOR,
  G_UNICODE_BREAK_SYMBOL,
  G_UNICODE_BREAK_ALPHABETIC,
  G_UNICODE_BREAK_PREFIX,
  G_UNICODE_BREAK_POSTFIX,
  G_UNICODE_BREAK_COMPLEX_CONTEXT,
  G_UNICODE_BREAK_AMBIGUOUS,
  G_UNICODE_BREAK_UNKNOWN,
  G_UNICODE_BREAK_NEXT_LINE,
  G_UNICODE_BREAK_WORD_JOINER,
  G_UNICODE_BREAK_HANGUL_L_JAMO,
  G_UNICODE_BREAK_HANGUL_V_JAMO,
  G_UNICODE_BREAK_HANGUL_T_JAMO,
  G_UNICODE_BREAK_HANGUL_LV_SYLLABLE,
  G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE,
  G_UNICODE_BREAK_CLOSE_PARANTHESIS,
  G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER,
  G_UNICODE_BREAK_HEBREW_LETTER,
  G_UNICODE_BREAK_REGIONAL_INDICATOR
} GUnicodeBreakType;
# 409 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_SCRIPT_INVALID_CODE = -1,
  G_UNICODE_SCRIPT_COMMON = 0,
  G_UNICODE_SCRIPT_INHERITED,
  G_UNICODE_SCRIPT_ARABIC,
  G_UNICODE_SCRIPT_ARMENIAN,
  G_UNICODE_SCRIPT_BENGALI,
  G_UNICODE_SCRIPT_BOPOMOFO,
  G_UNICODE_SCRIPT_CHEROKEE,
  G_UNICODE_SCRIPT_COPTIC,
  G_UNICODE_SCRIPT_CYRILLIC,
  G_UNICODE_SCRIPT_DESERET,
  G_UNICODE_SCRIPT_DEVANAGARI,
  G_UNICODE_SCRIPT_ETHIOPIC,
  G_UNICODE_SCRIPT_GEORGIAN,
  G_UNICODE_SCRIPT_GOTHIC,
  G_UNICODE_SCRIPT_GREEK,
  G_UNICODE_SCRIPT_GUJARATI,
  G_UNICODE_SCRIPT_GURMUKHI,
  G_UNICODE_SCRIPT_HAN,
  G_UNICODE_SCRIPT_HANGUL,
  G_UNICODE_SCRIPT_HEBREW,
  G_UNICODE_SCRIPT_HIRAGANA,
  G_UNICODE_SCRIPT_KANNADA,
  G_UNICODE_SCRIPT_KATAKANA,
  G_UNICODE_SCRIPT_KHMER,
  G_UNICODE_SCRIPT_LAO,
  G_UNICODE_SCRIPT_LATIN,
  G_UNICODE_SCRIPT_MALAYALAM,
  G_UNICODE_SCRIPT_MONGOLIAN,
  G_UNICODE_SCRIPT_MYANMAR,
  G_UNICODE_SCRIPT_OGHAM,
  G_UNICODE_SCRIPT_OLD_ITALIC,
  G_UNICODE_SCRIPT_ORIYA,
  G_UNICODE_SCRIPT_RUNIC,
  G_UNICODE_SCRIPT_SINHALA,
  G_UNICODE_SCRIPT_SYRIAC,
  G_UNICODE_SCRIPT_TAMIL,
  G_UNICODE_SCRIPT_TELUGU,
  G_UNICODE_SCRIPT_THAANA,
  G_UNICODE_SCRIPT_THAI,
  G_UNICODE_SCRIPT_TIBETAN,
  G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL,
  G_UNICODE_SCRIPT_YI,
  G_UNICODE_SCRIPT_TAGALOG,
  G_UNICODE_SCRIPT_HANUNOO,
  G_UNICODE_SCRIPT_BUHID,
  G_UNICODE_SCRIPT_TAGBANWA,


  G_UNICODE_SCRIPT_BRAILLE,
  G_UNICODE_SCRIPT_CYPRIOT,
  G_UNICODE_SCRIPT_LIMBU,
  G_UNICODE_SCRIPT_OSMANYA,
  G_UNICODE_SCRIPT_SHAVIAN,
  G_UNICODE_SCRIPT_LINEAR_B,
  G_UNICODE_SCRIPT_TAI_LE,
  G_UNICODE_SCRIPT_UGARITIC,


  G_UNICODE_SCRIPT_NEW_TAI_LUE,
  G_UNICODE_SCRIPT_BUGINESE,
  G_UNICODE_SCRIPT_GLAGOLITIC,
  G_UNICODE_SCRIPT_TIFINAGH,
  G_UNICODE_SCRIPT_SYLOTI_NAGRI,
  G_UNICODE_SCRIPT_OLD_PERSIAN,
  G_UNICODE_SCRIPT_KHAROSHTHI,


  G_UNICODE_SCRIPT_UNKNOWN,
  G_UNICODE_SCRIPT_BALINESE,
  G_UNICODE_SCRIPT_CUNEIFORM,
  G_UNICODE_SCRIPT_PHOENICIAN,
  G_UNICODE_SCRIPT_PHAGS_PA,
  G_UNICODE_SCRIPT_NKO,


  G_UNICODE_SCRIPT_KAYAH_LI,
  G_UNICODE_SCRIPT_LEPCHA,
  G_UNICODE_SCRIPT_REJANG,
  G_UNICODE_SCRIPT_SUNDANESE,
  G_UNICODE_SCRIPT_SAURASHTRA,
  G_UNICODE_SCRIPT_CHAM,
  G_UNICODE_SCRIPT_OL_CHIKI,
  G_UNICODE_SCRIPT_VAI,
  G_UNICODE_SCRIPT_CARIAN,
  G_UNICODE_SCRIPT_LYCIAN,
  G_UNICODE_SCRIPT_LYDIAN,


  G_UNICODE_SCRIPT_AVESTAN,
  G_UNICODE_SCRIPT_BAMUM,
  G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS,
  G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC,
  G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI,
  G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN,
  G_UNICODE_SCRIPT_JAVANESE,
  G_UNICODE_SCRIPT_KAITHI,
  G_UNICODE_SCRIPT_LISU,
  G_UNICODE_SCRIPT_MEETEI_MAYEK,
  G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN,
  G_UNICODE_SCRIPT_OLD_TURKIC,
  G_UNICODE_SCRIPT_SAMARITAN,
  G_UNICODE_SCRIPT_TAI_THAM,
  G_UNICODE_SCRIPT_TAI_VIET,


  G_UNICODE_SCRIPT_BATAK,
  G_UNICODE_SCRIPT_BRAHMI,
  G_UNICODE_SCRIPT_MANDAIC,


  G_UNICODE_SCRIPT_CHAKMA,
  G_UNICODE_SCRIPT_MEROITIC_CURSIVE,
  G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS,
  G_UNICODE_SCRIPT_MIAO,
  G_UNICODE_SCRIPT_SHARADA,
  G_UNICODE_SCRIPT_SORA_SOMPENG,
  G_UNICODE_SCRIPT_TAKRI,


  G_UNICODE_SCRIPT_BASSA_VAH,
  G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN,
  G_UNICODE_SCRIPT_DUPLOYAN,
  G_UNICODE_SCRIPT_ELBASAN,
  G_UNICODE_SCRIPT_GRANTHA,
  G_UNICODE_SCRIPT_KHOJKI,
  G_UNICODE_SCRIPT_KHUDAWADI,
  G_UNICODE_SCRIPT_LINEAR_A,
  G_UNICODE_SCRIPT_MAHAJANI,
  G_UNICODE_SCRIPT_MANICHAEAN,
  G_UNICODE_SCRIPT_MENDE_KIKAKUI,
  G_UNICODE_SCRIPT_MODI,
  G_UNICODE_SCRIPT_MRO,
  G_UNICODE_SCRIPT_NABATAEAN,
  G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN,
  G_UNICODE_SCRIPT_OLD_PERMIC,
  G_UNICODE_SCRIPT_PAHAWH_HMONG,
  G_UNICODE_SCRIPT_PALMYRENE,
  G_UNICODE_SCRIPT_PAU_CIN_HAU,
  G_UNICODE_SCRIPT_PSALTER_PAHLAVI,
  G_UNICODE_SCRIPT_SIDDHAM,
  G_UNICODE_SCRIPT_TIRHUTA,
  G_UNICODE_SCRIPT_WARANG_CITI
} GUnicodeScript;

extern
guint32 g_unicode_script_to_iso15924 (GUnicodeScript script);
extern
GUnicodeScript g_unicode_script_from_iso15924 (guint32 iso15924);



extern
gboolean g_unichar_isalnum (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isalpha (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iscntrl (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isdigit (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isgraph (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_islower (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isprint (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_ispunct (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isspace (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isupper (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isxdigit (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_istitle (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isdefined (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iswide (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iswide_cjk(gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iszerowidth(gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_ismark (gunichar c) __attribute__((__const__));



extern
gunichar g_unichar_toupper (gunichar c) __attribute__((__const__));
extern
gunichar g_unichar_tolower (gunichar c) __attribute__((__const__));
extern
gunichar g_unichar_totitle (gunichar c) __attribute__((__const__));



extern
gint g_unichar_digit_value (gunichar c) __attribute__((__const__));

extern
gint g_unichar_xdigit_value (gunichar c) __attribute__((__const__));


extern
GUnicodeType g_unichar_type (gunichar c) __attribute__((__const__));


extern
GUnicodeBreakType g_unichar_break_type (gunichar c) __attribute__((__const__));


extern
gint g_unichar_combining_class (gunichar uc) __attribute__((__const__));

extern
gboolean g_unichar_get_mirror_char (gunichar ch,
                                    gunichar *mirrored_ch);

extern
GUnicodeScript g_unichar_get_script (gunichar ch) __attribute__((__const__));


extern
gboolean g_unichar_validate (gunichar ch) __attribute__((__const__));


extern
gboolean g_unichar_compose (gunichar a,
                            gunichar b,
                            gunichar *ch);
extern
gboolean g_unichar_decompose (gunichar ch,
                              gunichar *a,
                              gunichar *b);

extern
gsize g_unichar_fully_decompose (gunichar ch,
                                 gboolean compat,
                                 gunichar *result,
                                 gsize result_len);
# 669 "/usr/include/glib-2.0/glib/gunicode.h"
extern
void g_unicode_canonical_ordering (gunichar *string,
                                   gsize len);


__attribute__((__deprecated__)) extern
gunichar *g_unicode_canonical_decomposition (gunichar ch,
                                             gsize *result_len) __attribute__((__malloc__));



extern const gchar * const g_utf8_skip;
# 695 "/usr/include/glib-2.0/glib/gunicode.h"
extern
gunichar g_utf8_get_char (const gchar *p) __attribute__((__pure__));
extern
gunichar g_utf8_get_char_validated (const gchar *p,
                                    gssize max_len) __attribute__((__pure__));

extern
gchar* g_utf8_offset_to_pointer (const gchar *str,
                                   glong offset) __attribute__((__pure__));
extern
glong g_utf8_pointer_to_offset (const gchar *str,
                                   const gchar *pos) __attribute__((__pure__));
extern
gchar* g_utf8_prev_char (const gchar *p) __attribute__((__pure__));
extern
gchar* g_utf8_find_next_char (const gchar *p,
                                   const gchar *end) __attribute__((__pure__));
extern
gchar* g_utf8_find_prev_char (const gchar *str,
                                   const gchar *p) __attribute__((__pure__));

extern
glong g_utf8_strlen (const gchar *p,
                                   gssize max) __attribute__((__pure__));

extern
gchar *g_utf8_substring (const gchar *str,
                                   glong start_pos,
                                   glong end_pos) __attribute__((__malloc__));

extern
gchar *g_utf8_strncpy (gchar *dest,
                                   const gchar *src,
                                   gsize n);



extern
gchar* g_utf8_strchr (const gchar *p,
                       gssize len,
                       gunichar c);
extern
gchar* g_utf8_strrchr (const gchar *p,
                       gssize len,
                       gunichar c);
extern
gchar* g_utf8_strreverse (const gchar *str,
                          gssize len);

extern
gunichar2 *g_utf8_to_utf16 (const gchar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar * g_utf8_to_ucs4 (const gchar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar * g_utf8_to_ucs4_fast (const gchar *str,
                                glong len,
                                glong *items_written) __attribute__((__malloc__));
extern
gunichar * g_utf16_to_ucs4 (const gunichar2 *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gchar* g_utf16_to_utf8 (const gunichar2 *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar2 *g_ucs4_to_utf16 (const gunichar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gchar* g_ucs4_to_utf8 (const gunichar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));

extern
gint g_unichar_to_utf8 (gunichar c,
                             gchar *outbuf);

extern
gboolean g_utf8_validate (const gchar *str,
                          gssize max_len,
                          const gchar **end);

extern
gchar *g_utf8_strup (const gchar *str,
                       gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_strdown (const gchar *str,
                       gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_casefold (const gchar *str,
                        gssize len) __attribute__((__malloc__));
# 828 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum {
  G_NORMALIZE_DEFAULT,
  G_NORMALIZE_NFD = G_NORMALIZE_DEFAULT,
  G_NORMALIZE_DEFAULT_COMPOSE,
  G_NORMALIZE_NFC = G_NORMALIZE_DEFAULT_COMPOSE,
  G_NORMALIZE_ALL,
  G_NORMALIZE_NFKD = G_NORMALIZE_ALL,
  G_NORMALIZE_ALL_COMPOSE,
  G_NORMALIZE_NFKC = G_NORMALIZE_ALL_COMPOSE
} GNormalizeMode;

extern
gchar *g_utf8_normalize (const gchar *str,
                         gssize len,
                         GNormalizeMode mode) __attribute__((__malloc__));

extern
gint g_utf8_collate (const gchar *str1,
                           const gchar *str2) __attribute__((__pure__));
extern
gchar *g_utf8_collate_key (const gchar *str,
                           gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_collate_key_for_filename (const gchar *str,
                                        gssize len) __attribute__((__malloc__));



gchar *_g_utf8_make_valid (const gchar *name);
# 34 "/usr/include/glib-2.0/glib/gstring.h" 2

# 1 "/usr/include/glib-2.0/glib/gutils.h" 1
# 85 "/usr/include/glib-2.0/glib/gutils.h"
extern
const gchar * g_get_user_name (void);
extern
const gchar * g_get_real_name (void);
extern
const gchar * g_get_home_dir (void);
extern
const gchar * g_get_tmp_dir (void);
extern
const gchar * g_get_host_name (void);
extern
const gchar * g_get_prgname (void);
extern
void g_set_prgname (const gchar *prgname);
extern
const gchar * g_get_application_name (void);
extern
void g_set_application_name (const gchar *application_name);

extern
void g_reload_user_special_dirs_cache (void);
extern
const gchar * g_get_user_data_dir (void);
extern
const gchar * g_get_user_config_dir (void);
extern
const gchar * g_get_user_cache_dir (void);
extern
const gchar * const * g_get_system_data_dirs (void);
# 134 "/usr/include/glib-2.0/glib/gutils.h"
extern
const gchar * const * g_get_system_config_dirs (void);

extern
const gchar * g_get_user_runtime_dir (void);
# 162 "/usr/include/glib-2.0/glib/gutils.h"
typedef enum {
  G_USER_DIRECTORY_DESKTOP,
  G_USER_DIRECTORY_DOCUMENTS,
  G_USER_DIRECTORY_DOWNLOAD,
  G_USER_DIRECTORY_MUSIC,
  G_USER_DIRECTORY_PICTURES,
  G_USER_DIRECTORY_PUBLIC_SHARE,
  G_USER_DIRECTORY_TEMPLATES,
  G_USER_DIRECTORY_VIDEOS,

  G_USER_N_DIRECTORIES
} GUserDirectory;

extern
const gchar * g_get_user_special_dir (GUserDirectory directory);
# 186 "/usr/include/glib-2.0/glib/gutils.h"
typedef struct _GDebugKey GDebugKey;
struct _GDebugKey
{
  const gchar *key;
  guint value;
};



extern
guint g_parse_debug_string (const gchar *string,
         const GDebugKey *keys,
         guint nkeys);

extern
gint g_snprintf (gchar *string,
         gulong n,
         gchar const *format,
         ...) __attribute__((__format__ (__printf__, 3, 4)));
extern
gint g_vsnprintf (gchar *string,
         gulong n,
         gchar const *format,
         va_list args)
         __attribute__((__format__ (__printf__, 3, 0)));

extern
void g_nullify_pointer (gpointer *nullify_location);

typedef enum
{
  G_FORMAT_SIZE_DEFAULT = 0,
  G_FORMAT_SIZE_LONG_FORMAT = 1 << 0,
  G_FORMAT_SIZE_IEC_UNITS = 1 << 1
} GFormatSizeFlags;

extern
gchar *g_format_size_full (guint64 size,
                             GFormatSizeFlags flags);
extern
gchar *g_format_size (guint64 size);

__attribute__((__deprecated__)) extern
gchar *g_format_size_for_display (goffset size);
# 239 "/usr/include/glib-2.0/glib/gutils.h"
typedef void (*GVoidFunc) (void);

__attribute__((__deprecated__)) extern
void g_atexit (GVoidFunc func);
# 261 "/usr/include/glib-2.0/glib/gutils.h"
extern
gchar* g_find_program_in_path (const gchar *program);



static __inline __attribute__ ((unused)) gint g_bit_nth_lsf (gulong mask,
           gint nth_bit) __attribute__((__const__));
static __inline __attribute__ ((unused)) gint g_bit_nth_msf (gulong mask,
           gint nth_bit) __attribute__((__const__));
static __inline __attribute__ ((unused)) guint g_bit_storage (gulong number) __attribute__((__const__));




static __inline __attribute__ ((unused)) gint
g_bit_nth_lsf (gulong mask,
        gint nth_bit)
{
  if ((nth_bit < -1))
    nth_bit = -1;
  while (nth_bit < ((8 * 8) - 1))
    {
      nth_bit++;
      if (mask & (1UL << nth_bit))
 return nth_bit;
    }
  return -1;
}
static __inline __attribute__ ((unused)) gint
g_bit_nth_msf (gulong mask,
        gint nth_bit)
{
  if (nth_bit < 0 || (nth_bit > 8 * 8))
    nth_bit = 8 * 8;
  while (nth_bit > 0)
    {
      nth_bit--;
      if (mask & (1UL << nth_bit))
 return nth_bit;
    }
  return -1;
}
static __inline __attribute__ ((unused)) guint
g_bit_storage (gulong number)
{




  guint n_bits = 0;

  do
    {
      n_bits++;
      number >>= 1;
    }
  while (number);
  return n_bits;

}
# 36 "/usr/include/glib-2.0/glib/gstring.h" 2



typedef struct _GString GString;

struct _GString
{
  gchar *str;
  gsize len;
  gsize allocated_len;
};

extern
GString* g_string_new (const gchar *init);
extern
GString* g_string_new_len (const gchar *init,
                                         gssize len);
extern
GString* g_string_sized_new (gsize dfl_size);
extern
gchar* g_string_free (GString *string,
                                         gboolean free_segment);
extern
GBytes* g_string_free_to_bytes (GString *string);
extern
gboolean g_string_equal (const GString *v,
                                         const GString *v2);
extern
guint g_string_hash (const GString *str);
extern
GString* g_string_assign (GString *string,
                                         const gchar *rval);
extern
GString* g_string_truncate (GString *string,
                                         gsize len);
extern
GString* g_string_set_size (GString *string,
                                         gsize len);
extern
GString* g_string_insert_len (GString *string,
                                         gssize pos,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_append (GString *string,
                                         const gchar *val);
extern
GString* g_string_append_len (GString *string,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_append_c (GString *string,
                                         gchar c);
extern
GString* g_string_append_unichar (GString *string,
                                         gunichar wc);
extern
GString* g_string_prepend (GString *string,
                                         const gchar *val);
extern
GString* g_string_prepend_c (GString *string,
                                         gchar c);
extern
GString* g_string_prepend_unichar (GString *string,
                                         gunichar wc);
extern
GString* g_string_prepend_len (GString *string,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_insert (GString *string,
                                         gssize pos,
                                         const gchar *val);
extern
GString* g_string_insert_c (GString *string,
                                         gssize pos,
                                         gchar c);
extern
GString* g_string_insert_unichar (GString *string,
                                         gssize pos,
                                         gunichar wc);
extern
GString* g_string_overwrite (GString *string,
                                         gsize pos,
                                         const gchar *val);
extern
GString* g_string_overwrite_len (GString *string,
                                         gsize pos,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_erase (GString *string,
                                         gssize pos,
                                         gssize len);
extern
GString* g_string_ascii_down (GString *string);
extern
GString* g_string_ascii_up (GString *string);
extern
void g_string_vprintf (GString *string,
                                         const gchar *format,
                                         va_list args)
                                         __attribute__((__format__ (__printf__, 2, 0)));
extern
void g_string_printf (GString *string,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_string_append_vprintf (GString *string,
                                         const gchar *format,
                                         va_list args)
                                         __attribute__((__format__ (__printf__, 2, 0)));
extern
void g_string_append_printf (GString *string,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
GString* g_string_append_uri_escaped (GString *string,
                                          const gchar *unescaped,
                                          const gchar *reserved_chars_allowed,
                                          gboolean allow_utf8);



static inline GString*
g_string_append_c_inline (GString *gstring,
                          gchar c)
{
  if (gstring->len + 1 < gstring->allocated_len)
    {
      gstring->str[gstring->len++] = c;
      gstring->str[gstring->len] = 0;
    }
  else
    g_string_insert_c (gstring, -1, c);
  return gstring;
}




__attribute__((__deprecated__)) extern
GString *g_string_down (GString *string);
__attribute__((__deprecated__)) extern
GString *g_string_up (GString *string);
# 35 "/usr/include/glib-2.0/glib/giochannel.h" 2






typedef struct _GIOChannel GIOChannel;
typedef struct _GIOFuncs GIOFuncs;

typedef enum
{
  G_IO_ERROR_NONE,
  G_IO_ERROR_AGAIN,
  G_IO_ERROR_INVAL,
  G_IO_ERROR_UNKNOWN
} GIOError;



typedef enum
{

  G_IO_CHANNEL_ERROR_FBIG,
  G_IO_CHANNEL_ERROR_INVAL,
  G_IO_CHANNEL_ERROR_IO,
  G_IO_CHANNEL_ERROR_ISDIR,
  G_IO_CHANNEL_ERROR_NOSPC,
  G_IO_CHANNEL_ERROR_NXIO,
  G_IO_CHANNEL_ERROR_OVERFLOW,
  G_IO_CHANNEL_ERROR_PIPE,

  G_IO_CHANNEL_ERROR_FAILED
} GIOChannelError;

typedef enum
{
  G_IO_STATUS_ERROR,
  G_IO_STATUS_NORMAL,
  G_IO_STATUS_EOF,
  G_IO_STATUS_AGAIN
} GIOStatus;

typedef enum
{
  G_SEEK_CUR,
  G_SEEK_SET,
  G_SEEK_END
} GSeekType;

typedef enum
{
  G_IO_FLAG_APPEND = 1 << 0,
  G_IO_FLAG_NONBLOCK = 1 << 1,
  G_IO_FLAG_IS_READABLE = 1 << 2,
  G_IO_FLAG_IS_WRITABLE = 1 << 3,
  G_IO_FLAG_IS_WRITEABLE = 1 << 3,
  G_IO_FLAG_IS_SEEKABLE = 1 << 4,
  G_IO_FLAG_MASK = (1 << 5) - 1,
  G_IO_FLAG_GET_MASK = G_IO_FLAG_MASK,
  G_IO_FLAG_SET_MASK = G_IO_FLAG_APPEND | G_IO_FLAG_NONBLOCK
} GIOFlags;

struct _GIOChannel
{

  gint ref_count;
  GIOFuncs *funcs;

  gchar *encoding;
  GIConv read_cd;
  GIConv write_cd;
  gchar *line_term;
  guint line_term_len;

  gsize buf_size;
  GString *read_buf;
  GString *encoded_read_buf;
  GString *write_buf;
  gchar partial_write_buf[6];



  guint use_buffer : 1;
  guint do_encode : 1;
  guint close_on_unref : 1;
  guint is_readable : 1;
  guint is_writeable : 1;
  guint is_seekable : 1;

  gpointer reserved1;
  gpointer reserved2;
};

typedef gboolean (*GIOFunc) (GIOChannel *source,
        GIOCondition condition,
        gpointer data);
struct _GIOFuncs
{
  GIOStatus (*io_read) (GIOChannel *channel,
             gchar *buf,
      gsize count,
      gsize *bytes_read,
      GError **err);
  GIOStatus (*io_write) (GIOChannel *channel,
      const gchar *buf,
      gsize count,
      gsize *bytes_written,
      GError **err);
  GIOStatus (*io_seek) (GIOChannel *channel,
      gint64 offset,
      GSeekType type,
      GError **err);
  GIOStatus (*io_close) (GIOChannel *channel,
      GError **err);
  GSource* (*io_create_watch) (GIOChannel *channel,
      GIOCondition condition);
  void (*io_free) (GIOChannel *channel);
  GIOStatus (*io_set_flags) (GIOChannel *channel,
                                  GIOFlags flags,
      GError **err);
  GIOFlags (*io_get_flags) (GIOChannel *channel);
};

extern
void g_io_channel_init (GIOChannel *channel);
extern
GIOChannel *g_io_channel_ref (GIOChannel *channel);
extern
void g_io_channel_unref (GIOChannel *channel);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_read (GIOChannel *channel,
                                 gchar *buf,
                                 gsize count,
                                 gsize *bytes_read);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_write (GIOChannel *channel,
                                 const gchar *buf,
                                 gsize count,
                                 gsize *bytes_written);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_seek (GIOChannel *channel,
                                 gint64 offset,
                                 GSeekType type);

__attribute__((__deprecated__)) extern
void g_io_channel_close (GIOChannel *channel);

extern
GIOStatus g_io_channel_shutdown (GIOChannel *channel,
     gboolean flush,
     GError **err);
extern
guint g_io_add_watch_full (GIOChannel *channel,
     gint priority,
     GIOCondition condition,
     GIOFunc func,
     gpointer user_data,
     GDestroyNotify notify);
extern
GSource * g_io_create_watch (GIOChannel *channel,
     GIOCondition condition);
extern
guint g_io_add_watch (GIOChannel *channel,
     GIOCondition condition,
     GIOFunc func,
     gpointer user_data);




extern
void g_io_channel_set_buffer_size (GIOChannel *channel,
        gsize size);
extern
gsize g_io_channel_get_buffer_size (GIOChannel *channel);
extern
GIOCondition g_io_channel_get_buffer_condition (GIOChannel *channel);
extern
GIOStatus g_io_channel_set_flags (GIOChannel *channel,
        GIOFlags flags,
        GError **error);
extern
GIOFlags g_io_channel_get_flags (GIOChannel *channel);
extern
void g_io_channel_set_line_term (GIOChannel *channel,
        const gchar *line_term,
        gint length);
extern
const gchar * g_io_channel_get_line_term (GIOChannel *channel,
        gint *length);
extern
void g_io_channel_set_buffered (GIOChannel *channel,
        gboolean buffered);
extern
gboolean g_io_channel_get_buffered (GIOChannel *channel);
extern
GIOStatus g_io_channel_set_encoding (GIOChannel *channel,
        const gchar *encoding,
        GError **error);
extern
const gchar * g_io_channel_get_encoding (GIOChannel *channel);
extern
void g_io_channel_set_close_on_unref (GIOChannel *channel,
        gboolean do_close);
extern
gboolean g_io_channel_get_close_on_unref (GIOChannel *channel);


extern
GIOStatus g_io_channel_flush (GIOChannel *channel,
        GError **error);
extern
GIOStatus g_io_channel_read_line (GIOChannel *channel,
        gchar **str_return,
        gsize *length,
        gsize *terminator_pos,
        GError **error);
extern
GIOStatus g_io_channel_read_line_string (GIOChannel *channel,
        GString *buffer,
        gsize *terminator_pos,
        GError **error);
extern
GIOStatus g_io_channel_read_to_end (GIOChannel *channel,
        gchar **str_return,
        gsize *length,
        GError **error);
extern
GIOStatus g_io_channel_read_chars (GIOChannel *channel,
        gchar *buf,
        gsize count,
        gsize *bytes_read,
        GError **error);
extern
GIOStatus g_io_channel_read_unichar (GIOChannel *channel,
        gunichar *thechar,
        GError **error);
extern
GIOStatus g_io_channel_write_chars (GIOChannel *channel,
        const gchar *buf,
        gssize count,
        gsize *bytes_written,
        GError **error);
extern
GIOStatus g_io_channel_write_unichar (GIOChannel *channel,
        gunichar thechar,
        GError **error);
extern
GIOStatus g_io_channel_seek_position (GIOChannel *channel,
        gint64 offset,
        GSeekType type,
        GError **error);
extern
GIOChannel* g_io_channel_new_file (const gchar *filename,
        const gchar *mode,
        GError **error);



extern
GQuark g_io_channel_error_quark (void);
extern
GIOChannelError g_io_channel_error_from_errno (gint en);
# 320 "/usr/include/glib-2.0/glib/giochannel.h"
extern
GIOChannel* g_io_channel_unix_new (int fd);
extern
gint g_io_channel_unix_get_fd (GIOChannel *channel);



extern GSourceFuncs g_io_watch_funcs;
# 55 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gkeyfile.h" 1
# 33 "/usr/include/glib-2.0/glib/gkeyfile.h"
typedef enum
{
  G_KEY_FILE_ERROR_UNKNOWN_ENCODING,
  G_KEY_FILE_ERROR_PARSE,
  G_KEY_FILE_ERROR_NOT_FOUND,
  G_KEY_FILE_ERROR_KEY_NOT_FOUND,
  G_KEY_FILE_ERROR_GROUP_NOT_FOUND,
  G_KEY_FILE_ERROR_INVALID_VALUE
} GKeyFileError;



extern
GQuark g_key_file_error_quark (void);

typedef struct _GKeyFile GKeyFile;

typedef enum
{
  G_KEY_FILE_NONE = 0,
  G_KEY_FILE_KEEP_COMMENTS = 1 << 0,
  G_KEY_FILE_KEEP_TRANSLATIONS = 1 << 1
} GKeyFileFlags;

extern
GKeyFile *g_key_file_new (void);
extern
GKeyFile *g_key_file_ref (GKeyFile *key_file);
extern
void g_key_file_unref (GKeyFile *key_file);
extern
void g_key_file_free (GKeyFile *key_file);
extern
void g_key_file_set_list_separator (GKeyFile *key_file,
          gchar separator);
extern
gboolean g_key_file_load_from_file (GKeyFile *key_file,
          const gchar *file,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_data (GKeyFile *key_file,
          const gchar *data,
          gsize length,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_dirs (GKeyFile *key_file,
          const gchar *file,
          const gchar **search_dirs,
          gchar **full_path,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_data_dirs (GKeyFile *key_file,
          const gchar *file,
          gchar **full_path,
          GKeyFileFlags flags,
          GError **error);
extern
gchar *g_key_file_to_data (GKeyFile *key_file,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_key_file_save_to_file (GKeyFile *key_file,
                                             const gchar *filename,
                                             GError **error);
extern
gchar *g_key_file_get_start_group (GKeyFile *key_file) __attribute__((__malloc__));
extern
gchar **g_key_file_get_groups (GKeyFile *key_file,
          gsize *length) __attribute__((__malloc__));
extern
gchar **g_key_file_get_keys (GKeyFile *key_file,
          const gchar *group_name,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_key_file_has_group (GKeyFile *key_file,
          const gchar *group_name);
extern
gboolean g_key_file_has_key (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
gchar *g_key_file_get_value (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_value (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *value);
extern
gchar *g_key_file_get_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *string);
extern
gchar *g_key_file_get_locale_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_locale_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          const gchar *string);
extern
gboolean g_key_file_get_boolean (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_boolean (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gboolean value);
extern
gint g_key_file_get_integer (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_integer (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint value);
extern
gint64 g_key_file_get_int64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_int64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint64 value);
extern
guint64 g_key_file_get_uint64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_uint64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          guint64 value);
extern
gdouble g_key_file_get_double (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             GError **error);
extern
void g_key_file_set_double (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gdouble value);
extern
gchar **g_key_file_get_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar * const list[],
          gsize length);
extern
gchar **g_key_file_get_locale_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_locale_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          const gchar * const list[],
          gsize length);
extern
gboolean *g_key_file_get_boolean_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_boolean_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gboolean list[],
          gsize length);
extern
gint *g_key_file_get_integer_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_double_list (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gdouble list[],
                                             gsize length);
extern
gdouble *g_key_file_get_double_list (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gsize *length,
                                             GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_integer_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint list[],
          gsize length);
extern
gboolean g_key_file_set_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             const gchar *comment,
                                             GError **error);
extern
gchar *g_key_file_get_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             GError **error) __attribute__((__malloc__));

extern
gboolean g_key_file_remove_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
          GError **error);
extern
gboolean g_key_file_remove_key (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
gboolean g_key_file_remove_group (GKeyFile *key_file,
          const gchar *group_name,
          GError **error);
# 56 "/usr/include/glib-2.0/glib.h" 2



# 1 "/usr/include/glib-2.0/glib/gmappedfile.h" 1
# 32 "/usr/include/glib-2.0/glib/gmappedfile.h"
typedef struct _GMappedFile GMappedFile;

extern
GMappedFile *g_mapped_file_new (const gchar *filename,
             gboolean writable,
             GError **error) __attribute__((__malloc__));
extern
GMappedFile *g_mapped_file_new_from_fd (gint fd,
      gboolean writable,
      GError **error) __attribute__((__malloc__));
extern
gsize g_mapped_file_get_length (GMappedFile *file);
extern
gchar *g_mapped_file_get_contents (GMappedFile *file);
extern
GBytes * g_mapped_file_get_bytes (GMappedFile *file);
extern
GMappedFile *g_mapped_file_ref (GMappedFile *file);
extern
void g_mapped_file_unref (GMappedFile *file);

__attribute__((__deprecated__)) extern
void g_mapped_file_free (GMappedFile *file);
# 60 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gmarkup.h" 1
# 50 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef enum
{
  G_MARKUP_ERROR_BAD_UTF8,
  G_MARKUP_ERROR_EMPTY,
  G_MARKUP_ERROR_PARSE,



  G_MARKUP_ERROR_UNKNOWN_ELEMENT,
  G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE,
  G_MARKUP_ERROR_INVALID_CONTENT,
  G_MARKUP_ERROR_MISSING_ATTRIBUTE
} GMarkupError;
# 73 "/usr/include/glib-2.0/glib/gmarkup.h"
extern
GQuark g_markup_error_quark (void);
# 96 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef enum
{
  G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1 << 0,
  G_MARKUP_TREAT_CDATA_AS_TEXT = 1 << 1,
  G_MARKUP_PREFIX_ERROR_POSITION = 1 << 2,
  G_MARKUP_IGNORE_QUALIFIED = 1 << 3
} GMarkupParseFlags;
# 113 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef struct _GMarkupParseContext GMarkupParseContext;
typedef struct _GMarkupParser GMarkupParser;
# 144 "/usr/include/glib-2.0/glib/gmarkup.h"
struct _GMarkupParser
{

  void (*start_element) (GMarkupParseContext *context,
                          const gchar *element_name,
                          const gchar **attribute_names,
                          const gchar **attribute_values,
                          gpointer user_data,
                          GError **error);


  void (*end_element) (GMarkupParseContext *context,
                          const gchar *element_name,
                          gpointer user_data,
                          GError **error);



  void (*text) (GMarkupParseContext *context,
                          const gchar *text,
                          gsize text_len,
                          gpointer user_data,
                          GError **error);






  void (*passthrough) (GMarkupParseContext *context,
                          const gchar *passthrough_text,
                          gsize text_len,
                          gpointer user_data,
                          GError **error);




  void (*error) (GMarkupParseContext *context,
                          GError *error,
                          gpointer user_data);
};

extern
GMarkupParseContext *g_markup_parse_context_new (const GMarkupParser *parser,
                                                   GMarkupParseFlags flags,
                                                   gpointer user_data,
                                                   GDestroyNotify user_data_dnotify);
extern
GMarkupParseContext *g_markup_parse_context_ref (GMarkupParseContext *context);
extern
void g_markup_parse_context_unref (GMarkupParseContext *context);
extern
void g_markup_parse_context_free (GMarkupParseContext *context);
extern
gboolean g_markup_parse_context_parse (GMarkupParseContext *context,
                                                   const gchar *text,
                                                   gssize text_len,
                                                   GError **error);
extern
void g_markup_parse_context_push (GMarkupParseContext *context,
                                                   const GMarkupParser *parser,
                                                   gpointer user_data);
extern
gpointer g_markup_parse_context_pop (GMarkupParseContext *context);

extern
gboolean g_markup_parse_context_end_parse (GMarkupParseContext *context,
                                                       GError **error);
extern
const gchar * g_markup_parse_context_get_element (GMarkupParseContext *context);
extern
const GSList * g_markup_parse_context_get_element_stack (GMarkupParseContext *context);


extern
void g_markup_parse_context_get_position (GMarkupParseContext *context,
                                                          gint *line_number,
                                                          gint *char_number);
extern
gpointer g_markup_parse_context_get_user_data (GMarkupParseContext *context);


extern
gchar* g_markup_escape_text (const gchar *text,
                             gssize length);

extern
gchar *g_markup_printf_escaped (const char *format,
    ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
gchar *g_markup_vprintf_escaped (const char *format,
     va_list args) __attribute__((__format__ (__printf__, 1, 0)));

typedef enum
{
  G_MARKUP_COLLECT_INVALID,
  G_MARKUP_COLLECT_STRING,
  G_MARKUP_COLLECT_STRDUP,
  G_MARKUP_COLLECT_BOOLEAN,
  G_MARKUP_COLLECT_TRISTATE,

  G_MARKUP_COLLECT_OPTIONAL = (1 << 16)
} GMarkupCollectType;



extern
gboolean g_markup_collect_attributes (const gchar *element_name,
                                        const gchar **attribute_names,
                                        const gchar **attribute_values,
                                        GError **error,
                                        GMarkupCollectType first_type,
                                        const gchar *first_attr,
                                        ...);
# 61 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gmessages.h" 1
# 40 "/usr/include/glib-2.0/glib/gmessages.h" 3






extern
gsize g_printf_string_upper_bound (const gchar* format,
         va_list args) __attribute__((__format__ (__printf__, 1, 0)));
# 57 "/usr/include/glib-2.0/glib/gmessages.h" 3
typedef enum
{

  G_LOG_FLAG_RECURSION = 1 << 0,
  G_LOG_FLAG_FATAL = 1 << 1,


  G_LOG_LEVEL_ERROR = 1 << 2,
  G_LOG_LEVEL_CRITICAL = 1 << 3,
  G_LOG_LEVEL_WARNING = 1 << 4,
  G_LOG_LEVEL_MESSAGE = 1 << 5,
  G_LOG_LEVEL_INFO = 1 << 6,
  G_LOG_LEVEL_DEBUG = 1 << 7,

  G_LOG_LEVEL_MASK = ~(G_LOG_FLAG_RECURSION | G_LOG_FLAG_FATAL)
} GLogLevelFlags;




typedef void (*GLogFunc) (const gchar *log_domain,
                                                 GLogLevelFlags log_level,
                                                 const gchar *message,
                                                 gpointer user_data);



extern
guint g_log_set_handler (const gchar *log_domain,
                                         GLogLevelFlags log_levels,
                                         GLogFunc log_func,
                                         gpointer user_data);
extern
void g_log_remove_handler (const gchar *log_domain,
                                         guint handler_id);
extern
void g_log_default_handler (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *message,
                                         gpointer unused_data);
extern
GLogFunc g_log_set_default_handler (GLogFunc log_func,
        gpointer user_data);
extern
void g_log (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 3, 4)));
extern
void g_logv (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *format,
                                         va_list args) __attribute__((__format__ (__printf__, 3, 0)));
extern
GLogLevelFlags g_log_set_fatal_mask (const gchar *log_domain,
                                         GLogLevelFlags fatal_mask);
extern
GLogLevelFlags g_log_set_always_fatal (GLogLevelFlags fatal_mask);


void _g_log_fallback_handler (const gchar *log_domain,
       GLogLevelFlags log_level,
       const gchar *message,
       gpointer unused_data);


extern
void g_return_if_fail_warning (const char *log_domain,
          const char *pretty_function,
          const char *expression) __attribute__((analyzer_noreturn));
extern
void g_warn_message (const char *domain,
                               const char *file,
                               int line,
                               const char *func,
                               const char *warnexpr) __attribute__((analyzer_noreturn));
__attribute__((__deprecated__)) extern
void g_assert_warning (const char *log_domain,
          const char *file,
          const int line,
                 const char *pretty_function,
                 const char *expression) __attribute__((__noreturn__));
# 195 "/usr/include/glib-2.0/glib/gmessages.h" 3
static void g_error (const gchar *format, ...) __attribute__((analyzer_noreturn));
static void g_critical (const gchar *format, ...) __attribute__((analyzer_noreturn));

static void
g_error (const gchar *format,
         ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv (((gchar*) 0), G_LOG_LEVEL_ERROR, format, args);
  __builtin_va_end(args);

  for(;;) ;
}
static void
g_message (const gchar *format,
           ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv (((gchar*) 0), G_LOG_LEVEL_MESSAGE, format, args);
  __builtin_va_end(args);
}
static void
g_critical (const gchar *format,
            ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv (((gchar*) 0), G_LOG_LEVEL_CRITICAL, format, args);
  __builtin_va_end(args);
}
static void
g_warning (const gchar *format,
           ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv (((gchar*) 0), G_LOG_LEVEL_WARNING, format, args);
  __builtin_va_end(args);
}
static void
g_info (const gchar *format,
        ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv (((gchar*) 0), G_LOG_LEVEL_INFO, format, args);
  __builtin_va_end(args);
}
static void
g_debug (const gchar *format,
         ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv (((gchar*) 0), G_LOG_LEVEL_DEBUG, format, args);
  __builtin_va_end(args);
}
# 263 "/usr/include/glib-2.0/glib/gmessages.h" 3
typedef void (*GPrintFunc) (const gchar *string);
extern
void g_print (const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GPrintFunc g_set_print_handler (GPrintFunc func);
extern
void g_printerr (const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GPrintFunc g_set_printerr_handler (GPrintFunc func);
# 63 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/goption.h" 1
# 38 "/usr/include/glib-2.0/glib/goption.h"
typedef struct _GOptionContext GOptionContext;
# 51 "/usr/include/glib-2.0/glib/goption.h"
typedef struct _GOptionGroup GOptionGroup;
typedef struct _GOptionEntry GOptionEntry;
# 81 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_FLAG_NONE = 0,
  G_OPTION_FLAG_HIDDEN = 1 << 0,
  G_OPTION_FLAG_IN_MAIN = 1 << 1,
  G_OPTION_FLAG_REVERSE = 1 << 2,
  G_OPTION_FLAG_NO_ARG = 1 << 3,
  G_OPTION_FLAG_FILENAME = 1 << 4,
  G_OPTION_FLAG_OPTIONAL_ARG = 1 << 5,
  G_OPTION_FLAG_NOALIAS = 1 << 6
} GOptionFlags;
# 118 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_ARG_NONE,
  G_OPTION_ARG_STRING,
  G_OPTION_ARG_INT,
  G_OPTION_ARG_CALLBACK,
  G_OPTION_ARG_FILENAME,
  G_OPTION_ARG_STRING_ARRAY,
  G_OPTION_ARG_FILENAME_ARRAY,
  G_OPTION_ARG_DOUBLE,
  G_OPTION_ARG_INT64
} GOptionArg;
# 148 "/usr/include/glib-2.0/glib/goption.h"
typedef gboolean (*GOptionArgFunc) (const gchar *option_name,
        const gchar *value,
        gpointer data,
        GError **error);
# 166 "/usr/include/glib-2.0/glib/goption.h"
typedef gboolean (*GOptionParseFunc) (GOptionContext *context,
          GOptionGroup *group,
          gpointer data,
          GError **error);
# 181 "/usr/include/glib-2.0/glib/goption.h"
typedef void (*GOptionErrorFunc) (GOptionContext *context,
      GOptionGroup *group,
      gpointer data,
      GError **error);
# 205 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_ERROR_UNKNOWN_OPTION,
  G_OPTION_ERROR_BAD_VALUE,
  G_OPTION_ERROR_FAILED
} GOptionError;

extern
GQuark g_option_error_quark (void);
# 257 "/usr/include/glib-2.0/glib/goption.h"
struct _GOptionEntry
{
  const gchar *long_name;
  gchar short_name;
  gint flags;

  GOptionArg arg;
  gpointer arg_data;

  const gchar *description;
  const gchar *arg_description;
};
# 288 "/usr/include/glib-2.0/glib/goption.h"
extern
GOptionContext *g_option_context_new (const gchar *parameter_string);
extern
void g_option_context_set_summary (GOptionContext *context,
                                                   const gchar *summary);
extern
const gchar * g_option_context_get_summary (GOptionContext *context);
extern
void g_option_context_set_description (GOptionContext *context,
                                                   const gchar *description);
extern
const gchar * g_option_context_get_description (GOptionContext *context);
extern
void g_option_context_free (GOptionContext *context);
extern
void g_option_context_set_help_enabled (GOptionContext *context,
         gboolean help_enabled);
extern
gboolean g_option_context_get_help_enabled (GOptionContext *context);
extern
void g_option_context_set_ignore_unknown_options (GOptionContext *context,
            gboolean ignore_unknown);
extern
gboolean g_option_context_get_ignore_unknown_options (GOptionContext *context);

extern
void g_option_context_add_main_entries (GOptionContext *context,
         const GOptionEntry *entries,
         const gchar *translation_domain);
extern
gboolean g_option_context_parse (GOptionContext *context,
         gint *argc,
         gchar ***argv,
         GError **error);
extern
gboolean g_option_context_parse_strv (GOptionContext *context,
                                                   gchar ***arguments,
                                                   GError **error);
extern
void g_option_context_set_translate_func (GOptionContext *context,
           GTranslateFunc func,
           gpointer data,
           GDestroyNotify destroy_notify);
extern
void g_option_context_set_translation_domain (GOptionContext *context,
        const gchar *domain);

extern
void g_option_context_add_group (GOptionContext *context,
       GOptionGroup *group);
extern
void g_option_context_set_main_group (GOptionContext *context,
            GOptionGroup *group);
extern
GOptionGroup *g_option_context_get_main_group (GOptionContext *context);
extern
gchar *g_option_context_get_help (GOptionContext *context,
                                               gboolean main_help,
                                               GOptionGroup *group);

extern
GOptionGroup *g_option_group_new (const gchar *name,
           const gchar *description,
           const gchar *help_description,
           gpointer user_data,
           GDestroyNotify destroy);
extern
void g_option_group_set_parse_hooks (GOptionGroup *group,
           GOptionParseFunc pre_parse_func,
           GOptionParseFunc post_parse_func);
extern
void g_option_group_set_error_hook (GOptionGroup *group,
           GOptionErrorFunc error_func);
extern
void g_option_group_free (GOptionGroup *group);
extern
void g_option_group_add_entries (GOptionGroup *group,
           const GOptionEntry *entries);
extern
void g_option_group_set_translate_func (GOptionGroup *group,
           GTranslateFunc func,
           gpointer data,
           GDestroyNotify destroy_notify);
extern
void g_option_group_set_translation_domain (GOptionGroup *group,
           const gchar *domain);
# 65 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gpattern.h" 1
# 30 "/usr/include/glib-2.0/glib/gpattern.h"
typedef struct _GPatternSpec GPatternSpec;

extern
GPatternSpec* g_pattern_spec_new (const gchar *pattern);
extern
void g_pattern_spec_free (GPatternSpec *pspec);
extern
gboolean g_pattern_spec_equal (GPatternSpec *pspec1,
     GPatternSpec *pspec2);
extern
gboolean g_pattern_match (GPatternSpec *pspec,
     guint string_length,
     const gchar *string,
     const gchar *string_reversed);
extern
gboolean g_pattern_match_string (GPatternSpec *pspec,
     const gchar *string);
extern
gboolean g_pattern_match_simple (const gchar *pattern,
     const gchar *string);
# 66 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gprimes.h" 1
# 45 "/usr/include/glib-2.0/glib/gprimes.h"
extern
guint g_spaced_primes_closest (guint num) __attribute__((__const__));
# 68 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gqsort.h" 1
# 36 "/usr/include/glib-2.0/glib/gqsort.h"
extern
void g_qsort_with_data (gconstpointer pbase,
   gint total_elems,
   gsize size,
   GCompareDataFunc compare_func,
   gpointer user_data);
# 69 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gqueue.h" 1
# 36 "/usr/include/glib-2.0/glib/gqueue.h"
typedef struct _GQueue GQueue;
# 47 "/usr/include/glib-2.0/glib/gqueue.h"
struct _GQueue
{
  GList *head;
  GList *tail;
  guint length;
};
# 72 "/usr/include/glib-2.0/glib/gqueue.h"
extern
GQueue* g_queue_new (void);
extern
void g_queue_free (GQueue *queue);
extern
void g_queue_free_full (GQueue *queue,
    GDestroyNotify free_func);
extern
void g_queue_init (GQueue *queue);
extern
void g_queue_clear (GQueue *queue);
extern
gboolean g_queue_is_empty (GQueue *queue);
extern
guint g_queue_get_length (GQueue *queue);
extern
void g_queue_reverse (GQueue *queue);
extern
GQueue * g_queue_copy (GQueue *queue);
extern
void g_queue_foreach (GQueue *queue,
                                 GFunc func,
                                 gpointer user_data);
extern
GList * g_queue_find (GQueue *queue,
                                 gconstpointer data);
extern
GList * g_queue_find_custom (GQueue *queue,
                                 gconstpointer data,
                                 GCompareFunc func);
extern
void g_queue_sort (GQueue *queue,
                                 GCompareDataFunc compare_func,
                                 gpointer user_data);

extern
void g_queue_push_head (GQueue *queue,
                                 gpointer data);
extern
void g_queue_push_tail (GQueue *queue,
                                 gpointer data);
extern
void g_queue_push_nth (GQueue *queue,
                                 gpointer data,
                                 gint n);
extern
gpointer g_queue_pop_head (GQueue *queue);
extern
gpointer g_queue_pop_tail (GQueue *queue);
extern
gpointer g_queue_pop_nth (GQueue *queue,
                                 guint n);
extern
gpointer g_queue_peek_head (GQueue *queue);
extern
gpointer g_queue_peek_tail (GQueue *queue);
extern
gpointer g_queue_peek_nth (GQueue *queue,
                                 guint n);
extern
gint g_queue_index (GQueue *queue,
                                 gconstpointer data);
extern
gboolean g_queue_remove (GQueue *queue,
                                 gconstpointer data);
extern
guint g_queue_remove_all (GQueue *queue,
                                 gconstpointer data);
extern
void g_queue_insert_before (GQueue *queue,
                                 GList *sibling,
                                 gpointer data);
extern
void g_queue_insert_after (GQueue *queue,
                                 GList *sibling,
                                 gpointer data);
extern
void g_queue_insert_sorted (GQueue *queue,
                                 gpointer data,
                                 GCompareDataFunc func,
                                 gpointer user_data);

extern
void g_queue_push_head_link (GQueue *queue,
                                 GList *link_);
extern
void g_queue_push_tail_link (GQueue *queue,
                                 GList *link_);
extern
void g_queue_push_nth_link (GQueue *queue,
                                 gint n,
                                 GList *link_);
extern
GList* g_queue_pop_head_link (GQueue *queue);
extern
GList* g_queue_pop_tail_link (GQueue *queue);
extern
GList* g_queue_pop_nth_link (GQueue *queue,
                                 guint n);
extern
GList* g_queue_peek_head_link (GQueue *queue);
extern
GList* g_queue_peek_tail_link (GQueue *queue);
extern
GList* g_queue_peek_nth_link (GQueue *queue,
                                 guint n);
extern
gint g_queue_link_index (GQueue *queue,
                                 GList *link_);
extern
void g_queue_unlink (GQueue *queue,
                                 GList *link_);
extern
void g_queue_delete_link (GQueue *queue,
                                 GList *link_);
# 71 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/grand.h" 1
# 36 "/usr/include/glib-2.0/glib/grand.h"
typedef struct _GRand GRand;
# 47 "/usr/include/glib-2.0/glib/grand.h"
extern
GRand* g_rand_new_with_seed (guint32 seed);
extern
GRand* g_rand_new_with_seed_array (const guint32 *seed,
        guint seed_length);
extern
GRand* g_rand_new (void);
extern
void g_rand_free (GRand *rand_);
extern
GRand* g_rand_copy (GRand *rand_);
extern
void g_rand_set_seed (GRand *rand_,
          guint32 seed);
extern
void g_rand_set_seed_array (GRand *rand_,
          const guint32 *seed,
          guint seed_length);



extern
guint32 g_rand_int (GRand *rand_);
extern
gint32 g_rand_int_range (GRand *rand_,
          gint32 begin,
          gint32 end);
extern
gdouble g_rand_double (GRand *rand_);
extern
gdouble g_rand_double_range (GRand *rand_,
          gdouble begin,
          gdouble end);
extern
void g_random_set_seed (guint32 seed);



extern
guint32 g_random_int (void);
extern
gint32 g_random_int_range (gint32 begin,
          gint32 end);
extern
gdouble g_random_double (void);
extern
gdouble g_random_double_range (gdouble begin,
          gdouble end);
# 72 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gregex.h" 1
# 141 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_ERROR_COMPILE,
  G_REGEX_ERROR_OPTIMIZE,
  G_REGEX_ERROR_REPLACE,
  G_REGEX_ERROR_MATCH,
  G_REGEX_ERROR_INTERNAL,


  G_REGEX_ERROR_STRAY_BACKSLASH = 101,
  G_REGEX_ERROR_MISSING_CONTROL_CHAR = 102,
  G_REGEX_ERROR_UNRECOGNIZED_ESCAPE = 103,
  G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER = 104,
  G_REGEX_ERROR_QUANTIFIER_TOO_BIG = 105,
  G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS = 106,
  G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS = 107,
  G_REGEX_ERROR_RANGE_OUT_OF_ORDER = 108,
  G_REGEX_ERROR_NOTHING_TO_REPEAT = 109,
  G_REGEX_ERROR_UNRECOGNIZED_CHARACTER = 112,
  G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113,
  G_REGEX_ERROR_UNMATCHED_PARENTHESIS = 114,
  G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE = 115,
  G_REGEX_ERROR_UNTERMINATED_COMMENT = 118,
  G_REGEX_ERROR_EXPRESSION_TOO_LARGE = 120,
  G_REGEX_ERROR_MEMORY_ERROR = 121,
  G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND = 125,
  G_REGEX_ERROR_MALFORMED_CONDITION = 126,
  G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES = 127,
  G_REGEX_ERROR_ASSERTION_EXPECTED = 128,
  G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME = 130,
  G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131,
  G_REGEX_ERROR_HEX_CODE_TOO_LARGE = 134,
  G_REGEX_ERROR_INVALID_CONDITION = 135,
  G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136,
  G_REGEX_ERROR_INFINITE_LOOP = 140,
  G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR = 142,
  G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME = 143,
  G_REGEX_ERROR_MALFORMED_PROPERTY = 146,
  G_REGEX_ERROR_UNKNOWN_PROPERTY = 147,
  G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG = 148,
  G_REGEX_ERROR_TOO_MANY_SUBPATTERNS = 149,
  G_REGEX_ERROR_INVALID_OCTAL_VALUE = 151,
  G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE = 154,
  G_REGEX_ERROR_DEFINE_REPETION = 155,
  G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS = 156,
  G_REGEX_ERROR_MISSING_BACK_REFERENCE = 157,
  G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE = 158,
  G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159,
  G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB = 160,
  G_REGEX_ERROR_NUMBER_TOO_BIG = 161,
  G_REGEX_ERROR_MISSING_SUBPATTERN_NAME = 162,
  G_REGEX_ERROR_MISSING_DIGIT = 163,
  G_REGEX_ERROR_INVALID_DATA_CHARACTER = 164,
  G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME = 165,
  G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166,
  G_REGEX_ERROR_INVALID_CONTROL_CHAR = 168,
  G_REGEX_ERROR_MISSING_NAME = 169,
  G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS = 171,
  G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES = 172,
  G_REGEX_ERROR_NAME_TOO_LONG = 175,
  G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE = 176
} GRegexError;
# 215 "/usr/include/glib-2.0/glib/gregex.h"
extern
GQuark g_regex_error_quark (void);
# 297 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_CASELESS = 1 << 0,
  G_REGEX_MULTILINE = 1 << 1,
  G_REGEX_DOTALL = 1 << 2,
  G_REGEX_EXTENDED = 1 << 3,
  G_REGEX_ANCHORED = 1 << 4,
  G_REGEX_DOLLAR_ENDONLY = 1 << 5,
  G_REGEX_UNGREEDY = 1 << 9,
  G_REGEX_RAW = 1 << 11,
  G_REGEX_NO_AUTO_CAPTURE = 1 << 12,
  G_REGEX_OPTIMIZE = 1 << 13,
  G_REGEX_FIRSTLINE = 1 << 18,
  G_REGEX_DUPNAMES = 1 << 19,
  G_REGEX_NEWLINE_CR = 1 << 20,
  G_REGEX_NEWLINE_LF = 1 << 21,
  G_REGEX_NEWLINE_CRLF = G_REGEX_NEWLINE_CR | G_REGEX_NEWLINE_LF,
  G_REGEX_NEWLINE_ANYCRLF = G_REGEX_NEWLINE_CR | 1 << 22,
  G_REGEX_BSR_ANYCRLF = 1 << 23,
  G_REGEX_JAVASCRIPT_COMPAT = 1 << 25
} GRegexCompileFlags;
# 387 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_MATCH_ANCHORED = 1 << 4,
  G_REGEX_MATCH_NOTBOL = 1 << 7,
  G_REGEX_MATCH_NOTEOL = 1 << 8,
  G_REGEX_MATCH_NOTEMPTY = 1 << 10,
  G_REGEX_MATCH_PARTIAL = 1 << 15,
  G_REGEX_MATCH_NEWLINE_CR = 1 << 20,
  G_REGEX_MATCH_NEWLINE_LF = 1 << 21,
  G_REGEX_MATCH_NEWLINE_CRLF = G_REGEX_MATCH_NEWLINE_CR | G_REGEX_MATCH_NEWLINE_LF,
  G_REGEX_MATCH_NEWLINE_ANY = 1 << 22,
  G_REGEX_MATCH_NEWLINE_ANYCRLF = G_REGEX_MATCH_NEWLINE_CR | G_REGEX_MATCH_NEWLINE_ANY,
  G_REGEX_MATCH_BSR_ANYCRLF = 1 << 23,
  G_REGEX_MATCH_BSR_ANY = 1 << 24,
  G_REGEX_MATCH_PARTIAL_SOFT = G_REGEX_MATCH_PARTIAL,
  G_REGEX_MATCH_PARTIAL_HARD = 1 << 27,
  G_REGEX_MATCH_NOTEMPTY_ATSTART = 1 << 28
} GRegexMatchFlags;
# 414 "/usr/include/glib-2.0/glib/gregex.h"
typedef struct _GRegex GRegex;
# 423 "/usr/include/glib-2.0/glib/gregex.h"
typedef struct _GMatchInfo GMatchInfo;
# 442 "/usr/include/glib-2.0/glib/gregex.h"
typedef gboolean (*GRegexEvalCallback) (const GMatchInfo *match_info,
       GString *result,
       gpointer user_data);


extern
GRegex *g_regex_new (const gchar *pattern,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options,
       GError **error);
extern
GRegex *g_regex_ref (GRegex *regex);
extern
void g_regex_unref (GRegex *regex);
extern
const gchar *g_regex_get_pattern (const GRegex *regex);
extern
gint g_regex_get_max_backref (const GRegex *regex);
extern
gint g_regex_get_capture_count (const GRegex *regex);
extern
gboolean g_regex_get_has_cr_or_lf (const GRegex *regex);
extern
gint g_regex_get_max_lookbehind (const GRegex *regex);
extern
gint g_regex_get_string_number (const GRegex *regex,
       const gchar *name);
extern
gchar *g_regex_escape_string (const gchar *string,
       gint length);
extern
gchar *g_regex_escape_nul (const gchar *string,
       gint length);

extern
GRegexCompileFlags g_regex_get_compile_flags (const GRegex *regex);
extern
GRegexMatchFlags g_regex_get_match_flags (const GRegex *regex);


extern
gboolean g_regex_match_simple (const gchar *pattern,
       const gchar *string,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options);
extern
gboolean g_regex_match (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info);
extern
gboolean g_regex_match_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info,
       GError **error);
extern
gboolean g_regex_match_all (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info);
extern
gboolean g_regex_match_all_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info,
       GError **error);


extern
gchar **g_regex_split_simple (const gchar *pattern,
       const gchar *string,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options);
extern
gchar **g_regex_split (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options);
extern
gchar **g_regex_split_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       gint max_tokens,
       GError **error);


extern
gchar *g_regex_replace (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       const gchar *replacement,
       GRegexMatchFlags match_options,
       GError **error);
extern
gchar *g_regex_replace_literal (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       const gchar *replacement,
       GRegexMatchFlags match_options,
       GError **error);
extern
gchar *g_regex_replace_eval (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GRegexEvalCallback eval,
       gpointer user_data,
       GError **error);
extern
gboolean g_regex_check_replacement (const gchar *replacement,
       gboolean *has_references,
       GError **error);


extern
GRegex *g_match_info_get_regex (const GMatchInfo *match_info);
extern
const gchar *g_match_info_get_string (const GMatchInfo *match_info);

extern
GMatchInfo *g_match_info_ref (GMatchInfo *match_info);
extern
void g_match_info_unref (GMatchInfo *match_info);
extern
void g_match_info_free (GMatchInfo *match_info);
extern
gboolean g_match_info_next (GMatchInfo *match_info,
       GError **error);
extern
gboolean g_match_info_matches (const GMatchInfo *match_info);
extern
gint g_match_info_get_match_count (const GMatchInfo *match_info);
extern
gboolean g_match_info_is_partial_match (const GMatchInfo *match_info);
extern
gchar *g_match_info_expand_references(const GMatchInfo *match_info,
       const gchar *string_to_expand,
       GError **error);
extern
gchar *g_match_info_fetch (const GMatchInfo *match_info,
       gint match_num);
extern
gboolean g_match_info_fetch_pos (const GMatchInfo *match_info,
       gint match_num,
       gint *start_pos,
       gint *end_pos);
extern
gchar *g_match_info_fetch_named (const GMatchInfo *match_info,
       const gchar *name);
extern
gboolean g_match_info_fetch_named_pos (const GMatchInfo *match_info,
       const gchar *name,
       gint *start_pos,
       gint *end_pos);
extern
gchar **g_match_info_fetch_all (const GMatchInfo *match_info);
# 73 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gscanner.h" 1
# 37 "/usr/include/glib-2.0/glib/gscanner.h"
typedef struct _GScanner GScanner;
typedef struct _GScannerConfig GScannerConfig;
typedef union _GTokenValue GTokenValue;

typedef void (*GScannerMsgFunc) (GScanner *scanner,
       gchar *message,
       gboolean error);
# 62 "/usr/include/glib-2.0/glib/gscanner.h"
typedef enum
{
  G_ERR_UNKNOWN,
  G_ERR_UNEXP_EOF,
  G_ERR_UNEXP_EOF_IN_STRING,
  G_ERR_UNEXP_EOF_IN_COMMENT,
  G_ERR_NON_DIGIT_IN_CONST,
  G_ERR_DIGIT_RADIX,
  G_ERR_FLOAT_RADIX,
  G_ERR_FLOAT_MALFORMED
} GErrorType;


typedef enum
{
  G_TOKEN_EOF = 0,

  G_TOKEN_LEFT_PAREN = '(',
  G_TOKEN_RIGHT_PAREN = ')',
  G_TOKEN_LEFT_CURLY = '{',
  G_TOKEN_RIGHT_CURLY = '}',
  G_TOKEN_LEFT_BRACE = '[',
  G_TOKEN_RIGHT_BRACE = ']',
  G_TOKEN_EQUAL_SIGN = '=',
  G_TOKEN_COMMA = ',',

  G_TOKEN_NONE = 256,

  G_TOKEN_ERROR,

  G_TOKEN_CHAR,
  G_TOKEN_BINARY,
  G_TOKEN_OCTAL,
  G_TOKEN_INT,
  G_TOKEN_HEX,
  G_TOKEN_FLOAT,
  G_TOKEN_STRING,

  G_TOKEN_SYMBOL,
  G_TOKEN_IDENTIFIER,
  G_TOKEN_IDENTIFIER_NULL,

  G_TOKEN_COMMENT_SINGLE,
  G_TOKEN_COMMENT_MULTI,


  G_TOKEN_LAST
} GTokenType;

union _GTokenValue
{
  gpointer v_symbol;
  gchar *v_identifier;
  gulong v_binary;
  gulong v_octal;
  gulong v_int;
  guint64 v_int64;
  gdouble v_float;
  gulong v_hex;
  gchar *v_string;
  gchar *v_comment;
  guchar v_char;
  guint v_error;
};

struct _GScannerConfig
{


  gchar *cset_skip_characters;
  gchar *cset_identifier_first;
  gchar *cset_identifier_nth;
  gchar *cpair_comment_single;



  guint case_sensitive : 1;




  guint skip_comment_multi : 1;
  guint skip_comment_single : 1;
  guint scan_comment_multi : 1;
  guint scan_identifier : 1;
  guint scan_identifier_1char : 1;
  guint scan_identifier_NULL : 1;
  guint scan_symbols : 1;
  guint scan_binary : 1;
  guint scan_octal : 1;
  guint scan_float : 1;
  guint scan_hex : 1;
  guint scan_hex_dollar : 1;
  guint scan_string_sq : 1;
  guint scan_string_dq : 1;
  guint numbers_2_int : 1;
  guint int_2_float : 1;
  guint identifier_2_string : 1;
  guint char_2_token : 1;
  guint symbol_2_token : 1;
  guint scope_0_fallback : 1;
  guint store_int64 : 1;


  guint padding_dummy;
};

struct _GScanner
{

  gpointer user_data;
  guint max_parse_errors;


  guint parse_errors;


  const gchar *input_name;


  GData *qdata;


  GScannerConfig *config;


  GTokenType token;
  GTokenValue value;
  guint line;
  guint position;


  GTokenType next_token;
  GTokenValue next_value;
  guint next_line;
  guint next_position;



  GHashTable *symbol_table;
  gint input_fd;
  const gchar *text;
  const gchar *text_end;
  gchar *buffer;
  guint scope_id;



  GScannerMsgFunc msg_handler;
};

extern
GScanner* g_scanner_new (const GScannerConfig *config_templ);
extern
void g_scanner_destroy (GScanner *scanner);
extern
void g_scanner_input_file (GScanner *scanner,
       gint input_fd);
extern
void g_scanner_sync_file_offset (GScanner *scanner);
extern
void g_scanner_input_text (GScanner *scanner,
       const gchar *text,
       guint text_len);
extern
GTokenType g_scanner_get_next_token (GScanner *scanner);
extern
GTokenType g_scanner_peek_next_token (GScanner *scanner);
extern
GTokenType g_scanner_cur_token (GScanner *scanner);
extern
GTokenValue g_scanner_cur_value (GScanner *scanner);
extern
guint g_scanner_cur_line (GScanner *scanner);
extern
guint g_scanner_cur_position (GScanner *scanner);
extern
gboolean g_scanner_eof (GScanner *scanner);
extern
guint g_scanner_set_scope (GScanner *scanner,
       guint scope_id);
extern
void g_scanner_scope_add_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol,
       gpointer value);
extern
void g_scanner_scope_remove_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol);
extern
gpointer g_scanner_scope_lookup_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol);
extern
void g_scanner_scope_foreach_symbol (GScanner *scanner,
       guint scope_id,
       GHFunc func,
       gpointer user_data);
extern
gpointer g_scanner_lookup_symbol (GScanner *scanner,
       const gchar *symbol);
extern
void g_scanner_unexp_token (GScanner *scanner,
       GTokenType expected_token,
       const gchar *identifier_spec,
       const gchar *symbol_spec,
       const gchar *symbol_name,
       const gchar *message,
       gint is_error);
extern
void g_scanner_error (GScanner *scanner,
       const gchar *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_scanner_warn (GScanner *scanner,
       const gchar *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
# 74 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gsequence.h" 1
# 30 "/usr/include/glib-2.0/glib/gsequence.h"
typedef struct _GSequence GSequence;
typedef struct _GSequenceNode GSequenceIter;

typedef gint (* GSequenceIterCompareFunc) (GSequenceIter *a,
                                           GSequenceIter *b,
                                           gpointer data);



extern
GSequence * g_sequence_new (GDestroyNotify data_destroy);
extern
void g_sequence_free (GSequence *seq);
extern
gint g_sequence_get_length (GSequence *seq);
extern
void g_sequence_foreach (GSequence *seq,
                                              GFunc func,
                                              gpointer user_data);
extern
void g_sequence_foreach_range (GSequenceIter *begin,
                                              GSequenceIter *end,
                                              GFunc func,
                                              gpointer user_data);
extern
void g_sequence_sort (GSequence *seq,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
void g_sequence_sort_iter (GSequence *seq,
                                              GSequenceIterCompareFunc cmp_func,
                                              gpointer cmp_data);



extern
GSequenceIter *g_sequence_get_begin_iter (GSequence *seq);
extern
GSequenceIter *g_sequence_get_end_iter (GSequence *seq);
extern
GSequenceIter *g_sequence_get_iter_at_pos (GSequence *seq,
                                              gint pos);
extern
GSequenceIter *g_sequence_append (GSequence *seq,
                                              gpointer data);
extern
GSequenceIter *g_sequence_prepend (GSequence *seq,
                                              gpointer data);
extern
GSequenceIter *g_sequence_insert_before (GSequenceIter *iter,
                                              gpointer data);
extern
void g_sequence_move (GSequenceIter *src,
                                              GSequenceIter *dest);
extern
void g_sequence_swap (GSequenceIter *a,
                                              GSequenceIter *b);
extern
GSequenceIter *g_sequence_insert_sorted (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_insert_sorted_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
void g_sequence_sort_changed (GSequenceIter *iter,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
void g_sequence_sort_changed_iter (GSequenceIter *iter,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
void g_sequence_remove (GSequenceIter *iter);
extern
void g_sequence_remove_range (GSequenceIter *begin,
                                              GSequenceIter *end);
extern
void g_sequence_move_range (GSequenceIter *dest,
                                              GSequenceIter *begin,
                                              GSequenceIter *end);
extern
GSequenceIter *g_sequence_search (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_search_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_lookup (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_lookup_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);



extern
gpointer g_sequence_get (GSequenceIter *iter);
extern
void g_sequence_set (GSequenceIter *iter,
                                              gpointer data);


extern
gboolean g_sequence_iter_is_begin (GSequenceIter *iter);
extern
gboolean g_sequence_iter_is_end (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_next (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_prev (GSequenceIter *iter);
extern
gint g_sequence_iter_get_position (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_move (GSequenceIter *iter,
                                              gint delta);
extern
GSequence * g_sequence_iter_get_sequence (GSequenceIter *iter);



extern
gint g_sequence_iter_compare (GSequenceIter *a,
                                              GSequenceIter *b);
extern
GSequenceIter *g_sequence_range_get_midpoint (GSequenceIter *begin,
                                              GSequenceIter *end);
# 75 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gshell.h" 1
# 34 "/usr/include/glib-2.0/glib/gshell.h"
typedef enum
{

  G_SHELL_ERROR_BAD_QUOTING,

  G_SHELL_ERROR_EMPTY_STRING,
  G_SHELL_ERROR_FAILED
} GShellError;

extern
GQuark g_shell_error_quark (void);

extern
gchar* g_shell_quote (const gchar *unquoted_string);
extern
gchar* g_shell_unquote (const gchar *quoted_string,
                             GError **error);
extern
gboolean g_shell_parse_argv (const gchar *command_line,
                             gint *argcp,
                             gchar ***argvp,
                             GError **error);
# 76 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gslice.h" 1
# 31 "/usr/include/glib-2.0/glib/gslice.h"
extern
gpointer g_slice_alloc (gsize block_size) __attribute__((__malloc__)) ;
extern
gpointer g_slice_alloc0 (gsize block_size) __attribute__((__malloc__)) ;
extern
gpointer g_slice_copy (gsize block_size,
                                         gconstpointer mem_block) __attribute__((__malloc__)) ;
extern
void g_slice_free1 (gsize block_size,
      gpointer mem_block);
extern
void g_slice_free_chain_with_offset (gsize block_size,
      gpointer mem_chain,
      gsize next_offset);
# 76 "/usr/include/glib-2.0/glib/gslice.h"
typedef enum {
  G_SLICE_CONFIG_ALWAYS_MALLOC = 1,
  G_SLICE_CONFIG_BYPASS_MAGAZINES,
  G_SLICE_CONFIG_WORKING_SET_MSECS,
  G_SLICE_CONFIG_COLOR_INCREMENT,
  G_SLICE_CONFIG_CHUNK_SIZES,
  G_SLICE_CONFIG_CONTENTION_COUNTER
} GSliceConfig;

__attribute__((__deprecated__)) extern
void g_slice_set_config (GSliceConfig ckey, gint64 value);
__attribute__((__deprecated__)) extern
gint64 g_slice_get_config (GSliceConfig ckey);
__attribute__((__deprecated__)) extern
gint64* g_slice_get_config_state (GSliceConfig ckey, gint64 address, guint *n_values);
# 77 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gspawn.h" 1
# 70 "/usr/include/glib-2.0/glib/gspawn.h"
typedef enum
{
  G_SPAWN_ERROR_FORK,
  G_SPAWN_ERROR_READ,
  G_SPAWN_ERROR_CHDIR,
  G_SPAWN_ERROR_ACCES,
  G_SPAWN_ERROR_PERM,
  G_SPAWN_ERROR_TOO_BIG,

  G_SPAWN_ERROR_2BIG = G_SPAWN_ERROR_TOO_BIG,

  G_SPAWN_ERROR_NOEXEC,
  G_SPAWN_ERROR_NAMETOOLONG,
  G_SPAWN_ERROR_NOENT,
  G_SPAWN_ERROR_NOMEM,
  G_SPAWN_ERROR_NOTDIR,
  G_SPAWN_ERROR_LOOP,
  G_SPAWN_ERROR_TXTBUSY,
  G_SPAWN_ERROR_IO,
  G_SPAWN_ERROR_NFILE,
  G_SPAWN_ERROR_MFILE,
  G_SPAWN_ERROR_INVAL,
  G_SPAWN_ERROR_ISDIR,
  G_SPAWN_ERROR_LIBBAD,
  G_SPAWN_ERROR_FAILED


} GSpawnError;
# 142 "/usr/include/glib-2.0/glib/gspawn.h"
typedef void (* GSpawnChildSetupFunc) (gpointer user_data);
# 172 "/usr/include/glib-2.0/glib/gspawn.h"
typedef enum
{
  G_SPAWN_DEFAULT = 0,
  G_SPAWN_LEAVE_DESCRIPTORS_OPEN = 1 << 0,
  G_SPAWN_DO_NOT_REAP_CHILD = 1 << 1,

  G_SPAWN_SEARCH_PATH = 1 << 2,

  G_SPAWN_STDOUT_TO_DEV_NULL = 1 << 3,
  G_SPAWN_STDERR_TO_DEV_NULL = 1 << 4,
  G_SPAWN_CHILD_INHERITS_STDIN = 1 << 5,
  G_SPAWN_FILE_AND_ARGV_ZERO = 1 << 6,
  G_SPAWN_SEARCH_PATH_FROM_ENVP = 1 << 7,
  G_SPAWN_CLOEXEC_PIPES = 1 << 8
} GSpawnFlags;

extern
GQuark g_spawn_error_quark (void);
extern
GQuark g_spawn_exit_error_quark (void);

extern
gboolean g_spawn_async (const gchar *working_directory,
                        gchar **argv,
                        gchar **envp,
                        GSpawnFlags flags,
                        GSpawnChildSetupFunc child_setup,
                        gpointer user_data,
                        GPid *child_pid,
                        GError **error);





extern
gboolean g_spawn_async_with_pipes (const gchar *working_directory,
                                   gchar **argv,
                                   gchar **envp,
                                   GSpawnFlags flags,
                                   GSpawnChildSetupFunc child_setup,
                                   gpointer user_data,
                                   GPid *child_pid,
                                   gint *standard_input,
                                   gint *standard_output,
                                   gint *standard_error,
                                   GError **error);






extern
gboolean g_spawn_sync (const gchar *working_directory,
                               gchar **argv,
                               gchar **envp,
                               GSpawnFlags flags,
                               GSpawnChildSetupFunc child_setup,
                               gpointer user_data,
                               gchar **standard_output,
                               gchar **standard_error,
                               gint *exit_status,
                               GError **error);

extern
gboolean g_spawn_command_line_sync (const gchar *command_line,
                                     gchar **standard_output,
                                     gchar **standard_error,
                                     gint *exit_status,
                                     GError **error);
extern
gboolean g_spawn_command_line_async (const gchar *command_line,
                                     GError **error);

extern
gboolean g_spawn_check_exit_status (gint exit_status,
        GError **error);

extern
void g_spawn_close_pid (GPid pid);
# 79 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gstrfuncs.h" 1
# 39 "/usr/include/glib-2.0/glib/gstrfuncs.h"
typedef enum {
  G_ASCII_ALNUM = 1 << 0,
  G_ASCII_ALPHA = 1 << 1,
  G_ASCII_CNTRL = 1 << 2,
  G_ASCII_DIGIT = 1 << 3,
  G_ASCII_GRAPH = 1 << 4,
  G_ASCII_LOWER = 1 << 5,
  G_ASCII_PRINT = 1 << 6,
  G_ASCII_PUNCT = 1 << 7,
  G_ASCII_SPACE = 1 << 8,
  G_ASCII_UPPER = 1 << 9,
  G_ASCII_XDIGIT = 1 << 10
} GAsciiType;

extern const guint16 * const g_ascii_table;
# 88 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar g_ascii_tolower (gchar c) __attribute__((__const__));
extern
gchar g_ascii_toupper (gchar c) __attribute__((__const__));

extern
gint g_ascii_digit_value (gchar c) __attribute__((__const__));
extern
gint g_ascii_xdigit_value (gchar c) __attribute__((__const__));





extern
gchar* g_strdelimit (gchar *string,
     const gchar *delimiters,
     gchar new_delimiter);
extern
gchar* g_strcanon (gchar *string,
     const gchar *valid_chars,
     gchar substitutor);
extern
const gchar * g_strerror (gint errnum) __attribute__((__const__));
extern
const gchar * g_strsignal (gint signum) __attribute__((__const__));
extern
gchar * g_strreverse (gchar *string);
extern
gsize g_strlcpy (gchar *dest,
     const gchar *src,
     gsize dest_size);
extern
gsize g_strlcat (gchar *dest,
     const gchar *src,
     gsize dest_size);
extern
gchar * g_strstr_len (const gchar *haystack,
     gssize haystack_len,
     const gchar *needle);
extern
gchar * g_strrstr (const gchar *haystack,
     const gchar *needle);
extern
gchar * g_strrstr_len (const gchar *haystack,
     gssize haystack_len,
     const gchar *needle);

extern
gboolean g_str_has_suffix (const gchar *str,
     const gchar *suffix);
extern
gboolean g_str_has_prefix (const gchar *str,
     const gchar *prefix);



extern
gdouble g_strtod (const gchar *nptr,
     gchar **endptr);
extern
gdouble g_ascii_strtod (const gchar *nptr,
     gchar **endptr);
extern
guint64 g_ascii_strtoull (const gchar *nptr,
     gchar **endptr,
     guint base);
extern
gint64 g_ascii_strtoll (const gchar *nptr,
     gchar **endptr,
     guint base);




extern
gchar * g_ascii_dtostr (gchar *buffer,
     gint buf_len,
     gdouble d);
extern
gchar * g_ascii_formatd (gchar *buffer,
     gint buf_len,
     const gchar *format,
     gdouble d);


extern
gchar* g_strchug (gchar *string);

extern
gchar* g_strchomp (gchar *string);



extern
gint g_ascii_strcasecmp (const gchar *s1,
        const gchar *s2);
extern
gint g_ascii_strncasecmp (const gchar *s1,
        const gchar *s2,
        gsize n);
extern
gchar* g_ascii_strdown (const gchar *str,
        gssize len) __attribute__((__malloc__));
extern
gchar* g_ascii_strup (const gchar *str,
        gssize len) __attribute__((__malloc__));

extern
gboolean g_str_is_ascii (const gchar *str);

__attribute__((__deprecated__)) extern
gint g_strcasecmp (const gchar *s1,
                                        const gchar *s2);
__attribute__((__deprecated__)) extern
gint g_strncasecmp (const gchar *s1,
                                        const gchar *s2,
                                        guint n);
__attribute__((__deprecated__)) extern
gchar* g_strdown (gchar *string);
__attribute__((__deprecated__)) extern
gchar* g_strup (gchar *string);





extern
gchar* g_strdup (const gchar *str) __attribute__((__malloc__));
extern
gchar* g_strdup_printf (const gchar *format,
     ...) __attribute__((__format__ (__printf__, 1, 2))) __attribute__((__malloc__));
extern
gchar* g_strdup_vprintf (const gchar *format,
     va_list args) __attribute__((__format__ (__printf__, 1, 0))) __attribute__((__malloc__));
extern
gchar* g_strndup (const gchar *str,
     gsize n) __attribute__((__malloc__));
extern
gchar* g_strnfill (gsize length,
     gchar fill_char) __attribute__((__malloc__));
extern
gchar* g_strconcat (const gchar *string1,
     ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar* g_strjoin (const gchar *separator,
     ...) __attribute__((__malloc__)) __attribute__((__sentinel__));





extern
gchar* g_strcompress (const gchar *source) __attribute__((__malloc__));
# 251 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar* g_strescape (const gchar *source,
     const gchar *exceptions) __attribute__((__malloc__));

extern
gpointer g_memdup (gconstpointer mem,
     guint byte_size) __attribute__((__malloc__)) ;
# 268 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar** g_strsplit (const gchar *string,
     const gchar *delimiter,
     gint max_tokens) __attribute__((__malloc__));
extern
gchar ** g_strsplit_set (const gchar *string,
     const gchar *delimiters,
     gint max_tokens) __attribute__((__malloc__));
extern
gchar* g_strjoinv (const gchar *separator,
     gchar **str_array) __attribute__((__malloc__));
extern
void g_strfreev (gchar **str_array);
extern
gchar** g_strdupv (gchar **str_array) __attribute__((__malloc__));
extern
guint g_strv_length (gchar **str_array);

extern
gchar* g_stpcpy (gchar *dest,
                                        const char *src);

extern
gchar * g_str_to_ascii (const gchar *str,
                                                                         const gchar *from_locale);

extern
gchar ** g_str_tokenize_and_fold (const gchar *string,
                                                                         const gchar *translit_locale,
                                                                         gchar ***ascii_alternates);

extern
gboolean g_str_match_string (const gchar *search_term,
                                                                         const gchar *potential_hit,
                                                                         gboolean accept_alternates);
# 80 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gstringchunk.h" 1
# 36 "/usr/include/glib-2.0/glib/gstringchunk.h"
typedef struct _GStringChunk GStringChunk;

extern
GStringChunk* g_string_chunk_new (gsize size);
extern
void g_string_chunk_free (GStringChunk *chunk);
extern
void g_string_chunk_clear (GStringChunk *chunk);
extern
gchar* g_string_chunk_insert (GStringChunk *chunk,
                                           const gchar *string);
extern
gchar* g_string_chunk_insert_len (GStringChunk *chunk,
                                           const gchar *string,
                                           gssize len);
extern
gchar* g_string_chunk_insert_const (GStringChunk *chunk,
                                           const gchar *string);
# 82 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtestutils.h" 1
# 33 "/usr/include/glib-2.0/glib/gtestutils.h"
typedef struct GTestCase GTestCase;
typedef struct GTestSuite GTestSuite;
typedef void (*GTestFunc) (void);
typedef void (*GTestDataFunc) (gconstpointer user_data);
typedef void (*GTestFixtureFunc) (gpointer fixture,
                                  gconstpointer user_data);
# 112 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
int g_strcmp0 (const char *str1,
                                         const char *str2);


extern
void g_test_minimized_result (double minimized_quantity,
                                         const char *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_test_maximized_result (double maximized_quantity,
                                         const char *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));


extern
void g_test_init (int *argc,
                                         char ***argv,
                                         ...) __attribute__((__sentinel__));
# 140 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
gboolean g_test_subprocess (void);


extern
int g_test_run (void);

extern
void g_test_add_func (const char *testpath,
                                         GTestFunc test_func);

extern
void g_test_add_data_func (const char *testpath,
                                         gconstpointer test_data,
                                         GTestDataFunc test_func);

extern
void g_test_add_data_func_full (const char *testpath,
                                         gpointer test_data,
                                         GTestDataFunc test_func,
                                         GDestroyNotify data_free_func);


extern
void g_test_fail (void);
extern
void g_test_incomplete (const gchar *msg);
extern
void g_test_skip (const gchar *msg);
extern
gboolean g_test_failed (void);
extern
void g_test_set_nonfatal_assertions (void);
# 188 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
void g_test_message (const char *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
void g_test_bug_base (const char *uri_pattern);
extern
void g_test_bug (const char *bug_uri_snippet);

extern
void g_test_timer_start (void);
extern
double g_test_timer_elapsed (void);
extern
double g_test_timer_last (void);


extern
void g_test_queue_free (gpointer gfree_pointer);
extern
void g_test_queue_destroy (GDestroyNotify destroy_func,
                                         gpointer destroy_data);


typedef enum {
  G_TEST_TRAP_SILENCE_STDOUT = 1 << 7,
  G_TEST_TRAP_SILENCE_STDERR = 1 << 8,
  G_TEST_TRAP_INHERIT_STDIN = 1 << 9
} GTestTrapFlags;

__attribute__((__deprecated__)) extern
gboolean g_test_trap_fork (guint64 usec_timeout,
                                         GTestTrapFlags test_trap_flags);

typedef enum {
  G_TEST_SUBPROCESS_INHERIT_STDIN = 1 << 0,
  G_TEST_SUBPROCESS_INHERIT_STDOUT = 1 << 1,
  G_TEST_SUBPROCESS_INHERIT_STDERR = 1 << 2
} GTestSubprocessFlags;

extern
void g_test_trap_subprocess (const char *test_path,
                                         guint64 usec_timeout,
                                         GTestSubprocessFlags test_flags);

extern
gboolean g_test_trap_has_passed (void);
extern
gboolean g_test_trap_reached_timeout (void);
# 245 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
gint32 g_test_rand_int (void);
extern
gint32 g_test_rand_int_range (gint32 begin,
                                         gint32 end);
extern
double g_test_rand_double (void);
extern
double g_test_rand_double_range (double range_start,
                                         double range_end);


extern
GTestCase* g_test_create_case (const char *test_name,
                                         gsize data_size,
                                         gconstpointer test_data,
                                         GTestFixtureFunc data_setup,
                                         GTestFixtureFunc data_test,
                                         GTestFixtureFunc data_teardown);
extern
GTestSuite* g_test_create_suite (const char *suite_name);
extern
GTestSuite* g_test_get_root (void);
extern
void g_test_suite_add (GTestSuite *suite,
                                         GTestCase *test_case);
extern
void g_test_suite_add_suite (GTestSuite *suite,
                                         GTestSuite *nestedsuite);
extern
int g_test_run_suite (GTestSuite *suite);


extern
void g_test_trap_assertions (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         guint64 assertion_flags,
                                         const char *pattern);
extern
void g_assertion_message (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *message);
extern
void g_assertion_message_expr (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr) __attribute__((__noreturn__));
extern
void g_assertion_message_cmpstr (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         const char *arg1,
                                         const char *cmp,
                                         const char *arg2);
extern
void g_assertion_message_cmpnum (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         long double arg1,
                                         const char *cmp,
                                         long double arg2,
                                         char numtype);
extern
void g_assertion_message_error (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         const GError *error,
                                         GQuark error_domain,
                                         int error_code);
extern
void g_test_add_vtable (const char *testpath,
                                         gsize data_size,
                                         gconstpointer test_data,
                                         GTestFixtureFunc data_setup,
                                         GTestFixtureFunc data_test,
                                         GTestFixtureFunc data_teardown);
typedef struct {
  gboolean test_initialized;
  gboolean test_quick;
  gboolean test_perf;
  gboolean test_verbose;
  gboolean test_quiet;
  gboolean test_undefined;
} GTestConfig;
extern const GTestConfig * const g_test_config_vars;


typedef enum {
  G_TEST_LOG_NONE,
  G_TEST_LOG_ERROR,
  G_TEST_LOG_START_BINARY,
  G_TEST_LOG_LIST_CASE,
  G_TEST_LOG_SKIP_CASE,
  G_TEST_LOG_START_CASE,
  G_TEST_LOG_STOP_CASE,
  G_TEST_LOG_MIN_RESULT,
  G_TEST_LOG_MAX_RESULT,
  G_TEST_LOG_MESSAGE,
  G_TEST_LOG_START_SUITE,
  G_TEST_LOG_STOP_SUITE
} GTestLogType;

typedef struct {
  GTestLogType log_type;
  guint n_strings;
  gchar **strings;
  guint n_nums;
  long double *nums;
} GTestLogMsg;
typedef struct {

  GString *data;
  GSList *msgs;
} GTestLogBuffer;

extern
const char* g_test_log_type_name (GTestLogType log_type);
extern
GTestLogBuffer* g_test_log_buffer_new (void);
extern
void g_test_log_buffer_free (GTestLogBuffer *tbuffer);
extern
void g_test_log_buffer_push (GTestLogBuffer *tbuffer,
                                         guint n_bytes,
                                         const guint8 *bytes);
extern
GTestLogMsg* g_test_log_buffer_pop (GTestLogBuffer *tbuffer);
extern
void g_test_log_msg_free (GTestLogMsg *tmsg);
# 399 "/usr/include/glib-2.0/glib/gtestutils.h"
typedef gboolean (*GTestLogFatalFunc) (const gchar *log_domain,
                                                 GLogLevelFlags log_level,
                                                 const gchar *message,
                                                 gpointer user_data);
extern
void
g_test_log_set_fatal_handler (GTestLogFatalFunc log_func,
                                         gpointer user_data);

extern
void g_test_expect_message (const gchar *log_domain,
                                                  GLogLevelFlags log_level,
                                                  const gchar *pattern);
extern
void g_test_assert_expected_messages_internal (const char *domain,
                                                  const char *file,
                                                  int line,
                                                  const char *func);

typedef enum
{
  G_TEST_DIST,
  G_TEST_BUILT
} GTestFileType;

extern
gchar * g_test_build_filename (GTestFileType file_type,
                                                  const gchar *first_path,
                                                  ...) __attribute__((__sentinel__));
extern
const gchar *g_test_get_dir (GTestFileType file_type);
extern
const gchar *g_test_get_filename (GTestFileType file_type,
                                                  const gchar *first_path,
                                                  ...) __attribute__((__sentinel__));
# 83 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gthreadpool.h" 1
# 36 "/usr/include/glib-2.0/glib/gthreadpool.h"
typedef struct _GThreadPool GThreadPool;




struct _GThreadPool
{
  GFunc func;
  gpointer user_data;
  gboolean exclusive;
};

extern
GThreadPool * g_thread_pool_new (GFunc func,
                                                 gpointer user_data,
                                                 gint max_threads,
                                                 gboolean exclusive,
                                                 GError **error);
extern
void g_thread_pool_free (GThreadPool *pool,
                                                 gboolean immediate,
                                                 gboolean wait_);
extern
gboolean g_thread_pool_push (GThreadPool *pool,
                                                 gpointer data,
                                                 GError **error);
extern
guint g_thread_pool_unprocessed (GThreadPool *pool);
extern
void g_thread_pool_set_sort_function (GThreadPool *pool,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
gboolean g_thread_pool_set_max_threads (GThreadPool *pool,
                                                 gint max_threads,
                                                 GError **error);
extern
gint g_thread_pool_get_max_threads (GThreadPool *pool);
extern
guint g_thread_pool_get_num_threads (GThreadPool *pool);

extern
void g_thread_pool_set_max_unused_threads (gint max_threads);
extern
gint g_thread_pool_get_max_unused_threads (void);
extern
guint g_thread_pool_get_num_unused_threads (void);
extern
void g_thread_pool_stop_unused_threads (void);
extern
void g_thread_pool_set_max_idle_time (guint interval);
extern
guint g_thread_pool_get_max_idle_time (void);
# 85 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtimer.h" 1
# 40 "/usr/include/glib-2.0/glib/gtimer.h"
typedef struct _GTimer GTimer;



extern
GTimer* g_timer_new (void);
extern
void g_timer_destroy (GTimer *timer);
extern
void g_timer_start (GTimer *timer);
extern
void g_timer_stop (GTimer *timer);
extern
void g_timer_reset (GTimer *timer);
extern
void g_timer_continue (GTimer *timer);
extern
gdouble g_timer_elapsed (GTimer *timer,
      gulong *microseconds);

extern
void g_usleep (gulong microseconds);

extern
void g_time_val_add (GTimeVal *time_,
                                  glong microseconds);
extern
gboolean g_time_val_from_iso8601 (const gchar *iso_date,
      GTimeVal *time_);
extern
gchar* g_time_val_to_iso8601 (GTimeVal *time_) __attribute__((__malloc__));
# 86 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gtrashstack.h" 1
# 36 "/usr/include/glib-2.0/glib/gtrashstack.h"
typedef struct _GTrashStack GTrashStack;
struct _GTrashStack
{
  GTrashStack *next;
};

static __inline __attribute__ ((unused)) void g_trash_stack_push (GTrashStack **stack_p,
                                              gpointer data_p);
static __inline __attribute__ ((unused)) gpointer g_trash_stack_pop (GTrashStack **stack_p);
static __inline __attribute__ ((unused)) gpointer g_trash_stack_peek (GTrashStack **stack_p);
static __inline __attribute__ ((unused)) guint g_trash_stack_height (GTrashStack **stack_p);



static __inline __attribute__ ((unused)) void
g_trash_stack_push (GTrashStack **stack_p,
                    gpointer data_p)
{
  GTrashStack *data = (GTrashStack *) data_p;

  data->next = *stack_p;
  *stack_p = data;
}
static __inline __attribute__ ((unused)) gpointer
g_trash_stack_pop (GTrashStack **stack_p)
{
  GTrashStack *data;

  data = *stack_p;
  if (data)
    {
      *stack_p = data->next;



      data->next = ((void*)0);
    }

  return data;
}
static __inline __attribute__ ((unused)) gpointer
g_trash_stack_peek (GTrashStack **stack_p)
{
  GTrashStack *data;

  data = *stack_p;

  return data;
}
static __inline __attribute__ ((unused)) guint
g_trash_stack_height (GTrashStack **stack_p)
{
  GTrashStack *data;
  guint i = 0;

  for (data = *stack_p; data; data = data->next)
    i++;

  return i;
}
# 88 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtree.h" 1
# 36 "/usr/include/glib-2.0/glib/gtree.h"
typedef struct _GTree GTree;

typedef gboolean (*GTraverseFunc) (gpointer key,
                                   gpointer value,
                                   gpointer data);



extern
GTree* g_tree_new (GCompareFunc key_compare_func);
extern
GTree* g_tree_new_with_data (GCompareDataFunc key_compare_func,
                                 gpointer key_compare_data);
extern
GTree* g_tree_new_full (GCompareDataFunc key_compare_func,
                                 gpointer key_compare_data,
                                 GDestroyNotify key_destroy_func,
                                 GDestroyNotify value_destroy_func);
extern
GTree* g_tree_ref (GTree *tree);
extern
void g_tree_unref (GTree *tree);
extern
void g_tree_destroy (GTree *tree);
extern
void g_tree_insert (GTree *tree,
                                 gpointer key,
                                 gpointer value);
extern
void g_tree_replace (GTree *tree,
                                 gpointer key,
                                 gpointer value);
extern
gboolean g_tree_remove (GTree *tree,
                                 gconstpointer key);
extern
gboolean g_tree_steal (GTree *tree,
                                 gconstpointer key);
extern
gpointer g_tree_lookup (GTree *tree,
                                 gconstpointer key);
extern
gboolean g_tree_lookup_extended (GTree *tree,
                                 gconstpointer lookup_key,
                                 gpointer *orig_key,
                                 gpointer *value);
extern
void g_tree_foreach (GTree *tree,
                                 GTraverseFunc func,
                                 gpointer user_data);

__attribute__((__deprecated__)) extern
void g_tree_traverse (GTree *tree,
                                 GTraverseFunc traverse_func,
                                 GTraverseType traverse_type,
                                 gpointer user_data);

extern
gpointer g_tree_search (GTree *tree,
                                 GCompareFunc search_func,
                                 gconstpointer user_data);
extern
gint g_tree_height (GTree *tree);
extern
gint g_tree_nnodes (GTree *tree);
# 89 "/usr/include/glib-2.0/glib.h" 2


# 1 "/usr/include/glib-2.0/glib/gurifuncs.h" 1
# 67 "/usr/include/glib-2.0/glib/gurifuncs.h"
extern
char * g_uri_unescape_string (const char *escaped_string,
          const char *illegal_characters);
extern
char * g_uri_unescape_segment (const char *escaped_string,
          const char *escaped_string_end,
          const char *illegal_characters);
extern
char * g_uri_parse_scheme (const char *uri);
extern
char * g_uri_escape_string (const char *unescaped,
          const char *reserved_chars_allowed,
          gboolean allow_utf8);
# 92 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gvarianttype.h" 1
# 42 "/usr/include/glib-2.0/glib/gvarianttype.h"
typedef struct _GVariantType GVariantType;
# 295 "/usr/include/glib-2.0/glib/gvarianttype.h"
extern
gboolean g_variant_type_string_is_valid (const gchar *type_string);
extern
gboolean g_variant_type_string_scan (const gchar *string,
                                                                         const gchar *limit,
                                                                         const gchar **endptr);


extern
void g_variant_type_free (GVariantType *type);
extern
GVariantType * g_variant_type_copy (const GVariantType *type);
extern
GVariantType * g_variant_type_new (const gchar *type_string);


extern
gsize g_variant_type_get_string_length (const GVariantType *type);
extern
const gchar * g_variant_type_peek_string (const GVariantType *type);
extern
gchar * g_variant_type_dup_string (const GVariantType *type);


extern
gboolean g_variant_type_is_definite (const GVariantType *type);
extern
gboolean g_variant_type_is_container (const GVariantType *type);
extern
gboolean g_variant_type_is_basic (const GVariantType *type);
extern
gboolean g_variant_type_is_maybe (const GVariantType *type);
extern
gboolean g_variant_type_is_array (const GVariantType *type);
extern
gboolean g_variant_type_is_tuple (const GVariantType *type);
extern
gboolean g_variant_type_is_dict_entry (const GVariantType *type);
extern
gboolean g_variant_type_is_variant (const GVariantType *type);


extern
guint g_variant_type_hash (gconstpointer type);
extern
gboolean g_variant_type_equal (gconstpointer type1,
                                                                         gconstpointer type2);


extern
gboolean g_variant_type_is_subtype_of (const GVariantType *type,
                                                                         const GVariantType *supertype);


extern
const GVariantType * g_variant_type_element (const GVariantType *type);
extern
const GVariantType * g_variant_type_first (const GVariantType *type);
extern
const GVariantType * g_variant_type_next (const GVariantType *type);
extern
gsize g_variant_type_n_items (const GVariantType *type);
extern
const GVariantType * g_variant_type_key (const GVariantType *type);
extern
const GVariantType * g_variant_type_value (const GVariantType *type);


extern
GVariantType * g_variant_type_new_array (const GVariantType *element);
extern
GVariantType * g_variant_type_new_maybe (const GVariantType *element);
extern
GVariantType * g_variant_type_new_tuple (const GVariantType * const *items,
                                                                         gint length);
extern
GVariantType * g_variant_type_new_dict_entry (const GVariantType *key,
                                                                         const GVariantType *value);


extern
const GVariantType * g_variant_type_checked_ (const gchar *);
# 94 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gvariant.h" 1
# 34 "/usr/include/glib-2.0/glib/gvariant.h"
typedef struct _GVariant GVariant;

typedef enum
{
  G_VARIANT_CLASS_BOOLEAN = 'b',
  G_VARIANT_CLASS_BYTE = 'y',
  G_VARIANT_CLASS_INT16 = 'n',
  G_VARIANT_CLASS_UINT16 = 'q',
  G_VARIANT_CLASS_INT32 = 'i',
  G_VARIANT_CLASS_UINT32 = 'u',
  G_VARIANT_CLASS_INT64 = 'x',
  G_VARIANT_CLASS_UINT64 = 't',
  G_VARIANT_CLASS_HANDLE = 'h',
  G_VARIANT_CLASS_DOUBLE = 'd',
  G_VARIANT_CLASS_STRING = 's',
  G_VARIANT_CLASS_OBJECT_PATH = 'o',
  G_VARIANT_CLASS_SIGNATURE = 'g',
  G_VARIANT_CLASS_VARIANT = 'v',
  G_VARIANT_CLASS_MAYBE = 'm',
  G_VARIANT_CLASS_ARRAY = 'a',
  G_VARIANT_CLASS_TUPLE = '(',
  G_VARIANT_CLASS_DICT_ENTRY = '{'
} GVariantClass;

extern
void g_variant_unref (GVariant *value);
extern
GVariant * g_variant_ref (GVariant *value);
extern
GVariant * g_variant_ref_sink (GVariant *value);
extern
gboolean g_variant_is_floating (GVariant *value);
extern
GVariant * g_variant_take_ref (GVariant *value);

extern
const GVariantType * g_variant_get_type (GVariant *value);
extern
const gchar * g_variant_get_type_string (GVariant *value);
extern
gboolean g_variant_is_of_type (GVariant *value,
                                                                         const GVariantType *type);
extern
gboolean g_variant_is_container (GVariant *value);
extern
GVariantClass g_variant_classify (GVariant *value);
extern
GVariant * g_variant_new_boolean (gboolean value);
extern
GVariant * g_variant_new_byte (guchar value);
extern
GVariant * g_variant_new_int16 (gint16 value);
extern
GVariant * g_variant_new_uint16 (guint16 value);
extern
GVariant * g_variant_new_int32 (gint32 value);
extern
GVariant * g_variant_new_uint32 (guint32 value);
extern
GVariant * g_variant_new_int64 (gint64 value);
extern
GVariant * g_variant_new_uint64 (guint64 value);
extern
GVariant * g_variant_new_handle (gint32 value);
extern
GVariant * g_variant_new_double (gdouble value);
extern
GVariant * g_variant_new_string (const gchar *string);
extern
GVariant * g_variant_new_take_string (gchar *string);
extern
GVariant * g_variant_new_printf (const gchar *format_string,
                                                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GVariant * g_variant_new_object_path (const gchar *object_path);
extern
gboolean g_variant_is_object_path (const gchar *string);
extern
GVariant * g_variant_new_signature (const gchar *signature);
extern
gboolean g_variant_is_signature (const gchar *string);
extern
GVariant * g_variant_new_variant (GVariant *value);
extern
GVariant * g_variant_new_strv (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_objv (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_bytestring (const gchar *string);
extern
GVariant * g_variant_new_bytestring_array (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_fixed_array (const GVariantType *element_type,
                                                                         gconstpointer elements,
                                                                         gsize n_elements,
                                                                         gsize element_size);
extern
gboolean g_variant_get_boolean (GVariant *value);
extern
guchar g_variant_get_byte (GVariant *value);
extern
gint16 g_variant_get_int16 (GVariant *value);
extern
guint16 g_variant_get_uint16 (GVariant *value);
extern
gint32 g_variant_get_int32 (GVariant *value);
extern
guint32 g_variant_get_uint32 (GVariant *value);
extern
gint64 g_variant_get_int64 (GVariant *value);
extern
guint64 g_variant_get_uint64 (GVariant *value);
extern
gint32 g_variant_get_handle (GVariant *value);
extern
gdouble g_variant_get_double (GVariant *value);
extern
GVariant * g_variant_get_variant (GVariant *value);
extern
const gchar * g_variant_get_string (GVariant *value,
                                                                         gsize *length);
extern
gchar * g_variant_dup_string (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_strv (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_strv (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_objv (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_objv (GVariant *value,
                                                                         gsize *length);
extern
const gchar * g_variant_get_bytestring (GVariant *value);
extern
gchar * g_variant_dup_bytestring (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_bytestring_array (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_bytestring_array (GVariant *value,
                                                                         gsize *length);

extern
GVariant * g_variant_new_maybe (const GVariantType *child_type,
                                                                         GVariant *child);
extern
GVariant * g_variant_new_array (const GVariantType *child_type,
                                                                         GVariant * const *children,
                                                                         gsize n_children);
extern
GVariant * g_variant_new_tuple (GVariant * const *children,
                                                                         gsize n_children);
extern
GVariant * g_variant_new_dict_entry (GVariant *key,
                                                                         GVariant *value);

extern
GVariant * g_variant_get_maybe (GVariant *value);
extern
gsize g_variant_n_children (GVariant *value);
extern
void g_variant_get_child (GVariant *value,
                                                                         gsize index_,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_get_child_value (GVariant *value,
                                                                         gsize index_);
extern
gboolean g_variant_lookup (GVariant *dictionary,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_lookup_value (GVariant *dictionary,
                                                                         const gchar *key,
                                                                         const GVariantType *expected_type);
extern
gconstpointer g_variant_get_fixed_array (GVariant *value,
                                                                         gsize *n_elements,
                                                                         gsize element_size);

extern
gsize g_variant_get_size (GVariant *value);
extern
gconstpointer g_variant_get_data (GVariant *value);
extern
GBytes * g_variant_get_data_as_bytes (GVariant *value);
extern
void g_variant_store (GVariant *value,
                                                                         gpointer data);

extern
gchar * g_variant_print (GVariant *value,
                                                                         gboolean type_annotate);
extern
GString * g_variant_print_string (GVariant *value,
                                                                         GString *string,
                                                                         gboolean type_annotate);

extern
guint g_variant_hash (gconstpointer value);
extern
gboolean g_variant_equal (gconstpointer one,
                                                                         gconstpointer two);

extern
GVariant * g_variant_get_normal_form (GVariant *value);
extern
gboolean g_variant_is_normal_form (GVariant *value);
extern
GVariant * g_variant_byteswap (GVariant *value);

extern
GVariant * g_variant_new_from_bytes (const GVariantType *type,
                                                                         GBytes *bytes,
                                                                         gboolean trusted);
extern
GVariant * g_variant_new_from_data (const GVariantType *type,
                                                                         gconstpointer data,
                                                                         gsize size,
                                                                         gboolean trusted,
                                                                         GDestroyNotify notify,
                                                                         gpointer user_data);

typedef struct _GVariantIter GVariantIter;
struct _GVariantIter {

  gsize x[16];
};

extern
GVariantIter * g_variant_iter_new (GVariant *value);
extern
gsize g_variant_iter_init (GVariantIter *iter,
                                                                         GVariant *value);
extern
GVariantIter * g_variant_iter_copy (GVariantIter *iter);
extern
gsize g_variant_iter_n_children (GVariantIter *iter);
extern
void g_variant_iter_free (GVariantIter *iter);
extern
GVariant * g_variant_iter_next_value (GVariantIter *iter);
extern
gboolean g_variant_iter_next (GVariantIter *iter,
                                                                         const gchar *format_string,
                                                                         ...);
extern
gboolean g_variant_iter_loop (GVariantIter *iter,
                                                                         const gchar *format_string,
                                                                         ...);


typedef struct _GVariantBuilder GVariantBuilder;
struct _GVariantBuilder {

  gsize x[16];
};

typedef enum
{
  G_VARIANT_PARSE_ERROR_FAILED,
  G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED,
  G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE,
  G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED,
  G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END,
  G_VARIANT_PARSE_ERROR_INVALID_CHARACTER,
  G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING,
  G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH,
  G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE,
  G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING,
  G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE,
  G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE,
  G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG,
  G_VARIANT_PARSE_ERROR_TYPE_ERROR,
  G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN,
  G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD,
  G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT,
  G_VARIANT_PARSE_ERROR_VALUE_EXPECTED
} GVariantParseError;


__attribute__((__deprecated__)) extern
GQuark g_variant_parser_get_error_quark (void);

extern
GQuark g_variant_parse_error_quark (void);

extern
GVariantBuilder * g_variant_builder_new (const GVariantType *type);
extern
void g_variant_builder_unref (GVariantBuilder *builder);
extern
GVariantBuilder * g_variant_builder_ref (GVariantBuilder *builder);
extern
void g_variant_builder_init (GVariantBuilder *builder,
                                                                         const GVariantType *type);
extern
GVariant * g_variant_builder_end (GVariantBuilder *builder);
extern
void g_variant_builder_clear (GVariantBuilder *builder);
extern
void g_variant_builder_open (GVariantBuilder *builder,
                                                                         const GVariantType *type);
extern
void g_variant_builder_close (GVariantBuilder *builder);
extern
void g_variant_builder_add_value (GVariantBuilder *builder,
                                                                         GVariant *value);
extern
void g_variant_builder_add (GVariantBuilder *builder,
                                                                         const gchar *format_string,
                                                                         ...);
extern
void g_variant_builder_add_parsed (GVariantBuilder *builder,
                                                                         const gchar *format,
                                                                         ...);

extern
GVariant * g_variant_new (const gchar *format_string,
                                                                         ...);
extern
void g_variant_get (GVariant *value,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_new_va (const gchar *format_string,
                                                                         const gchar **endptr,
                                                                         va_list *app);
extern
void g_variant_get_va (GVariant *value,
                                                                         const gchar *format_string,
                                                                         const gchar **endptr,
                                                                         va_list *app);
extern
gboolean g_variant_check_format_string (GVariant *value,
                                                                         const gchar *format_string,
                                                                         gboolean copy_only);

extern
GVariant * g_variant_parse (const GVariantType *type,
                                                                         const gchar *text,
                                                                         const gchar *limit,
                                                                         const gchar **endptr,
                                                                         GError **error);
extern
GVariant * g_variant_new_parsed (const gchar *format,
                                                                         ...);
extern
GVariant * g_variant_new_parsed_va (const gchar *format,
                                                                         va_list *app);

extern
gchar * g_variant_parse_error_print_context (GError *error,
                                                                         const gchar *source_str);

extern
gint g_variant_compare (gconstpointer one,
                                                                         gconstpointer two);

typedef struct _GVariantDict GVariantDict;
struct _GVariantDict {

  gsize x[16];
};

extern
GVariantDict * g_variant_dict_new (GVariant *from_asv);

extern
void g_variant_dict_init (GVariantDict *dict,
                                                                         GVariant *from_asv);

extern
gboolean g_variant_dict_lookup (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_dict_lookup_value (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const GVariantType *expected_type);
extern
gboolean g_variant_dict_contains (GVariantDict *dict,
                                                                         const gchar *key);
extern
void g_variant_dict_insert (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
void g_variant_dict_insert_value (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         GVariant *value);
extern
gboolean g_variant_dict_remove (GVariantDict *dict,
                                                                         const gchar *key);
extern
void g_variant_dict_clear (GVariantDict *dict);
extern
GVariant * g_variant_dict_end (GVariantDict *dict);
extern
GVariantDict * g_variant_dict_ref (GVariantDict *dict);
extern
void g_variant_dict_unref (GVariantDict *dict);
# 95 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gversion.h" 1
# 36 "/usr/include/glib-2.0/glib/gversion.h"
extern const guint glib_major_version;
extern const guint glib_minor_version;
extern const guint glib_micro_version;
extern const guint glib_interface_age;
extern const guint glib_binary_age;

extern
const gchar * glib_check_version (guint required_major,
                                  guint required_minor,
                                  guint required_micro);
# 96 "/usr/include/glib-2.0/glib.h" 2






# 1 "/usr/include/glib-2.0/glib/deprecated/gallocator.h" 1
# 27 "/usr/include/glib-2.0/glib/deprecated/gallocator.h"
typedef struct _GAllocator GAllocator;
typedef struct _GMemChunk GMemChunk;
# 42 "/usr/include/glib-2.0/glib/deprecated/gallocator.h"
__attribute__((__deprecated__)) extern
GMemChunk * g_mem_chunk_new (const gchar *name,
                                         gint atom_size,
                                         gsize area_size,
                                         gint type);
__attribute__((__deprecated__)) extern
void g_mem_chunk_destroy (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
gpointer g_mem_chunk_alloc (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
gpointer g_mem_chunk_alloc0 (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_free (GMemChunk *mem_chunk,
                                         gpointer mem);
__attribute__((__deprecated__)) extern
void g_mem_chunk_clean (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_reset (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_print (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_info (void);
__attribute__((__deprecated__)) extern
void g_blow_chunks (void);


__attribute__((__deprecated__)) extern
GAllocator * g_allocator_new (const gchar *name,
                                         guint n_preallocs);
__attribute__((__deprecated__)) extern
void g_allocator_free (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_list_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_list_pop_allocator (void);
__attribute__((__deprecated__)) extern
void g_slist_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_slist_pop_allocator (void);
__attribute__((__deprecated__)) extern
void g_node_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_node_pop_allocator (void);
# 103 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gcache.h" 1
# 38 "/usr/include/glib-2.0/glib/deprecated/gcache.h"
typedef struct _GCache GCache;

typedef gpointer (*GCacheNewFunc) (gpointer key);
typedef gpointer (*GCacheDupFunc) (gpointer value);
typedef void (*GCacheDestroyFunc) (gpointer value);



__attribute__((__deprecated__)) extern
GCache* g_cache_new (GCacheNewFunc value_new_func,
                                GCacheDestroyFunc value_destroy_func,
                                GCacheDupFunc key_dup_func,
                                GCacheDestroyFunc key_destroy_func,
                                GHashFunc hash_key_func,
                                GHashFunc hash_value_func,
                                GEqualFunc key_equal_func);
__attribute__((__deprecated__)) extern
void g_cache_destroy (GCache *cache);
__attribute__((__deprecated__)) extern
gpointer g_cache_insert (GCache *cache,
                                gpointer key);
__attribute__((__deprecated__)) extern
void g_cache_remove (GCache *cache,
                                gconstpointer value);
__attribute__((__deprecated__)) extern
void g_cache_key_foreach (GCache *cache,
                                GHFunc func,
                                gpointer user_data);
__attribute__((__deprecated__)) extern
void g_cache_value_foreach (GCache *cache,
                                GHFunc func,
                                gpointer user_data);
# 104 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gcompletion.h" 1
# 36 "/usr/include/glib-2.0/glib/deprecated/gcompletion.h"
typedef struct _GCompletion GCompletion;

typedef gchar* (*GCompletionFunc) (gpointer);




typedef gint (*GCompletionStrncmpFunc) (const gchar *s1,
                                        const gchar *s2,
                                        gsize n);

struct _GCompletion
{
  GList* items;
  GCompletionFunc func;

  gchar* prefix;
  GList* cache;
  GCompletionStrncmpFunc strncmp_func;
};

__attribute__((__deprecated__)) extern
GCompletion* g_completion_new (GCompletionFunc func);
__attribute__((__deprecated__)) extern
void g_completion_add_items (GCompletion* cmp,
                                         GList* items);
__attribute__((__deprecated__)) extern
void g_completion_remove_items (GCompletion* cmp,
                                         GList* items);
__attribute__((__deprecated__)) extern
void g_completion_clear_items (GCompletion* cmp);
__attribute__((__deprecated__)) extern
GList* g_completion_complete (GCompletion* cmp,
                                         const gchar* prefix,
                                         gchar** new_prefix);
__attribute__((__deprecated__)) extern
GList* g_completion_complete_utf8 (GCompletion *cmp,
                                         const gchar* prefix,
                                         gchar** new_prefix);
__attribute__((__deprecated__)) extern
void g_completion_set_compare (GCompletion *cmp,
                                         GCompletionStrncmpFunc strncmp_func);
__attribute__((__deprecated__)) extern
void g_completion_free (GCompletion* cmp);
# 105 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gmain.h" 1
# 106 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/grel.h" 1
# 36 "/usr/include/glib-2.0/glib/deprecated/grel.h"
typedef struct _GRelation GRelation;
typedef struct _GTuples GTuples;

struct _GTuples
{
  guint len;
};
# 67 "/usr/include/glib-2.0/glib/deprecated/grel.h"
__attribute__((__deprecated__)) extern
GRelation* g_relation_new (gint fields);
__attribute__((__deprecated__)) extern
void g_relation_destroy (GRelation *relation);
__attribute__((__deprecated__)) extern
void g_relation_index (GRelation *relation,
                               gint field,
                               GHashFunc hash_func,
                               GEqualFunc key_equal_func);
__attribute__((__deprecated__)) extern
void g_relation_insert (GRelation *relation,
                               ...);
__attribute__((__deprecated__)) extern
gint g_relation_delete (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
GTuples* g_relation_select (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
gint g_relation_count (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
gboolean g_relation_exists (GRelation *relation,
                               ...);
__attribute__((__deprecated__)) extern
void g_relation_print (GRelation *relation);
__attribute__((__deprecated__)) extern
void g_tuples_destroy (GTuples *tuples);
__attribute__((__deprecated__)) extern
gpointer g_tuples_index (GTuples *tuples,
                               gint index_,
                               gint field);
# 107 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 1
# 38 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
typedef enum
{
  G_THREAD_PRIORITY_LOW,
  G_THREAD_PRIORITY_NORMAL,
  G_THREAD_PRIORITY_HIGH,
  G_THREAD_PRIORITY_URGENT
} GThreadPriority;



struct _GThread
{

  GThreadFunc func;
  gpointer data;
  gboolean joinable;
  GThreadPriority priority;
};



typedef struct _GThreadFunctions GThreadFunctions;
struct _GThreadFunctions
{
  GMutex* (*mutex_new) (void);
  void (*mutex_lock) (GMutex *mutex);
  gboolean (*mutex_trylock) (GMutex *mutex);
  void (*mutex_unlock) (GMutex *mutex);
  void (*mutex_free) (GMutex *mutex);
  GCond* (*cond_new) (void);
  void (*cond_signal) (GCond *cond);
  void (*cond_broadcast) (GCond *cond);
  void (*cond_wait) (GCond *cond,
                                   GMutex *mutex);
  gboolean (*cond_timed_wait) (GCond *cond,
                                   GMutex *mutex,
                                   GTimeVal *end_time);
  void (*cond_free) (GCond *cond);
  GPrivate* (*private_new) (GDestroyNotify destructor);
  gpointer (*private_get) (GPrivate *private_key);
  void (*private_set) (GPrivate *private_key,
                                   gpointer data);
  void (*thread_create) (GThreadFunc func,
                                   gpointer data,
                                   gulong stack_size,
                                   gboolean joinable,
                                   gboolean bound,
                                   GThreadPriority priority,
                                   gpointer thread,
                                   GError **error);
  void (*thread_yield) (void);
  void (*thread_join) (gpointer thread);
  void (*thread_exit) (void);
  void (*thread_set_priority)(gpointer thread,
                                   GThreadPriority priority);
  void (*thread_self) (gpointer thread);
  gboolean (*thread_equal) (gpointer thread1,
                                   gpointer thread2);
};

extern GThreadFunctions g_thread_functions_for_glib_use;
extern gboolean g_thread_use_default_impl;

extern guint64 (*g_thread_gettime) (void);

__attribute__((__deprecated__)) extern
GThread *g_thread_create (GThreadFunc func,
                                gpointer data,
                                gboolean joinable,
                                GError **error);

__attribute__((__deprecated__)) extern
GThread *g_thread_create_full (GThreadFunc func,
                                gpointer data,
                                gulong stack_size,
                                gboolean joinable,
                                gboolean bound,
                                GThreadPriority priority,
                                GError **error);

__attribute__((__deprecated__)) extern
void g_thread_set_priority (GThread *thread,
                                GThreadPriority priority);

__attribute__((__deprecated__)) extern
void g_thread_foreach (GFunc thread_func,
                                gpointer user_data);



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
# 34 "/usr/include/sys/select.h" 2 3 4
# 45 "/usr/include/sys/select.h" 3 4
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
# 223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 128 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 2
# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 29 "/usr/include/sched.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 30 "/usr/include/sched.h" 2 3 4
# 42 "/usr/include/sched.h" 3 4
# 1 "/usr/include/bits/sched.h" 1 3 4
# 73 "/usr/include/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };
# 104 "/usr/include/bits/sched.h" 3 4
struct __sched_param
  {
    int __sched_priority;
  };
# 119 "/usr/include/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 204 "/usr/include/bits/sched.h" 3 4
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ ));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ )) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ ));
# 43 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ ));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ ));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ ));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ ));


extern int sched_yield (void) __attribute__ ((__nothrow__ ));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ ));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ ));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ ));
# 24 "/usr/include/pthread.h" 2 3 4



# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 113 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 154 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 189 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 232 "/usr/include/pthread.h" 3 4
extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 270 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ ));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ )) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 420 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ ));
# 485 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 497 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 531 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 671 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
                            ;
# 683 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
                         ;
# 724 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
                             __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 797 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 879 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 991 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1035 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1102 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ ));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ ));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ )) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 1136 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ ));
# 129 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 2




typedef struct
{
  GMutex *mutex;


  pthread_mutex_t unused;

} GStaticMutex;
# 149 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
__attribute__((__deprecated__)) extern
void g_static_mutex_init (GStaticMutex *mutex);
__attribute__((__deprecated__)) extern
void g_static_mutex_free (GStaticMutex *mutex);
__attribute__((__deprecated__)) extern
GMutex *g_static_mutex_get_mutex_impl (GStaticMutex *mutex);

typedef struct _GStaticRecMutex GStaticRecMutex;
struct _GStaticRecMutex
{

  GStaticMutex mutex;
  guint depth;


  union {



    pthread_t owner;

    gdouble dummy;
  } unused;
};


__attribute__((__deprecated__)) extern
void g_static_rec_mutex_init (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_lock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
gboolean g_static_rec_mutex_trylock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_unlock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_lock_full (GStaticRecMutex *mutex,
                                         guint depth);

__attribute__((__deprecated__)) extern
guint g_static_rec_mutex_unlock_full (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_free (GStaticRecMutex *mutex);

typedef struct _GStaticRWLock GStaticRWLock;
struct _GStaticRWLock
{

  GStaticMutex mutex;
  GCond *read_cond;
  GCond *write_cond;
  guint read_counter;
  gboolean have_writer;
  guint want_to_read;
  guint want_to_write;
};



__attribute__((__deprecated__)) extern
void g_static_rw_lock_init (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_reader_lock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
gboolean g_static_rw_lock_reader_trylock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_reader_unlock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_writer_lock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
gboolean g_static_rw_lock_writer_trylock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_writer_unlock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_free (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
GPrivate * g_private_new (GDestroyNotify notify);

typedef struct _GStaticPrivate GStaticPrivate;
struct _GStaticPrivate
{

  guint index;
};


__attribute__((__deprecated__)) extern
void g_static_private_init (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
gpointer g_static_private_get (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
void g_static_private_set (GStaticPrivate *private_key,
                                          gpointer data,
                                          GDestroyNotify notify);

__attribute__((__deprecated__)) extern
void g_static_private_free (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
gboolean g_once_init_enter_impl (volatile gsize *location);

__attribute__((__deprecated__)) extern
void g_thread_init (gpointer vtable);
__attribute__((__deprecated__)) extern
void g_thread_init_with_errorcheck_mutexes (gpointer vtable);

__attribute__((__deprecated__)) extern
gboolean g_thread_get_initialized (void);

extern gboolean g_threads_got_initialized;



__attribute__((__deprecated__)) extern
GMutex * g_mutex_new (void);
__attribute__((__deprecated__)) extern
void g_mutex_free (GMutex *mutex);
__attribute__((__deprecated__)) extern
GCond * g_cond_new (void);
__attribute__((__deprecated__)) extern
void g_cond_free (GCond *cond);
__attribute__((__deprecated__)) extern
gboolean g_cond_timed_wait (GCond *cond,
                                         GMutex *mutex,
                                         GTimeVal *timeval);
# 108 "/usr/include/glib-2.0/glib.h" 2
# 22 "/usr/include/glib-2.0/glib/gi18n.h" 2

# 1 "/usr/include/libintl.h" 1 3 4
# 39 "/usr/include/libintl.h" 3 4
extern char *gettext (const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (1)));



extern char *dgettext (const char *__domainname, const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));
extern char *__dgettext (const char *__domainname, const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));



extern char *dcgettext (const char *__domainname,
   const char *__msgid, int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));
extern char *__dcgettext (const char *__domainname,
     const char *__msgid, int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));




extern char *ngettext (const char *__msgid1, const char *__msgid2,
         unsigned long int __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (1))) __attribute__ ((__format_arg__ (2)));



extern char *dngettext (const char *__domainname, const char *__msgid1,
   const char *__msgid2, unsigned long int __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2))) __attribute__ ((__format_arg__ (3)));



extern char *dcngettext (const char *__domainname, const char *__msgid1,
    const char *__msgid2, unsigned long int __n,
    int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2))) __attribute__ ((__format_arg__ (3)));





extern char *textdomain (const char *__domainname) __attribute__ ((__nothrow__ ));



extern char *bindtextdomain (const char *__domainname,
        const char *__dirname) __attribute__ ((__nothrow__ ));



extern char *bind_textdomain_codeset (const char *__domainname,
          const char *__codeset) __attribute__ ((__nothrow__ ));
# 24 "/usr/include/glib-2.0/glib/gi18n.h" 2
# 29 "./../script-fu-intl.h" 2
# 50 "scheme.c" 2

# 1 "./scheme-private.h" 1





# 1 "./scheme.h" 1





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
# 7 "./scheme.h" 2

# 1 "/usr/include/glib-2.0/glib/gstdio.h" 1
# 23 "/usr/include/glib-2.0/glib/gstdio.h"
# 1 "/usr/include/glib-2.0/glib/gprintf.h" 1
# 27 "/usr/include/glib-2.0/glib/gprintf.h"
extern
gint g_printf (gchar const *format,
                                   ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
gint g_fprintf (FILE *file,
       gchar const *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
gint g_sprintf (gchar *string,
       gchar const *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));

extern
gint g_vprintf (gchar const *format,
                                   va_list args) __attribute__((__format__ (__printf__, 1, 0)));
extern
gint g_vfprintf (FILE *file,
       gchar const *format,
       va_list args) __attribute__((__format__ (__printf__, 2, 0)));
extern
gint g_vsprintf (gchar *string,
       gchar const *format,
       va_list args) __attribute__((__format__ (__printf__, 2, 0)));
extern
gint g_vasprintf (gchar **string,
       gchar const *format,
       va_list args) __attribute__((__format__ (__printf__, 2, 0)));
# 24 "/usr/include/glib-2.0/glib/gstdio.h" 2

# 1 "/usr/include/sys/stat.h" 1 3 4
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
# 107 "/usr/include/sys/stat.h" 2 3 4
# 210 "/usr/include/sys/stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 239 "/usr/include/sys/stat.h" 3 4
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 264 "/usr/include/sys/stat.h" 3 4
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 285 "/usr/include/sys/stat.h" 3 4
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ ));





extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ ));
# 322 "/usr/include/sys/stat.h" 3 4
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
# 443 "/usr/include/sys/stat.h" 3 4
extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 5)));
# 26 "/usr/include/glib-2.0/glib/gstdio.h" 2
# 50 "/usr/include/glib-2.0/glib/gstdio.h"
typedef struct stat GStatBuf;
# 76 "/usr/include/glib-2.0/glib/gstdio.h"
extern
int g_access (const gchar *filename,
       int mode);

extern
int g_chdir (const gchar *path);

extern
int g_unlink (const gchar *filename);

extern
int g_rmdir (const gchar *filename);
# 165 "/usr/include/glib-2.0/glib/gstdio.h"
extern
gboolean g_close (gint fd,
                  GError **error);
# 9 "./scheme.h" 2
# 111 "./scheme.h"
typedef struct scheme scheme;
typedef struct cell *pointer;

typedef void * (*func_alloc)(size_t);
typedef void (*func_dealloc)(void *);


typedef struct num {
     char is_fixnum;
     union {
          long ivalue;
          double rvalue;
     } value;
} num;



typedef enum { TS_OUTPUT_NORMAL, TS_OUTPUT_ERROR } TsOutputType;

typedef void (* ts_output_func) (TsOutputType type,
                                       const char *string,
                                       int len,
                                       gpointer data);

extern void ts_register_output_func (ts_output_func func,
                                            gpointer user_data);
extern void ts_output_string (TsOutputType type,
                                            const char *string,
                                            int len);


extern scheme *scheme_init_new(void);
extern scheme *scheme_init_new_custom_alloc(func_alloc malloc, func_dealloc free);
extern int scheme_init(scheme *sc);
extern int scheme_init_custom_alloc(scheme *sc, func_alloc, func_dealloc);
extern void scheme_deinit(scheme *sc);
extern void scheme_set_input_port_file(scheme *sc, FILE *fin);
void scheme_set_input_port_string(scheme *sc, char *start, char *past_the_end);
extern void scheme_set_output_port_file(scheme *sc, FILE *fin);
void scheme_set_output_port_string(scheme *sc, char *start, char *past_the_end);
extern void scheme_load_file(scheme *sc, FILE *fin);
extern void scheme_load_named_file(scheme *sc, FILE *fin, const char *filename);
extern void scheme_load_string(scheme *sc, const char *cmd);
extern pointer scheme_apply0(scheme *sc, const char *procname);
extern pointer scheme_call(scheme *sc, pointer func, pointer args);
extern pointer scheme_eval(scheme *sc, pointer obj);
void scheme_set_external_data(scheme *sc, void *p);
extern void scheme_define(scheme *sc, pointer env, pointer symbol, pointer value);

typedef pointer (*foreign_func)(scheme *, pointer);

pointer _cons(scheme *sc, pointer a, pointer b, int immutable);
pointer mk_integer(scheme *sc, long num);
pointer mk_real(scheme *sc, double num);
pointer mk_symbol(scheme *sc, const char *name);
pointer gensym(scheme *sc);
pointer mk_string(scheme *sc, const char *str);
pointer mk_counted_string(scheme *sc, const char *str, int len);
pointer mk_empty_string(scheme *sc, int len, gunichar fill);
pointer mk_character(scheme *sc, gunichar c);
pointer mk_foreign_func(scheme *sc, foreign_func f);
void putcharacter(scheme *sc, gunichar c);
void putstr(scheme *sc, const char *s);
int list_length(scheme *sc, pointer a);
int eqv(pointer a, pointer b);

extern pointer foreign_error (scheme *sc, const char *s, pointer a);


struct scheme_interface {
  void (*scheme_define)(scheme *sc, pointer env, pointer symbol, pointer value);
  pointer (*cons)(scheme *sc, pointer a, pointer b);
  pointer (*immutable_cons)(scheme *sc, pointer a, pointer b);
  pointer (*reserve_cells)(scheme *sc, int n);
  pointer (*mk_integer)(scheme *sc, long num);
  pointer (*mk_real)(scheme *sc, double num);
  pointer (*mk_symbol)(scheme *sc, const char *name);
  pointer (*gensym)(scheme *sc);
  pointer (*mk_string)(scheme *sc, const char *str);
  pointer (*mk_counted_string)(scheme *sc, const char *str, int len);
  pointer (*mk_character)(scheme *sc, gunichar c);
  pointer (*mk_vector)(scheme *sc, int len);
  pointer (*mk_foreign_func)(scheme *sc, foreign_func f);
  pointer (*mk_closure)(scheme *sc, pointer c, pointer e);
  void (*putstr)(scheme *sc, const char *s);
  void (*putcharacter)(scheme *sc, gunichar c);

  int (*is_string)(pointer p);
  int (*string_length)(pointer p);
  char *(*string_value)(pointer p);
  int (*is_number)(pointer p);
  num (*nvalue)(pointer p);
  long (*ivalue)(pointer p);
  double (*rvalue)(pointer p);
  int (*is_integer)(pointer p);
  int (*is_real)(pointer p);
  int (*is_character)(pointer p);
  gunichar (*charvalue)(pointer p);
  int (*is_list)(scheme *sc, pointer p);
  int (*is_vector)(pointer p);
  int (*list_length)(scheme *sc, pointer p);
  long (*vector_length)(pointer vec);
  void (*fill_vector)(pointer vec, pointer elem);
  pointer (*vector_elem)(pointer vec, int ielem);
  pointer (*set_vector_elem)(pointer vec, int ielem, pointer newel);

  int (*is_port)(pointer p);

  int (*is_pair)(pointer p);
  pointer (*pair_car)(pointer p);
  pointer (*pair_cdr)(pointer p);
  pointer (*set_car)(pointer p, pointer q);
  pointer (*set_cdr)(pointer p, pointer q);

  int (*is_symbol)(pointer p);
  char *(*symname)(pointer p);

  int (*is_syntax)(pointer p);
  int (*is_proc)(pointer p);
  int (*is_foreign)(pointer p);
  char *(*syntaxname)(pointer p);
  int (*is_closure)(pointer p);
  int (*is_macro)(pointer p);
  pointer (*closure_code)(pointer p);
  pointer (*closure_env)(pointer p);

  int (*is_continuation)(pointer p);
  int (*is_promise)(pointer p);
  int (*is_environment)(pointer p);
  int (*is_immutable)(pointer p);
  void (*setimmutable)(pointer p);

  void (*load_file)(scheme *sc, FILE *fin);
  void (*load_string)(scheme *sc, const char *input);
};



typedef struct scheme_registerable
{
  foreign_func f;
  char * name;
}
scheme_registerable;

void scheme_register_foreign_func(scheme * sc, scheme_registerable * sr);
void scheme_register_foreign_func_list(scheme * sc,
                                      scheme_registerable * list,
                                      int n);
# 7 "./scheme-private.h" 2



enum scheme_port_kind {
  port_free=0,
  port_file=1,
  port_string=2,
  port_srfi6=4,
  port_input=16,
  port_output=32,
  port_saw_EOF=64
};

typedef struct port {
  unsigned char kind;
  union {
    struct {
      FILE *file;
      int closeit;

      int curr_line;
      char *filename;

    } stdio;
    struct {
      char *start;
      char *past_the_end;
      char *curr;
    } string;
  } rep;
} port;


struct cell {
  unsigned int _flag;
  union {
    struct {
      char *_svalue;
      int _length;
    } _string;
    num _number;
    port *_port;
    foreign_func _ff;
    struct {
      struct cell *_car;
      struct cell *_cdr;
    } _cons;
  } _object;
};

struct scheme {

func_alloc malloc;
func_dealloc free;


int retcode;
int tracing;




char *alloc_seg[50];
pointer cell_seg[50];
int last_cell_seg;


pointer args;
pointer envir;
pointer code;
pointer dump;
pointer foreign_error;

int interactive_repl;
int print_output;

struct cell _sink;
pointer sink;
struct cell _NIL;
pointer NIL;
struct cell _HASHT;
pointer T;
struct cell _HASHF;
pointer F;
struct cell _EOF_OBJ;
pointer EOF_OBJ;
pointer oblist;
pointer global_env;

pointer c_nest;


pointer LAMBDA;
pointer QUOTE;

pointer QQUOTE;
pointer UNQUOTE;
pointer UNQUOTESP;
pointer FEED_TO;
pointer COLON_HOOK;
pointer ERROR_HOOK;
pointer SHARP_HOOK;
pointer COMPILE_HOOK;

pointer free_cell;
long fcells;

pointer inport;
pointer outport;
pointer save_inport;
pointer loadport;


port load_stack[64];
int nesting_stack[64];
int file_i;
int nesting;

char gc_verbose;
char no_memory;


char linebuff[1024];

char strbuff[1024];

FILE *tmpfp;
int tok;
int print_flag;
pointer value;
int op;

void *ext_data;
long gensym_cnt;

struct scheme_interface *vptr;
void *dump_base;
int dump_size;

gunichar backchar[2];
int bc_flag;
};


enum scheme_opcodes {


# 1 "./opdefines.h" 1
    OP_LOAD,
    OP_T0LVL,
    OP_T1LVL,
    OP_READ_INTERNAL,
    OP_GENSYM,
    OP_VALUEPRINT,
    OP_EVAL,

    OP_REAL_EVAL,

    OP_E0ARGS,
    OP_E1ARGS,
    OP_APPLY,

    OP_REAL_APPLY,
    OP_TRACING,

    OP_DOMACRO,
    OP_LAMBDA,
    OP_LAMBDA1,
    OP_MKCLOSURE,
    OP_QUOTE,
    OP_DEF0,
    OP_DEF1,
    OP_DEFP,
    OP_BEGIN,
    OP_IF0,
    OP_IF1,
    OP_SET0,
    OP_SET1,
    OP_LET0,
    OP_LET1,
    OP_LET2,
    OP_LET0AST,
    OP_LET1AST,
    OP_LET2AST,
    OP_LET0REC,
    OP_LET1REC,
    OP_LET2REC,
    OP_COND0,
    OP_COND1,
    OP_DELAY,
    OP_AND0,
    OP_AND1,
    OP_OR0,
    OP_OR1,
    OP_C0STREAM,
    OP_C1STREAM,
    OP_MACRO0,
    OP_MACRO1,
    OP_CASE0,
    OP_CASE1,
    OP_CASE2,
    OP_PEVAL,
    OP_PAPPLY,
    OP_CONTINUATION,

    OP_INEX2EX,
    OP_EXP,
    OP_LOG,
    OP_SIN,
    OP_COS,
    OP_TAN,
    OP_ASIN,
    OP_ACOS,
    OP_ATAN,
    OP_SQRT,
    OP_EXPT,
    OP_FLOOR,
    OP_CEILING,
    OP_TRUNCATE,
    OP_ROUND,

    OP_ADD,
    OP_SUB,
    OP_MUL,
    OP_DIV,
    OP_INTDIV,
    OP_REM,
    OP_MOD,
    OP_CAR,
    OP_CDR,
    OP_CONS,
    OP_SETCAR,
    OP_SETCDR,
    OP_CHAR2INT,
    OP_INT2CHAR,
    OP_CHARUPCASE,
    OP_CHARDNCASE,
    OP_SYM2STR,
    OP_ATOM2STR,
    OP_STR2SYM,
    OP_STR2ATOM,
    OP_MKSTRING,
    OP_STRLEN,
    OP_STRREF,
    OP_STRSET,
    OP_STRAPPEND,
    OP_SUBSTR,
    OP_VECTOR,
    OP_MKVECTOR,
    OP_VECLEN,
    OP_VECREF,
    OP_VECSET,
    OP_NOT,
    OP_BOOLP,
    OP_EOFOBJP,
    OP_NULLP,
    OP_NUMEQ,
    OP_LESS,
    OP_GRE,
    OP_LEQ,
    OP_GEQ,
    OP_SYMBOLP,
    OP_NUMBERP,
    OP_STRINGP,
    OP_INTEGERP,
    OP_REALP,
    OP_CHARP,

    OP_CHARAP,
    OP_CHARNP,
    OP_CHARWP,
    OP_CHARUP,
    OP_CHARLP,

    OP_PORTP,
    OP_INPORTP,
    OP_OUTPORTP,
    OP_PROCP,
    OP_PAIRP,
    OP_LISTP,
    OP_ENVP,
    OP_VECTORP,
    OP_EQ,
    OP_EQV,
    OP_FORCE,
    OP_SAVE_FORCED,
    OP_WRITE,
    OP_WRITE_CHAR,
    OP_DISPLAY,
    OP_NEWLINE,
    OP_ERR0,
    OP_ERR1,
    OP_REVERSE,
    OP_LIST_STAR,
    OP_APPEND,




    OP_QUIT,
    OP_GC,
    OP_GCVERB,
    OP_NEWSEGMENT,
    OP_OBLIST,
    OP_CURR_INPORT,
    OP_CURR_OUTPORT,
    OP_OPEN_INFILE,
    OP_OPEN_OUTFILE,
    OP_OPEN_INOUTFILE,

    OP_OPEN_INSTRING,
    OP_OPEN_INOUTSTRING,
    OP_OPEN_OUTSTRING,
    OP_GET_OUTSTRING,

    OP_CLOSE_INPORT,
    OP_CLOSE_OUTPORT,
    OP_INT_ENV,
    OP_CURR_ENV,
    OP_READ,
    OP_READ_CHAR,
    OP_PEEK_CHAR,
    OP_CHAR_READY,
    OP_SET_INPORT,
    OP_SET_OUTPORT,
    OP_RDSEXPR,
    OP_RDLIST,
    OP_RDDOT,
    OP_RDQUOTE,
    OP_RDQQUOTE,
    OP_RDQQUOTEVEC,
    OP_RDUNQUOTE,
    OP_RDUQTSP,
    OP_RDVEC,
    OP_P0LIST,
    OP_P1LIST,
    OP_PVECFROM,
    OP_LIST_LENGTH,
    OP_ASSQ,
    OP_GET_CLOSURE,
    OP_CLOSUREP,
    OP_MACROP,
# 154 "./scheme-private.h" 2
 OP_MAXDEFINED
};
# 164 "./scheme-private.h"
int is_string(pointer p);
char *string_value(pointer p);
int is_number(pointer p);
num nvalue(pointer p);
long ivalue(pointer p);
double rvalue(pointer p);
int is_integer(pointer p);
int is_real(pointer p);
int is_character(pointer p);
int string_length(pointer p);
gunichar charvalue(pointer p);
int is_vector(pointer p);

int is_port(pointer p);
int is_inport(pointer p);
int is_outport(pointer p);

int is_pair(pointer p);
pointer pair_car(pointer p);
pointer pair_cdr(pointer p);
pointer set_car(pointer p, pointer q);
pointer set_cdr(pointer p, pointer q);

int is_symbol(pointer p);
char *symname(pointer p);
char *symkey(pointer p);
int hasprop(pointer p);

int is_syntax(pointer p);
int is_proc(pointer p);
int is_foreign(pointer p);
char *syntaxname(pointer p);
int is_closure(pointer p);
int is_macro(pointer p);
pointer closure_code(pointer p);
pointer closure_env(pointer p);

int is_continuation(pointer p);
int is_promise(pointer p);
int is_environment(pointer p);
int is_immutable(pointer p);
void setimmutable(pointer p);
# 52 "scheme.c" 2


static ts_output_func ts_output_handler = ((void*)0);
static gpointer ts_output_data = ((void*)0);

void
ts_register_output_func (ts_output_func func,
                         gpointer user_data)
{
  ts_output_handler = func;
  ts_output_data = user_data;
}


void
ts_output_string (TsOutputType type,
                  const char *string,
                  int len)
{
  if (len < 0)
    len = strlen (string);

  if (ts_output_handler && len > 0)
    (* ts_output_handler) (type, string, len, ts_output_data);
}
# 107 "scheme.c"
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
# 952 "/usr/include/stdlib.h" 2 3 4
# 108 "scheme.c" 2



static int utf8_stricmp(const char *s1, const char *s2)
{
  char *s1a, *s2a;
  int result;

  s1a = g_utf8_casefold(s1, -1);
  s2a = g_utf8_casefold(s2, -1);

  result = g_utf8_collate(s1a, s2a);

  g_free(s1a);
  g_free(s2a);
  return result;
}
# 149 "scheme.c"
enum scheme_types {
  T_STRING=1,
  T_NUMBER=2,
  T_SYMBOL=3,
  T_PROC=4,
  T_PAIR=5,
  T_CLOSURE=6,
  T_CONTINUATION=7,
  T_FOREIGN=8,
  T_CHARACTER=9,
  T_PORT=10,
  T_VECTOR=11,
  T_MACRO=12,
  T_PROMISE=13,
  T_ENVIRONMENT=14,
  T_LAST_SYSTEM_TYPE=14
};
# 178 "scheme.c"
static num num_add(num a, num b);
static num num_mul(num a, num b);
static num num_div(num a, num b);
static num num_intdiv(num a, num b);
static num num_sub(num a, num b);
static num num_rem(num a, num b);
static num num_mod(num a, num b);
static int num_eq(num a, num b);
static int num_gt(num a, num b);
static int num_ge(num a, num b);
static int num_lt(num a, num b);
static int num_le(num a, num b);


static double round_per_R5RS(double x);

static int is_zero_double(double x);
static int num_is_integer(pointer p) {
  return ((p)->_object._number.is_fixnum);
}

static num num_zero;
static num num_one;





                 int is_string(pointer p) { return ((((p)->_flag)&31)==T_STRING); }



          static int is_list(scheme *sc, pointer a);
                 int is_vector(pointer p) { return ((((p)->_flag)&31)==T_VECTOR); }
          static void fill_vector(pointer vec, pointer obj);
          static pointer vector_elem(pointer vec, int ielem);
          static pointer set_vector_elem(pointer vec, int ielem, pointer a);
                 int is_number(pointer p) { return ((((p)->_flag)&31)==T_NUMBER); }
                 int is_integer(pointer p) {
  if (!is_number(p))
      return 0;
  if (num_is_integer(p) || (double)ivalue(p) == rvalue(p))
      return 1;
  return 0;
}

                 int is_real(pointer p) {
  return is_number(p) && (!(p)->_object._number.is_fixnum);
}

                 int is_character(pointer p) { return ((((p)->_flag)&31)==T_CHARACTER); }
                 int string_length(pointer p) { return ((p)->_object._string._length); }
                 char *string_value(pointer p) { return ((p)->_object._string._svalue); }
       num nvalue(pointer p) { return ((p)->_object._number); }
          long ivalue(pointer p) { return (num_is_integer(p)?(p)->_object._number.value.ivalue:(long)(p)->_object._number.value.rvalue); }
          double rvalue(pointer p) { return (!num_is_integer(p)?(p)->_object._number.value.rvalue:(double)(p)->_object._number.value.ivalue); }




           gunichar charvalue(pointer p) { return (gunichar)((p)->_object._number.value.ivalue); }

                 int is_port(pointer p) { return ((((p)->_flag)&31)==T_PORT); }
                 int is_inport(pointer p) { return is_port(p) && p->_object._port->kind & port_input; }
                 int is_outport(pointer p) { return is_port(p) && p->_object._port->kind & port_output; }

                 int is_pair(pointer p) { return ((((p)->_flag)&31)==T_PAIR); }


          pointer pair_car(pointer p) { return ((p)->_object._cons._car); }
          pointer pair_cdr(pointer p) { return ((p)->_object._cons._cdr); }
          pointer set_car(pointer p, pointer q) { return ((p)->_object._cons._car)=q; }
          pointer set_cdr(pointer p, pointer q) { return ((p)->_object._cons._cdr)=q; }

                 int is_symbol(pointer p) { return ((((p)->_flag)&31)==T_SYMBOL); }
                 char *symname(pointer p) { return ((((p)->_object._cons._car))->_object._string._svalue); }





                 int is_syntax(pointer p) { return (((p)->_flag)&4096); }
                 int is_proc(pointer p) { return ((((p)->_flag)&31)==T_PROC); }
                 int is_foreign(pointer p) { return ((((p)->_flag)&31)==T_FOREIGN); }
                 char *syntaxname(pointer p) { return ((((p)->_object._cons._car))->_object._string._svalue); }

static const char *procname(pointer x);

                 int is_closure(pointer p) { return ((((p)->_flag)&31)==T_CLOSURE); }
                 int is_macro(pointer p) { return ((((p)->_flag)&31)==T_MACRO); }
                 pointer closure_code(pointer p) { return ((p)->_object._cons._car); }
                 pointer closure_env(pointer p) { return ((p)->_object._cons._cdr); }

                 int is_continuation(pointer p) { return ((((p)->_flag)&31)==T_CONTINUATION); }



                 int is_promise(pointer p) { return ((((p)->_flag)&31)==T_PROMISE); }

                 int is_environment(pointer p) { return ((((p)->_flag)&31)==T_ENVIRONMENT); }
# 288 "scheme.c"
                 int is_immutable(pointer p) { return (((p)->_flag)&8192); }

                 void setimmutable(pointer p) { ((p)->_flag) |= 8192; }
# 304 "scheme.c"
static int Cisalpha(gunichar c) { return g_unichar_isalpha(c); }
static int Cisdigit(gunichar c) { return g_unichar_isdigit(c); }
static int Cisspace(gunichar c) { return g_unichar_isspace(c); }
static int Cisupper(gunichar c) { return g_unichar_isupper(c); }
static int Cislower(gunichar c) { return g_unichar_islower(c); }
# 365 "scheme.c"
static const char utf8_length[64] =
{
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
    3,3,3,3,3,3,3,3,4,4,4,4,5,5,0,0
};

static int file_push(scheme *sc, const char *fname);
static void file_pop(scheme *sc);
static int file_interactive(scheme *sc);
static int is_one_of(char *s, gunichar c);
static int alloc_cellseg(scheme *sc, int n);
static long binary_decode(const char *s);
static pointer get_cell(scheme *sc, pointer a, pointer b);
static pointer _get_cell(scheme *sc, pointer a, pointer b);
static pointer reserve_cells(scheme *sc, int n);
static pointer get_consecutive_cells(scheme *sc, int n);
static pointer find_consecutive_cells(scheme *sc, int n);
static void finalize_cell(scheme *sc, pointer a);
static int count_consecutive_cells(pointer x, int needed);
static pointer find_slot_in_env(scheme *sc, pointer env, pointer sym, int all);
static pointer mk_number(scheme *sc, num n);
static char *store_string(scheme *sc, int len, const char *str, gunichar fill);
static pointer mk_vector(scheme *sc, int len);
static pointer mk_atom(scheme *sc, char *q);
static pointer mk_sharp_const(scheme *sc, char *name);
static pointer mk_port(scheme *sc, port *p);
static pointer port_from_filename(scheme *sc, const char *fn, int prop);
static pointer port_from_file(scheme *sc, FILE *, int prop);
static pointer port_from_string(scheme *sc, char *start, char *past_the_end, int prop);
static port *port_rep_from_filename(scheme *sc, const char *fn, int prop);
static port *port_rep_from_file(scheme *sc, FILE *, int prop);
static port *port_rep_from_string(scheme *sc, char *start, char *past_the_end, int prop);
static void port_close(scheme *sc, pointer p, int flag);
static void mark(pointer a);
static void gc(scheme *sc, pointer a, pointer b);
static gunichar basic_inchar(port *pt);
static gunichar inchar(scheme *sc);
static void backchar(scheme *sc, gunichar c);
static char *readstr_upto(scheme *sc, char *delim);
static pointer readstrexp(scheme *sc);
static int skipspace(scheme *sc);
static int token(scheme *sc);
static void printslashstring(scheme *sc, char *s, int len);
static void atom2str(scheme *sc, pointer l, int f, char **pp, int *plen);
static void printatom(scheme *sc, pointer l, int f);
static pointer mk_proc(scheme *sc, enum scheme_opcodes op);
static pointer mk_closure(scheme *sc, pointer c, pointer e);
static pointer mk_continuation(scheme *sc, pointer d);
static pointer reverse(scheme *sc, pointer a);
static pointer reverse_in_place(scheme *sc, pointer term, pointer list);
static pointer revappend(scheme *sc, pointer a, pointer b);
int list_length(scheme *sc, pointer a);
int eqv(pointer a, pointer b);

static void dump_stack_mark(scheme *);
static pointer opexe_0(scheme *sc, enum scheme_opcodes op);
static pointer opexe_1(scheme *sc, enum scheme_opcodes op);
static pointer opexe_2(scheme *sc, enum scheme_opcodes op);
static pointer opexe_3(scheme *sc, enum scheme_opcodes op);
static pointer opexe_4(scheme *sc, enum scheme_opcodes op);
static pointer opexe_5(scheme *sc, enum scheme_opcodes op);
static pointer opexe_6(scheme *sc, enum scheme_opcodes op);
static void Eval_Cycle(scheme *sc, enum scheme_opcodes op);
static void assign_syntax(scheme *sc, char *name);
static int syntaxnum(pointer p);
static void assign_proc(scheme *sc, enum scheme_opcodes, char *name);
scheme *scheme_init_new(void);




static num num_add(num a, num b) {
 num ret;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum;
 if(ret.is_fixnum) {
     ret.value.ivalue= a.value.ivalue+b.value.ivalue;
 } else {
     ret.value.rvalue=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)+(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static num num_mul(num a, num b) {
 num ret;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum;
 if(ret.is_fixnum) {
     ret.value.ivalue= a.value.ivalue*b.value.ivalue;
 } else {
     ret.value.rvalue=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)*(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static num num_div(num a, num b) {
 num ret;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum && a.value.ivalue%b.value.ivalue==0;
 if(ret.is_fixnum) {
     ret.value.ivalue= a.value.ivalue/b.value.ivalue;
 } else {
     ret.value.rvalue=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)/(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static num num_intdiv(num a, num b) {
 num ret;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum;
 if(ret.is_fixnum) {
     ret.value.ivalue= a.value.ivalue/b.value.ivalue;
 } else {
     ret.value.rvalue=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)/(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static num num_sub(num a, num b) {
 num ret;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum;
 if(ret.is_fixnum) {
     ret.value.ivalue= a.value.ivalue-b.value.ivalue;
 } else {
     ret.value.rvalue=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)-(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static num num_rem(num a, num b) {
 num ret;
 long e1, e2, res;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum;
 e1=(a.is_fixnum?(a).value.ivalue:(long)(a).value.rvalue);
 e2=(b.is_fixnum?(b).value.ivalue:(long)(b).value.rvalue);
 res=e1%e2;

 if (res > 0) {
     if (e1 < 0) {
        res -= labs(e2);
     }
 } else if (res < 0) {
     if (e1 > 0) {
        res += labs(e2);
     }
 }
 ret.value.ivalue=res;
 return ret;
}

static num num_mod(num a, num b) {
 num ret;
 long e1, e2, res;
 ret.is_fixnum=a.is_fixnum && b.is_fixnum;
 e1=(a.is_fixnum?(a).value.ivalue:(long)(a).value.rvalue);
 e2=(b.is_fixnum?(b).value.ivalue:(long)(b).value.rvalue);
 res=e1%e2;

 if ((res < 0) != (e2 < 0) && res) {
   res+=e2;
 }
 ret.value.ivalue=res;
 return ret;
}

static int num_eq(num a, num b) {
 int ret;
 int is_fixnum=a.is_fixnum && b.is_fixnum;
 if(is_fixnum) {
     ret= a.value.ivalue==b.value.ivalue;
 } else {
     ret=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)==(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}


static int num_gt(num a, num b) {
 int ret;
 int is_fixnum=a.is_fixnum && b.is_fixnum;
 if(is_fixnum) {
     ret= a.value.ivalue>b.value.ivalue;
 } else {
     ret=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)>(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static int num_ge(num a, num b) {
 return !num_lt(a,b);
}

static int num_lt(num a, num b) {
 int ret;
 int is_fixnum=a.is_fixnum && b.is_fixnum;
 if(is_fixnum) {
     ret= a.value.ivalue<b.value.ivalue;
 } else {
     ret=(!a.is_fixnum?(a).value.rvalue:(double)(a).value.ivalue)<(!b.is_fixnum?(b).value.rvalue:(double)(b).value.ivalue);
 }
 return ret;
}

static int num_le(num a, num b) {
 return !num_gt(a,b);
}



static double round_per_R5RS(double x) {
 double fl=floor(x);
 double ce=ceil(x);
 double dfl=x-fl;
 double dce=ce-x;
 if(dfl>dce) {
     return ce;
 } else if(dfl<dce) {
     return fl;
 } else {
     if(fmod(fl,2.0)==0.0) {
          return fl;
     } else {
          return ce;
     }
 }
}


static int is_zero_double(double x) {
 return x<2.2250738585072014e-308 && x>-2.2250738585072014e-308;
}

static long binary_decode(const char *s) {
 long x=0;

 while(*s!=0 && (*s=='1' || *s=='0')) {
     x<<=1;
     x+=*s-'0';
     s++;
 }

 return x;
}


static int alloc_cellseg(scheme *sc, int n) {
     pointer newp;
     pointer last;
     pointer p;
     char *cp;
     long i;
     int k;
     int adj=32;

     if(adj<sizeof(struct cell)) {
       adj=sizeof(struct cell);
     }

     for (k = 0; k < n; k++) {
          if (sc->last_cell_seg >= 50 - 1)
               return k;
          cp = (char*) sc->malloc(25000 * sizeof(struct cell)+adj);
          if (cp == 0)
               return k;
          i = ++sc->last_cell_seg ;
          sc->alloc_seg[i] = cp;

          if(((unsigned long)cp)%adj!=0) {
            cp=(char*)(adj*((unsigned long)cp/adj+1));
          }

          newp=(pointer)cp;
        sc->cell_seg[i] = newp;
        while (i > 0 && sc->cell_seg[i - 1] > sc->cell_seg[i]) {
              p = sc->cell_seg[i];
            sc->cell_seg[i] = sc->cell_seg[i - 1];
            sc->cell_seg[--i] = p;
        }
          sc->fcells += 25000;
        last = newp + 25000 - 1;
          for (p = newp; p <= last; p++) {
               ((p)->_flag) = 0;
               ((p)->_object._cons._cdr) = p + 1;
               ((p)->_object._cons._car) = sc->NIL;
          }

        if (sc->free_cell == sc->NIL || p < sc->free_cell) {
             ((last)->_object._cons._cdr) = sc->free_cell;
             sc->free_cell = newp;
        } else {
              p = sc->free_cell;
              while (((p)->_object._cons._cdr) != sc->NIL && newp > ((p)->_object._cons._cdr))
                   p = ((p)->_object._cons._cdr);
              ((last)->_object._cons._cdr) = ((p)->_object._cons._cdr);
              ((p)->_object._cons._cdr) = newp;
        }
     }
     return n;
}

static pointer get_cell_x(scheme *sc, pointer a, pointer b) {
  if (sc->free_cell != sc->NIL) {
    pointer x = sc->free_cell;
    sc->free_cell = ((x)->_object._cons._cdr);
    --sc->fcells;
    return (x);
  }
  return _get_cell (sc, a, b);
}



static pointer _get_cell(scheme *sc, pointer a, pointer b) {
  pointer x;

  if(sc->no_memory) {
    return sc->sink;
  }

  if (sc->free_cell == sc->NIL) {
    const int min_to_be_recovered = sc->last_cell_seg*8;
    gc(sc,a, b);
    if (sc->fcells < min_to_be_recovered
        || sc->free_cell == sc->NIL) {

      if (!alloc_cellseg(sc,1) && sc->free_cell == sc->NIL) {
        sc->no_memory=1;
        return sc->sink;
      }
    }
  }
  x = sc->free_cell;
  sc->free_cell = ((x)->_object._cons._cdr);
  --sc->fcells;
  return (x);
}


static pointer reserve_cells(scheme *sc, int n) {
       if(sc->no_memory) {
               return sc->NIL;
       }


       if (sc->fcells < n) {

               gc(sc, sc->NIL, sc->NIL);
               if (sc->fcells < n) {

                       if (!alloc_cellseg(sc,1)) {
                               sc->no_memory=1;
                               return sc->NIL;
                       }
               }
               if (sc->fcells < n) {

                       sc->no_memory=1;
                       return sc->NIL;
               }
       }
       return (sc->T);
}

static pointer get_consecutive_cells(scheme *sc, int n) {
  pointer x;

  if(sc->no_memory) { return sc->sink; }


  x=find_consecutive_cells(sc,n);
  if (x != sc->NIL) { return x; }


  gc(sc, sc->NIL, sc->NIL);
  x=find_consecutive_cells(sc,n);
  if (x != sc->NIL) { return x; }


  if (!alloc_cellseg(sc,1))
    {
      sc->no_memory=1;
      return sc->sink;
    }

  x=find_consecutive_cells(sc,n);
  if (x != sc->NIL) { return x; }


  sc->no_memory=1;
  return sc->sink;
}

static int count_consecutive_cells(pointer x, int needed) {
 int n=1;
 while(((x)->_object._cons._cdr)==x+1) {
     x=((x)->_object._cons._cdr);
     n++;
     if(n>needed) return n;
 }
 return n;
}

static pointer find_consecutive_cells(scheme *sc, int n) {
  pointer *pp;
  int cnt;

  pp=&sc->free_cell;
  while(*pp!=sc->NIL) {
    cnt=count_consecutive_cells(*pp,n);
    if(cnt>=n) {
      pointer x=*pp;
      *pp=((*pp+n-1)->_object._cons._cdr);
      sc->fcells -= n;
      return x;
    }
    pp=&((*pp+cnt-1)->_object._cons._cdr);
  }
  return sc->NIL;
}




static void push_recent_alloc(scheme *sc, pointer recent, pointer extra)
{
  pointer holder = get_cell_x(sc, recent, extra);
  ((holder)->_flag) = T_PAIR | 8192;
  ((holder)->_object._cons._car) = recent;
  ((holder)->_object._cons._cdr) = ((sc->sink)->_object._cons._car);
  ((sc->sink)->_object._cons._car) = holder;
}


static pointer get_cell(scheme *sc, pointer a, pointer b)
{
  pointer cell = get_cell_x(sc, a, b);



  ((cell)->_flag) = T_PAIR;
  ((cell)->_object._cons._car) = a;
  ((cell)->_object._cons._cdr) = b;
  push_recent_alloc(sc, cell, sc->NIL);
  return cell;
}

static pointer get_vector_object(scheme *sc, int len, pointer init)
{
  pointer cells = get_consecutive_cells(sc,len/2+len%2+1);
  if(sc->no_memory) { return sc->sink; }

  ((cells)->_flag) = (T_VECTOR | 16384);
  ((cells)->_object._number.value.ivalue)=len;
  (cells)->_object._number.is_fixnum=1;;
  fill_vector(cells,init);
  push_recent_alloc(sc, cells, sc->NIL);
  return cells;
}

static void ok_to_freely_gc(scheme *sc)
{
  ((sc->sink)->_object._cons._car) = sc->NIL;
}
# 855 "scheme.c"
pointer _cons(scheme *sc, pointer a, pointer b, int immutable) {
  pointer x = get_cell(sc,a, b);

  ((x)->_flag) = T_PAIR;
  if(immutable) {
    setimmutable(x);
  }
  ((x)->_object._cons._car) = a;
  ((x)->_object._cons._cdr) = b;
  return (x);
}





static int hash_fn(const char *key, int table_size);

static pointer oblist_initial_value(scheme *sc)
{
  return mk_vector(sc, 461);
}


static pointer oblist_add_by_name(scheme *sc, const char *name)
{
  pointer x;
  int location;

  x = _cons(sc,mk_string(sc, name),sc->NIL,1);
  ((x)->_flag) = T_SYMBOL;
  setimmutable(((x)->_object._cons._car));

  location = hash_fn(name, ((sc->oblist)->_object._number.value.ivalue));
  set_vector_elem(sc->oblist, location,
                  _cons(sc,x,vector_elem(sc->oblist, location),1));
  return x;
}

static pointer oblist_find_by_name(scheme *sc, const char *name)
{
  int location;
  pointer x;
  char *s;

  location = hash_fn(name, ((sc->oblist)->_object._number.value.ivalue));
  for (x = vector_elem(sc->oblist, location); x != sc->NIL; x = ((x)->_object._cons._cdr)) {
    s = symname(((x)->_object._cons._car));

    if(utf8_stricmp(name, s) == 0) {
      return ((x)->_object._cons._car);
    }
  }
  return sc->NIL;
}

static pointer oblist_all_symbols(scheme *sc)
{
  int i;
  pointer x;
  pointer ob_list = sc->NIL;

  for (i = 0; i < ((sc->oblist)->_object._number.value.ivalue); i++) {
    for (x = vector_elem(sc->oblist, i); x != sc->NIL; x = ((x)->_object._cons._cdr)) {
      ob_list = _cons(sc,x,ob_list,0);
    }
  }
  return ob_list;
}
# 966 "scheme.c"
static pointer mk_port(scheme *sc, port *p) {
  pointer x = get_cell(sc, sc->NIL, sc->NIL);

  ((x)->_flag) = T_PORT|16384;
  x->_object._port=p;
  return (x);
}

pointer mk_foreign_func(scheme *sc, foreign_func f) {
  pointer x = get_cell(sc, sc->NIL, sc->NIL);

  ((x)->_flag) = (T_FOREIGN | 16384);
  x->_object._ff=f;
  return (x);
}

          pointer mk_character(scheme *sc, gunichar c) {
  pointer x = get_cell(sc,sc->NIL, sc->NIL);

  ((x)->_flag) = (T_CHARACTER | 16384);
  ((x)->_object._number.value.ivalue)= c;
  (x)->_object._number.is_fixnum=1;;
  return (x);
}


          pointer mk_integer(scheme *sc, long num) {
  pointer x = get_cell(sc,sc->NIL, sc->NIL);

  ((x)->_flag) = (T_NUMBER | 16384);
  ((x)->_object._number.value.ivalue)= num;
  (x)->_object._number.is_fixnum=1;;
  return (x);
}

          pointer mk_real(scheme *sc, double n) {
  pointer x = get_cell(sc,sc->NIL, sc->NIL);

  ((x)->_flag) = (T_NUMBER | 16384);
  ((x)->_object._number.value.rvalue)= n;
  (x)->_object._number.is_fixnum=0;;
  return (x);
}

static pointer mk_number(scheme *sc, num n) {
 if(n.is_fixnum) {
     return mk_integer(sc,n.value.ivalue);
 } else {
     return mk_real(sc,n.value.rvalue);
 }
}

pointer foreign_error (scheme *sc, const char *s, pointer a) {
  sc->foreign_error = _cons(sc,mk_string (sc, s),a,0);
  return sc->T;
}






static char *store_string(scheme *sc, int char_cnt,
                          const char *str, gunichar fill) {
     int len;
     int i;
     gchar utf8[7];
     gchar *q;
     gchar *q2;

     if(str!=0) {
       q2 = g_utf8_offset_to_pointer(str, (long)char_cnt);
       (void)g_utf8_validate(str, -1, (const gchar **)&q);
       if (q <= q2)
          len = q - str;
       else
          len = q2 - str;
       q=(gchar*)sc->malloc(len+1);
     } else {
       len = g_unichar_to_utf8(fill, utf8);
       q=(gchar*)sc->malloc(char_cnt*len+1);
     }

     if(q==0) {
       sc->no_memory=1;
       return sc->strbuff;
     }
     if(str!=0) {
       memcpy(q, str, len);
       q[len]=0;
     } else {
       q2 = q;
       for (i = 0; i < char_cnt; ++i)
       {
         memcpy(q2, utf8, len);
         q2 += len;
       }
       *q2=0;
     }
     return (q);
}


          pointer mk_string(scheme *sc, const char *str) {
     return mk_counted_string(sc,str,g_utf8_strlen(str, -1));
}



          pointer mk_counted_string(scheme *sc, const char *str, int len) {
     pointer x = get_cell(sc, sc->NIL, sc->NIL);

     ((x)->_flag) = (T_STRING | 16384);
     ((x)->_object._string._svalue) = store_string(sc,len,str,0);
     ((x)->_object._string._length) = len;
     return (x);
}


          pointer mk_empty_string(scheme *sc, int len, gunichar fill) {
     pointer x = get_cell(sc, sc->NIL, sc->NIL);

     ((x)->_flag) = (T_STRING | 16384);
     ((x)->_object._string._svalue) = store_string(sc,len,0,fill);
     ((x)->_object._string._length) = len;
     return (x);
}

          static pointer mk_vector(scheme *sc, int len)
{ return get_vector_object(sc,len,sc->NIL); }

          static void fill_vector(pointer vec, pointer obj) {
     int i;
     int num=ivalue(vec)/2+ivalue(vec)%2;
     for(i=0; i<num; i++) {
          ((vec+1+i)->_flag) = T_PAIR;
          setimmutable(vec+1+i);
          ((vec+1+i)->_object._cons._car)=obj;
          ((vec+1+i)->_object._cons._cdr)=obj;
     }
}

          static pointer vector_elem(pointer vec, int ielem) {
     int n=ielem/2;
     if(ielem%2==0) {
          return ((vec+1+n)->_object._cons._car);
     } else {
          return ((vec+1+n)->_object._cons._cdr);
     }
}

          static pointer set_vector_elem(pointer vec, int ielem, pointer a) {
     int n=ielem/2;
     if(ielem%2==0) {
          return ((vec+1+n)->_object._cons._car)=a;
     } else {
          return ((vec+1+n)->_object._cons._cdr)=a;
     }
}


          pointer mk_symbol(scheme *sc, const char *name) {
     pointer x;


     x = oblist_find_by_name(sc, name);
     if (x != sc->NIL) {
          return (x);
     } else {
          x = oblist_add_by_name(sc, name);
          return (x);
     }
}

          pointer gensym(scheme *sc) {
     pointer x;
     char name[40];

     for(; sc->gensym_cnt<9223372036854775807L; sc->gensym_cnt++) {
          snprintf(name,40,"gensym-%ld",sc->gensym_cnt);


          x = oblist_find_by_name(sc, name);

          if (x != sc->NIL) {
               continue;
          } else {
               x = oblist_add_by_name(sc, name);
               return (x);
          }
     }

     return sc->NIL;
}


static pointer mk_atom(scheme *sc, char *q) {
     char c, *p;
     int has_dec_point=0;
     int has_fp_exp = 0;


     if((p=strstr(q,"::"))!=0) {
          *p=0;
          return _cons(sc,sc->COLON_HOOK,_cons(sc,_cons(sc,sc->QUOTE,_cons(sc,mk_atom(sc,p+2),sc->NIL,0),0),_cons(sc,mk_symbol(sc,q),sc->NIL,0),0),0);





     }


     p = q;
     c = *p++;
     if ((c == '+') || (c == '-')) {
       c = *p++;
       if (c == '.') {
         has_dec_point=1;
         c = *p++;
       }
       if (!((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit)) {
         return (mk_symbol(sc, q));
       }
     } else if (c == '.') {
       has_dec_point=1;
       c = *p++;
       if (!((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit)) {
         return (mk_symbol(sc, q));
       }
     } else if (!((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit)) {
       return (mk_symbol(sc, q));
     }

     for ( ; (c = *p) != 0; ++p) {
          if (!((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit)) {
               if(c=='.') {
                    if(!has_dec_point) {
                         has_dec_point=1;
                         continue;
                    }
               }
               else if ((c == 'e') || (c == 'E')) {
                       if(!has_fp_exp) {
                          has_dec_point = 1;

                          p++;
                          if ((*p == '-') || (*p == '+') || ((*__ctype_b_loc ())[(int) ((*p))] & (unsigned short int) _ISdigit)) {
                             continue;
                          }
                       }
               }
               return (mk_symbol(sc, q));
          }
     }
     if(has_dec_point) {
       return mk_real(sc,g_ascii_strtod(q,((void*)0)));
     }
     return (mk_integer(sc, atol(q)));
}


static pointer mk_sharp_const(scheme *sc, char *name) {
     long x;
     char tmp[1024];

     if (!strcmp(name, "t"))
          return (sc->T);
     else if (!strcmp(name, "f"))
          return (sc->F);
     else if (*name == 'o') {
          snprintf(tmp, 1024, "0%s", name+1);
          sscanf(tmp, "%lo", &x);
          return (mk_integer(sc, x));
     } else if (*name == 'd') {
          sscanf(name+1, "%ld", &x);
          return (mk_integer(sc, x));
     } else if (*name == 'x') {
          snprintf(tmp, 1024, "0x%s", name+1);
          sscanf(tmp, "%lx", &x);
          return (mk_integer(sc, x));
     } else if (*name == 'b') {
          x = binary_decode(name+1);
          return (mk_integer(sc, x));
     } else if (*name == '\\') {
          gunichar c=0;
          if(utf8_stricmp(name+1,"space")==0) {
               c=' ';
          } else if(utf8_stricmp(name+1,"newline")==0) {
               c='\n';
          } else if(utf8_stricmp(name+1,"return")==0) {
               c='\r';
          } else if(utf8_stricmp(name+1,"tab")==0) {
               c='\t';
     } else if(name[1]=='x' && name[2]!=0) {
          int c1=0;
          if(sscanf(name+2,"%x",&c1)==1 && c1 < (127*2 +1)) {
               c=c1;
          } else {
               return sc->NIL;
     }




          } else if(name[2]==0) {
               c=name[1];
          } else {
               return sc->NIL;
          }
          return mk_character(sc,c);
     } else
          return (sc->NIL);
}
# 1288 "scheme.c"
static void mark(pointer a) {
     pointer t, q, p;

     t = (pointer) 0;
     p = a;
E2: ((p)->_flag) |= 32768;
     if(is_vector(p)) {
          int i;
          int num=((p)->_object._number.value.ivalue)/2+((p)->_object._number.value.ivalue)%2;
          for(i=0; i<num; i++) {

               mark(p+1+i);
          }
     }
     if ((((p)->_flag)&16384))
          goto E6;

     q = ((p)->_object._cons._car);
     if (q && !(((q)->_flag)&32768)) {
          ((p)->_flag) |= 16384;
          ((p)->_object._cons._car) = t;
          t = p;
          p = q;
          goto E2;
     }
 E5: q = ((p)->_object._cons._cdr);
     if (q && !(((q)->_flag)&32768)) {
          ((p)->_object._cons._cdr) = t;
          t = p;
          p = q;
          goto E2;
     }
E6:
     if (!t)
          return;
     q = t;
     if ((((q)->_flag)&16384)) {
          ((q)->_flag) &= 49151;
          t = ((q)->_object._cons._car);
          ((q)->_object._cons._car) = p;
          p = q;
          goto E5;
     } else {
          t = ((q)->_object._cons._cdr);
          ((q)->_object._cons._cdr) = p;
          p = q;
          goto E6;
     }
}


static void gc(scheme *sc, pointer a, pointer b) {
  pointer p;
  int i;

  if(sc->gc_verbose) {
    putstr(sc, "gc...");
  }


  mark(sc->oblist);
  mark(sc->global_env);


  mark(sc->args);
  mark(sc->envir);
  mark(sc->code);
  dump_stack_mark(sc);
  mark(sc->value);
  mark(sc->inport);
  mark(sc->save_inport);
  mark(sc->outport);
  mark(sc->loadport);


  mark(((sc->sink)->_object._cons._car));

  mark(sc->c_nest);


  mark(a);
  mark(b);


  ((sc->NIL)->_flag) &= 32767;
  sc->fcells = 0;
  sc->free_cell = sc->NIL;





  for (i = sc->last_cell_seg; i >= 0; i--) {
    p = sc->cell_seg[i] + 25000;
    while (--p >= sc->cell_seg[i]) {
      if ((((p)->_flag)&32768)) {
        ((p)->_flag) &= 32767;
      } else {

        if (((p)->_flag) != 0) {
          finalize_cell(sc, p);
          ((p)->_flag) = 0;
          ((p)->_object._cons._car) = sc->NIL;
        }
        ++sc->fcells;
        ((p)->_object._cons._cdr) = sc->free_cell;
        sc->free_cell = p;
      }
    }
  }

  if (sc->gc_verbose) {
    char msg[80];
    snprintf(msg,80,"done: %ld cells were recovered.\n", sc->fcells);
    putstr(sc,msg);
  }
}

static void finalize_cell(scheme *sc, pointer a) {
  if(is_string(a)) {
    sc->free(((a)->_object._string._svalue));
  } else if(is_port(a)) {
    if(a->_object._port->kind&port_file
       && a->_object._port->rep.stdio.closeit) {
      port_close(sc,a,port_input|port_output);
    }
    sc->free(a->_object._port);
  }
}



static int file_push(scheme *sc, const char *fname) {
 FILE *fin = ((void*)0);
 if (sc->file_i == 64 -1)
    return 0;

  fin=fopen(fname,"rb");
  if(fin!=0) {
    sc->file_i++;
    sc->load_stack[sc->file_i].kind=port_file|port_input;
    sc->load_stack[sc->file_i].rep.stdio.file=fin;
    sc->load_stack[sc->file_i].rep.stdio.closeit=1;
    sc->nesting_stack[sc->file_i]=0;
    sc->loadport->_object._port=sc->load_stack+sc->file_i;


    sc->load_stack[sc->file_i].rep.stdio.curr_line = 0;
    if(fname)
      sc->load_stack[sc->file_i].rep.stdio.filename = store_string(sc, strlen(fname), fname, 0);


  }
  return fin!=0;
}

static void file_pop(scheme *sc) {
 if(sc->file_i != 0) {
     sc->nesting=sc->nesting_stack[sc->file_i];
     port_close(sc,sc->loadport,port_input);
     sc->file_i--;
     sc->loadport->_object._port=sc->load_stack+sc->file_i;
   }
}

static int file_interactive(scheme *sc) {
 return sc->file_i==0 && sc->load_stack[0].rep.stdio.file==stdin
     && sc->inport->_object._port->kind&port_file;
}

static port *port_rep_from_filename(scheme *sc, const char *fn, int prop) {
  FILE *f;
  char *rw;
  port *pt;
  if(prop==(port_input|port_output)) {
    rw="a+b";
  } else if(prop==port_output) {
    rw="wb";
  } else {
    rw="rb";
  }
  f=fopen(fn,rw);
  if(f==0) {
    return 0;
  }
  pt=port_rep_from_file(sc,f,prop);
  pt->rep.stdio.closeit=1;


  if(fn)
    pt->rep.stdio.filename = store_string(sc, strlen(fn), fn, 0);

  pt->rep.stdio.curr_line = 0;

  return pt;
}

static pointer port_from_filename(scheme *sc, const char *fn, int prop) {
  port *pt;
  pt=port_rep_from_filename(sc,fn,prop);
  if(pt==0) {
    return sc->NIL;
  }
  return mk_port(sc,pt);
}

static port *port_rep_from_file(scheme *sc, FILE *f, int prop)
{
    port *pt;

    pt = (port *)sc->malloc(sizeof *pt);
    if (pt == ((void*)0)) {
        return ((void*)0);
    }
    pt->kind = port_file | prop;
    pt->rep.stdio.file = f;
    pt->rep.stdio.closeit = 0;
    return pt;
}

static pointer port_from_file(scheme *sc, FILE *f, int prop) {
  port *pt;
  pt=port_rep_from_file(sc,f,prop);
  if(pt==0) {
    return sc->NIL;
  }
  return mk_port(sc,pt);
}

static port *port_rep_from_string(scheme *sc, char *start, char *past_the_end, int prop) {
  port *pt;
  pt=(port*)sc->malloc(sizeof(port));
  if(pt==0) {
    return 0;
  }
  pt->kind=port_string|prop;
  pt->rep.string.start=start;
  pt->rep.string.curr=start;
  pt->rep.string.past_the_end=past_the_end;
  return pt;
}

static pointer port_from_string(scheme *sc, char *start, char *past_the_end, int prop) {
  port *pt;
  pt=port_rep_from_string(sc,start,past_the_end,prop);
  if(pt==0) {
    return sc->NIL;
  }
  return mk_port(sc,pt);
}



static port *port_rep_from_scratch(scheme *sc) {
  port *pt;
  char *start;
  pt=(port*)sc->malloc(sizeof(port));
  if(pt==0) {
    return 0;
  }
  start=sc->malloc(256);
  if(start==0) {
    return 0;
  }
  memset(start,' ',256 -1);
  start[256 -1]='\0';
  pt->kind=port_string|port_output|port_srfi6;
  pt->rep.string.start=start;
  pt->rep.string.curr=start;
  pt->rep.string.past_the_end=start+256 -1;
  return pt;
}

static pointer port_from_scratch(scheme *sc) {
  port *pt;
  pt=port_rep_from_scratch(sc);
  if(pt==0) {
    return sc->NIL;
  }
  return mk_port(sc,pt);
}

static void port_close(scheme *sc, pointer p, int flag) {
  port *pt=p->_object._port;
  pt->kind&=~flag;
  if((pt->kind & (port_input|port_output))==0) {
    if(pt->kind&port_file) {



      pt->rep.stdio.curr_line = 0;

      if(pt->rep.stdio.filename)
        sc->free(pt->rep.stdio.filename);


      fclose(pt->rep.stdio.file);
    }
    pt->kind=port_free;
  }
}


static gunichar basic_inchar(port *pt) {
  if(pt->kind & port_file) {
    int c;

    c = fgetc(pt->rep.stdio.file);

    while ((!(0)))
      {
        if (c == (-1)) return (-1);

        if (c <= 0x7f)
            return (gunichar) c;


        if (c < 0xc2 || c > 0xf4)
          {

            c = fgetc(pt->rep.stdio.file);
          }
        else
          {
            unsigned char utf8[7];
            int len;
            int i;

            utf8[0] = c;

            len = utf8_length[c & 0x3F];
            for (i = 1; i <= len; i++)
              {
                c = fgetc(pt->rep.stdio.file);


                if ((c & 0xc0) != 0x80)
                    break;

                utf8[i] = c;
              }

            if (i > len)
              {
                return g_utf8_get_char_validated ((char *) utf8,
                                                  sizeof(utf8));
              }


          }
      }
  } else {
    gunichar c;
    int len;

    while ((!(0)))
    {

      if (*pt->rep.string.curr == 0 ||
          pt->rep.string.curr == pt->rep.string.past_the_end) {
        return (-1);
      }

      len = pt->rep.string.past_the_end - pt->rep.string.curr;
      c = g_utf8_get_char_validated(pt->rep.string.curr, len);

      if (c >= 0)
      {
        len = g_unichar_to_utf8(c, ((void*)0));
        pt->rep.string.curr += len;
        return c;
      }


      pt->rep.string.curr = g_utf8_find_next_char(pt->rep.string.curr,
                                                  pt->rep.string.past_the_end);
    }
  }
}


static gunichar inchar(scheme *sc) {
  gunichar c;
  port *pt;

  pt = sc->inport->_object._port;
  if(pt->kind & port_saw_EOF)
    { return((-1)); }
  if(pt->kind&port_file)
  {
    if (sc->bc_flag)
      c = sc->backchar[--sc->bc_flag];
    else
      c = basic_inchar(pt);
  }
  else
    c = basic_inchar(pt);
  if(c == (-1) && sc->inport == sc->loadport) {

    pt->kind |= port_saw_EOF;


    return (-1);

  }
  return c;
}


static void backchar(scheme *sc, gunichar c) {
  port *pt;
  gint charlen;

  if(c==(-1)) return;
  charlen = g_unichar_to_utf8(c, ((void*)0));
  pt=sc->inport->_object._port;
  if(pt->kind&port_file) {
    if (sc->bc_flag < 2)
      sc->backchar[sc->bc_flag++] = c;
  } else {
    if(pt->rep.string.curr!=pt->rep.string.start) {
      if(pt->rep.string.curr-pt->rep.string.start >= charlen)
        pt->rep.string.curr -= charlen;
      else
        pt->rep.string.curr = pt->rep.string.start;
    }
  }
}

static int realloc_port_string(scheme *sc, port *p)
{
  char *start=p->rep.string.start;
  size_t new_size=p->rep.string.past_the_end-start+1+256;
  char *str=sc->malloc(new_size);
  if(str) {
    memset(str,' ',new_size-1);
    str[new_size-1]='\0';
    strcpy(str,start);
    p->rep.string.start=str;
    p->rep.string.past_the_end=str+new_size-1;
    p->rep.string.curr-=start-str;
    sc->free(start);
    return 1;
  } else {
    return 0;
  }
}


static void putchars(scheme *sc, const char *chars, int char_cnt) {
  int free_bytes;
  int l;
  port *pt=sc->outport->_object._port;

  if (char_cnt <= 0)
      return;


  char_cnt = g_utf8_offset_to_pointer(chars, (long)char_cnt) - chars;

  if(pt->kind&port_file) {






      if (pt->rep.stdio.file == stdout)
           ts_output_string (TS_OUTPUT_NORMAL, chars, char_cnt);
      else {
        fwrite(chars,1,char_cnt,pt->rep.stdio.file);
        fflush(pt->rep.stdio.file);
      }

  } else {
    if (pt->rep.string.past_the_end != pt->rep.string.curr)
    {
       free_bytes = pt->rep.string.past_the_end - pt->rep.string.curr;
       l = ((char_cnt) <= (free_bytes) ? (char_cnt) : (free_bytes));
       memcpy(pt->rep.string.curr, chars, l);
       pt->rep.string.curr += l;
    }
    else if(pt->kind&port_srfi6&&realloc_port_string(sc,pt))
    {
       free_bytes = pt->rep.string.past_the_end - pt->rep.string.curr;
       l = ((char_cnt) <= (free_bytes) ? (char_cnt) : (free_bytes));
       memcpy(pt->rep.string.curr, chars, char_cnt);
       pt->rep.string.curr += l;
    }
  }
}

          void putcharacter(scheme *sc, gunichar c) {
  char utf8[7];

  (void)g_unichar_to_utf8(c, utf8);
  putchars(sc, utf8, 1);
}

          void putstr(scheme *sc, const char *s) {
  putchars(sc, s, g_utf8_strlen(s, -1));
}


static char *readstr_upto(scheme *sc, char *delim) {
  char *p = sc->strbuff;
  gunichar c = 0;
  gunichar c_prev = 0;
  int len = 0;

  do {
    c_prev = c;
    c = inchar(sc);
    len = g_unichar_to_utf8(c, p);
    p += len;
  } while ((p - sc->strbuff < sizeof(sc->strbuff)) &&
           (c && !is_one_of(delim, c)));

  if(p == sc->strbuff+2 && c_prev == '\\')
    *p = '\0';
  else
  {
    backchar(sc,c);
    p[-len] = '\0';
  }
  return sc->strbuff;
}


static pointer readstrexp(scheme *sc) {
  char *p = sc->strbuff;
  gunichar c;
  int c1=0;
  int len;
  enum { st_ok, st_bsl, st_x1, st_x2, st_oct1, st_oct2 } state=st_ok;

  for (;;) {
    c=inchar(sc);
    if(c == (-1) || p-sc->strbuff > sizeof(sc->strbuff)-1) {
      return sc->F;
    }
    switch(state) {
    case st_ok:
      switch(c) {
      case '\\':
        state=st_bsl;
        break;
      case '"':
        *p=0;
        return mk_counted_string(sc,sc->strbuff,
                                 g_utf8_strlen(sc->strbuff, sizeof(sc->strbuff)));
      default:
        len = g_unichar_to_utf8(c, p);
        p += len;
        break;
      }
      break;
    case st_bsl:
      switch(c) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
        state=st_oct1;
        c1=g_unichar_digit_value(c);
        break;
      case 'x':
      case 'X':
        state=st_x1;
        c1=0;
        break;
      case 'n':
        *p++='\n';
        state=st_ok;
        break;
      case 't':
        *p++='\t';
        state=st_ok;
        break;
      case 'r':
        *p++='\r';
        state=st_ok;
        break;
      case '"':
        *p++='"';
        state=st_ok;
        break;
      default:
        len = g_unichar_to_utf8(c, p);
        p += len;
        state=st_ok;
        break;
      }
      break;
    case st_x1:
    case st_x2:
      if (!g_unichar_isxdigit(c))
         return sc->F;
      c1=(c1<<4)+g_unichar_xdigit_value(c);
      if(state==st_x1)
        state=st_x2;
      else {
        *p++=c1;
        state=st_ok;
      }
      break;
    case st_oct1:
    case st_oct2:
      if (!g_unichar_isdigit(c) || g_unichar_digit_value(c) > 7)
      {
        *p++=c1;
        backchar(sc, c);
        state=st_ok;
      }
      else
      {

        if (state==st_oct2 && c1 >= 32)
          return sc->F;

        c1=(c1<<3)+g_unichar_digit_value(c);

        if (state == st_oct1)
          state=st_oct2;
        else
        {
          *p++=c1;
          state=st_ok;
        }
      }
      break;
    }
  }
}


static int is_one_of(char *s, gunichar c) {
  if (c==(-1))
     return 1;

  if (g_utf8_strchr(s, -1, c) != ((void*)0))
     return (1);

  return (0);
}


static int skipspace(scheme *sc) {
     gunichar c;
     int curr_line = 0;
     do {
         c=inchar(sc);

         if(c=='\n')
           curr_line++;

     } while (g_unichar_isspace(c));



     sc->load_stack[sc->file_i].rep.stdio.curr_line += curr_line;


     if(c!=(-1)) {
          backchar(sc,c);
          return 1;
     }
     else
       { return (-1); }
}


static int token(scheme *sc) {
     gunichar c;
     c = skipspace(sc);
     if(c == (-1)) { return ((-1)); }
     switch (c=inchar(sc)) {
     case (-1):
          return ((-1));
     case '(':
          return (0);
     case ')':
          return (1);
     case '.':
          c=inchar(sc);
          if(is_one_of(" \n\t",c)) {
               return (2);
          } else {
               backchar(sc,c);
               backchar(sc,'.');
               return 3;
          }
     case '\'':
          return (4);
     case ';':
          while ((c=inchar(sc)) != '\n' && c!=(-1))
            ;


           if(c == '\n')
             sc->load_stack[sc->file_i].rep.stdio.curr_line++;


       if(c == (-1))
         { return ((-1)); }
       else
         { return (token(sc));}
     case '"':
          return (6);
     case '_':
          if ((c=inchar(sc)) == '"')
               return (13);
          backchar(sc,c);
          return (3);
     case '`':
          return (7);
     case ',':
          if ((c=inchar(sc)) == '@') {
               return (9);
          } else {
               backchar(sc,c);
               return (8);
          }
     case '#':
          c=inchar(sc);
          if (c == '(') {
               return (12);
          } else if(c == '!') {
               while ((c=inchar(sc)) != '\n' && c!=(-1))
                   ;


           if(c == '\n')
             sc->load_stack[sc->file_i].rep.stdio.curr_line++;


           if(c == (-1))
             { return ((-1)); }
           else
             { return (token(sc));}
          } else {
               backchar(sc,c);
               if(is_one_of(" tfodxb\\",c)) {
                    return 11;
               } else {
                    return (10);
               }
          }
     default:
          backchar(sc,c);
          return (3);
     }
}




static void printslashstring(scheme *sc, char *p, int len) {
  int i;
  gunichar c;
  char *s=(char*)p;

  putcharacter(sc,'"');
  for (i=0; i<len; i++) {
    c = g_utf8_get_char(s);

    if(c==0xff || c=='"' || c<' ' || c=='\\') {
      putcharacter(sc,'\\');
      switch(c) {
      case '"':
        putcharacter(sc,'"');
        break;
      case '\n':
        putcharacter(sc,'n');
        break;
      case '\t':
        putcharacter(sc,'t');
        break;
      case '\r':
        putcharacter(sc,'r');
        break;
      case '\\':
        putcharacter(sc,'\\');
        break;
      default: {

          int d=c/16;
          putcharacter(sc,'x');
          if(d<10) {
            putcharacter(sc,d+'0');
          } else {
            putcharacter(sc,d-10+'A');
          }
          d=c%16;
          if(d<10) {
            putcharacter(sc,d+'0');
          } else {
            putcharacter(sc,d-10+'A');
          }
        }
      }
    } else {
      putcharacter(sc,c);
    }
    s = (char *)((s) + g_utf8_skip[*(const guchar *)(s)]);
  }
  putcharacter(sc,'"');
}



static void printatom(scheme *sc, pointer l, int f) {
  char *p;
  int len;
  atom2str(sc,l,f,&p,&len);
  putchars(sc,p,len);
}



static void atom2str(scheme *sc, pointer l, int f, char **pp, int *plen) {
     char *p;

     if (l == sc->NIL) {
          p = "()";
     } else if (l == sc->T) {
          p = "#t";
     } else if (l == sc->F) {
          p = "#f";
     } else if (l == sc->EOF_OBJ) {
          p = "#<EOF>";
     } else if (is_port(l)) {
          p = sc->strbuff;
          snprintf(p, 1024, "#<PORT>");
     } else if (is_number(l)) {
          p = sc->strbuff;
          if(num_is_integer(l)) {
               snprintf(p, 1024, "%ld", ((l)->_object._number.value.ivalue));
          } else {
               snprintf(p, 1024, "%.10g", ((l)->_object._number.value.rvalue));

               f = strcspn(p, ".e");
               if (p[f] == 0) {
                    p[f] = '.';
                    p[f+1] = '0';
                    p[f+2] = 0;
               }
          }
     } else if (is_string(l)) {
          if (!f) {
               p = ((l)->_object._string._svalue);
          } else {
               *pp=sc->strbuff;
               *plen=0;
               printslashstring(sc, ((l)->_object._string._svalue),
                                g_utf8_strlen(((l)->_object._string._svalue), -1));
               return;
          }
     } else if (is_character(l)) {
          gunichar c=charvalue(l);
          p = sc->strbuff;
          if (!f) {
               int len = g_unichar_to_utf8(c, p);
               p[len]=0;
          } else {
               switch(c) {
               case ' ':
                    snprintf(p,1024,"#\\space"); break;
               case '\n':
                    snprintf(p,1024,"#\\newline"); break;
               case '\r':
                    snprintf(p,1024,"#\\return"); break;
               case '\t':
                    snprintf(p,1024,"#\\tab"); break;
               default:
# 2176 "scheme.c"
                    if(c<32) {
                      snprintf(p,1024,"#\\x%x",c); break;
                    }

                    snprintf(p,1024,"#\\%c",c); break;
               }
          }
     } else if (is_symbol(l)) {
          p = symname(l);
     } else if (is_proc(l)) {
          p = sc->strbuff;
          snprintf(p,1024,"#<%s PROCEDURE %ld>",
                   procname(l),ivalue(l));
     } else if (is_macro(l)) {
          p = "#<MACRO>";
     } else if (is_closure(l)) {
          p = "#<CLOSURE>";
     } else if (is_promise(l)) {
          p = "#<PROMISE>";
     } else if (is_foreign(l)) {
          p = sc->strbuff;
          snprintf(p,1024,"#<FOREIGN PROCEDURE %ld>", ivalue(l));
     } else if (is_continuation(l)) {
          p = "#<CONTINUATION>";
     } else {
          p = "#<ERROR>";
     }
     *pp=p;
     *plen=g_utf8_strlen(p, -1);
}



static pointer mk_closure(scheme *sc, pointer c, pointer e) {
     pointer x = get_cell(sc, c, e);

     ((x)->_flag) = T_CLOSURE;
     ((x)->_object._cons._car) = c;
     ((x)->_object._cons._cdr) = e;
     return (x);
}


static pointer mk_continuation(scheme *sc, pointer d) {
     pointer x = get_cell(sc, sc->NIL, d);

     ((x)->_flag) = T_CONTINUATION;
     ((x)->_object._cons._cdr) = d;
     return (x);
}

static pointer list_star(scheme *sc, pointer d) {
  pointer p, q;
  if(((d)->_object._cons._cdr)==sc->NIL) {
    return ((d)->_object._cons._car);
  }
  p=_cons(sc,((d)->_object._cons._car),((d)->_object._cons._cdr),0);
  q=p;
  while(((((p)->_object._cons._cdr))->_object._cons._cdr)!=sc->NIL) {
    d=_cons(sc,((p)->_object._cons._car),((p)->_object._cons._cdr),0);
    if(((((p)->_object._cons._cdr))->_object._cons._cdr)!=sc->NIL) {
      p=((d)->_object._cons._cdr);
    }
  }
  ((p)->_object._cons._cdr)=((((p)->_object._cons._cdr))->_object._cons._car);
  return q;
}


static pointer reverse(scheme *sc, pointer a) {

     pointer p = sc->NIL;

     for ( ; is_pair(a); a = ((a)->_object._cons._cdr)) {
          p = _cons(sc,((a)->_object._cons._car),p,0);
     }
     return (p);
}


static pointer reverse_in_place(scheme *sc, pointer term, pointer list) {
     pointer p = list, result = term, q;

     while (p != sc->NIL) {
          q = ((p)->_object._cons._cdr);
          ((p)->_object._cons._cdr) = result;
          result = p;
          p = q;
     }
     return (result);
}


static pointer revappend(scheme *sc, pointer a, pointer b) {
    pointer result = a;
    pointer p = b;

    while (is_pair(p)) {
        result = _cons(sc,((p)->_object._cons._car),result,0);
        p = ((p)->_object._cons._cdr);
    }

    if (p == sc->NIL) {
        return result;
    }

    return sc->F;
}


int eqv(pointer a, pointer b) {
     if (is_string(a)) {
          if (is_string(b))
               return (((a)->_object._string._svalue) == ((b)->_object._string._svalue));
          else
               return (0);
     } else if (is_number(a)) {
          if (is_number(b)) {
               if (num_is_integer(a) == num_is_integer(b))
                    return num_eq(nvalue(a),nvalue(b));
          }
          return (0);
     } else if (is_character(a)) {
          if (is_character(b))
               return charvalue(a)==charvalue(b);
          else
               return (0);
     } else if (is_port(a)) {
          if (is_port(b))
               return a==b;
          else
               return (0);
     } else if (is_proc(a)) {
          if (is_proc(b))
               return ivalue(a)==ivalue(b);
          else
               return (0);
     } else {
          return (a == b);
     }
}
# 2327 "scheme.c"
static int hash_fn(const char *key, int table_size)
{
  unsigned int hashed = 0;
  const char *c;
  int bits_per_int = sizeof(unsigned int)*8;

  for (c = key; *c; c++) {

    hashed = (hashed<<5) | (hashed>>(bits_per_int-5));
    hashed ^= *c;
  }
  return hashed % table_size;
}
# 2352 "scheme.c"
static void new_frame_in_env(scheme *sc, pointer old_env)
{
  pointer new_frame;


  if (old_env == sc->NIL) {
    new_frame = mk_vector(sc, 461);
  } else {
    new_frame = sc->NIL;
  }

  sc->envir = _cons(sc,new_frame,old_env,1);
  ((sc->envir)->_flag) = T_ENVIRONMENT;
}

static void new_slot_spec_in_env(scheme *sc, pointer env,
                                        pointer variable, pointer value)
{
  pointer slot = _cons(sc,variable,value,1);

  if (is_vector(((env)->_object._cons._car))) {
    int location = hash_fn(symname(variable), ((((env)->_object._cons._car))->_object._number.value.ivalue));

    set_vector_elem(((env)->_object._cons._car), location,
                    _cons(sc,slot,vector_elem(((env)->_object._cons._car), location),1));
  } else {
    ((env)->_object._cons._car) = _cons(sc,slot,((env)->_object._cons._car),1);
  }
}

static pointer find_slot_in_env(scheme *sc, pointer env, pointer hdl, int all)
{
  pointer x,y;
  int location;

  for (x = env; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
    if (is_vector(((x)->_object._cons._car))) {
      location = hash_fn(symname(hdl), ((((x)->_object._cons._car))->_object._number.value.ivalue));
      y = vector_elem(((x)->_object._cons._car), location);
    } else {
      y = ((x)->_object._cons._car);
    }
    for ( ; y != sc->NIL; y = ((y)->_object._cons._cdr)) {
              if (((((y)->_object._cons._car))->_object._cons._car) == hdl) {
                   break;
              }
         }
         if (y != sc->NIL) {
              break;
         }
         if(!all) {
           return sc->NIL;
         }
    }
    if (x != sc->NIL) {
          return ((y)->_object._cons._car);
    }
    return sc->NIL;
}
# 2450 "scheme.c"
static void new_slot_in_env(scheme *sc, pointer variable, pointer value)
{
  new_slot_spec_in_env(sc, sc->envir, variable, value);
}

static void set_slot_in_env(scheme *sc, pointer slot, pointer value)
{
  ((slot)->_object._cons._cdr) = value;
}

static pointer slot_value_in_env(pointer slot)
{
  return ((slot)->_object._cons._cdr);
}




static pointer _Error_1(scheme *sc, const char *s, pointer a) {
     const char *str = s;

     pointer x;
     pointer hdl=sc->ERROR_HOOK;



     char sbuf[1024];


     if(sc->load_stack[sc->file_i].rep.stdio.file != stdin) {
       int ln = sc->load_stack[sc->file_i].rep.stdio.curr_line;
       const char *fname = sc->load_stack[sc->file_i].rep.stdio.filename;


       if(!fname) fname = "<unknown>";


       ln++;
       snprintf(sbuf, 1024, "(%s : %i) %s", fname, ln, s);

       str = (const char*)sbuf;
     }



     x=find_slot_in_env(sc,sc->envir,hdl,1);
    if (x != sc->NIL) {
         if(a!=0) {
               sc->code = _cons(sc,_cons(sc,sc->QUOTE,_cons(sc,(a),sc->NIL,0),0),sc->NIL,0);
         } else {
               sc->code = sc->NIL;
         }
         sc->code = _cons(sc,mk_string(sc, str),sc->code,0);
         setimmutable(((sc->code)->_object._cons._car));
         sc->code = _cons(sc,slot_value_in_env(x),sc->code,0);
         sc->op = (int)OP_EVAL;
         return sc->T;
    }


    if(a!=0) {
          sc->args = _cons(sc,(a),sc->NIL,0);
    } else {
          sc->args = sc->NIL;
    }
    sc->args = _cons(sc,mk_string(sc, str),sc->args,0);
    setimmutable(((sc->args)->_object._cons._car));
    sc->op = (int)OP_ERR0;
    return sc->T;
}
# 2619 "scheme.c"
static void dump_stack_reset(scheme *sc)
{
  sc->dump = sc->NIL;
}

static void dump_stack_initialize(scheme *sc)
{
  dump_stack_reset(sc);
}

static void dump_stack_free(scheme *sc)
{
  sc->dump = sc->NIL;
}

static pointer _s_return(scheme *sc, pointer a) {
    sc->value = (a);
    if(sc->dump==sc->NIL) return sc->NIL;
    sc->op = ivalue(((sc->dump)->_object._cons._car));
    sc->args = ((((sc->dump)->_object._cons._cdr))->_object._cons._car);
    sc->envir = ((((((sc->dump)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._car);
    sc->code = ((((((((sc->dump)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._cdr))->_object._cons._car);
    sc->dump = ((((((((sc->dump)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._cdr))->_object._cons._cdr);
    return sc->T;
}

static void s_save(scheme *sc, enum scheme_opcodes op, pointer args, pointer code) {
    sc->dump = _cons(sc,sc->envir,_cons(sc,(code),sc->dump,0),0);
    sc->dump = _cons(sc,(args),sc->dump,0);
    sc->dump = _cons(sc,mk_integer(sc, (long)(op)),sc->dump,0);
}

static void dump_stack_mark(scheme *sc)
{
  mark(sc->dump);
}




static pointer opexe_0(scheme *sc, enum scheme_opcodes op) {
     pointer x, y;

     switch (op) {
     case OP_LOAD:
          if(file_interactive(sc)) {
               fprintf(sc->outport->_object._port->rep.stdio.file,
                       "Loading %s\n", ((((sc->args)->_object._cons._car))->_object._string._svalue));
          }
          if (!file_push(sc,((((sc->args)->_object._cons._car))->_object._string._svalue))) {
               return _Error_1(sc,"unable to open",((sc->args)->_object._cons._car));
          }
          else
          {
            sc->args = mk_integer(sc,sc->file_i);
            do { sc->op = (int)(OP_T0LVL); return sc->T; } while (0);
          }

     case OP_T0LVL:

       if(sc->loadport->_object._port->kind & port_saw_EOF)
         {
           if(sc->file_i == 0)
             {
               sc->args=sc->NIL;
               do { sc->op = (int)(OP_QUIT); return sc->T; } while (0);
             }
           else
             {
               file_pop(sc);
               return _s_return(sc,sc->value);
             }

         }


       if(file_interactive(sc))
         {
           sc->envir = sc->global_env;
           dump_stack_reset(sc);
           putstr(sc,"\n");
           putstr(sc,"ts> ");
         }


       sc->nesting=0;
       sc->save_inport=sc->inport;
       sc->inport = sc->loadport;
       s_save(sc,OP_T0LVL, sc->NIL, sc->NIL);
       s_save(sc,OP_VALUEPRINT, sc->NIL, sc->NIL);
       s_save(sc,OP_T1LVL, sc->NIL, sc->NIL);
       do { sc->op = (int)(OP_READ_INTERNAL); return sc->T; } while (0);

     case OP_T1LVL:
          sc->code = sc->value;
          sc->inport=sc->save_inport;
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_READ_INTERNAL:
          sc->tok = token(sc);
          if(sc->tok==(-1))
            { return _s_return(sc,sc->EOF_OBJ); }
          do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);

     case OP_GENSYM:
          return _s_return(sc,gensym(sc));

     case OP_VALUEPRINT:



       if(sc->tracing) {
         putstr(sc,"\nGives: ");
       }
       if(file_interactive(sc) || sc->print_output) {
         sc->print_flag = 1;
         sc->args = sc->value;
         do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
       } else {
         return _s_return(sc,sc->value);
       }

     case OP_EVAL:

       if(sc->tracing) {

         s_save(sc,OP_REAL_EVAL,sc->args,sc->code);
         sc->args=sc->code;
         putstr(sc,"\nEval: ");
         do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
       }

     case OP_REAL_EVAL:

          if (is_symbol(sc->code)) {
               x=find_slot_in_env(sc,sc->envir,sc->code,1);
               if (x != sc->NIL) {
                    return _s_return(sc,slot_value_in_env(x));
               } else {
                    return _Error_1(sc,"eval: unbound variable:",sc->code);
               }
          } else if (is_pair(sc->code)) {
               if (is_syntax(x = ((sc->code)->_object._cons._car))) {
                    sc->code = ((sc->code)->_object._cons._cdr);
                    do { sc->op = (int)(syntaxnum(x)); return sc->T; } while (0);
               } else {
                    s_save(sc,OP_E0ARGS, sc->NIL, sc->code);

                    sc->code = ((sc->code)->_object._cons._car);
                    do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
               }
          } else {
               return _s_return(sc,sc->code);
          }

     case OP_E0ARGS:
          if (is_macro(sc->value)) {
               s_save(sc,OP_DOMACRO, sc->NIL, sc->NIL);
               sc->args = _cons(sc,sc->code,sc->NIL,0);
               sc->code = sc->value;
               do { sc->op = (int)(OP_APPLY); return sc->T; } while (0);
          } else {
               sc->code = ((sc->code)->_object._cons._cdr);
               do { sc->op = (int)(OP_E1ARGS); return sc->T; } while (0);
          }

     case OP_E1ARGS:
          sc->args = _cons(sc,sc->value,sc->args,0);
          if (is_pair(sc->code)) {
               s_save(sc,OP_E1ARGS, sc->args, ((sc->code)->_object._cons._cdr));
               sc->code = ((sc->code)->_object._cons._car);
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
          } else {
               sc->args = reverse_in_place(sc, sc->NIL, sc->args);
               sc->code = ((sc->args)->_object._cons._car);
               sc->args = ((sc->args)->_object._cons._cdr);
               do { sc->op = (int)(OP_APPLY); return sc->T; } while (0);
          }


     case OP_TRACING: {
       int tr=sc->tracing;
       sc->tracing=ivalue(((sc->args)->_object._cons._car));
       return _s_return(sc,mk_integer(sc,tr));
     }


     case OP_APPLY:

       if(sc->tracing) {
         s_save(sc,OP_REAL_APPLY,sc->args,sc->code);
         sc->print_flag = 1;

         putstr(sc,"\nApply to: ");
         do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
       }

     case OP_REAL_APPLY:

          if (is_proc(sc->code)) {
               do { sc->op = (int)(ivalue(sc->code)); return sc->T; } while (0);
          } else if (is_foreign(sc->code))
          {

               push_recent_alloc(sc,sc->args,sc->NIL);
               sc->foreign_error = sc->NIL;
               x=sc->code->_object._ff(sc,sc->args);
               if (sc->foreign_error == sc->NIL) {
                   return _s_return(sc,x);
               } else {
                   x = sc->foreign_error;
                   sc->foreign_error = sc->NIL;
                   return _Error_1(sc,string_value (((x)->_object._cons._car)),((x)->_object._cons._cdr));
               }
          } else if (is_closure(sc->code) || is_macro(sc->code)
                     || is_promise(sc->code)) {


               new_frame_in_env(sc, closure_env(sc->code));
               for (x = ((closure_code(sc->code))->_object._cons._car), y = sc->args;
                    is_pair(x); x = ((x)->_object._cons._cdr), y = ((y)->_object._cons._cdr)) {
                    if (y == sc->NIL) {
                         return _Error_1(sc,"not enough arguments",0);
                    } else {
                         new_slot_in_env(sc, ((x)->_object._cons._car), ((y)->_object._cons._car));
                    }
               }
               if (x == sc->NIL) {





               } else if (is_symbol(x))
                    new_slot_in_env(sc, x, y);
               else {
                    return _Error_1(sc,"syntax error in closure: not a symbol:",x);
               }
               sc->code = ((closure_code(sc->code))->_object._cons._cdr);
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);
          } else if (is_continuation(sc->code)) {
               sc->dump = ((sc->code)->_object._cons._cdr);
               return _s_return(sc,sc->args != sc->NIL ? ((sc->args)->_object._cons._car) : sc->NIL);
          } else {
               return _Error_1(sc,"illegal function",0);
          }

     case OP_DOMACRO:
          sc->code = sc->value;
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);


     case OP_LAMBDA:


          {
               pointer f=find_slot_in_env(sc,sc->envir,sc->COMPILE_HOOK,1);
               if(f==sc->NIL) {
                    sc->value = sc->code;

               } else {
                    s_save(sc,OP_LAMBDA1,sc->args,sc->code);
                    sc->args=_cons(sc,sc->code,sc->NIL,0);
                    sc->code=slot_value_in_env(f);
                    do { sc->op = (int)(OP_APPLY); return sc->T; } while (0);
               }
          }

     case OP_LAMBDA1:
          return _s_return(sc,mk_closure(sc, sc->value, sc->envir));







     case OP_MKCLOSURE:
       x=((sc->args)->_object._cons._car);
       if(((x)->_object._cons._car)==sc->LAMBDA) {
         x=((x)->_object._cons._cdr);
       }
       if(((sc->args)->_object._cons._cdr)==sc->NIL) {
         y=sc->envir;
       } else {
         y=((((sc->args)->_object._cons._cdr))->_object._cons._car);
       }
       return _s_return(sc,mk_closure(sc, x, y));

     case OP_QUOTE:
          return _s_return(sc,((sc->code)->_object._cons._car));

     case OP_DEF0:
          if(is_immutable(((sc->code)->_object._cons._car)))
                return _Error_1(sc,"define: unable to alter immutable",((sc->code)->_object._cons._car));

          if (is_pair(((sc->code)->_object._cons._car))) {
               x = ((((sc->code)->_object._cons._car))->_object._cons._car);
               sc->code = _cons(sc,sc->LAMBDA,_cons(sc,((((sc->code)->_object._cons._car))->_object._cons._cdr),((sc->code)->_object._cons._cdr),0),0);
          } else {
               x = ((sc->code)->_object._cons._car);
               sc->code = ((((sc->code)->_object._cons._cdr))->_object._cons._car);
          }
          if (!is_symbol(x)) {
               return _Error_1(sc,"variable is not a symbol",0);
          }
          s_save(sc,OP_DEF1, sc->NIL, x);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_DEF1:
          x=find_slot_in_env(sc,sc->envir,sc->code,0);
          if (x != sc->NIL) {
               set_slot_in_env(sc, x, sc->value);
          } else {
               new_slot_in_env(sc, sc->code, sc->value);
          }
          return _s_return(sc,sc->code);


     case OP_DEFP:
          x=sc->envir;
          if(((sc->args)->_object._cons._cdr)!=sc->NIL) {
               x=((((sc->args)->_object._cons._cdr))->_object._cons._car);
          }
          return _s_return(sc,(find_slot_in_env(sc,x,((sc->args)->_object._cons._car),1)!=sc->NIL) ? sc->T : sc->F);

     case OP_SET0:
          if(is_immutable(((sc->code)->_object._cons._car)))
                return _Error_1(sc,"set!: unable to alter immutable variable",((sc->code)->_object._cons._car));
          s_save(sc,OP_SET1, sc->NIL, ((sc->code)->_object._cons._car));
          sc->code = ((((sc->code)->_object._cons._cdr))->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_SET1:
          y=find_slot_in_env(sc,sc->envir,sc->code,1);
          if (y != sc->NIL) {
             set_slot_in_env(sc, y, sc->value);
             return _s_return(sc,sc->value);
          } else {
             return _Error_1(sc,"set!: unbound variable:",sc->code);
          }

     case OP_BEGIN:
          if (!is_pair(sc->code)) {
               return _s_return(sc,sc->code);
          }
          if (((sc->code)->_object._cons._cdr) != sc->NIL) {
               s_save(sc,OP_BEGIN, sc->NIL, ((sc->code)->_object._cons._cdr));
          }
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_IF0:
          s_save(sc,OP_IF1, sc->NIL, ((sc->code)->_object._cons._cdr));
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_IF1:
          if (((sc->value) != sc->F))
               sc->code = ((sc->code)->_object._cons._car);
          else
               sc->code = ((((sc->code)->_object._cons._cdr))->_object._cons._car);

          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_LET0:
          sc->args = sc->NIL;
          sc->value = sc->code;
          sc->code = is_symbol(((sc->code)->_object._cons._car)) ? ((((sc->code)->_object._cons._cdr))->_object._cons._car) : ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_LET1); return sc->T; } while (0);

     case OP_LET1:
          sc->args = _cons(sc,sc->value,sc->args,0);
          if (is_pair(sc->code)) {
               if (!is_pair(((sc->code)->_object._cons._car)) || !is_pair(((((sc->code)->_object._cons._car))->_object._cons._cdr))) {
                    return _Error_1(sc,"Bad syntax of binding spec in let :",((sc->code)->_object._cons._car));
               }
               s_save(sc,OP_LET1, sc->args, ((sc->code)->_object._cons._cdr));
               sc->code = ((((((sc->code)->_object._cons._car))->_object._cons._cdr))->_object._cons._car);
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
          } else {
               sc->args = reverse_in_place(sc, sc->NIL, sc->args);
               sc->code = ((sc->args)->_object._cons._car);
               sc->args = ((sc->args)->_object._cons._cdr);
               do { sc->op = (int)(OP_LET2); return sc->T; } while (0);
          }

     case OP_LET2:
          new_frame_in_env(sc, sc->envir);
          for (x = is_symbol(((sc->code)->_object._cons._car)) ? ((((sc->code)->_object._cons._cdr))->_object._cons._car) : ((sc->code)->_object._cons._car), y = sc->args;
               y != sc->NIL; x = ((x)->_object._cons._cdr), y = ((y)->_object._cons._cdr)) {
               new_slot_in_env(sc, ((((x)->_object._cons._car))->_object._cons._car), ((y)->_object._cons._car));
          }
          if (is_symbol(((sc->code)->_object._cons._car))) {
               for (x = ((((sc->code)->_object._cons._cdr))->_object._cons._car), sc->args = sc->NIL; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
                    if (!is_pair(x))
                        return _Error_1(sc,"Bad syntax of binding in let :",x);
                    if (!is_list(sc, ((x)->_object._cons._car)))
                        return _Error_1(sc,"Bad syntax of binding in let :",((x)->_object._cons._car));
                    sc->args = _cons(sc,((((x)->_object._cons._car))->_object._cons._car),sc->args,0);
               }
               x = mk_closure(sc, _cons(sc,reverse_in_place(sc, sc->NIL, sc->args),((((sc->code)->_object._cons._cdr))->_object._cons._cdr),0), sc->envir);
               new_slot_in_env(sc, ((sc->code)->_object._cons._car), x);
               sc->code = ((((sc->code)->_object._cons._cdr))->_object._cons._cdr);
               sc->args = sc->NIL;
          } else {
               sc->code = ((sc->code)->_object._cons._cdr);
               sc->args = sc->NIL;
          }
          do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);

     case OP_LET0AST:
          if (((sc->code)->_object._cons._car) == sc->NIL) {
               new_frame_in_env(sc, sc->envir);
               sc->code = ((sc->code)->_object._cons._cdr);
               do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);
          }
          if(!is_pair(((sc->code)->_object._cons._car)) || !is_pair(((((sc->code)->_object._cons._car))->_object._cons._car)) || !is_pair(((((((sc->code)->_object._cons._car))->_object._cons._car))->_object._cons._cdr))) {
               return _Error_1(sc,"Bad syntax of binding spec in let* :",((sc->code)->_object._cons._car));
          }
          s_save(sc,OP_LET1AST, ((sc->code)->_object._cons._cdr), ((sc->code)->_object._cons._car));
          sc->code = ((((((((sc->code)->_object._cons._car))->_object._cons._car))->_object._cons._cdr))->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_LET1AST:
          new_frame_in_env(sc, sc->envir);
          do { sc->op = (int)(OP_LET2AST); return sc->T; } while (0);

     case OP_LET2AST:
          new_slot_in_env(sc, ((((sc->code)->_object._cons._car))->_object._cons._car), sc->value);
          sc->code = ((sc->code)->_object._cons._cdr);
          if (is_pair(sc->code)) {
               s_save(sc,OP_LET2AST, sc->args, sc->code);
               sc->code = ((((((sc->code)->_object._cons._car))->_object._cons._cdr))->_object._cons._car);
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
          } else {
               sc->code = sc->args;
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);
          }
     default:
          snprintf(sc->strbuff,1024,"%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);
     }
     return sc->T;
}

static pointer opexe_1(scheme *sc, enum scheme_opcodes op) {
     pointer x, y;

     switch (op) {
     case OP_LET0REC:
          new_frame_in_env(sc, sc->envir);
          sc->args = sc->NIL;
          sc->value = sc->code;
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_LET1REC); return sc->T; } while (0);

     case OP_LET1REC:
          sc->args = _cons(sc,sc->value,sc->args,0);
          if (is_pair(sc->code)) {
               if (!is_pair(((sc->code)->_object._cons._car)) || !is_pair(((((sc->code)->_object._cons._car))->_object._cons._cdr))) {
                    return _Error_1(sc,"Bad syntax of binding spec in letrec :",((sc->code)->_object._cons._car));
               }
               s_save(sc,OP_LET1REC, sc->args, ((sc->code)->_object._cons._cdr));
               sc->code = ((((((sc->code)->_object._cons._car))->_object._cons._cdr))->_object._cons._car);
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
          } else {
               sc->args = reverse_in_place(sc, sc->NIL, sc->args);
               sc->code = ((sc->args)->_object._cons._car);
               sc->args = ((sc->args)->_object._cons._cdr);
               do { sc->op = (int)(OP_LET2REC); return sc->T; } while (0);
          }

     case OP_LET2REC:
          for (x = ((sc->code)->_object._cons._car), y = sc->args; y != sc->NIL; x = ((x)->_object._cons._cdr), y = ((y)->_object._cons._cdr)) {
               new_slot_in_env(sc, ((((x)->_object._cons._car))->_object._cons._car), ((y)->_object._cons._car));
          }
          sc->code = ((sc->code)->_object._cons._cdr);
          sc->args = sc->NIL;
          do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);

     case OP_COND0:
          if (!is_pair(sc->code)) {
               return _Error_1(sc,"syntax error in cond",0);
          }
          s_save(sc,OP_COND1, sc->NIL, sc->code);
          sc->code = ((((sc->code)->_object._cons._car))->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_COND1:
          if (((sc->value) != sc->F)) {
               if ((sc->code = ((((sc->code)->_object._cons._car))->_object._cons._cdr)) == sc->NIL) {
                    return _s_return(sc,sc->value);
               }
               if(!sc->code) {
                    return _Error_1(sc,"syntax error in cond",0);
               }
               if(((sc->code)->_object._cons._car)==sc->FEED_TO) {
                    if(!is_pair(((sc->code)->_object._cons._cdr))) {
                         return _Error_1(sc,"syntax error in cond",0);
                    }
                    x=_cons(sc,sc->QUOTE,_cons(sc,sc->value,sc->NIL,0),0);
                    sc->code=_cons(sc,((((sc->code)->_object._cons._cdr))->_object._cons._car),_cons(sc,x,sc->NIL,0),0);
                    do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
               }
               do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);
          } else {
               if ((sc->code = ((sc->code)->_object._cons._cdr)) == sc->NIL) {
                    return _s_return(sc,sc->NIL);
               } else {
                    s_save(sc,OP_COND1, sc->NIL, sc->code);
                    sc->code = ((((sc->code)->_object._cons._car))->_object._cons._car);
                    do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
               }
          }

     case OP_DELAY:
          x = mk_closure(sc, _cons(sc,sc->NIL,sc->code,0), sc->envir);
          ((x)->_flag)=T_PROMISE;
          return _s_return(sc,x);

     case OP_AND0:
          if (sc->code == sc->NIL) {
               return _s_return(sc,sc->T);
          }
          s_save(sc,OP_AND1, sc->NIL, ((sc->code)->_object._cons._cdr));
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_AND1:
          if (((sc->value) == sc->F)) {
               return _s_return(sc,sc->value);
          } else if (sc->code == sc->NIL) {
               return _s_return(sc,sc->value);
          } else {
               s_save(sc,OP_AND1, sc->NIL, ((sc->code)->_object._cons._cdr));
               sc->code = ((sc->code)->_object._cons._car);
               do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
          }

     case OP_OR0:
          if (sc->code == sc->NIL) {
               return _s_return(sc,sc->F);
          }
          s_save(sc,OP_OR1, sc->NIL, ((sc->code)->_object._cons._cdr));
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_OR1:
          if (((sc->value) != sc->F)) {
               return _s_return(sc,sc->value);
          } else if (sc->code == sc->NIL) {
               return _s_return(sc,sc->value);
          } else {
               s_save(sc,OP_OR1, sc->NIL, ((sc->code)->_object._cons._cdr));
               sc->code = ((sc->code)->_object._cons._car);
               do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
          }

     case OP_C0STREAM:
          s_save(sc,OP_C1STREAM, sc->NIL, ((sc->code)->_object._cons._cdr));
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_C1STREAM:
          sc->args = sc->value;
          x = mk_closure(sc, _cons(sc,sc->NIL,sc->code,0), sc->envir);
          ((x)->_flag)=T_PROMISE;
          return _s_return(sc,_cons(sc,sc->args,x,0));

     case OP_MACRO0:
          if (is_pair(((sc->code)->_object._cons._car))) {
               x = ((((sc->code)->_object._cons._car))->_object._cons._car);
               sc->code = _cons(sc,sc->LAMBDA,_cons(sc,((((sc->code)->_object._cons._car))->_object._cons._cdr),((sc->code)->_object._cons._cdr),0),0);
          } else {
               x = ((sc->code)->_object._cons._car);
               sc->code = ((((sc->code)->_object._cons._cdr))->_object._cons._car);
          }
          if (!is_symbol(x)) {
               return _Error_1(sc,"variable is not a symbol",0);
          }
          s_save(sc,OP_MACRO1, sc->NIL, x);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_MACRO1:
          ((sc->value)->_flag) = T_MACRO;
          x = find_slot_in_env(sc, sc->envir, sc->code, 0);
          if (x != sc->NIL) {
               set_slot_in_env(sc, x, sc->value);
          } else {
               new_slot_in_env(sc, sc->code, sc->value);
          }
          return _s_return(sc,sc->code);

     case OP_CASE0:
          s_save(sc,OP_CASE1, sc->NIL, ((sc->code)->_object._cons._cdr));
          sc->code = ((sc->code)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_CASE1:
          for (x = sc->code; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
               if (!is_pair(y = ((((x)->_object._cons._car))->_object._cons._car))) {
                    break;
               }
               for ( ; y != sc->NIL; y = ((y)->_object._cons._cdr)) {
                    if (eqv(((y)->_object._cons._car), sc->value)) {
                         break;
                    }
               }
               if (y != sc->NIL) {
                    break;
               }
          }
          if (x != sc->NIL) {
               if (is_pair(((((x)->_object._cons._car))->_object._cons._car))) {
                    sc->code = ((((x)->_object._cons._car))->_object._cons._cdr);
                    do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);
               } else {
                    s_save(sc,OP_CASE2, sc->NIL, ((((x)->_object._cons._car))->_object._cons._cdr));
                    sc->code = ((((x)->_object._cons._car))->_object._cons._car);
                    do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
               }
          } else {
               return _s_return(sc,sc->NIL);
          }

     case OP_CASE2:
          if (((sc->value) != sc->F)) {
               do { sc->op = (int)(OP_BEGIN); return sc->T; } while (0);
          } else {
               return _s_return(sc,sc->NIL);
          }

     case OP_PAPPLY:
          sc->code = ((sc->args)->_object._cons._car);
          sc->args = list_star(sc,((sc->args)->_object._cons._cdr));

          do { sc->op = (int)(OP_APPLY); return sc->T; } while (0);

     case OP_PEVAL:
          if(((sc->args)->_object._cons._cdr)!=sc->NIL) {
               sc->envir=((((sc->args)->_object._cons._cdr))->_object._cons._car);
          }
          sc->code = ((sc->args)->_object._cons._car);
          do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);

     case OP_CONTINUATION:
          sc->code = ((sc->args)->_object._cons._car);
          sc->args = _cons(sc,mk_continuation(sc, sc->dump),sc->NIL,0);
          do { sc->op = (int)(OP_APPLY); return sc->T; } while (0);

     default:
          snprintf(sc->strbuff,1024,"%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);
     }
     return sc->T;
}

static pointer opexe_2(scheme *sc, enum scheme_opcodes op) {
     pointer x;
     num v;

     double dd;


     switch (op) {

     case OP_INEX2EX:
          x=((sc->args)->_object._cons._car);
          if(num_is_integer(x)) {
               return _s_return(sc,x);
          } else if(modf(((x)->_object._number.value.rvalue),&dd)==0.0) {
               return _s_return(sc,mk_integer(sc,ivalue(x)));
          } else {
               return _Error_1(sc,"inexact->exact: not integral:",x);
          }

     case OP_EXP:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, exp(rvalue(x))));

     case OP_LOG:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, log(rvalue(x))));

     case OP_SIN:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, sin(rvalue(x))));

     case OP_COS:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, cos(rvalue(x))));

     case OP_TAN:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, tan(rvalue(x))));

     case OP_ASIN:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, asin(rvalue(x))));

     case OP_ACOS:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, acos(rvalue(x))));

     case OP_ATAN:
          x=((sc->args)->_object._cons._car);
          if(((sc->args)->_object._cons._cdr)==sc->NIL) {
               return _s_return(sc,mk_real(sc, atan(rvalue(x))));
          } else {
               pointer y=((((sc->args)->_object._cons._cdr))->_object._cons._car);
               return _s_return(sc,mk_real(sc, atan2(rvalue(x),rvalue(y))));
          }

     case OP_SQRT:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, sqrt(rvalue(x))));

     case OP_EXPT: {
          double result;
          int real_result=1;
          pointer y=((((sc->args)->_object._cons._cdr))->_object._cons._car);
          x=((sc->args)->_object._cons._car);
          if (num_is_integer(x) && num_is_integer(y))
             real_result=0;


          if (rvalue(x) == 0 && rvalue(y) < 0) {
             result = 0.0;
          } else {
             result = pow(rvalue(x),rvalue(y));
          }


          if (!real_result)
          {
            long result_as_long = (long)result;
            if (result != (double)result_as_long)
              real_result = 1;
          }
          if (real_result) {
             return _s_return(sc,mk_real(sc, result));
          } else {
             return _s_return(sc,mk_integer(sc, result));
          }
     }

     case OP_FLOOR:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, floor(rvalue(x))));

     case OP_CEILING:
          x=((sc->args)->_object._cons._car);
          return _s_return(sc,mk_real(sc, ceil(rvalue(x))));

     case OP_TRUNCATE : {
          double rvalue_of_x ;
          x=((sc->args)->_object._cons._car);
          rvalue_of_x = rvalue(x) ;
          if (rvalue_of_x > 0) {
            return _s_return(sc,mk_real(sc, floor(rvalue_of_x)));
          } else {
            return _s_return(sc,mk_real(sc, ceil(rvalue_of_x)));
          }
     }

     case OP_ROUND:
        x=((sc->args)->_object._cons._car);
        if (num_is_integer(x))
            return _s_return(sc,x);
        return _s_return(sc,mk_real(sc, round_per_R5RS(rvalue(x))));


     case OP_ADD:
       v=num_zero;
       for (x = sc->args; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
         v=num_add(v,nvalue(((x)->_object._cons._car)));
       }
       return _s_return(sc,mk_number(sc, v));

     case OP_MUL:
       v=num_one;
       for (x = sc->args; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
         v=num_mul(v,nvalue(((x)->_object._cons._car)));
       }
       return _s_return(sc,mk_number(sc, v));

     case OP_SUB:
       if(((sc->args)->_object._cons._cdr)==sc->NIL) {
         x=sc->args;
         v=num_zero;
       } else {
         x = ((sc->args)->_object._cons._cdr);
         v = nvalue(((sc->args)->_object._cons._car));
       }
       for (; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
         v=num_sub(v,nvalue(((x)->_object._cons._car)));
       }
       return _s_return(sc,mk_number(sc, v));

     case OP_DIV:
       if(((sc->args)->_object._cons._cdr)==sc->NIL) {
         x=sc->args;
         v=num_one;
       } else {
         x = ((sc->args)->_object._cons._cdr);
         v = nvalue(((sc->args)->_object._cons._car));
       }
       for (; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
         if (!is_zero_double(rvalue(((x)->_object._cons._car))))
           v=num_div(v,nvalue(((x)->_object._cons._car)));
         else {
           return _Error_1(sc,"/: division by zero",0);
         }
       }
       return _s_return(sc,mk_number(sc, v));

     case OP_INTDIV:
          if(((sc->args)->_object._cons._cdr)==sc->NIL) {
               x=sc->args;
               v=num_one;
          } else {
               x = ((sc->args)->_object._cons._cdr);
               v = nvalue(((sc->args)->_object._cons._car));
          }
          for (; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
               if (ivalue(((x)->_object._cons._car)) != 0)
                    v=num_intdiv(v,nvalue(((x)->_object._cons._car)));
               else {
                    return _Error_1(sc,"quotient: division by zero",0);
               }
          }
          return _s_return(sc,mk_number(sc, v));

     case OP_REM:
          v = nvalue(((sc->args)->_object._cons._car));
          if (ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car)) != 0)
               v=num_rem(v,nvalue(((((sc->args)->_object._cons._cdr))->_object._cons._car)));
          else {
               return _Error_1(sc,"remainder: division by zero",0);
          }
          return _s_return(sc,mk_number(sc, v));

     case OP_MOD:
          v = nvalue(((sc->args)->_object._cons._car));
          if (ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car)) != 0)
               v=num_mod(v,nvalue(((((sc->args)->_object._cons._cdr))->_object._cons._car)));
          else {
               return _Error_1(sc,"modulo: division by zero",0);
          }
          return _s_return(sc,mk_number(sc, v));

     case OP_CAR:
       return _s_return(sc,((((sc->args)->_object._cons._car))->_object._cons._car));

     case OP_CDR:
       return _s_return(sc,((((sc->args)->_object._cons._car))->_object._cons._cdr));

     case OP_CONS:
          ((sc->args)->_object._cons._cdr) = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
          return _s_return(sc,sc->args);

     case OP_SETCAR:
       if(!is_immutable(((sc->args)->_object._cons._car))) {
         ((((sc->args)->_object._cons._car))->_object._cons._car) = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
         return _s_return(sc,((sc->args)->_object._cons._car));
       } else {
         return _Error_1(sc,"set-car!: unable to alter immutable pair",0);
       }

     case OP_SETCDR:
       if(!is_immutable(((sc->args)->_object._cons._car))) {
         ((((sc->args)->_object._cons._car))->_object._cons._cdr) = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
         return _s_return(sc,((sc->args)->_object._cons._car));
       } else {
         return _Error_1(sc,"set-cdr!: unable to alter immutable pair",0);
       }

     case OP_CHAR2INT: {
          gunichar c;
          c=ivalue(((sc->args)->_object._cons._car));
          return _s_return(sc,mk_integer(sc,c));
     }

     case OP_INT2CHAR: {
          gunichar c;
          c=(gunichar)ivalue(((sc->args)->_object._cons._car));
          return _s_return(sc,mk_character(sc,c));
     }

     case OP_CHARUPCASE: {
          gunichar c;
          c=(gunichar)ivalue(((sc->args)->_object._cons._car));
          c=g_unichar_toupper(c);
          return _s_return(sc,mk_character(sc,c));
     }

     case OP_CHARDNCASE: {
          gunichar c;
          c=(gunichar)ivalue(((sc->args)->_object._cons._car));
          c=g_unichar_tolower(c);
          return _s_return(sc,mk_character(sc,c));
     }

     case OP_STR2SYM:
          return _s_return(sc,mk_symbol(sc,((((sc->args)->_object._cons._car))->_object._string._svalue)));

     case OP_STR2ATOM: {
       char *s=((((sc->args)->_object._cons._car))->_object._string._svalue);
       if(*s=='#') {
         return _s_return(sc,mk_sharp_const(sc, s+1));
       } else {
         return _s_return(sc,mk_atom(sc, s));
       }
     }

     case OP_SYM2STR:
          x=mk_string(sc,symname(((sc->args)->_object._cons._car)));
          setimmutable(x);
          return _s_return(sc,x);
     case OP_ATOM2STR:
       x=((sc->args)->_object._cons._car);
       if(is_number(x) || is_character(x) || is_string(x) || is_symbol(x)) {
         char *p;
         int len;
         atom2str(sc,x,0,&p,&len);
         return _s_return(sc,mk_counted_string(sc,p,len));
       } else {
         return _Error_1(sc,"atom->string: not an atom:",x);
       }

     case OP_MKSTRING: {
          gunichar fill=' ';
          int len;

          len=ivalue(((sc->args)->_object._cons._car));

          if(((sc->args)->_object._cons._cdr)!=sc->NIL) {
               fill=charvalue(((((sc->args)->_object._cons._cdr))->_object._cons._car));
          }
          return _s_return(sc,mk_empty_string(sc,len,fill));
     }

     case OP_STRLEN:
          return _s_return(sc,mk_integer(sc,g_utf8_strlen(((((sc->args)->_object._cons._car))->_object._string._svalue), -1)));

     case OP_STRREF: {
          char *str;
          int index;

          str=((((sc->args)->_object._cons._car))->_object._string._svalue);

          index=ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car));

          if(index>=g_utf8_strlen(((((sc->args)->_object._cons._car))->_object._string._svalue), -1)) {
               return _Error_1(sc,"string-ref: out of bounds:",((((sc->args)->_object._cons._cdr))->_object._cons._car));
          }

          str = g_utf8_offset_to_pointer(str, (long)index);
          return _s_return(sc,mk_character(sc, g_utf8_get_char(str)));
     }

     case OP_STRSET: {
          pointer a;
          char *str;
          int index;
          gunichar c;
          char utf8[7];
          int utf8_len;
          int newlen;
          char *p1, *p2;
          int p1_len;
          int p2_len;
          char *newstr;

          a=((sc->args)->_object._cons._car);
          if(is_immutable(a)) {
               return _Error_1(sc,"string-set!: unable to alter immutable string:",a);
          }

          str=((a)->_object._string._svalue);
          index=ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car));
          if(index>=g_utf8_strlen(str, -1)) {
              return _Error_1(sc,"string-set!: out of bounds:",((((sc->args)->_object._cons._cdr))->_object._cons._car));
          }

          c=charvalue(((((((sc->args)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._car));
          utf8_len = g_unichar_to_utf8(c, utf8);

          p1 = g_utf8_offset_to_pointer(str, (long)index);
          p2 = g_utf8_offset_to_pointer(str, (long)index+1);
          p1_len = p1-str;
          p2_len = strlen(p2);

          newlen = p1_len+utf8_len+p2_len;
          newstr = (char *)sc->malloc(newlen+1);
          if (newstr == ((void*)0)) {
             sc->no_memory=1;
             return _Error_1(sc,"string-set!: No memory to alter string:",((sc->args)->_object._cons._car));
          }

          if (p1_len > 0)
             memcpy(newstr, str, p1_len);
          memcpy(newstr+p1_len, utf8, utf8_len);
          if (p2_len > 0)
             memcpy(newstr+p1_len+utf8_len, p2, p2_len);
          newstr[newlen] = '\0';

          free(((a)->_object._string._svalue));
          ((a)->_object._string._svalue)=newstr;
          ((a)->_object._string._length)=g_utf8_strlen(newstr, -1);

          return _s_return(sc,a);
     }

     case OP_STRAPPEND: {

       int len = 0;
       pointer car_x;
       char *newstr;
       char *pos;
       char *end;


       for (x = sc->args; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
          car_x = ((x)->_object._cons._car);
          end = g_utf8_offset_to_pointer(((car_x)->_object._string._svalue), (long)((car_x)->_object._string._length));
          len += end - ((car_x)->_object._string._svalue);
       }

       newstr = (char *)sc->malloc(len+1);
       if (newstr == ((void*)0)) {
          sc->no_memory=1;
          return _Error_1(sc,"string-set!: No memory to append strings:",((sc->args)->_object._cons._car));
       }


       pos = newstr;
       for (x = sc->args; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
           car_x = ((x)->_object._cons._car);
           end = g_utf8_offset_to_pointer(((car_x)->_object._string._svalue), (long)((car_x)->_object._string._length));
           len = end - ((car_x)->_object._string._svalue);
           memcpy(pos, ((car_x)->_object._string._svalue), len);
           pos += len;
       }
       *pos = '\0';

       car_x = mk_string(sc, newstr);
       g_free(newstr);

       return _s_return(sc,car_x);
     }

     case OP_SUBSTR: {
          char *str;
          char *beg;
          char *end;
          int index0;
          int index1;
          int len;
          pointer x;

          str=((((sc->args)->_object._cons._car))->_object._string._svalue);

          index0=ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car));

          if(index0>g_utf8_strlen(str, -1)) {
               return _Error_1(sc,"substring: start out of bounds:",((((sc->args)->_object._cons._cdr))->_object._cons._car));
          }

          if(((((sc->args)->_object._cons._cdr))->_object._cons._cdr)!=sc->NIL) {
               index1=ivalue(((((((sc->args)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._car));
               if(index1>g_utf8_strlen(str, -1) || index1<index0) {
                    return _Error_1(sc,"substring: end out of bounds:",((((((sc->args)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._car));
               }
          } else {
               index1=g_utf8_strlen(str, -1);
          }


          beg = g_utf8_offset_to_pointer(str, (long)index0);
          end = g_utf8_offset_to_pointer(str, (long)index1);
          len=end-beg;

          str = (char *)sc->malloc(len+1);
          if (str == ((void*)0)) {
             sc->no_memory=1;
             return _Error_1(sc,"string-set!: No memory to extract substring:",((sc->args)->_object._cons._car));
          }

          memcpy(str, beg, len);
          str[len] = '\0';

          x = mk_string(sc, str);
          g_free(str);

          return _s_return(sc,x);
     }

     case OP_VECTOR: {
          int i;
          pointer vec;
          int len=list_length(sc,sc->args);
          if(len<0) {
               return _Error_1(sc,"vector: not a proper list:",sc->args);
          }
          vec=mk_vector(sc,len);
          if(sc->no_memory) { return _s_return(sc,sc->sink); }
          for (x = sc->args, i = 0; is_pair(x); x = ((x)->_object._cons._cdr), i++) {
               set_vector_elem(vec,i,((x)->_object._cons._car));
          }
          return _s_return(sc,vec);
     }

     case OP_MKVECTOR: {
          pointer fill=sc->NIL;
          int len;
          pointer vec;

          len=ivalue(((sc->args)->_object._cons._car));

          if(((sc->args)->_object._cons._cdr)!=sc->NIL) {
               fill=((((sc->args)->_object._cons._cdr))->_object._cons._car);
          }
          vec=mk_vector(sc,len);
          if(sc->no_memory) { return _s_return(sc,sc->sink); }
          if(fill!=sc->NIL) {
               fill_vector(vec,fill);
          }
          return _s_return(sc,vec);
     }

     case OP_VECLEN:
          return _s_return(sc,mk_integer(sc,ivalue(((sc->args)->_object._cons._car))));

     case OP_VECREF: {
          int index;

          index=ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car));

          if(index>=ivalue(((sc->args)->_object._cons._car))) {
               return _Error_1(sc,"vector-ref: out of bounds:",((((sc->args)->_object._cons._cdr))->_object._cons._car));
          }

          return _s_return(sc,vector_elem(((sc->args)->_object._cons._car),index));
     }

     case OP_VECSET: {
          int index;

          if(is_immutable(((sc->args)->_object._cons._car))) {
               return _Error_1(sc,"vector-set!: unable to alter immutable vector:",((sc->args)->_object._cons._car));
          }

          index=ivalue(((((sc->args)->_object._cons._cdr))->_object._cons._car));
          if(index>=ivalue(((sc->args)->_object._cons._car))) {
               return _Error_1(sc,"vector-set!: out of bounds:",((((sc->args)->_object._cons._cdr))->_object._cons._car));
          }

          set_vector_elem(((sc->args)->_object._cons._car),index,((((((sc->args)->_object._cons._cdr))->_object._cons._cdr))->_object._cons._car));
          return _s_return(sc,((sc->args)->_object._cons._car));
     }

     default:
          snprintf(sc->strbuff,1024,"%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);
     }
     return sc->T;
}

static int is_list(scheme *sc, pointer a)
{ return list_length(sc,a) >= 0; }







int list_length(scheme *sc, pointer p) {
    int i=0;
    pointer slow, fast;

    slow = fast = p;
    while (1)
    {
        if (fast == sc->NIL)
                return i;
        if (!is_pair(fast))
                return -2 - i;
        fast = ((fast)->_object._cons._cdr);
        ++i;
        if (fast == sc->NIL)
                return i;
        if (!is_pair(fast))
                return -2 - i;
        ++i;
        fast = ((fast)->_object._cons._cdr);



        slow = ((slow)->_object._cons._cdr);
        if (fast == slow)
        {



            return -1;
        }
    }
}

static pointer opexe_3(scheme *sc, enum scheme_opcodes op) {
     pointer x;
     num v;
     int (*comp_func)(num,num)=0;

     switch (op) {
     case OP_NOT:
          return _s_return(sc,(((((sc->args)->_object._cons._car)) == sc->F)) ? sc->T : sc->F);
     case OP_BOOLP:
          return _s_return(sc,(((sc->args)->_object._cons._car) == sc->F || ((sc->args)->_object._cons._car) == sc->T) ? sc->T : sc->F);
     case OP_EOFOBJP:
          return _s_return(sc,(((sc->args)->_object._cons._car) == sc->EOF_OBJ) ? sc->T : sc->F);
     case OP_NULLP:
          return _s_return(sc,(((sc->args)->_object._cons._car) == sc->NIL) ? sc->T : sc->F);
     case OP_NUMEQ:
     case OP_LESS:
     case OP_GRE:
     case OP_LEQ:
     case OP_GEQ:
          switch(op) {
               case OP_NUMEQ: comp_func=num_eq; break;
               case OP_LESS: comp_func=num_lt; break;
               case OP_GRE: comp_func=num_gt; break;
               case OP_LEQ: comp_func=num_le; break;
               case OP_GEQ: comp_func=num_ge; break;
               default: break;
          }
          x=sc->args;
          v=nvalue(((x)->_object._cons._car));
          x=((x)->_object._cons._cdr);

          for (; x != sc->NIL; x = ((x)->_object._cons._cdr)) {
               if(!comp_func(v,nvalue(((x)->_object._cons._car)))) {
                    return _s_return(sc,(0) ? sc->T : sc->F);
               }
               v=nvalue(((x)->_object._cons._car));
          }
          return _s_return(sc,(1) ? sc->T : sc->F);
     case OP_SYMBOLP:
          return _s_return(sc,(is_symbol(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_NUMBERP:
          return _s_return(sc,(is_number(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_STRINGP:
          return _s_return(sc,(is_string(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_INTEGERP:
          return _s_return(sc,(is_integer(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_REALP:
          return _s_return(sc,(is_number(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_CHARP:
          return _s_return(sc,(is_character(((sc->args)->_object._cons._car))) ? sc->T : sc->F);

     case OP_CHARAP:
          return _s_return(sc,(Cisalpha(ivalue(((sc->args)->_object._cons._car)))) ? sc->T : sc->F);
     case OP_CHARNP:
          return _s_return(sc,(Cisdigit(ivalue(((sc->args)->_object._cons._car)))) ? sc->T : sc->F);
     case OP_CHARWP:
          return _s_return(sc,(Cisspace(ivalue(((sc->args)->_object._cons._car)))) ? sc->T : sc->F);
     case OP_CHARUP:
          return _s_return(sc,(Cisupper(ivalue(((sc->args)->_object._cons._car)))) ? sc->T : sc->F);
     case OP_CHARLP:
          return _s_return(sc,(Cislower(ivalue(((sc->args)->_object._cons._car)))) ? sc->T : sc->F);

     case OP_PORTP:
          return _s_return(sc,(is_port(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_INPORTP:
          return _s_return(sc,(is_inport(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_OUTPORTP:
          return _s_return(sc,(is_outport(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_PROCP:





          return _s_return(sc,(is_proc(((sc->args)->_object._cons._car)) || is_closure(((sc->args)->_object._cons._car)) || is_continuation(((sc->args)->_object._cons._car)) || is_foreign(((sc->args)->_object._cons._car))) ? sc->T : sc->F);

     case OP_PAIRP:
          return _s_return(sc,(is_pair(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_LISTP:
          return _s_return(sc,(list_length(sc,((sc->args)->_object._cons._car)) >= 0) ? sc->T : sc->F);
     case OP_ENVP:
          return _s_return(sc,(is_environment(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_VECTORP:
          return _s_return(sc,(is_vector(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_EQ:
          return _s_return(sc,(((sc->args)->_object._cons._car) == ((((sc->args)->_object._cons._cdr))->_object._cons._car)) ? sc->T : sc->F);
     case OP_EQV:
          return _s_return(sc,(eqv(((sc->args)->_object._cons._car), ((((sc->args)->_object._cons._cdr))->_object._cons._car))) ? sc->T : sc->F);
     default:
          snprintf(sc->strbuff,1024,"%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);
     }
     return sc->T;
}

static pointer opexe_4(scheme *sc, enum scheme_opcodes op) {
     pointer x, y;

     switch (op) {
     case OP_FORCE:
          sc->code = ((sc->args)->_object._cons._car);
          if (is_promise(sc->code)) {

               s_save(sc, OP_SAVE_FORCED, sc->NIL, sc->code);
               sc->args = sc->NIL;
               do { sc->op = (int)(OP_APPLY); return sc->T; } while (0);
          } else {
               return _s_return(sc,sc->code);
          }

     case OP_SAVE_FORCED:
          memcpy(sc->code,sc->value,sizeof(struct cell));
          return _s_return(sc,sc->value);

     case OP_WRITE:
     case OP_DISPLAY:
     case OP_WRITE_CHAR:
          if(is_pair(((sc->args)->_object._cons._cdr))) {
               if(((((sc->args)->_object._cons._cdr))->_object._cons._car)!=sc->outport) {
                    x=_cons(sc,sc->outport,sc->NIL,0);
                    s_save(sc,OP_SET_OUTPORT, x, sc->NIL);
                    sc->outport=((((sc->args)->_object._cons._cdr))->_object._cons._car);
               }
          }
          sc->args = ((sc->args)->_object._cons._car);
          if(op==OP_WRITE) {
               sc->print_flag = 1;
          } else {
               sc->print_flag = 0;
          }
          do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);

     case OP_NEWLINE:
          if(is_pair(sc->args)) {
               if(((sc->args)->_object._cons._car)!=sc->outport) {
                    x=_cons(sc,sc->outport,sc->NIL,0);
                    s_save(sc,OP_SET_OUTPORT, x, sc->NIL);
                    sc->outport=((sc->args)->_object._cons._car);
               }
          }
          putstr(sc, "\n");
          return _s_return(sc,sc->T);

     case OP_ERR0:
          sc->retcode=-1;
          if (!is_string(((sc->args)->_object._cons._car))) {
               sc->args=_cons(sc,mk_string(sc," -- "),sc->args,0);
               setimmutable(((sc->args)->_object._cons._car));
          }
          putstr(sc, "Error: ");
          putstr(sc, ((((sc->args)->_object._cons._car))->_object._string._svalue));
          sc->args = ((sc->args)->_object._cons._cdr);
          do { sc->op = (int)(OP_ERR1); return sc->T; } while (0);

     case OP_ERR1:
          putstr(sc, " ");
          if (sc->args != sc->NIL) {
               s_save(sc,OP_ERR1, ((sc->args)->_object._cons._cdr), sc->NIL);
               sc->args = ((sc->args)->_object._cons._car);
               sc->print_flag = 1;
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else {
               putstr(sc, "\n");
               if(sc->interactive_repl) {
                    do { sc->op = (int)(OP_T0LVL); return sc->T; } while (0);
               } else {
                    return sc->NIL;
               }
          }

     case OP_REVERSE:
          return _s_return(sc,reverse(sc, ((sc->args)->_object._cons._car)));

     case OP_LIST_STAR:
          return _s_return(sc,list_star(sc,sc->args));

     case OP_APPEND:
          x = sc->NIL;
          y = sc->args;
          if (y == x) {
              return _s_return(sc,x);
          }



          while (((y)->_object._cons._cdr) != sc->NIL) {
              x = revappend(sc, x, ((y)->_object._cons._car));
              y = ((y)->_object._cons._cdr);
              if (x == sc->F) {
                  return _Error_1(sc,"non-list argument to append",0);
              }
          }

          return _s_return(sc,reverse_in_place(sc, ((y)->_object._cons._car), x));
# 4064 "scheme.c"
     case OP_QUIT:
          if(is_pair(sc->args)) {
               sc->retcode=ivalue(((sc->args)->_object._cons._car));
          }
          return (sc->NIL);

     case OP_GC:
          gc(sc, sc->NIL, sc->NIL);
          return _s_return(sc,sc->T);

     case OP_GCVERB:
     { int was = sc->gc_verbose;

          sc->gc_verbose = (((sc->args)->_object._cons._car) != sc->F);
          return _s_return(sc,(was) ? sc->T : sc->F);
     }

     case OP_NEWSEGMENT:
          if (!is_pair(sc->args) || !is_number(((sc->args)->_object._cons._car))) {
               return _Error_1(sc,"new-segment: argument must be a number",0);
          }
          alloc_cellseg(sc, (int) ivalue(((sc->args)->_object._cons._car)));
          return _s_return(sc,sc->T);

     case OP_OBLIST:
          return _s_return(sc,oblist_all_symbols(sc));

     case OP_CURR_INPORT:
          return _s_return(sc,sc->inport);

     case OP_CURR_OUTPORT:
          return _s_return(sc,sc->outport);

     case OP_OPEN_INFILE:
     case OP_OPEN_OUTFILE:
     case OP_OPEN_INOUTFILE: {
          int prop=0;
          pointer p;
          switch(op) {
               case OP_OPEN_INFILE: prop=port_input; break;
               case OP_OPEN_OUTFILE: prop=port_output; break;
               case OP_OPEN_INOUTFILE: prop=port_input|port_output; break;
               default: break;
          }
          p=port_from_filename(sc,((((sc->args)->_object._cons._car))->_object._string._svalue),prop);
          if(p==sc->NIL) {
               return _s_return(sc,sc->F);
          }
          return _s_return(sc,p);
     }


     case OP_OPEN_INSTRING:
     case OP_OPEN_INOUTSTRING: {
          int prop=0;
          pointer p;
          switch(op) {
               case OP_OPEN_INSTRING: prop=port_input; break;
               case OP_OPEN_INOUTSTRING: prop=port_input|port_output; break;
               default: break;
          }
          p=port_from_string(sc, ((((sc->args)->_object._cons._car))->_object._string._svalue),
                     g_utf8_offset_to_pointer(((((sc->args)->_object._cons._car))->_object._string._svalue),
                                              ((((sc->args)->_object._cons._car))->_object._string._length)), prop);
          if(p==sc->NIL) {
               return _s_return(sc,sc->F);
          }
          return _s_return(sc,p);
     }
     case OP_OPEN_OUTSTRING: {
          pointer p;
          if(((sc->args)->_object._cons._car)==sc->NIL) {
               p=port_from_scratch(sc);
               if(p==sc->NIL) {
                    return _s_return(sc,sc->F);
               }
          } else {
               p=port_from_string(sc, ((((sc->args)->_object._cons._car))->_object._string._svalue),
                          ((((sc->args)->_object._cons._car))->_object._string._svalue)+((((sc->args)->_object._cons._car))->_object._string._length),
                          port_output);
               if(p==sc->NIL) {
                    return _s_return(sc,sc->F);
               }
          }
          return _s_return(sc,p);
     }
     case OP_GET_OUTSTRING: {
          port *p;

          if ((p=((sc->args)->_object._cons._car)->_object._port)->kind&port_string) {
               off_t size;
               char *str;

               size=p->rep.string.curr-p->rep.string.start+1;
               str=sc->malloc(size);
               if(str != ((void*)0)) {
                    pointer s;

                    memcpy(str,p->rep.string.start,size-1);
                    str[size-1]='\0';
                    s=mk_string(sc,str);
                    sc->free(str);
                    return _s_return(sc,s);
               }
          }
          return _s_return(sc,sc->F);
     }


     case OP_CLOSE_INPORT:
          port_close(sc,((sc->args)->_object._cons._car),port_input);
          return _s_return(sc,sc->T);

     case OP_CLOSE_OUTPORT:
          port_close(sc,((sc->args)->_object._cons._car),port_output);
          return _s_return(sc,sc->T);

     case OP_INT_ENV:
          return _s_return(sc,sc->global_env);

     case OP_CURR_ENV:
          return _s_return(sc,sc->envir);

     default:
          sprintf(sc->strbuff, "%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);
     }
     return sc->T;
}

static pointer opexe_5(scheme *sc, enum scheme_opcodes op) {
     pointer x;
     char *trans_str;

     if(sc->nesting!=0) {
          int n=sc->nesting;
          sc->nesting=0;
          sc->retcode=-1;
          return _Error_1(sc,"unmatched parentheses:",mk_integer(sc,n));
     }

     switch (op) {

     case OP_READ:
          if(!is_pair(sc->args)) {
               do { sc->op = (int)(OP_READ_INTERNAL); return sc->T; } while (0);
          }
          if(!is_inport(((sc->args)->_object._cons._car))) {
               return _Error_1(sc,"read: not an input port:",((sc->args)->_object._cons._car));
          }
          if(((sc->args)->_object._cons._car)==sc->inport) {
               do { sc->op = (int)(OP_READ_INTERNAL); return sc->T; } while (0);
          }
          x=sc->inport;
          sc->inport=((sc->args)->_object._cons._car);
          x=_cons(sc,x,sc->NIL,0);
          s_save(sc,OP_SET_INPORT, x, sc->NIL);
          do { sc->op = (int)(OP_READ_INTERNAL); return sc->T; } while (0);

     case OP_READ_CHAR:
     case OP_PEEK_CHAR: {
          gunichar c;
          if(is_pair(sc->args)) {
               if(((sc->args)->_object._cons._car)!=sc->inport) {
                    x=sc->inport;
                    x=_cons(sc,x,sc->NIL,0);
                    s_save(sc,OP_SET_INPORT, x, sc->NIL);
                    sc->inport=((sc->args)->_object._cons._car);
               }
          }
          c=inchar(sc);
          if(c==(-1)) {
               return _s_return(sc,sc->EOF_OBJ);
          }
          if(sc->op==OP_PEEK_CHAR) {
               backchar(sc,c);
          }
          return _s_return(sc,mk_character(sc,c));
     }

     case OP_CHAR_READY: {
          pointer p=sc->inport;
          int res;
          if(is_pair(sc->args)) {
               p=((sc->args)->_object._cons._car);
          }
          res=p->_object._port->kind&port_string;
          return _s_return(sc,(res) ? sc->T : sc->F);
     }

     case OP_SET_INPORT:
          sc->inport=((sc->args)->_object._cons._car);
          return _s_return(sc,sc->value);

     case OP_SET_OUTPORT:
          sc->outport=((sc->args)->_object._cons._car);
          return _s_return(sc,sc->value);

     case OP_RDSEXPR:
          switch (sc->tok) {
          case (-1):
               return _s_return(sc,sc->EOF_OBJ);
# 4278 "scheme.c"
          case 12:
               s_save(sc,OP_RDVEC,sc->NIL,sc->NIL);

          case 0:
               sc->tok = token(sc);
               if (sc->tok == 1) {
                    return _s_return(sc,sc->NIL);
               } else if (sc->tok == 2) {
                    return _Error_1(sc,"syntax error: illegal dot expression",0);
               } else {
                    sc->nesting_stack[sc->file_i]++;
                    s_save(sc,OP_RDLIST, sc->NIL, sc->NIL);
                    do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
               }
          case 4:
               s_save(sc,OP_RDQUOTE, sc->NIL, sc->NIL);
               sc->tok = token(sc);
               do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
          case 7:
               sc->tok = token(sc);
               if(sc->tok==12) {
                 s_save(sc,OP_RDQQUOTEVEC, sc->NIL, sc->NIL);
                 sc->tok=0;
                 do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
               } else {
                 s_save(sc,OP_RDQQUOTE, sc->NIL, sc->NIL);
               }
               do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
          case 8:
               s_save(sc,OP_RDUNQUOTE, sc->NIL, sc->NIL);
               sc->tok = token(sc);
               do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
          case 9:
               s_save(sc,OP_RDUQTSP, sc->NIL, sc->NIL);
               sc->tok = token(sc);
               do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
          case 3:
               return _s_return(sc,mk_atom(sc, readstr_upto(sc, "();\t\n\r ")));
          case 6:
               x=readstrexp(sc);
               if(x==sc->F) {
                 return _Error_1(sc,"Error reading string",0);
               }
               setimmutable(x);
               return _s_return(sc,x);
          case 13:
               x=readstrexp(sc);
               if(x==sc->F) {
                 return _Error_1(sc,"Error reading string",0);
               }
               trans_str = gettext (((x)->_object._string._svalue));
               if (trans_str != ((x)->_object._string._svalue)) {
                 sc->free(((x)->_object._string._svalue));
                 ((x)->_object._string._length) = g_utf8_strlen(trans_str, -1);
                 ((x)->_object._string._svalue) = store_string(sc, ((x)->_object._string._length), trans_str, 0);
               }
               setimmutable(x);
               return _s_return(sc,x);
          case 10: {
               pointer f=find_slot_in_env(sc,sc->envir,sc->SHARP_HOOK,1);
               if(f==sc->NIL) {
                    return _Error_1(sc,"undefined sharp expression",0);
               } else {
                    sc->code=_cons(sc,slot_value_in_env(f),sc->NIL,0);
                    do { sc->op = (int)(OP_EVAL); return sc->T; } while (0);
               }
          }
          case 11:
               if ((x = mk_sharp_const(sc, readstr_upto(sc, "();\t\n\r "))) == sc->NIL) {
                    return _Error_1(sc,"undefined sharp expression",0);
               } else {
                    return _s_return(sc,x);
               }
          default:
               return _Error_1(sc,"syntax error: illegal token",mk_integer (sc, sc->tok));
          }
          break;

     case OP_RDLIST: {
          sc->args = _cons(sc,sc->value,sc->args,0);
          sc->tok = token(sc);
# 4367 "scheme.c"
          if (sc->tok == (-1))
               { return _s_return(sc,sc->EOF_OBJ); }
          else if (sc->tok == 1) {
               gunichar c = inchar(sc);
               if (c != '\n')
                 backchar(sc,c);

               else
                  sc->load_stack[sc->file_i].rep.stdio.curr_line++;

               sc->nesting_stack[sc->file_i]--;
               return _s_return(sc,reverse_in_place(sc, sc->NIL, sc->args));
          } else if (sc->tok == 2) {
               s_save(sc,OP_RDDOT, sc->args, sc->NIL);
               sc->tok = token(sc);
               do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
          } else {
               s_save(sc,OP_RDLIST, sc->args, sc->NIL);
               do { sc->op = (int)(OP_RDSEXPR); return sc->T; } while (0);
          }
     }

     case OP_RDDOT:
          if (token(sc) != 1) {
               return _Error_1(sc,"syntax error: illegal dot expression",0);
          } else {
               sc->nesting_stack[sc->file_i]--;
               return _s_return(sc,reverse_in_place(sc, sc->value, sc->args));
          }

     case OP_RDQUOTE:
          return _s_return(sc,_cons(sc,sc->QUOTE,_cons(sc,sc->value,sc->NIL,0),0));

     case OP_RDQQUOTE:
          return _s_return(sc,_cons(sc,sc->QQUOTE,_cons(sc,sc->value,sc->NIL,0),0));

     case OP_RDQQUOTEVEC:
          return _s_return(sc,_cons(sc,mk_symbol(sc,"apply"),_cons(sc,mk_symbol(sc,"vector"),_cons(sc,_cons(sc,sc->QQUOTE,_cons(sc,sc->value,sc->NIL,0),0),sc->NIL,0),0),0));





     case OP_RDUNQUOTE:
          return _s_return(sc,_cons(sc,sc->UNQUOTE,_cons(sc,sc->value,sc->NIL,0),0));

     case OP_RDUQTSP:
          return _s_return(sc,_cons(sc,sc->UNQUOTESP,_cons(sc,sc->value,sc->NIL,0),0));

     case OP_RDVEC:







          sc->args=sc->value;
          do { sc->op = (int)(OP_VECTOR); return sc->T; } while (0);


     case OP_P0LIST:
          if(is_vector(sc->args)) {
               putstr(sc,"#(");
               sc->args=_cons(sc,sc->args,mk_integer(sc,0),0);
               do { sc->op = (int)(OP_PVECFROM); return sc->T; } while (0);
          } else if(is_environment(sc->args)) {
               putstr(sc,"#<ENVIRONMENT>");
               return _s_return(sc,sc->T);
          } else if (!is_pair(sc->args)) {
               printatom(sc, sc->args, sc->print_flag);
               return _s_return(sc,sc->T);
          } else if (((sc->args)->_object._cons._car) == sc->QUOTE && (is_pair(((sc->args)->_object._cons._cdr)) && ((((sc->args)->_object._cons._cdr))->_object._cons._cdr) == sc->NIL)) {
               putstr(sc, "'");
               sc->args = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else if (((sc->args)->_object._cons._car) == sc->QQUOTE && (is_pair(((sc->args)->_object._cons._cdr)) && ((((sc->args)->_object._cons._cdr))->_object._cons._cdr) == sc->NIL)) {
               putstr(sc, "`");
               sc->args = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else if (((sc->args)->_object._cons._car) == sc->UNQUOTE && (is_pair(((sc->args)->_object._cons._cdr)) && ((((sc->args)->_object._cons._cdr))->_object._cons._cdr) == sc->NIL)) {
               putstr(sc, ",");
               sc->args = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else if (((sc->args)->_object._cons._car) == sc->UNQUOTESP && (is_pair(((sc->args)->_object._cons._cdr)) && ((((sc->args)->_object._cons._cdr))->_object._cons._cdr) == sc->NIL)) {
               putstr(sc, ",@");
               sc->args = ((((sc->args)->_object._cons._cdr))->_object._cons._car);
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else {
               putstr(sc, "(");
               s_save(sc,OP_P1LIST, ((sc->args)->_object._cons._cdr), sc->NIL);
               sc->args = ((sc->args)->_object._cons._car);
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          }

     case OP_P1LIST:
          if (is_pair(sc->args)) {
            s_save(sc,OP_P1LIST, ((sc->args)->_object._cons._cdr), sc->NIL);
            putstr(sc, " ");
            sc->args = ((sc->args)->_object._cons._car);
            do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else if(is_vector(sc->args)) {
            s_save(sc,OP_P1LIST,sc->NIL,sc->NIL);
            putstr(sc, " . ");
            do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          } else {
            if (sc->args != sc->NIL) {
              putstr(sc, " . ");
              printatom(sc, sc->args, sc->print_flag);
            }
            putstr(sc, ")");
            return _s_return(sc,sc->T);
          }
     case OP_PVECFROM: {
          int i=((((sc->args)->_object._cons._cdr))->_object._number.value.ivalue);
          pointer vec=((sc->args)->_object._cons._car);
          int len=((vec)->_object._number.value.ivalue);
          if(i==len) {
               putstr(sc,")");
               return _s_return(sc,sc->T);
          } else {
               pointer elem=vector_elem(vec,i);
               ((((sc->args)->_object._cons._cdr))->_object._number.value.ivalue)=i+1;
               s_save(sc,OP_PVECFROM, sc->args, sc->NIL);
               sc->args=elem;
               if (i > 0)
                    putstr(sc," ");
               do { sc->op = (int)(OP_P0LIST); return sc->T; } while (0);
          }
     }

     default:
          snprintf(sc->strbuff,1024,"%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);

     }
     return sc->T;
}

static pointer opexe_6(scheme *sc, enum scheme_opcodes op) {
     pointer x, y;
     long v;

     switch (op) {
     case OP_LIST_LENGTH:
          v=list_length(sc,((sc->args)->_object._cons._car));
          if(v<0) {
               return _Error_1(sc,"length: not a list:",((sc->args)->_object._cons._car));
          }
          return _s_return(sc,mk_integer(sc, v));

     case OP_ASSQ:
          x = ((sc->args)->_object._cons._car);
          for (y = ((((sc->args)->_object._cons._cdr))->_object._cons._car); is_pair(y); y = ((y)->_object._cons._cdr)) {
               if (!is_pair(((y)->_object._cons._car))) {
                    return _Error_1(sc,"unable to handle non pair element",0);
               }
               if (x == ((((y)->_object._cons._car))->_object._cons._car))
                    break;
          }
          if (is_pair(y)) {
               return _s_return(sc,((y)->_object._cons._car));
          } else {
               return _s_return(sc,sc->F);
          }


     case OP_GET_CLOSURE:
          sc->args = ((sc->args)->_object._cons._car);
          if (sc->args == sc->NIL) {
               return _s_return(sc,sc->F);
          } else if (is_closure(sc->args)) {
               return _s_return(sc,_cons(sc,sc->LAMBDA,closure_code(sc->value),0));
          } else if (is_macro(sc->args)) {
               return _s_return(sc,_cons(sc,sc->LAMBDA,closure_code(sc->value),0));
          } else {
               return _s_return(sc,sc->F);
          }
     case OP_CLOSUREP:




          return _s_return(sc,(is_closure(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     case OP_MACROP:
          return _s_return(sc,(is_macro(((sc->args)->_object._cons._car))) ? sc->T : sc->F);
     default:
          snprintf(sc->strbuff,1024,"%d: illegal operator", sc->op);
          return _Error_1(sc,sc->strbuff,0);
     }
     return sc->T;
}

typedef pointer (*dispatch_func)(scheme *, enum scheme_opcodes);

typedef int (*test_predicate)(pointer);
static int is_any(pointer p) { return 1;}

static int is_nonneg(pointer p) {
  return ivalue(p)>=0 && is_integer(p);
}


static struct {
  test_predicate fct;
  const char *kind;
} tests[]={
  {0,0},
  {is_any, 0},
  {is_string, "string"},
  {is_symbol, "symbol"},
  {is_port, "port"},
  {is_inport,"input port"},
  {is_outport,"output port"},
  {is_environment, "environment"},
  {is_pair, "pair"},
  {0, "pair or '()"},
  {is_character, "character"},
  {is_vector, "vector"},
  {is_number, "number"},
  {is_integer, "integer"},
  {is_nonneg, "non-negative integer"}
};
# 4607 "scheme.c"
typedef struct {
  dispatch_func func;
  char *name;
  int min_arity;
  int max_arity;
  char *arg_tests_encoding;
} op_code_info;



static op_code_info dispatch_table[]= {


# 1 "./opdefines.h" 1
    {opexe_0,"load",1,1,"\002"},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,"gensym",0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},

    {opexe_0,0,0,0,0},

    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},

    {opexe_0,0,0,0,0},
    {opexe_0,"tracing",1,1,"\016"},

    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,"make-closure",1,2,"\010" "\007"},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,"defined?",1,2,"\003" "\007"},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_0,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,0,0,0,0},
    {opexe_1,"eval",1,2,"\001" "\007"},
    {opexe_1,"apply",1,0xffff,0},
    {opexe_1,"call-with-current-continuation",1,1,0},

    {opexe_2,"inexact->exact",1,1,"\014"},
    {opexe_2,"exp",1,1,"\014"},
    {opexe_2,"log",1,1,"\014"},
    {opexe_2,"sin",1,1,"\014"},
    {opexe_2,"cos",1,1,"\014"},
    {opexe_2,"tan",1,1,"\014"},
    {opexe_2,"asin",1,1,"\014"},
    {opexe_2,"acos",1,1,"\014"},
    {opexe_2,"atan",1,2,"\014"},
    {opexe_2,"sqrt",1,1,"\014"},
    {opexe_2,"expt",2,2,"\014"},
    {opexe_2,"floor",1,1,"\014"},
    {opexe_2,"ceiling",1,1,"\014"},
    {opexe_2,"truncate",1,1,"\014"},
    {opexe_2,"round",1,1,"\014"},

    {opexe_2,"+",0,0xffff,"\014"},
    {opexe_2,"-",1,0xffff,"\014"},
    {opexe_2,"*",0,0xffff,"\014"},
    {opexe_2,"/",1,0xffff,"\014"},
    {opexe_2,"quotient",1,0xffff,"\015"},
    {opexe_2,"remainder",2,2,"\015"},
    {opexe_2,"modulo",2,2,"\015"},
    {opexe_2,"car",1,1,"\010"},
    {opexe_2,"cdr",1,1,"\010"},
    {opexe_2,"cons",2,2,0},
    {opexe_2,"set-car!",2,2,"\010" "\001"},
    {opexe_2,"set-cdr!",2,2,"\010" "\001"},
    {opexe_2,"char->integer",1,1,"\012"},
    {opexe_2,"integer->char",1,1,"\016"},
    {opexe_2,"char-upcase",1,1,"\012"},
    {opexe_2,"char-downcase",1,1,"\012"},
    {opexe_2,"symbol->string",1,1,"\003"},
    {opexe_2,"atom->string",1,1,"\001"},
    {opexe_2,"string->symbol",1,1,"\002"},
    {opexe_2,"string->atom",1,1,"\002"},
    {opexe_2,"make-string",1,2,"\016" "\012"},
    {opexe_2,"string-length",1,1,"\002"},
    {opexe_2,"string-ref",2,2,"\002" "\016"},
    {opexe_2,"string-set!",3,3,"\002" "\016" "\012"},
    {opexe_2,"string-append",0,0xffff,"\002"},
    {opexe_2,"substring",2,3,"\002" "\016"},
    {opexe_2,"vector",0,0xffff,0},
    {opexe_2,"make-vector",1,2,"\016" "\001"},
    {opexe_2,"vector-length",1,1,"\013"},
    {opexe_2,"vector-ref",2,2,"\013" "\016"},
    {opexe_2,"vector-set!",3,3,"\013" "\016" "\001"},
    {opexe_3,"not",1,1,0},
    {opexe_3,"boolean?",1,1,0},
    {opexe_3,"eof-object?",1,1,0},
    {opexe_3,"null?",1,1,0},
    {opexe_3,"=",2,0xffff,"\014"},
    {opexe_3,"<",2,0xffff,"\014"},
    {opexe_3,">",2,0xffff,"\014"},
    {opexe_3,"<=",2,0xffff,"\014"},
    {opexe_3,">=",2,0xffff,"\014"},
    {opexe_3,"symbol?",1,1,"\001"},
    {opexe_3,"number?",1,1,"\001"},
    {opexe_3,"string?",1,1,"\001"},
    {opexe_3,"integer?",1,1,"\001"},
    {opexe_3,"real?",1,1,"\001"},
    {opexe_3,"char?",1,1,"\001"},

    {opexe_3,"char-alphabetic?",1,1,"\012"},
    {opexe_3,"char-numeric?",1,1,"\012"},
    {opexe_3,"char-whitespace?",1,1,"\012"},
    {opexe_3,"char-upper-case?",1,1,"\012"},
    {opexe_3,"char-lower-case?",1,1,"\012"},

    {opexe_3,"port?",1,1,"\001"},
    {opexe_3,"input-port?",1,1,"\001"},
    {opexe_3,"output-port?",1,1,"\001"},
    {opexe_3,"procedure?",1,1,"\001"},
    {opexe_3,"pair?",1,1,"\001"},
    {opexe_3,"list?",1,1,"\001"},
    {opexe_3,"environment?",1,1,"\001"},
    {opexe_3,"vector?",1,1,"\001"},
    {opexe_3,"eq?",2,2,"\001"},
    {opexe_3,"eqv?",2,2,"\001"},
    {opexe_4,"force",1,1,"\001"},
    {opexe_4,0,0,0,0},
    {opexe_4,"write",1,2,"\001" "\006"},
    {opexe_4,"write-char",1,2,"\012" "\006"},
    {opexe_4,"display",1,2,"\001" "\006"},
    {opexe_4,"newline",0,1,"\006"},
    {opexe_4,"error",1,0xffff,0},
    {opexe_4,0,0,0,0},
    {opexe_4,"reverse",1,1,"\011"},
    {opexe_4,"list*",1,0xffff,0},
    {opexe_4,"append",0,0xffff,0},




    {opexe_4,"quit",0,1,"\014"},
    {opexe_4,"gc",0,0,0},
    {opexe_4,"gc-verbose",0,1,0},
    {opexe_4,"new-segment",0,1,"\014"},
    {opexe_4,"oblist",0,0,0},
    {opexe_4,"current-input-port",0,0,0},
    {opexe_4,"current-output-port",0,0,0},
    {opexe_4,"open-input-file",1,1,"\002"},
    {opexe_4,"open-output-file",1,1,"\002"},
    {opexe_4,"open-input-output-file",1,1,"\002"},

    {opexe_4,"open-input-string",1,1,"\002"},
    {opexe_4,"open-input-output-string",1,1,"\002"},
    {opexe_4,"open-output-string",0,1,"\002"},
    {opexe_4,"get-output-string",1,1,"\006"},

    {opexe_4,"close-input-port",1,1,"\005"},
    {opexe_4,"close-output-port",1,1,"\006"},
    {opexe_4,"interaction-environment",0,0,0},
    {opexe_4,"current-environment",0,0,0},
    {opexe_5,"read",0,1,"\005"},
    {opexe_5,"read-char",0,1,"\005"},
    {opexe_5,"peek-char",0,1,"\005"},
    {opexe_5,"char-ready?",0,1,"\005"},
    {opexe_5,"set-input-port",1,1,"\005"},
    {opexe_5,"set-output-port",1,1,"\006"},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_5,0,0,0,0},
    {opexe_6,"length",1,1,"\011"},
    {opexe_6,"assq",2,2,0},
    {opexe_6,"get-closure-code",1,1,0},
    {opexe_6,"closure?",1,1,0},
    {opexe_6,"macro?",1,1,0},
# 4620 "scheme.c" 2
 { 0 }
};

static const char *procname(pointer x) {
 int n=ivalue(x);
 const char *name=dispatch_table[n].name;
 if(name==0) {
     name="ILLEGAL!";
 }
 return name;
}


static void Eval_Cycle(scheme *sc, enum scheme_opcodes op) {
  sc->op = op;
  for (;;) {
    op_code_info *pcd=dispatch_table+sc->op;
    if (pcd->name!=0) {
      char msg[1024];
      int ok=1;
      int n=list_length(sc,sc->args);


      if(n<pcd->min_arity) {
        ok=0;
        snprintf(msg, 1024, "%s: needs%s %d argument(s)",
                 pcd->name,
                 pcd->min_arity==pcd->max_arity?"":" at least",
                 pcd->min_arity);
      }
      if(ok && n>pcd->max_arity) {
        ok=0;
        snprintf(msg, 1024, "%s: needs%s %d argument(s)",
                 pcd->name,
                 pcd->min_arity==pcd->max_arity?"":" at most",
                 pcd->max_arity);
      }
      if(ok) {
        if(pcd->arg_tests_encoding!=0) {
          int i=0;
          int j;
          const char *t=pcd->arg_tests_encoding;
          pointer arglist=sc->args;
          do {
            pointer arg=((arglist)->_object._cons._car);
            j=(int)t[0];
        if(j=="\011"[0]) {
              if(arg!=sc->NIL && !is_pair(arg)) break;
            } else {
              if(!tests[j].fct(arg)) break;
            }

            if(t[1]!=0) {
              t++;
            }
            arglist=((arglist)->_object._cons._cdr);
            i++;
          } while(i<n);
          if(i<n) {
            ok=0;
            snprintf(msg, 1024, "%s: argument %d must be: %s",
                     pcd->name,
                     i+1,
                     tests[j].kind);
          }
        }
      }
      if(!ok) {
        if(_Error_1(sc,msg,0)==sc->NIL) {
          return;
        }
        pcd=dispatch_table+sc->op;
      }
    }
    ok_to_freely_gc(sc);
    if (pcd->func(sc, (enum scheme_opcodes)sc->op) == sc->NIL) {
      return;
    }
    if(sc->no_memory) {
      fprintf(stderr,"No memory!\n");
      return;
    }
  }
}



static void assign_syntax(scheme *sc, char *name) {
     pointer x;

     x = oblist_add_by_name(sc, name);
     ((x)->_flag) |= 4096;
}

static void assign_proc(scheme *sc, enum scheme_opcodes op, char *name) {
     pointer x, y;

     x = mk_symbol(sc, name);
     y = mk_proc(sc,op);
     new_slot_in_env(sc, x, y);
}

static pointer mk_proc(scheme *sc, enum scheme_opcodes op) {
     pointer y;

     y = get_cell(sc, sc->NIL, sc->NIL);
     ((y)->_flag) = (T_PROC | 16384);
     ((y)->_object._number.value.ivalue) = (long) op;
     (y)->_object._number.is_fixnum=1;;
     return y;
}


static int syntaxnum(pointer p) {
     const char *s=((((p)->_object._cons._car))->_object._string._svalue);
     switch(((((p)->_object._cons._car))->_object._string._length)) {
     case 2:
          if(s[0]=='i') return OP_IF0;
          else return OP_OR0;
     case 3:
          if(s[0]=='a') return OP_AND0;
          else return OP_LET0;
     case 4:
          switch(s[3]) {
          case 'e': return OP_CASE0;
          case 'd': return OP_COND0;
          case '*': return OP_LET0AST;
          default: return OP_SET0;
          }
     case 5:
          switch(s[2]) {
          case 'g': return OP_BEGIN;
          case 'l': return OP_DELAY;
          case 'c': return OP_MACRO0;
          default: return OP_QUOTE;
          }
     case 6:
          switch(s[2]) {
          case 'm': return OP_LAMBDA;
          case 'f': return OP_DEF0;
          default: return OP_LET0REC;
          }
     default:
          return OP_C0STREAM;
     }
}



          static pointer s_cons(scheme *sc, pointer a, pointer b) {
 return _cons(sc,a,b,0);
}
          static pointer s_immutable_cons(scheme *sc, pointer a, pointer b) {
 return _cons(sc,a,b,1);
}

static struct scheme_interface vtbl ={
  scheme_define,
  s_cons,
  s_immutable_cons,
  reserve_cells,
  mk_integer,
  mk_real,
  mk_symbol,
  gensym,
  mk_string,
  mk_counted_string,
  mk_character,
  mk_vector,
  mk_foreign_func,
  mk_closure,
  putstr,
  putcharacter,

  is_string,
  string_length,
  string_value,
  is_number,
  nvalue,
  ivalue,
  rvalue,
  is_integer,
  is_real,
  is_character,
  charvalue,
  is_list,
  is_vector,
  list_length,
  ivalue,
  fill_vector,
  vector_elem,
  set_vector_elem,
  is_port,
  is_pair,
  pair_car,
  pair_cdr,
  set_car,
  set_cdr,

  is_symbol,
  symname,

  is_syntax,
  is_proc,
  is_foreign,
  syntaxname,
  is_closure,
  is_macro,
  closure_code,
  closure_env,

  is_continuation,
  is_promise,
  is_environment,
  is_immutable,
  setimmutable,

  scheme_load_file,
  scheme_load_string
};


scheme *scheme_init_new(void) {
  scheme *sc=(scheme*)malloc(sizeof(scheme));
  if(!scheme_init(sc)) {
    free(sc);
    return 0;
  } else {
    return sc;
  }
}

scheme *scheme_init_new_custom_alloc(func_alloc malloc, func_dealloc free) {
  scheme *sc=(scheme*)malloc(sizeof(scheme));
  if(!scheme_init_custom_alloc(sc,malloc,free)) {
    free(sc);
    return 0;
  } else {
    return sc;
  }
}


int scheme_init(scheme *sc) {
 return scheme_init_custom_alloc(sc,malloc,free);
}

int scheme_init_custom_alloc(scheme *sc, func_alloc malloc, func_dealloc free) {
  int i, n=sizeof(dispatch_table)/sizeof(dispatch_table[0]);
  pointer x;

  num_zero.is_fixnum=1;
  num_zero.value.ivalue=0;
  num_one.is_fixnum=1;
  num_one.value.ivalue=1;


  sc->vptr=&vtbl;

  sc->gensym_cnt=0;
  sc->malloc=malloc;
  sc->free=free;
  sc->last_cell_seg = -1;
  sc->sink = &sc->_sink;
  sc->NIL = &sc->_NIL;
  sc->T = &sc->_HASHT;
  sc->F = &sc->_HASHF;
  sc->EOF_OBJ=&sc->_EOF_OBJ;
  sc->free_cell = &sc->_NIL;
  sc->fcells = 0;
  sc->no_memory=0;
  sc->inport=sc->NIL;
  sc->outport=sc->NIL;
  sc->save_inport=sc->NIL;
  sc->loadport=sc->NIL;
  sc->nesting=0;
  sc->interactive_repl=0;
  sc->print_output=0;

  if (alloc_cellseg(sc,3) != 3) {
    sc->no_memory=1;
    return 0;
  }
  sc->gc_verbose = 0;
  dump_stack_initialize(sc);
  sc->code = sc->NIL;
  sc->tracing=0;
  sc->bc_flag = 0;


  ((sc->NIL)->_flag) = (16384 | 32768);
  ((sc->NIL)->_object._cons._car) = ((sc->NIL)->_object._cons._cdr) = sc->NIL;

  ((sc->T)->_flag) = (16384 | 32768);
  ((sc->T)->_object._cons._car) = ((sc->T)->_object._cons._cdr) = sc->T;

  ((sc->F)->_flag) = (16384 | 32768);
  ((sc->F)->_object._cons._car) = ((sc->F)->_object._cons._cdr) = sc->F;

  ((sc->sink)->_flag) = (T_PAIR | 32768);
  ((sc->sink)->_object._cons._car) = sc->NIL;

  sc->c_nest = sc->NIL;

  sc->oblist = oblist_initial_value(sc);

  new_frame_in_env(sc, sc->NIL);
  sc->global_env = sc->envir;

  x = mk_symbol(sc,"else");
  new_slot_in_env(sc, x, sc->T);

  assign_syntax(sc, "lambda");
  assign_syntax(sc, "quote");
  assign_syntax(sc, "define");
  assign_syntax(sc, "if");
  assign_syntax(sc, "begin");
  assign_syntax(sc, "set!");
  assign_syntax(sc, "let");
  assign_syntax(sc, "let*");
  assign_syntax(sc, "letrec");
  assign_syntax(sc, "cond");
  assign_syntax(sc, "delay");
  assign_syntax(sc, "and");
  assign_syntax(sc, "or");
  assign_syntax(sc, "cons-stream");
  assign_syntax(sc, "macro");
  assign_syntax(sc, "case");

  for(i=0; i<n; i++) {
    if(dispatch_table[i].name!=0) {
      assign_proc(sc, (enum scheme_opcodes)i, dispatch_table[i].name);
    }
  }


  sc->LAMBDA = mk_symbol(sc, "lambda");
  sc->QUOTE = mk_symbol(sc, "quote");
  sc->QQUOTE = mk_symbol(sc, "quasiquote");
  sc->UNQUOTE = mk_symbol(sc, "unquote");
  sc->UNQUOTESP = mk_symbol(sc, "unquote-splicing");
  sc->FEED_TO = mk_symbol(sc, "=>");
  sc->COLON_HOOK = mk_symbol(sc,"*colon-hook*");
  sc->ERROR_HOOK = mk_symbol(sc, "*error-hook*");
  sc->SHARP_HOOK = mk_symbol(sc, "*sharp-hook*");
  sc->COMPILE_HOOK = mk_symbol(sc, "*compile-hook*");

  return !sc->no_memory;
}

extern void scheme_set_input_port_file(scheme *sc, FILE *fin) {
  sc->inport=port_from_file(sc,fin,port_input);
}

void scheme_set_input_port_string(scheme *sc, char *start, char *past_the_end) {
  sc->inport=port_from_string(sc,start,past_the_end,port_input);
}

extern void scheme_set_output_port_file(scheme *sc, FILE *fout) {
  sc->outport=port_from_file(sc,fout,port_output);
}

void scheme_set_output_port_string(scheme *sc, char *start, char *past_the_end) {
  sc->outport=port_from_string(sc,start,past_the_end,port_output);
}

void scheme_set_external_data(scheme *sc, void *p) {
 sc->ext_data=p;
}

void scheme_deinit(scheme *sc) {
  int i;


  char *fname;


  sc->oblist=sc->NIL;
  sc->global_env=sc->NIL;
  dump_stack_free(sc);
  sc->envir=sc->NIL;
  sc->code=sc->NIL;
  sc->args=sc->NIL;
  sc->value=sc->NIL;
  if(is_port(sc->inport)) {
    ((sc->inport)->_flag) = 16384;
  }
  sc->inport=sc->NIL;
  sc->outport=sc->NIL;
  if(is_port(sc->save_inport)) {
    ((sc->save_inport)->_flag) = 16384;
  }
  sc->save_inport=sc->NIL;
  if(is_port(sc->loadport)) {
    ((sc->loadport)->_flag) = 16384;
  }
  sc->loadport=sc->NIL;
  sc->gc_verbose=0;
  gc(sc,sc->NIL,sc->NIL);

  for(i=0; i<=sc->last_cell_seg; i++) {
    sc->free(sc->alloc_seg[i]);
  }


  fname = sc->load_stack[i].rep.stdio.filename;

  for(i=0; i<sc->file_i; i++) {
    if(fname)
      sc->free(fname);
  }

}

void scheme_load_file(scheme *sc, FILE *fin)
{ scheme_load_named_file(sc,fin,0); }

void scheme_load_named_file(scheme *sc, FILE *fin, const char *filename) {
  dump_stack_reset(sc);
  sc->envir = sc->global_env;
  sc->file_i=0;
  sc->load_stack[0].kind=port_input|port_file;
  sc->load_stack[0].rep.stdio.file=fin;
  sc->loadport=mk_port(sc,sc->load_stack);
  sc->retcode=0;
  if(fin==stdin) {
    sc->interactive_repl=1;
  }


  sc->load_stack[0].rep.stdio.curr_line = 0;
  if(fin!=stdin && filename)
    sc->load_stack[0].rep.stdio.filename = store_string(sc, strlen(filename), filename, 0);


  sc->inport=sc->loadport;
  sc->args = mk_integer(sc,sc->file_i);
  Eval_Cycle(sc, OP_T0LVL);
  ((sc->loadport)->_flag)=16384;
  if(sc->retcode==0) {
    sc->retcode=sc->nesting!=0;
  }
}

void scheme_load_string(scheme *sc, const char *cmd) {
  dump_stack_reset(sc);
  sc->envir = sc->global_env;
  sc->file_i=0;
  sc->load_stack[0].kind=port_input|port_string;
  sc->load_stack[0].rep.string.start=(char*)cmd;
  sc->load_stack[0].rep.string.past_the_end=(char*)cmd+strlen(cmd);
  sc->load_stack[0].rep.string.curr=(char*)cmd;
  sc->loadport=mk_port(sc,sc->load_stack);
  sc->retcode=0;
  sc->interactive_repl=0;
  sc->inport=sc->loadport;
  sc->args = mk_integer(sc,sc->file_i);
  Eval_Cycle(sc, OP_T0LVL);
  ((sc->loadport)->_flag)=16384;
  if(sc->retcode==0) {
    sc->retcode=sc->nesting!=0;
  }
}

void scheme_define(scheme *sc, pointer envir, pointer symbol, pointer value) {
     pointer x;

     x=find_slot_in_env(sc,envir,symbol,0);
     if (x != sc->NIL) {
          set_slot_in_env(sc, x, value);
     } else {
          new_slot_spec_in_env(sc, envir, symbol, value);
     }
}


void scheme_register_foreign_func(scheme * sc, scheme_registerable * sr)
{
  scheme_define(sc,
               sc->global_env,
               mk_symbol(sc,sr->name),
               mk_foreign_func(sc, sr->f));
}

void scheme_register_foreign_func_list(scheme * sc,
                                      scheme_registerable * list,
                                      int count)
{
  int i;
  for(i = 0; i < count; i++)
    {
      scheme_register_foreign_func(sc, list + i);
    }
}

pointer scheme_apply0(scheme *sc, const char *procname)
{ return scheme_eval(sc, _cons(sc,mk_symbol(sc,procname),sc->NIL,0)); }

static void save_from_C_call(scheme *sc)
{
  pointer saved_data =
    _cons(sc,((sc->sink)->_object._cons._car),_cons(sc,sc->envir,sc->dump,0),0);





  sc->c_nest = _cons(sc,saved_data,sc->c_nest,0);


  dump_stack_reset(sc);
}

static void restore_from_C_call(scheme *sc)
{
  ((sc->sink)->_object._cons._car) = ((((sc->c_nest)->_object._cons._car))->_object._cons._car);
  sc->envir = ((((((sc->c_nest)->_object._cons._car))->_object._cons._cdr))->_object._cons._car);
  sc->dump = ((((((sc->c_nest)->_object._cons._car))->_object._cons._cdr))->_object._cons._cdr);

  sc->c_nest = ((sc->c_nest)->_object._cons._cdr);
}


pointer scheme_call(scheme *sc, pointer func, pointer args)
{
  int old_repl = sc->interactive_repl;
  sc->interactive_repl = 0;
  save_from_C_call(sc);
  sc->envir = sc->global_env;
  sc->args = args;
  sc->code = func;
  sc->retcode = 0;
  Eval_Cycle(sc, OP_APPLY);
  sc->interactive_repl = old_repl;
  restore_from_C_call(sc);
  return sc->value;
}

pointer scheme_eval(scheme *sc, pointer obj)
{
  int old_repl = sc->interactive_repl;
  sc->interactive_repl = 0;
  save_from_C_call(sc);
  sc->args = sc->NIL;
  sc->code = obj;
  sc->retcode = 0;
  Eval_Cycle(sc, OP_EVAL);
  sc->interactive_repl = old_repl;
  restore_from_C_call(sc);
  return sc->value;
}
