# 1 "screen.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "screen.c" 2
# 41 "screen.c"
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
# 42 "screen.c" 2
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






extern int isctype (int __c, int __mask) __attribute__ ((__nothrow__ ));






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
# 43 "screen.c" 2

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
# 45 "screen.c" 2





# 1 "/usr/include/sys/stat.h" 1 3 4
# 38 "/usr/include/sys/stat.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 39 "/usr/include/sys/stat.h" 2 3 4
# 106 "/usr/include/sys/stat.h" 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
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
# 51 "screen.c" 2

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
# 53 "screen.c" 2



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
# 57 "screen.c" 2


# 1 "./config.h" 1
# 60 "screen.c" 2
# 83 "screen.c"
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
# 84 "screen.c" 2


# 1 "/usr/include/langinfo.h" 1 3 4
# 23 "/usr/include/langinfo.h" 3 4
# 1 "/usr/include/nl_types.h" 1 3 4
# 33 "/usr/include/nl_types.h" 3 4
typedef void *nl_catd;


typedef int nl_item;





extern nl_catd catopen (const char *__cat_name, int __flag) __attribute__ ((__nonnull__ (1)));



extern char *catgets (nl_catd __catalog, int __set, int __number,
        const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int catclose (nl_catd __catalog) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 24 "/usr/include/langinfo.h" 2 3 4

# 1 "/usr/include/bits/locale.h" 1 3 4
# 26 "/usr/include/langinfo.h" 2 3 4
# 41 "/usr/include/langinfo.h" 3 4
enum
{



  ABDAY_1 = (((2) << 16) | (0)),

  ABDAY_2,

  ABDAY_3,

  ABDAY_4,

  ABDAY_5,

  ABDAY_6,

  ABDAY_7,



  DAY_1,

  DAY_2,

  DAY_3,

  DAY_4,

  DAY_5,

  DAY_6,

  DAY_7,



  ABMON_1,

  ABMON_2,

  ABMON_3,

  ABMON_4,

  ABMON_5,

  ABMON_6,

  ABMON_7,

  ABMON_8,

  ABMON_9,

  ABMON_10,

  ABMON_11,

  ABMON_12,



  MON_1,

  MON_2,

  MON_3,

  MON_4,

  MON_5,

  MON_6,

  MON_7,

  MON_8,

  MON_9,

  MON_10,

  MON_11,

  MON_12,


  AM_STR,

  PM_STR,


  D_T_FMT,

  D_FMT,

  T_FMT,

  T_FMT_AMPM,


  ERA,

  __ERA_YEAR,



  ERA_D_FMT,

  ALT_DIGITS,

  ERA_D_T_FMT,

  ERA_T_FMT,


  _NL_TIME_ERA_NUM_ENTRIES,
  _NL_TIME_ERA_ENTRIES,

  _NL_WABDAY_1,
  _NL_WABDAY_2,
  _NL_WABDAY_3,
  _NL_WABDAY_4,
  _NL_WABDAY_5,
  _NL_WABDAY_6,
  _NL_WABDAY_7,


  _NL_WDAY_1,
  _NL_WDAY_2,
  _NL_WDAY_3,
  _NL_WDAY_4,
  _NL_WDAY_5,
  _NL_WDAY_6,
  _NL_WDAY_7,


  _NL_WABMON_1,
  _NL_WABMON_2,
  _NL_WABMON_3,
  _NL_WABMON_4,
  _NL_WABMON_5,
  _NL_WABMON_6,
  _NL_WABMON_7,
  _NL_WABMON_8,
  _NL_WABMON_9,
  _NL_WABMON_10,
  _NL_WABMON_11,
  _NL_WABMON_12,


  _NL_WMON_1,
  _NL_WMON_2,
  _NL_WMON_3,
  _NL_WMON_4,
  _NL_WMON_5,
  _NL_WMON_6,
  _NL_WMON_7,
  _NL_WMON_8,
  _NL_WMON_9,
  _NL_WMON_10,
  _NL_WMON_11,
  _NL_WMON_12,

  _NL_WAM_STR,
  _NL_WPM_STR,

  _NL_WD_T_FMT,
  _NL_WD_FMT,
  _NL_WT_FMT,
  _NL_WT_FMT_AMPM,

  _NL_WERA_YEAR,
  _NL_WERA_D_FMT,
  _NL_WALT_DIGITS,
  _NL_WERA_D_T_FMT,
  _NL_WERA_T_FMT,

  _NL_TIME_WEEK_NDAYS,
  _NL_TIME_WEEK_1STDAY,
  _NL_TIME_WEEK_1STWEEK,
  _NL_TIME_FIRST_WEEKDAY,
  _NL_TIME_FIRST_WORKDAY,
  _NL_TIME_CAL_DIRECTION,
  _NL_TIME_TIMEZONE,

  _DATE_FMT,

  _NL_W_DATE_FMT,

  _NL_TIME_CODESET,

  _NL_NUM_LC_TIME,




  _NL_COLLATE_NRULES = (((3) << 16) | (0)),
  _NL_COLLATE_RULESETS,
  _NL_COLLATE_TABLEMB,
  _NL_COLLATE_WEIGHTMB,
  _NL_COLLATE_EXTRAMB,
  _NL_COLLATE_INDIRECTMB,
  _NL_COLLATE_GAP1,
  _NL_COLLATE_GAP2,
  _NL_COLLATE_GAP3,
  _NL_COLLATE_TABLEWC,
  _NL_COLLATE_WEIGHTWC,
  _NL_COLLATE_EXTRAWC,
  _NL_COLLATE_INDIRECTWC,
  _NL_COLLATE_SYMB_HASH_SIZEMB,
  _NL_COLLATE_SYMB_TABLEMB,
  _NL_COLLATE_SYMB_EXTRAMB,
  _NL_COLLATE_COLLSEQMB,
  _NL_COLLATE_COLLSEQWC,
  _NL_COLLATE_CODESET,
  _NL_NUM_LC_COLLATE,




  _NL_CTYPE_CLASS = (((0) << 16) | (0)),
  _NL_CTYPE_TOUPPER,
  _NL_CTYPE_GAP1,
  _NL_CTYPE_TOLOWER,
  _NL_CTYPE_GAP2,
  _NL_CTYPE_CLASS32,
  _NL_CTYPE_GAP3,
  _NL_CTYPE_GAP4,
  _NL_CTYPE_GAP5,
  _NL_CTYPE_GAP6,
  _NL_CTYPE_CLASS_NAMES,
  _NL_CTYPE_MAP_NAMES,
  _NL_CTYPE_WIDTH,
  _NL_CTYPE_MB_CUR_MAX,
  _NL_CTYPE_CODESET_NAME,
  CODESET = _NL_CTYPE_CODESET_NAME,

  _NL_CTYPE_TOUPPER32,
  _NL_CTYPE_TOLOWER32,
  _NL_CTYPE_CLASS_OFFSET,
  _NL_CTYPE_MAP_OFFSET,
  _NL_CTYPE_INDIGITS_MB_LEN,
  _NL_CTYPE_INDIGITS0_MB,
  _NL_CTYPE_INDIGITS1_MB,
  _NL_CTYPE_INDIGITS2_MB,
  _NL_CTYPE_INDIGITS3_MB,
  _NL_CTYPE_INDIGITS4_MB,
  _NL_CTYPE_INDIGITS5_MB,
  _NL_CTYPE_INDIGITS6_MB,
  _NL_CTYPE_INDIGITS7_MB,
  _NL_CTYPE_INDIGITS8_MB,
  _NL_CTYPE_INDIGITS9_MB,
  _NL_CTYPE_INDIGITS_WC_LEN,
  _NL_CTYPE_INDIGITS0_WC,
  _NL_CTYPE_INDIGITS1_WC,
  _NL_CTYPE_INDIGITS2_WC,
  _NL_CTYPE_INDIGITS3_WC,
  _NL_CTYPE_INDIGITS4_WC,
  _NL_CTYPE_INDIGITS5_WC,
  _NL_CTYPE_INDIGITS6_WC,
  _NL_CTYPE_INDIGITS7_WC,
  _NL_CTYPE_INDIGITS8_WC,
  _NL_CTYPE_INDIGITS9_WC,
  _NL_CTYPE_OUTDIGIT0_MB,
  _NL_CTYPE_OUTDIGIT1_MB,
  _NL_CTYPE_OUTDIGIT2_MB,
  _NL_CTYPE_OUTDIGIT3_MB,
  _NL_CTYPE_OUTDIGIT4_MB,
  _NL_CTYPE_OUTDIGIT5_MB,
  _NL_CTYPE_OUTDIGIT6_MB,
  _NL_CTYPE_OUTDIGIT7_MB,
  _NL_CTYPE_OUTDIGIT8_MB,
  _NL_CTYPE_OUTDIGIT9_MB,
  _NL_CTYPE_OUTDIGIT0_WC,
  _NL_CTYPE_OUTDIGIT1_WC,
  _NL_CTYPE_OUTDIGIT2_WC,
  _NL_CTYPE_OUTDIGIT3_WC,
  _NL_CTYPE_OUTDIGIT4_WC,
  _NL_CTYPE_OUTDIGIT5_WC,
  _NL_CTYPE_OUTDIGIT6_WC,
  _NL_CTYPE_OUTDIGIT7_WC,
  _NL_CTYPE_OUTDIGIT8_WC,
  _NL_CTYPE_OUTDIGIT9_WC,
  _NL_CTYPE_TRANSLIT_TAB_SIZE,
  _NL_CTYPE_TRANSLIT_FROM_IDX,
  _NL_CTYPE_TRANSLIT_FROM_TBL,
  _NL_CTYPE_TRANSLIT_TO_IDX,
  _NL_CTYPE_TRANSLIT_TO_TBL,
  _NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN,
  _NL_CTYPE_TRANSLIT_DEFAULT_MISSING,
  _NL_CTYPE_TRANSLIT_IGNORE_LEN,
  _NL_CTYPE_TRANSLIT_IGNORE,
  _NL_CTYPE_MAP_TO_NONASCII,
  _NL_CTYPE_NONASCII_CASE,
  _NL_CTYPE_EXTRA_MAP_1,
  _NL_CTYPE_EXTRA_MAP_2,
  _NL_CTYPE_EXTRA_MAP_3,
  _NL_CTYPE_EXTRA_MAP_4,
  _NL_CTYPE_EXTRA_MAP_5,
  _NL_CTYPE_EXTRA_MAP_6,
  _NL_CTYPE_EXTRA_MAP_7,
  _NL_CTYPE_EXTRA_MAP_8,
  _NL_CTYPE_EXTRA_MAP_9,
  _NL_CTYPE_EXTRA_MAP_10,
  _NL_CTYPE_EXTRA_MAP_11,
  _NL_CTYPE_EXTRA_MAP_12,
  _NL_CTYPE_EXTRA_MAP_13,
  _NL_CTYPE_EXTRA_MAP_14,
  _NL_NUM_LC_CTYPE,




  __INT_CURR_SYMBOL = (((4) << 16) | (0)),



  __CURRENCY_SYMBOL,



  __MON_DECIMAL_POINT,



  __MON_THOUSANDS_SEP,



  __MON_GROUPING,



  __POSITIVE_SIGN,



  __NEGATIVE_SIGN,



  __INT_FRAC_DIGITS,



  __FRAC_DIGITS,



  __P_CS_PRECEDES,



  __P_SEP_BY_SPACE,



  __N_CS_PRECEDES,



  __N_SEP_BY_SPACE,



  __P_SIGN_POSN,



  __N_SIGN_POSN,



  _NL_MONETARY_CRNCYSTR,

  __INT_P_CS_PRECEDES,



  __INT_P_SEP_BY_SPACE,



  __INT_N_CS_PRECEDES,



  __INT_N_SEP_BY_SPACE,



  __INT_P_SIGN_POSN,



  __INT_N_SIGN_POSN,



  _NL_MONETARY_DUO_INT_CURR_SYMBOL,
  _NL_MONETARY_DUO_CURRENCY_SYMBOL,
  _NL_MONETARY_DUO_INT_FRAC_DIGITS,
  _NL_MONETARY_DUO_FRAC_DIGITS,
  _NL_MONETARY_DUO_P_CS_PRECEDES,
  _NL_MONETARY_DUO_P_SEP_BY_SPACE,
  _NL_MONETARY_DUO_N_CS_PRECEDES,
  _NL_MONETARY_DUO_N_SEP_BY_SPACE,
  _NL_MONETARY_DUO_INT_P_CS_PRECEDES,
  _NL_MONETARY_DUO_INT_P_SEP_BY_SPACE,
  _NL_MONETARY_DUO_INT_N_CS_PRECEDES,
  _NL_MONETARY_DUO_INT_N_SEP_BY_SPACE,
  _NL_MONETARY_DUO_P_SIGN_POSN,
  _NL_MONETARY_DUO_N_SIGN_POSN,
  _NL_MONETARY_DUO_INT_P_SIGN_POSN,
  _NL_MONETARY_DUO_INT_N_SIGN_POSN,
  _NL_MONETARY_UNO_VALID_FROM,
  _NL_MONETARY_UNO_VALID_TO,
  _NL_MONETARY_DUO_VALID_FROM,
  _NL_MONETARY_DUO_VALID_TO,
  _NL_MONETARY_CONVERSION_RATE,
  _NL_MONETARY_DECIMAL_POINT_WC,
  _NL_MONETARY_THOUSANDS_SEP_WC,
  _NL_MONETARY_CODESET,
  _NL_NUM_LC_MONETARY,



  __DECIMAL_POINT = (((1) << 16) | (0)),



  RADIXCHAR = __DECIMAL_POINT,

  __THOUSANDS_SEP,



  THOUSEP = __THOUSANDS_SEP,

  __GROUPING,



  _NL_NUMERIC_DECIMAL_POINT_WC,
  _NL_NUMERIC_THOUSANDS_SEP_WC,
  _NL_NUMERIC_CODESET,
  _NL_NUM_LC_NUMERIC,

  __YESEXPR = (((5) << 16) | (0)),

  __NOEXPR,

  __YESSTR,



  __NOSTR,



  _NL_MESSAGES_CODESET,
  _NL_NUM_LC_MESSAGES,

  _NL_PAPER_HEIGHT = (((7) << 16) | (0)),
  _NL_PAPER_WIDTH,
  _NL_PAPER_CODESET,
  _NL_NUM_LC_PAPER,

  _NL_NAME_NAME_FMT = (((8) << 16) | (0)),
  _NL_NAME_NAME_GEN,
  _NL_NAME_NAME_MR,
  _NL_NAME_NAME_MRS,
  _NL_NAME_NAME_MISS,
  _NL_NAME_NAME_MS,
  _NL_NAME_CODESET,
  _NL_NUM_LC_NAME,

  _NL_ADDRESS_POSTAL_FMT = (((9) << 16) | (0)),
  _NL_ADDRESS_COUNTRY_NAME,
  _NL_ADDRESS_COUNTRY_POST,
  _NL_ADDRESS_COUNTRY_AB2,
  _NL_ADDRESS_COUNTRY_AB3,
  _NL_ADDRESS_COUNTRY_CAR,
  _NL_ADDRESS_COUNTRY_NUM,
  _NL_ADDRESS_COUNTRY_ISBN,
  _NL_ADDRESS_LANG_NAME,
  _NL_ADDRESS_LANG_AB,
  _NL_ADDRESS_LANG_TERM,
  _NL_ADDRESS_LANG_LIB,
  _NL_ADDRESS_CODESET,
  _NL_NUM_LC_ADDRESS,

  _NL_TELEPHONE_TEL_INT_FMT = (((10) << 16) | (0)),
  _NL_TELEPHONE_TEL_DOM_FMT,
  _NL_TELEPHONE_INT_SELECT,
  _NL_TELEPHONE_INT_PREFIX,
  _NL_TELEPHONE_CODESET,
  _NL_NUM_LC_TELEPHONE,

  _NL_MEASUREMENT_MEASUREMENT = (((11) << 16) | (0)),
  _NL_MEASUREMENT_CODESET,
  _NL_NUM_LC_MEASUREMENT,

  _NL_IDENTIFICATION_TITLE = (((12) << 16) | (0)),
  _NL_IDENTIFICATION_SOURCE,
  _NL_IDENTIFICATION_ADDRESS,
  _NL_IDENTIFICATION_CONTACT,
  _NL_IDENTIFICATION_EMAIL,
  _NL_IDENTIFICATION_TEL,
  _NL_IDENTIFICATION_FAX,
  _NL_IDENTIFICATION_LANGUAGE,
  _NL_IDENTIFICATION_TERRITORY,
  _NL_IDENTIFICATION_AUDIENCE,
  _NL_IDENTIFICATION_APPLICATION,
  _NL_IDENTIFICATION_ABBREVIATION,
  _NL_IDENTIFICATION_REVISION,
  _NL_IDENTIFICATION_DATE,
  _NL_IDENTIFICATION_CATEGORY,
  _NL_IDENTIFICATION_CODESET,
  _NL_NUM_LC_IDENTIFICATION,


  _NL_NUM
};
# 583 "/usr/include/langinfo.h" 3 4
extern char *nl_langinfo (nl_item __item) __attribute__ ((__nothrow__ ));
# 594 "/usr/include/langinfo.h" 3 4
extern char *nl_langinfo_l (nl_item __item, __locale_t __l);
# 87 "screen.c" 2


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
# 90 "screen.c" 2




# 1 "./patchlevel.h" 1
# 95 "screen.c" 2
# 105 "screen.c"
# 1 "/usr/include/pwd.h" 1 3 4
# 33 "/usr/include/pwd.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 34 "/usr/include/pwd.h" 2 3 4
# 50 "/usr/include/pwd.h" 3 4
struct passwd
{
  char *pw_name;
  char *pw_passwd;
  __uid_t pw_uid;
  __gid_t pw_gid;
  char *pw_gecos;
  char *pw_dir;
  char *pw_shell;
};
# 73 "/usr/include/pwd.h" 3 4
extern void setpwent (void);





extern void endpwent (void);





extern struct passwd *getpwent (void);
# 95 "/usr/include/pwd.h" 3 4
extern struct passwd *fgetpwent (FILE *__stream);







extern int putpwent (const struct passwd *__restrict __p,
       FILE *__restrict __f);






extern struct passwd *getpwuid (__uid_t __uid);





extern struct passwd *getpwnam (const char *__name);
# 140 "/usr/include/pwd.h" 3 4
extern int getpwent_r (struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);


extern int getpwuid_r (__uid_t __uid,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);

extern int getpwnam_r (const char *__restrict __name,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);
# 164 "/usr/include/pwd.h" 3 4
extern int fgetpwent_r (FILE *__restrict __stream,
   struct passwd *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct passwd **__restrict __result);
# 181 "/usr/include/pwd.h" 3 4
extern int getpw (__uid_t __uid, char *__buffer);
# 106 "screen.c" 2

# 1 "/usr/include/shadow.h" 1 3 4
# 30 "/usr/include/shadow.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 31 "/usr/include/shadow.h" 2 3 4








struct spwd
  {
    char *sp_namp;
    char *sp_pwdp;
    long int sp_lstchg;
    long int sp_min;
    long int sp_max;
    long int sp_warn;

    long int sp_inact;

    long int sp_expire;

    unsigned long int sp_flag;
  };
# 62 "/usr/include/shadow.h" 3 4
extern void setspent (void);







extern void endspent (void);







extern struct spwd *getspent (void);







extern struct spwd *getspnam (const char *__name);







extern struct spwd *sgetspent (const char *__string);







extern struct spwd *fgetspent (FILE *__stream);







extern int putspent (const struct spwd *__p, FILE *__stream);
# 120 "/usr/include/shadow.h" 3 4
extern int getspent_r (struct spwd *__result_buf, char *__buffer,
         size_t __buflen, struct spwd **__result);

extern int getspnam_r (const char *__name, struct spwd *__result_buf,
         char *__buffer, size_t __buflen,
         struct spwd **__result);

extern int sgetspent_r (const char *__string, struct spwd *__result_buf,
   char *__buffer, size_t __buflen,
   struct spwd **__result);

extern int fgetspent_r (FILE *__stream, struct spwd *__result_buf,
   char *__buffer, size_t __buflen,
   struct spwd **__result);







extern int lckpwdf (void) __attribute__ ((__nothrow__ ));


extern int ulckpwdf (void) __attribute__ ((__nothrow__ ));
# 108 "screen.c" 2


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
# 111 "screen.c" 2






extern char Term[], screenterm[], **environ, Termcap[];
int force_vt = 1;
int VBellWait, MsgWait, MsgMinWait, SilenceWait;

extern struct acluser *users;
extern struct display *displays, *display;

extern struct LayFuncs MarkLf;


extern int visual_bell;

extern unsigned char mark_key_tab[];

extern char version[];
extern char DefaultShell[];

extern char *zmodem_sendcmd;
extern char *zmodem_recvcmd;

extern struct layout *layout_last;


char *ShellProg;
char *ShellArgs[2];

extern struct NewWindow nwin_undef, nwin_default, nwin_options;
struct backtick;

static struct passwd *getpwbyname (char *, struct passwd *);
static void SigChldHandler (void);
static void SigChld (int);
static void SigInt (int);
static void CoreDump (int);
static void FinitHandler (int);
static void DoWait (void);
static void serv_read_fn (struct event *, char *);
static void serv_select_fn (struct event *, char *);
static void logflush_fn (struct event *, char *);
static void backtick_filter (struct backtick *);
static void backtick_fn (struct event *, char *);
static char *runbacktick (struct backtick *, int *, time_t);
static int IsSymbol (char *, char *);
static char *ParseChar (char *, char *);
static int ParseEscape (char *);
static char *pad_expand (char *, char *, int, int);




int nversion;


struct passwd *ppp;
char *attach_tty;
int attach_fd = -1;
char *attach_term;
char *LoginName;
struct mode attach_Mode;

char SockPath[4096 + 2 * 768];
char *SockName;
char *SockMatch = ((void*)0);
int ServerSocket = -1;
struct event serv_read;
struct event serv_select;
struct event logflushev;

char **NewEnv = ((void*)0);

char *RcFileName = ((void*)0);
char *home;

char *screenlogfile;
int log_flush = 10;
int logtstamp_on = 0;
char *logtstamp_string;
int logtstamp_after = 120;
char *hardcopydir = ((void*)0);
char *BellString;
char *VisualBellString;
char *ActivityString;

char *BufferFile;


char *PowDetachString;

char *hstatusstring;
char *captionstring;
char *timestring;
char *wliststr;
char *wlisttit;
int auto_detach = 1;
int iflag, rflag, dflag, lsflag, quietflag, wipeflag, xflag;
int cmdflag;
int queryflag = -1;
int adaptflag;


char *multi;
char *multi_home;
int multi_uid;
int own_uid;
int multiattach;
int tty_mode;
int tty_oldmode = -1;


char HostName[768];
int MasterPid, PanicPid;
int real_uid, real_gid, eff_uid, eff_gid;
int default_startup;
int ZombieKey_destroy, ZombieKey_resurrect, ZombieKey_onerror;
char *preselect = ((void*)0);


char *screenencodings;



int cjkwidth;



int nethackflag = 0;

int maxwin;

struct layer *flayer;
struct win *fore;
struct win *windows;
struct win *console_window;
# 258 "screen.c"
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
# 259 "screen.c" 2

char strnomem[] = "Out of memory.";


static int InterruptPlease;
static int GotSigChld;

static int
lf_secreopen(name, wantfd, l)
char *name;
int wantfd;
struct logfile *l;
{
  int got_fd;

  close(wantfd);
  if (((got_fd = secopen(name, 01 | 0100 | 02000, 0666)) < 0) ||
      lf_move_fd(got_fd, wantfd) < 0)
    {
      logfclose(l);
      do {} while (0);
      return -1;
    }
  l->st->st_ino = l->st->st_dev = 0;
  do {} while (0);
  return 0;
}






static struct passwd *
getpwbyname(name, ppp)
char *name;
struct passwd *ppp;
{
  int n;

  struct spwd *sss = ((void*)0);
  static char *spw = ((void*)0);


  if (!ppp && !(ppp = getpwnam(name)))
    return ((void*)0);



pw_try_again:

  n = 0;
  if (ppp->pw_passwd[0] == '#' && ppp->pw_passwd[1] == '#' &&
      strcmp(ppp->pw_passwd + 2, ppp->pw_name) == 0)
    n = 13;
  for (; n < 13; n++)
    {
      char c = ppp->pw_passwd[n];
      if (!(c == '.' || c == '/' || c == '$' ||
     (c >= '0' && c <= '9') ||
     (c >= 'a' && c <= 'z') ||
     (c >= 'A' && c <= 'Z')))
 break;
    }



  if (n < 13 && sss == 0)
    {
      sss = getspnam(ppp->pw_name);
      if (sss)
 {
   if (spw)
     free(spw);
   ppp->pw_passwd = spw = SaveStr(sss->sp_pwdp);
   endspent();
   goto pw_try_again;
 }
      endspent();
    }

  if (n < 13)
    ppp->pw_passwd = 0;

  if (ppp->pw_passwd && strlen(ppp->pw_passwd) == 13 + 11)
    ppp->pw_passwd[13] = 0;


  return ppp;
}

static char *
locale_name(void)
{
  static char *s;

  if (!s)
    {
      s = getenv("LC_ALL");
      if (s == ((void*)0))
        s = getenv("LC_CTYPE");
      if (s == ((void*)0))
        s = getenv("LANG");
    }
  return s;
}

int
main(ac, av)
int ac;
char **av;
{
  register int n;
  char *ap;
  char *av0;
  char socknamebuf[2 * 768];
  int mflag = 0;
  char *myname = (ac == 0) ? "screen" : av[0];
  char *SockDir;
  struct stat st;



  int oumask;




  struct NewWindow nwin;
  int detached = 0;

  char *sockp;

  char *sty = 0;
# 410 "screen.c"
  closeallfiles(0);



  snprintf(version, 59, "%d.%.2d.%.2d%s (%s%s) %s", 4, 4,
   0, "", "GNU", "", "19-Jun-16");
  nversion = 4 * 10000 + 4 * 100 + 0;
  do {} while (0);

  do {} while (0);


  do {} while (0);
# 434 "screen.c"
  do {} while (0);


  do {} while (0);
# 446 "screen.c"
  do {} while (0);


  do {} while (0);


  do {} while (0);


  do {} while (0);


  do {} while (0);


  do {} while (0);


  do {} while (0);


  BellString = SaveStr("Bell in window %n");
  VisualBellString = SaveStr("   Wuff,  Wuff!!  ");
  ActivityString = SaveStr("Activity in window %n");
  screenlogfile = SaveStr("screenlog.%n");
  logtstamp_string = SaveStr("-- %n:%t -- time-stamp -- %M/%d/%y %c:%s --\n");
  hstatusstring = SaveStr("%h");
  captionstring = SaveStr("%4n %t");
  timestring = SaveStr("%c:%s %M %d %H%? %l%?");
  wlisttit = SaveStr(" Num Name%=Flags");
  wliststr = SaveStr("%4n %t%=%f");

  BufferFile = SaveStr("/tmp/screen-exchange");

  ShellProg = ((void*)0);

  PowDetachString = 0;

  default_startup = (ac > 1) ? 0 : 1;
  adaptflag = 0;
  VBellWait = 1 * 1000;
  MsgWait = 5 * 1000;
  MsgMinWait = 1 * 1000;
  SilenceWait = 30;




  zmodem_sendcmd = SaveStr("!!! sz -vv -b ");
  zmodem_recvcmd = SaveStr("!!! rz -vv -b -E");



  CompileKeys((char *)0, 0, mark_key_tab);


  InitBuiltinTabs();
  screenencodings = SaveStr("/usr/share/screen/utf8encodings");


  cjkwidth = 0;

  nwin = nwin_undef;
  nwin_options = nwin_undef;
  strncpy(screenterm, "screen", 32);
  screenterm[32] = '\0';




  logreopen_register(lf_secreopen);

  av0 = *av;

  if (*av0 == '-')
    {
      rflag = 4;

      xflag = 1;



      ShellProg = SaveStr(DefaultShell);
    }
  while (ac > 0)
    {
      ap = *++av;
      if (--ac > 0 && *ap == '-')
 {
   if (ap[1] == '-' && ap[2] == 0)
     {
       av++;
       ac--;
       break;
     }
   if (ap[1] == '-' && !strcmp(ap, "--version"))
     Panic(0, "Screen version %s", version);
   if (ap[1] == '-' && !strcmp(ap, "--help"))
     exit_with_usage(myname, ((void*)0), ((void*)0));
   while (ap && *ap && *++ap)
     {
       switch (*ap)
  {
# 557 "screen.c"
  case 'a':
    nwin_options.aflag = 1;
    break;
  case 'A':
    adaptflag = 1;
    break;
  case 'p':
    if (*++ap)
      preselect = ap;
    else
      {
        if (!--ac)
   exit_with_usage(myname, "Specify a window to preselect with -p", ((void*)0));
        preselect = *++av;
      }
    ap = ((void*)0);
    break;





  case 'c':
    if (*++ap)
      RcFileName = ap;
    else
      {
        if (--ac == 0)
   exit_with_usage(myname, "Specify an alternate rc-filename with -c", ((void*)0));
        RcFileName = *++av;
      }
    ap = ((void*)0);
    break;
  case 'e':
    if (!*++ap)
      {
        if (--ac == 0)
   exit_with_usage(myname, "Specify command characters with -e", ((void*)0));
        ap = *++av;
      }
    if (ParseEscape(ap))
      Panic(0, "Two characters are required with -e option, not '%s'.", ap);
    ap = ((void*)0);
    break;
  case 'f':
    ap++;
    switch (*ap++)
      {
      case 'n':
      case '0':
        nwin_options.flowflag = (1<<0) * 0;
        break;
      case '\0':
        ap--;

      case 'y':
      case '1':
        nwin_options.flowflag = (1<<0) * 1;
        break;
      case 'a':
        nwin_options.flowflag = (1<<2);
        break;
      default:
        exit_with_usage(myname, "Unknown flow option -%s", --ap);
      }
    break;
  case 'h':
    if (--ac == 0)
      exit_with_usage(myname, ((void*)0), ((void*)0));
    nwin_options.histheight = atoi(*++av);
    if (nwin_options.histheight < 0)
      exit_with_usage(myname, "-h: %s: negative scrollback size?", *av);
    break;
  case 'i':
    iflag = 1;
    break;
  case 't':
    if (--ac == 0)
      exit_with_usage(myname, "Specify a new window-name with -t", ((void*)0));
    nwin_options.aka = *++av;
    break;
  case 'l':
    ap++;
    switch (*ap++)
      {
      case 'n':
      case '0':
        nwin_options.lflag = 0;
        break;
      case '\0':
        ap--;

      case 'y':
      case '1':
        nwin_options.lflag = 1;
        break;
      case 'a':
        nwin_options.lflag = 3;
        break;
      case 's':
      case 'i':
        lsflag = 1;
        if (ac > 1 && !SockMatch)
   {
     SockMatch = *++av;
     ac--;
   }
        ap = ((void*)0);
        break;
      default:
        exit_with_usage(myname, "%s: Unknown suboption to -l", --ap);
      }
    break;
  case 'w':
    if (strcmp(ap+1, "ipe"))
      exit_with_usage(myname, "Unknown option %s", --ap);
    lsflag = 1;
    wipeflag = 1;
    if (ac > 1 && !SockMatch)
      {
        SockMatch = *++av;
        ac--;
      }
    break;
  case 'L':
    nwin_options.Lflag = 1;
    break;
  case 'm':
    mflag = 1;
    break;
  case 'O':
    force_vt = 0;
    break;
  case 'T':
    if (--ac == 0)
      exit_with_usage(myname, "Specify terminal-type with -T", ((void*)0));
    if (strlen(*++av) < 32) {
      strncpy(screenterm, *av, 32);
      screenterm[32] = '\0';
    } else
      Panic(0, "-T: terminal name too long. (max. 20 char)");
    nwin_options.term = screenterm;
    break;
  case 'q':
    quietflag = 1;
    break;
  case 'Q':
    queryflag = 1;
    cmdflag = 1;
    break;
  case 'r':
  case 'R':

  case 'x':

    if (ac > 1 && *av[1] != '-' && !SockMatch)
      {
        SockMatch = *++av;
        ac--;
        do {} while (0);
      }

    if (*ap == 'x')
      xflag = 1;

    if (rflag)
      rflag = 2;
    rflag += (*ap == 'R') ? 2 : 1;
    break;

  case 'd':
    dflag = 1;

  case 'D':
    if (!dflag)
      dflag = 2;
    if (ac == 2)
      {
        if (*av[1] != '-' && !SockMatch)
   {
     SockMatch = *++av;
     ac--;
     do {} while (0);
   }
      }
    break;

  case 's':
    if (--ac == 0)
      exit_with_usage(myname, "Specify shell with -s", ((void*)0));
    if (ShellProg)
      free(ShellProg);
    ShellProg = SaveStr(*++av);
    do {} while (0);
    break;
  case 'S':
    if (!SockMatch)
      {
        if (--ac == 0)
   exit_with_usage(myname, "Specify session-name with -S", ((void*)0));
        SockMatch = *++av;
      }
    if (!*SockMatch)
      exit_with_usage(myname, "Empty session-name?", ((void*)0));
    break;
  case 'X':
    cmdflag = 1;
    break;
  case 'v':
    Panic(0, "Screen version %s", version);


  case 'U':
    nwin_options.encoding = nwin_options.encoding == -1 ? 8 : 0;
    break;

  default:
    exit_with_usage(myname, "Unknown option %s", --ap);
  }
     }
 }
      else
 break;
    }

  real_uid = getuid();
  real_gid = getgid();
  eff_uid = geteuid();
  eff_gid = getegid();


  xsignal(7, CoreDump);

  xsignal(11, CoreDump);



  setlocale(6, "");


  if (nwin_options.encoding == -1)
    {





      nwin_options.encoding = FindEncoding(nl_langinfo(CODESET));
      do {} while (0);
# 814 "screen.c"
    }

  {
    char *s;
    if ((s = locale_name()))
    {
      if(!strncmp(s, "zh_", 3) || !strncmp(s, "ja_", 3) || !strncmp(s, "ko_", 3))
      {
        cjkwidth = 1;
      }
    }
  }


  if (nwin_options.aka)
    {

      if (nwin_options.encoding > 0)
        {
          size_t len = strlen(nwin_options.aka);
          size_t newsz;
          char *newbuf = malloc(3 * len);
          if (!newbuf)
            Panic(0, "%s", strnomem);
          newsz = RecodeBuf((unsigned char *)nwin_options.aka, len,
                            nwin_options.encoding, 0, (unsigned char *)newbuf);
          newbuf[newsz] = '\0';
          nwin_options.aka = newbuf;
        }
      else

        {



          nwin_options.aka = SaveStr(nwin_options.aka);
        }
    }

  if (SockMatch && strlen(SockMatch) >= 768)
    Panic(0, "Ridiculously long socketname - try again.");
  if (cmdflag && !rflag && !dflag && !xflag)
    xflag = 1;
  if (!cmdflag && dflag && mflag && !(rflag || xflag))
    detached = 1;
  nwin = nwin_options;

  nwin.encoding = nwin_undef.encoding;

  if (ac)
    nwin.args = av;
# 877 "screen.c"
  xsignal(25, ((__sighandler_t) 1));



  xsignal(13, ((__sighandler_t) 1));


  if (!ShellProg)
    {
      register char *sh;

      sh = getenv("SHELL");
      ShellProg = SaveStr(sh ? sh : DefaultShell);
    }
  ShellArgs[0] = ShellProg;
  home = getenv("HOME");
  if (!mflag && !SockMatch)
    {
      sty = getenv("STY");
      if (sty && *sty == 0)
 sty = 0;
    }


  if (!(nethackflag = (getenv("NETHACKOPTIONS") != ((void*)0))))
    {
      char nethackrc[4096];

      if (home && (strlen(home) < (4096 - 20)))
        {
   sprintf(nethackrc,"%s/.nethackrc", home);
   nethackflag = !access(nethackrc, 0);
 }
    }



  own_uid = multi_uid = real_uid;
  if (SockMatch && (sockp = index(SockMatch, '/')))
    {
      *sockp = 0;
      multi = SockMatch;
      SockMatch = sockp + 1;
      if (*multi)
 {
   struct passwd *mppp;
   if ((mppp = getpwnam(multi)) == (struct passwd *)0)
     Panic(0, "Cannot identify account '%s'.", multi);
   multi_uid = mppp->pw_uid;
   multi_home = SaveStr(mppp->pw_dir);
          if (strlen(multi_home) > 4096 - 10)
     Panic(0, "home directory path too long");


   if (rflag || lsflag)
     xflag = 1;

   detached = 0;
   multiattach = 1;
 }

      if (eff_uid && (multi_uid != eff_uid))
        Panic(0, "Must run suid root for multiuser support.");
    }
  if (SockMatch && *SockMatch == 0)
    SockMatch = 0;


  if ((LoginName = getlogin()) && LoginName[0] != '\0')
    {
      if ((ppp = getpwnam(LoginName)) != (struct passwd *) 0)
 if ((int)ppp->pw_uid != real_uid)
   ppp = (struct passwd *) 0;
    }
  if (ppp == 0)
    {
      if ((ppp = getpwuid(real_uid)) == 0)
        {
   Panic(0, "getpwuid() can't identify your account!");
   exit(1);
        }
      LoginName = ppp->pw_name;
    }
  LoginName = SaveStr(LoginName);

  ppp = getpwbyname(LoginName, ppp);
# 1000 "screen.c"
  if (home == 0 || *home == '\0')
    home = ppp->pw_dir;
  if (strlen(LoginName) > 256)
    Panic(0, "LoginName too long - sorry.");

  if (multi && strlen(multi) > 256)
    Panic(0, "Screen owner name too long - sorry.");

  if (strlen(home) > 4096 - 25)
    Panic(0, "$HOME too long - sorry.");

  attach_tty = "";
  if (!detached && !lsflag && !cmdflag && !(dflag && !mflag && !rflag && !xflag) && !(sty && !SockMatch && !mflag && !rflag && !xflag))
    {

      int fl;



      do { if (!(attach_tty = ttyname(0))) { if (1) Panic(0, "Must be connected to a terminal."); else attach_tty = ""; } else { if (stat(attach_tty, &st)) Panic((*__errno_location ()), "Cannot access '%s'", attach_tty); if (CheckTtyname(attach_tty)) Panic(0, "Bad tty '%s'", attach_tty); } if (strlen(attach_tty) >= 4096) Panic(0, "TtyName too long - sorry."); } while (0);

      tty_mode = (int)st.st_mode & 0777;



      fl = fcntl(0, 3, 0);
      if (fl != -1 && (fl & (02|00|01)) == 02)
 attach_fd = 0;

      if (attach_fd == -1)
 {
   if ((n = secopen(attach_tty, 02 | 04000, 0)) < 0)
     Panic(0, "Cannot open your terminal '%s' - please check.", attach_tty);
   close(n);
 }
      do {} while (0);

      if ((attach_term = getenv("TERM")) == 0 || *attach_term == 0)
 Panic(0, "Please set a terminal type.");
      if (strlen(attach_term) > 32)
 Panic(0, "$TERM too long - sorry.");
      GetTTY(0, &attach_Mode);



    }




  if ((oumask = (int)umask(0)) == -1)
    Panic((*__errno_location ()), "Cannot change umask to zero");

  SockDir = getenv("SCREENDIR");
  if (SockDir)
    {
      if (strlen(SockDir) >= 4096 - 1)
 Panic(0, "Ridiculously long $SCREENDIR - try again.");

      if (multi)
 Panic(0, "No $SCREENDIR with multi screens, please.");

    }

  if (multiattach)
    {




      SockDir = (eff_uid ? "/tmp/uscreens" : "/tmp/screens");
      sprintf(SockPath, "%s/S-%s", SockDir, multi);

    }
  else

    {







      if (SockDir)
 {
   if (access(SockDir, 0))
     {
       do {} while (0);
       if (UserContext() > 0)
  {
    if (mkdir(SockDir, 0700))
      UserReturn(0);
    UserReturn(1);
  }
       if (UserStatus() <= 0)
  Panic(0, "Cannot make directory '%s'.", SockDir);
     }
   if (SockDir != SockPath)
     strcpy(SockPath, SockDir);
 }

      else
 {
   SockDir = (eff_uid ? "/tmp/uscreens" : "/tmp/screens");
   if (stat(SockDir, &st))
     {
       n = (eff_uid == 0 && (real_uid || eff_gid == real_gid)) ? 0755 :
           (eff_gid != real_gid) ? 0775 :

    0777|01000;



       if (mkdir(SockDir, n) == -1)
  Panic((*__errno_location ()), "Cannot make directory '%s'", SockDir);
     }
   else
     {
       if (!((((st.st_mode)) & 0170000) == (0040000)))
  Panic(0, "'%s' must be a directory.", SockDir);
              if (eff_uid == 0 && real_uid && (int)st.st_uid != eff_uid)
  Panic(0, "Directory '%s' must be owned by root.", SockDir);
       n = (eff_uid == 0 && (real_uid || (st.st_mode & 0775) != 0775)) ? 0755 :
           (eff_gid == (int)st.st_gid && eff_gid != real_gid) ? 0775 :
    0777;
       if (((int)st.st_mode & 0777) != n)
  Panic(0, "Directory '%s' must have mode %03o.", SockDir, n);
     }
   sprintf(SockPath, "%s/S-%s", SockDir, LoginName);
   if (access(SockPath, 0))
     {
       if (mkdir(SockPath, 0700) == -1 && (*__errno_location ()) != 17)
  Panic((*__errno_location ()), "Cannot make directory '%s'", SockPath);
       (void) chown(SockPath, real_uid, real_gid);
     }
 }

    }

  if (stat(SockPath, &st) == -1)
    Panic((*__errno_location ()), "Cannot access %s", SockPath);
  else
  if (!((((st.st_mode)) & 0170000) == (0040000)))
    Panic(0, "%s is not a directory.", SockPath);

  if (multi)
    {
      if ((int)st.st_uid != multi_uid)
 Panic(0, "%s is not the owner of %s.", multi, SockPath);
    }
  else

    {


      if ((int)st.st_uid != real_uid)
 Panic(0, "You are not the owner of %s.", SockPath);

    }
  if ((st.st_mode & 0777) != 0700)
    Panic(0, "Directory %s must have mode 700.", SockPath);
  if (SockMatch && index(SockMatch, '/'))
    Panic(0, "Bad session name '%s'", SockMatch);
  SockName = SockPath + strlen(SockPath) + 1;
  *SockName = 0;
  (void) umask(oumask);
  do {} while (0);







  (void) gethostname(HostName, 768);
  HostName[768 - 1] = '\0';

  if ((ap = index(HostName, '.')) != ((void*)0))
    *ap = '\0';

  if (lsflag)
    {
      int i, fo, oth;


      if (multi)
 real_uid = multi_uid;

      do { setgid(real_gid); setuid(real_uid); eff_uid = real_uid; eff_gid = real_gid; } while (0);
      i = FindSocket((int *)((void*)0), &fo, &oth, SockMatch);
      if (quietflag) {
        if (rflag)
          exit(10 + i);
        else
          exit(9 + (fo || oth ? 1 : 0) + fo);
      }
      if (fo == 0)
        Panic(0, "No Sockets found in %s.\n", SockPath);
      Msg(0, "%d Socket%s in %s.", fo, fo > 1 ? "s" : "", SockPath);
      eexit(0);
    }
  xsignal(1, AttacherFinit);
  if (cmdflag)
    {

      do { if (!(attach_tty = ttyname(0))) { if (0) Panic(0, "Must be connected to a terminal."); else attach_tty = ""; } else { if (stat(attach_tty, &st)) Panic((*__errno_location ()), "Cannot access '%s'", attach_tty); if (CheckTtyname(attach_tty)) Panic(0, "Bad tty '%s'", attach_tty); } if (strlen(attach_tty) >= 4096) Panic(0, "TtyName too long - sorry."); } while (0);
      if (!*av)
 Panic(0, "Please specify a command.");
      do { setgid(real_gid); setuid(real_uid); eff_uid = real_uid; eff_gid = real_gid; } while (0);
      SendCmdMessage(sty, SockMatch, av, queryflag >= 0);
      exit(0);
    }
  else if (rflag || xflag)
    {
      do {} while (0);
      if (Attach(2))
 {
   Attacher();

 }

      if (multiattach)
 Panic(0, "Can't create sessions of other users.");

      do {} while (0);
    }
  else if (dflag && !mflag)
    {
      do { if (!(attach_tty = ttyname(0))) { if (0) Panic(0, "Must be connected to a terminal."); else attach_tty = ""; } else { if (stat(attach_tty, &st)) Panic((*__errno_location ()), "Cannot access '%s'", attach_tty); if (CheckTtyname(attach_tty)) Panic(0, "Bad tty '%s'", attach_tty); } if (strlen(attach_tty) >= 4096) Panic(0, "TtyName too long - sorry."); } while (0);
      Attach(4);
      Msg(0, "[%s %sdetached.]\n", SockName, (dflag > 1 ? "power " : ""));
      eexit(0);

    }
  if (!SockMatch && !mflag && sty)
    {

      do { if (!(attach_tty = ttyname(0))) { if (0) Panic(0, "Must be connected to a terminal."); else attach_tty = ""; } else { if (stat(attach_tty, &st)) Panic((*__errno_location ()), "Cannot access '%s'", attach_tty); if (CheckTtyname(attach_tty)) Panic(0, "Bad tty '%s'", attach_tty); } if (strlen(attach_tty) >= 4096) Panic(0, "TtyName too long - sorry."); } while (0);
      do { setgid(real_gid); setuid(real_uid); eff_uid = real_uid; eff_gid = real_gid; } while (0);
      nwin_options.args = av;
      SendCreateMsg(sty, &nwin);
      exit(0);

    }
  nwin_compose(&nwin_default, &nwin_options, &nwin_default);

  if (!detached || dflag != 2)
    MasterPid = fork();
  else
    MasterPid = 0;

  switch (MasterPid)
    {
    case -1:
      Panic((*__errno_location ()), "fork");

    case 0:
      break;
    default:
      if (detached)
        exit(0);
      if (SockMatch)
 sprintf(socknamebuf, "%d.%s", MasterPid, SockMatch);
      else
 sprintf(socknamebuf, "%d.%s.%s", MasterPid, stripdev(attach_tty), HostName);
      for (ap = socknamebuf; *ap; ap++)
 if (*ap == '/')
   *ap = '-';

      if (strlen(socknamebuf) > 255)
        socknamebuf[255] = 0;

      sprintf(SockPath + strlen(SockPath), "/%s", socknamebuf);
      do { setgid(real_gid); setuid(real_uid); eff_uid = real_uid; eff_gid = real_gid; } while (0);
      Attacher();

    }

  if (!detached)
    PanicPid = getppid();

  if (DefaultEsc == -1)
    DefaultEsc = (('a')&037);
  if (DefaultMetaEsc == -1)
    DefaultMetaEsc = 'a';

  ap = av0 + strlen(av0) - 1;
  while (ap >= av0)
    {
      if (!strncmp("screen", ap, 6))
 {
   strncpy(ap, "SCREEN", 6);
   break;
 }
      ap--;
    }
  if (ap < av0)
    *av0 = 'S';
# 1313 "screen.c"
  if (!detached)
    {
      if (attach_fd == -1)
 {
   if ((n = secopen(attach_tty, 02 | 04000, 0)) < 0)
     Panic(0, "Cannot reopen '%s' - please check.", attach_tty);
 }
      else
 n = dup(attach_fd);
    }
  else
    n = -1;
  freopen("/dev/null", "r", stdin);
  freopen("/dev/null", "w", stdout);




  freopen("/dev/null", "w", stderr);
  do {} while (0);






  if (UserAdd(LoginName, (char *)0, (struct acluser **)0) < 0)
    Panic(0, "Could not create user info");
  if (!detached)
    {
      if (MakeDisplay(LoginName, attach_tty, attach_term, n, getppid(), &attach_Mode) == 0)
 Panic(0, "Could not alloc display");
      PanicPid = 0;

      display->d_encoding = nwin_options.encoding > 0 ? nwin_options.encoding : 0;
      do {} while (0);

    }

  if (SockMatch)
    {

      sprintf(socknamebuf, "%d.%s", (int)getpid(), SockMatch);
    }
  else
    {
      sprintf(socknamebuf, "%d.%s.%s", (int)getpid(), stripdev(attach_tty),
       HostName);
    }
  for (ap = socknamebuf; *ap; ap++)
    if (*ap == '/')
      *ap = '-';

  if (strlen(socknamebuf) > 255)
    {
      do {} while (0);
      socknamebuf[255] = 0;
    }

  sprintf(SockPath + strlen(SockPath), "/%s", socknamebuf);

  ServerSocket = MakeServerSocket();
  InitKeytab();


  if ((ap = getenv("SYSSCREENRC")))
    (void)StartRc(ap, 0);
  else

    (void)StartRc("/usr/etc/screenrc", 0);

  (void)StartRc(RcFileName, 0);


  InitUtmp();


  if (display)
    {
      if (InitTermcap(0, 0))
 {
   do {} while (0);
   fcntl(display->d_userfd, 4, 0);
   freetty();
   if (display->d_userpid)
     Kill(display->d_userpid, 1);
   eexit(1);
 }
      MakeDefaultCanvas();
      InitTerm(0);

      RemoveLoginSlot();

    }
  else
    MakeTermcap(1);

  InitLoadav();

  MakeNewEnv();
  xsignal(1, SigHup);
  xsignal(2, FinitHandler);
  xsignal(3, FinitHandler);
  xsignal(15, FinitHandler);

  xsignal(21, ((__sighandler_t) 1));
  xsignal(22, ((__sighandler_t) 1));


  if (display)
    {
      brktty(display->d_userfd);
      SetMode(&display->d_OldMode, &display->d_NewMode, display->d_flow, iflag);

      SetTTY(display->d_userfd, &display->d_NewMode);
      if (fcntl(display->d_userfd, 4, 04000))
 Msg((*__errno_location ()), "Warning: NBLOCK fcntl failed");
    }
  else
    brktty(-1);
  xsignal(17, SigChld);


  if ((ap = getenv("SYSSCREENRC")))
    FinishRc(ap);
  else

    FinishRc("/usr/etc/screenrc");

  FinishRc(RcFileName);

  do {} while (0);
  if (windows == ((void*)0))
    {
      do {} while (0);
      if (MakeWindow(&nwin) == -1)
 {
   fd_set rfd;
   struct timeval tv = { MsgWait/1000, 1000*(MsgWait%1000) };
   ((void) (((&rfd)->fds_bits)[((0) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) 1 << ((0) % (8 * (int) sizeof (__fd_mask))))));

   Msg(0, "Sorry, could not find a PTY or TTY.");

   select(1, &rfd, ((void*)0), ((void*)0), &tv);
   Finit(0);

 }
    }
  else if (ac)
    {
      MakeWindow(&nwin);
    }





  if (display && default_startup)
    display_copyright();
  xsignal(2, SigInt);
  if (rflag && (rflag & 1) == 0 && !quietflag)
    {
      Msg(0, "New screen...");
      rflag = 0;
    }

  serv_read.type = 1;
  serv_read.fd = ServerSocket;
  serv_read.handler = serv_read_fn;
  evenq(&serv_read);

  serv_select.pri = -10;
  serv_select.type = 3;
  serv_select.handler = serv_select_fn;
  evenq(&serv_select);

  logflushev.type = 0;
  logflushev.handler = logflush_fn;

  sched();

  return 0;
}

void
WindowDied(p, wstat, wstat_valid)
struct win *p;



  int wstat;

int wstat_valid;
{
  int killit = 0;

  if (p->w_destroyev.data == (char *)p)
    {
      wstat = p->w_exitstatus;
      wstat_valid = 1;
      evdeq(&p->w_destroyev);
      p->w_destroyev.data = 0;
    }


  if (!wstat_valid && p->w_pid > 0)
    {


      if (waitpid(p->w_pid, &wstat, 1 | 2) == p->w_pid)
 {
   p->w_pid = 0;
   wstat_valid = 1;
 }
    }

  if (ZombieKey_destroy && ZombieKey_onerror && wstat_valid &&
      ((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0x7f) == 0) && ((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0xff00) >> 8) == 0)
 killit = 1;

  if (ZombieKey_destroy && !killit)
    {
      char buf[100], *s, reason[100];
      time_t now;

      if (wstat_valid) {
 if (((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0x7f) == 0))
   if (((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0xff00) >> 8))
            sprintf(reason, "terminated with exit status %d", ((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0xff00) >> 8));
   else
            sprintf(reason, "terminated normally");
 else if ((((signed char) ((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0x7f) + 1) >> 1) > 0))
          sprintf(reason, "terminated with signal %d%s", (((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0x7f),

     (((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0x80) ? " (core file generated)" : "");



      } else
 sprintf(reason, "detached from window");

      (void) time(&now);
      s = ctime(&now);
      if (s && *s)
        s[strlen(s) - 1] = '\0';
      do {} while (0);


      if (p->w_slot != (slot_t)0 && p->w_slot != (slot_t)-1)
 {
   RemoveUtmp(p);
   p->w_slot = 0;
 }

      CloseDevice(p);

      p->w_deadpid = p->w_pid;
      p->w_pid = 0;
      ResetWindow(p);

      p->w_layer.l_y = MFindUsedLine(p, p->w_bot, 1);
      sprintf(buf, "\n\r=== Command %s (%s) ===", reason, s ? s : "?");
      WriteString(p, buf, strlen(buf));
   if (p->w_poll_zombie_timeout) {
    do {} while (0);

    SetTimeout(&p->w_zombieev, p->w_poll_zombie_timeout * 1000);
    evenq(&p->w_zombieev);
   }
      WindowChanged(p, 'f');
    }
  else
    KillWindow(p);

               ;

}

static void
SigChldHandler()
{
  struct stat st;



  while (GotSigChld)
    {
      GotSigChld = 0;
      DoWait();



    }
  if (stat(SockPath, &st) == -1)
    {
      do {} while (0);
      if (!RecoverSocket())
 {
   do {} while (0);
   Finit(1);
 }
      else
 do {} while (0);
    }
  else
    do {} while (0);
}

static void
SigChld (sigsig) int sigsig;
{
  do {} while (0);
  GotSigChld = 1;
           ;
}

void
SigHup (sigsig) int sigsig;
{

  while ((display = displays) != 0)
    Hangup();
           ;
}






static void
SigInt (sigsig) int sigsig;
{
# 1661 "screen.c"
  xsignal(2, SigInt);
  do {} while (0);
  InterruptPlease = 1;

           ;
}

static void
CoreDump (sigsig) int sigsig;
{




  struct display *disp;
  char buf[80];

  char *dump_msg = " (core dumped)";

  int running_w_s_bit = getuid() != geteuid();

  if (running_w_s_bit)
    dump_msg = "";





  setgid(getgid());
  setuid(getuid());
  unlink("core");


  sprintf(buf, "\r\n[screen caught signal %d.%s]\r\n", sigsig, dump_msg);




  for (disp = displays; disp; disp = disp->d_next)
    {
      if (disp->d_nonblock < -1 || disp->d_nonblock > 1000000)
 continue;
      fcntl(disp->d_userfd, 4, 0);
      SetTTY(disp->d_userfd, &display->d_OldMode);
      write(disp->d_userfd, buf, strlen(buf));
      Kill(disp->d_userpid, 1);
    }

  if (running_w_s_bit)
    {

      Kill(getpid(), 9);
      eexit(11);



    }
  else
    abort();
           ;
}

static void
DoWait()
{
  register int pid;
  struct win *p, *next;



  int wstat;




  while ((pid = waitpid(-1, &wstat, 1 | 2)) > 0)
# 1755 "screen.c"
    {
      for (p = windows; p; p = next)
 {
   next = p->w_next;
   if ( (p->w_pid && pid == p->w_pid) ||
  (p->w_deadpid && pid == p->w_deadpid) )
     {

       p->w_pid = 0;


       if (((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0xff) == 0x7f))
  {
    do {} while (0);

    if (((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0xff00) >> 8) == 21)
      {
        Msg(0, "Suspended (tty input)");
        continue;
      }


    if (((((__extension__ (((union { __typeof(wstat) __in; int __i; }) { .__in = (wstat) }).__i))) & 0xff00) >> 8) == 22)
      {
        Msg(0, "Suspended (tty output)");
        continue;
      }


    Msg(0, "Child has been stopped, restarting.");
    if (killpg(pid, 18))
      kill(pid, 18);
  }
       else

  {






    p->w_destroyev.data = (char *)p;
    p->w_exitstatus = wstat;
    SetTimeout(&p->w_destroyev, 10 * 1000);
    evenq(&p->w_destroyev);
  }
       break;
     }

   if (p->w_pwin && pid == p->w_pwin->p_pid)
     {
       do {} while (0);
       FreePseudowin(p);
       break;
     }

 }
      if (p == 0)
 {
   do {} while (0);
 }
    }
}


static void
FinitHandler (sigsig) int sigsig;
{

  do {} while (0);



  Finit(1);
           ;
}

void
Finit(i)
int i;
{
  xsignal(17, ((__sighandler_t) 0));
  xsignal(1, ((__sighandler_t) 1));
  do {} while (0);
  while (windows)
    {
      struct win *p = windows;
      windows = windows->w_next;
      FreeWindow(p);
    }
  if (ServerSocket != -1)
    {
      do {} while (0);

      xseteuid(real_uid);
      xsetegid(real_gid);

      (void) unlink(SockPath);

      xseteuid(eff_uid);
      xsetegid(eff_gid);

    }
  for (display = displays; display; display = display->d_next)
    {
      if (display->d_status)
 RemoveStatus();
      FinitTerm();

      RestoreLoginSlot();

      AddStr("[screen is terminating]\r\n");
      Flush(3);
      SetTTY(display->d_userfd, &display->d_OldMode);
      fcntl(display->d_userfd, 4, 0);
      freetty();
      Kill(display->d_userpid, 1);
    }




  exit(i);
}

void
eexit(e)
int e;
{
  do {} while (0);
  if (ServerSocket != -1)
    {
      do {} while (0);
      setgid(real_gid);
      setuid(real_uid);
      (void) unlink(SockPath);
    }
  exit(e);
}

void
Hangup()
{
  if (display == 0)
    return;
  do {} while (0);
  if (display->d_userfd >= 0)
    {
      close(display->d_userfd);
      display->d_userfd = -1;
    }
  if (auto_detach || displays->d_next)
    Detach(6);
  else
    Finit(0);
}
# 1926 "screen.c"
void
Detach(mode)
int mode;
{
  int sign = 0, pid;
  struct canvas *cv;
  struct win *p;

  if (display == 0)
    return;
# 1948 "screen.c"
  xsignal(1, ((__sighandler_t) 1));
  do {} while (0);
  if (display->d_status)
    RemoveStatus();
  FinitTerm();
  if (!display)
    return;
  switch (mode)
    {
    case 6:
      sign = 1;
      break;
    case 0:
      do { if (SockName) { AddStr("[" "detached" " from "); AddStr(SockName); AddStr("]\r\n"); } else AddStr("[" "detached" "]\r\n"); } while (0);
      sign = 1;
      break;

    case 1:
      sign = 20;
      break;


    case 2:
      do { if (SockName) { AddStr("[" "remote detached" " from "); AddStr(SockName); AddStr("]\r\n"); } else AddStr("[" "remote detached" "]\r\n"); } while (0);
      sign = 1;
      break;


    case 3:
      do { if (SockName) { AddStr("[" "power detached" " from "); AddStr(SockName); AddStr("]\r\n"); } else AddStr("[" "power detached" "]\r\n"); } while (0);
      if (PowDetachString)
 {
   AddStr(PowDetachString);
   AddStr("\r\n");
 }
      sign = 10;
      break;

    case 4:
      do { if (SockName) { AddStr("[" "remote power detached" " from "); AddStr(SockName); AddStr("]\r\n"); } else AddStr("[" "remote power detached" "]\r\n"); } while (0);
      if (PowDetachString)
 {
   AddStr(PowDetachString);
   AddStr("\r\n");
 }
      sign = 10;
      break;


    case 5:
      ClearAll();
      sign = 12;

      break;
    }

  if (displays->d_next == 0)
    {
      for (p = windows; p; p = p->w_next)
        {
   if (p->w_slot != (slot_t) -1 && !(p->w_lflag & 2))
     {
       RemoveUtmp(p);




       p->w_slot = (slot_t) 0;
     }
 }
    }
  if (mode != 6)
    RestoreLoginSlot();

  if (displays->d_next == 0 && console_window)
    {
      if (TtyGrabConsole(console_window->w_ptyfd, 0, "detach"))
 {
   do {} while (0);
   KillWindow(console_window);
   display = displays;
 }
    }
  if (display->d_fore)
    {

      ReleaseAutoWritelock(display, display->d_fore);

      display->d_user->u_detachwin = display->d_fore->w_number;
      display->d_user->u_detachotherwin = display->d_other ? display->d_other->w_number : -1;
    }
  AutosaveLayout(display->d_layout);
  layout_last = display->d_layout;
  for (cv = display->d_cvlist; cv; cv = cv->c_next)
    {
      p = ((struct win *)(cv->c_layer)->l_bottom->l_data);
      SetCanvasWindow(cv, 0);
      if (p)
        WindowChanged(p, 'u');
    }

  pid = display->d_userpid;
  do {} while (0);
  FreeDisplay();
  if (displays == 0)

    (void) chsock();





  Kill(pid, sign);
  do {} while (0);
  do {} while (0);
  xsignal(1, SigHup);

}

static int
IsSymbol(e, s)
char *e, *s;
{
  register int l;

  l = strlen(s);
  return strncmp(e, s, l) == 0 && e[l] == '=';
}

void
MakeNewEnv()
{
  register char **op, **np;
  static char stybuf[768];

  for (op = environ; *op; ++op)
    ;
  if (NewEnv)
    free((char *)NewEnv);
  NewEnv = np = (char **) malloc((unsigned) (op - environ + 7 + 1) * sizeof(char **));
  if (!NewEnv)
    Panic(0, "%s", strnomem);
  sprintf(stybuf, "STY=%s", strlen(SockName) <= 768 - 5 ? SockName : "?");
  *np++ = stybuf;
  *np++ = Term;
  np++;

  np += 2;




  for (op = environ; *op; ++op)
    {
      if (!IsSymbol(*op, "TERM") && !IsSymbol(*op, "TERMCAP")
   && !IsSymbol(*op, "STY") && !IsSymbol(*op, "WINDOW")
   && !IsSymbol(*op, "SCREENCAP") && !IsSymbol(*op, "SHELL")
   && !IsSymbol(*op, "LINES") && !IsSymbol(*op, "COLUMNS")
  )
 *np++ = *op;
    }
  *np = 0;
}
# 2138 "screen.c"
void Msg (int err, const char *fmt, ...)
{
  char buf[4096*2];
  do { char *p = buf; va_list ap; __builtin_va_start(ap, fmt); fmt = DoNLS(fmt); (void)vsnprintf(p, sizeof(buf) - 100, fmt, ap); __builtin_va_end(ap); if (err) { p += strlen(p); *p++ = ':'; *p++ = ' '; strncpy(p, strerror(err), buf + sizeof(buf) - p - 1); buf[sizeof(buf) - 1] = 0; } } while (0);

  do {} while (0);

  if (display && displays)
    MakeStatus(buf);
  else if (displays)
    {
      for (display = displays; display; display = display->d_next)
 MakeStatus(buf);
    }
  else if (display)
    {



      char *tty = display->d_usertty;
      struct display *olddisplay = display;
      display = 0;
      SendErrorMsg(tty, buf);
      display = olddisplay;
    }
  else
    printf("%s\r\n", buf);

  if (queryflag >= 0)
    write(queryflag, buf, strlen(buf));
}




void Panic (int err, const char *fmt, ...)
{
  char buf[4096*2];
  do { char *p = buf; va_list ap; __builtin_va_start(ap, fmt); fmt = DoNLS(fmt); (void)vsnprintf(p, sizeof(buf) - 100, fmt, ap); __builtin_va_end(ap); if (err) { p += strlen(p); *p++ = ':'; *p++ = ' '; strncpy(p, strerror(err), buf + sizeof(buf) - p - 1); buf[sizeof(buf) - 1] = 0; } } while (0);

  do {} while (0);
  if (displays == 0 && display == 0)
    {
      printf("%s\r\n", buf);
      if (PanicPid)
        Kill(PanicPid, 1);
    }
  else if (displays == 0)
    {



      char *tty = display->d_usertty;
      display = 0;
      SendErrorMsg(tty, buf);
      sleep(2);
      _exit(1);
    }
  else
    for (display = displays; display; display = display->d_next)
      {
        if (display->d_status)
   RemoveStatus();
        FinitTerm();
        Flush(3);

        RestoreLoginSlot();

        SetTTY(display->d_userfd, &display->d_OldMode);
        fcntl(display->d_userfd, 4, 0);
        write(display->d_userfd, buf, strlen(buf));
        write(display->d_userfd, "\n", 1);
        freetty();
 if (display->d_userpid)
   Kill(display->d_userpid, 1);
      }

  if (tty_oldmode >= 0)
    {

      if (setuid(own_uid))
        xseteuid(own_uid);



      do {} while (0);
      chmod(attach_tty, tty_oldmode);
    }

  eexit(1);
}

void QueryMsg (int err, const char *fmt, ...)
{
  char buf[4096*2];

  if (queryflag < 0)
    return;

  do { char *p = buf; va_list ap; __builtin_va_start(ap, fmt); fmt = DoNLS(fmt); (void)vsnprintf(p, sizeof(buf) - 100, fmt, ap); __builtin_va_end(ap); if (err) { p += strlen(p); *p++ = ':'; *p++ = ' '; strncpy(p, strerror(err), buf + sizeof(buf) - p - 1); buf[sizeof(buf) - 1] = 0; } } while (0);
  write(queryflag, buf, strlen(buf));
}

void Dummy (int err, const char *fmt, ...)
{}
# 2260 "screen.c"
static char winmsg_buf[768];

static int winmsg_rend[256];
static int winmsg_rendpos[256];
static int winmsg_numrend;

static char *
pad_expand(buf, p, numpad, padlen)
char *buf;
char *p;
int numpad;
int padlen;
{
  char *pn, *pn2;
  int i, r;

  padlen = padlen - (p - buf);
  if (padlen < 0)
    padlen = 0;
  pn2 = pn = p + padlen;
  r = winmsg_numrend;
  while (p >= buf)
    {
      if (r && *p != 127 && p - buf == winmsg_rendpos[r - 1])
 {
   winmsg_rendpos[--r] = pn - buf;
   continue;
 }
      *pn-- = *p;
      if (*p-- == 127)
 {
   pn[1] = ' ';
   i = numpad > 0 ? (padlen + numpad - 1) / numpad : 0;
   padlen -= i;
   while (i-- > 0)
     *pn-- = ' ';
   numpad--;
   if (r && p - buf + 1== winmsg_rendpos[r - 1])
     winmsg_rendpos[--r] = pn - buf + 1;
 }
    }
  return pn2;
}

struct backtick {
  struct backtick *next;
  int num;
  int tick;
  int lifespan;
  time_t bestbefore;
  char result[768];
  char **cmdv;
  struct event ev;
  char *buf;
  int bufi;
};

struct backtick *backticks;

static void
backtick_filter(bt)
struct backtick *bt;
{
  char *p, *q;
  int c;

  for (p = q = bt->result; (c = (unsigned char)*p++) != 0;)
    {
      if (c == '\t')
 c = ' ';
      if (c >= ' ' || c == '\005')
 *q++ = c;
    }
  *q = 0;
}

static void
backtick_fn(ev, data)
struct event *ev;
char *data;
{
  struct backtick *bt;
  int i, j, k, l;

  bt = (struct backtick *)data;
  do {} while (0);
  i = bt->bufi;
  l = read(ev->fd, bt->buf + i, 768 - i);
  if (l <= 0)
    {
      do {} while (0);
      evdeq(ev);
      close(ev->fd);
      ev->fd = -1;
      return;
    }
  do {} while (0);
  i += l;
  for (j = 0; j < l; j++)
    if (bt->buf[i - j - 1] == '\n')
      break;
  if (j < l)
    {
      for (k = i - j - 2; k >= 0; k--)
 if (bt->buf[k] == '\n')
   break;
      k++;
      bcopy(bt->buf + k, bt->result, i - j - k);
      bt->result[i - j - k - 1] = 0;
      backtick_filter(bt);
      WindowChanged(0, '`');
    }
  if (j == l && i == 768)
    {
      j = 768/2;
      l = j + 1;
    }
  if (j < l)
    {
      if (j)
        bcopy(bt->buf + i - j, bt->buf, j);
      i = j;
    }
  bt->bufi = i;
}

void
setbacktick(num, lifespan, tick, cmdv)
int num;
int lifespan;
int tick;
char **cmdv;
{
  struct backtick **btp, *bt;
  char **v;

  do {} while (0);
  for (btp = &backticks; (bt = *btp) != 0; btp = &bt->next)
    if (bt->num == num)
      break;
  if (!bt && !cmdv)
    return;
  if (bt)
    {
      for (v = bt->cmdv; *v; v++)
 free(*v);
      free(bt->cmdv);
      if (bt->buf)
 free(bt->buf);
      if (bt->ev.fd >= 0)
 close(bt->ev.fd);
      evdeq(&bt->ev);
    }
  if (bt && !cmdv)
    {
      *btp = bt->next;
      free(bt);
      return;
    }
  if (!bt)
    {
      bt = (struct backtick *)malloc(sizeof *bt);
      if (!bt)
 {
   Msg(0, "%s", strnomem);
          return;
 }
      bzero(bt, sizeof(*bt));
      bt->next = 0;
      *btp = bt;
    }
  bt->num = num;
  bt->tick = tick;
  bt->lifespan = lifespan;
  bt->bestbefore = 0;
  bt->result[0] = 0;
  bt->buf = 0;
  bt->bufi = 0;
  bt->cmdv = cmdv;
  bt->ev.fd = -1;
  if (bt->tick == 0 && bt->lifespan == 0)
    {
      do {} while (0);
      bt->buf = (char *)malloc(768);
      if (bt->buf == 0)
 {
   Msg(0, "%s", strnomem);
   setbacktick(num, 0, 0, (char **)0);
          return;
 }
      bt->ev.type = 1;
      bt->ev.fd = readpipe(bt->cmdv);
      bt->ev.handler = backtick_fn;
      bt->ev.data = (char *)bt;
      if (bt->ev.fd >= 0)
 evenq(&bt->ev);
    }
}

static char *
runbacktick(bt, tickp, now)
struct backtick *bt;
int *tickp;
time_t now;
{
  int f, i, l, j;
  time_t now2;

  do {} while (0);
  if (bt->tick && (!*tickp || bt->tick < *tickp))
    *tickp = bt->tick;
  if ((bt->lifespan == 0 && bt->tick == 0) || now < bt->bestbefore)
    {
      do {} while (0);
      return bt->result;
    }
  f = readpipe(bt->cmdv);
  if (f == -1)
    return bt->result;
  i = 0;
  while ((l = read(f, bt->result + i, sizeof(bt->result) - i)) > 0)
    {
      do {} while (0);
      i += l;
      for (j = 1; j < l; j++)
 if (bt->result[i - j - 1] == '\n')
   break;
      if (j == l && i == sizeof(bt->result))
 {
   j = sizeof(bt->result) / 2;
   l = j + 1;
 }
      if (j < l)
 {
   bcopy(bt->result + i - j, bt->result, j);
   i = j;
 }
    }
  close(f);
  bt->result[sizeof(bt->result) - 1] = '\n';
  if (i && bt->result[i - 1] == '\n')
    i--;
  do {} while (0);
  bt->result[i] = 0;
  backtick_filter(bt);
  (void)time(&now2);
  bt->bestbefore = now2 + bt->lifespan;
  return bt->result;
}

int
AddWinMsgRend(str, r)
const char *str;
int r;
{
  if (winmsg_numrend >= 256 || str < winmsg_buf ||
      str >= winmsg_buf + 768)
    return -1;

  winmsg_rend[winmsg_numrend] = r;
  winmsg_rendpos[winmsg_numrend] = str - winmsg_buf;
  winmsg_numrend++;

  return 0;
}

char *
MakeWinMsgEv(str, win, esc, padlen, ev, rec)
char *str;
struct win *win;
int esc;
int padlen;
struct event *ev;
int rec;
{
  static int tick;
  char *s = str;
  register char *p = winmsg_buf;
  register int ctrl;
  struct timeval now;
  struct tm *tm;
  int l, i, r;
  int num;
  int zeroflg;
  int longflg;
  int minusflg;
  int plusflg;
  int qmflag = 0, omflag = 0, qmnumrend = 0;
  char *qmpos = 0;
  int numpad = 0;
  int lastpad = 0;
  int truncpos = -1;
  int truncper = 0;
  int trunclong = 0;
  struct backtick *bt = ((void*)0);

  if (winmsg_numrend >= 0)
    winmsg_numrend = 0;
  else
    winmsg_numrend = -winmsg_numrend;

  tick = 0;
  tm = 0;
  ctrl = 0;
  gettimeofday(&now, ((void*)0));
  for (; *s && (l = winmsg_buf + 768 - 1 - p) > 0; s++, p++)
    {
      *p = *s;
      if (ctrl)
 {
   ctrl = 0;
   if (*s != '^' && *s >= 64)
     *p &= 0x1f;
   continue;
 }
      if (*s != esc)
 {
   if (esc == '%')
     {
       switch (*s)
  {





  case '^':
    ctrl = 1;
    *p-- = '^';
    break;
  default:
    break;
  }
     }
   continue;
 }
      if (*++s == esc)
 continue;
      if ((plusflg = *s == '+') != 0)
 s++;
      if ((minusflg = *s == '-') != 0)
 s++;
      if ((zeroflg = *s == '0') != 0)
 s++;
      num = 0;
      while(*s >= '0' && *s <= '9')
 num = num * 10 + (*s++ - '0');
      if ((longflg = *s == 'L') != 0)
 s++;
      switch (*s)
 {
        case '?':
   p--;
   if (qmpos)
     {
       if ((!qmflag && !omflag) || omflag == 1)
  {
           p = qmpos;
           if (qmnumrend < winmsg_numrend)
      winmsg_numrend = qmnumrend;
  }
       qmpos = 0;
       break;
     }
   qmpos = p;
   qmnumrend = winmsg_numrend;
   qmflag = omflag = 0;
   break;
        case ':':
   p--;
   if (!qmpos)
     break;
   if (qmflag && omflag != 1)
     {
       omflag = 1;
       qmpos = p;
       qmnumrend = winmsg_numrend;
     }
   else
     {
       p = qmpos;
       if (qmnumrend < winmsg_numrend)
  winmsg_numrend = qmnumrend;
       omflag = -1;
     }
   break;
 case 'd': case 'D': case 'm': case 'M': case 'y': case 'Y':
 case 'a': case 'A': case 's': case 'c': case 'C':
   if (l < 4)
     break;
   if (tm == 0)
            {
       time_t nowsec = now.tv_sec;
       tm = localtime(&nowsec);
     }
   qmflag = 1;
   if (!tick || tick > 3600)
     tick = 3600;
   switch (*s)
     {
     case 'd':
       sprintf(p, "%02d", tm->tm_mday % 100);
       break;
     case 'D':

       strftime(p, l, (longflg ? "%A" : "%a"), tm);



       break;
     case 'm':
       sprintf(p, "%02d", tm->tm_mon + 1);
       break;
     case 'M':

       strftime(p, l, (longflg ? "%B" : "%b"), tm);



       break;
     case 'y':
       sprintf(p, "%02d", tm->tm_year % 100);
       break;
     case 'Y':
       sprintf(p, "%04d", tm->tm_year + 1900);
       break;
     case 'a':
       sprintf(p, tm->tm_hour >= 12 ? "pm" : "am");
       break;
     case 'A':
       sprintf(p, tm->tm_hour >= 12 ? "PM" : "AM");
       break;
     case 's':
       sprintf(p, "%02d", tm->tm_sec);
       tick = 1;
       break;
     case 'c':
       sprintf(p, zeroflg ? "%02d:%02d" : "%2d:%02d", tm->tm_hour, tm->tm_min);
       if (!tick || tick > 60)
  tick = 60;
       break;
     case 'C':
       sprintf(p, zeroflg ? "%02d:%02d" : "%2d:%02d", (tm->tm_hour + 11) % 12 + 1, tm->tm_min);
       if (!tick || tick > 60)
  tick = 60;
       break;
     default:
       break;
     }
   p += strlen(p) - 1;
   break;
 case 'X': case 'x':
   *p = 0;
   for (i = 0; win && win->w_cmdargs[i]; i++)
   {
    if (l < strlen(win->w_cmdargs[i]) + 1)
   break;
    sprintf(p, i ? "%s" : " %s", win->w_cmdargs[i]);
    l -= strlen(p);
    p += strlen(p);
    if (i == 0 && *s == 'X')
     break;
   }
   p--;
   break;
 case 'l':

   *p = 0;
   if (l > 20)
     AddLoadav(p);
   if (*p)
     {
       qmflag = 1;
       p += strlen(p) - 1;
     }
   else
     *p = '?';
   if (!tick || tick > 60)
     tick = 60;



   p += strlen(p) - 1;
   break;
 case '`':
 case 'h':
   if (rec >= 10 || (*s == 'h' && (win == 0 || win->w_hstatus == 0 || *win->w_hstatus == 0)))
     {
       p--;
       break;
     }
   if (*s == '`')
     {
       for (bt = backticks; bt; bt = bt->next)
  if (bt->num == num)
    break;
       if (bt == 0)
  {
    p--;
    break;
  }
     }
     {
       char savebuf[sizeof(winmsg_buf)];
       int oldtick = tick;
       int oldnumrend = winmsg_numrend;

       *p = 0;
       strcpy(savebuf, winmsg_buf);
       winmsg_numrend = -winmsg_numrend;
       MakeWinMsgEv(*s == 'h' ? win->w_hstatus : runbacktick(bt, &oldtick, now.tv_sec), win, '\005', 0, (struct event *)0, rec + 1);
       do {} while (0);
       if (!tick || oldtick < tick)
  tick = oldtick;
       if ((int)strlen(winmsg_buf) < l)
  strcat(savebuf, winmsg_buf);
       strcpy(winmsg_buf, savebuf);
       while (oldnumrend < winmsg_numrend)
  winmsg_rendpos[oldnumrend++] += p - winmsg_buf;
       if (*p)
  qmflag = 1;
       p += strlen(p) - 1;
     }
   break;
 case 'w':
 case 'W':
   {
     struct win *oldfore = 0;
     char *ss;

     if (display)
       {
  oldfore = display->d_fore;
  display->d_fore = win;
       }
     ss = AddWindows(p, l - 1, (*s == 'w' ? 0 : 1) | (longflg ? 0 : 2) | (plusflg ? 4 : 0) | (minusflg ? 8 : 0), win ? win->w_number : -1);
     if (display)
       display->d_fore = oldfore;
   }
   if (*p)
     qmflag = 1;
   p += strlen(p) - 1;
   break;
 case 'u':
   *p = 0;
   if (win)
     AddOtherUsers(p, l - 1, win);
   if (*p)
     qmflag = 1;
   p += strlen(p) - 1;
   break;
 case 'f':
   *p = 0;
   if (win)
     AddWindowFlags(p, l - 1, win);
   if (*p)
     qmflag = 1;
   p += strlen(p) - 1;
   break;
 case 't':
   *p = 0;
   if (win && (int)strlen(win->w_title) < l)
     {
       strcpy(p, win->w_title);
       if (*p)
  qmflag = 1;
     }
   p += strlen(p) - 1;
   break;
 case '{':
          {
     char rbuf[128];
     s++;
     for (i = 0; i < 127; i++)
       if (s[i] && s[i] != '}')
  rbuf[i] = s[i];
       else
  break;
     if (s[i] == '}' && winmsg_numrend < 256)
       {
  r = -1;
  rbuf[i] = 0;
  do {} while (0);
         if (i != 1 || rbuf[0] != '-')
    r = ParseAttrColor(rbuf, (char *)0, 0);
         if (r != -1 || (i == 1 && rbuf[0] == '-'))
    {
      winmsg_rend[winmsg_numrend] = r;
      winmsg_rendpos[winmsg_numrend] = p - winmsg_buf;
      winmsg_numrend++;
    }
       }
     s += i;
     p--;
          }
   break;
 case 'H':
   *p = 0;
   if ((int)strlen(HostName) < l)
     {
       strcpy(p, HostName);
       if (*p)
  qmflag = 1;
     }
   p += strlen(p) - 1;
   break;
 case 'S':
   {
     char *session_name;
     *p = 0;
     session_name = strchr(SockName, '.') + 1;
     if ((int)strlen(session_name) < l)
       {
  strcpy(p, session_name);
  if (*p)
    qmflag = 1;
       }
     p += strlen(p) - 1;
   }
   break;
        case 'p':
          {
            sprintf(p, "%d", (plusflg && display) ? display->d_userpid : getpid());
            p += strlen(p) - 1;
          }
          break;
 case 'F':
   p--;

   if (display && ((ev && ev == &display->d_forecv->c_captev) || (!ev && win && win == display->d_fore)))
     minusflg = !minusflg;
   if (minusflg)
     qmflag = 1;
   break;
 case 'P':
   p--;

   if (display && ev && ev != &display->d_hstatusev)
     {

       struct canvas *cv = (struct canvas *)ev->data;
       if (ev == &cv->c_captev && cv->c_layer->l_layfn == &MarkLf)
  qmflag = 1;
     }

   break;
 case 'E':
   p--;
   if (display && display->d_ESCseen)
     qmflag = 1;
   break;
 case '>':
   truncpos = p - winmsg_buf;
   truncper = num > 100 ? 100 : num;
   trunclong = longflg;
   p--;
   break;
 case '=':
 case '<':
   *p = ' ';
   if (num || zeroflg || plusflg || longflg || (*s != '='))
     {

       if (minusflg)
  {
    num = (plusflg ? lastpad : padlen) - num;
    if (!plusflg && padlen == 0)
      num = p - winmsg_buf;
    plusflg = 0;
  }
       else if (!zeroflg)
  {
    if (*s != '=' && num == 0 && !plusflg)
      num = 100;
    if (num > 100)
      num = 100;
    if (padlen == 0)
      num = p - winmsg_buf;
    else
      num = (padlen - (plusflg ? lastpad : 0)) * num / 100;
  }
       if (num < 0)
  num = 0;
       if (plusflg)
  num += lastpad;
       if (num > 768 - 1)
  num = 768 - 1;
       if (numpad)
         p = pad_expand(winmsg_buf, p, numpad, num);
       numpad = 0;
       if (p - winmsg_buf > num && !longflg)
  {
    int left, trunc;

    if (truncpos == -1)
      {
        truncpos = lastpad;
        truncper = 0;
      }
    trunc = lastpad + truncper * (num - lastpad) / 100;
    if (trunc > num)
      trunc = num;
    if (trunc < lastpad)
      trunc = lastpad;
    left = truncpos - trunc;
    if (left > p - winmsg_buf - num)
      left = p - winmsg_buf - num;
    do {} while (0);
    do {} while (0);
    if (left > 0)
      {
        if (left + lastpad > p - winmsg_buf)
   left = p - winmsg_buf - lastpad;
        if (p - winmsg_buf - lastpad - left > 0)
          bcopy(winmsg_buf + lastpad + left, winmsg_buf + lastpad, p - winmsg_buf - lastpad - left);
        p -= left;
        r = winmsg_numrend;
        while (r && winmsg_rendpos[r - 1] > lastpad)
   {
     r--;
     winmsg_rendpos[r] -= left;
     if (winmsg_rendpos[r] < lastpad)
       winmsg_rendpos[r] = lastpad;
   }
        if (trunclong)
   {
     if (p - winmsg_buf > lastpad)
       winmsg_buf[lastpad] = '.';
     if (p - winmsg_buf > lastpad + 1)
       winmsg_buf[lastpad + 1] = '.';
     if (p - winmsg_buf > lastpad + 2)
       winmsg_buf[lastpad + 2] = '.';
   }
      }
    if (p - winmsg_buf > num)
      {
        p = winmsg_buf + num;
        if (trunclong)
   {
     if (num - 1 >= lastpad)
       p[-1] = '.';
     if (num - 2 >= lastpad)
       p[-2] = '.';
     if (num - 3 >= lastpad)
       p[-3] = '.';
   }
        r = winmsg_numrend;
        while (r && winmsg_rendpos[r - 1] > num)
   winmsg_rendpos[--r] = num;
      }
    truncpos = -1;
    trunclong = 0;
    if (lastpad > p - winmsg_buf)
      lastpad = p - winmsg_buf;
    do {} while (0);
  }
       if (*s == '=')
  {
    while (p - winmsg_buf < num)
      *p++ = ' ';
    lastpad = p - winmsg_buf;
    truncpos = -1;
    trunclong = 0;
    do {} while (0);
  }
       p--;
     }
   else if (padlen)
     {
       *p = 127;
       numpad++;
     }
   break;
 case 'n':
   s++;

 default:
   s--;
   if (l > 10 + num)
     {
       if (num == 0)
  num = 1;
       if (!win)
         sprintf(p, "%*s", num, num > 1 ? "--" : "-");
       else
         sprintf(p, "%*d", num, win->w_number);
       qmflag = 1;
       p += strlen(p) - 1;
     }
   break;
 }
    }
  if (qmpos && !qmflag)
    p = qmpos + 1;
  *p = '\0';
  if (numpad)
    {
      if (padlen > 768 - 1)
 padlen = 768 - 1;
      p = pad_expand(winmsg_buf, p, numpad, padlen);
    }
  if (ev)
    {
      evdeq(ev);
      ev->timeout.tv_sec = 0;
      ev->timeout.tv_usec = 0;
    }
  if (ev && tick)
    {
      now.tv_usec = 100000;
      if (tick == 1)
 now.tv_sec++;
      else
 now.tv_sec += tick - (now.tv_sec % tick);
      ev->timeout = now;
      do {} while (0);
    }
  return winmsg_buf;
}

char *
MakeWinMsg(s, win, esc)
char *s;
struct win *win;
int esc;
{
  return MakeWinMsgEv(s, win, esc, 0, (struct event *)0, 0);
}

void
PutWinMsg(s, start, max)
char *s;
int start, max;
{
  int i, p, l, r, n;
  struct mchar rend;
  struct mchar rendstack[256];
  int rendstackn = 0;

  if (s != winmsg_buf)
    {

      do {} while (0);
      l = strlen(s);
      if (l > max)
 l = max;
      l -= start;
      s += start;
      while (l-- > 0)
 PUTCHARLP(*s++);
      return;
    }
  rend = display->d_rend;
  p = 0;
  l = strlen(s);
  do {} while (0);
  for (i = 0; i < winmsg_numrend && max > 0; i++)
    {
      if (p > winmsg_rendpos[i] || winmsg_rendpos[i] > l)
 break;
      if (p < winmsg_rendpos[i])
 {
   n = winmsg_rendpos[i] - p;
   if (n > max)
     n = max;
   max -= n;
   p += n;
   while(n-- > 0)
     {
       if (start-- > 0)
  s++;
       else
         PUTCHARLP(*s++);
     }
 }
      r = winmsg_rend[i];
      if (r == -1)
 {
   if (rendstackn > 0)
     rend = rendstack[--rendstackn];
 }
      else
 {
   rendstack[rendstackn++] = rend;
   ApplyAttrColor(r, &rend);
 }
      SetRendition(&rend);
    }
  if (p < l)
    {
      n = l - p;
      if (n > max)
 n = max;
      while(n-- > 0)
 {
   if (start-- > 0)
     s++;
   else
     PUTCHARLP(*s++);
 }
    }
}
# 3195 "screen.c"
static void
serv_read_fn(ev, data)
struct event *ev;
char *data;
{
  do {} while (0);
  ReceiveMsg();
}

static void
serv_select_fn(ev, data)
struct event *ev;
char *data;
{
  struct win *p;

  do {} while (0);

  if (GotSigChld)
    {
      SigChldHandler();
    }
  if (InterruptPlease)
    {
      do {} while (0);


      if (fore && displays)
 {

   char ibuf = displays->d_OldMode.tio.c_cc[0];




   write(((fore)->w_pwin && ((fore)->w_pwin->p_fdpat & 0x1000)) ? fore->w_pwin->p_ptyfd : fore->w_ptyfd,
  &ibuf, 1);
   do {} while (0);
   do {} while (0);




 }
      InterruptPlease = 0;
    }

  for (p = windows; p; p = p->w_next)
    {
      if (p->w_bell == 1 || p->w_bell == 3)
 {
   struct canvas *cv;
   int visual = p->w_bell == 3 || visual_bell;
   p->w_bell = 0;
   for (display = displays; display; display = display->d_next)
     {
       for (cv = display->d_cvlist; cv; cv = cv->c_next)
  if (cv->c_layer->l_bottom == &p->w_layer)
    break;
       if (cv == 0)
  {
    p->w_bell = 2;
    Msg(0, "%s", MakeWinMsg(BellString, p, '%'));
  }
       else if (visual && !(display->d_tcs[43].str) && (!display->d_status || !display->d_status_bell))
  {
    Msg(0, "%s", VisualBellString);
    if (display->d_status)
      {
        display->d_status_bell = 1;
        do {} while (0);
        SetTimeout(&display->d_statusev, VBellWait );
      }
  }
     }

   if (p->w_monitor == 2)
     p->w_monitor = 3;
   WindowChanged(p, 'f');
 }
      if (p->w_monitor == 2)
 {
   struct canvas *cv;
   p->w_monitor = 1;
   for (display = displays; display; display = display->d_next)
     {
       for (cv = display->d_cvlist; cv; cv = cv->c_next)
  if (cv->c_layer->l_bottom == &p->w_layer)
    break;
       if (cv)
  continue;

       if (!(((p->w_mon_notify)[(display->d_user->u_id) >> 3]) & (0x80 >> ((display->d_user->u_id) & 7))))
  continue;

       Msg(0, "%s", MakeWinMsg(ActivityString, p, '%'));
       p->w_monitor = 3;
     }
   WindowChanged(p, 'f');
 }
      if (p->w_silence == 2)
 {

   if (p->w_layer.l_cvlist)
     {
       p->w_silence = 1;
       WindowChanged(p, 'f');
     }
 }
    }

  for (display = displays; display; display = display->d_next)
    {
      struct canvas *cv;
      if (display->d_status == 1)
 continue;

      for (cv = display->d_cvlist; cv; cv = cv->c_next)
 {
   int lx, ly;


   lx = cv->c_layer->l_x;
   ly = cv->c_layer->l_y;
   if (lx == cv->c_layer->l_width)
     lx--;
   if (ly + cv->c_yoff < cv->c_ys)
     {
       int i, n = cv->c_ys - (ly + cv->c_yoff);
       cv->c_yoff = cv->c_ys - ly;
       RethinkViewportOffsets(cv);
       if (n > cv->c_layer->l_height)
  n = cv->c_layer->l_height;
       { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = cv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = cv->c_lnext; flayer = l; l->l_cvlist = cv; cv->c_lnext = 0; LScrollV(flayer, -n, 0, flayer->l_height - 1, 0); (*flayer->l_layfn->lf_LayRedisplayLine)(-1, -1, -1, 1); for (i = 0; i < n; i++) (*flayer->l_layfn->lf_LayRedisplayLine)(i, 0, flayer->l_width - 1, 1); if (cv == cv->c_display->d_forecv) LGotoPos(flayer, flayer->l_x, flayer->l_y);; flayer = oldflayer; l->l_cvlist = cvlist; cv->c_lnext = cvlnext; display = olddisplay; };







     }
   else if (ly + cv->c_yoff > cv->c_ye)
     {
       int i, n = ly + cv->c_yoff - cv->c_ye;
       cv->c_yoff = cv->c_ye - ly;
       RethinkViewportOffsets(cv);
       if (n > cv->c_layer->l_height)
  n = cv->c_layer->l_height;
       { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = cv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = cv->c_lnext; flayer = l; l->l_cvlist = cv; cv->c_lnext = 0; LScrollV(flayer, n, 0, cv->c_layer->l_height - 1, 0); (*flayer->l_layfn->lf_LayRedisplayLine)(-1, -1, -1, 1); for (i = 0; i < n; i++) (*flayer->l_layfn->lf_LayRedisplayLine)(i + flayer->l_height - n, 0, flayer->l_width - 1, 1); if (cv == cv->c_display->d_forecv) LGotoPos(flayer, flayer->l_x, flayer->l_y);; flayer = oldflayer; l->l_cvlist = cvlist; cv->c_lnext = cvlnext; display = olddisplay; };







     }
   if (lx + cv->c_xoff < cv->c_xs)
     {
       int i, n = cv->c_xs - (lx + cv->c_xoff);
       if (n < (cv->c_xe - cv->c_xs + 1) / 2)
  n = (cv->c_xe - cv->c_xs + 1) / 2;
       if (cv->c_xoff + n > cv->c_xs)
  n = cv->c_xs - cv->c_xoff;
       cv->c_xoff += n;
       RethinkViewportOffsets(cv);
       if (n > cv->c_layer->l_width)
  n = cv->c_layer->l_width;
       { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = cv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = cv->c_lnext; flayer = l; l->l_cvlist = cv; cv->c_lnext = 0; (*flayer->l_layfn->lf_LayRedisplayLine)(-1, -1, -1, 1); for (i = 0; i < flayer->l_height; i++) { LScrollH(flayer, -n, i, 0, flayer->l_width - 1, 0, 0); (*flayer->l_layfn->lf_LayRedisplayLine)(i, 0, n - 1, 1); } if (cv == cv->c_display->d_forecv) LGotoPos(flayer, flayer->l_x, flayer->l_y);; flayer = oldflayer; l->l_cvlist = cvlist; cv->c_lnext = cvlnext; display = olddisplay; };
# 3374 "screen.c"
     }
   else if (lx + cv->c_xoff > cv->c_xe)
     {
       int i, n = lx + cv->c_xoff - cv->c_xe;
       if (n < (cv->c_xe - cv->c_xs + 1) / 2)
  n = (cv->c_xe - cv->c_xs + 1) / 2;
       if (cv->c_xoff - n + cv->c_layer->l_width - 1 < cv->c_xe)
  n = cv->c_xoff + cv->c_layer->l_width - 1 - cv->c_xe;
       cv->c_xoff -= n;
       RethinkViewportOffsets(cv);
       if (n > cv->c_layer->l_width)
  n = cv->c_layer->l_width;
       { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = cv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = cv->c_lnext; flayer = l; l->l_cvlist = cv; cv->c_lnext = 0; (*flayer->l_layfn->lf_LayRedisplayLine)(-1, -1, -1, 1); for (i = 0; i < flayer->l_height; i++) { LScrollH(flayer, n, i, 0, flayer->l_width - 1, 0, 0); (*flayer->l_layfn->lf_LayRedisplayLine)(i, flayer->l_width - n, flayer->l_width - 1, 1); } if (cv == cv->c_display->d_forecv) LGotoPos(flayer, flayer->l_x, flayer->l_y);; flayer = oldflayer; l->l_cvlist = cvlist; cv->c_lnext = cvlnext; display = olddisplay; };
# 3396 "screen.c"
     }
 }
    }

  for (display = displays; display; display = display->d_next)
    {
      if (display->d_status == 1 || display->d_cvlist == 0 || display->d_cvlist->c_next == 0)
 continue;
      do {} while (0);
      { struct display *olddisplay = display; struct layer *oldflayer = flayer; struct layer *l = display->d_forecv->c_layer; struct canvas *cvlist = l->l_cvlist; struct canvas *cvlnext = display->d_forecv->c_lnext; flayer = l; l->l_cvlist = display->d_forecv; display->d_forecv->c_lnext = 0; (*flayer->l_layfn->lf_LayRestore)();LGotoPos(flayer, flayer->l_x, flayer->l_y); flayer = oldflayer; l->l_cvlist = cvlist; display->d_forecv->c_lnext = cvlnext; display = olddisplay; };
    }
}

static void
logflush_fn(ev, data)
struct event *ev;
char *data;
{
  struct win *p;
  char *buf;
  int n;

  if (!islogfile(((void*)0)))
    return;
  logfflush(((void*)0));
  n = log_flush ? log_flush : (logtstamp_after + 4) / 5;
  if (n)
    {
      SetTimeout(ev, n * 1000);
      evenq(ev);
    }
  if (!logtstamp_on)
    return;

  for (p = windows; p; p = p->w_next)
    {
      if (!p->w_log)
 continue;
      p->w_logsilence += n;
      if (p->w_logsilence < logtstamp_after)
 continue;
      if (p->w_logsilence - n >= logtstamp_after)
 continue;
      buf = MakeWinMsg(logtstamp_string, p, '%');
      logfwrite(p->w_log, buf, strlen(buf));
    }
}
# 3451 "screen.c"
static char *
ParseChar(p, cp)
char *p, *cp;
{
  if (*p == 0)
    return 0;
  if (*p == '^' && p[1])
    {
      if (*++p == '?')
        *cp = '\177';
      else if (*p >= '@')
        *cp = ((*p)&037);
      else
        return 0;
      ++p;
    }
  else if (*p == '\\' && *++p <= '7' && *p >= '0')
    {
      *cp = 0;
      do
        *cp = *cp * 8 + *p - '0';
      while (*++p <= '7' && *p >= '0');
    }
  else
    *cp = *p++;
  return p;
}

static int
ParseEscape(p)
char *p;
{
  unsigned char buf[2];

  if (*p == 0)
    SetEscape((struct acluser *)0, -1, -1);
  else
    {
      if ((p = ParseChar(p, (char *)buf)) == ((void*)0) ||
   (p = ParseChar(p, (char *)buf+1)) == ((void*)0) || *p)
 return -1;
      SetEscape((struct acluser *)0, buf[0], buf[1]);
    }
  return 0;
}
