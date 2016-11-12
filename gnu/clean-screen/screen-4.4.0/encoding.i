# 1 "encoding.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "encoding.c" 2
# 24 "encoding.c"
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
# 25 "encoding.c" 2

# 1 "./config.h" 1
# 27 "encoding.c" 2
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
# 1103 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1113 "/usr/include/unistd.h" 3 4
extern int lockf64 (int __fd, int __cmd, __off64_t __len) ;
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
# 28 "encoding.c" 2
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
# 29 "encoding.c" 2



extern unsigned char *null;
extern struct display *display, *displays;
extern struct layer *flayer;

extern char *screenencodings;


extern int cjkwidth;


static int encmatch (char *, char *);

static int recode_char (int, int, int);
static int recode_char_to_encoding (int, int);
static void comb_tofront (int, int);

static int recode_char_dw (int, int *, int, int);
static int recode_char_dw_to_encoding (int, int *, int);



struct encoding {
  char *name;
  char *charsets;
  int deffont;
  int usegr;
  int noc1;
  char *fontlist;
};





struct encoding encodings[] = {
  { "C", 0, 0, 0, 0, 0 },
  { "eucJP", "B\002I\00401", 0, 1, 0, "\002\004I" },
  { "SJIS", "BIBB01", 0, 1, 1, "\002I" },
  { "eucKR", "B\003BB01", 0, 1, 0, "\003" },
  { "eucCN", "B\001BB01", 0, 1, 0, "\001" },
  { "Big5", "B\030BB01", 0, 1, 0, "\030" },
  { "KOI8-R", 0, 0x80|'!', 0, 1, 0 },
  { "CP1251", 0, 0x80|'?', 0, 1, 0 },
  { "UTF-8", 0, -1, 0, 0, 0 },
  { "ISO8859-2", 0, 0x80|'B', 0, 0, 0 },
  { "ISO8859-3", 0, 0x80|'C', 0, 0, 0 },
  { "ISO8859-4", 0, 0x80|'D', 0, 0, 0 },
  { "ISO8859-5", 0, 0x80|'L', 0, 0, 0 },
  { "ISO8859-6", 0, 0x80|'G', 0, 0, 0 },
  { "ISO8859-7", 0, 0x80|'F', 0, 0, 0 },
  { "ISO8859-8", 0, 0x80|'H', 0, 0, 0 },
  { "ISO8859-9", 0, 0x80|'M', 0, 0, 0 },
  { "ISO8859-10", 0, 0x80|'V', 0, 0, 0 },
  { "ISO8859-15", 0, 0x80|'b', 0, 0, 0 },
  { "jis", 0, 0, 0, 0, "\002\004I" },
  { "GBK", "B\031BB01", 0x80|'b', 1, 1, "\031" }
};



static unsigned short builtin_tabs[][2] = {
  { 0x30, 0 },
  { 0x005f, 0x25AE },
  { 0x0060, 0x25C6 },
  { 0x0061, 0x2592 },
  { 0x0062, 0x2409 },
  { 0x0063, 0x240C },
  { 0x0064, 0x240D },
  { 0x0065, 0x240A },
  { 0x0066, 0x00B0 },
  { 0x0067, 0x00B1 },
  { 0x0068, 0x2424 },
  { 0x0069, 0x240B },
  { 0x006a, 0x2518 },
  { 0x006b, 0x2510 },
  { 0x006c, 0x250C },
  { 0x006d, 0x2514 },
  { 0x006e, 0x253C },
  { 0x006f, 0x23BA },
  { 0x0070, 0x23BB },
  { 0x0071, 0x2500 },
  { 0x0072, 0x23BC },
  { 0x0073, 0x23BD },
  { 0x0074, 0x251C },
  { 0x0075, 0x2524 },
  { 0x0076, 0x2534 },
  { 0x0077, 0x252C },
  { 0x0078, 0x2502 },
  { 0x0079, 0x2264 },
  { 0x007a, 0x2265 },
  { 0x007b, 0x03C0 },
  { 0x007c, 0x2260 },
  { 0x007d, 0x00A3 },
  { 0x007e, 0x00B7 },
  { 0, 0},

  { 0x34, 0 },
  { 0x0023, 0x00a3 },
  { 0x0040, 0x00be },
  { 0x005b, 0x00ff },
  { 0x005c, 0x00bd },
  { 0x005d, 0x007c },
  { 0x007b, 0x00a8 },
  { 0x007c, 0x0066 },
  { 0x007d, 0x00bc },
  { 0x007e, 0x00b4 },
  { 0, 0},

  { 0x35, 0 },
  { 0x005b, 0x00c4 },
  { 0x005c, 0x00d6 },
  { 0x005d, 0x00c5 },
  { 0x005e, 0x00dc },
  { 0x0060, 0x00e9 },
  { 0x007b, 0x00e4 },
  { 0x007c, 0x00f6 },
  { 0x007d, 0x00e5 },
  { 0x007e, 0x00fc },
  { 0, 0},

  { 0x36, 0 },
  { 0x0040, 0x00c4 },
  { 0x005b, 0x00c6 },
  { 0x005c, 0x00d8 },
  { 0x005d, 0x00c5 },
  { 0x005e, 0x00dc },
  { 0x0060, 0x00e4 },
  { 0x007b, 0x00e6 },
  { 0x007c, 0x00f8 },
  { 0x007d, 0x00e5 },
  { 0x007e, 0x00fc },
  { 0, 0},

  { 0x37, 0 },
  { 0x0040, 0x00c9 },
  { 0x005b, 0x00c4 },
  { 0x005c, 0x00d6 },
  { 0x005d, 0x00c5 },
  { 0x005e, 0x00dc },
  { 0x0060, 0x00e9 },
  { 0x007b, 0x00e4 },
  { 0x007c, 0x00f6 },
  { 0x007d, 0x00e5 },
  { 0x007e, 0x00fc },
  { 0, 0},

  { 0x3d, 0},
  { 0x0023, 0x00f9 },
  { 0x0040, 0x00e0 },
  { 0x005b, 0x00e9 },
  { 0x005c, 0x00e7 },
  { 0x005d, 0x00ea },
  { 0x005e, 0x00ee },
  { 0x005f, 0x00e8 },
  { 0x0060, 0x00f4 },
  { 0x007b, 0x00e4 },
  { 0x007c, 0x00f6 },
  { 0x007d, 0x00fc },
  { 0x007e, 0x00fb },
  { 0, 0},

  { 0x41, 0},
  { 0x0023, 0x00a3 },
  { 0, 0},

  { 0x4b, 0},
  { 0x0040, 0x00a7 },
  { 0x005b, 0x00c4 },
  { 0x005c, 0x00d6 },
  { 0x005d, 0x00dc },
  { 0x007b, 0x00e4 },
  { 0x007c, 0x00f6 },
  { 0x007d, 0x00fc },
  { 0x007e, 0x00df },
  { 0, 0},

  { 0x51, 0},
  { 0x0040, 0x00e0 },
  { 0x005b, 0x00e2 },
  { 0x005c, 0x00e7 },
  { 0x005d, 0x00ea },
  { 0x005e, 0x00ee },
  { 0x0060, 0x00f4 },
  { 0x007b, 0x00e9 },
  { 0x007c, 0x00f9 },
  { 0x007d, 0x00e8 },
  { 0x007e, 0x00fb },
  { 0, 0},

  { 0x52, 0},
  { 0x0023, 0x00a3 },
  { 0x0040, 0x00e0 },
  { 0x005b, 0x00b0 },
  { 0x005c, 0x00e7 },
  { 0x005d, 0x00a7 },
  { 0x007b, 0x00e9 },
  { 0x007c, 0x00f9 },
  { 0x007d, 0x00e8 },
  { 0x007e, 0x00a8 },
  { 0, 0},

  { 0x59, 0},
  { 0x0023, 0x00a3 },
  { 0x0040, 0x00a7 },
  { 0x005b, 0x00b0 },
  { 0x005c, 0x00e7 },
  { 0x005d, 0x00e9 },
  { 0x0060, 0x00f9 },
  { 0x007b, 0x00e0 },
  { 0x007c, 0x00f2 },
  { 0x007d, 0x00e8 },
  { 0x007e, 0x00ec },
  { 0, 0},

  { 0x5a, 0},
  { 0x0023, 0x00a3 },
  { 0x0040, 0x00a7 },
  { 0x005b, 0x00a1 },
  { 0x005c, 0x00d1 },
  { 0x005d, 0x00bf },
  { 0x007b, 0x00b0 },
  { 0x007c, 0x00f1 },
  { 0x007d, 0x00e7 },
  { 0, 0},

  { 0xe2, 0},
  { 0x00a4, 0x20ac },
  { 0x00a6, 0x0160 },
  { 0x00a8, 0x0161 },
  { 0x00b4, 0x017D },
  { 0x00b8, 0x017E },
  { 0x00bc, 0x0152 },
  { 0x00bd, 0x0153 },
  { 0x00be, 0x0178 },
  { 0, 0},

  { 0x4a, 0},
  { 0x005c, 0x00a5 },
  { 0x007e, 0x203e },
  { 0, 0},

  { 0x49, 0},
  { 0x0021, 0xff61 },
  { 0x005f|0x8000, 0xff9f },
  { 0, 0},

  { 0, 0}
};

struct recodetab
{
  unsigned short (*tab)[2];
  int flags;
};





static struct recodetab recodetabs[256];

void
InitBuiltinTabs()
{
  unsigned short (*p)[2];
  for (p = builtin_tabs; (*p)[0]; p++)
    {
      recodetabs[(*p)[0]].flags = 2;
      recodetabs[(*p)[0]].tab = p + 1;
      p++;
      while((*p)[0])
 p++;
    }
}

static int
recode_char(c, to_utf, font)
int c, to_utf, font;
{
  int f;
  unsigned short (*p)[2];

  if (to_utf)
    {
      if (c < 256)
 return c;
      f = (c >> 8) & 0xff;
      c &= 0xff;

      switch (f)
 {
   case 'C':
     f ^= ('C' ^ '5');
     break;
   case 'E':
     f ^= ('E' ^ '6');
     break;
   case 'H':
     f ^= ('H' ^ '7');
     break;
   default:
     break;
 }
      p = recodetabs[f].tab;
      if (p == 0 && recodetabs[f].flags == 0)
 {
   LoadFontTranslation(f, 0);
          p = recodetabs[f].tab;
 }
      if (p)
        for (; (*p)[0]; p++)
   {
     if ((p[0][0] & 0x8000) && (c <= (p[0][0] & 0x7fff)) && c >= p[-1][0])
       return c - p[-1][0] + p[-1][1];
     if ((*p)[0] == c)
       return (*p)[1];
   }
      return c & 0xff;
    }
  if (font == -1)
    {
      if (c < 256)
 return c;
      for (font = 32; font < 128; font++)
 {
   p = recodetabs[font].tab;
   if (p)
     for (; (*p)[1]; p++)
       {
  if ((p[0][0] & 0x8000) && c <= p[0][1] && c >= p[-1][1])
    return (c - p[-1][1] + p[-1][0]) | (font << 8);
         if ((*p)[1] == c)
    return (*p)[0] | (font << 8);
       }
 }
      return '?';
    }
  if (c < 128 && (font & 128) != 0)
    return c;
  if (font >= 32)
    {
      p = recodetabs[font].tab;
      if (p == 0 && recodetabs[font].flags == 0)
 {
   LoadFontTranslation(font, 0);
          p = recodetabs[font].tab;
 }
      if (p)
 for (; (*p)[1]; p++)
   {
     if ((p[0][0] & 0x8000) && c <= p[0][1] && c >= p[-1][1])
       return (c - p[-1][1] + p[-1][0]) | (font & 128 ? 0 : font << 8);
     if ((*p)[1] == c)
       return (*p)[0] | (font & 128 ? 0 : font << 8);
   }
    }
  return -1;
}



static int
recode_char_dw(c, c2p, to_utf, font)
int c, *c2p, to_utf, font;
{
  int f;
  unsigned short (*p)[2];

  if (to_utf)
    {
      f = (c >> 8) & 0xff;
      c = (c & 255) << 8 | (*c2p & 255);
      *c2p = 0xffff;
      p = recodetabs[f].tab;
      if (p == 0 && recodetabs[f].flags == 0)
 {
   LoadFontTranslation(f, 0);
          p = recodetabs[f].tab;
 }
      if (p)
        for (; (*p)[0]; p++)
   if ((*p)[0] == c)
     {

       if (!utf8_isdouble((*p)[1]))
  *c2p = ' ';

       return (*p)[1];
     }
      return 0xff1f;
    }
  if (font == -1)
    {
      for (font = 0; font < 030; font++)
 {
   p = recodetabs[font].tab;
   if (p)
     for (; (*p)[1]; p++)
       if ((*p)[1] == c)
  {
    *c2p = ((*p)[0] & 255) | font << 8 | 0x8000;
    return ((*p)[0] >> 8) | font << 8;
  }
 }
      *c2p = '?';
      return '?';
    }
  if (font < 32)
    {
      p = recodetabs[font].tab;
      if (p == 0 && recodetabs[font].flags == 0)
 {
   LoadFontTranslation(font, 0);
          p = recodetabs[font].tab;
 }
      if (p)
 for (; (*p)[1]; p++)
   if ((*p)[1] == c)
     {
       *c2p = ((*p)[0] & 255) | font << 8 | 0x8000;
       return ((*p)[0] >> 8) | font << 8;
     }
    }
  return -1;
}


static int
recode_char_to_encoding(c, encoding)
int c, encoding;
{
  char *fp;
  int x;

  if (encoding == 8)
    return recode_char(c, 1, -1);
  if ((fp = encodings[encoding].fontlist) != 0)
    while(*fp)
      if ((x = recode_char(c, 0, (unsigned char)*fp++)) != -1)
        return x;
  if (encodings[encoding].deffont)
    if ((x = recode_char(c, 0, encodings[encoding].deffont)) != -1)
      return x;
  return recode_char(c, 0, -1);
}


static int
recode_char_dw_to_encoding(c, c2p, encoding)
int c, *c2p, encoding;
{
  char *fp;
  int x;

  if (encoding == 8)
    return recode_char_dw(c, c2p, 1, -1);
  if ((fp = encodings[encoding].fontlist) != 0)
    while(*fp)
      if ((x = recode_char_dw(c, c2p, 0, (unsigned char)*fp++)) != -1)
        return x;
  if (encodings[encoding].deffont)
    if ((x = recode_char_dw(c, c2p, 0, encodings[encoding].deffont)) != -1)
      return x;
  return recode_char_dw(c, c2p, 0, -1);
}



struct mchar *
recode_mchar(mc, from, to)
struct mchar *mc;
int from, to;
{
  static struct mchar rmc;
  int c;

  do {} while (0);
  if (from == to || (from != 8 && to != 8))
    return mc;
  rmc = *mc;
  if (rmc.font == 0 && from != 8)
    rmc.font = encodings[from].deffont;
  if (rmc.font == 0)
    return mc;
  c = rmc.image | (rmc.font << 8);
  if (from == 8)
    c |= rmc.fontx << 16;

  if (rmc.mbcs)
    {
      int c2 = rmc.mbcs;
      c = recode_char_dw_to_encoding(c, &c2, to);
      rmc.mbcs = c2;
    }
  else

    c = recode_char_to_encoding(c, to);
  rmc.image = c & 255;
  rmc.font = c >> 8 & 255;
  if (to == 8)
    rmc.fontx = c >> 16 & 255;
  return &rmc;
}

struct mline *
recode_mline(ml, w, from, to)
struct mline *ml;
int w;
int from, to;
{
  static int maxlen;
  static int last;
  static struct mline rml[2], *rl;
  int i, c;

  if (from == to || (from != 8 && to != 8) || w == 0)
    return ml;
  if (ml->font == null && ml->fontx == null && encodings[from].deffont == 0)
    return ml;
  if (w > maxlen)
    {
      for (i = 0; i < 2; i++)
 {
   if (rml[i].image == 0)
     rml[i].image = malloc(w);
   else
     rml[i].image = realloc(rml[i].image, w);
   if (rml[i].font == 0)
     rml[i].font = malloc(w);
   else
     rml[i].font = realloc(rml[i].font, w);
   if (rml[i].fontx == 0)
     rml[i].fontx = malloc(w);
   else
     rml[i].fontx = realloc(rml[i].fontx, w);
   if (rml[i].image == 0 || rml[i].font == 0 || rml[i].fontx == 0)
     {
       maxlen = 0;
       return ml;
     }
 }
      maxlen = w;
    }

  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);

  rl = rml + last;
  rl->attr = ml->attr;

  rl->color = ml->color;




  for (i = 0; i < w; i++)
    {
      c = ml->image[i] | (ml->font[i] << 8);
      if (from == 8)
 c |= ml->fontx[i] << 16;
      if (from != 8 && c < 256)
 c |= encodings[from].deffont << 8;

      if ((from != 8 && (c & 0x1f00) != 0 && (c & 0xe000) == 0) || (from == 8 && utf8_isdouble(c)))
 {
   if (i + 1 == w)
     c = '?';
   else
     {
       int c2;
       i++;
       c2 = ml->image[i] | (ml->font[i] << 8);
       c = recode_char_dw_to_encoding(c, &c2, to);
       if (to == 8)
         rl->fontx[i - 1] = c >> 16 & 255;
       rl->font[i - 1] = c >> 8 & 255;
       rl->image[i - 1] = c & 255;
       c = c2;
     }
 }
      else

        c = recode_char_to_encoding(c, to);
      rl->image[i] = c & 255;
      rl->font[i] = c >> 8 & 255;
      if (to == 8)
        rl->fontx[i] = c >> 16 & 255;
    }
  last ^= 1;
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  for (i = 0; i < w; i++)
    do {} while (0);
  do {} while (0);
  return rl;
}

struct combchar {
  unsigned int c1;
  unsigned int c2;
  unsigned int next;
  unsigned int prev;
};
struct combchar **combchars;

void
AddUtf8(c)
int c;
{
  do {} while (0);
  if (c >= 0xd800 && c < 0xe000 && combchars && combchars[c - 0xd800])
    {
      AddUtf8(combchars[c - 0xd800]->c1);
      c = combchars[c - 0xd800]->c2;
    }
  if (c >= 0x10000)
    {
      if (c >= 0x200000)
 {
   do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ((c & 0x3000000) >> 12 ^ 0xf8); } while (0);
   c = (c & 0xffffff) ^ ((0xf0 ^ 0x80) << 18);
 }
      do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ((c & 0x1fc0000) >> 18 ^ 0xf0); } while (0);
      c = (c & 0x3ffff) ^ ((0xe0 ^ 0x80) << 12);
    }
  if (c >= 0x800)
    {
      do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ((c & 0x7f000) >> 12 ^ 0xe0); } while (0);
      c = (c & 0x0fff) ^ ((0xc0 ^ 0x80) << 6);
    }
  if (c >= 0x80)
    {
      do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = ((c & 0x1fc0) >> 6 ^ 0xc0); } while (0);
      c = (c & 0x3f) | 0x80;
    }
  do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (c); } while (0);
}

int
ToUtf8_comb(p, c)
char *p;
int c;
{
  int l;

  if (c >= 0xd800 && c < 0xe000 && combchars && combchars[c - 0xd800])
    {
      l = ToUtf8_comb(p, combchars[c - 0xd800]->c1);
      return l + ToUtf8(p ? p + l : 0, combchars[c - 0xd800]->c2);
    }
  return ToUtf8(p, c);
}

int
ToUtf8(p, c)
char *p;
int c;
{
  int l = 1;
  if (c >= 0x10000)
    {
      if (c >= 0x200000)
 {
   if (p)
     *p++ = (c & 0x3000000) >> 12 ^ 0xf8;
   l++;
   c = (c & 0xffffff) ^ ((0xf0 ^ 0x80) << 18);
 }
      if (p)
        *p++ = (c & 0x1fc0000) >> 18 ^ 0xf0;
      l++;
      c = (c & 0x3ffff) ^ ((0xe0 ^ 0x80) << 12);
    }
  if (c >= 0x800)
    {
      if (p)
 *p++ = (c & 0x7f000) >> 12 ^ 0xe0;
      l++;
      c = (c & 0x0fff) | 0x1000;
    }
  if (c >= 0x80)
    {
      if (p)
 *p++ = (c & 0x1fc0) >> 6 ^ 0xc0;
      l++;
      c = (c & 0x3f) | 0x80;
    }
  if (p)
    *p++ = c;
  return l;
}







int
FromUtf8(c, utf8charp)
int c, *utf8charp;
{
  int utf8char = *utf8charp;
  if (utf8char)
    {
      if ((c & 0xc0) != 0x80)
 {
   *utf8charp = 0;
   return -2;
 }
      else
 c = (c & 0x3f) | (utf8char << 6);
      if (!(utf8char & 0x40000000))
 {

   if ((c & 0x820823e0) == 0x80000000)
     c = 0xfdffffff;
   else if ((c & 0x020821f0) == 0x02000000)
     c = 0xfff7ffff;
   else if ((c & 0x000820f8) == 0x00080000)
     c = 0xffffd000;
   else if ((c & 0x0000207c) == 0x00002000)
     c = 0xffffff70;
 }
    }
  else
    {

      if (c >= 0xfe)
 c = 0xfffd;
      else if (c >= 0xfc)
 c = (c & 0x01) | 0xbffffffc;
      else if (c >= 0xf8)
 c = (c & 0x03) | 0xbfffff00;
      else if (c >= 0xf0)
 c = (c & 0x07) | 0xbfffc000;
      else if (c >= 0xe0)
 c = (c & 0x0f) | 0xbff00000;
      else if (c >= 0xc2)
 c = (c & 0x1f) | 0xfc000000;
      else if (c >= 0xc0)
 c = 0xfdffffff;
      else if (c >= 0x80)
 c = 0xfffd;
    }
  *utf8charp = utf8char = (c & 0x80000000) ? c : 0;
  if (utf8char)
    return -1;




  if (c & 0xff800000)
    c = 0xfffd;

  if (c >= 0xd800 && (c <= 0xdfff || c == 0xfffe || c == 0xffff))
    c = 0xfffd;
  return c;
}


void
WinSwitchEncoding(p, encoding)
struct win *p;
int encoding;
{
  int i, j, c;
  struct mline *ml;
  struct display *d;
  struct canvas *cv;
  struct layer *oldflayer;

  if ((p->w_layer.l_encoding == 8) == (encoding == 8))
    {
      p->w_layer.l_encoding = encoding;
      return;
    }
  oldflayer = flayer;
  for (d = displays; d; d = d->d_next)
    for (cv = d->d_cvlist; cv; cv = cv->c_next)
      if (p == ((struct win *)(cv->c_layer)->l_bottom->l_data))
 {
   flayer = cv->c_layer;
   while(flayer->l_next)
     {
       if (oldflayer == flayer)
  oldflayer = flayer->l_next;
       ExitOverlayPage();
     }
 }
  flayer = oldflayer;
  for (j = 0; j < p->w_layer.l_height + p->w_histheight; j++)
    {

      ml = j < p->w_layer.l_height ? &p->w_mlines[j] : &p->w_hlines[j - p->w_layer.l_height];



      if (ml->font == null && ml->fontx == 0 && encodings[p->w_layer.l_encoding].deffont == 0)
 continue;
      for (i = 0; i < p->w_layer.l_width; i++)
 {
   c = ml->image[i] | (ml->font[i] << 8);
   if (p->w_layer.l_encoding == 8)
     c |= ml->fontx[i] << 16;
   if (p->w_layer.l_encoding != 8 && c < 256)
     c |= encodings[p->w_layer.l_encoding].deffont << 8;
   if (c < 256)
     continue;
   if (ml->font == null)
     {
       if ((ml->font = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
  {
    ml->font = null;
    break;
  }
     }

   if ((p->w_layer.l_encoding != 8 && (c & 0x1f00) != 0 && (c & 0xe000) == 0) || (p->w_layer.l_encoding == 8 && utf8_isdouble(c)))
     {
       if (i + 1 == p->w_layer.l_width)
  c = '?';
       else
  {
    int c2;
    i++;
    c2 = ml->image[i] | (ml->font[i] << 8) | (ml->fontx[i] << 16);
    c = recode_char_dw_to_encoding(c, &c2, encoding);
    if (encoding == 8)
      {
        if (c > 0x10000 && ml->fontx == null)
   {
     if ((ml->fontx = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
       {
         ml->fontx = null;
         break;
       }
   }
        ml->fontx[i - 1] = c >> 16 & 255;
      }
    else
      ml->fontx = null;
    ml->font[i - 1] = c >> 8 & 255;
    ml->image[i - 1] = c & 255;
    c = c2;
  }
     }
   else

     c = recode_char_to_encoding(c, encoding);
   ml->image[i] = c & 255;
   ml->font[i] = c >> 8 & 255;
   if (encoding == 8)
     {
       if (c > 0x10000 && ml->fontx == null)
  {
    if ((ml->fontx = (unsigned char *)calloc(p->w_layer.l_width + 1, 1)) == 0)
      {
        ml->fontx = null;
        break;
      }
  }
       ml->fontx[i] = c >> 16 & 255;
     }
   else
     ml->fontx = null;
 }
    }
  p->w_layer.l_encoding = encoding;
  return;
}


struct interval {
  int first;
  int last;
};


static int bisearch(int ucs, const struct interval *table, int max) {
  int min = 0;
  int mid;

  if (ucs < table[0].first || ucs > table[max].last)
    return 0;
  while (max >= min) {
    mid = (min + max) / 2;
    if (ucs > table[mid].last)
      min = mid + 1;
    else if (ucs < table[mid].first)
      max = mid - 1;
    else
      return 1;
  }

  return 0;
}

int
utf8_isdouble(c)
int c;
{


  static const struct interval ambiguous[] = {
    { 0x00A1, 0x00A1 }, { 0x00A4, 0x00A4 }, { 0x00A7, 0x00A8 },
    { 0x00AA, 0x00AA }, { 0x00AE, 0x00AE }, { 0x00B0, 0x00B4 },
    { 0x00B6, 0x00BA }, { 0x00BC, 0x00BF }, { 0x00C6, 0x00C6 },
    { 0x00D0, 0x00D0 }, { 0x00D7, 0x00D8 }, { 0x00DE, 0x00E1 },
    { 0x00E6, 0x00E6 }, { 0x00E8, 0x00EA }, { 0x00EC, 0x00ED },
    { 0x00F0, 0x00F0 }, { 0x00F2, 0x00F3 }, { 0x00F7, 0x00FA },
    { 0x00FC, 0x00FC }, { 0x00FE, 0x00FE }, { 0x0101, 0x0101 },
    { 0x0111, 0x0111 }, { 0x0113, 0x0113 }, { 0x011B, 0x011B },
    { 0x0126, 0x0127 }, { 0x012B, 0x012B }, { 0x0131, 0x0133 },
    { 0x0138, 0x0138 }, { 0x013F, 0x0142 }, { 0x0144, 0x0144 },
    { 0x0148, 0x014B }, { 0x014D, 0x014D }, { 0x0152, 0x0153 },
    { 0x0166, 0x0167 }, { 0x016B, 0x016B }, { 0x01CE, 0x01CE },
    { 0x01D0, 0x01D0 }, { 0x01D2, 0x01D2 }, { 0x01D4, 0x01D4 },
    { 0x01D6, 0x01D6 }, { 0x01D8, 0x01D8 }, { 0x01DA, 0x01DA },
    { 0x01DC, 0x01DC }, { 0x0251, 0x0251 }, { 0x0261, 0x0261 },
    { 0x02C4, 0x02C4 }, { 0x02C7, 0x02C7 }, { 0x02C9, 0x02CB },
    { 0x02CD, 0x02CD }, { 0x02D0, 0x02D0 }, { 0x02D8, 0x02DB },
    { 0x02DD, 0x02DD }, { 0x02DF, 0x02DF }, { 0x0391, 0x03A1 },
    { 0x03A3, 0x03A9 }, { 0x03B1, 0x03C1 }, { 0x03C3, 0x03C9 },
    { 0x0401, 0x0401 }, { 0x0410, 0x044F }, { 0x0451, 0x0451 },
    { 0x2010, 0x2010 }, { 0x2013, 0x2016 }, { 0x2018, 0x2019 },
    { 0x201C, 0x201D }, { 0x2020, 0x2022 }, { 0x2024, 0x2027 },
    { 0x2030, 0x2030 }, { 0x2032, 0x2033 }, { 0x2035, 0x2035 },
    { 0x203B, 0x203B }, { 0x203E, 0x203E }, { 0x2074, 0x2074 },
    { 0x207F, 0x207F }, { 0x2081, 0x2084 }, { 0x20AC, 0x20AC },
    { 0x2103, 0x2103 }, { 0x2105, 0x2105 }, { 0x2109, 0x2109 },
    { 0x2113, 0x2113 }, { 0x2116, 0x2116 }, { 0x2121, 0x2122 },
    { 0x2126, 0x2126 }, { 0x212B, 0x212B }, { 0x2153, 0x2154 },
    { 0x215B, 0x215E }, { 0x2160, 0x216B }, { 0x2170, 0x2179 },
    { 0x2190, 0x2199 }, { 0x21B8, 0x21B9 }, { 0x21D2, 0x21D2 },
    { 0x21D4, 0x21D4 }, { 0x21E7, 0x21E7 }, { 0x2200, 0x2200 },
    { 0x2202, 0x2203 }, { 0x2207, 0x2208 }, { 0x220B, 0x220B },
    { 0x220F, 0x220F }, { 0x2211, 0x2211 }, { 0x2215, 0x2215 },
    { 0x221A, 0x221A }, { 0x221D, 0x2220 }, { 0x2223, 0x2223 },
    { 0x2225, 0x2225 }, { 0x2227, 0x222C }, { 0x222E, 0x222E },
    { 0x2234, 0x2237 }, { 0x223C, 0x223D }, { 0x2248, 0x2248 },
    { 0x224C, 0x224C }, { 0x2252, 0x2252 }, { 0x2260, 0x2261 },
    { 0x2264, 0x2267 }, { 0x226A, 0x226B }, { 0x226E, 0x226F },
    { 0x2282, 0x2283 }, { 0x2286, 0x2287 }, { 0x2295, 0x2295 },
    { 0x2299, 0x2299 }, { 0x22A5, 0x22A5 }, { 0x22BF, 0x22BF },
    { 0x2312, 0x2312 }, { 0x2460, 0x24E9 }, { 0x24EB, 0x254B },
    { 0x2550, 0x2573 }, { 0x2580, 0x258F }, { 0x2592, 0x2595 },
    { 0x25A0, 0x25A1 }, { 0x25A3, 0x25A9 }, { 0x25B2, 0x25B3 },
    { 0x25B6, 0x25B7 }, { 0x25BC, 0x25BD }, { 0x25C0, 0x25C1 },
    { 0x25C6, 0x25C8 }, { 0x25CB, 0x25CB }, { 0x25CE, 0x25D1 },
    { 0x25E2, 0x25E5 }, { 0x25EF, 0x25EF }, { 0x2605, 0x2606 },
    { 0x2609, 0x2609 }, { 0x260E, 0x260F }, { 0x2614, 0x2615 },
    { 0x261C, 0x261C }, { 0x261E, 0x261E }, { 0x2640, 0x2640 },
    { 0x2642, 0x2642 }, { 0x2660, 0x2661 }, { 0x2663, 0x2665 },
    { 0x2667, 0x266A }, { 0x266C, 0x266D }, { 0x266F, 0x266F },
    { 0x273D, 0x273D }, { 0x2776, 0x277F }, { 0xE000, 0xF8FF },
    { 0xFFFD, 0xFFFD }, { 0xF0000, 0xFFFFD }, { 0x100000, 0x10FFFD }
  };

  return ((c >= 0x1100 &&
           (c <= 0x115f ||
            c == 0x2329 || c == 0x232a ||
            (c >= 0x2e80 && c <= 0xa4cf &&
             c != 0x303f) ||
            (c >= 0xac00 && c <= 0xd7a3) ||
            (c >= 0xf900 && c <= 0xfaff) ||
            (c >= 0xfe30 && c <= 0xfe6f) ||
            (c >= 0xff00 && c <= 0xff60) ||
            (c >= 0xffe0 && c <= 0xffe6) ||
            (c >= 0x20000 && c <= 0x2fffd) ||
            (c >= 0x30000 && c <= 0x3fffd))) ||
          (cjkwidth &&
           bisearch(c, ambiguous,
             sizeof(ambiguous) / sizeof(struct interval) - 1)));
}


int
utf8_iscomb(c)
int c;
{

  static const struct interval combining[] = {
    { 0x0300, 0x036F }, { 0x0483, 0x0486 }, { 0x0488, 0x0489 },
    { 0x0591, 0x05BD }, { 0x05BF, 0x05BF }, { 0x05C1, 0x05C2 },
    { 0x05C4, 0x05C5 }, { 0x05C7, 0x05C7 }, { 0x0600, 0x0603 },
    { 0x0610, 0x0615 }, { 0x064B, 0x065E }, { 0x0670, 0x0670 },
    { 0x06D6, 0x06E4 }, { 0x06E7, 0x06E8 }, { 0x06EA, 0x06ED },
    { 0x070F, 0x070F }, { 0x0711, 0x0711 }, { 0x0730, 0x074A },
    { 0x07A6, 0x07B0 }, { 0x07EB, 0x07F3 }, { 0x0901, 0x0902 },
    { 0x093C, 0x093C }, { 0x0941, 0x0948 }, { 0x094D, 0x094D },
    { 0x0951, 0x0954 }, { 0x0962, 0x0963 }, { 0x0981, 0x0981 },
    { 0x09BC, 0x09BC }, { 0x09C1, 0x09C4 }, { 0x09CD, 0x09CD },
    { 0x09E2, 0x09E3 }, { 0x0A01, 0x0A02 }, { 0x0A3C, 0x0A3C },
    { 0x0A41, 0x0A42 }, { 0x0A47, 0x0A48 }, { 0x0A4B, 0x0A4D },
    { 0x0A70, 0x0A71 }, { 0x0A81, 0x0A82 }, { 0x0ABC, 0x0ABC },
    { 0x0AC1, 0x0AC5 }, { 0x0AC7, 0x0AC8 }, { 0x0ACD, 0x0ACD },
    { 0x0AE2, 0x0AE3 }, { 0x0B01, 0x0B01 }, { 0x0B3C, 0x0B3C },
    { 0x0B3F, 0x0B3F }, { 0x0B41, 0x0B43 }, { 0x0B4D, 0x0B4D },
    { 0x0B56, 0x0B56 }, { 0x0B82, 0x0B82 }, { 0x0BC0, 0x0BC0 },
    { 0x0BCD, 0x0BCD }, { 0x0C3E, 0x0C40 }, { 0x0C46, 0x0C48 },
    { 0x0C4A, 0x0C4D }, { 0x0C55, 0x0C56 }, { 0x0CBC, 0x0CBC },
    { 0x0CBF, 0x0CBF }, { 0x0CC6, 0x0CC6 }, { 0x0CCC, 0x0CCD },
    { 0x0CE2, 0x0CE3 }, { 0x0D41, 0x0D43 }, { 0x0D4D, 0x0D4D },
    { 0x0DCA, 0x0DCA }, { 0x0DD2, 0x0DD4 }, { 0x0DD6, 0x0DD6 },
    { 0x0E31, 0x0E31 }, { 0x0E34, 0x0E3A }, { 0x0E47, 0x0E4E },
    { 0x0EB1, 0x0EB1 }, { 0x0EB4, 0x0EB9 }, { 0x0EBB, 0x0EBC },
    { 0x0EC8, 0x0ECD }, { 0x0F18, 0x0F19 }, { 0x0F35, 0x0F35 },
    { 0x0F37, 0x0F37 }, { 0x0F39, 0x0F39 }, { 0x0F71, 0x0F7E },
    { 0x0F80, 0x0F84 }, { 0x0F86, 0x0F87 }, { 0x0F90, 0x0F97 },
    { 0x0F99, 0x0FBC }, { 0x0FC6, 0x0FC6 }, { 0x102D, 0x1030 },
    { 0x1032, 0x1032 }, { 0x1036, 0x1037 }, { 0x1039, 0x1039 },
    { 0x1058, 0x1059 }, { 0x1160, 0x11FF }, { 0x135F, 0x135F },
    { 0x1712, 0x1714 }, { 0x1732, 0x1734 }, { 0x1752, 0x1753 },
    { 0x1772, 0x1773 }, { 0x17B4, 0x17B5 }, { 0x17B7, 0x17BD },
    { 0x17C6, 0x17C6 }, { 0x17C9, 0x17D3 }, { 0x17DD, 0x17DD },
    { 0x180B, 0x180D }, { 0x18A9, 0x18A9 }, { 0x1920, 0x1922 },
    { 0x1927, 0x1928 }, { 0x1932, 0x1932 }, { 0x1939, 0x193B },
    { 0x1A17, 0x1A18 }, { 0x1B00, 0x1B03 }, { 0x1B34, 0x1B34 },
    { 0x1B36, 0x1B3A }, { 0x1B3C, 0x1B3C }, { 0x1B42, 0x1B42 },
    { 0x1B6B, 0x1B73 }, { 0x1DC0, 0x1DCA }, { 0x1DFE, 0x1DFF },
    { 0x200B, 0x200F }, { 0x202A, 0x202E }, { 0x2060, 0x2063 },
    { 0x206A, 0x206F }, { 0x20D0, 0x20EF }, { 0x302A, 0x302F },
    { 0x3099, 0x309A }, { 0xA806, 0xA806 }, { 0xA80B, 0xA80B },
    { 0xA825, 0xA826 }, { 0xFB1E, 0xFB1E }, { 0xFE00, 0xFE0F },
    { 0xFE20, 0xFE23 }, { 0xFEFF, 0xFEFF }, { 0xFFF9, 0xFFFB },
    { 0x10A01, 0x10A03 }, { 0x10A05, 0x10A06 }, { 0x10A0C, 0x10A0F },
    { 0x10A38, 0x10A3A }, { 0x10A3F, 0x10A3F }, { 0x1D167, 0x1D169 },
    { 0x1D173, 0x1D182 }, { 0x1D185, 0x1D18B }, { 0x1D1AA, 0x1D1AD },
    { 0x1D242, 0x1D244 }, { 0xE0001, 0xE0001 }, { 0xE0020, 0xE007F },
    { 0xE0100, 0xE01EF }
  };

  return bisearch(c, combining, sizeof(combining) / sizeof(struct interval) - 1);
}

static void
comb_tofront(root, i)
int root, i;
{
  for (;;)
    {
      do {} while (0);
      combchars[combchars[i]->prev]->next = combchars[i]->next;
      combchars[combchars[i]->next]->prev = combchars[i]->prev;
      combchars[i]->next = combchars[root]->next;
      combchars[i]->prev = root;
      combchars[combchars[root]->next]->prev = i;
      combchars[root]->next = i;
      i = combchars[i]->c1;
      if (i < 0xd800 || i >= 0xe000)
 return;
      i -= 0xd800;
    }
}

void
utf8_handle_comb(c, mc)
int c;
struct mchar *mc;
{
  int root, i, c1;
  int isdouble;

  c1 = mc->image | (mc->font << 8) | mc->fontx << 16;
  isdouble = c1 >= 0x1100 && utf8_isdouble(c1);
  if (!combchars)
    {
      combchars = (struct combchar **)calloc(0x802, sizeof(struct combchar *));
      if (!combchars)
 return;
      combchars[0x800] = (struct combchar *)malloc(sizeof(struct combchar));
      combchars[0x801] = (struct combchar *)malloc(sizeof(struct combchar));
      if (!combchars[0x800] || !combchars[0x801])
 {
   if (combchars[0x800])
     free(combchars[0x800]);
   if (combchars[0x801])
     free(combchars[0x801]);
   free(combchars);
   return;
 }
      combchars[0x800]->c1 = 0x000;
      combchars[0x800]->c2 = 0x700;
      combchars[0x800]->next = 0x800;
      combchars[0x800]->prev = 0x800;
      combchars[0x801]->c1 = 0x700;
      combchars[0x801]->c2 = 0x800;
      combchars[0x801]->next = 0x801;
      combchars[0x801]->prev = 0x801;
    }
  root = isdouble ? 0x801 : 0x800;
  for (i = combchars[root]->c1; i < combchars[root]->c2; i++)
    {
      if (!combchars[i])
 break;
      if (combchars[i]->c1 == c1 && combchars[i]->c2 == c)
 break;
    }
  if (i == combchars[root]->c2)
    {

      if (c1 >= 0xd800 && c1 < 0xe000)
        comb_tofront(root, c1 - 0xd800);
      i = combchars[root]->prev;
      if (c1 == i + 0xd800)
 {

   do {} while (0);
   mc->image = '?';
   mc->font = 0;
   return;
 }

    }
  else if (!combchars[i])
    {
      combchars[i] = (struct combchar *)malloc(sizeof(struct combchar));
      if (!combchars[i])
 return;
      combchars[i]->prev = i;
      combchars[i]->next = i;
    }
  combchars[i]->c1 = c1;
  combchars[i]->c2 = c;
  mc->image = i & 0xff;
  mc->font = (i >> 8) + 0xd8;
  mc->fontx = 0;
  do {} while (0);
  comb_tofront(root, i);
}
# 1208 "encoding.c"
static int
encmatch(s1, s2)
char *s1;
char *s2;
{
  int c1, c2;
  do
    {
      c1 = (unsigned char)*s1;
      if (c1 >= 'A' && c1 <= 'Z')
 c1 += 'a' - 'A';
      if (!(c1 >= 'a' && c1 <= 'z') && !(c1 >= '0' && c1 <= '9'))
 {
   s1++;
   continue;
 }
      c2 = (unsigned char)*s2;
      if (c2 >= 'A' && c2 <= 'Z')
 c2 += 'a' - 'A';
      if (!(c2 >= 'a' && c2 <= 'z') && !(c2 >= '0' && c2 <= '9'))
 {
   s2++;
   continue;
 }
      if (c1 != c2)
 return 0;
      s1++;
      s2++;
    }
  while(c1);
  return 1;
}

int
FindEncoding(name)
char *name;
{
  int encoding;

  do {} while (0);
  if (name == 0 || *name == 0)
    return 0;
  if (encmatch(name, "euc"))
    name = "eucJP";
  if (encmatch(name, "off") || encmatch(name, "iso8859-1"))
    return 0;




  for (encoding = 0; encoding < (int)(sizeof(encodings)/sizeof(*encodings)); encoding++)
    if (encmatch(name, encodings[encoding].name))
      {

 LoadFontTranslationsForEncoding(encoding);

        return encoding;
      }
  return -1;
}

char *
EncodingName(encoding)
int encoding;
{
  if (encoding >= (int)(sizeof(encodings)/sizeof(*encodings)))
    return 0;
  return encodings[encoding].name;
}

int
EncodingDefFont(encoding)
int encoding;
{
  return encodings[encoding].deffont;
}

void
ResetEncoding(p)
struct win *p;
{
  char *c;
  int encoding = p->w_layer.l_encoding;

  c = encodings[encoding].charsets;
  if (c)
    SetCharsets(p, c);

  LoadFontTranslationsForEncoding(encoding);

  if (encodings[encoding].usegr)
    {
      p->w_gr = 2;
      p->w_FontE = encodings[encoding].charsets[1];
    }
  else
    p->w_FontE = 0;
  if (encodings[encoding].noc1)
    p->w_c1 = 0;
}
# 1318 "encoding.c"
int
DecodeChar(c, encoding, statep)
int c;
int encoding;
int *statep;
{
  int t;

  do {} while (0);

  if (encoding == 8)
    {
      c = FromUtf8(c, statep);
      if (c >= 0x10000)
 c = (c & 0x7f0000) << 8 | (c & 0xffff);
      return c;
    }

  if (encoding == 2)
    {
      if (!*statep)
 {
   if ((0x81 <= c && c <= 0x9f) || (0xe0 <= c && c <= 0xef))
     {
       *statep = c;
       return -1;
     }
   if (c < 0x80)
     return c;
   return c | ('I' << 16);
 }
      t = c;
      c = *statep;
      *statep = 0;
      if (0x40 <= t && t <= 0xfc && t != 0x7f)
 {
   if (c <= 0x9f)
     c = (c - 0x81) * 2 + 0x21;
   else
     c = (c - 0xc1) * 2 + 0x21;
   if (t <= 0x7e)
     t -= 0x1f;
   else if (t <= 0x9e)
     t -= 0x20;
   else
      t -= 0x7e, c++;
   return (c << 8) | t | (('B' & 037) << 16);
 }
      return t;
    }
  if (encoding == 1 || encoding == 3 || encoding == 4)
    {
      if (!*statep)
 {
   if (c & 0x80)
     {
       *statep = c;
       return -1;
     }
   return c;
 }
      t = c;
      c = *statep;
      *statep = 0;
      if (encoding == 1)
 {
   if (c == 0x8e)
     return t | ('I' << 16);
   if (c == 0x8f)
     {
       *statep = t | (('D' & 037) << 8);
       return -1;
     }
 }
      c &= 0xff7f;
      t &= 0x7f;
      c = c << 8 | t;
      if (encoding == 3)
 return c | (3 << 16);
      if (encoding == 4)
 return c | (1 << 16);
      if (c & (('D' & 037) << 16))
        return c;
      else
        return c | (('B' & 037) << 16);
    }
  if (encoding == 5 || encoding == 20)
    {
      if (!*statep)
 {
   if (c & 0x80)
     {
       if (encoding == 20 && c == 0x80)
  return 0xa4 | (('b'|0x80) << 16);
       *statep = c;
       return -1;
     }
   return c;
 }
      t = c;
      c = *statep;
      *statep = 0;
      c &= 0x7f;
      return c << 8 | t | (encoding == 5 ? 030 << 16 : 031 << 16);
    }
  return c | (encodings[encoding].deffont << 16);
}

int
EncodeChar(bp, c, encoding, fontp)
char *bp;
int c;
int encoding;
int *fontp;
{
  int t, f, l;

  do {} while (0);
  if (c == -1 && fontp)
    {
      if (*fontp == 0)
 return 0;
      if (bp)
 {
   *bp++ = 033;
   *bp++ = '(';
   *bp++ = 'B';
 }
      return 3;
    }
  f = (c >> 16) & 0xff;


  if (encoding == 8)
    {
      if (f)
 {

   if (((f) && ((f) & 0x60) == 0))
     {
       int c2 = c & 0xff;
       c = (c >> 8 & 0xff) | (f << 8);
       c = recode_char_dw_to_encoding(c, &c2, encoding);
     }
   else

     {
       c = (c & 0xff) | (f << 8);
       c = recode_char_to_encoding(c, encoding);
     }
        }
      return ToUtf8(bp, c);
    }
  if (f == 0 && (c & 0x7f00ff00) != 0)
    {
      if (c >= 0x10000)
 c = (c & 0x7f0000) >> 8 | (c & 0xffff);

      if (utf8_isdouble(c))
 {
   int c2 = 0xffff;
   c = recode_char_dw_to_encoding(c, &c2, encoding);
   c = (c << 8) | (c2 & 0xff);
 }
      else

 {
   c = recode_char_to_encoding(c, encoding);
   c = ((c & 0xff00) << 8) | (c & 0xff);
 }
      do {} while (0);
      f = c >> 16;
    }

  if (f & 0x80)
    f = 0;

  if (encoding == 2)
    {
      if (f == 'I')
        c = (c & 0xff) | 0x80;
      else if (f == ('B' & 037))
 {
   if (!bp)
     return 2;
   t = c & 0xff;
   c = (c >> 8) & 0xff;
   t += (c & 1) ? ((t <= 0x5f) ? 0x1f : 0x20) : 0x7e;
   c = (c - 0x21) / 2 + ((c < 0x5f) ? 0x81 : 0xc1);
   *bp++ = c;
   *bp++ = t;
   return 2;
 }
    }
  if (encoding == 1)
    {
      if (f == 'I')
 {
   if (bp)
     {
       *bp++ = 0x8e;
       *bp++ = c;
     }
   return 2;
 }
      if (f == ('B' & 037))
 {
   if (bp)
     {
       *bp++ = (c >> 8) | 0x80;
       *bp++ = c | 0x80;
     }
   return 2;
 }
      if (f == ('D' & 037))
 {
   if (bp)
     {
       *bp++ = 0x8f;
       *bp++ = c >> 8;
       *bp++ = c;
     }
   return 3;
 }
    }
  if ((encoding == 3 && f == 3) || (encoding == 4 && f == 1))
    {
      if (bp)
 {
   *bp++ = (c >> 8) | 0x80;
   *bp++ = c | 0x80;
 }
      return 2;
    }
  if ((encoding == 5 && f == 030) || (encoding == 20 && f == 031))
    {
      if (bp)
 {
   *bp++ = (c >> 8) | 0x80;
   *bp++ = c;
 }
      return 2;
    }
  if (encoding == 20 && f == 0 && c == 0xa4)
    c = 0x80;

  l = 0;
  if (fontp && f != *fontp)
    {
      *fontp = f;
      if (f && f < ' ')
 {
   if (bp)
    {
      *bp++ = 033;
      *bp++ = '$';
      if (f > 2)
        *bp++ = '(';
      *bp++ = '@' + f;
    }
   l += f > 2 ? 4 : 3;
 }
      else if (f < 128)
 {
   if (f == 0)
     f = 'B';
   if (bp)
     {
       *bp++ = 033;
       *bp++ = '(';
       *bp++ = f;
     }
   l += 3;
 }
    }
  if (c & 0xff00)
    {
      if (bp)
 *bp++ = c >> 8;
      l++;
    }
  if (bp)
    *bp++ = c;
  return l + 1;
}

int
CanEncodeFont(encoding, f)
int encoding, f;
{
  switch(encoding)
    {

    case 8:
      return 1;

    case 2:
      return f == ('B' & 037) || f == 'I';
    case 1:
      return f == ('B' & 037) || f == 'I' || f == ('D' & 037);
    case 3:
      return f == 3;
    case 4:
      return f == 1;
    case 5:
      return f == 030;
    case 20:
      return f == 031;
    default:
      break;
    }
  return 0;
}


int
PrepareEncodedChar(c)
int c;
{
  int encoding;
  int t = 0;
  int f;

  encoding = display->d_encoding;
  f = display->d_rend.font;
  t = display->d_mbcs;
  if (encoding == 2)
    {
      if (f == 'I')
        return c | 0x80;
      else if (f == ('B' & 037))
 {
   t += (c & 1) ? ((t <= 0x5f) ? 0x1f : 0x20) : 0x7e;
   c = (c - 0x21) / 2 + ((c < 0x5f) ? 0x81 : 0xc1);
   display->d_mbcs = t;
 }
      return c;
    }
  if (encoding == 1)
    {
      if (f == 'I')
 {
   do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (0x8e); } while (0);
   return c | 0x80;
 }
      if (f == ('B' & 037))
 {
   display->d_mbcs = t | 0x80;
   return c | 0x80;
 }
      if (f == ('D' & 037))
 {
   do { if (--display->d_obuffree <= 0) Resize_obuf(); *display->d_obufp++ = (0x8f); } while (0);
   display->d_mbcs = t | 0x80;
   return c | 0x80;
 }
    }
  if ((encoding == 3 && f == 3) || (encoding == 4 && f == 1))
    {
      display->d_mbcs = t | 0x80;
      return c | 0x80;
    }
  if ((encoding == 5 && f == 030) || (encoding == 20 && f == 031))
    return c | 0x80;
  return c;
}


int
RecodeBuf(fbuf, flen, fenc, tenc, tbuf)
unsigned char *fbuf;
int flen;
int fenc, tenc;
unsigned char *tbuf;
{
  int c, i, j;
  int decstate = 0, font = 0;

  for (i = j = 0; i < flen; i++)
    {
      c = fbuf[i];
      c = DecodeChar(c, fenc, &decstate);
      if (c == -2)
 i--;
      if (c < 0)
 continue;
      j += EncodeChar(tbuf ? (char *)tbuf + j : 0, c, tenc, &font);
    }
  j += EncodeChar(tbuf ? (char *)tbuf + j : 0, -1, tenc, &font);
  return j;
}


int
ContainsSpecialDeffont(ml, xs, xe, encoding)
struct mline *ml;
int xs, xe;
int encoding;
{
  unsigned char *f, *i;
  int c, x, dx;

  if (encoding == 8 || encodings[encoding].deffont == 0)
    return 0;
  i = ml->image + xs;
  f = ml->font + xs;
  dx = xe - xs + 1;
  while (dx-- > 0)
    {
      if (*f++)
 continue;
      c = *i++;
      x = recode_char_to_encoding(c | (encodings[encoding].deffont << 8), 8);
      if (c != x)
 {
   do {} while (0);
   return 1;
 }
    }
  do {} while (0);
  return 0;
}


int
LoadFontTranslation(font, file)
int font;
char *file;
{
  char buf[1024], *myfile;
  FILE *f;
  int i;
  int fo;
  int x, u, c, ok;
  unsigned short (*p)[2], (*tab)[2];

  myfile = file;
  if (myfile == 0)
    {
      if (font == 0 || screenencodings == 0)
 return -1;
      if (strlen(screenencodings) > sizeof(buf) - 10)
 return -1;
      sprintf(buf, "%s/%02x", screenencodings, font & 0xff);
      myfile = buf;
    }
  do {} while (0);
  if ((f = secfopen(myfile, "r")) == 0)
    return -1;
  i = ok = 0;
  for (;;)
    {
      for(; i < 12; i++)
 if (_IO_getc (f) != "ScreenI2UTF8"[i])
   break;
      if (_IO_getc (f) != 0)
 break;
      fo = _IO_getc (f);
      if (fo == (-1))
 break;
      if (font != -1 && font != fo)
 break;
      i = _IO_getc (f);
      x = _IO_getc (f);
      if (x == (-1))
 break;
      i = i << 8 | x;
      _IO_getc (f);
      while ((x = _IO_getc (f)) && x != (-1))
 _IO_getc (f);
      if ((p = malloc(sizeof(*p) * (i + 1))) == 0)
 break;
      tab = p;
      while(i > 0)
 {
   x = _IO_getc (f);
   x = x << 8 | _IO_getc (f);
   u = _IO_getc (f);
   c = _IO_getc (f);
   u = u << 8 | c;
   if (c == (-1))
     break;
   (*p)[0] = x;
   (*p)[1] = u;
   p++;
   i--;
 }
      (*p)[0] = 0;
      (*p)[1] = 0;
      if (i || (tab[0][0] & 0x8000))
 {
   free(tab);
   break;
 }
      if (recodetabs[fo].tab && (recodetabs[fo].flags & 1) != 0)
 free(recodetabs[fo].tab);
      recodetabs[fo].tab = tab;
      recodetabs[fo].flags = 1;
      do {} while (0);
      c = _IO_getc (f);
      if (c == (-1))
 {
   ok = 1;
   break;
 }
      if (c != 'S')
 break;
      i = 1;
    }
  fclose(f);
  if (font != -1 && file == 0 && recodetabs[font].flags == 0)
    recodetabs[font].flags = 4;
  return ok ? 0 : -1;
}

void
LoadFontTranslationsForEncoding(encoding)
int encoding;
{
  char *c;
  int f;

  do {} while (0);
  if ((c = encodings[encoding].fontlist) != 0)
    while ((f = (unsigned char)*c++) != 0)
      if (recodetabs[f].flags == 0)
   LoadFontTranslation(f, 0);
  f = encodings[encoding].deffont;
  if (f > 0 && recodetabs[f].flags == 0)
    LoadFontTranslation(f, 0);
}
