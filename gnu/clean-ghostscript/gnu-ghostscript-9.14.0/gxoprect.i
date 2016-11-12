# 1 "./base/gxoprect.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gxoprect.c" 2
# 19 "./base/gxoprect.c"
# 1 "./base/memory_.h" 1
# 23 "./base/memory_.h"
# 1 "./base/std.h" 1
# 22 "./base/std.h"
# 1 "./base/stdpre.h" 1
# 253 "./base/stdpre.h"
typedef unsigned char byte;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
# 273 "./base/stdpre.h"
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
# 274 "./base/stdpre.h" 2
# 294 "./base/stdpre.h"
typedef int bool;
# 331 "./base/stdpre.h"
typedef const char *ptr_ord_t;
# 390 "./base/stdpre.h"
typedef const char *client_name_t;
# 401 "./base/stdpre.h"
# 1 "./base/stdpn.h" 1
# 402 "./base/stdpre.h" 2
# 23 "./base/std.h" 2


# 1 "./obj/arch.h" 1
# 26 "./base/std.h" 2
# 69 "./base/std.h"
typedef ushort bits16;


typedef uint bits32;
# 158 "./base/std.h"
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
# 159 "./base/std.h" 2






typedef struct gs_memory_s gs_memory_t;
# 184 "./base/std.h"
int outwrite(const gs_memory_t *mem, const char *str, int len);
int errwrite(const gs_memory_t *mem, const char *str, int len);
void outflush(const gs_memory_t *mem);
void errflush(const gs_memory_t *mem);





int errwrite_nomem(const char *str, int len);
void errflush_nomem(void);
# 210 "./base/std.h"
int outprintf(const gs_memory_t *mem, const char *fmt, ...) __attribute__((__format__ (__printf__, 2, 3)));
int errprintf(const gs_memory_t *mem, const char *fmt, ...) __attribute__((__format__ (__printf__, 2, 3)));

int errprintf_nomem(const char *fmt, ...) __attribute__((__format__ (__printf__, 1, 2)));
# 284 "./base/std.h"
void dprintf_file_and_line(const char *, int);






void dflush(void);
# 352 "./base/std.h"
void dmprintf_file_and_line(const gs_memory_t *,const char *, int);
# 417 "./base/std.h"
void printf_program_ident(const gs_memory_t *mem, const char *program_name, long revision_number);



void eprintf_program_ident(const char *program_name, long revision_number);

void emprintf_program_ident(const gs_memory_t *mem,
                            const char *program_name,
                            long revision_number);
const char *gs_program_name(void);
long gs_revision_number(void);
long gs_version_number(void);
# 530 "./base/std.h"
void lprintf_file_and_line(const char *, int);
# 562 "./base/std.h"
void mlprintf_file_and_line(const gs_memory_t *,const char *, int);
# 24 "./base/memory_.h" 2
# 54 "./base/memory_.h"
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
# 1296 "/usr/include/bits/string2.h" 3 4
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4
# 465 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 1297 "/usr/include/bits/string2.h" 2 3 4




extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 1320 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 634 "/usr/include/string.h" 2 3 4
# 55 "./base/memory_.h" 2
# 20 "./base/gxoprect.c" 2
# 1 "./base/gx.h" 1
# 22 "./base/gx.h"
# 1 "./base/stdio_.h" 1
# 44 "./base/stdio_.h"
int unlink(const char *);
# 82 "./base/stdio_.h"
# 1 "./base/gssprintf.h" 1
# 21 "./base/gssprintf.h"
int
gs_vsnprintf(char *zBuf, int n, const char *zFormat, va_list ap);

int
gs_snprintf(char *zBuf, int n, const char *zFormat, ...);

int
gs_vsprintf(char *zBuf, const char *zFormat, va_list ap);

int
gs_sprintf(char *zBuf, const char *zFormat, ...);

int
gs_sscanf(char *buf, const char *format, ...);
# 83 "./base/stdio_.h" 2
# 23 "./base/gx.h" 2
# 1 "./base/gserrors.h" 1
# 50 "./base/gserrors.h"
int gs_log_error(int, const char *, int);
# 88 "./base/gserrors.h"
const char *gs_errstr(int code);
# 189 "./base/gserrors.h"
int gs_throw_imp(const char *func, const char *file, int line,
        int op, int code, const char *fmt, ...) __attribute__((__format__ (__printf__, 6, 7)));
# 24 "./base/gx.h" 2
# 1 "./base/gsio.h" 1
# 25 "./base/gx.h" 2
# 1 "./base/gstypes.h" 1
# 28 "./base/gstypes.h"
typedef ulong gs_id;
# 45 "./base/gstypes.h"
typedef struct gs_string_s {
    byte *data; uint size;
} gs_string;



typedef struct gs_const_string_s {
    const byte *data; uint size;
} gs_const_string;
typedef struct gs_param_string_s {
    const byte *data; uint size;
    bool persistent;
} gs_param_string;
# 71 "./base/gstypes.h"
typedef struct gs_bytestring_s {
    byte *data; uint size;
    byte *bytes;
} gs_bytestring;
typedef struct gs_const_bytestring_s {
    const byte *data; uint size;
    const byte *bytes;
} gs_const_bytestring;
# 88 "./base/gstypes.h"
typedef struct gs_point_s {
    double x, y;
} gs_point;
typedef struct gs_int_point_s {
    int x, y;
} gs_int_point;





typedef struct gs_log2_scale_point_s {
    int x, y;
} gs_log2_scale_point;







typedef struct gs_rect_s {
    gs_point p, q;
} gs_rect;
typedef struct gs_int_rect_s {
    gs_int_point p, q;
} gs_int_rect;






typedef struct gs_range_s {
    float rmin, rmax;
} gs_range_t;
# 26 "./base/gx.h" 2
# 1 "./base/gsmemory.h" 1
# 43 "./base/gsmemory.h"
# 1 "./base/gslibctx.h" 1
# 22 "./base/gslibctx.h"
# 1 "./base/gs_dll_call.h" 1
# 23 "./base/gslibctx.h" 2

typedef struct name_table_s *name_table_ptr;



typedef struct gs_fapi_server_s gs_fapi_server;




typedef struct gs_font_dir_s gs_font_dir;

typedef struct gs_lib_ctx_s
{
    gs_memory_t *memory;
    FILE *fstdin;
    FILE *fstdout;
    FILE *fstderr;
    FILE *fstdout2;
    bool stdout_is_redirected;
    bool stdout_to_stderr;
    bool stdin_is_interactive;
    void *caller_handle;
    void *custom_color_callback;
    int ( *stdin_fn)(void *caller_handle, char *buf, int len);
    int ( *stdout_fn)(void *caller_handle, const char *str, int len);
    int ( *stderr_fn)(void *caller_handle, const char *str, int len);
    int ( *poll_fn)(void *caller_handle);
    ulong gs_next_id;
    void *top_of_system;


    name_table_ptr gs_name_table;



    bool dict_auto_expand;

    struct gx_io_device_s **io_device_table;


    bool screen_accurate_screens;
    uint screen_min_screen_levels;


    long real_time_0[2];


    gs_font_dir *font_dir;



    bool CPSI_mode;



    char *profiledir;
    int profiledir_len;
    void *cms_context;
    gs_fapi_server **fapi_servers;
} gs_lib_ctx_t;





int gs_lib_ctx_init( gs_memory_t *mem );




void gs_lib_ctx_fin( gs_memory_t *mem );

gs_lib_ctx_t *gs_lib_ctx_get_interp_instance( const gs_memory_t *mem );

void *gs_lib_ctx_get_cms_context( const gs_memory_t *mem );
void gs_lib_ctx_set_cms_context( const gs_memory_t *mem, void *cms_context );





gs_memory_t * gs_lib_ctx_get_non_gc_memory_t(void);


void gs_lib_ctx_set_icc_directory(const gs_memory_t *mem_gc, const char* pname,
                        int dir_namelen);
# 44 "./base/gsmemory.h" 2


typedef struct gs_memory_struct_type_s gs_memory_struct_type_t;
typedef const gs_memory_struct_type_t *gs_memory_type_ptr_t;
# 57 "./base/gsmemory.h"
typedef struct gs_ptr_procs_s gs_ptr_procs_t;
typedef const gs_ptr_procs_t *gs_ptr_type_t;


typedef struct gs_gc_root_s gs_gc_root_t;



typedef client_name_t struct_name_t;


uint gs_struct_type_size(gs_memory_type_ptr_t);


struct_name_t gs_struct_type_name(gs_memory_type_ptr_t);







typedef struct gs_memory_status_s {





    ulong allocated;




    ulong used;

    bool is_thread_safe;
} gs_memory_status_t;
# 218 "./base/gsmemory.h"
typedef struct gs_memory_procs_s {

    byte *(*alloc_bytes_immovable)(gs_memory_t *mem, uint nbytes, client_name_t cname); void *(*resize_object)(gs_memory_t *mem, void *obj, uint new_num_elements, client_name_t cname); void (*free_object)(gs_memory_t *mem, void *data, client_name_t cname); gs_memory_t *(*stable)(gs_memory_t *mem); void (*status)(gs_memory_t *mem, gs_memory_status_t *status); void (*free_all)(gs_memory_t *mem, uint free_mask, client_name_t cname); void (*consolidate_free)(gs_memory_t *mem);
# 246 "./base/gsmemory.h"
    byte *(*alloc_bytes)(gs_memory_t *mem, uint nbytes, client_name_t cname);
# 257 "./base/gsmemory.h"
    void *(*alloc_struct)(gs_memory_t *mem, gs_memory_type_ptr_t pstype, client_name_t cname);


    void *(*alloc_struct_immovable)(gs_memory_t *mem, gs_memory_type_ptr_t pstype, client_name_t cname);
# 271 "./base/gsmemory.h"
    byte *(*alloc_byte_array)(gs_memory_t *mem, uint num_elements, uint elt_size, client_name_t cname);


    byte *(*alloc_byte_array_immovable)(gs_memory_t *mem, uint num_elements, uint elt_size, client_name_t cname);
# 285 "./base/gsmemory.h"
    void *(*alloc_struct_array)(gs_memory_t *mem, uint num_elements, gs_memory_type_ptr_t pstype, client_name_t cname);


    void *(*alloc_struct_array_immovable)(gs_memory_t *mem, uint num_elements, gs_memory_type_ptr_t pstype, client_name_t cname);
# 298 "./base/gsmemory.h"
    uint (*object_size)(gs_memory_t *mem, const void *obj);
# 310 "./base/gsmemory.h"
    gs_memory_type_ptr_t (*object_type)(const gs_memory_t *mem, const void *obj);
# 320 "./base/gsmemory.h"
    byte *(*alloc_string)(gs_memory_t *mem, uint nbytes, client_name_t cname);


    byte *(*alloc_string_immovable)(gs_memory_t *mem, uint nbytes, client_name_t cname);
# 335 "./base/gsmemory.h"
    byte *(*resize_string)(gs_memory_t *mem, byte *data, uint old_num, uint new_num, client_name_t cname);
# 346 "./base/gsmemory.h"
    void (*free_string)(gs_memory_t *mem, byte *data, uint nbytes, client_name_t cname);
# 360 "./base/gsmemory.h"
    int (*register_root)(gs_memory_t *mem, gs_gc_root_t *root, gs_ptr_type_t ptype, void **pp, client_name_t cname);
# 371 "./base/gsmemory.h"
    void (*unregister_root)(gs_memory_t *mem, gs_gc_root_t *root, client_name_t cname);
# 386 "./base/gsmemory.h"
    void (*enable_free)(gs_memory_t *mem, bool enable);

} gs_memory_procs_t;







void gs_free_const_object(gs_memory_t *mem, const void *data,
                          client_name_t cname);
void gs_free_const_string(gs_memory_t *mem, const byte *data, uint nbytes,
                          client_name_t cname);





void gs_free_bytestring(gs_memory_t *mem, gs_bytestring *pbs,
                        client_name_t cname);
void gs_free_const_bytestring(gs_memory_t *mem, gs_const_bytestring *pbs,
                              client_name_t cname);





void *gs_resize_struct_array(gs_memory_t *mem, void *obj, uint num_elements,
                             gs_memory_type_ptr_t pstype,
                             client_name_t cname);


int gs_register_struct_root(gs_memory_t *mem, gs_gc_root_t *root,
                            void **pp, client_name_t cname);


void gs_ignore_free_object(gs_memory_t *mem, void *data, client_name_t cname);
void gs_ignore_free_string(gs_memory_t *mem, byte *data, uint nbytes, client_name_t cname);


void gs_ignore_consolidate_free(gs_memory_t *mem);







void *gs_raw_alloc_struct_immovable(gs_memory_t * rmem,
                                    gs_memory_type_ptr_t pstype,
                                    client_name_t cname);

typedef struct pl_mem_node_s pl_mem_node_t;
# 463 "./base/gsmemory.h"
struct gs_memory_s {
    gs_memory_t *stable_memory; gs_memory_procs_t procs; gs_lib_ctx_t *gs_lib_ctx; gs_memory_t *non_gc_memory; gs_memory_t *thread_safe_memory;
};
# 27 "./base/gx.h" 2
# 1 "./base/gdebug.h" 1
# 59 "./base/gdebug.h"
typedef enum {



# 1 "./base/gdbflags.h" 1
# 25 "./base/gdbflags.h"
gs_debug_flag_icc = 1,
gs_debug_flag_validate_chunks = 2,
gs_debug_flag_gc_disable = 3,
# 57 "./base/gdbflags.h"
gs_debug_flag_ps_op_names = '!',
gs_debug_flag_contexts_detail = '"',
gs_debug_flag_trace_errors = '#',
gs_debug_flag_memfill_obj = '$',
gs_debug_flag_ext_commands = '%',

gs_debug_flag_contexts = '\'',


gs_debug_flag_image = '*',
gs_debug_flag_min_stack = '+',
gs_debug_flag_no_path_banding = ',',

gs_debug_flag_small_mem_tables = '.',
gs_debug_flag_file_line = '/',
gs_debug_flag_gc = '0',
gs_debug_flag_type1 = '1',
gs_debug_flag_curve = '2',
gs_debug_flag_curve_detail = '3',
gs_debug_flag_gc_strings = '4',
gs_debug_flag_gc_strings_detail = '5',
gs_debug_flag_gc_chunks = '6',
gs_debug_flag_gc_objects = '7',
gs_debug_flag_gc_refs = '8',
gs_debug_flag_gc_pointers = '9',
gs_debug_flag_time = ':',




gs_debug_flag_validate_pointers = '?',
gs_debug_flag_memfill_empty = '@',
gs_debug_flag_alloc_detail = 'A',
gs_debug_flag_bitmap_detail = 'B',
gs_debug_flag_color_detail = 'C',
gs_debug_flag_dict_detail = 'D',

gs_debug_flag_fill_detail = 'F',

gs_debug_flag_halftones_detail = 'H',
gs_debug_flag_interp_detail = 'I',

gs_debug_flag_char_cache_detail = 'K',
gs_debug_flag_clist_detail = 'L',


gs_debug_flag_stroke_detail = 'O',
gs_debug_flag_paths_detail = 'P',


gs_debug_flag_scanner = 'S',

gs_debug_flag_undo_detail = 'U',
gs_debug_flag_compositors_detail = 'V',


gs_debug_flag_type1_hints_detail = 'Y',




gs_debug_flag_ref_counts = '^',
gs_debug_flag_high_level = '_',
gs_debug_flag_no_hl_img_banding = '`',
gs_debug_flag_alloc = 'a',
gs_debug_flag_bitmap = 'b',
gs_debug_flag_color_halftones = 'c',
gs_debug_flag_dict = 'd',
gs_debug_flag_external_calls = 'e',
gs_debug_flag_fill = 'f',
gs_debug_flag_gsave = 'g',
gs_debug_flag_halftones = 'h',
gs_debug_flag_interp = 'i',
gs_debug_flag_comp_fonts = 'j',
gs_debug_flag_char_cache = 'k',
gs_debug_flag_clist = 'l',
gs_debug_flag_makefont = 'm',
gs_debug_flag_names = 'n',
gs_debug_flag_stroke = 'o',
gs_debug_flag_paths = 'p',
gs_debug_flag_clipping = 'q',
gs_debug_flag_arcs = 'r',
gs_debug_flag_streams = 's',
gs_debug_flag_tiling = 't',
gs_debug_flag_undo = 'u',
gs_debug_flag_compositors = 'v',
gs_debug_flag_compress = 'w',
gs_debug_flag_transforms = 'x',
gs_debug_flag_type1_hints = 'y',
gs_debug_flag_trapezoid_fill = 'z',



gs_debug_flag_math = '~'
# 63 "./base/gdebug.h" 2


} gs_debug_flag;

typedef struct {
    int used;
    char short_desc[20];
    char long_desc[80];
} gs_debug_flag_details;


extern const byte gs_debug_flag_implied_by[127];
extern const gs_debug_flag_details gs_debug_flags[127];


int gs_debug_flags_parse(gs_memory_t *heap, const char *arg);
void gs_debug_flags_list(gs_memory_t *heap);


extern char gs_debug[128];
bool gs_debug_c(int );
# 92 "./base/gdebug.h"
extern FILE *gs_debug_out;
# 182 "./base/gdebug.h"
void debug_print_string(const gs_memory_t *mem, const byte * str, uint len);
void debug_dump_bytes(const gs_memory_t *mem,
                      const byte * from, const byte * to,
                      const char *msg);
void debug_dump_bitmap(const gs_memory_t *mem,
                       const byte * from, uint raster, uint height,
                       const char *msg);

void debug_print_string_hex_nomem(const byte * str, uint len);

void debug_print_string_hex(const gs_memory_t *mem, const byte * str, uint len);
# 28 "./base/gx.h" 2






typedef struct gs_imager_state_s gs_imager_state;




typedef struct gs_state_s gs_state;
# 21 "./base/gxoprect.c" 2

# 1 "./base/gsutil.h" 1
# 25 "./base/gsutil.h"
gs_id gs_next_ids(const gs_memory_t *mem, uint count);
# 35 "./base/gsutil.h"
void memflip8x8(const byte * inp, int line_size, byte * outp, int dist);


ulong get_u32_msb(const byte *p);






int bytes_compare(const byte * str1, uint len1,
                  const byte * str2, uint len2);




typedef struct string_match_params_s {
    int any_substring;
    int any_char;
    int quote_next;
    bool ignore_case;
    bool slash_equiv;
} string_match_params;
extern const string_match_params string_match_params_default;
bool string_match(const byte * str, uint len,
                  const byte * pstr, uint plen,
                  const string_match_params * psmp);
# 23 "./base/gxoprect.c" 2
# 1 "./base/gxdevice.h" 1
# 23 "./base/gxdevice.h"
# 1 "./base/gxdevcli.h" 1
# 23 "./base/gxdevcli.h"
# 1 "./base/stdint_.h" 1
# 43 "./base/stdint_.h"
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
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 64 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 2 3
# 44 "./base/stdint_.h" 2
# 131 "./base/stdint_.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 1 3
# 26 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 3
# 1 "/usr/include/inttypes.h" 1 3 4
# 34 "/usr/include/inttypes.h" 3 4
typedef int __gwchar_t;
# 278 "/usr/include/inttypes.h" 3 4
typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 297 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ ));


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ ));


extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));


extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));





extern long int __strtol_internal (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) intmax_t
__attribute__ ((__nothrow__ )) strtoimax (const char *__restrict nptr, char **__restrict endptr, int base)

{
  return __strtol_internal (nptr, endptr, base, 0);
}

extern unsigned long int __strtoul_internal (const char *__restrict __nptr,
          char ** __restrict __endptr,
          int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) uintmax_t
__attribute__ ((__nothrow__ )) strtoumax (const char *__restrict nptr, char **__restrict endptr, int base)

{
  return __strtoul_internal (nptr, endptr, base, 0);
}

extern long int __wcstol_internal (const __gwchar_t * __restrict __nptr,
       __gwchar_t **__restrict __endptr,
       int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) intmax_t
__attribute__ ((__nothrow__ )) wcstoimax (const __gwchar_t *__restrict nptr, __gwchar_t **__restrict endptr, int base)

{
  return __wcstol_internal (nptr, endptr, base, 0);
}

extern unsigned long int __wcstoul_internal (const __gwchar_t *
          __restrict __nptr,
          __gwchar_t **
          __restrict __endptr,
          int __base, int __group)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) uintmax_t
__attribute__ ((__nothrow__ )) wcstoumax (const __gwchar_t *__restrict nptr, __gwchar_t **__restrict endptr, int base)

{
  return __wcstoul_internal (nptr, endptr, base, 0);
}
# 27 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 2 3
# 132 "./base/stdint_.h" 2
# 24 "./base/gxdevcli.h" 2
# 1 "./base/gscompt.h" 1
# 41 "./base/gscompt.h"
typedef struct gs_composite_s gs_composite_t;






gs_id gs_composite_id(const gs_composite_t * pcte);
# 25 "./base/gxdevcli.h" 2
# 1 "./base/gsdcolor.h" 1
# 22 "./base/gsdcolor.h"
# 1 "./base/gsccolor.h" 1
# 22 "./base/gsccolor.h"
# 1 "./base/gsstype.h" 1
# 23 "./base/gsstype.h"
typedef struct gc_state_s gc_state_t;





typedef struct enum_ptr_s {
    const void *ptr;
    uint size;
} enum_ptr_t;
# 81 "./base/gsstype.h"
typedef struct struct_shared_procs_s struct_shared_procs_t;

struct gs_memory_struct_type_s {
        uint ssize;
        struct_name_t sname;




        const struct_shared_procs_t *shared;



        void (*clear_marks)(const gs_memory_t *cmem, void *pre, uint size, const gs_memory_struct_type_t *pstype);
        gs_ptr_type_t (*enum_ptrs)(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
        void (*reloc_ptrs)(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
        void (*finalize)(const gs_memory_t *cmem, void *ptr);



        const void *proc_data;
};
# 23 "./base/gsccolor.h" 2




typedef struct gs_pattern_instance_s gs_pattern_instance_t;
# 61 "./base/gsccolor.h"
typedef struct gs_paint_color_s {
    float values[(64)];



} gs_paint_color;




typedef struct gs_client_color_s gs_client_color;


struct gs_client_color_s {
    gs_pattern_instance_t *pattern;
    gs_paint_color paint;




};

extern const gs_memory_struct_type_t st_client_color;
# 93 "./base/gsccolor.h"
typedef enum {
    GRAY_SCALE,
    DEVICE_RGB,
    DEVICE_CMYK,
    CIE_XYZ,
    DEVICEN,
    ICC,
    UNKNOWN,
    OTHER
} gs_transparency_color_t;






typedef enum {
    GX_CINFO_POLARITY_UNKNOWN = -1,
    GX_CINFO_POLARITY_SUBTRACTIVE = 0,
    GX_CINFO_POLARITY_ADDITIVE
} gx_color_polarity_t;
# 23 "./base/gsdcolor.h" 2
# 1 "./base/gxarith.h" 1
# 27 "./base/gxarith.h"
int imod(int m, int n);


int igcd(int x, int y);





int idivmod(int a, int b, int m);




int ilog2(int n);
# 24 "./base/gsdcolor.h" 2
# 1 "./base/gxbitmap.h" 1
# 23 "./base/gxbitmap.h"
# 1 "./base/gsbitmap.h" 1
# 54 "./base/gsbitmap.h"
typedef gs_id gs_bitmap_id;
# 75 "./base/gsbitmap.h"
typedef struct gs_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gs_bitmap;
typedef struct gs_const_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gs_const_bitmap;
# 96 "./base/gsbitmap.h"
typedef struct gs_tile_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gs_tile_bitmap;
typedef struct gs_const_tile_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gs_const_tile_bitmap;
# 124 "./base/gsbitmap.h"
typedef struct gs_depth_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; byte pix_depth; byte num_comps;
} gs_depth_bitmap;
typedef struct gs_const_depth_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; byte pix_depth; byte num_comps;
} gs_const_depth_bitmap;






typedef struct gs_tile_depth_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; byte pix_depth; byte num_comps;
} gs_tile_depth_bitmap;
typedef struct gs_const_tile_depth_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; byte pix_depth; byte num_comps;
} gs_const_tile_depth_bitmap;
# 155 "./base/gsbitmap.h"
extern const gs_memory_struct_type_t st_gs_bitmap;
extern const gs_memory_struct_type_t st_gs_tile_bitmap;
extern const gs_memory_struct_type_t st_gs_depth_bitmap;
extern const gs_memory_struct_type_t st_gs_tile_depth_bitmap;
# 24 "./base/gxbitmap.h" 2


typedef gs_bitmap_id gx_bitmap_id;
# 83 "./base/gxbitmap.h"
typedef struct gx_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gx_bitmap;
typedef struct gx_const_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gx_const_bitmap;







typedef struct gx_tile_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gx_tile_bitmap;
typedef struct gx_const_tile_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gx_const_tile_bitmap;
# 150 "./base/gxbitmap.h"
typedef struct gx_strip_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; ushort rep_shift; ushort shift; int num_planes;
} gx_strip_bitmap;
typedef struct gx_const_strip_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; ushort rep_shift; ushort shift; int num_planes;
} gx_const_strip_bitmap;

extern const gs_memory_struct_type_t st_gx_strip_bitmap;
# 25 "./base/gsdcolor.h" 2
# 1 "./base/gxhttile.h" 1
# 32 "./base/gxhttile.h"
typedef struct gx_ht_tile_s gx_ht_tile;



struct gx_ht_tile_s {
    gx_strip_bitmap tiles;
    int level;


    uint index;

};
# 26 "./base/gsdcolor.h" 2
# 1 "./base/gxcindex.h" 1
# 23 "./base/gxcindex.h"
# 1 "./base/gsbitops.h" 1
# 279 "./base/gsbitops.h"
void bits_fill_rectangle(byte * dest, int dest_bit, uint raster,
                      uint pattern, int width_bits, int height);
void bits_fill_rectangle_masked(byte * dest, int dest_bit, uint raster,
                      uint pattern, uint src_mask,
                      int width_bits, int height);


void bits_replicate_horizontally(byte * data, uint width, uint height,
               uint raster, uint replicated_width, uint replicated_raster);


void bits_replicate_vertically(byte * data, uint height, uint raster,
    uint replicated_height);


void bits_bounding_box(const byte * data, uint height, uint raster,
    gs_int_rect * pbox);




void bits_compress_scaled(const byte * src, int srcx, uint width,
    uint height, uint sraster, byte * dest, uint draster,
    const gs_log2_scale_point * plog2_scale, int log2_out_bits);


typedef struct bits_plane_s {
    union bpd_ {
        byte *write;
        const byte *read;
    } data;
    int raster;
    int depth;
    int x;
} bits_plane_t;
int bits_extract_plane(const bits_plane_t *dest ,
    const bits_plane_t *source , int shift, int width, int height);


int bits_expand_plane(const bits_plane_t *dest ,
    const bits_plane_t *source , int shift, int width, int height);


void bytes_fill_rectangle(byte * dest, uint raster,
    byte value, int width_bytes, int height);


void bytes_copy_rectangle(byte * dest, uint dest_raster,
    const byte * src, uint src_raster, int width_bytes, int height);



int bytes_rectangle_is_const(const byte * src, uint src_raster, int width_bytes, int height);



void bytes_copy_rectangle_zero_padding(byte * dest, uint dest_raster,
    const byte * src, uint src_raster, int width_bytes, int height);
# 24 "./base/gxcindex.h" 2
# 58 "./base/gxcindex.h"
enum { ARCH_SIZEOF_GX_COLOR_INDEX__must_equal__sizeof_GX_COLOR_INDEX_TYPE = 1/!!(8 == sizeof(unsigned long int)) };
typedef unsigned long int gx_color_index_data;
# 87 "./base/gxcindex.h"
typedef gx_color_index_data gx_color_index;
# 27 "./base/gsdcolor.h" 2



typedef struct gx_device_color_s gx_device_color;




typedef struct gx_device_color_saved_s gx_device_color_saved;




typedef struct gx_device_halftone_s gx_device_halftone;
# 92 "./base/gsdcolor.h"
bool gx_device_color_equal(const gx_device_color *pdevc1,
                           const gx_device_color *pdevc2);
# 164 "./base/gsdcolor.h"
void gx_complete_halftone(gx_device_color *pdevc, int num_comps,
                          gx_device_halftone *pdht);
# 190 "./base/gsdcolor.h"
typedef struct gx_color_tile_s gx_color_tile;
# 260 "./base/gsdcolor.h"
typedef struct gx_device_color_type_s gx_device_color_type_t;
typedef const gx_device_color_type_t *gx_device_color_type;

struct gx_device_color_s {




    gx_device_color_type type;






    union _c {
        gx_color_index pure;
        struct _bin {
            const gx_device_halftone *b_ht;
            gx_color_index color[2];
            uint b_level;
            int b_index;
            gx_ht_tile *b_tile;
        } binary;
        struct _col {
            gx_device_halftone *c_ht;
            ushort num_components;
            byte c_base[(8 * 8)];
            uint c_level[(8 * 8)];
            ushort alpha;






            gx_color_index plane_mask;


        } colored;
        struct _pat {
            gx_color_tile *p_tile;
        } pattern;
        struct _devn {
            ushort values[(64)];
        } devn;
    } colors;
    gs_int_point phase;







    bool ccolor_valid;






    gs_client_color ccolor;

    struct _mask {
        struct mp_ {
            int x, y;
        } m_phase;
        gx_bitmap_id id;
        gx_color_tile *m_tile;
    } mask;
};
# 376 "./base/gsdcolor.h"
struct gx_device_color_saved_s {
    gx_device_color_type type;
    union _svc {
        gx_color_index pure;
        struct _svbin {
            gx_color_index b_color[2];
            uint b_level;
            int b_index;
        } binary;
        struct _svcol {
            byte c_base[(8 * 8)];
            uint c_level[(8 * 8)];
            ushort alpha;
        } colored;
        struct _svdevn {
            ushort values[(8 * 8)];
        } devn;
        struct _pattern {
            gs_id id;
            gs_int_point phase;
        } pattern;
        struct _pattern2 {
            gs_id id;
            bool shfill;
        } pattern2;
    } colors;
    gs_int_point phase;
};
# 415 "./base/gsdcolor.h"
extern const gx_device_color_type_t *const gx_dc_type_none;


extern const gx_device_color_type_t *const gx_dc_type_null;


extern const gx_device_color_type_t *const gx_dc_type_pure;


extern const gx_device_color_type_t *const gx_dc_type_devn;
# 434 "./base/gsdcolor.h"
extern const gx_device_color_type_t *const gx_dc_type_ht_binary;


extern const gx_device_color_type_t *const gx_dc_type_ht_colored;
# 26 "./base/gxdevcli.h" 2
# 1 "./base/gsmatrix.h" 1
# 31 "./base/gsmatrix.h"
struct gs_matrix_s {
    float xx, xy, yx, yy, tx, ty;
};
struct gs_matrix_double_s {
  double xx, xy, yx, yy, tx, ty;
};



typedef struct gs_matrix_s gs_matrix;



typedef struct gs_matrix_double_s gs_matrix_double;
# 62 "./base/gsmatrix.h"
void gs_make_identity(gs_matrix *);
int gs_make_translation(double, double, gs_matrix *),
    gs_make_scaling(double, double, gs_matrix *),
    gs_make_rotation(double, gs_matrix *);


int gs_matrix_multiply(const gs_matrix *, const gs_matrix *, gs_matrix *),
    gs_matrix_multiply_double(const gs_matrix_double *, const gs_matrix *, gs_matrix_double *),
    gs_matrix_invert(const gs_matrix *, gs_matrix *),
    gs_matrix_invert_to_double(const gs_matrix *, gs_matrix_double *),
    gs_matrix_translate(const gs_matrix *, double, double, gs_matrix *),
    gs_matrix_scale(const gs_matrix *, double, double, gs_matrix *),
    gs_matrix_rotate(const gs_matrix *, double, gs_matrix *);


int gs_matrix_compare(const gs_matrix *, const gs_matrix *);


int gs_point_transform(double, double, const gs_matrix *, gs_point *),
    gs_point_transform_inverse(double, double, const gs_matrix *, gs_point *),
    gs_distance_transform(double, double, const gs_matrix *, gs_point *),
    gs_distance_transform_inverse(double, double, const gs_matrix *, gs_point *),
    gs_points_bbox(const gs_point[4], gs_rect *),
    gs_bbox_transform_only(const gs_rect *, const gs_matrix *, gs_point[4]),
    gs_bbox_transform(const gs_rect *, const gs_matrix *, gs_rect *),
    gs_bbox_transform_inverse(const gs_rect *, const gs_matrix *, gs_rect *);




typedef struct stream_s stream;

int sget_matrix(stream *, gs_matrix *);
int sput_matrix(stream *, const gs_matrix *);
# 27 "./base/gxdevcli.h" 2
# 1 "./base/gsiparam.h" 1
# 46 "./base/gsiparam.h"
typedef struct gx_image_type_s gx_image_type_t;
# 55 "./base/gsiparam.h"
typedef struct gs_image_common_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix;
} gs_image_common_t;
# 66 "./base/gsiparam.h"
typedef enum {
    gs_image_type1,
    gs_image_type2,
    gs_image_type3,
    gs_image_type3x,
    gs_image_type4
} gs_image_parent_t;
# 121 "./base/gsiparam.h"
typedef struct gs_data_image_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate;
} gs_data_image_t;
# 144 "./base/gsiparam.h"
typedef enum {

    gs_image_format_chunky = 0,

    gs_image_format_component_planar = 1,

    gs_image_format_bit_planar = 2
} gs_image_format_t;




typedef struct gs_color_space_s gs_color_space;
# 182 "./base/gsiparam.h"
typedef struct gs_pixel_image_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;
} gs_pixel_image_t;

extern const gs_memory_struct_type_t st_gs_pixel_image;
# 196 "./base/gsiparam.h"
typedef enum {

    gs_image_alpha_none = 0,

    gs_image_alpha_first,

    gs_image_alpha_last
} gs_image_alpha_t;

typedef struct gs_image1_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;




    bool ImageMask;




    bool adjust;





    gs_image_alpha_t Alpha;






    gs_image_parent_t image_parent_type;
} gs_image1_t;


extern const gs_memory_struct_type_t st_gs_image1;







typedef gs_image1_t gs_image_t;
# 250 "./base/gsiparam.h"
void



     gs_image_common_t_init(gs_image_common_t * pic),







     gs_data_image_t_init(gs_data_image_t * pim, int num_components),






    gs_pixel_image_t_init(gs_pixel_image_t * pim,
                          gs_color_space * color_space);
# 284 "./base/gsiparam.h"
void gs_image_t_init_adjust(gs_image_t * pim, gs_color_space * pcs,
                            bool adjust);


void gs_image_t_init_mask_adjust(gs_image_t * pim, bool write_1s,
                                 bool adjust);
# 320 "./base/gsiparam.h"
typedef struct ht_landscape_info_s {
    int count;
    int widths[((1 << 3)*8)];
    int xstart;
    int curr_pos;
    int index;
    int num_contones;
    bool offset_set;
    bool flipy;
    int y_pos;
} ht_landscape_info_t;
# 28 "./base/gxdevcli.h" 2
# 1 "./base/gsrefct.h" 1
# 50 "./base/gsrefct.h"
typedef struct rc_header_s rc_header;
struct rc_header_s {
    long ref_count;
    gs_memory_t *memory;


    void (*free)(gs_memory_t *, void *, client_name_t);
};
# 72 "./base/gsrefct.h"
void rc_free_struct_only(gs_memory_t *, void *, client_name_t);
# 29 "./base/gxdevcli.h" 2
# 1 "./base/gsropt.h" 1
# 79 "./base/gsropt.h"
typedef enum {
    rop2_0 = 0,
    rop2_S = 0xc,

    rop2_D = 0xa,

    rop2_1 = 0xf,


    rop2_default = rop2_S
} gs_rop2_t;
# 98 "./base/gsropt.h"
typedef enum {
    rop3_0 = 0,




    rop3_D = 0xaa,

    rop3_1 = 0xff,
    rop3_default = 0xf0 | 0xcc
} gs_rop3_t;
# 217 "./base/gsropt.h"
typedef uint gs_logical_operation_t;
# 256 "./base/gsropt.h"
typedef unsigned long rop_operand;
typedef rop_operand (*rop_proc)(rop_operand D, rop_operand S, rop_operand T);


typedef enum {
    rop_usage_none = 0,
    rop_usage_D = 1,
    rop_usage_S = 2,
    rop_usage_DS = 3,
    rop_usage_T = 4,
    rop_usage_DT = 5,
    rop_usage_ST = 6,
    rop_usage_DST = 7
} rop_usage_t;


extern const rop_proc rop_proc_table[256];


extern const byte rop_usage_table[256];







typedef struct rop_run_op_s rop_run_op;




typedef union rop_source_s {
    struct {
        const byte *ptr;
        int pos;
    } b;
    rop_operand c;
} rop_source;

struct rop_run_op_s {
    void (*run)(rop_run_op *, byte *dest, int len);
    void (*runswap)(rop_run_op *, byte *dest, int len);
    rop_source s;
    rop_source t;
    int rop;
    byte depth;
    byte flags;
    byte dpos;
    const byte *scolors;
    const byte *tcolors;
    void (*release)(rop_run_op *);
    void *opaque;
};


enum {
    rop_s_constant = 1,
    rop_t_constant = 2,
    rop_s_1bit = 4,
    rop_t_1bit = 8
};
# 328 "./base/gsropt.h"
void rop_get_run_op(rop_run_op *op, int rop, int depth, int flags);
# 338 "./base/gsropt.h"
void rop_set_s_constant(rop_run_op *op, int s);
void rop_set_s_bitmap(rop_run_op *op, const byte *s);
void rop_set_s_bitmap_subbyte(rop_run_op *op, const byte *s, int startbitpos);
void rop_set_s_colors(rop_run_op *op, const byte *scolors);
void rop_set_t_constant(rop_run_op *op, int t);
void rop_set_t_bitmap(rop_run_op *op, const byte *t);
void rop_set_t_bitmap_subbyte(rop_run_op *op, const byte *s, int startbitpos);
void rop_set_t_colors(rop_run_op *op, const byte *scolors);







void rop_run(rop_run_op *op, byte *d, int len);



void rop_run_subbyte(rop_run_op *op, byte *d, int startbitpos, int len);


void rop_release_run_op(rop_run_op *op);
# 30 "./base/gxdevcli.h" 2
# 1 "./base/gsstruct.h" 1
# 85 "./base/gsstruct.h"
typedef struct obj_header_s obj_header_t;







struct gs_ptr_procs_s {





    void (*unmark)(enum_ptr_t *, gc_state_t *);






    bool (*mark)(enum_ptr_t *, gc_state_t *);
# 116 "./base/gsstruct.h"
    void *(*reloc)(const void *, gc_state_t *);

};



extern const gs_ptr_procs_t ptr_struct_procs;



extern const gs_ptr_procs_t ptr_string_procs;

extern const gs_ptr_procs_t ptr_const_string_procs;



extern const gs_ptr_procs_t ptr_name_index_procs;






struct gs_gc_root_s {
    gs_gc_root_t *next;
    gs_ptr_type_t ptype;
    void **p;
    bool free_on_unregister;
};
# 180 "./base/gsstruct.h"
typedef struct gc_procs_common_s {
    void *(*reloc_struct_ptr)(const void *, gc_state_t *); void (*reloc_string)(gs_string *, gc_state_t *); void (*reloc_const_string)(gs_const_string *, gc_state_t *); void (*reloc_param_string)(gs_param_string *, gc_state_t *);
} gc_procs_common_t;







gs_ptr_type_t gs_no_struct_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
void gs_no_struct_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);





extern const gs_memory_struct_type_t st_free;



extern const gs_memory_struct_type_t st_bytes;



extern const gs_memory_struct_type_t st_gc_root_t;
# 216 "./base/gsstruct.h"
extern const gs_memory_struct_type_t st_const_string_element;
# 237 "./base/gsstruct.h"
typedef enum {
    GC_ELT_OBJ,
    GC_ELT_STRING,
    GC_ELT_CONST_STRING
} gc_ptr_type_index_t;

typedef struct gc_ptr_element_s {
    ushort type;
    ushort offset;
} gc_ptr_element_t;
# 261 "./base/gsstruct.h"
typedef struct gc_struct_data_s {
    ushort num_ptrs;
    ushort super_offset;
    const gs_memory_struct_type_t *super_type;
    const gc_ptr_element_t *ptrs;
} gc_struct_data_t;
# 284 "./base/gsstruct.h"
gs_ptr_type_t basic_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
void basic_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
# 375 "./base/gsstruct.h"
extern gs_ptr_type_t
    enum_bytestring(enum_ptr_t *pep, const gs_bytestring *pbs);


extern gs_ptr_type_t
    enum_const_bytestring(enum_ptr_t *pep, const gs_const_bytestring *pbs);
# 435 "./base/gsstruct.h"
extern void reloc_bytestring(gs_bytestring *pbs, gc_state_t *gcst);


extern void reloc_const_bytestring(gs_const_bytestring *pbs, gc_state_t *gcst);
# 31 "./base/gxdevcli.h" 2
# 1 "./base/gstparam.h" 1
# 24 "./base/gstparam.h"
# 1 "./base/gscspace.h" 1
# 142 "./base/gscspace.h"
typedef struct gsicc_link_s gsicc_link_t;







typedef struct cmm_profile_s cmm_profile_t;
# 166 "./base/gscspace.h"
typedef enum {


    gs_color_space_index_DeviceGray = 0,
    gs_color_space_index_DeviceRGB,


    gs_color_space_index_DeviceCMYK,


    gs_color_space_index_DevicePixel,
    gs_color_space_index_DeviceN,



    gs_color_space_index_CIEDEFG,
    gs_color_space_index_CIEDEF,
    gs_color_space_index_CIEABC,
    gs_color_space_index_CIEA,
    gs_color_space_index_Separation,
    gs_color_space_index_Indexed,
    gs_color_space_index_Pattern,


    gs_color_space_index_ICC

} gs_color_space_index;
# 201 "./base/gscspace.h"
typedef struct gs_color_space_type_s gs_color_space_type;
# 212 "./base/gscspace.h"
typedef struct gs_device_pixel_params_s {
    int depth;
} gs_device_pixel_params;
typedef struct gs_cie_a_s gs_cie_a;
typedef struct gs_cie_abc_s gs_cie_abc;
typedef struct gs_cie_def_s gs_cie_def;
typedef struct gs_cie_defg_s gs_cie_defg;



typedef struct gs_device_n_map_s gs_device_n_map;




typedef struct gs_device_n_attributes_s gs_device_n_attributes;






typedef ulong gs_separation_name;
# 243 "./base/gscspace.h"
typedef int (gs_callback_func_get_colorname_string)
     (const gs_memory_t *mem, gs_separation_name colorname, unsigned char **ppstr, unsigned int *plen);

typedef enum { SEP_NONE, SEP_ALL, SEP_OTHER } separation_type;

typedef struct gs_separation_params_s {
    gs_separation_name sep_name;
    gs_device_n_map *map;
    separation_type sep_type;
    bool use_alt_cspace;
    gs_callback_func_get_colorname_string *get_colorname_string;
} gs_separation_params;

typedef struct gs_device_n_params_s {
    gs_separation_name *names;
    uint num_components;
    gs_device_n_map *map;
    gs_device_n_attributes *colorants;
    bool use_alt_cspace;
    gs_callback_func_get_colorname_string *get_colorname_string;
} gs_device_n_params;


typedef struct client_color_space_data_s client_color_space_data_t;
# 276 "./base/gscspace.h"
typedef struct gs_indexed_map_s gs_indexed_map;

typedef struct gs_indexed_params_s {
    int hival;
    int n_comps;
    union {
        gs_const_string table;
        gs_indexed_map *map;
    } lookup;
    bool use_proc;
} gs_indexed_params;





typedef struct gs_pattern_params_s {
    bool has_base_space;
} gs_pattern_params;
# 309 "./base/gscspace.h"
struct gs_color_space_s {
    const gs_color_space_type *type;
    rc_header rc;
    gs_id id;
    gs_color_space *base_space;
    gs_color_space *icc_equivalent;
    client_color_space_data_t *pclient_color_space_data;
    cmm_profile_t *cmm_icc_profile_data;
    union {
        gs_device_pixel_params pixel;
        gs_cie_defg * defg;
        gs_cie_def * def;
        gs_cie_abc * abc;
        gs_cie_a * a;
        gs_separation_params separation;
        gs_device_n_params device_n;
        gs_indexed_params indexed;
        gs_pattern_params pattern;

    } params;
};
# 346 "./base/gscspace.h"
gs_color_space *gs_cspace_new_DeviceGray(gs_memory_t *mem);
gs_color_space *gs_cspace_new_DeviceRGB(gs_memory_t *mem);
gs_color_space *gs_cspace_new_DeviceCMYK(gs_memory_t *mem);
gs_color_space *gs_cspace_new_ICC(gs_memory_t *pmem, gs_state * pgs,
                                  int components);




gs_color_space_index gs_color_space_get_index(const gs_color_space *);


bool gs_color_space_is_CIE(const gs_color_space * pcs);
bool gs_color_space_is_ICC(const gs_color_space * pcs);
bool gs_color_space_is_PSCIE(const gs_color_space * pcs);
int gs_colorspace_set_icc_equivalent(gs_color_space *pcs, bool *islab,
                                     gs_memory_t *memory);


int gs_color_space_num_components(const gs_color_space *);






bool gs_color_space_equal(const gs_color_space *pcs1,
                          const gs_color_space *pcs2);






void gs_color_space_restrict_color(gs_client_color *, const gs_color_space *);






const gs_color_space *gs_cspace_base_space(const gs_color_space * pcspace);




void rc_increment_cs(gs_color_space *pcs);

void rc_decrement_cs(gs_color_space *pcs, const char *cname);

void rc_decrement_only_cs(gs_color_space *pcs, const char *cname);

void cs_adjust_counts_icc(gs_state *pgs, int delta);
# 25 "./base/gstparam.h" 2



typedef enum {
    BLEND_MODE_Normal,
    BLEND_MODE_Multiply,
    BLEND_MODE_Screen,
    BLEND_MODE_Difference,
    BLEND_MODE_Darken,
    BLEND_MODE_Lighten,
    BLEND_MODE_ColorDodge,
    BLEND_MODE_ColorBurn,
    BLEND_MODE_Exclusion,
    BLEND_MODE_HardLight,
    BLEND_MODE_Overlay,
    BLEND_MODE_SoftLight,
    BLEND_MODE_Luminosity,
    BLEND_MODE_Hue,
    BLEND_MODE_Saturation,
    BLEND_MODE_Color,



    BLEND_MODE_Compatible
} gs_blend_mode_t;
# 62 "./base/gstparam.h"
typedef struct gs_function_s gs_function_t;




typedef struct gs_transparency_group_params_s {
    const gs_color_space *ColorSpace;
    bool Isolated;
    bool Knockout;
    bool image_with_SMask;
    bool idle;
    uint mask_id;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    int64_t icc_hashcode;
    cmm_profile_t *iccprofile;
} gs_transparency_group_params_t;


typedef enum {
    TRANSPARENCY_MASK_Alpha,
    TRANSPARENCY_MASK_Luminosity
} gs_transparency_mask_subtype_t;






typedef struct gs_transparency_mask_params_s {
    const gs_color_space *ColorSpace;
    gs_transparency_mask_subtype_t subtype;
    int Background_components;
    float Background[(64)];
    float GrayBackground;
    int (*TransferFunction)(double in, float *out, void *proc_data);
    gs_function_t *TransferFunction_data;
    bool replacing;
    int64_t icc_hashcode;
    cmm_profile_t *iccprofile;
} gs_transparency_mask_params_t;




typedef struct gx_transparency_mask_params_s {
    gs_transparency_mask_subtype_t subtype;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    int Background_components;
    float Background[(64)];
    float GrayBackground;
    bool function_is_identity;
    bool idle;
    bool replacing;
    uint mask_id;
    byte transfer_fn[256];
    int64_t icc_hashcode;
    cmm_profile_t *iccprofile;
} gx_transparency_mask_params_t;
# 145 "./base/gstparam.h"
typedef enum {
    TRANSPARENCY_CHANNEL_Opacity = 0,
    TRANSPARENCY_CHANNEL_Shape = 1
} gs_transparency_channel_selector_t;
# 32 "./base/gxdevcli.h" 2
# 1 "./base/gsxfont.h" 1
# 24 "./base/gsxfont.h"
typedef ulong gx_xglyph;




struct gx_xfont_procs_s;
typedef struct gx_xfont_procs_s gx_xfont_procs;


struct gx_xfont_s;
typedef struct gx_xfont_s gx_xfont;
# 33 "./base/gxdevcli.h" 2


# 1 "./base/gxcvalue.h" 1
# 23 "./base/gxcvalue.h"
typedef unsigned short gx_color_value;
# 36 "./base/gxdevcli.h" 2
# 1 "./base/gxfixed.h" 1
# 28 "./base/gxfixed.h"
typedef int fixed;
typedef uint ufixed;
# 162 "./base/gxfixed.h"
fixed fixed_mult_quo(fixed A, fixed B, fixed C);
# 182 "./base/gxfixed.h"
bool
gx_intersect_small_bars(fixed q0x, fixed q0y, fixed q1x, fixed q1y, fixed q2x, fixed q2y,
                        fixed q3x, fixed q3y, fixed *ry, fixed *ey);
# 233 "./base/gxfixed.h"
typedef struct gs_fixed_point_s {
    fixed x, y;
} gs_fixed_point;


typedef struct gs_fixed_rect_s {
    gs_fixed_point p, q;
} gs_fixed_rect;
# 37 "./base/gxdevcli.h" 2
# 1 "./base/gxtext.h" 1
# 22 "./base/gxtext.h"
# 1 "./base/gstext.h" 1
# 22 "./base/gstext.h"
# 1 "./base/gsccode.h" 1
# 27 "./base/gsccode.h"
typedef ulong gs_char;
# 74 "./base/gsccode.h"
typedef ulong gs_glyph;
# 92 "./base/gsccode.h"
typedef bool (*gs_glyph_mark_proc_t)(const gs_memory_t *mem, gs_glyph glyph, void *proc_data);


typedef enum {
    ENCODING_INDEX_UNKNOWN = -1,

    ENCODING_INDEX_STANDARD = 0,
    ENCODING_INDEX_ISOLATIN1,
    ENCODING_INDEX_SYMBOL,
    ENCODING_INDEX_DINGBATS,
    ENCODING_INDEX_WINANSI,
    ENCODING_INDEX_MACROMAN,
    ENCODING_INDEX_MACEXPERT,


    ENCODING_INDEX_MACGLYPH,
    ENCODING_INDEX_ALOGLYPH,
    ENCODING_INDEX_ALXGLYPH,
    ENCODING_INDEX_CFFSTRINGS

} gs_encoding_index_t;
# 125 "./base/gsccode.h"
typedef enum gs_glyph_space_s {
    GLYPH_SPACE_NAME,
    GLYPH_SPACE_INDEX,
    GLYPH_SPACE_NOGEN
} gs_glyph_space_t;






typedef int (*gs_glyph_name_proc_t)(const gs_memory_t *mem,
                                    gs_glyph glyph, gs_const_string *pstr,
                                    void *proc_data);
# 23 "./base/gstext.h" 2
# 1 "./base/gscpm.h" 1
# 22 "./base/gscpm.h"
typedef enum {
    cpm_show,
    cpm_charwidth,
    cpm_false_charpath,
    cpm_true_charpath,
    cpm_false_charboxpath,
    cpm_true_charboxpath
} gs_char_path_mode;

typedef enum {
    CACHE_DEVICE_NONE = 0,
    CACHE_DEVICE_NOT_CACHING,
    CACHE_DEVICE_NONE_AND_CLIP,
    CACHE_DEVICE_CACHING
} gs_in_cache_device_t;
# 24 "./base/gstext.h" 2
# 99 "./base/gstext.h"
typedef struct gs_text_params_s {

    uint operation;
    union sd_ {
        const byte *bytes;
        const gs_char *chars;
        const gs_glyph *glyphs;
        gs_char d_char;
        gs_glyph d_glyph;
    } data;
    uint size;


    gs_point delta_all;
    gs_point delta_space;
    union s_ {
        gs_char s_char;
        gs_glyph s_glyph;
    } space;





    const float *x_widths;
    const float *y_widths;
    uint widths_size;
} gs_text_params_t;
# 135 "./base/gstext.h"
int gs_text_replaced_width(const gs_text_params_t *text, uint index,
                           gs_point *pwidth);







typedef struct gs_text_enum_s gs_text_enum_t;





typedef struct gx_device_s gx_device;
# 162 "./base/gstext.h"
typedef struct gs_font_s gs_font;



typedef struct gx_path_s gx_path;



typedef struct gx_clip_path_s gx_clip_path;
# 194 "./base/gstext.h"
int gx_device_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);






int gs_text_begin(gs_state * pgs, const gs_text_params_t * text,
                  gs_memory_t * mem, gs_text_enum_t ** ppenum);





int gs_text_update_dev_color(gs_state * pgs, gs_text_enum_t * pte);


int
gs_show_begin(gs_state *, const byte *, uint,
              gs_memory_t *, gs_text_enum_t **),
    gs_ashow_begin(gs_state *, double, double, const byte *, uint,
                   gs_memory_t *, gs_text_enum_t **),
    gs_widthshow_begin(gs_state *, double, double, gs_char,
                       const byte *, uint,
                       gs_memory_t *, gs_text_enum_t **),
    gs_awidthshow_begin(gs_state *, double, double, gs_char,
                        double, double, const byte *, uint,
                        gs_memory_t *, gs_text_enum_t **),
    gs_kshow_begin(gs_state *, const byte *, uint,
                   gs_memory_t *, gs_text_enum_t **),
    gs_xyshow_begin(gs_state *, const byte *, uint,
                    const float *, const float *, uint,
                    gs_memory_t *, gs_text_enum_t **),
    gs_glyphshow_begin(gs_state *, gs_glyph,
                       gs_memory_t *, gs_text_enum_t **),
    gs_cshow_begin(gs_state *, const byte *, uint,
                   gs_memory_t *, gs_text_enum_t **),
    gs_stringwidth_begin(gs_state *, const byte *, uint,
                         gs_memory_t *, gs_text_enum_t **),
    gs_charpath_begin(gs_state *, const byte *, uint, bool,
                      gs_memory_t *, gs_text_enum_t **),
    gs_glyphpath_begin(gs_state *, gs_glyph, bool,
                       gs_memory_t *, gs_text_enum_t **),
    gs_glyphwidth_begin(gs_state *, gs_glyph,
                        gs_memory_t *, gs_text_enum_t **),
    gs_charboxpath_begin(gs_state *, const byte *, uint, bool,
                         gs_memory_t *, gs_text_enum_t **);


int gs_text_size(gs_state * pgs, gs_text_params_t *text, gs_memory_t * mem);

gs_text_params_t *gs_get_text_params(gs_text_enum_t *pte);




int gs_text_restart(gs_text_enum_t *pte, const gs_text_params_t *text);




int gs_text_resync(gs_text_enum_t *pte, const gs_text_enum_t *pfrom);
# 287 "./base/gstext.h"
int gs_text_process(gs_text_enum_t *pte);


gs_font *gs_text_current_font(const gs_text_enum_t *pte);
gs_char gs_text_current_char(const gs_text_enum_t *pte);
gs_char gs_text_next_char(const gs_text_enum_t *pte);
gs_glyph gs_text_current_glyph(const gs_text_enum_t *pte);
int gs_text_total_width(const gs_text_enum_t *pte, gs_point *pwidth);






bool gs_text_is_width_only(const gs_text_enum_t *pte);




int gs_text_current_width(const gs_text_enum_t *pte, gs_point *pwidth);





typedef enum {
    TEXT_SET_CHAR_WIDTH,
    TEXT_SET_CACHE_DEVICE,
    TEXT_SET_CACHE_DEVICE2
} gs_text_cache_control_t;
int
    gs_text_set_cache(gs_text_enum_t *pte, const double *values,
                      gs_text_cache_control_t control),
    gs_text_setcharwidth(gs_text_enum_t *pte, const double wxy[2]),
    gs_text_setcachedevice(gs_text_enum_t *pte, const double wbox[6]),
    gs_text_setcachedevice2(gs_text_enum_t *pte, const double wbox2[10]);


int gs_text_retry(gs_text_enum_t *pte);


void gs_text_release(gs_text_enum_t *pte, client_name_t cname);


int gs_text_count_chars(gs_state * pgs, gs_text_params_t *text, gs_memory_t * mem);
# 23 "./base/gxtext.h" 2



typedef struct gs_text_enum_procs_s gs_text_enum_procs_t;



typedef struct cached_fm_pair_s cached_fm_pair;





typedef struct gs_text_returned_s {
    gs_char current_char;
    gs_glyph current_glyph;
    gs_point total_width;
} gs_text_returned_t;
# 56 "./base/gxtext.h"
typedef struct gx_font_stack_item_s {
    gs_font *font;
    uint index;



} gx_font_stack_item_t;
typedef struct gx_font_stack_s {
    int depth;
    gx_font_stack_item_t items[1 + 5];
} gx_font_stack_t;
# 79 "./base/gxtext.h"
void rc_free_text_enum(gs_memory_t *, void *, client_name_t);
# 127 "./base/gxtext.h"
struct gs_text_enum_s {
    gs_text_params_t text; gx_device *dev; gx_device *imaging_dev; gs_imager_state *pis; gs_font *orig_font; gx_path *path; const gx_device_color *pdcolor; const gx_clip_path *pcpath; gs_memory_t *memory; const gs_text_enum_procs_t *procs; rc_header rc; void *enum_client_data; gs_font *current_font; gs_glyph outer_CID; bool is_pure_color; gs_log2_scale_point log2_scale; cached_fm_pair *pair; uint index; uint xy_index; gx_font_stack_t fstack; int cmap_code; bool single_byte_space; int bytes_decoded; gs_point FontBBox_as_Metrics2; ulong text_enum_id; bool device_disabled_grid_fitting; gs_log2_scale_point fapi_log2_scale; gs_point fapi_glyph_shift; gs_text_returned_t returned;
};
# 179 "./base/gxtext.h"
int gs_text_enum_init(gs_text_enum_t *pte,
                      const gs_text_enum_procs_t *procs,
                      gx_device *dev, gs_imager_state *pis,
                      const gs_text_params_t *text,
                      gs_font *font, gx_path *path,
                      const gx_device_color *pdcolor,
                      const gx_clip_path *pcpath,
                      gs_memory_t *mem);







void gs_text_enum_copy_dynamic(gs_text_enum_t *pto,
                               const gs_text_enum_t *pfrom,
                               bool for_return);
# 227 "./base/gxtext.h"
struct gs_text_enum_procs_s {
# 240 "./base/gxtext.h"
    int (*resync)(gs_text_enum_t *pte, const gs_text_enum_t *pfrom);
# 270 "./base/gxtext.h"
    int (*process)(gs_text_enum_t *pte);
# 281 "./base/gxtext.h"
    bool (*is_width_only)(const gs_text_enum_t *pte);
# 290 "./base/gxtext.h"
    int (*current_width)(const gs_text_enum_t *pte, gs_point *pwidth);
# 301 "./base/gxtext.h"
    int (*set_cache)(gs_text_enum_t *pte, const double *values, gs_text_cache_control_t control);
# 311 "./base/gxtext.h"
    int (*retry)(gs_text_enum_t *pte);
# 322 "./base/gxtext.h"
    void (*release)(gs_text_enum_t *pte, client_name_t cname);

};


void gx_default_text_release(gs_text_enum_t *pte, client_name_t cname);
# 38 "./base/gxdevcli.h" 2
# 1 "./base/gxcmap.h" 1
# 23 "./base/gxcmap.h"
# 1 "./base/gscsel.h" 1
# 27 "./base/gscsel.h"
typedef enum {
    gs_color_select_all = -1,
    gs_color_select_texture = 0,
    gs_color_select_source = 1
} gs_color_select_t;
# 24 "./base/gxcmap.h" 2
# 1 "./base/gxfmap.h" 1
# 24 "./base/gxfmap.h"
# 1 "./base/gxfrac.h" 1
# 27 "./base/gxfrac.h"
typedef short frac;
typedef short signed_frac;
# 25 "./base/gxfmap.h" 2
# 1 "./base/gxtmap.h" 1
# 29 "./base/gxtmap.h"
typedef struct gx_transfer_map_s gx_transfer_map;





typedef float (*gs_mapping_proc) (double, const gx_transfer_map *);





typedef float (*gs_mapping_closure_proc_t) (double value,
                                            const gx_transfer_map * pmap,
                                            const void *proc_data);
typedef struct gs_mapping_closure_s {
    gs_mapping_closure_proc_t proc;
    const void *data;
} gs_mapping_closure_t;
# 26 "./base/gxfmap.h" 2
# 41 "./base/gxfmap.h"
struct gx_transfer_map_s {
    rc_header rc;
    gs_mapping_proc proc;
    gs_mapping_closure_t closure;

    gs_id id;
    frac values[(1 << 8)];
};

extern const gs_memory_struct_type_t st_transfer_map;





void gx_set_identity_transfer(gx_transfer_map *);
# 65 "./base/gxfmap.h"
frac gx_color_frac_map(frac, const frac *);
# 99 "./base/gxfmap.h"
float gs_mapped_transfer(double, const gx_transfer_map *);




float gs_identity_transfer(double, const gx_transfer_map *);
# 25 "./base/gxcmap.h" 2
# 89 "./base/gxcmap.h"
struct gx_cm_color_map_procs_s {
    void (*map_gray) (gx_device * dev, frac gray, frac * out);
    void (*map_rgb) (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
    void (*map_cmyk) (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);
};

typedef struct gx_cm_color_map_procs_s gx_cm_color_map_procs;




void gray_cs_to_gray_cm (gx_device * dev, frac gray, frac * out);
void rgb_cs_to_rgb_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
void cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);
# 116 "./base/gxcmap.h"
struct gx_color_map_procs_s {
    void (*map_gray)(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_rgb)(frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_cmyk)(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t, const gs_color_space *);
    void (*map_rgb_alpha)(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_separation)(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_devicen)(const frac *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    bool (*is_halftoned)(const gs_imager_state *, gx_device *);
};
typedef struct gx_color_map_procs_s gx_color_map_procs;






const gx_color_map_procs *
    gx_get_cmap_procs(const gs_imager_state *, const gx_device *);
const gx_color_map_procs *
    gx_default_get_cmap_procs(const gs_imager_state *, const gx_device *);






void gx_set_cmap_procs(gs_imager_state *, const gx_device *);
# 167 "./base/gxcmap.h"
extern void gx_default_gray_cs_to_gray_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_gray_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_gray_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_default_gray_cs_to_rgb_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_rgb_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_rgb_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_default_gray_cs_to_cmyk_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_cmyk_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_default_gray_cs_to_cmyk_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_cmyk_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_error_gray_cs_to_cmyk_cm (gx_device * dev, frac gray, frac * out);
extern void gx_error_rgb_cs_to_cmyk_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_error_cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);
# 239 "./base/gxcmap.h"
int (gx_error_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevGray_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevRGB_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevCMYK_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevRGBK_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);





const gx_cm_color_map_procs * (gx_error_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevGray_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevRGB_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevCMYK_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevRGBK_get_color_mapping_procs)(const gx_device * dev);





gx_color_index (gx_error_encode_color)(gx_device * dev, const gx_color_value colors[]);
gx_color_index (gx_default_encode_color)(gx_device * dev, const gx_color_value colors[]);





gx_color_index (gx_default_gray_fast_encode)(gx_device * dev, const gx_color_value colors[]);
gx_color_index (gx_default_gray_encode)(gx_device * dev, const gx_color_value colors[]);






gx_color_index (gx_backwards_compatible_gray_encode)(gx_device * dev, const gx_color_value colors[]);





int (gx_error_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
int (gx_default_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);





frac gx_unit_frac(float fvalue);



bool gx_device_uses_std_cmap_procs(gx_device * dev,
                                   const gs_imager_state * pis);
bool fwd_uses_fwd_cmap_procs(gx_device * dev);
const gx_cm_color_map_procs* fwd_get_target_cmap_procs(gx_device * dev);
void cmap_transfer_halftone(gx_color_value *pconc, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, bool has_transfer,
     bool has_halftone, gs_color_select_t select);
void cmap_transfer(gx_color_value *pconc, const gs_imager_state * pis,
                   gx_device * dev);
void cmap_transfer_plane(gx_color_value *pconc, const gs_imager_state *pis,
                    gx_device *dev, int plane);
# 39 "./base/gxdevcli.h" 2
# 1 "./base/gsnamecl.h" 1
# 24 "./base/gsnamecl.h"
# 1 "./base/gxcspace.h" 1
# 48 "./base/gxcspace.h"
struct gs_color_space_type_s {

    gs_color_space_index index;







    bool can_be_base_space;
    bool can_be_alt_space;






    gs_memory_type_ptr_t stype;
# 82 "./base/gxcspace.h"
        int (*num_components)(const gs_color_space *);
# 92 "./base/gxcspace.h"
        void (*init_color)(gs_client_color *, const gs_color_space *);







        void (*restrict_color)(gs_client_color *, const gs_color_space *);
# 110 "./base/gxcspace.h"
        const gs_color_space *(*concrete_space)(const gs_color_space *, const gs_imager_state *);
# 125 "./base/gxcspace.h"
        int (*concretize_color)(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);







        int (*remap_concrete_color)(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);







        int (*remap_color)(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);





        int (*install_cspace)(gs_color_space *, gs_state *);
# 163 "./base/gxcspace.h"
        int (*set_overprint)(const gs_color_space *, gs_state *);





        void (*final)(const gs_color_space *);
# 184 "./base/gxcspace.h"
        void (*adjust_color_count)(const gs_client_color *, const gs_color_space *, int);
# 201 "./base/gxcspace.h"
        int (*serialize)(const gs_color_space *, stream *);
# 213 "./base/gxcspace.h"
        int (*is_linear)(const gs_color_space *cs, const gs_imager_state * pis, gx_device *dev, const gs_client_color *c0, const gs_client_color *c1, const gs_client_color *c2, const gs_client_color *c3, float smoothness, gsicc_link_t *icclink);
# 222 "./base/gxcspace.h"
        gx_color_polarity_t (*polarity)(const gs_color_space *);
};

extern const gs_memory_struct_type_t st_base_color_space;





int gx_num_components_1(const gs_color_space *);
int gx_num_components_3(const gs_color_space *);
int gx_num_components_4(const gs_color_space *);
gx_color_polarity_t gx_polarity_subtractive(const gs_color_space *);
gx_color_polarity_t gx_polarity_additive(const gs_color_space *);
gx_color_polarity_t gx_polarity_unknown(const gs_color_space *);
void gx_init_paint_1(gs_client_color *, const gs_color_space *);
void gx_init_paint_3(gs_client_color *, const gs_color_space *);
void gx_init_paint_4(gs_client_color *, const gs_color_space *);
void gx_restrict01_paint_1(gs_client_color *, const gs_color_space *);
void gx_restrict01_paint_3(gs_client_color *, const gs_color_space *);
void gx_restrict01_paint_4(gs_client_color *, const gs_color_space *);
const gs_color_space *gx_no_concrete_space(const gs_color_space *, const gs_imager_state *);
const gs_color_space *gx_same_concrete_space(const gs_color_space *, const gs_imager_state *);
int gx_no_concretize_color(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_default_remap_color(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_no_install_cspace(gs_color_space *, gs_state *);
int gx_spot_colors_set_overprint(const gs_color_space *, gs_state *);
int gx_simulated_set_overprint(const gs_color_space *, gs_state *);
void gx_no_adjust_color_count(const gs_client_color *, const gs_color_space *, int);
int gx_serialize_cspace_type(const gs_color_space *, stream *);
int gx_cspace_no_linear(const gs_color_space *cs, const gs_imager_state * pis, gx_device *dev, const gs_client_color *c0, const gs_client_color *c1, const gs_client_color *c2, const gs_client_color *c3, float smoothness, gsicc_link_t *icclink);
int gx_cspace_is_linear_default(const gs_color_space *cs, const gs_imager_state * pis, gx_device *dev, const gs_client_color *c0, const gs_client_color *c1, const gs_client_color *c2, const gs_client_color *c3, float smoothness, gsicc_link_t *icclink);





int gx_remap_DeviceGray(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_DeviceGray(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_remap_concrete_DGray(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_DeviceRGB(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_DeviceRGB(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_remap_concrete_DRGB(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_DeviceCMYK(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_DeviceCMYK(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_remap_concrete_DCMYK(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);


extern const gs_memory_struct_type_t st_color_space;


gs_color_space *
gs_cspace_alloc(gs_memory_t *mem, const gs_color_space_type *pcstype);




gx_color_index check_cmyk_color_model_comps(gx_device * dev);
gx_color_index check_rgb_color_model_comps(gx_device * dev);


int gx_set_overprint_cmyk(const gs_color_space * pcs, gs_state * pgs);
int gx_set_overprint_rgb(const gs_color_space * pcs, gs_state * pgs);
# 25 "./base/gsnamecl.h" 2
# 80 "./base/gsnamecl.h"
typedef struct gs_context_state_s i_ctx_t;





typedef struct gs_param_list_s gs_param_list;
# 99 "./base/gsnamecl.h"
int custom_color_callback_put_params(gs_state * pgs, gs_param_list * plist);
# 108 "./base/gsnamecl.h"
int custom_color_callback_get_params(gs_state * pgs, gs_param_list * plist);





bool custom_color_callback_install_Separation(gs_color_space * pcs,
                                                        gs_state * pgs);





bool custom_color_callback_install_DeviceN(gs_color_space * pcs, gs_state * pgs);





int gx_remap_concrete_custom_color_Separation(const frac * pconc,
        const gs_color_space * pcs, gx_device_color * pdc,
        const gs_imager_state * pis, gx_device * dev, gs_color_select_t select);





int gx_remap_concrete_custom_color_DeviceN(const frac * pconc,
        const gs_color_space * pcs, gx_device_color * pdc,
        const gs_imager_state * pis, gx_device * dev, gs_color_select_t select);
# 155 "./base/gsnamecl.h"
typedef struct client_custom_color_params_s {

    struct client_custom_color_procs_s * client_procs;

    void * data;
} client_custom_color_params_t;
# 169 "./base/gsnamecl.h"
typedef struct client_color_space_data_s {
        void (*client_adjust_cspace_count)(const gs_color_space *, int);
} client_color_space__data_t;




typedef struct client_custom_color_procs_s {



    bool (* install_DeviceGray)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceGray)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);



    bool (* install_DeviceRGB)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceRGB)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);



    bool (* install_DeviceCMYK)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceCMYK)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_Separation)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_Separation)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_DeviceN)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceN)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedA)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);
# 254 "./base/gsnamecl.h"
    int (* remap_CIEBasedA)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedABC)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_CIEBasedABC)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedDEF)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_CIEBasedDEF)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedDEFG)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_CIEBasedDEFG)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_ICCBased)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_ICCBased)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);

} client_custom_color_procs_t;
# 40 "./base/gxdevcli.h" 2
# 1 "./base/gp.h" 1
# 24 "./base/gp.h"
# 1 "./base/gscdefs.h" 1
# 31 "./base/gscdefs.h"
extern const long gs_buildtime;
extern const char *const gs_copyright;
extern const char *const gs_product;
extern const char *const gs_productfamily;
extern const long gs_version;
extern const long gs_revision;
extern const long gs_revisiondate;
extern const long gs_serialnumber;


extern const char *const gs_doc_directory;
extern const char *const gs_lib_default_path;
extern const char *const gs_init_file;
extern const char *const gs_dev_defaults;
# 55 "./base/gscdefs.h"
extern const unsigned gx_image_class_table_count;



extern const unsigned gx_image_type_table_count;
# 68 "./base/gscdefs.h"
extern const unsigned gx_io_device_table_count;
# 25 "./base/gp.h" 2
# 35 "./base/gp.h"
# 1 "./base/gpgetenv.h" 1
# 39 "./base/gpgetenv.h"
int gp_getenv(const char *key, char *ptr, int *plen);
# 36 "./base/gp.h" 2




# 1 "./base/srdline.h" 1
# 45 "./base/srdline.h"
extern int sreadline(stream *s_in, stream *s_out, void *readline_data, gs_const_string *prompt, gs_string *buf, gs_memory_t *bufmem, uint *pcount, bool *pin_eol, bool (*is_stdin)(const stream *));
# 41 "./base/gp.h" 2
# 55 "./base/gp.h"
void gp_init(void);





void gp_exit(int exit_status, int code);





void gp_do_exit(int exit_status);
# 76 "./base/gp.h"
const char *gp_strerror(int);
# 99 "./base/gp.h"
int gp_defaultpapersize(char *ptr, int *plen);







int gp_serialnumber(void);







void gp_get_realtime(long ptm[2]);





void gp_get_usertime(long ptm[2]);
# 136 "./base/gp.h"
int gp_readline_init(void **preadline_data, gs_memory_t *mem);




int gp_readline(stream *s_in, stream *s_out, void *readline_data,
                gs_const_string *prompt, gs_string *buf,
                gs_memory_t *bufmem, uint *pcount, bool *pin_eol,
                bool (*is_stdin)(const stream *));




void gp_readline_finit(void *readline_data);
# 161 "./base/gp.h"
int gp_stdin_read(char *buf, int len, int interactive, FILE *f);
# 170 "./base/gp.h"
const char *gp_getenv_display(void);
# 189 "./base/gp.h"
extern const char gp_file_name_list_separator;


extern const char gp_scratch_file_name_prefix[];


extern const char gp_null_file_name[];


extern const char gp_current_directory_name[];




extern const char gp_fmode_binary_suffix[];



extern const char gp_fmode_rb[];
extern const char gp_fmode_wb[];
# 227 "./base/gp.h"
FILE *gp_open_scratch_file(const gs_memory_t *mem,
                           const char *prefix,
                                 char fname[4096],
                           const char *mode);


FILE *gp_fopen(const char *fname, const char *mode);



int gp_setmode_binary(FILE * pfile, bool mode);

typedef enum {
    gp_combine_small_buffer = -1,
    gp_combine_cant_handle = 0,
    gp_combine_success = 1
} gp_file_name_combine_result;
# 252 "./base/gp.h"
gp_file_name_combine_result gp_file_name_combine(const char *prefix, uint plen,
            const char *fname, uint flen, bool no_sibling, char *buffer, uint *blen);
# 264 "./base/gp.h"
uint gp_file_name_root(const char *fname, uint len);
# 273 "./base/gp.h"
uint gs_file_name_check_separator(const char *fname, int len, const char *item);





bool gp_file_name_is_parent(const char *fname, uint len);





bool gp_file_name_is_current(const char *fname, uint len);





const char *gp_file_name_current(void);





const char *gp_file_name_separator(void);





const char *gp_file_name_directory_separator(void);





const char *gp_file_name_parent(void);




bool gp_file_name_is_parent_allowed(void);





bool gp_file_name_is_empty_item_meanful(void);





int gp_read_macresource(byte *buf, const char *fname,
                                     const uint type, const ushort id);


bool gp_file_name_good_char(unsigned char c);
# 352 "./base/gp.h"
int gp_cache_insert(int type, byte *key, int keylen, void *buffer, int buflen);


typedef void *(*gp_cache_alloc)(void *userdata, int bytes);
int gp_cache_query(int type, byte* key, int keylen, void **buffer,
    gp_cache_alloc alloc, void *userdata);
# 379 "./base/gp.h"
FILE *gp_open_printer(const gs_memory_t *mem,
                            char fname[4096],
                            int binary_mode);
# 390 "./base/gp.h"
void gp_close_printer(const gs_memory_t *mem,
                            FILE *pfile,
                      const char *fname);





typedef struct file_enum_s file_enum;
# 412 "./base/gp.h"
file_enum *gp_enumerate_files_init(const char *pat, uint patlen,
                                   gs_memory_t * memory);
# 422 "./base/gp.h"
uint gp_enumerate_files_next(file_enum * pfen, char *ptr, uint maxlen);







void gp_enumerate_files_close(file_enum * pfen);
# 441 "./base/gp.h"
void *gp_enumerate_fonts_init(gs_memory_t *mem);
# 450 "./base/gp.h"
int gp_enumerate_fonts_next(void *enum_state, char **fontname, char **path);


void gp_enumerate_fonts_free(void *enum_state);
# 483 "./base/gp.h"
FILE *gp_fopen_64(const char *filename, const char *mode);

FILE *gp_open_scratch_file_64(const gs_memory_t *mem,
                              const char *prefix,
                                    char fname[4096],
                              const char *mode);
FILE *gp_open_printer_64(const gs_memory_t *mem,
                               char fname[4096],
                               int binary_mode);

int64_t gp_ftell_64(FILE *strm);

int gp_fseek_64(FILE *strm, int64_t offset, int origin);

bool gp_fseekable (FILE *f);
# 511 "./base/gp.h"
int
gp_local_arg_encoding_get_codepoint(FILE *file, const char **astr);
# 41 "./base/gxdevcli.h" 2
# 1 "./base/gscms.h" 1
# 25 "./base/gscms.h"
# 1 "./base/gsdevice.h" 1
# 29 "./base/gsdevice.h"
typedef struct gx_device_memory_s gx_device_memory;
# 44 "./base/gsdevice.h"
const gx_device *gs_getdevice(int);
const gx_device *gs_getdefaultdevice(void);

int gs_opendevice(gx_device *);
int gs_copyscanlines(gx_device *, int, byte *, uint, int *, uint *);
int gs_copydevice(gx_device **, const gx_device *, gs_memory_t *);





int gs_copydevice2(gx_device **pnew_dev, const gx_device *dev,
                   bool keep_open, gs_memory_t *mem);



int gs_makewordimagedevice(gx_device ** pnew_dev, const gs_matrix * pmat,
                           uint width, uint height,
                           const byte * colors, int num_colors,
                           bool word_oriented, bool page_device,
                           gs_memory_t * mem);



int gs_initialize_wordimagedevice(gx_device_memory * new_dev,
                                  const gs_matrix * pmat,
                                  uint width, uint height,
                                  const byte * colors, int colors_size,
                                  bool word_oriented, bool page_device,
                                  gs_memory_t * mem);
const char *gs_devicename(const gx_device *);
void gs_deviceinitialmatrix(gx_device *, gs_matrix *);


int gs_get_device_or_hw_params(gx_device *, gs_param_list *, bool);







int gs_putdeviceparams(gx_device *, gs_param_list *);
int gs_closedevice(gx_device *);
# 96 "./base/gsdevice.h"
int gs_imager_putdeviceparams(gs_imager_state *pis, gx_device *dev,
                              gs_param_list *plist);
# 106 "./base/gsdevice.h"
int gs_flushpage(gs_state *);
int gs_copypage(gs_state *);
int gs_output_page(gs_state *, int, int);
int gs_nulldevice(gs_state *);
int gs_setdevice(gs_state *, gx_device *);
int gs_setdevice_no_erase(gs_state *, gx_device *);

int gs_setdevice_no_init(gs_state *, gx_device *);
gx_device *gs_currentdevice(const gs_state *);






int gs_state_putdeviceparams(gs_state *pgs, gs_param_list *plist);
# 26 "./base/gscms.h" 2
# 1 "./base/gxsync.h" 1
# 24 "./base/gxsync.h"
# 1 "./base/gpsync.h" 1
# 37 "./base/gpsync.h"
typedef union {
    void *dummy1;
    double dummy2;
    long dummy3;
    int64_t dummy4;
} gp_semaphore;

uint gp_semaphore_sizeof(void);




int gp_semaphore_open(gp_semaphore * sema);
int gp_semaphore_close(gp_semaphore * sema);
int gp_semaphore_wait(gp_semaphore * sema);
int gp_semaphore_signal(gp_semaphore * sema);






typedef union {
    void *dummy_;
    double dummy2;
    long dummy3;
    int64_t dummy4;
} gp_monitor;

uint gp_monitor_sizeof(void);




int gp_monitor_open(gp_monitor * mon);
int gp_monitor_close(gp_monitor * mon);
int gp_monitor_enter(gp_monitor * mon);
int gp_monitor_leave(gp_monitor * mon);







typedef void (*gp_thread_creation_callback_t) (void *);
int gp_create_thread(gp_thread_creation_callback_t, void *);
# 95 "./base/gpsync.h"
typedef void *gp_thread_id;
int gp_thread_start(gp_thread_creation_callback_t fun, void *arg, gp_thread_id *thread);






void gp_thread_finish(gp_thread_id thread);
# 25 "./base/gxsync.h" 2








typedef struct gx_semaphore_s {
    gs_memory_t *memory;
    gp_semaphore native;

} gx_semaphore_t;

gx_semaphore_t *
    gx_semaphore_alloc(
                       gs_memory_t * memory
                       );
void
    gx_semaphore_free(
                      gx_semaphore_t * sema
                      );







typedef struct gx_monitor_s {
    gs_memory_t *memory;
    gp_monitor native;
} gx_monitor_t;

gx_monitor_t *
    gx_monitor_alloc(
                     gs_memory_t * memory
                     );
void
    gx_monitor_free(
                    gx_monitor_t * mon
                    );
# 27 "./base/gscms.h" 2
# 44 "./base/gscms.h"
typedef unsigned short icc_output_type;
# 54 "./base/gscms.h"
typedef struct gs_range_icc_s {
    gs_range_t ranges[15];
} gs_range_icc_t;
# 66 "./base/gscms.h"
typedef struct gsicc_device_cm_s {
    cmm_profile_t *gray_profile;
    cmm_profile_t *rgb_profile;
    cmm_profile_t *cmyk_profile;
    cmm_profile_t *device_link_profile;
    gs_memory_t *memory;
} gsicc_device_cm_t;


typedef enum {
    gsUNDEFINED = 0,
    gsGRAY,
    gsRGB,
    gsCMYK,
    gsNCHANNEL,
    gsCIEXYZ,
    gsCIELAB,
    gsNAMED
} gsicc_colorbuffer_t;

typedef struct gsicc_bufferdesc_s {
    unsigned char num_chan;
    unsigned char bytes_per_chan;
    bool has_alpha;
    bool alpha_first;
    bool little_endian;
    bool is_planar;
    int plane_stride;
    int row_stride;
    int num_rows;
    int pixels_per_row;
} gsicc_bufferdesc_t;



typedef void (*gscms_trans_color_proc_t) (gx_device * dev, gsicc_link_t *icclink,
                                          void *inputcolor, void *outputcolor,
                                          int num_bytes);

typedef void (*gscms_trans_buffer_proc_t) (gx_device * dev, gsicc_link_t *icclink,
                                           gsicc_bufferdesc_t *input_buff_desc,
                                           gsicc_bufferdesc_t *output_buff_desc,
                                           void *inputbuffer, void *outputbuffer);

typedef void (*gscms_link_free_proc_t) (gsicc_link_t *icclink);

typedef bool (*gscms_monitor_proc_t) (void *inputcolor, int num_bytes);

typedef struct gscms_procs_s {
    gscms_trans_buffer_proc_t map_buffer;
    gscms_trans_color_proc_t map_color;
    gscms_link_free_proc_t free_link;
    gscms_monitor_proc_t is_color;
} gscms_procs_t;
# 129 "./base/gscms.h"
typedef enum {
    gsPERCEPTUAL = 0,
    gsRELATIVECOLORIMETRIC,
    gsSATURATION,
    gsABSOLUTECOLORIMETRIC,
    gsPERCEPTUAL_OR,
    gsRELATIVECOLORIMETRIC_OR,
    gsSATURATION_OR,
    gsABSOLUTECOLORIMETRIC_OR,
    gsRINOTSPECIFIED = 8
} gsicc_rendering_intents_t;





typedef enum {
    gsBLACKPTCOMP_OFF = 0,
    gsBLACKPTCOMP_ON,
    gsBLACKPTCOMP_OFF_OR = 4,
    gsBLACKPTCOMP_ON_OR,
    gsBPNOTSPECIFIED = 8
} gsicc_blackptcomp_t;



typedef enum {
    gsCMM_DEFAULT = 0,
    gsCMM_NONE,
    gsCMM_REPLACE
} gsicc_cmm_t;



typedef enum {
    gsBLACKPRESERVE_OFF = 0,
    gsBLACKPRESERVE_KONLY,
    gsBLACKPRESERVE_KPLANE,
    gsBKPRESNOTSPECIFIED = 8
} gsicc_blackpreserve_t;
# 178 "./base/gscms.h"
typedef enum {
    gsDEFAULTPROFILE = 0,
    gsGRAPHICPROFILE,
    gsIMAGEPROFILE,
    gsTEXTPROFILE,
    gsPROOFPROFILE,
    gsLINKPROFILE,
    gsOIPROFILE
} gsicc_profile_types_t;

typedef enum {
    gsSRC_GRAPPRO = 0,
    gsSRC_IMAGPRO,
    gsSRC_TEXTPRO,
} gsicc_profile_srctypes_t;




typedef enum {
    GS_UNKNOWN_TAG = 0x0,
    GS_TEXT_TAG = 0x1,
    GS_IMAGE_TAG = 0x2,
    GS_PATH_TAG = 0x4,
    GS_UNTOUCHED_TAG = 0x8,
    GS_DEVICE_ENCODES_TAGS = 0x80
} gs_graphics_type_tag_t;


typedef struct gsicc_rendering_param_s {
    gsicc_rendering_intents_t rendering_intent;
    gsicc_blackptcomp_t black_point_comp;
    gsicc_blackpreserve_t preserve_black;
    gs_graphics_type_tag_t graphics_type_tag;
    gsicc_cmm_t cmm;
    bool override_icc;
} gsicc_rendering_param_t;


typedef struct cmm_srcgtag_profile_s {
    cmm_profile_t *rgb_profiles[3];
    gsicc_rendering_param_t rgb_rend_cond[3];
    cmm_profile_t *cmyk_profiles[3];
    gsicc_rendering_param_t cmyk_rend_cond[3];
    cmm_profile_t *color_warp_profile;
    gs_memory_t *memory;
    int name_length;
    char *name;
    rc_header rc;
} cmm_srcgtag_profile_t;

typedef struct gsicc_colorname_s gsicc_colorname_t;

struct gsicc_colorname_s {
    char *name;
    int length;
    gsicc_colorname_t *next;
};

typedef struct gsicc_namelist_s gsicc_namelist_t;



typedef struct gs_devicen_color_map_s gs_devicen_color_map;


struct gsicc_namelist_s {
    int count;
    gsicc_colorname_t *head;
    char *name_str;
    gs_devicen_color_map *color_map;
    bool equiv_cmyk_set;




};


typedef struct cmm_dev_profile_s {
        cmm_profile_t *device_profile[4];
        cmm_profile_t *proof_profile;
        cmm_profile_t *link_profile;
        cmm_profile_t *oi_profile;
        gsicc_rendering_param_t rendercond[4];
        bool devicegraytok;
        bool graydetection;
        bool pageneutralcolor;
        bool usefastcolor;
        bool supports_devn;
        bool sim_overprint;
        gsicc_namelist_t *spotnames;
        bool prebandthreshold;
        gs_memory_t *memory;
        rc_header rc;
} cmm_dev_profile_t;
# 282 "./base/gscms.h"
typedef enum {
    DEFAULT_NONE,
    DEFAULT_GRAY,
    DEFAULT_RGB,
    DEFAULT_CMYK,
    NAMED_TYPE,
    LAB_TYPE,
    DEVICEN_TYPE,
    DEFAULT_GRAY_s,
    DEFAULT_RGB_s,
    DEFAULT_CMYK_s,
    LAB_TYPE_s,
    CAL_GRAY,
    CAL_RGB,
    CIE_A,
    CIE_ABC,
    CIE_DEF,
    CIE_DEFG,
    CIE_CRD
} gsicc_profile_t;
# 324 "./base/gscms.h"
typedef struct gsicc_serialized_profile_s {
    unsigned char num_comps; unsigned char num_comps_out; bool islab; bool isdevlink; gsicc_profile_t default_match; gsicc_colorbuffer_t data_cs; gs_range_icc_t Range; int64_t hashcode; bool hash_is_valid; int devicen_permute[15]; bool devicen_permute_needed; int buffer_size; bool rend_is_valid; gsicc_rendering_param_t rend_cond;
} gsicc_serialized_profile_t;




struct cmm_profile_s {
    unsigned char num_comps; unsigned char num_comps_out; bool islab; bool isdevlink; gsicc_profile_t default_match; gsicc_colorbuffer_t data_cs; gs_range_icc_t Range; int64_t hashcode; bool hash_is_valid; int devicen_permute[15]; bool devicen_permute_needed; int buffer_size; bool rend_is_valid; gsicc_rendering_param_t rend_cond;
    byte *buffer;
    gx_device *dev;
    gsicc_namelist_t *spotnames;
    void *profile_handle;
    rc_header rc;
    int name_length;
    char *name;




    gs_memory_t *memory;
    gx_monitor_t *lock;
};
# 371 "./base/gscms.h"
typedef struct gsicc_profile_entry_s gsicc_profile_entry_t;

struct gsicc_profile_entry_s {
    gs_color_space *color_space;
    gsicc_profile_entry_t *next;
    int64_t key;
};



typedef struct gsicc_profile_cache_s {
    gsicc_profile_entry_t *head;
    int num_entries;
    rc_header rc;
    gs_memory_t *memory;
} gsicc_profile_cache_t;




typedef enum {
    DEVICETYPE,
    ICCTYPE,
    CRDTYPE,
    CIEATYPE,
    CIEABCTYPE,
    CIEDEFTYPE,
    CIEDEFGTYPE
} gs_colortype_t;
# 408 "./base/gscms.h"
typedef struct gsicc_hashlink_s {
    int64_t link_hashcode;
    int64_t src_hash;
    int64_t des_hash;
    int64_t rend_hash;
} gsicc_hashlink_t;

struct gsicc_link_s {
    void *link_handle;
    gscms_procs_t procs;
    gsicc_hashlink_t hashcode;
    struct gsicc_link_cache_s *icc_link_cache;
    int ref_count;
    gsicc_link_t *next;
    gx_semaphore_t *wait;
    int num_waiting;
    bool includes_softproof;
    bool includes_devlink;
    bool is_identity;
    bool valid;
    bool is_monitored;
    gscms_procs_t orig_procs;
    gsicc_colorbuffer_t data_cs;
    int num_input;
    int num_output;
};






typedef struct gsicc_link_cache_s {
    gsicc_link_t *head;
    int num_links;
    rc_header rc;
    gs_memory_t *memory;
    gx_monitor_t *lock;
    gx_semaphore_t *wait;
    int num_waiting;
} gsicc_link_cache_t;
# 467 "./base/gscms.h"
typedef struct gsicc_devicen_entry_s gsicc_devicen_entry_t;

struct gsicc_devicen_entry_s {
    cmm_profile_t *iccprofile;
    gsicc_devicen_entry_t *next;
};

typedef struct gsicc_devicen_s gsicc_devicen_t;

struct gsicc_devicen_s {
    gsicc_devicen_entry_t *head;
    gsicc_devicen_entry_t *final;
    int count;
};





typedef struct gsicc_smask_s {
    cmm_profile_t *smask_gray;
    cmm_profile_t *smask_rgb;
    cmm_profile_t *smask_cmyk;
    gs_memory_t *memory;
    bool swapped;
} gsicc_smask_t;



typedef struct gsicc_manager_s {
    cmm_profile_t *device_named;
    cmm_profile_t *default_gray;
    cmm_profile_t *default_rgb;
    cmm_profile_t *default_cmyk;
    cmm_profile_t *lab_profile;
    cmm_profile_t *graytok_profile;
    gsicc_devicen_t *device_n;
    gsicc_smask_t *smask_profiles;
    bool override_internal;
    cmm_srcgtag_profile_t *srcgtag_profile;
    gs_memory_t *memory;
    rc_header rc;
} gsicc_manager_t;
# 42 "./base/gxdevcli.h" 2
# 1 "./base/gxrplane.h" 1
# 32 "./base/gxrplane.h"
typedef struct gx_render_plane_s {
    int depth;
    int shift;
    int index;
} gx_render_plane_t;
# 45 "./base/gxrplane.h"
int gx_render_plane_init(gx_render_plane_t *render_plane,
                         const gx_device *dev, int index);
# 43 "./base/gxdevcli.h" 2
# 139 "./base/gxdevcli.h"
typedef struct gx_fill_params_s gx_fill_params;



typedef struct gx_stroke_params_s gx_stroke_params;







typedef struct patch_fill_state_s patch_fill_state_t;






typedef struct gx_image_enum_common_s gx_image_enum_common_t;






typedef struct gs_pattern1_instance_s gs_pattern1_instance_t;



typedef gx_device_color gx_drawing_color;



typedef enum {
    go_text,
    go_graphics
} graphics_object_type;


typedef struct gs_fixed_edge_s {
    gs_fixed_point start;
    gs_fixed_point end;
} gs_fixed_edge;




typedef struct gs_get_bits_params_s gs_get_bits_params_t;



typedef struct gx_device_anti_alias_info_s {
    int text_bits;
    int graphics_bits;
} gx_device_anti_alias_info;

typedef int32_t frac31;




typedef struct gs_linear_color_edge_s {
    gs_fixed_point start;
    gs_fixed_point end;
    const frac31 *c0, *c1;
    fixed clip_x;
} gs_linear_color_edge;
# 234 "./base/gxdevcli.h"
typedef enum {
    GX_CINFO_UNKNOWN_SEP_LIN = -1,
    GX_CINFO_SEP_LIN_NONE = 0,
    GX_CINFO_SEP_LIN
} gx_color_enc_sep_lin_t;
# 262 "./base/gxdevcli.h"
typedef enum {
    GX_CINFO_OPMODE_UNKNOWN = -1,
    GX_CINFO_OPMODE_NOT = 0,
    GX_CINFO_OPMODE = 1,
    GX_CINFO_OPMODE_RGB,
    GC_CINFO_OPMODE_RGB_SET
} gx_cm_opmode_t;
# 297 "./base/gxdevcli.h"
typedef struct gx_device_color_info_s {






    int max_components;







    int num_components;







    gx_color_polarity_t polarity;







    ushort depth;
# 356 "./base/gxdevcli.h"
    byte gray_index;
# 378 "./base/gxdevcli.h"
    uint max_gray;
    uint max_color;

    uint dither_grays;
    uint dither_colors;





    gx_device_anti_alias_info anti_alias;
# 426 "./base/gxdevcli.h"
    gx_color_enc_sep_lin_t separable_and_linear;
    byte comp_shift[(8 * 8)];
    byte comp_bits[(8 * 8)];
    gx_color_index comp_mask[(8 * 8)];




    const char * cm_name;
# 452 "./base/gxdevcli.h"
    gx_cm_opmode_t opmode;
    gx_color_index process_comps;
    int black_component;} gx_device_color_info;
# 616 "./base/gxdevcli.h"
typedef struct gx_device_procs_s gx_device_procs;



typedef struct gx_page_device_procs_s {



    int (*install)(gx_device *dev, gs_state *pgs);



    int (*begin_page)(gx_device *dev, gs_state *pgs);



    int (*end_page)(gx_device *dev, int reason, gs_state *pgs);

} gx_page_device_procs;


int gx_default_install(gx_device *dev, gs_state *pgs);
int gx_default_begin_page(gx_device *dev, gs_state *pgs);
int gx_default_end_page(gx_device *dev, int reason, gs_state *pgs);
# 651 "./base/gxdevcli.h"
typedef struct gx_stroked_gradient_recognizer_s {
    bool stroke_stored;
    gs_fixed_point orig[4], adjusted[4];
} gx_stroked_gradient_recognizer_t;
# 683 "./base/gxdevcli.h"
typedef struct gx_device_cached_colors_s {
    gx_color_index black, white;
} gx_device_cached_colors_t;







typedef struct gx_band_params_s {
    int BandWidth;
    int BandHeight;
    long BandBufferSpace;
} gx_band_params_t;



typedef enum {
    BandingAuto = 0,
    BandingAlways,
    BandingNever
} gdev_banding_type;




typedef struct gdev_space_params_s {
    long MaxBitmap;
    long BufferSpace;
    gx_band_params_t band;
    bool params_are_read_only;
    gdev_banding_type banding_type;
} gdev_space_params;
# 1290 "./base/gxdevcli.h"
typedef enum {
    pattern_manage__can_accum,
    pattern_manage__start_accum,
    pattern_manage__finish_accum,
    pattern_manage__load,
    pattern_manage__shading_area,
    pattern_manage__is_cpath_accum,
    pattern_manage__shfill_doesnt_need_path,
    pattern_manage__handles_clip_path
} pattern_manage_t;
# 1343 "./base/gxdevcli.h"
typedef struct gs_fill_attributes_s {
      const gs_fixed_rect *clip;
      bool swap_axes;
      const gx_device_halftone *ht;
      gs_logical_operation_t lop;
      fixed ystart, yend;
      patch_fill_state_t *pfs;
} gs_fill_attributes;
# 1423 "./base/gxdevcli.h"
typedef struct gs_devn_params_s gs_devn_params;
# 1507 "./base/gxdevcli.h"
typedef struct gx_process_page_options_s gx_process_page_options_t;

struct gx_process_page_options_s
{
    int (*init_buffer_fn)(void *arg, gx_device *dev, gs_memory_t *memory, int w, int h, void **buffer);
    void (*free_buffer_fn)(void *arg, gx_device *dev, gs_memory_t *memory, void *buffer);
    int (*process_fn)(void *arg, gx_device *dev, gx_device *bdev, const gs_int_rect *rect, void *buffer);
    int (*output_fn)(void *arg, gx_device *dev, void *buffer);
    void *arg;
    int options;
};
# 1613 "./base/gxdevcli.h"
typedef struct gx_image_plane_s {
    const byte *data;
    int data_x;
    uint raster;
} gx_image_plane_t;
# 1631 "./base/gxdevcli.h"
int gx_image_data(gx_image_enum_common_t *info, const byte **planes,
                  int data_x, uint raster, int height);




int gx_image_plane_data(gx_image_enum_common_t *info,
                        const gx_image_plane_t *planes, int height);
int gx_image_plane_data_rows(gx_image_enum_common_t *info,
                             const gx_image_plane_t *planes, int height,
                             int *rows_used);
int gx_image_flush(gx_image_enum_common_t *info);
bool gx_image_planes_wanted(const gx_image_enum_common_t *info, byte *wanted);
int gx_image_end(gx_image_enum_common_t *info, bool draw_last);
# 1661 "./base/gxdevcli.h"
struct gx_device_procs_s { int (*open_device)(gx_device *dev); void (*get_initial_matrix)(gx_device *dev, gs_matrix *pmat); int (*sync_output)(gx_device *dev); int (*output_page)(gx_device *dev, int num_copies, int flush); int (*close_device)(gx_device *dev); gx_color_index (*map_rgb_color)(gx_device *dev, const gx_color_value cv[]); int (*map_color_rgb)(gx_device *dev, gx_color_index color, gx_color_value rgb[3]); int (*fill_rectangle)(gx_device *dev, int x, int y, int width, int height, gx_color_index color); int (*tile_rectangle)(gx_device *dev, const gx_tile_bitmap *tile, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y); int (*copy_mono)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1); int (*copy_color)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height); int (*obsolete_draw_line)(gx_device *dev, int x0, int y0, int x1, int y1, gx_color_index color); int (*get_bits)(gx_device *dev, int y, byte *data, byte **actual_data); int (*get_params)(gx_device *dev, gs_param_list *plist); int (*put_params)(gx_device *dev, gs_param_list *plist); gx_color_index (*map_cmyk_color)(gx_device *dev, const gx_color_value cv[]); const gx_xfont_procs *(*get_xfont_procs)(gx_device *dev); gx_device *(*get_xfont_device)(gx_device *dev); gx_color_index (*map_rgb_alpha_color)(gx_device *dev, gx_color_value red, gx_color_value green, gx_color_value blue, gx_color_value alpha); gx_device *(*get_page_device)(gx_device *dev); int (*get_alpha_bits)(gx_device *dev, graphics_object_type type); int (*copy_alpha)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth); int (*get_band)(gx_device *dev, int y, int *band_start); int (*copy_rop)(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_tile_bitmap *texture, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop); int (*fill_path)(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath); int (*stroke_path)(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath); int (*fill_mask)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath); int (*fill_trapezoid)(gx_device *dev, const gs_fixed_edge *left, const gs_fixed_edge *right, fixed ybot, fixed ytop, bool swap_axes, const gx_drawing_color *pdcolor, gs_logical_operation_t lop); int (*fill_parallelogram)(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop); int (*fill_triangle)(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop); int (*draw_thin_line)(gx_device *dev, fixed fx0, fixed fy0, fixed fx1, fixed fy1, const gx_drawing_color *pdcolor, gs_logical_operation_t lop, fixed adjustx, fixed adjusty); int (*begin_image)(gx_device *dev, const gs_imager_state *pis, const gs_image_t *pim, gs_image_format_t format, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo); int (*image_data)(gx_device *dev, gx_image_enum_common_t *info, const byte **planes, int data_x, uint raster, int height); int (*end_image)(gx_device *dev, gx_image_enum_common_t *info, bool draw_last); int (*strip_tile_rectangle)(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y); int (*strip_copy_rop)(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop); void (*get_clipping_box)(gx_device *dev, gs_fixed_rect *pbox); int (*begin_typed_image)(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo); int (*get_bits_rectangle)(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread); int (*map_color_rgb_alpha)(gx_device *dev, gx_color_index color, gx_color_value rgba[4]); int (*create_compositor)(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev); int (*get_hardware_params)(gx_device *dev, gs_param_list *plist); int (*text_begin)(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte); int (*finish_copydevice)(gx_device *dev, const gx_device *from_dev); int (*begin_transparency_group)(gx_device *dev, const gs_transparency_group_params_t *ptgp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem); int (*end_transparency_group)(gx_device *dev, gs_imager_state *pis); int (*begin_transparency_mask)(gx_device *dev, const gx_transparency_mask_params_t *ptmp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem); int (*end_transparency_mask)(gx_device *dev, gs_imager_state *pis); int (*discard_transparency_layer)(gx_device *dev, gs_imager_state *pis); const gx_cm_color_map_procs * ((*get_color_mapping_procs))(const gx_device * dev); int ((*get_color_comp_index))(gx_device * dev, const char * pname, int name_size, int component_type); gx_color_index ((*encode_color))(gx_device * dev, const gx_color_value colors[]); int ((*decode_color))(gx_device * dev, gx_color_index cindex, gx_color_value colors[]); int (*pattern_manage)(gx_device *pdev, gx_bitmap_id id, gs_pattern1_instance_t *pinst, pattern_manage_t function); int (*fill_rectangle_hl_color)(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath); int (*include_color_space)(gx_device *dev, gs_color_space *cspace, const byte *res_name, int name_length); int (*fill_linear_color_scanline)(gx_device *dev, const gs_fill_attributes *fa, int i, int j, int w, const frac31 *c0, const int32_t *c0_f, const int32_t *cg_num, int32_t cg_den ); int (*fill_linear_color_trapezoid)(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const gs_fixed_point *p3, const frac31 *c0, const frac31 *c1, const frac31 *c2, const frac31 *c3); int (*fill_linear_color_triangle)(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const frac31 *c0, const frac31 *c1, const frac31 *c2); int (*update_spot_equivalent_colors)(gx_device *dev, const gs_state * pgs); gs_devn_params * (*ret_devn_params)(gx_device *dev); int (*fillpage)(gx_device *dev, gs_imager_state * pis, gx_device_color *pdevc); int (*push_transparency_state)(gx_device *dev, gs_imager_state *pis); int (*pop_transparency_state)(gx_device *dev, gs_imager_state *pis); int (*put_image)(gx_device *dev, const byte *buffer, int num_chan, int x, int y, int width, int height, int row_stride, int plane_stride, int alpha_plane_index, int tag_plane_index); int (*dev_spec_op)(gx_device *dev, int op, void *data, int datasize); int (*copy_planes)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, int plane_height); int (*get_profile)(gx_device *dev, cmm_dev_profile_t **dev_profile); void (*set_graphics_type_tag)(gx_device *dev, gs_graphics_type_tag_t); int (*strip_copy_rop2)(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop, uint planar_height); int (*strip_tile_rect_devn)(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, const gx_drawing_color *pdcolor0, const gx_drawing_color *pdcolor1, int phase_x, int phase_y); int (*copy_alpha_hl_color)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth); int (*process_page)(gx_device *dev, gx_process_page_options_t *options);};
# 1677 "./base/gxdevcli.h"
int gx_copy_mono_unaligned(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
int gx_copy_color_unaligned(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
int gx_copy_alpha_unaligned(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);


struct gx_device_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
};

extern const gs_memory_struct_type_t st_device;
void gx_device_finalize(const gs_memory_t *cmem, void *ptr);
# 1697 "./base/gxdevcli.h"
gx_device *gx_device_enum_ptr(gx_device *);
gx_device *gx_device_reloc_ptr(gx_device *, gc_state_t *);



typedef gx_color_index (*dev_proc_map_rgb_color_t)(gx_device *dev, const gx_color_value cv[]);
typedef int (*dev_proc_map_color_rgb_t)(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
# 1716 "./base/gxdevcli.h"
typedef struct gx_device_forward_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;
} gx_device_forward;

extern const gs_memory_struct_type_t st_device_forward;
# 1730 "./base/gxdevcli.h"
typedef struct gx_device_null_s gx_device_null;

struct gx_device_null_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;
};
extern const gx_device_null gs_null_device;



extern const gs_memory_struct_type_t st_device_null;
# 1753 "./base/gxdevcli.h"
void gx_device_init(gx_device * dev, const gx_device * proto,
                    gs_memory_t * mem, bool internal);






void gx_device_init_on_stack(gx_device * dev, const gx_device * proto,
                             gs_memory_t * mem);




void gs_make_null_device(gx_device_null *dev_null, gx_device *target,
                         gs_memory_t *mem);

bool gs_is_null_device(gx_device *dev);


void gx_device_set_target(gx_device_forward *fdev, gx_device *target);


void gx_device_retain(gx_device *dev, bool retained);



uint gx_device_raster(const gx_device * dev, bool pad_to_word);



uint gx_device_raster_chunky(const gx_device * dev, bool pad);



uint gx_device_raster_plane(const gx_device * dev, const gx_render_plane_t *render_plane);





int gx_device_adjust_resolution(gx_device * dev, int actual_width, int actual_height, int fit);



void gx_device_set_margins(gx_device * dev, const float *margins ,
                           bool move_origin);


void gx_device_set_width_height(gx_device * dev, int width, int height);


void gx_device_set_resolution(gx_device * dev, double x_dpi, double y_dpi);


void gx_device_set_media_size(gx_device * dev, double media_width, double media_height);
# 1818 "./base/gxdevcli.h"
void gx_set_device_only(gs_state *, gx_device *);


int gs_closedevice(gx_device *);


void gx_device_free_local(gx_device *);






typedef struct gx_device_type_s {
    gs_memory_type_ptr_t stype;
    int (*initialize)(gx_device *);
} gx_device_type;
# 24 "./base/gxdevice.h" 2
# 1 "./base/gsfname.h" 1
# 33 "./base/gsfname.h"
typedef struct gx_io_device_s gx_io_device;


typedef struct gs_parsed_file_name_s {
    gs_memory_t *memory;
    gx_io_device *iodev;
    const char *fname;
    uint len;
} gs_parsed_file_name_t;


int gs_parse_file_name(gs_parsed_file_name_t *, const char *, uint,
                       const gs_memory_t *);


int gs_parse_real_file_name(gs_parsed_file_name_t *, const char *, uint,
                            gs_memory_t *, client_name_t);


int gs_terminate_file_name(gs_parsed_file_name_t *, gs_memory_t *,
                           client_name_t);


void gs_free_file_name(gs_parsed_file_name_t *, client_name_t);
# 25 "./base/gxdevice.h" 2
# 1 "./base/gsparam.h" 1
# 40 "./base/gsparam.h"
typedef const char *gs_param_name;
# 50 "./base/gsparam.h"
typedef enum {

    gs_param_type_null, gs_param_type_bool, gs_param_type_int,
    gs_param_type_long, gs_param_type_float,

    gs_param_type_string, gs_param_type_name,
    gs_param_type_int_array, gs_param_type_float_array,
    gs_param_type_string_array, gs_param_type_name_array,

    gs_param_type_dict, gs_param_type_dict_int_keys, gs_param_type_array
} gs_param_type;
# 75 "./base/gsparam.h"
typedef struct gs_param_int_array_s { const int *data; uint size; bool persistent; } gs_param_int_array;
typedef struct gs_param_float_array_s { const float *data; uint size; bool persistent; } gs_param_float_array;
typedef struct gs_param_string_array_s { const gs_param_string *data; uint size; bool persistent; } gs_param_string_array;
# 93 "./base/gsparam.h"
typedef struct gs_param_collection_s {
    gs_param_list *list;
    uint size;
} gs_param_collection;
typedef gs_param_collection gs_param_dict;
typedef gs_param_collection gs_param_array;
# 120 "./base/gsparam.h"
extern const byte gs_param_type_sizes[];
extern const byte gs_param_type_base_sizes[];
# 136 "./base/gsparam.h"
typedef union gs_param_value_s {
    bool b; int i; long l; float f; gs_param_string s; gs_param_string n; gs_param_int_array ia; gs_param_float_array fa; gs_param_string_array sa; gs_param_string_array na; gs_param_collection d;
} gs_param_value;





typedef struct gs_param_typed_value_s {
    gs_param_value value;
    gs_param_type type;
} gs_param_typed_value;






gs_ptr_type_t gs_param_typed_value_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
void gs_param_typed_value_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);






typedef enum {



    gs_param_collection_dict_any = 0,





    gs_param_collection_dict_int_keys = 1,




    gs_param_collection_array = 2

} gs_param_collection_type_t;
# 195 "./base/gsparam.h"
typedef union gs_param_enumerator_s {
    int intval;
    long longval;
    void *pvoid;
    char *pchar;
} gs_param_enumerator_t;
typedef gs_param_string gs_param_key_t;
# 256 "./base/gsparam.h"
typedef struct gs_param_list_procs_s {
# 268 "./base/gsparam.h"
         int (*xmit_typed)(gs_param_list *, gs_param_name, gs_param_typed_value *);
# 278 "./base/gsparam.h"
         int (*begin_xmit_collection)(gs_param_list *, gs_param_name, gs_param_dict *, gs_param_collection_type_t);
# 296 "./base/gsparam.h"
         int (*end_xmit_collection)(gs_param_list *, gs_param_name, gs_param_dict *);
# 312 "./base/gsparam.h"
         int (*next_key)(gs_param_list *, gs_param_enumerator_t *, gs_param_key_t *);
# 326 "./base/gsparam.h"
         int (*request)(gs_param_list *, gs_param_name);
# 341 "./base/gsparam.h"
         int (*requested)(const gs_param_list *, gs_param_name);
# 350 "./base/gsparam.h"
         int (*get_policy)(gs_param_list *, gs_param_name);
# 362 "./base/gsparam.h"
         int (*signal_error)(gs_param_list *, gs_param_name, int);
# 375 "./base/gsparam.h"
         int (*commit)(gs_param_list *);



} gs_param_list_procs;


int param_read_requested_typed(gs_param_list *, gs_param_name,
                                  gs_param_typed_value *);






int param_read_null(gs_param_list *, gs_param_name);
int param_write_null(gs_param_list *, gs_param_name);
int param_read_bool(gs_param_list *, gs_param_name, bool *);
int param_write_bool(gs_param_list *, gs_param_name, const bool *);
int param_read_int(gs_param_list *, gs_param_name, int *);
int param_write_int(gs_param_list *, gs_param_name, const int *);
int param_read_long(gs_param_list *, gs_param_name, long *);
int param_write_long(gs_param_list *, gs_param_name, const long *);
int param_read_float(gs_param_list *, gs_param_name, float *);
int param_write_float(gs_param_list *, gs_param_name, const float *);
int param_read_string(gs_param_list *, gs_param_name, gs_param_string *);
int param_write_string(gs_param_list *, gs_param_name,
                       const gs_param_string *);
int param_read_name(gs_param_list *, gs_param_name, gs_param_string *);
int param_write_name(gs_param_list *, gs_param_name,
                     const gs_param_string *);
int param_read_int_array(gs_param_list *, gs_param_name,
                         gs_param_int_array *);
int param_write_int_array(gs_param_list *, gs_param_name,
                          const gs_param_int_array *);
int param_write_int_values(gs_param_list *, gs_param_name,
                           const int *, uint, bool);
int param_read_float_array(gs_param_list *, gs_param_name,
                           gs_param_float_array *);
int param_write_float_array(gs_param_list *, gs_param_name,
                            const gs_param_float_array *);
int param_write_float_values(gs_param_list *, gs_param_name,
                             const float *, uint, bool);
int param_read_string_array(gs_param_list *, gs_param_name,
                            gs_param_string_array *);
int param_write_string_array(gs_param_list *, gs_param_name,
                             const gs_param_string_array *);
int param_read_name_array(gs_param_list *, gs_param_name,
                          gs_param_string_array *);
int param_write_name_array(gs_param_list *, gs_param_name,
                           const gs_param_string_array *);
# 439 "./base/gsparam.h"
struct gs_param_list_s {
    const gs_param_list_procs *procs; gs_memory_t *memory; bool persistent_keys;
};




void gs_param_list_set_persist_keys(gs_param_list *, bool);


void param_init_enumerator(gs_param_enumerator_t * penum);






typedef struct gs_param_item_s {
    const char *key;
    byte type;
    short offset;
} gs_param_item_t;






int gs_param_read_items(gs_param_list * plist, void *obj,
                        const gs_param_item_t * items);
int gs_param_write_items(gs_param_list * plist, const void *obj,
                         const void *default_obj,
                         const gs_param_item_t * items);


void gs_param_list_init(gs_param_list *, const gs_param_list_procs *,
                        gs_memory_t *);






int param_coerce_typed(gs_param_typed_value * pvalue,
                       gs_param_type req_type, gs_memory_t * mem);







int gs_param_request_default(gs_param_list *, gs_param_name);
int gs_param_requested_default(const gs_param_list *, gs_param_name);
# 520 "./base/gsparam.h"
typedef struct gs_c_param_s gs_c_param;
typedef struct gs_c_param_list_s {
    const gs_param_list_procs *procs; gs_memory_t *memory; bool persistent_keys;
    gs_c_param *head;
    gs_param_list *target;
    uint count;
    bool any_requested;
    gs_param_collection_type_t coll_type;
} gs_c_param_list;
# 540 "./base/gsparam.h"
void gs_c_param_list_set_target(gs_c_param_list *, gs_param_list *);





gs_c_param_list *gs_c_param_list_alloc(gs_memory_t *, client_name_t);
void gs_c_param_list_write(gs_c_param_list *, gs_memory_t *);
void gs_c_param_list_write_more(gs_c_param_list *);
void gs_c_param_list_read(gs_c_param_list *);
void gs_c_param_list_release(gs_c_param_list *);
# 26 "./base/gxdevice.h" 2




# 1 "./base/gsmalloc.h" 1
# 26 "./base/gsmalloc.h"
typedef struct gs_malloc_block_s gs_malloc_block_t;
typedef struct gs_malloc_memory_s {
    gs_memory_t *stable_memory; gs_memory_procs_t procs; gs_lib_ctx_t *gs_lib_ctx; gs_memory_t *non_gc_memory; gs_memory_t *thread_safe_memory;
    gs_malloc_block_t *allocated;
    long limit;
    long used;
    long max_used;
    gx_monitor_t *monitor;
} gs_malloc_memory_t;


gs_malloc_memory_t *gs_malloc_memory_init(void);







gs_memory_t * gs_malloc_init(void);
void gs_malloc_release(gs_memory_t *mem);
# 56 "./base/gsmalloc.h"
int gs_malloc_wrap(gs_memory_t **wrapped, gs_malloc_memory_t *contents);


gs_malloc_memory_t *gs_malloc_wrapped_contents(gs_memory_t *wrapped);


gs_malloc_memory_t *gs_malloc_unwrap(gs_memory_t *wrapped);
# 31 "./base/gxdevice.h" 2




# 1 "./base/gxstdio.h" 1
# 36 "./base/gxdevice.h" 2
# 239 "./base/gxdevice.h"
int gx_default_open_device(gx_device *dev);
void gx_default_get_initial_matrix(gx_device *dev, gs_matrix *pmat);
void gx_upright_get_initial_matrix(gx_device *dev, gs_matrix *pmat);
int gx_default_sync_output(gx_device *dev);
int gx_default_output_page(gx_device *dev, int num_copies, int flush);
int gx_default_close_device(gx_device *dev);
gx_color_index gx_default_w_b_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int gx_default_w_b_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);


int gx_default_tile_rectangle(gx_device *dev, const gx_tile_bitmap *tile, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y);
int gx_default_copy_mono(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
int gx_default_copy_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
int gx_default_draw_line(gx_device *dev, int x0, int y0, int x1, int y1, gx_color_index color);
int gx_no_get_bits(gx_device *dev, int y, byte *data, byte **actual_data);
int gx_default_get_bits(gx_device *dev, int y, byte *data, byte **actual_data);
int gx_default_get_params(gx_device *dev, gs_param_list *plist);
int gx_default_put_params(gx_device *dev, gs_param_list *plist);
gx_color_index gx_default_map_cmyk_color(gx_device *dev, const gx_color_value cv[]);
const gx_xfont_procs *gx_default_get_xfont_procs(gx_device *dev);
gx_device *gx_default_get_xfont_device(gx_device *dev);
gx_color_index gx_default_map_rgb_alpha_color(gx_device *dev, gx_color_value red, gx_color_value green, gx_color_value blue, gx_color_value alpha);
gx_device *gx_default_get_page_device(gx_device *dev);
gx_device *gx_page_device_get_page_device(gx_device *dev);
int gx_default_get_alpha_bits(gx_device *dev, graphics_object_type type);
int gx_no_copy_alpha(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);
int gx_default_copy_alpha(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);
int gx_default_get_band(gx_device *dev, int y, int *band_start);
int gx_no_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_tile_bitmap *texture, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int gx_default_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_tile_bitmap *texture, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int gx_default_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gx_default_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gx_default_fill_mask(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath);
int gx_default_fill_trapezoid(gx_device *dev, const gs_fixed_edge *left, const gs_fixed_edge *right, fixed ybot, fixed ytop, bool swap_axes, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gx_default_fill_parallelogram(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gx_default_fill_triangle(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gx_default_draw_thin_line(gx_device *dev, fixed fx0, fixed fy0, fixed fx1, fixed fy1, const gx_drawing_color *pdcolor, gs_logical_operation_t lop, fixed adjustx, fixed adjusty);
int gx_default_begin_image(gx_device *dev, const gs_imager_state *pis, const gs_image_t *pim, gs_image_format_t format, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
int gx_default_image_data(gx_device *dev, gx_image_enum_common_t *info, const byte **planes, int data_x, uint raster, int height);
int gx_default_end_image(gx_device *dev, gx_image_enum_common_t *info, bool draw_last);
int gx_default_strip_tile_rectangle(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y);
int gx_no_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int gx_default_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
void gx_default_get_clipping_box(gx_device *dev, gs_fixed_rect *pbox);
void gx_get_largest_clipping_box(gx_device *dev, gs_fixed_rect *pbox);
int gx_default_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
int gx_no_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);
int gx_default_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);
int gx_default_map_color_rgb_alpha(gx_device *dev, gx_color_index color, gx_color_value rgba[4]);
int gx_no_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);


int gx_default_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
int gx_null_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
int gx_default_get_hardware_params(gx_device *dev, gs_param_list *plist);
int gx_default_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);
int gx_default_finish_copydevice(gx_device *dev, const gx_device *from_dev);
int gx_default_dev_spec_op(gx_device *dev, int op, void *data, int datasize);
int gx_default_fill_rectangle_hl_color(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gx_default_include_color_space(gx_device *dev, gs_color_space *cspace, const byte *res_name, int name_length);
int gx_default_fill_linear_color_scanline(gx_device *dev, const gs_fill_attributes *fa, int i, int j, int w, const frac31 *c0, const int32_t *c0_f, const int32_t *cg_num, int32_t cg_den );
int gx_hl_fill_linear_color_scanline(gx_device *dev, const gs_fill_attributes *fa, int i, int j, int w, const frac31 *c0, const int32_t *c0_f, const int32_t *cg_num, int32_t cg_den );
int gx_default_fill_linear_color_trapezoid(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const gs_fixed_point *p3, const frac31 *c0, const frac31 *c1, const frac31 *c2, const frac31 *c3);
int gx_default_fill_linear_color_triangle(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const frac31 *c0, const frac31 *c1, const frac31 *c2);
int gx_default_update_spot_equivalent_colors(gx_device *dev, const gs_state * pgs);
gs_devn_params * gx_default_ret_devn_params(gx_device *dev);
int gx_default_fillpage(gx_device *dev, gs_imager_state * pis, gx_device_color *pdevc);
int gx_default_get_profile(gx_device *dev, cmm_dev_profile_t **dev_profile);
void gx_default_set_graphics_type_tag(gx_device *dev, gs_graphics_type_tag_t);
int gx_default_strip_copy_rop2(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop, uint planar_height);
int gx_default_strip_tile_rect_devn(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, const gx_drawing_color *pdcolor0, const gx_drawing_color *pdcolor1, int phase_x, int phase_y);
int gx_default_copy_alpha_hl_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth);
int gx_default_process_page(gx_device *dev, gx_process_page_options_t *options);





gx_color_index gx_default_b_w_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int gx_default_b_w_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
gx_color_index gx_default_gray_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int gx_default_gray_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
int gx_default_rgb_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);






gx_color_index gx_default_rgb_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
gx_color_index cmyk_1bit_map_cmyk_color(gx_device *dev, const gx_color_value cv[]);
int cmyk_1bit_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
int (cmyk_1bit_map_color_cmyk)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
gx_color_index cmyk_8bit_map_cmyk_color(gx_device *dev, const gx_color_value cv[]);
int cmyk_8bit_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
int (cmyk_8bit_map_color_cmyk)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
gx_color_index cmyk_16bit_map_cmyk_color(gx_device *dev, const gx_color_value cv[]);
int (cmyk_16bit_map_color_cmyk)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
gx_color_index (gx_default_8bit_map_gray_color)(gx_device * dev, const gx_color_value colors[]);
int (gx_default_8bit_map_color_gray)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);


int gx_forward_close_device(gx_device *dev);
void gx_forward_get_initial_matrix(gx_device *dev, gs_matrix *pmat);
int gx_forward_sync_output(gx_device *dev);
int gx_forward_output_page(gx_device *dev, int num_copies, int flush);
gx_color_index gx_forward_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int gx_forward_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
int gx_forward_fill_rectangle(gx_device *dev, int x, int y, int width, int height, gx_color_index color);
int gx_forward_tile_rectangle(gx_device *dev, const gx_tile_bitmap *tile, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y);
int gx_forward_copy_mono(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
int gx_forward_copy_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
int gx_forward_get_bits(gx_device *dev, int y, byte *data, byte **actual_data);
int gx_forward_get_params(gx_device *dev, gs_param_list *plist);
int gx_forward_put_params(gx_device *dev, gs_param_list *plist);
gx_color_index gx_forward_map_cmyk_color(gx_device *dev, const gx_color_value cv[]);
const gx_xfont_procs *gx_forward_get_xfont_procs(gx_device *dev);
gx_device *gx_forward_get_xfont_device(gx_device *dev);
gx_color_index gx_forward_map_rgb_alpha_color(gx_device *dev, gx_color_value red, gx_color_value green, gx_color_value blue, gx_color_value alpha);
gx_device *gx_forward_get_page_device(gx_device *dev);

int gx_forward_copy_alpha(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);
int gx_forward_get_band(gx_device *dev, int y, int *band_start);
int gx_forward_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_tile_bitmap *texture, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int gx_forward_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gx_forward_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gx_forward_fill_mask(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath);
int gx_forward_fill_trapezoid(gx_device *dev, const gs_fixed_edge *left, const gs_fixed_edge *right, fixed ybot, fixed ytop, bool swap_axes, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gx_forward_fill_parallelogram(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gx_forward_fill_triangle(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gx_forward_draw_thin_line(gx_device *dev, fixed fx0, fixed fy0, fixed fx1, fixed fy1, const gx_drawing_color *pdcolor, gs_logical_operation_t lop, fixed adjustx, fixed adjusty);
int gx_forward_begin_image(gx_device *dev, const gs_imager_state *pis, const gs_image_t *pim, gs_image_format_t format, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);


int gx_forward_strip_tile_rectangle(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y);
int gx_forward_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
void gx_forward_get_clipping_box(gx_device *dev, gs_fixed_rect *pbox);
int gx_forward_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
int gx_forward_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);
int gx_forward_map_color_rgb_alpha(gx_device *dev, gx_color_index color, gx_color_value rgba[4]);

int gx_forward_get_hardware_params(gx_device *dev, gs_param_list *plist);
int gx_forward_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);
const gx_cm_color_map_procs * (gx_forward_get_color_mapping_procs)(const gx_device * dev);
int (gx_forward_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
gx_color_index (gx_forward_encode_color)(gx_device * dev, const gx_color_value colors[]);
int (gx_forward_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
int gx_forward_dev_spec_op(gx_device *dev, int op, void *data, int datasize);
int gx_forward_fill_rectangle_hl_color(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gx_forward_include_color_space(gx_device *dev, gs_color_space *cspace, const byte *res_name, int name_length);
int gx_forward_fill_linear_color_scanline(gx_device *dev, const gs_fill_attributes *fa, int i, int j, int w, const frac31 *c0, const int32_t *c0_f, const int32_t *cg_num, int32_t cg_den );
int gx_forward_fill_linear_color_trapezoid(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const gs_fixed_point *p3, const frac31 *c0, const frac31 *c1, const frac31 *c2, const frac31 *c3);
int gx_forward_fill_linear_color_triangle(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const frac31 *c0, const frac31 *c1, const frac31 *c2);
int gx_forward_update_spot_equivalent_colors(gx_device *dev, const gs_state * pgs);
gs_devn_params * gx_forward_ret_devn_params(gx_device *dev);
int gx_forward_fillpage(gx_device *dev, gs_imager_state * pis, gx_device_color *pdevc);
int gx_forward_copy_planes(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, int plane_height);
int gx_forward_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
int gx_forward_get_profile(gx_device *dev, cmm_dev_profile_t **dev_profile);
void gx_forward_set_graphics_type_tag(gx_device *dev, gs_graphics_type_tag_t);
int gx_forward_strip_copy_rop2(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop, uint planar_height);
int gx_forward_strip_tile_rect_devn(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, const gx_drawing_color *pdcolor0, const gx_drawing_color *pdcolor1, int phase_x, int phase_y);
int gx_forward_copy_alpha_hl_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth);




void gx_device_set_procs(gx_device *);


void gx_device_fill_in_procs(gx_device *);
void gx_device_forward_fill_in_procs(gx_device_forward *);


void gx_device_forward_color_procs(gx_device_forward *);





void check_device_separable(gx_device * dev);




void set_linear_color_bits_mask_shift(gx_device * dev);




void gx_device_copy_color_procs(gx_device *dev, const gx_device *target);


gx_color_index gx_device_black(gx_device *dev);



gx_color_index gx_device_white(gx_device *dev);





void gx_device_decache_colors(gx_device *dev);





void gx_device_copy_color_params(gx_device *dev, const gx_device *target);






void gx_device_copy_params(gx_device *dev, const gx_device *target);
# 464 "./base/gxdevice.h"
int gx_parse_output_file_name(gs_parsed_file_name_t *pfn,
                              const char **pfmt, const char *fname,
                              uint len, gs_memory_t *memory);




bool gx_outputfile_is_separate_pages(const char *fname, gs_memory_t *memory);





int gx_device_open_output_file(const gx_device * dev, char *fname,
                               bool binary, bool positionable,
                               FILE ** pfile);


int gx_device_close_output_file(const gx_device * dev, const char *fname,
                                FILE *file);


int gx_device_delete_output_file(const gx_device * dev, const char *fname);
# 505 "./base/gxdevice.h"
int gx_finish_output_page(gx_device *dev, int num_copies, int flush);
# 596 "./base/gxdevice.h"
typedef struct gdev_input_media_s {
    float PageSize[4];
    const char *MediaColor;
    float MediaWeight;
    const char *MediaType;
} gdev_input_media_t;


extern const gdev_input_media_t gdev_input_media_default;

void gdev_input_media_init(gdev_input_media_t * pim);

int gdev_begin_input_media(gs_param_list * mlist, gs_param_dict * pdict,
                           int count);

int gdev_write_input_page_size(int index, gs_param_dict * pdict,
                               double width_points, double height_points);

int gdev_write_input_media(int index, gs_param_dict * pdict,
                           const gdev_input_media_t * pim);

int gdev_end_input_media(gs_param_list * mlist, gs_param_dict * pdict);

typedef struct gdev_output_media_s {
    const char *OutputType;
} gdev_output_media_t;


extern const gdev_output_media_t gdev_output_media_default;

int gdev_begin_output_media(gs_param_list * mlist, gs_param_dict * pdict,
                            int count);

int gdev_write_output_media(int index, gs_param_dict * pdict,
                            const gdev_output_media_t * pom);


void gx_default_put_icc_dir(gs_param_string *icc_pro, gx_device * dev);

int gdev_end_output_media(gs_param_list * mlist, gs_param_dict * pdict);

void gx_device_request_leadingedge(gx_device *dev, int le_req);
# 24 "./base/gxoprect.c" 2

# 1 "./base/gxgetbit.h" 1
# 22 "./base/gxgetbit.h"
# 1 "./base/gxbitfmt.h" 1
# 30 "./base/gxbitfmt.h"
typedef ulong gx_bitmap_format_t;
# 23 "./base/gxgetbit.h" 2
# 36 "./base/gxgetbit.h"
typedef gx_bitmap_format_t gs_get_bits_options_t;







struct gs_get_bits_params_s {
    gs_get_bits_options_t options;
    byte *data[(64)];
    int x_offset;
    int original_y;
    uint raster;
};
# 82 "./base/gxgetbit.h"
int gx_get_bits_return_pointer(gx_device * dev, int x, int h,
                               gs_get_bits_params_t * params,
                               const gs_get_bits_params_t *stored,
                               byte ** stored_base);


int gx_get_bits_copy(gx_device * dev, int x, int w, int h,
                     gs_get_bits_params_t * params,
                     const gs_get_bits_params_t *stored,
                     const byte * src_base, uint dev_raster);
# 26 "./base/gxoprect.c" 2
# 1 "./base/gxoprect.h" 1
# 28 "./base/gxoprect.h"
extern int gx_overprint_generic_fill_rectangle(
    gx_device * tdev,
    bool blendspot,
    gx_color_index drawn_comps,
    ushort k_value,
    int x,
    int y,
    int w,
    int h,
    gx_color_index color,
    gs_memory_t * mem );
# 55 "./base/gxoprect.h"
extern int gx_overprint_sep_fill_rectangle_1(
    gx_device * tdev,
    gx_color_index retain_mask,
    int x,
    int y,
    int w,
    int h,
    gx_color_index color,
    gs_memory_t * mem );

extern int gx_overprint_sep_fill_rectangle_2(
    gx_device * tdev,
    bool blendspot,
    gx_color_index retain_mask,
    int x,
    int y,
    int w,
    int h,
    gx_color_index color,
    gs_memory_t * mem );
# 27 "./base/gxoprect.c" 2







static void
unpack_scanline_lt8(
    gx_color_index * destp,
    const byte * srcp,
    int src_offset,
    int width,
    int depth )
{
    byte buff = 0;
    int i = 0, shift = 8 - depth, p_per_byte = 8 / depth;


    if (width == 0)
        return;


    if (src_offset >= p_per_byte) {
        srcp += src_offset / p_per_byte;
        src_offset &= (p_per_byte - 1);
    }
    if (src_offset > 0) {
        buff = *srcp++ << (src_offset * depth);
        i = src_offset;
        width += src_offset;
    }


    for (; i < width; i++, buff <<= depth) {
        if ((i & (p_per_byte - 1)) == 0)
            buff = *srcp++;
        *destp++ = buff >> shift;
    }
}





static void
pack_scanline_lt8(
    const gx_color_index * srcp,
    byte * destp,
    int dest_offset,
    int width,
    int depth )
{
    byte buff = 0;
    int i = 0, p_per_byte = 8 / depth;


    if (width == 0)
        return;


    if (dest_offset >= p_per_byte) {
        destp += dest_offset / p_per_byte;
        dest_offset &= (p_per_byte - 1);
    }
    if (dest_offset > 0) {
        buff = *destp++ >> (8 - dest_offset * depth);
        i = dest_offset;
        width += dest_offset;
    }


    for (; i < width; i++) {
        buff = (buff << depth) | *srcp++;
        if ((i & (p_per_byte - 1)) == p_per_byte - 1)
            *destp++ = buff;
    }
    if ((i &= (p_per_byte - 1)) != 0) {
        int shift = depth * (p_per_byte - i);
        int mask = (1 << shift) - 1;

        *destp = (*destp & mask) | (buff << shift);
    }
}





static void
unpack_scanline_ge8(
    gx_color_index * destp,
    const byte * srcp,
    int src_offset,
    int width,
    int depth )
{
    gx_color_index buff = 0;
    int i, j, bytes_per_p = depth >> 3;


    srcp += src_offset * bytes_per_p;


    width *= bytes_per_p;
    for (i = 0, j = 0; i < width; i++) {
        buff = (buff << 8) | *srcp++;
        if (++j == bytes_per_p) {
            *destp++ = buff;
            buff = 0;
            j = 0;
        }
    }
}




static void
pack_scanline_ge8(
    const gx_color_index * srcp,
    byte * destp,
    int dest_offset,
    int width,
    int depth )
{
    gx_color_index buff = 0;
    int i, j, bytes_per_p = depth >> 3;
    int shift = depth - 8;


    destp += dest_offset;


    width *= bytes_per_p;
    for (i = 0, j = bytes_per_p - 1; i < width; i++, buff <<= 8) {
        if (++j == bytes_per_p) {
            buff = *srcp++;
            j = 0;
        }
        *destp++ = buff >> shift;
    }
}
# 187 "./base/gxoprect.c"
int
gx_overprint_generic_fill_rectangle(
    gx_device * tdev,
    bool blendspot,
    gx_color_index drawn_comps,
    ushort k_value,
    int x,
    int y,
    int w,
    int h,
    gx_color_index color,
    gs_memory_t * mem )
{
    gx_color_value src_cvals[(8 * 8)];
    gx_color_index * pcolor_buff = 0;
    byte * gb_buff = 0;
    gs_get_bits_params_t gb_params;
    gs_int_rect gb_rect;
    int depth = tdev->color_info.depth;
    int bit_x, start_x, end_x, raster, code;
    void (*unpack_proc)( gx_color_index *,
                                            const byte *,
                                            int, int, int );
    void (*pack_proc)( const gx_color_index *,
                                          byte *,
                                          int, int, int );

    do { do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, x = 0; if ( y < 0 ) h += y, y = 0; } } while (0); do { if ( w > (tdev)->width - x ) w = (tdev)->width - x; } while (0); do { if ( h > (tdev)->height - y ) h = (tdev)->height - y; } while (0); } while (0); if ( w <= 0 || h <= 0 ) return 0; } while (0);
    bit_x = x * depth;
    start_x = bit_x & ~(8 * (1 << 3) - 1);
    end_x = bit_x + w * depth;


    if (depth >= 8) {
        unpack_proc = unpack_scanline_ge8;
        pack_proc = pack_scanline_ge8;
    } else {
        unpack_proc = unpack_scanline_lt8;
        pack_proc = pack_scanline_lt8;
    }


    if ((code = ((tdev)->procs.decode_color)(tdev, color, src_cvals)) < 0)
        return code;


    pcolor_buff = (gx_color_index *)
                      (*(mem)->procs.alloc_bytes)(mem, w * sizeof(gx_color_index_data), "overprint generic fill rectangle");


    if (pcolor_buff == 0)
        return ((-25));


    raster = ((uint)((((end_x - start_x) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
    gb_buff = (*(mem)->procs.alloc_bytes)(mem, raster, "overprint generic fill rectangle");
    if (gb_buff == 0) {
        ((mem)->procs.free_object(mem, pcolor_buff, "overprint generic fill rectangle"));


        return ((-25));
    }
# 289 "./base/gxoprect.c"
    gb_params.options = (1L<<0)
                       | (1L<<4)
                       | ((1L<<8) | (1L<<9) | (1L<<10) | (1L<<11) | (1L<<12) | (1L<<13))
                       | (1L<<16)
                       | (1L<<20)
                       | (1L<<22)
                       | (1L<<24)
                       | (1L<<28);
    gb_params.x_offset = 0;
    gb_params.data[0] = gb_buff;
    gb_params.raster = raster;

    gb_rect.p.x = x;
    gb_rect.q.x = x + w;


    while (h-- > 0 && code >= 0) {
        gx_color_index * cp = pcolor_buff;
        int i;

        gb_rect.p.y = y++;
        gb_rect.q.y = y;
        code = ((tdev)->procs.get_bits_rectangle)( tdev,
                                                   &gb_rect,
                                                   &gb_params,
                                                   0 );
        if (code < 0)
            break;
        unpack_proc(pcolor_buff, gb_buff, 0, w, depth);
        for (i = 0; i < w; i++, cp++) {
            gx_color_index comps;
            int j;
            gx_color_value dest_cvals[(8 * 8)];

            if ((code = ((tdev)->procs.decode_color)(tdev, *cp, dest_cvals)) < 0)
                break;
            if (k_value > 0) {

                for (j = 0, comps = drawn_comps; j < 3; j++, comps >>= 1) {
                    if ((comps & 0x1) != 0)
                        dest_cvals[j] = src_cvals[j];
                    else {
                        int temp = (dest_cvals[j] * (256 - k_value));
                        dest_cvals[j] = temp >> 8;
                    }
                }
            } else {
                if (blendspot) {
                    for (j = 0, comps = drawn_comps; comps != 0; ++j, comps >>= 1) {
                        if ((comps & 0x1) != 0)
                            dest_cvals[j] = src_cvals[j];
                    }
                } else {
                    for (j = 0, comps = drawn_comps; comps != 0; ++j, comps >>= 1) {
                        if ((comps & 0x1) != 0)
                            dest_cvals[j] = src_cvals[j];
                    }
                }
            }
            *cp = ((tdev)->procs.encode_color)(tdev, dest_cvals);
        }
        pack_proc(pcolor_buff, gb_buff, 0, w, depth);
        code = ((tdev)->procs.copy_color)( tdev,
                                           gb_buff,
                                           0,
                                           raster,
                                           0L,
                                           x, y - 1, w, 1 );
    }

    ((mem)->procs.free_object(mem, gb_buff, "overprint generic fill rectangle"));


    ((mem)->procs.free_object(mem, pcolor_buff, "overprint generic fill rectangle"));



    return code;
}




static uint fill_pat_2[4] = {
    (uint)((uint)(0x00) * 0x01010101), (uint)((uint)(0x55) * 0x01010101),
    (uint)((uint)(0xaa) * 0x01010101), (uint)((uint)(0xff) * 0x01010101)
};

static uint fill_pat_4[16] = {
    (uint)((uint)(0x00) * 0x01010101), (uint)((uint)(0x11) * 0x01010101),
    (uint)((uint)(0x22) * 0x01010101), (uint)((uint)(0x33) * 0x01010101),
    (uint)((uint)(0x44) * 0x01010101), (uint)((uint)(0x55) * 0x01010101),
    (uint)((uint)(0x66) * 0x01010101), (uint)((uint)(0x77) * 0x01010101),
    (uint)((uint)(0x88) * 0x01010101), (uint)((uint)(0x99) * 0x01010101),
    (uint)((uint)(0xaa) * 0x01010101), (uint)((uint)(0xbb) * 0x01010101),
    (uint)((uint)(0xcc) * 0x01010101), (uint)((uint)(0xdd) * 0x01010101),
    (uint)((uint)(0xee) * 0x01010101), (uint)((uint)(0xff) * 0x01010101)
};







static uint
replicate_color(int depth, uint color)
{
    switch (depth) {

      case 1:
        color = (uint)(-(int)color); break;

      case 2:
        color = fill_pat_2[color]; break;

      case 4:
        color = fill_pat_4[color]; break;

      case 8:
        color= (uint)((uint)(color) * 0x01010101); break;


      case 16:
        color = (color << 16) | color;







    }

    return color;
}
# 459 "./base/gxoprect.c"
int
gx_overprint_sep_fill_rectangle_1(
    gx_device * tdev,
    gx_color_index retain_mask,
    int x,
    int y,
    int w,
    int h,
    gx_color_index color,
    gs_memory_t * mem )
{
    byte * gb_buff = 0;
    gs_get_bits_params_t gb_params;
    gs_int_rect gb_rect;
    int code = 0, bit_w, depth = tdev->color_info.depth;
    int raster;
    uint rep_color, rep_mask;

    do { do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, x = 0; if ( y < 0 ) h += y, y = 0; } } while (0); do { if ( w > (tdev)->width - x ) w = (tdev)->width - x; } while (0); do { if ( h > (tdev)->height - y ) h = (tdev)->height - y; } while (0); } while (0); if ( w <= 0 || h <= 0 ) return 0; } while (0);
    bit_w = w * depth;


    if (depth < 8 * sizeof(uint)) {
        rep_color = replicate_color(depth, (uint)color);
        rep_mask = replicate_color(depth, (uint)retain_mask);
    } else {
        rep_color = (uint)color;
        rep_mask = (uint)retain_mask;
    }


    raster = ((uint)((((w * depth) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
    gb_buff = (*(mem)->procs.alloc_bytes)(mem, raster, "overprint sep fill rectangle 1");
    if (gb_buff == 0)
        return ((-25));





    gb_params.options = (1L<<0)
                       | (1L<<4)
                       | ((1L<<8) | (1L<<9) | (1L<<10) | (1L<<11) | (1L<<12) | (1L<<13))
                       | (1L<<16)
                       | (1L<<20)
                       | (1L<<22)
                       | (1L<<24)
                       | (1L<<28);
    gb_params.x_offset = 0;
    gb_params.data[0] = gb_buff;
    gb_params.raster = raster;

    gb_rect.p.x = x;
    gb_rect.q.x = x + w;


    while (h-- > 0 && code >= 0) {
        gb_rect.p.y = y++;
        gb_rect.q.y = y;
        code = ((tdev)->procs.get_bits_rectangle)( tdev,
                                                   &gb_rect,
                                                   &gb_params,
                                                   0 );
        if (code < 0)
            break;
        bits_fill_rectangle_masked( gb_buff,
                                    0,
                                    raster,
                                    rep_color,
                                    rep_mask,
                                    bit_w,
                                    1 );
        code = ((tdev)->procs.copy_color)( tdev,
                                           gb_buff,
                                           0,
                                           raster,
                                           0L,
                                           x, y - 1, w, 1 );
    }

    ((mem)->procs.free_object(mem, gb_buff, "overprint generic fill rectangle"));



    return code;
}

int
gx_overprint_sep_fill_rectangle_2(
    gx_device * tdev,
    bool blendspot,
    gx_color_index retain_mask,
    int x,
    int y,
    int w,
    int h,
    gx_color_index color,
    gs_memory_t * mem )
{
    byte * gb_buff = 0;
    gs_get_bits_params_t gb_params;
    gs_int_rect gb_rect;
    int code = 0, byte_w, raster;
    int byte_depth = tdev->color_info.depth >> 3;
    byte * pcolor;
    byte * pmask;

    do { do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, x = 0; if ( y < 0 ) h += y, y = 0; } } while (0); do { if ( w > (tdev)->width - x ) w = (tdev)->width - x; } while (0); do { if ( h > (tdev)->height - y ) h = (tdev)->height - y; } while (0); } while (0); if ( w <= 0 || h <= 0 ) return 0; } while (0);
    byte_w = w * byte_depth;


    pcolor = (byte *)&color;
    pmask = (byte *)&retain_mask;






    raster = ((uint)((((w * (byte_depth << 3)) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
    gb_buff = (*(mem)->procs.alloc_bytes)(mem, raster, "overprint sep fill rectangle 2");
    if (gb_buff == 0)
        return ((-25));





    gb_params.options = (1L<<0)
                       | (1L<<4)
                       | ((1L<<8) | (1L<<9) | (1L<<10) | (1L<<11) | (1L<<12) | (1L<<13))
                       | (1L<<16)
                       | (1L<<20)
                       | (1L<<22)
                       | (1L<<24)
                       | (1L<<28);
    gb_params.x_offset = 0;
    gb_params.data[0] = gb_buff;
    gb_params.raster = raster;

    gb_rect.p.x = x;
    gb_rect.q.x = x + w;


    while (h-- > 0 && code >= 0) {
        int i, j;
        byte * cp = gb_buff;

        gb_rect.p.y = y++;
        gb_rect.q.y = y;
        code = ((tdev)->procs.get_bits_rectangle)( tdev,
                                                   &gb_rect,
                                                   &gb_params,
                                                   0 );
        if (code < 0)
            break;
        if (blendspot) {



            for (i = 0, j = 0; i < byte_w; i++, cp++) {
                int temp = (255-*cp) * (255-pcolor[j]);
                temp = temp >> 8;
                *cp = (255-temp);
                if (++j == byte_depth)
                    j = 0;
            }
        } else {
            for (i = 0, j = 0; i < byte_w; i++, cp++) {
                *cp = (*cp & pmask[j]) | pcolor[j];
                if (++j == byte_depth)
                    j = 0;
            }
        }
        code = ((tdev)->procs.copy_color)( tdev,
                                           gb_buff,
                                           0,
                                           raster,
                                           0L,
                                           x, y - 1, w, 1 );
    }

    ((mem)->procs.free_object(mem, gb_buff, "overprint generic fill rectangle"));



    return code;
}
