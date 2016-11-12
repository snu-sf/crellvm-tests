# 1 "ansi.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "ansi.c" 2
# 29 "ansi.c"
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
# 30 "ansi.c" 2
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
# 31 "ansi.c" 2

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
# 33 "ansi.c" 2


# 1 "./config.h" 1
# 36 "ansi.c" 2
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
# 29 "/usr/include/sys/param.h" 2 3 4


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
# 37 "ansi.c" 2
# 1 "./braille.h" 1
# 38 "ansi.c" 2
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
# 39 "ansi.c" 2
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
# 40 "ansi.c" 2

extern struct display *display, *displays;
extern struct win *fore;
extern struct layer *flayer;

extern struct NewWindow nwin_default;
extern int nversion;
extern int log_flush, logtstamp_on, logtstamp_after;
extern char *logtstamp_string;
extern char *captionstring;
extern char *hstatusstring;
extern char *wliststr;

extern int compacthist;


extern struct acluser *EffectiveAclUser;


int Z0width, Z1width;


static struct win *curr;
static int rows, cols;

int visual_bell = 0;
int use_hardstatus = 1;
char *printcmd = 0;
int use_altscreen = 0;

unsigned char *blank;
unsigned char *null;

struct mline mline_old;
struct mline mline_blank;
struct mline mline_null;

struct mchar mchar_null;
struct mchar mchar_blank = {' ' };
struct mchar mchar_so = {' ', (1<<4) };

int renditions[NUM_RENDS] = {65529 , 65531 , 65533 };


static char *string_t_string[] =
{
  "NONE",
  "DCS",
  "OSC",
  "APC",

  "PM",
  "AKA",
  "GM",
  "STATUS"
};


static char *state_t_string[] =
{
  "LIT",
  "ESC",
  "ASTR",
  "STRESC",
  "CSI",
  "PRIN",
  "PRINESC",
  "PRINCSI",
  "PRIN4"
};

static int Special (int);
static void DoESC (int, int);
static void DoCSI (int, int);
static void StringStart (enum string_t);
static void StringChar (int);
static int StringEnd (void);
static void PrintStart (void);
static void PrintChar (int);
static void PrintFlush (void);

static void DesignateCharset (int, int);
static void MapCharset (int);
static void MapCharsetR (int);

static void SaveCursor (struct cursor *);
static void RestoreCursor (struct cursor *);
static void BackSpace (void);
static void Return (void);
static void LineFeed (int);
static void ReverseLineFeed (void);
static void InsertChar (int);
static void DeleteChar (int);
static void DeleteLine (int);
static void InsertLine (int);
static void Scroll (char *, int, int, char *);
static void ForwardTab (void);
static void BackwardTab (void);
static void ClearScreen (void);
static void ClearFromBOS (void);
static void ClearToEOS (void);
static void ClearLineRegion (int, int);
static void CursorRight (int);
static void CursorUp (int);
static void CursorDown (int);
static void CursorLeft (int);
static void ASetMode (int);
static void SelectRendition (void);
static void RestorePosRendition (void);
static void FillWithEs (void);
static void FindAKA (void);
static void Report (char *, int, int);
static void ScrollRegion (int);

static void WAddLineToHist (struct win *, struct mline *);

static void WLogString (struct win *, char *, int);
static void WReverseVideo (struct win *, int);
static int WindowChangedCheck (char *, int, int *);
static void MFixLine (struct win *, int, struct mchar *);
static void MScrollH (struct win *, int, int, int, int, int);
static void MScrollV (struct win *, int, int, int, int);
static void MClearArea (struct win *, int, int, int, int, int);
static void MInsChar (struct win *, struct mchar *, int, int);
static void MPutChar (struct win *, struct mchar *, int, int);
static void MPutStr (struct win *, char *, int, struct mchar *, int, int);
static void MWrapChar (struct win *, struct mchar *, int, int, int, int);

static void MBceLine (struct win *, int, int, int, int);
# 177 "ansi.c"
void
ResetAnsiState(p)
struct win *p;
{
  p->w_state = LIT;
  p->w_StringType = NONE;
}

void
ResetWindow(p)
register struct win *p;
{
  register int i;

  p->w_wrap = nwin_default.wrap;
  p->w_origin = 0;
  p->w_insert = 0;
  p->w_revvid = 0;
  p->w_mouse = 0;
  p->w_curinv = 0;
  p->w_curvvis = 0;
  p->w_autolf = 0;
  p->w_keypad = 0;
  p->w_cursorkeys = 0;
  p->w_top = 0;
  p->w_bot = p->w_layer.l_height - 1;
  p->w_saved.on = 0;
  p->w_layer.l_x = p->w_layer.l_y = 0;
  p->w_state = LIT;
  p->w_StringType = NONE;
  bzero(p->w_tabs, p->w_layer.l_width);
  for (i = 8; i < p->w_layer.l_width; i += 8)
    p->w_tabs[i] = 1;
  p->w_rend = mchar_null;

  ResetCharsets(p);


  p->w_bce = nwin_default.bce;

}


int
GetAnsiStatus(w, buf)
struct win *w;
char *buf;
{
  char *p = buf;

  if (w->w_state == LIT)
    return 0;

  strcpy(p, state_t_string[w->w_state]);
  p += strlen(p);
  if (w->w_intermediate)
    {
      *p++ = '-';
      if (w->w_intermediate > 0xff)
 p += AddXChar(p, w->w_intermediate >> 8);
      p += AddXChar(p, w->w_intermediate & 0xff);
      *p = 0;
    }
  if (w->w_state == ASTR || w->w_state == STRESC)
    sprintf(p, "-%s", string_t_string[w->w_StringType]);
  p += strlen(p);
  return p - buf;
}




void
ResetCharsets(p)
struct win *p;
{
  p->w_gr = nwin_default.gr;
  p->w_c1 = nwin_default.c1;
  SetCharsets(p, "BBBB02");
  if (nwin_default.charset)
    SetCharsets(p, nwin_default.charset);

  ResetEncoding(p);

}

void
SetCharsets(p, s)
struct win *p;
char *s;
{
  int i;

  for (i = 0; i < 4 && *s; i++, s++)
    if (*s != '.')
      p->w_charsets[i] = ((*s == 'B') ? 0 : *s);
  if (*s && *s++ != '.')
    p->w_Charset = s[-1] - '0';
  if (*s && *s != '.')
    p->w_CharsetR = *s - '0';
  p->w_ss = 0;
  p->w_FontL = p->w_charsets[p->w_Charset];
  p->w_FontR = p->w_charsets[p->w_CharsetR];
}
# 294 "ansi.c"
void
WriteString(wp, buf, len)
struct win *wp;
register char *buf;
register int len;
{
  register int c;

  register int font;

  struct canvas *cv;

  if (!len)
    return;
  if (wp->w_log)
    WLogString(wp, buf, len);


  curr = wp;
  cols = curr->w_layer.l_width;
  rows = curr->w_layer.l_height;

  if (curr->w_silence)
    SetTimeout(&curr->w_silenceev, curr->w_silencewait * 1000);

  if (curr->w_monitor == 1)
    {
      do {} while (0);
      curr->w_monitor = 2;
    }

  if (cols > 0 && rows > 0)
    {
      do
 {
   c = (unsigned char)*buf++;


   if (!curr->w_mbcs)

     curr->w_rend.font = curr->w_FontL;



   if (curr->w_state == LIT &&

       curr->w_layer.l_encoding != 8 &&


       !((curr->w_rend.font) && ((curr->w_rend.font) & 0x60) == 0) &&

       curr->w_rend.font != 'I' && !curr->w_mbcs &&



       curr->w_rend.font != '<' &&

       c >= ' ' && c != 0x7f &&
       ((c & 0x80) == 0 || ((c >= 0xa0 || !curr->w_c1) && !curr->w_gr)) && !curr->w_ss &&
       !curr->w_insert && curr->w_layer.l_x < cols - 1)
     {
       register int currx = curr->w_layer.l_x;
       char *imp = buf - 1;

       while (currx < cols - 1)
  {
    currx++;
    if (--len == 0)
      break;
    c = (unsigned char)*buf++;
    if (c < ' ' || c == 0x7f || ((c & 0x80) && ((c < 0xa0 && curr->w_c1) || curr->w_gr)))
      break;
  }
       currx -= curr->w_layer.l_x;
       if (currx > 0)
  {
    MPutStr(curr, imp, currx, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
    LPutStr(&curr->w_layer, imp, currx, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
    curr->w_layer.l_x += currx;
  }
       if (len == 0)
  break;
     }



   if (curr->w_layer.l_encoding == 8)
     {
       c = FromUtf8(c, &curr->w_decodestate);
       if (c == -1)
  continue;
       if (c == -2)
  {
    c = 0xfffd;

    buf--;
    len++;
  }
       if (c > 0xff)
  do {} while (0);
     }


 tryagain:
   switch (curr->w_state)
     {
     case PRIN:
       switch (c)
  {
  case '\033':
    curr->w_state = PRINESC;
    break;
  default:
    PrintChar(c);
  }
       break;
     case PRINESC:
       switch (c)
  {
  case '[':
    curr->w_state = PRINCSI;
    break;
  default:
    PrintChar('\033');
    PrintChar(c);
    curr->w_state = PRIN;
  }
       break;
     case PRINCSI:
       switch (c)
  {
  case '4':
    curr->w_state = PRIN4;
    break;
  default:
    PrintChar('\033');
    PrintChar('[');
    PrintChar(c);
    curr->w_state = PRIN;
  }
       break;
     case PRIN4:
       switch (c)
  {
  case 'i':
    curr->w_state = LIT;
    PrintFlush();
    if (curr->w_pdisplay && curr->w_pdisplay->d_printfd >= 0)
      {
        close(curr->w_pdisplay->d_printfd);
        curr->w_pdisplay->d_printfd = -1;
      }
    curr->w_pdisplay = 0;
    break;
  default:
    PrintChar('\033');
    PrintChar('[');
    PrintChar('4');
    PrintChar(c);
    curr->w_state = PRIN;
  }
       break;
     case ASTR:
       if (c == 0)
  break;
       if (c == '\033')
  {
    curr->w_state = STRESC;
    break;
  }


       if (!(curr->w_StringType == OSC && c < ' ' && c != '\005'))
  if (!curr->w_c1 || c != ('\\' ^ 0xc0))
    {
      StringChar(c);
      break;
    }
       c = '\\';

     case STRESC:
       switch (c)
  {
  case '\\':
    if (StringEnd() == 0 || len <= 1)
      break;

    for (cv = curr->w_layer.l_cvlist; cv; cv = cv->c_lnext)
      {
        display = cv->c_display;
        if (display->d_status == 1)
   break;
      }
    if (cv)
      {
        if (len > 4096 + 1)
   len = 4096 + 1;
        curr->w_outlen = len - 1;
        bcopy(buf, curr->w_outbuf, len - 1);
        return;
      }
    break;
  case '\033':
    StringChar('\033');
    break;
  default:
    curr->w_state = ASTR;
    StringChar('\033');
    StringChar(c);
    break;
  }
       break;
     case ESC:
       switch (c)
  {
  case '[':
    curr->w_NumArgs = 0;
    curr->w_intermediate = 0;
    bzero((char *) curr->w_args, 64 * sizeof(int));
    curr->w_state = CSI;
    break;
  case ']':
    StringStart(OSC);
    break;
  case '_':
    StringStart(APC);
    break;
  case 'P':
    StringStart(DCS);
    break;
  case '^':
    StringStart(PM);
    break;
  case '!':
    StringStart(GM);
    break;
  case '"':
  case 'k':
    StringStart(AKA);
    break;
  default:
    if (Special(c))
      {
        curr->w_state = LIT;
        break;
      }
    do {} while (0);
    if (c >= ' ' && c <= '/')
      {
        if (curr->w_intermediate)
   {

     if (curr->w_intermediate == '$')
       c |= '$' << 8;
     else

     c = -1;
   }
        curr->w_intermediate = c;
      }
    else if (c >= '0' && c <= '~')
      {
        DoESC(c, curr->w_intermediate);
        curr->w_state = LIT;
      }
    else
      {
        curr->w_state = LIT;
        goto tryagain;
      }
  }
       break;
     case CSI:
       switch (c)
  {
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
    if (curr->w_NumArgs >= 0 && curr->w_NumArgs < 64)
      {
        if (curr->w_args[curr->w_NumArgs] < 100000000)
   curr->w_args[curr->w_NumArgs] =
     10 * curr->w_args[curr->w_NumArgs] + (c - '0');
      }
    break;
  case ';':
  case ':':
    if (curr->w_NumArgs < 64)
      curr->w_NumArgs++;
    break;
  default:
    if (Special(c))
      break;
    if (c >= '@' && c <= '~')
      {
        if (curr->w_NumArgs < 64)
   curr->w_NumArgs++;
        DoCSI(c, curr->w_intermediate);
        if (curr->w_state != PRIN)
   curr->w_state = LIT;
      }
    else if ((c >= ' ' && c <= '/') || (c >= '<' && c <= '?'))
      curr->w_intermediate = curr->w_intermediate ? -1 : c;
    else
      {
        curr->w_state = LIT;
        goto tryagain;
      }
  }
       break;
     case LIT:
     default:

       if (curr->w_mbcs)
  if (c <= ' ' || c == 0x7f || (c >= 0x80 && c < 0xa0 && curr->w_c1))
    curr->w_mbcs = 0;

       if (c < ' ')
  {
    if (c == '\033')
      {
        curr->w_intermediate = 0;
        curr->w_state = ESC;
        if (curr->w_autoaka < 0)
   curr->w_autoaka = 0;
      }
    else
      Special(c);
    break;
  }
       if (c >= 0x80 && c < 0xa0 && curr->w_c1)

  if ((curr->w_FontR & 0xf0) != 0x20

         || curr->w_layer.l_encoding == 8

     )

  {
    switch (c)
      {
      case 0xc0 ^ 'D':
      case 0xc0 ^ 'E':
      case 0xc0 ^ 'H':
      case 0xc0 ^ 'M':
      case 0xc0 ^ 'N':
      case 0xc0 ^ 'O':
        DoESC(c ^ 0xc0, 0);
        break;
      case 0xc0 ^ '[':
        if (curr->w_autoaka < 0)
   curr->w_autoaka = 0;
        curr->w_NumArgs = 0;
        curr->w_intermediate = 0;
        bzero((char *) curr->w_args, 64 * sizeof(int));
        curr->w_state = CSI;
        break;
      case 0xc0 ^ 'P':
        StringStart(DCS);
        break;
      default:
        break;
      }
    break;
  }



       if (!curr->w_mbcs)
  {

    if (c < 0x80 || curr->w_gr == 0)
      curr->w_rend.font = curr->w_FontL;

    else if (curr->w_gr == 2 && !curr->w_ss)
      curr->w_rend.font = curr->w_FontE;

    else
      curr->w_rend.font = curr->w_FontR;

  }


       if (curr->w_layer.l_encoding == 8)
  {
    if (curr->w_rend.font == '0')
      {
        struct mchar mc, *mcp;

        do {} while (0);
        mc.image = c;
        mc.mbcs = 0;
        mc.font = '0';
        mc.fontx = 0;
        mcp = recode_mchar(&mc, 0, 8);
        do {} while (0);
        c = mcp->image | mcp->font << 8;
      }
    curr->w_rend.font = 0;
  }

       if (curr->w_layer.l_encoding == 8 && utf8_isdouble(c))
  curr->w_mbcs = 0xff;

       if (curr->w_layer.l_encoding == 8 && c >= 0x0300 && utf8_iscomb(c))
  {
    int ox, oy;
    struct mchar omc;

    ox = curr->w_layer.l_x - 1;
    oy = curr->w_layer.l_y;
    if (ox < 0)
      {
        ox = curr->w_layer.l_width - 1;
        oy--;
      }
    if (oy < 0)
      oy = 0;
    do { (&omc)->image = (&curr->w_mlines[oy])->image[ox]; (&omc)->attr = (&curr->w_mlines[oy])->attr[ox]; (&omc)->font = (&curr->w_mlines[oy])->font[ox]; (&omc)->fontx = (&curr->w_mlines[oy])->fontx[ox]; (&omc)->color = (&curr->w_mlines[oy])->color[ox]; (&omc)->mbcs = 0; } while (0);
    if (omc.image == 0xff && omc.font == 0xff && omc.fontx == 0)
      {
        ox--;
        if (ox >= 0)
   {
     do { (&omc)->image = (&curr->w_mlines[oy])->image[ox]; (&omc)->attr = (&curr->w_mlines[oy])->attr[ox]; (&omc)->font = (&curr->w_mlines[oy])->font[ox]; (&omc)->fontx = (&curr->w_mlines[oy])->fontx[ox]; (&omc)->color = (&curr->w_mlines[oy])->color[ox]; (&omc)->mbcs = 0; } while (0);
     omc.mbcs = 0xff;
   }
      }
    if (ox >= 0)
      {
        utf8_handle_comb(c, &omc);
        MFixLine(curr, oy, &omc);
        do { (&curr->w_mlines[oy])->image[ox] = (&omc)->image; (&curr->w_mlines[oy])->attr[ox] = (&omc)->attr; (&curr->w_mlines[oy])->font[ox] = (&omc)->font; (&curr->w_mlines[oy])->fontx[ox] = (&omc)->fontx; (&curr->w_mlines[oy])->color[ox] = (&omc)->color; } while (0);
        LPutChar(&curr->w_layer, &omc, ox, oy);
        LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
      }
    break;
  }
       font = curr->w_rend.font;



       if (font == 'I' && curr->w_layer.l_encoding == 2 && curr->w_mbcs == 0)
  {

    do {} while (0);
    if ((0x81 <= c && c <= 0x9f) || (0xe0 <= c && c <= 0xef))
      {
        do {} while (0);
        curr->w_mbcs = c;
        break;
      }
  }

       if (font == 031 && c == 0x80 && !curr->w_mbcs)
  font = curr->w_rend.font = 0;
       if (((font) && ((font) & 0x60) == 0) && c == ' ')
  font = curr->w_rend.font = 0;
       if (((font) && ((font) & 0x60) == 0) || curr->w_mbcs)
  {
    int t = c;
    if (curr->w_mbcs == 0)
      {
        curr->w_mbcs = c;
        break;
      }
    if (curr->w_layer.l_x == cols - 1)
      {
        curr->w_layer.l_x += curr->w_wrap ? 1 : -1;
        do {} while (0);
      }

    if (curr->w_layer.l_encoding != 8)

      {
        c = curr->w_mbcs;

        if (font == 'I' && curr->w_layer.l_encoding == 2)
   {
     do {} while (0);
# 783 "ansi.c"
     if (0x40 <= t && t <= 0xfc && t != 0x7f)
       {
         if (c <= 0x9f) c = (c - 0x81) * 2 + 0x21;
         else c = (c - 0xc1) * 2 + 0x21;
         if (t <= 0x7e) t -= 0x1f;
         else if (t <= 0x9e) t -= 0x20;
         else t -= 0x7e, c++;
         curr->w_rend.font = ('B' & 037);
       }
     else
       {

         c = t;
         t = 0;
       }
     do {} while (0);
   }

        if (t && curr->w_gr && font != 030 && font != 031)
   {
     t &= 0x7f;
     if (t < ' ')
       goto tryagain;
   }
        if (t == '\177')
   break;
        curr->w_mbcs = t;
      }
  }

       if (font == '<' && c >= ' ')
  {
    font = curr->w_rend.font = 0;
    c |= 0x80;
  }

       else if (curr->w_gr && curr->w_layer.l_encoding != 8)



  {

    if (c == 0x80 && font == 0 && curr->w_layer.l_encoding == 20)
      c = 0xa4;
    else
      c &= 0x7f;
    if (c < ' ' && font != 031)
      goto tryagain;





  }

       if (c == '\177')
  break;
       curr->w_rend.image = c;

       if (curr->w_layer.l_encoding == 8)
  {
    curr->w_rend.font = c >> 8;
    curr->w_rend.fontx = c >> 16;
  }


       curr->w_rend.mbcs = curr->w_mbcs;

       if (curr->w_layer.l_x < cols - 1)
  {
    if (curr->w_insert)
      {
        do { bcopy((char *)(&curr->w_mlines[curr->w_layer.l_y])->image, (char *)mline_old.image, (cols)); bcopy((char *)(&curr->w_mlines[curr->w_layer.l_y])->attr, (char *)mline_old.attr, (cols)); bcopy((char *)(&curr->w_mlines[curr->w_layer.l_y])->font, (char *)mline_old.font, (cols)); bcopy((char *)(&curr->w_mlines[curr->w_layer.l_y])->fontx, (char *)mline_old.fontx, (cols)); bcopy((char *)(&curr->w_mlines[curr->w_layer.l_y])->color, (char *)mline_old.color, (cols)); } while (0);
        MInsChar(curr, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
        LInsChar(&curr->w_layer, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y, &mline_old);
        curr->w_layer.l_x++;
      }
    else
      {
        MPutChar(curr, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
        LPutChar(&curr->w_layer, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
        curr->w_layer.l_x++;
      }
  }
       else if (curr->w_layer.l_x == cols - 1)
  {
    MPutChar(curr, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
    LPutChar(&curr->w_layer, &curr->w_rend, curr->w_layer.l_x, curr->w_layer.l_y);
    if (curr->w_wrap)
      curr->w_layer.l_x++;
  }
       else
  {
    MWrapChar(curr, &curr->w_rend, curr->w_layer.l_y, curr->w_top, curr->w_bot, curr->w_insert);
    LWrapChar(&curr->w_layer, &curr->w_rend, curr->w_layer.l_y, curr->w_top, curr->w_bot, curr->w_insert);
    if (curr->w_layer.l_y != curr->w_bot && curr->w_layer.l_y != curr->w_layer.l_height - 1)
      curr->w_layer.l_y++;
    curr->w_layer.l_x = 1;
  }


       if (curr->w_mbcs)
  {
    curr->w_rend.mbcs = curr->w_mbcs = 0;
    curr->w_layer.l_x++;
  }

       if (curr->w_ss)
  {
    curr->w_FontL = curr->w_charsets[curr->w_Charset];
    curr->w_FontR = curr->w_charsets[curr->w_CharsetR];
    curr->w_rend.font = curr->w_FontL;
    LSetRendition(&curr->w_layer, &curr->w_rend);
    curr->w_ss = 0;
  }

       break;
     }
 }
      while (--len);
    }
  if (!printcmd && curr->w_state == PRIN)
    PrintFlush();
}

static void
WLogString(p, buf, len)
struct win *p;
char *buf;
int len;
{
  if (!p->w_log)
    return;
  if (logtstamp_on && p->w_logsilence >= logtstamp_after * 2)
    {
      char *t = MakeWinMsg(logtstamp_string, p, '%');
      logfwrite(p->w_log, t, strlen(t));
    }
  p->w_logsilence = 0;
  if (logfwrite(p->w_log, buf, len) < 1)
    {
      WMsg(p, (*__errno_location ()), "Error writing logfile");
      logfclose(p->w_log);
      p->w_log = 0;
    }
  if (!log_flush)
    logfflush(p->w_log);
}

static int
Special(c)
register int c;
{
  switch (c)
    {
    case '\b':
      BackSpace();
      return 1;
    case '\r':
      Return();
      return 1;
    case '\n':
      if (curr->w_autoaka)
 FindAKA();
    case '\013':
      LineFeed(0);
      return 1;
    case '\007':
      WBell(curr, visual_bell);
      return 1;
    case '\t':
      ForwardTab();
      return 1;

    case '\017':
      MapCharset(0);
      return 1;
    case '\016':
      MapCharset(1);
      return 1;

    }
  return 0;
}

static void
DoESC(c, intermediate)
int c, intermediate;
{
  do {} while (0);
  switch (intermediate)
    {
    case 0:
      switch (c)
 {
 case 'E':
   LineFeed(1);
   break;
 case 'D':
   LineFeed(0);
   break;
 case 'M':
   ReverseLineFeed();
   break;
 case 'H':
   curr->w_tabs[curr->w_layer.l_x] = 1;
   break;
 case 'Z':
   Report("\033[?%d;%dc", 1, 2);
   break;
 case '7':
   SaveCursor(&curr->w_saved);
   break;
 case '8':
   RestoreCursor(&curr->w_saved);
   break;
 case 'c':
   ClearScreen();
   ResetWindow(curr);
   LKeypadMode(&curr->w_layer, 0);
   LCursorkeysMode(&curr->w_layer, 0);
# 1012 "ansi.c"
   LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
   break;
 case '=':
   LKeypadMode(&curr->w_layer, curr->w_keypad = 1);



   break;
 case '>':
   LKeypadMode(&curr->w_layer, curr->w_keypad = 0);



   break;

 case 'n':
   MapCharset(2);
   break;
 case 'o':
   MapCharset(3);
   break;
 case '~':
   MapCharsetR(1);
   break;

 case '}':
   MapCharsetR(2);
   break;
 case '|':
   MapCharsetR(3);
   break;
 case 'N':
   if (curr->w_charsets[curr->w_Charset] != curr->w_charsets[2]
       || curr->w_charsets[curr->w_CharsetR] != curr->w_charsets[2])
     curr->w_FontR = curr->w_FontL = curr->w_charsets[curr->w_ss = 2];
   else
     curr->w_ss = 0;
   break;
 case 'O':
   if (curr->w_charsets[curr->w_Charset] != curr->w_charsets[3]
       || curr->w_charsets[curr->w_CharsetR] != curr->w_charsets[3])
     curr->w_FontR = curr->w_FontL = curr->w_charsets[curr->w_ss = 3];
   else
     curr->w_ss = 0;
   break;

        case 'g':
   WBell(curr, 1);
          break;
 }
      break;
    case '#':
      switch (c)
 {
 case '8':
   FillWithEs();
   break;
 }
      break;

    case '(':
      DesignateCharset(c, 0);
      break;
    case ')':
      DesignateCharset(c, 1);
      break;
    case '*':
      DesignateCharset(c, 2);
      break;
    case '+':
      DesignateCharset(c, 3);
      break;
# 1092 "ansi.c"
    case '$':
    case '$'<<8 | '(':
      DesignateCharset(c & 037, 0);
      break;
    case '$'<<8 | ')':
      DesignateCharset(c & 037, 1);
      break;
    case '$'<<8 | '*':
      DesignateCharset(c & 037, 2);
      break;
    case '$'<<8 | '+':
      DesignateCharset(c & 037, 3);
      break;


    }
}

static void
DoCSI(c, intermediate)
int c, intermediate;
{
  register int i, a1 = curr->w_args[0], a2 = curr->w_args[1];

  if (curr->w_NumArgs > 64)
    curr->w_NumArgs = 64;
  switch (intermediate)
    {
    case 0:
      switch (c)
 {
 case 'H':
 case 'f':
   if (a1 < 1)
     a1 = 1;
   if (curr->w_origin)
     a1 += curr->w_top;
   if (a1 > rows)
     a1 = rows;
   if (a2 < 1)
     a2 = 1;
   if (a2 > cols)
     a2 = cols;
   LGotoPos(&curr->w_layer, --a2, --a1);
   curr->w_layer.l_x = a2;
   curr->w_layer.l_y = a1;
   if (curr->w_autoaka)
     curr->w_autoaka = a1 + 1;
   break;
 case 'J':
   if (a1 < 0 || a1 > 2)
     a1 = 0;
   switch (a1)
     {
     case 0:
       ClearToEOS();
       break;
     case 1:
       ClearFromBOS();
       break;
     case 2:
       ClearScreen();
       LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
       break;
     }
   break;
 case 'K':
   if (a1 < 0 || a1 > 2)
     a1 %= 3;
   switch (a1)
     {
     case 0:
       ClearLineRegion(curr->w_layer.l_x, cols - 1);
       break;
     case 1:
       ClearLineRegion(0, curr->w_layer.l_x);
       break;
     case 2:
       ClearLineRegion(0, cols - 1);
       break;
     }
   break;
 case 'X':
   a1 = curr->w_layer.l_x + (a1 ? a1 - 1 : 0);
   ClearLineRegion(curr->w_layer.l_x, a1 < cols ? a1 : cols - 1);
   break;
 case 'A':
   CursorUp(a1 ? a1 : 1);
   break;
 case 'B':
   CursorDown(a1 ? a1 : 1);
   break;
 case 'C':
   CursorRight(a1 ? a1 : 1);
   break;
 case 'D':
   CursorLeft(a1 ? a1 : 1);
   break;
 case 'E':
   curr->w_layer.l_x = 0;
   CursorDown(a1 ? a1 : 1);
   break;
 case 'F':
   curr->w_layer.l_x = 0;
   CursorUp(a1 ? a1 : 1);
   break;
 case 'G':
 case '`':
   curr->w_layer.l_x = a1 ? a1 - 1 : 0;
   if (curr->w_layer.l_x >= cols)
     curr->w_layer.l_x = cols - 1;
   LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
   break;
 case 'd':
   curr->w_layer.l_y = a1 ? a1 - 1 : 0;
   if (curr->w_layer.l_y >= rows)
     curr->w_layer.l_y = rows - 1;
   LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
   break;
 case 'm':
   SelectRendition();
   break;
 case 'g':
   if (a1 == 0)
     curr->w_tabs[curr->w_layer.l_x] = 0;
   else if (a1 == 3)
     bzero(curr->w_tabs, cols);
   break;
 case 'r':
   if (!a1)
     a1 = 1;
   if (!a2)
     a2 = rows;
   if (a1 < 1 || a2 > rows || a1 >= a2)
     break;
   curr->w_top = a1 - 1;
   curr->w_bot = a2 - 1;

   if (curr->w_origin)
     {
       curr->w_layer.l_y = curr->w_top;
       curr->w_layer.l_x = 0;
     }
   else
     curr->w_layer.l_y = curr->w_layer.l_x = 0;
   LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
   break;
 case 's':
   SaveCursor(&curr->w_saved);
   break;
 case 't':
   switch(a1)
     {
     case 11:
       if (curr->w_layer.l_cvlist)
  Report("\033[1t", 0, 0);
       else
  Report("\033[2t", 0, 0);
       break;
     case 7:
       LRefreshAll(&curr->w_layer, 0);
       break;
     case 21:
       a1 = strlen(curr->w_title);
       if ((unsigned)(curr->w_inlen + 5 + a1) <= sizeof(curr->w_inbuf))
  {
    bcopy("\033]l", curr->w_inbuf + curr->w_inlen, 3);
    bcopy(curr->w_title, curr->w_inbuf + curr->w_inlen + 3, a1);
    bcopy("\033\\", curr->w_inbuf + curr->w_inlen + 3 + a1, 2);
    curr->w_inlen += 5 + a1;
  }
       break;
     case 8:
       a1 = curr->w_args[2];
       if (a1 < 1)
  a1 = curr->w_layer.l_width;
       if (a2 < 1)
  a2 = curr->w_layer.l_height;
       if (a1 > 10000 || a2 > 10000)
  break;
       WChangeSize(curr, a1, a2);
       cols = curr->w_layer.l_width;
       rows = curr->w_layer.l_height;
       break;
     default:
       break;
     }
   break;
 case 'u':
   RestoreCursor(&curr->w_saved);
   break;
 case 'I':
   if (!a1)
     a1 = 1;
   while (a1--)
     ForwardTab();
   break;
 case 'Z':
   if (!a1)
     a1 = 1;
   while (a1--)
     BackwardTab();
   break;
 case 'L':
   InsertLine(a1 ? a1 : 1);
   break;
 case 'M':
   DeleteLine(a1 ? a1 : 1);
   break;
 case 'P':
   DeleteChar(a1 ? a1 : 1);
   break;
 case '@':
   InsertChar(a1 ? a1 : 1);
   break;
 case 'h':
   ASetMode(1);
   break;
 case 'l':
   ASetMode(0);
   break;
 case 'i':
   if (a1 == 5)
     PrintStart();
   break;
 case 'n':
   if (a1 == 5)
     Report("\033[0n", 0, 0);
   else if (a1 == 6)
     Report("\033[%d;%dR", curr->w_layer.l_y + 1, curr->w_layer.l_x + 1);
   break;
 case 'c':
   if (a1 == 0)
     Report("\033[?%d;%dc", 1, 2);
   break;
 case 'x':
   if (a1 == 0 || a1 == 1)
     Report("\033[%d;1;1;112;112;1;0x", a1 + 2, 0);
   break;
 case 'p':
   if (a1 == 6 || a1 == 7)
     {
       curr->w_curinv = 7 - a1;
       LCursorVisibility(&curr->w_layer, curr->w_curinv ? -1 : curr->w_curvvis);
     }
   break;
 case 'S':
   ScrollRegion(a1 ? a1 : 1);
   break;
 case 'T':
 case '^':
   ScrollRegion(a1 ? -a1 : -1);
   break;
 }
      break;
    case '?':
      for (a2 = 0; a2 < curr->w_NumArgs; a2++)
 {
   a1 = curr->w_args[a2];
   do {} while (0);
   if (c != 'h' && c != 'l')
     break;
   i = (c == 'h');
   switch (a1)
     {
     case 1:
       LCursorkeysMode(&curr->w_layer, curr->w_cursorkeys = i);



       break;
     case 2:
       if (i)
  {


    if (curr->w_layer.l_encoding)
      break;

    curr->w_charsets[0] = curr->w_charsets[1] =
      curr->w_charsets[2] = curr->w_charsets[3] =
      curr->w_FontL = curr->w_FontR = 0;
    curr->w_Charset = 0;
    curr->w_CharsetR = 2;
    curr->w_ss = 0;

  }
       break;
     case 3:
       i = (i ? Z0width : Z1width);
       ClearScreen();
       curr->w_layer.l_x = 0;
       curr->w_layer.l_y = 0;
       WChangeSize(curr, i, curr->w_layer.l_height);
       cols = curr->w_layer.l_width;
       rows = curr->w_layer.l_height;
       break;

     case 5:
       if (i != curr->w_revvid)
         WReverseVideo(curr, i);
       curr->w_revvid = i;
       break;
     case 6:
       if ((curr->w_origin = i) != 0)
  {
    curr->w_layer.l_y = curr->w_top;
    curr->w_layer.l_x = 0;
  }
       else
  curr->w_layer.l_y = curr->w_layer.l_x = 0;
       LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
       break;
     case 7:
       curr->w_wrap = i;
       break;


     case 9:
       curr->w_mouse = i ? 9 : 0;
       LMouseMode(&curr->w_layer, curr->w_mouse);
       break;







     case 25:
       curr->w_curinv = !i;
       LCursorVisibility(&curr->w_layer, curr->w_curinv ? -1 : curr->w_curvvis);
       break;







     case 47:
     case 1047:
     case 1049:
       if (use_altscreen)
  {
    if (i)
      {
        if (!curr->w_alt.on) {
   SaveCursor(&curr->w_alt.cursor);
   EnterAltScreen(curr);
        }
      }
    else
      {
        if (curr->w_alt.on) {
          RestoreCursor(&curr->w_alt.cursor);
          LeaveAltScreen(curr);
        }
      }
    if (a1 == 47 && !i)
      curr->w_saved.on = 0;
    LRefreshAll(&curr->w_layer, 0);
    LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
  }
       break;
     case 1048:
       if (i)
  SaveCursor(&curr->w_saved);
       else
  RestoreCursor(&curr->w_saved);
       break;


     case 1000:
     case 1001:
     case 1002:
     case 1003:
       curr->w_mouse = i ? a1 : 0;
       LMouseMode(&curr->w_layer, curr->w_mouse);
       break;
     }
 }
      break;
    case '>':
      switch (c)
 {
 case 'c':
   if (a1 == 0)
     Report("\033[>%d;%d;0c", 83, nversion);
   break;
 }
      break;
    }
}


static void
StringStart(type)
enum string_t type;
{
  curr->w_StringType = type;
  curr->w_stringp = curr->w_string;
  curr->w_state = ASTR;
}

static void
StringChar(c)
int c;
{
  if (curr->w_stringp >= curr->w_string + 768 - 1)
    curr->w_state = LIT;
  else
    *(curr->w_stringp)++ = c;
}





static int
StringEnd()
{
  struct canvas *cv;
  char *p;
  int typ;

  curr->w_state = LIT;
  *curr->w_stringp = '\0';
  switch (curr->w_StringType)
    {
    case OSC:
      if (curr->w_string[0] == ';' || (p = index(curr->w_string, ';')) == 0)
 break;
      typ = atoi(curr->w_string);
      p++;

      if (typ == 83)
 {

   char *args[64];
   int argl[64];
   struct acluser *windowuser;

   windowuser = *FindUserPtr(":window:");
   if (windowuser && Parse(p, sizeof(curr->w_string) - (p - curr->w_string), args, argl))
     {
       for (display = displays; display; display = display->d_next)
  if (display->d_forecv->c_layer->l_bottom == &curr->w_layer)
    break;
       if (display == 0 && curr->w_layer.l_cvlist)
  display = curr->w_layer.l_cvlist->c_display;
       if (display == 0)
  display = displays;
       EffectiveAclUser = windowuser;
       fore = curr;
       flayer = fore->w_savelayer ? fore->w_savelayer : &fore->w_layer;
       DoCommand(args, argl);
       EffectiveAclUser = 0;
       fore = 0;
       flayer = 0;
     }
   break;
 }
# 1582 "ansi.c"
      if (typ < 0 || typ > 2)
 break;


      curr->w_stringp -= p - curr->w_string;
      if (curr->w_stringp > curr->w_string)
 bcopy(p, curr->w_string, curr->w_stringp - curr->w_string);
      *curr->w_stringp = '\0';

    case APC:
      if (curr->w_hstatus)
 {
   if (strcmp(curr->w_hstatus, curr->w_string) == 0)
     break;
   free(curr->w_hstatus);
   curr->w_hstatus = 0;
 }
      if (curr->w_string != curr->w_stringp)
 curr->w_hstatus = SaveStr(curr->w_string);
      WindowChanged(curr, 'h');
      break;
    case PM:
    case GM:
      for (display = displays; display; display = display->d_next)
 {
   for (cv = display->d_cvlist; cv; cv = cv->c_next)
     if (cv->c_layer->l_bottom == &curr->w_layer)
       break;
   if (cv || curr->w_StringType == GM)
     MakeStatus(curr->w_string);
 }
      return -1;
    case DCS:
      do { struct display *olddisplay = display; struct canvas *cv; for (display = displays; display; display = display->d_next) { for (cv = display->d_cvlist; cv; cv = cv->c_next) if (cv->c_layer == &curr->w_layer) break; if (cv == 0) continue; AddStr(curr->w_string); } display = olddisplay; } while(0);
      break;
    case AKA:
      if (curr->w_title == curr->w_akabuf && !*curr->w_string)
 break;
      ChangeAKA(curr, curr->w_string, strlen(curr->w_string));
      if (!*curr->w_string)
 curr->w_autoaka = curr->w_layer.l_y + 1;
      break;
    default:
      break;
    }
  return 0;
}

static void
PrintStart()
{
  curr->w_pdisplay = 0;


  display = curr->w_lastdisp;
  if (!(display && curr == display->d_fore && (printcmd || (display->d_tcs[73].str))))
    for (display = displays; display; display = display->d_next)
      if (curr == display->d_fore && (printcmd || (display->d_tcs[73].str)))
        break;
  if (!display)
    {
      struct canvas *cv;
      for (cv = curr->w_layer.l_cvlist; cv; cv = cv->c_lnext)
 {
   display = cv->c_display;
   if (printcmd || (display->d_tcs[73].str))
     break;
 }
      if (!cv)
 {
   display = displays;
   if (!display || display->d_next || !(printcmd || (display->d_tcs[73].str)))
     return;
 }
    }
  curr->w_pdisplay = display;
  curr->w_stringp = curr->w_string;
  curr->w_state = PRIN;
  if (printcmd && curr->w_pdisplay->d_printfd < 0)
    curr->w_pdisplay->d_printfd = printpipe(curr, printcmd);
}

static void
PrintChar(c)
int c;
{
  if (curr->w_stringp >= curr->w_string + 768 - 1)
    PrintFlush();
  *(curr->w_stringp)++ = c;
}

static void
PrintFlush()
{
  display = curr->w_pdisplay;
  if (display && printcmd)
    {
      char *bp = curr->w_string;
      int len = curr->w_stringp - curr->w_string;
      int r;
      while (len && display->d_printfd >= 0)
 {
   r = write(display->d_printfd, bp, len);
   if (r <= 0)
     {
       WMsg(curr, (*__errno_location ()), "printing aborted");
       close(display->d_printfd);
       display->d_printfd = -1;
       break;
     }
   bp += r;
   len -= r;
 }
    }
  else if (display && curr->w_stringp > curr->w_string)
    {
      AddCStr((display->d_tcs[73].str));
      AddStrn(curr->w_string, curr->w_stringp - curr->w_string);
      AddCStr((display->d_tcs[74].str));
      Flush(3);
    }
  curr->w_stringp = curr->w_string;
}


void
WNewAutoFlow(win, on)
struct win *win;
int on;
{
  do {} while (0);
  if (win->w_flow & (1<<2))
    win->w_flow = (1<<2) | ((1<<1)|(1<<0)) * on;
  else
    win->w_flow = (win->w_flow & ~(1<<1)) | (1<<1) * on;
  LSetFlow(&win->w_layer, win->w_flow & (1<<0));
}




static void
DesignateCharset(c, n)
int c, n;
{
  curr->w_ss = 0;

  if (c == ('@' & 037))
    c = ('B' & 037);

  if (c == 'B')
    c = 0;
  if (curr->w_charsets[n] != c)
    {
      curr->w_charsets[n] = c;
      if (curr->w_Charset == n)
 {
   curr->w_FontL = c;
   curr->w_rend.font = curr->w_FontL;
   LSetRendition(&curr->w_layer, &curr->w_rend);
 }
      if (curr->w_CharsetR == n)
        curr->w_FontR = c;
    }
}

static void
MapCharset(n)
int n;
{
  curr->w_ss = 0;
  if (curr->w_Charset != n)
    {
      curr->w_Charset = n;
      curr->w_FontL = curr->w_charsets[n];
      curr->w_rend.font = curr->w_FontL;
      LSetRendition(&curr->w_layer, &curr->w_rend);
    }
}

static void
MapCharsetR(n)
int n;
{
  curr->w_ss = 0;
  if (curr->w_CharsetR != n)
    {
      curr->w_CharsetR = n;
      curr->w_FontR = curr->w_charsets[n];
    }
  curr->w_gr = 1;
}



static void
SaveCursor(cursor)
struct cursor *cursor;
{
  cursor->on = 1;
  cursor->x = curr->w_layer.l_x;
  cursor->y = curr->w_layer.l_y;
  cursor->Rend = curr->w_rend;

  cursor->Charset = curr->w_Charset;
  cursor->CharsetR = curr->w_CharsetR;
  bcopy((char *) curr->w_charsets, (char *) cursor->Charsets,
 4 * sizeof(int));

}

static void
RestoreCursor(cursor)
struct cursor *cursor;
{
  if (!cursor->on)
    return;
  LGotoPos(&curr->w_layer, cursor->x, cursor->y);
  curr->w_layer.l_x = cursor->x;
  curr->w_layer.l_y = cursor->y;
  curr->w_rend = cursor->Rend;

  bcopy((char *) cursor->Charsets, (char *) curr->w_charsets,
 4 * sizeof(int));
  curr->w_Charset = cursor->Charset;
  curr->w_CharsetR = cursor->CharsetR;
  curr->w_ss = 0;
  curr->w_FontL = curr->w_charsets[curr->w_Charset];
  curr->w_FontR = curr->w_charsets[curr->w_CharsetR];

  LSetRendition(&curr->w_layer, &curr->w_rend);
}

static void
BackSpace()
{
  if (curr->w_layer.l_x > 0)
    {
      curr->w_layer.l_x--;
    }
  else if (curr->w_wrap && curr->w_layer.l_y > 0)
    {
      curr->w_layer.l_x = cols - 1;
      curr->w_layer.l_y--;
    }
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
Return()
{
  if (curr->w_layer.l_x == 0)
    return;
  curr->w_layer.l_x = 0;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
LineFeed(out_mode)
int out_mode;
{

  if (out_mode)
    curr->w_layer.l_x = 0;
  if (curr->w_layer.l_y != curr->w_bot)
    {
      if (curr->w_layer.l_y < rows-1)
 curr->w_layer.l_y++;
      LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
      return;
    }
  if (curr->w_autoaka > 1)
    curr->w_autoaka--;
  MScrollV(curr, 1, curr->w_top, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LScrollV(&curr->w_layer, 1, curr->w_top, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
ReverseLineFeed()
{
  if (curr->w_layer.l_y == curr->w_top)
    {
      MScrollV(curr, -1, curr->w_top, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
      LScrollV(&curr->w_layer, -1, curr->w_top, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
      LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
    }
  else if (curr->w_layer.l_y > 0)
    CursorUp(1);
}

static void
InsertChar(n)
int n;
{
  register int y = curr->w_layer.l_y, x = curr->w_layer.l_x;

  if (n <= 0)
    return;
  if (x == cols)
    x--;
  do { bcopy((char *)(&curr->w_mlines[y])->image, (char *)mline_old.image, (cols)); bcopy((char *)(&curr->w_mlines[y])->attr, (char *)mline_old.attr, (cols)); bcopy((char *)(&curr->w_mlines[y])->font, (char *)mline_old.font, (cols)); bcopy((char *)(&curr->w_mlines[y])->fontx, (char *)mline_old.fontx, (cols)); bcopy((char *)(&curr->w_mlines[y])->color, (char *)mline_old.color, (cols)); } while (0);
  MScrollH(curr, -n, y, x, curr->w_layer.l_width - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LScrollH(&curr->w_layer, -n, y, x, curr->w_layer.l_width - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0), &mline_old);
  LGotoPos(&curr->w_layer, x, y);
}

static void
DeleteChar(n)
int n;
{
  register int y = curr->w_layer.l_y, x = curr->w_layer.l_x;

  if (x == cols)
    x--;
  do { bcopy((char *)(&curr->w_mlines[y])->image, (char *)mline_old.image, (cols)); bcopy((char *)(&curr->w_mlines[y])->attr, (char *)mline_old.attr, (cols)); bcopy((char *)(&curr->w_mlines[y])->font, (char *)mline_old.font, (cols)); bcopy((char *)(&curr->w_mlines[y])->fontx, (char *)mline_old.fontx, (cols)); bcopy((char *)(&curr->w_mlines[y])->color, (char *)mline_old.color, (cols)); } while (0);
  MScrollH(curr, n, y, x, curr->w_layer.l_width - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LScrollH(&curr->w_layer, n, y, x, curr->w_layer.l_width - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0), &mline_old);
  LGotoPos(&curr->w_layer, x, y);
}

static void
DeleteLine(n)
int n;
{
  if (curr->w_layer.l_y < curr->w_top || curr->w_layer.l_y > curr->w_bot)
    return;
  if (n > curr->w_bot - curr->w_layer.l_y + 1)
    n = curr->w_bot - curr->w_layer.l_y + 1;
  MScrollV(curr, n, curr->w_layer.l_y, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LScrollV(&curr->w_layer, n, curr->w_layer.l_y, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
InsertLine(n)
int n;
{
  if (curr->w_layer.l_y < curr->w_top || curr->w_layer.l_y > curr->w_bot)
    return;
  if (n > curr->w_bot - curr->w_layer.l_y + 1)
    n = curr->w_bot - curr->w_layer.l_y + 1;
  MScrollV(curr, -n, curr->w_layer.l_y, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LScrollV(&curr->w_layer, -n, curr->w_layer.l_y, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
ScrollRegion(n)
int n;
{
  MScrollV(curr, n, curr->w_top, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LScrollV(&curr->w_layer, n, curr->w_top, curr->w_bot, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}


static void
ForwardTab()
{
  register int x = curr->w_layer.l_x;

  if (x == cols)
    {
      LineFeed(1);
      x = 0;
    }
  if (curr->w_tabs[x] && x < cols - 1)
    x++;
  while (x < cols - 1 && !curr->w_tabs[x])
    x++;
  curr->w_layer.l_x = x;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
BackwardTab()
{
  register int x = curr->w_layer.l_x;

  if (curr->w_tabs[x] && x > 0)
    x--;
  while (x > 0 && !curr->w_tabs[x])
    x--;
  curr->w_layer.l_x = x;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
ClearScreen()
{
  LClearArea(&curr->w_layer, 0, 0, curr->w_layer.l_width - 1, curr->w_layer.l_height - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0), 1);

  MScrollV(curr, curr->w_layer.l_height, 0, curr->w_layer.l_height - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));



}

static void
ClearFromBOS()
{
  register int y = curr->w_layer.l_y, x = curr->w_layer.l_x;

  LClearArea(&curr->w_layer, 0, 0, x, y, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0), 1);
  MClearArea(curr, 0, 0, x, y, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  RestorePosRendition();
}

static void
ClearToEOS()
{
  register int y = curr->w_layer.l_y, x = curr->w_layer.l_x;

  if (x == 0 && y == 0)
    {
      ClearScreen();
      RestorePosRendition();
      return;
    }
  LClearArea(&curr->w_layer, x, y, cols - 1, rows - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0), 1);
  MClearArea(curr, x, y, cols - 1, rows - 1, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  RestorePosRendition();
}

static void
ClearLineRegion(from, to)
int from, to;
{
  register int y = curr->w_layer.l_y;
  LClearArea(&curr->w_layer, from, y, to, y, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0), 1);
  MClearArea(curr, from, y, to, y, (curr->w_bce ? (((&curr->w_rend)->color & 0xf0) >> 4 | ((&curr->w_rend)->attr & (1<<7) ? 0x100 : 0)) : 0));
  RestorePosRendition();
}

static void
CursorRight(n)
register int n;
{
  register int x = curr->w_layer.l_x;

  if (x == cols)
    {
      LineFeed(1);
      x = 0;
    }
  if ((curr->w_layer.l_x += n) >= cols)
    curr->w_layer.l_x = cols - 1;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
CursorUp(n)
register int n;
{
  if (curr->w_layer.l_y < curr->w_top)
    {
      if ((curr->w_layer.l_y -= n) < 0)
         curr->w_layer.l_y = 0;
    }
  else
    if ((curr->w_layer.l_y -= n) < curr->w_top)
      curr->w_layer.l_y = curr->w_top;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
CursorDown(n)
register int n;
{
  if (curr->w_layer.l_y > curr->w_bot)
    {
      if ((curr->w_layer.l_y += n) > rows - 1)
        curr->w_layer.l_y = rows - 1;
    }
  else
    if ((curr->w_layer.l_y += n) > curr->w_bot)
      curr->w_layer.l_y = curr->w_bot;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
CursorLeft(n)
register int n;
{
  if ((curr->w_layer.l_x -= n) < 0)
    curr->w_layer.l_x = 0;
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
}

static void
ASetMode(on)
int on;
{
  register int i;

  for (i = 0; i < curr->w_NumArgs; ++i)
    {
      switch (curr->w_args[i])
 {

 case 4:
   curr->w_insert = on;
   do { struct display *olddisplay = display; struct canvas *cv; for (display = displays; display; display = display->d_next) { for (cv = display->d_cvlist; cv; cv = cv->c_next) if (cv->c_layer == &curr->w_layer) break; if (cv == 0) continue; InsertMode(on); } display = olddisplay; } while(0);
   break;

 case 20:
   curr->w_autolf = on;
   break;
 case 34:
   curr->w_curvvis = !on;
   LCursorVisibility(&curr->w_layer, curr->w_curinv ? -1 : curr->w_curvvis);
   break;
 default:
   break;
 }
    }
}

static char rendlist[] =
{
  ~((1 << 6) - 1), (1<<2), (1<<0), (1<<4), (1<<1), (1<<5), 0, (1<<3), 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, ~((1<<2)|(1<<4)|(1<<0)), ~(1<<4), ~(1<<1), ~(1<<5), 0, ~(1<<3)
};

static void
SelectRendition()
{

  register int j, i = 0, a = curr->w_rend.attr, c = curr->w_rend.color;







  do
    {
      j = curr->w_args[i];

      if ((j == 38 || j == 48) && i + 2 < curr->w_NumArgs && curr->w_args[i + 1] == 5)
 {
   int jj;

   i += 2;
   jj = curr->w_args[i];
   if (jj < 0 || jj > 255)
     continue;
# 2156 "ansi.c"
   jj = color256to16(jj) + 30;
   if (jj >= 38)
     jj += 60 - 8;
   j = j == 38 ? jj : jj + 10;

 }

      if (j == 0 || (j >= 30 && j <= 39 && j != 38))
 a &= 0xbf;
      if (j == 0 || (j >= 40 && j <= 49 && j != 48))
 a &= 0x7f;
      if (j >= 90 && j <= 97)
 a |= 0x40;
      if (j >= 100 && j <= 107)
 a |= 0x80;

      if (j >= 90 && j <= 97)
 j -= 60;
      if (j >= 100 && j <= 107)
 j -= 60;
      if (j >= 30 && j <= 39 && j != 38)
 c = (c & 0xf0) | ((j - 30) ^ 9);
      else if (j >= 40 && j <= 49 && j != 48)
 c = (c & 0x0f) | (((j - 40) ^ 9) << 4);
      if (j == 0)
 c = 0;







      if (j < 0 || j >= (int)(sizeof(rendlist)/sizeof(*rendlist)))
 continue;
      j = rendlist[j];
      if (j & (1 << 6))
        a &= j;
      else
        a |= j;
    }
  while (++i < curr->w_NumArgs);
  curr->w_rend.attr = a;

  curr->w_rend.color = c;




  LSetRendition(&curr->w_layer, &curr->w_rend);
}

static void
FillWithEs()
{
  register int i;
  register unsigned char *p, *ep;

  LClearAll(&curr->w_layer, 1);
  curr->w_layer.l_y = curr->w_layer.l_x = 0;
  for (i = 0; i < rows; ++i)
    {
      do { bclear((char *)(&curr->w_mlines[i])->image + (0), (cols + 1)); if ((&curr->w_mlines[i])->attr != null) bzero((char *)(&curr->w_mlines[i])->attr + (0), (cols + 1)); if ((&curr->w_mlines[i])->font != null) bzero((char *)(&curr->w_mlines[i])->font + (0), (cols + 1)); if ((&curr->w_mlines[i])->fontx != null) bzero((char *)(&curr->w_mlines[i])->fontx + (0), (cols + 1)); if ((&curr->w_mlines[i])->color!= null) bzero((char *)(&curr->w_mlines[i])->color + (0), (cols + 1)); } while (0);
      p = curr->w_mlines[i].image;
      ep = p + cols;
      while (p < ep)
 *p++ = 'E';
    }
  LRefreshAll(&curr->w_layer, 1);
}
# 2234 "ansi.c"
void
ChangeAKA(p, s, l)
struct win *p;
char *s;
int l;
{
  int i, c;

  for (i = 0; l > 0; l--)
    {
      if (p->w_akachange + i == p->w_akabuf + sizeof(p->w_akabuf) - 1)
 break;
      c = (unsigned char)*s++;
      if (c == 0)
 break;
      if (c < 32 || c == 127 || (c >= 128 && c < 160 && p->w_c1))
 continue;
      p->w_akachange[i++] = c;
    }
  p->w_akachange[i] = 0;
  p->w_title = p->w_akachange;
  if (p->w_akachange != p->w_akabuf)
    if (p->w_akachange[0] == 0 || p->w_akachange[-1] == ':')
      p->w_title = p->w_akabuf + strlen(p->w_akabuf) + 1;
  WindowChanged(p, 't');
  WindowChanged((struct win *)0, 'w');
  WindowChanged((struct win *)0, 'W');
}

static void
FindAKA()
{
  register unsigned char *cp, *line;
  register struct win *wp = curr;
  register int len = strlen(wp->w_akabuf);
  int y;

  y = (wp->w_autoaka > 0 && wp->w_autoaka <= wp->w_layer.l_height) ? wp->w_autoaka - 1 : wp->w_layer.l_y;
  cols = wp->w_layer.l_width;
 try_line:
  cp = line = wp->w_mlines[y].image;
  if (wp->w_autoaka > 0 && *wp->w_akabuf != '\0')
    {
      for (;;)
 {
   if (cp - line >= cols - len)
     {
       if (++y == wp->w_autoaka && y < rows)
  goto try_line;
       return;
     }
   if (strncmp((char *)cp, wp->w_akabuf, len) == 0)
     break;
   cp++;
 }
      cp += len;
    }
  for (len = cols - (cp - line); len && *cp == ' '; len--, cp++)
    ;
  if (len)
    {
      if (wp->w_autoaka > 0 && (*cp == '!' || *cp == '%' || *cp == '^'))
 wp->w_autoaka = -1;
      else
 wp->w_autoaka = 0;
      line = cp;
      while (len && *cp != ' ')
 {
   if (*cp++ == '/')
     line = cp;
   len--;
 }
      ChangeAKA(wp, (char *)line, cp - line);
    }
  else
    wp->w_autoaka = 0;
}

static void
RestorePosRendition()
{
  LGotoPos(&curr->w_layer, curr->w_layer.l_x, curr->w_layer.l_y);
  LSetRendition(&curr->w_layer, &curr->w_rend);
}


static void
Report(fmt, n1, n2)
char *fmt;
int n1, n2;
{
  register int len;
  char rbuf[40];

  sprintf(rbuf, fmt, n1, n2);
  len = strlen(rbuf);


  if (((curr)->w_pwin && ((curr)->w_pwin->p_fdpat & 0x1000)))
    {
      if ((unsigned)(curr->w_pwin->p_inlen + len) <= sizeof(curr->w_pwin->p_inbuf))
 {
   bcopy(rbuf, curr->w_pwin->p_inbuf + curr->w_pwin->p_inlen, len);
   curr->w_pwin->p_inlen += len;
 }
    }
  else

    {
      if ((unsigned)(curr->w_inlen + len) <= sizeof(curr->w_inbuf))
 {
   bcopy(rbuf, curr->w_inbuf + curr->w_inlen, len);
   curr->w_inlen += len;
 }
    }
}
# 2364 "ansi.c"
static void
MFixLine(p, y, mc)
struct win *p;
int y;
struct mchar *mc;
{
  struct mline *ml = &p->w_mlines[y];
  if (mc->attr && ml->attr == null)
    {
      if ((ml->attr = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
 {
   ml->attr = null;
   mc->attr = p->w_rend.attr = 0;
   WMsg(p, 0, "Warning: no space for attr - turned off");
 }
    }

  if (mc->font && ml->font == null)
    {
      if ((ml->font = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
 {
   ml->font = null;
   p->w_FontL = p->w_charsets[p->w_ss ? p->w_ss : p->w_Charset] = 0;
   p->w_FontR = p->w_charsets[p->w_ss ? p->w_ss : p->w_CharsetR] = 0;
   mc->font = mc->fontx = p->w_rend.font = 0;
   WMsg(p, 0, "Warning: no space for font - turned off");
 }
    }
  if (mc->fontx && ml->fontx == null)
    {
      if ((ml->fontx = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
 {
   ml->fontx = null;
   mc->fontx = 0;
 }
    }


  if (mc->color && ml->color == null)
    {
      if ((ml->color = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
 {
   ml->color = null;
   mc->color = p->w_rend.color = 0;
   WMsg(p, 0, "Warning: no space for color - turned off");
 }
    }
# 2423 "ansi.c"
}
# 2447 "ansi.c"
static void
MScrollH(p, n, y, xs, xe, bce)
struct win *p;
int n, y, xs, xe, bce;
{
  struct mline *ml;

  if (n == 0)
    return;
  ml = &p->w_mlines[y];
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[xs] == 0xff && (unsigned char)(ml)->image[xs] == 0xff : ((unsigned char)(ml)->font[xs] & 0xe0) == 0x80 )) { if (xs > 0) do { (ml)->image[xs - 1] = (&mchar_blank)->image; (ml)->attr[xs - 1] = (&mchar_blank)->attr; (ml)->font[xs - 1] = (&mchar_blank)->font; (ml)->fontx[xs - 1] = (&mchar_blank)->fontx; (ml)->color[xs - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[xs] = (&mchar_blank)->image; (ml)->attr[xs] = (&mchar_blank)->attr; (ml)->font[xs] = (&mchar_blank)->font; (ml)->fontx[xs] = (&mchar_blank)->fontx; (ml)->color[xs] = (&mchar_blank)->color; } while (0); };
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[(xe) + 1] == 0xff && (unsigned char)(ml)->image[(xe) + 1] == 0xff : ((unsigned char)(ml)->font[xe] & 0x1f) != 0 && ((unsigned char)(ml)->font[xe] & 0xe0) == 0 )) { do { (ml)->image[xe] = (&mchar_blank)->image; (ml)->attr[xe] = (&mchar_blank)->attr; (ml)->font[xe] = (&mchar_blank)->font; (ml)->fontx[xe] = (&mchar_blank)->fontx; (ml)->color[xe] = (&mchar_blank)->color; } while (0); do { (ml)->image[xe + 1] = (&mchar_blank)->image; (ml)->attr[xe + 1] = (&mchar_blank)->attr; (ml)->font[xe + 1] = (&mchar_blank)->font; (ml)->fontx[xe + 1] = (&mchar_blank)->fontx; (ml)->color[xe + 1] = (&mchar_blank)->color; } while (0); };
  if (n > 0)
    {
      if (xe - xs + 1 > n)
 {
   if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[xs + n] == 0xff && (unsigned char)(ml)->image[xs + n] == 0xff : ((unsigned char)(ml)->font[xs + n] & 0xe0) == 0x80 )) { if (xs + n > 0) do { (ml)->image[xs + n - 1] = (&mchar_blank)->image; (ml)->attr[xs + n - 1] = (&mchar_blank)->attr; (ml)->font[xs + n - 1] = (&mchar_blank)->font; (ml)->fontx[xs + n - 1] = (&mchar_blank)->fontx; (ml)->color[xs + n - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[xs + n] = (&mchar_blank)->image; (ml)->attr[xs + n] = (&mchar_blank)->attr; (ml)->font[xs + n] = (&mchar_blank)->font; (ml)->fontx[xs + n] = (&mchar_blank)->fontx; (ml)->color[xs + n] = (&mchar_blank)->color; } while (0); };
   do { bcopy((char *)(ml)->image + (xs + n), (char *)(ml)->image + (xs), (xe + 1 - xs - n)); bcopy((char *)(ml)->attr + (xs + n), (char *)(ml)->attr + (xs), (xe + 1 - xs - n)); bcopy((char *)(ml)->font + (xs + n), (char *)(ml)->font + (xs), (xe + 1 - xs - n)); bcopy((char *)(ml)->fontx + (xs + n), (char *)(ml)->fontx + (xs), (xe + 1 - xs - n)); bcopy((char *)(ml)->color + (xs + n), (char *)(ml)->color + (xs), (xe + 1 - xs - n)); } while (0);
 }
      else
 n = xe - xs + 1;
      do { bclear((char *)(ml)->image + (xe + 1 - n), (n)); if ((ml)->attr != null) bzero((char *)(ml)->attr + (xe + 1 - n), (n)); if ((ml)->font != null) bzero((char *)(ml)->font + (xe + 1 - n), (n)); if ((ml)->fontx != null) bzero((char *)(ml)->fontx + (xe + 1 - n), (n)); if ((ml)->color!= null) bzero((char *)(ml)->color + (xe + 1 - n), (n)); } while (0);

      if (bce)
        MBceLine(p, y, xe + 1 - n, n, bce);

    }
  else
    {
      n = -n;
      if (xe - xs + 1 > n)
 {
   if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[(xe - n) + 1] == 0xff && (unsigned char)(ml)->image[(xe - n) + 1] == 0xff : ((unsigned char)(ml)->font[xe - n] & 0x1f) != 0 && ((unsigned char)(ml)->font[xe - n] & 0xe0) == 0 )) { do { (ml)->image[xe - n] = (&mchar_blank)->image; (ml)->attr[xe - n] = (&mchar_blank)->attr; (ml)->font[xe - n] = (&mchar_blank)->font; (ml)->fontx[xe - n] = (&mchar_blank)->fontx; (ml)->color[xe - n] = (&mchar_blank)->color; } while (0); do { (ml)->image[xe - n + 1] = (&mchar_blank)->image; (ml)->attr[xe - n + 1] = (&mchar_blank)->attr; (ml)->font[xe - n + 1] = (&mchar_blank)->font; (ml)->fontx[xe - n + 1] = (&mchar_blank)->fontx; (ml)->color[xe - n + 1] = (&mchar_blank)->color; } while (0); };
   do { bcopy((char *)(ml)->image + (xs), (char *)(ml)->image + (xs + n), (xe + 1 - xs - n)); bcopy((char *)(ml)->attr + (xs), (char *)(ml)->attr + (xs + n), (xe + 1 - xs - n)); bcopy((char *)(ml)->font + (xs), (char *)(ml)->font + (xs + n), (xe + 1 - xs - n)); bcopy((char *)(ml)->fontx + (xs), (char *)(ml)->fontx + (xs + n), (xe + 1 - xs - n)); bcopy((char *)(ml)->color + (xs), (char *)(ml)->color + (xs + n), (xe + 1 - xs - n)); } while (0);
 }
      else
 n = xe - xs + 1;
      do { bclear((char *)(ml)->image + (xs), (n)); if ((ml)->attr != null) bzero((char *)(ml)->attr + (xs), (n)); if ((ml)->font != null) bzero((char *)(ml)->font + (xs), (n)); if ((ml)->fontx != null) bzero((char *)(ml)->fontx + (xs), (n)); if ((ml)->color!= null) bzero((char *)(ml)->color + (xs), (n)); } while (0);

      if (bce)
        MBceLine(p, y, xs, n, bce);

    }
}

static void
MScrollV(p, n, ys, ye, bce)
struct win *p;
int n, ys, ye, bce;
{
  int i, cnt1, cnt2;
  struct mline tmp[256];
  struct mline *ml;

  if (n == 0)
    return;
  if (n > 0)
    {
      if (ye - ys + 1 < n)
 n = ye - ys + 1;
      if (n > 256)
 {
   MScrollV(p, n - 256, ys, ye, bce);
   n = 256;
 }

      if (compacthist)
 {
   ye = MFindUsedLine(p, ye, ys);
   if (ye - ys + 1 < n)
     n = ye - ys + 1;
   if (n <= 0)
     return;
 }


      ml = p->w_mlines + ys;
      for (i = ys; i < ys + n; i++, ml++)
 {

   if (ys == p->w_top)
     WAddLineToHist(p, ml);

   if (ml->attr != null)
     free(ml->attr);
   ml->attr = null;

   if (ml->font != null)
     free(ml->font);
   ml->font = null;
   if (ml->fontx != null)
     free(ml->fontx);
   ml->fontx = null;


   if (ml->color != null)
     free(ml->color);
   ml->color = null;






   bclear((char *)ml->image, p->w_layer.l_width + 1);

   if (bce)
     MBceLine(p, i, 0, p->w_layer.l_width, bce);

 }

      cnt1 = n * sizeof(struct mline);
      cnt2 = (ye - ys + 1 - n) * sizeof(struct mline);
      if (cnt1 && cnt2)
 Scroll((char *)(p->w_mlines + ys), cnt1, cnt2, (char *)tmp);
    }
  else
    {
      n = -n;
      if (ye - ys + 1 < n)
 n = ye - ys + 1;
      if (n > 256)
 {
   MScrollV(p, - (n - 256), ys, ye, bce);
   n = 256;
 }

      ml = p->w_mlines + ye;

      for (i = ye; i > ye - n; i--, ml--)
 {
   if (ml->attr != null)
     free(ml->attr);
   ml->attr = null;

   if (ml->font != null)
     free(ml->font);
   ml->font = null;
   if (ml->fontx != null)
     free(ml->fontx);
   ml->fontx = null;


   if (ml->color != null)
     free(ml->color);
   ml->color = null;






   bclear((char *)ml->image, p->w_layer.l_width + 1);

   if (bce)
     MBceLine(p, i, 0, p->w_layer.l_width, bce);

 }
      cnt1 = n * sizeof(struct mline);
      cnt2 = (ye - ys + 1 - n) * sizeof(struct mline);
      if (cnt1 && cnt2)
 Scroll((char *)(p->w_mlines + ys), cnt2, cnt1, (char *)tmp);
    }
}

static void
Scroll(cp, cnt1, cnt2, tmp)
char *cp, *tmp;
int cnt1, cnt2;
{
  if (!cnt1 || !cnt2)
    return;
  if (cnt1 <= cnt2)
    {
      bcopy(cp, tmp, cnt1);
      bcopy(cp + cnt1, cp, cnt2);
      bcopy(tmp, cp + cnt2, cnt1);
    }
  else
    {
      bcopy(cp + cnt1, tmp, cnt2);
      bcopy(cp, cp + cnt2, cnt1);
      bcopy(tmp, cp, cnt2);
    }
}

static void
MClearArea(p, xs, ys, xe, ye, bce)
struct win *p;
int xs, ys, xe, ye, bce;
{
  int n, y;
  int xxe;
  struct mline *ml;


  if (ys < 0 || ye < ys)
    return;


  if (xs >= p->w_layer.l_width)
    xs = p->w_layer.l_width - 1;
  if (xe >= p->w_layer.l_width)
    xe = p->w_layer.l_width - 1;

  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(p->w_mlines + ys)->font[xs] == 0xff && (unsigned char)(p->w_mlines + ys)->image[xs] == 0xff : ((unsigned char)(p->w_mlines + ys)->font[xs] & 0xe0) == 0x80 )) { if (xs > 0) do { (p->w_mlines + ys)->image[xs - 1] = (&mchar_blank)->image; (p->w_mlines + ys)->attr[xs - 1] = (&mchar_blank)->attr; (p->w_mlines + ys)->font[xs - 1] = (&mchar_blank)->font; (p->w_mlines + ys)->fontx[xs - 1] = (&mchar_blank)->fontx; (p->w_mlines + ys)->color[xs - 1] = (&mchar_blank)->color; } while (0); do { (p->w_mlines + ys)->image[xs] = (&mchar_blank)->image; (p->w_mlines + ys)->attr[xs] = (&mchar_blank)->attr; (p->w_mlines + ys)->font[xs] = (&mchar_blank)->font; (p->w_mlines + ys)->fontx[xs] = (&mchar_blank)->fontx; (p->w_mlines + ys)->color[xs] = (&mchar_blank)->color; } while (0); };
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(p->w_mlines + ye)->font[(xe) + 1] == 0xff && (unsigned char)(p->w_mlines + ye)->image[(xe) + 1] == 0xff : ((unsigned char)(p->w_mlines + ye)->font[xe] & 0x1f) != 0 && ((unsigned char)(p->w_mlines + ye)->font[xe] & 0xe0) == 0 )) { do { (p->w_mlines + ye)->image[xe] = (&mchar_blank)->image; (p->w_mlines + ye)->attr[xe] = (&mchar_blank)->attr; (p->w_mlines + ye)->font[xe] = (&mchar_blank)->font; (p->w_mlines + ye)->fontx[xe] = (&mchar_blank)->fontx; (p->w_mlines + ye)->color[xe] = (&mchar_blank)->color; } while (0); do { (p->w_mlines + ye)->image[xe + 1] = (&mchar_blank)->image; (p->w_mlines + ye)->attr[xe + 1] = (&mchar_blank)->attr; (p->w_mlines + ye)->font[xe + 1] = (&mchar_blank)->font; (p->w_mlines + ye)->fontx[xe + 1] = (&mchar_blank)->fontx; (p->w_mlines + ye)->color[xe + 1] = (&mchar_blank)->color; } while (0); };

  ml = p->w_mlines + ys;
  for (y = ys; y <= ye; y++, ml++)
    {
      xxe = (y == ye) ? xe : p->w_layer.l_width - 1;
      n = xxe - xs + 1;
      if (n > 0)
 do { bclear((char *)(ml)->image + (xs), (n)); if ((ml)->attr != null) bzero((char *)(ml)->attr + (xs), (n)); if ((ml)->font != null) bzero((char *)(ml)->font + (xs), (n)); if ((ml)->fontx != null) bzero((char *)(ml)->fontx + (xs), (n)); if ((ml)->color!= null) bzero((char *)(ml)->color + (xs), (n)); } while (0);

      if (n > 0 && bce)
 MBceLine(p, y, xs, xs + n - 1, bce);

      xs = 0;
    }
}

static void
MInsChar(p, c, x, y)
struct win *p;
struct mchar *c;
int x, y;
{
  int n;
  struct mline *ml;

  do {} while (0);
  MFixLine(p, y, c);
  ml = p->w_mlines + y;
  n = p->w_layer.l_width - x - 1;
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[x] == 0xff && (unsigned char)(ml)->image[x] == 0xff : ((unsigned char)(ml)->font[x] & 0xe0) == 0x80 )) { if (x > 0) do { (ml)->image[x - 1] = (&mchar_blank)->image; (ml)->attr[x - 1] = (&mchar_blank)->attr; (ml)->font[x - 1] = (&mchar_blank)->font; (ml)->fontx[x - 1] = (&mchar_blank)->fontx; (ml)->color[x - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[x] = (&mchar_blank)->image; (ml)->attr[x] = (&mchar_blank)->attr; (ml)->font[x] = (&mchar_blank)->font; (ml)->fontx[x] = (&mchar_blank)->fontx; (ml)->color[x] = (&mchar_blank)->color; } while (0); };
  if (n > 0)
    {
      if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[p->w_layer.l_width - 1] == 0xff && (unsigned char)(ml)->image[p->w_layer.l_width - 1] == 0xff : ((unsigned char)(ml)->font[p->w_layer.l_width - 1] & 0xe0) == 0x80 )) { if (p->w_layer.l_width - 1 > 0) do { (ml)->image[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->image; (ml)->attr[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->attr; (ml)->font[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->font; (ml)->fontx[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->fontx; (ml)->color[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[p->w_layer.l_width - 1] = (&mchar_blank)->image; (ml)->attr[p->w_layer.l_width - 1] = (&mchar_blank)->attr; (ml)->font[p->w_layer.l_width - 1] = (&mchar_blank)->font; (ml)->fontx[p->w_layer.l_width - 1] = (&mchar_blank)->fontx; (ml)->color[p->w_layer.l_width - 1] = (&mchar_blank)->color; } while (0); };
      do { bcopy((char *)(ml)->image + (x), (char *)(ml)->image + (x + 1), (n)); bcopy((char *)(ml)->attr + (x), (char *)(ml)->attr + (x + 1), (n)); bcopy((char *)(ml)->font + (x), (char *)(ml)->font + (x + 1), (n)); bcopy((char *)(ml)->fontx + (x), (char *)(ml)->fontx + (x + 1), (n)); bcopy((char *)(ml)->color + (x), (char *)(ml)->color + (x + 1), (n)); } while (0);
    }
  do { (ml)->image[x] = (c)->image; (ml)->attr[x] = (c)->attr; (ml)->font[x] = (c)->font; (ml)->fontx[x] = (c)->fontx; (ml)->color[x] = (c)->color; } while (0);

  if (c->mbcs)
    {
      if (--n > 0)
        {
          if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[p->w_layer.l_width - 1] == 0xff && (unsigned char)(ml)->image[p->w_layer.l_width - 1] == 0xff : ((unsigned char)(ml)->font[p->w_layer.l_width - 1] & 0xe0) == 0x80 )) { if (p->w_layer.l_width - 1 > 0) do { (ml)->image[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->image; (ml)->attr[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->attr; (ml)->font[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->font; (ml)->fontx[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->fontx; (ml)->color[p->w_layer.l_width - 1 - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[p->w_layer.l_width - 1] = (&mchar_blank)->image; (ml)->attr[p->w_layer.l_width - 1] = (&mchar_blank)->attr; (ml)->font[p->w_layer.l_width - 1] = (&mchar_blank)->font; (ml)->fontx[p->w_layer.l_width - 1] = (&mchar_blank)->fontx; (ml)->color[p->w_layer.l_width - 1] = (&mchar_blank)->color; } while (0); };
   do { bcopy((char *)(ml)->image + (x + 1), (char *)(ml)->image + (x + 2), (n)); bcopy((char *)(ml)->attr + (x + 1), (char *)(ml)->attr + (x + 2), (n)); bcopy((char *)(ml)->font + (x + 1), (char *)(ml)->font + (x + 2), (n)); bcopy((char *)(ml)->fontx + (x + 1), (char *)(ml)->fontx + (x + 2), (n)); bcopy((char *)(ml)->color + (x + 1), (char *)(ml)->color + (x + 2), (n)); } while (0);
 }
      do { (ml)->image[x + 1] = (c)->image; (ml)->attr[x + 1] = (c)->attr; (ml)->font[x + 1] = (c)->font; (ml)->fontx[x + 1] = (c)->fontx; (ml)->color[x + 1] = (c)->color; } while (0);
      ml->image[x + 1] = c->mbcs;

      if (p->w_layer.l_encoding != 8)
 ml->font[x + 1] |= 0x80;
      else if (p->w_layer.l_encoding == 8 && c->mbcs)
 {
   ml->font[x + 1] = c->mbcs;
   ml->fontx[x + 1] = 0;
 }



    }

}

static void
MPutChar(p, c, x, y)
struct win *p;
struct mchar *c;
int x, y;
{
  struct mline *ml;

  MFixLine(p, y, c);
  ml = &p->w_mlines[y];
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[x] == 0xff && (unsigned char)(ml)->image[x] == 0xff : ((unsigned char)(ml)->font[x] & 0xe0) == 0x80 )) { if (x > 0) do { (ml)->image[x - 1] = (&mchar_blank)->image; (ml)->attr[x - 1] = (&mchar_blank)->attr; (ml)->font[x - 1] = (&mchar_blank)->font; (ml)->fontx[x - 1] = (&mchar_blank)->fontx; (ml)->color[x - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[x] = (&mchar_blank)->image; (ml)->attr[x] = (&mchar_blank)->attr; (ml)->font[x] = (&mchar_blank)->font; (ml)->fontx[x] = (&mchar_blank)->fontx; (ml)->color[x] = (&mchar_blank)->color; } while (0); };
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[(x) + 1] == 0xff && (unsigned char)(ml)->image[(x) + 1] == 0xff : ((unsigned char)(ml)->font[x] & 0x1f) != 0 && ((unsigned char)(ml)->font[x] & 0xe0) == 0 )) { do { (ml)->image[x] = (&mchar_blank)->image; (ml)->attr[x] = (&mchar_blank)->attr; (ml)->font[x] = (&mchar_blank)->font; (ml)->fontx[x] = (&mchar_blank)->fontx; (ml)->color[x] = (&mchar_blank)->color; } while (0); do { (ml)->image[x + 1] = (&mchar_blank)->image; (ml)->attr[x + 1] = (&mchar_blank)->attr; (ml)->font[x + 1] = (&mchar_blank)->font; (ml)->fontx[x + 1] = (&mchar_blank)->fontx; (ml)->color[x + 1] = (&mchar_blank)->color; } while (0); };
  do { (ml)->image[x] = (c)->image; (ml)->attr[x] = (c)->attr; (ml)->font[x] = (c)->font; (ml)->fontx[x] = (c)->fontx; (ml)->color[x] = (c)->color; } while (0);

  if (c->mbcs)
    {
      if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[(x + 1) + 1] == 0xff && (unsigned char)(ml)->image[(x + 1) + 1] == 0xff : ((unsigned char)(ml)->font[x + 1] & 0x1f) != 0 && ((unsigned char)(ml)->font[x + 1] & 0xe0) == 0 )) { do { (ml)->image[x + 1] = (&mchar_blank)->image; (ml)->attr[x + 1] = (&mchar_blank)->attr; (ml)->font[x + 1] = (&mchar_blank)->font; (ml)->fontx[x + 1] = (&mchar_blank)->fontx; (ml)->color[x + 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[x + 1 + 1] = (&mchar_blank)->image; (ml)->attr[x + 1 + 1] = (&mchar_blank)->attr; (ml)->font[x + 1 + 1] = (&mchar_blank)->font; (ml)->fontx[x + 1 + 1] = (&mchar_blank)->fontx; (ml)->color[x + 1 + 1] = (&mchar_blank)->color; } while (0); };
      do { (ml)->image[x + 1] = (c)->image; (ml)->attr[x + 1] = (c)->attr; (ml)->font[x + 1] = (c)->font; (ml)->fontx[x + 1] = (c)->fontx; (ml)->color[x + 1] = (c)->color; } while (0);
      ml->image[x + 1] = c->mbcs;

      if (p->w_layer.l_encoding != 8)
 ml->font[x + 1] |= 0x80;
      else if (p->w_layer.l_encoding == 8 && c->mbcs)
 {
   ml->font[x + 1] = c->mbcs;
   ml->fontx[x + 1] = 0;
 }



    }

}


static void
MWrapChar(p, c, y, top, bot, ins)
struct win *p;
struct mchar *c;
int y, top, bot;
int ins;
{
  struct mline *ml;
  int bce;


  bce = (((c)->color & 0xf0) >> 4 | ((c)->attr & (1<<7) ? 0x100 : 0));



  MFixLine(p, y, c);
  ml = &p->w_mlines[y];
  do { (ml)->image[p->w_layer.l_width] = (&mchar_null)->image; (ml)->attr[p->w_layer.l_width] = (&mchar_null)->attr; (ml)->font[p->w_layer.l_width] = (&mchar_null)->font; (ml)->fontx[p->w_layer.l_width] = (&mchar_null)->fontx; (ml)->color[p->w_layer.l_width] = (&mchar_null)->color; } while (0);
  if (y == bot)
    MScrollV(p, 1, top, bot, bce);
  else if (y < p->w_layer.l_height - 1)
    y++;
  if (ins)
    MInsChar(p, c, 0, y);
  else
    MPutChar(p, c, 0, y);
}

static void
MPutStr(p, s, n, r, x, y)
struct win *p;
char *s;
int n;
struct mchar *r;
int x, y;
{
  struct mline *ml;
  int i;
  unsigned char *b;

  if (n <= 0)
    return;
  MFixLine(p, y, r);
  ml = &p->w_mlines[y];
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[x] == 0xff && (unsigned char)(ml)->image[x] == 0xff : ((unsigned char)(ml)->font[x] & 0xe0) == 0x80 )) { if (x > 0) do { (ml)->image[x - 1] = (&mchar_blank)->image; (ml)->attr[x - 1] = (&mchar_blank)->attr; (ml)->font[x - 1] = (&mchar_blank)->font; (ml)->fontx[x - 1] = (&mchar_blank)->fontx; (ml)->color[x - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[x] = (&mchar_blank)->image; (ml)->attr[x] = (&mchar_blank)->attr; (ml)->font[x] = (&mchar_blank)->font; (ml)->fontx[x] = (&mchar_blank)->fontx; (ml)->color[x] = (&mchar_blank)->color; } while (0); };
  if (((p->w_layer.l_encoding == 8) ? (unsigned char)(ml)->font[(x + n - 1) + 1] == 0xff && (unsigned char)(ml)->image[(x + n - 1) + 1] == 0xff : ((unsigned char)(ml)->font[x + n - 1] & 0x1f) != 0 && ((unsigned char)(ml)->font[x + n - 1] & 0xe0) == 0 )) { do { (ml)->image[x + n - 1] = (&mchar_blank)->image; (ml)->attr[x + n - 1] = (&mchar_blank)->attr; (ml)->font[x + n - 1] = (&mchar_blank)->font; (ml)->fontx[x + n - 1] = (&mchar_blank)->fontx; (ml)->color[x + n - 1] = (&mchar_blank)->color; } while (0); do { (ml)->image[x + n - 1 + 1] = (&mchar_blank)->image; (ml)->attr[x + n - 1 + 1] = (&mchar_blank)->attr; (ml)->font[x + n - 1 + 1] = (&mchar_blank)->font; (ml)->fontx[x + n - 1 + 1] = (&mchar_blank)->fontx; (ml)->color[x + n - 1 + 1] = (&mchar_blank)->color; } while (0); };
  bcopy(s, (char *)ml->image + x, n);
  if (ml->attr != null)
    {
      b = ml->attr + x;
      for (i = n; i-- > 0;)
 *b++ = r->attr;
    }

  if (ml->font != null)
    {
      b = ml->font + x;
      for (i = n; i-- > 0;)
 *b++ = r->font;
    }
  if (ml->fontx != null)
    {
      b = ml->fontx + x;
      for (i = n; i-- > 0;)
 *b++ = r->fontx;
    }


  if (ml->color != null)
    {
      b = ml->color + x;
      for (i = n; i-- > 0;)
 *b++ = r->color;
    }
# 2833 "ansi.c"
}


static void
MBceLine(p, y, xs, xe, bce)
struct win *p;
int y, xs, xe, bce;
{
  struct mchar mc;
  struct mline *ml;
  int x;

  mc = mchar_null;
  ((&mc)->color = ((&mc)->color & 0x0f) | (bce << 4 & 0xf0), (&mc)->attr = ((&mc)->attr | (1<<7)) ^ (bce & 0x100 ? 0 : (1<<7)));
  MFixLine(p, y, &mc);
  ml = p->w_mlines + y;

  if (mc.attr)
    for (x = xs; x <= xe; x++)
      ml->attr[x] = mc.attr;

  if (mc.color)
    for (x = xs; x <= xe; x++)
      ml->color[x] = mc.color;





}




static void
WAddLineToHist(wp, ml)
struct win *wp;
struct mline *ml;
{
  register unsigned char *q, *o;
  struct mline *hml;

  if (wp->w_histheight == 0)
    return;
  hml = &wp->w_hlines[wp->w_histidx];
  q = ml->image; ml->image = hml->image; hml->image = q;

  q = ml->attr; o = hml->attr; hml->attr = q; ml->attr = null;
  if (o != null)
    free(o);


  q = ml->font; o = hml->font; hml->font = q; ml->font = null;
  if (o != null)
    free(o);
  q = ml->fontx; o = hml->fontx; hml->fontx = q; ml->fontx = null;
  if (o != null)
    free(o);



  q = ml->color; o = hml->color; hml->color = q; ml->color = null;
  if (o != null)
    free(o);







  if (++wp->w_histidx >= wp->w_histheight)
    wp->w_histidx = 0;
}


int
MFindUsedLine(p, ye, ys)
struct win *p;
int ys, ye;
{
  int y;
  struct mline *ml = p->w_mlines + ye;

  do {} while (0);
  for (y = ye; y >= ys; y--, ml--)
    {
      if (bcmp((char*)ml->image, blank, p->w_layer.l_width))
 break;
      if (ml->attr != null && bcmp((char*)ml->attr, null, p->w_layer.l_width))
 break;

      if (ml->color != null && bcmp((char*)ml->color, null, p->w_layer.l_width))
 break;






      if (p->w_layer.l_encoding == 8)
 {
   if (ml->font != null && bcmp((char*)ml->font, null, p->w_layer.l_width))
     break;
   if (ml->fontx != null && bcmp((char*)ml->fontx, null, p->w_layer.l_width))
     break;
 }

    }
  do {} while (0);
  return y;
}
# 2956 "ansi.c"
void
WBell(p, visual)
struct win *p;
int visual;
{
  struct canvas *cv;
  if (displays == ((void*)0))
    p->w_bell = 2;
  for (display = displays; display; display = display->d_next)
    {
      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 if (cv->c_layer->l_bottom == &p->w_layer)
   break;
      if (cv && !visual)
 AddCStr((display->d_tcs[42].str));
      else if (cv && (display->d_tcs[43].str))
 AddCStr((display->d_tcs[43].str));
      else
        p->w_bell = visual ? 3 : 1;
    }
}
# 2985 "ansi.c"
static void
WReverseVideo(p, on)
struct win *p;
int on;
{
  struct canvas *cv;
  for (cv = p->w_layer.l_cvlist; cv; cv = cv->c_lnext)
    {
      display = cv->c_display;
      if (cv != display->d_forecv)
 continue;
      ReverseVideo(on);
      if (!on && p->w_revvid && !(display->d_tcs[93].str))
 {
   if ((display->d_tcs[43].str))
     AddCStr((display->d_tcs[43].str));
   else
     p->w_bell = 3;
 }
    }
}

void
WMsg(p, err, str)
struct win *p;
int err;
char *str;
{
  extern struct layer *flayer;
  struct layer *oldflayer = flayer;
  flayer = &p->w_layer;
  LMsg(err, "%s", str);
  flayer = oldflayer;
}

void
WChangeSize(p, w, h)
struct win *p;
int w, h;
{
  int wok = 0;
  struct canvas *cv;

  if (p->w_layer.l_cvlist == 0)
    {

      ChangeWindowSize(p, w, h, p->w_histheight);
      return;
    }
  for (cv = p->w_layer.l_cvlist; cv; cv = cv->c_lnext)
    {
      display = cv->c_display;
      if (p != display->d_fore)
 continue;
      if ((display->d_tcs[44].str))
 break;
      if ((display->d_tcs[45].str) && (w == Z0width || w == Z1width))
 wok = 1;
    }
  if (cv == 0 && wok == 0)
    return;
  if (!(display->d_tcs[44].str))
    h = p->w_layer.l_height;
  ChangeWindowSize(p, w, h, p->w_histheight);
  for (display = displays; display; display = display->d_next)
    {
      if (p == display->d_fore)
 {
   if (display->d_cvlist && display->d_cvlist->c_next == 0)
     ResizeDisplay(w, h);
   else
     ResizeDisplay(w, display->d_height);
   ResizeLayersToCanvases();
   continue;
 }
      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 if (cv->c_layer->l_bottom == &p->w_layer)
   break;
      if (cv)
 Redisplay(0);
    }
}

static int
WindowChangedCheck(s, what, hp)
char *s;
int what;
int *hp;
{
  int h = 0;
  int l;
  while(*s)
    {
      if (*s++ != (hp ? '%' : '\005'))
 continue;
      l = 0;
      s += (*s == '+');
      s += (*s == '-');
      while (*s >= '0' && *s <= '9')
 s++;
      if (*s == 'L')
 {
   s++;
   l = 0x100;
 }
      if (*s == 'h')
 h = 1;
      if (*s == what || ((*s | l) == what) || what == 'd')
 break;
      if (*s)
 s++;
    }
  if (hp)
    *hp = h;
  return *s ? 1 : 0;
}

void
WindowChanged(p, what)
struct win *p;
int what;
{
  int inwstr, inhstr, inlstr;
  int inwstrh = 0, inhstrh = 0, inlstrh = 0;
  int got, ox, oy;
  struct display *olddisplay = display;
  struct canvas *cv;

  inwstr = inhstr = 0;

  if (what == 'f')
    {
      WindowChanged((struct win *)0, 'w'|0x100);
      WindowChanged((struct win *)0, 'W'|0x100);
    }

  if (what)
    {
      inwstr = WindowChangedCheck(captionstring, what, &inwstrh);
      inhstr = WindowChangedCheck(hstatusstring, what, &inhstrh);
      inlstr = WindowChangedCheck(wliststr, what, &inlstrh);
    }
  else
    {
      inwstr = inhstr = 0;
      inlstr = 1;
    }

  if (p == 0)
    {
      for (display = displays; display; display = display->d_next)
 {
   ox = display->d_x;
   oy = display->d_y;
   for (cv = display->d_cvlist; cv; cv = cv->c_next)
     {
       if (inlstr || (inlstrh && p && p->w_hstatus && *p->w_hstatus && WindowChangedCheck(p->w_hstatus, what, (int *)0)))
  WListUpdatecv(cv, (struct win *)0);
       p = ((struct win *)(cv->c_layer)->l_bottom->l_data);
       if (inwstr || (inwstrh && p && p->w_hstatus && *p->w_hstatus && WindowChangedCheck(p->w_hstatus, what, (int *)0)))
         if (cv->c_ye + 1 < display->d_height)
    RefreshLine(cv->c_ye + 1, 0, display->d_width - 1, 0);
     }
   p = display->d_fore;
   if (inhstr || (inhstrh && p && p->w_hstatus && *p->w_hstatus && WindowChangedCheck(p->w_hstatus, what, (int *)0)))
     RefreshHStatus();
   if (ox != -1 && oy != -1)
     GotoPos(ox, oy);
 }
      display = olddisplay;
      return;
    }

  if (p->w_hstatus && *p->w_hstatus && (inwstrh || inhstrh || inlstrh) && WindowChangedCheck(p->w_hstatus, what, (int *)0))
    {
      inwstr |= inwstrh;
      inhstr |= inhstrh;
      inlstr |= inlstrh;
    }
  if (!inwstr && !inhstr && !inlstr)
    return;
  for (display = displays; display; display = display->d_next)
    {
      got = 0;
      ox = display->d_x;
      oy = display->d_y;
      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 {
   if (inlstr)
     WListUpdatecv(cv, p);
   if (((struct win *)(cv->c_layer)->l_bottom->l_data) != p)
     continue;
   got = 1;
   if (inwstr && cv->c_ye + 1 < display->d_height)
     RefreshLine(cv->c_ye + 1, 0, display->d_width - 1, 0);
 }
      if (got && inhstr && p == display->d_fore)
 RefreshHStatus();
      if (ox != -1 && oy != -1)
 GotoPos(ox, oy);
    }
  display = olddisplay;
}
