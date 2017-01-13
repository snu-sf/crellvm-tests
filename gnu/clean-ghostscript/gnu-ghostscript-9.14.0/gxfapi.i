# 1 "./base/gxfapi.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gxfapi.c" 2
# 15 "./base/gxfapi.c"
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
# 16 "./base/gxfapi.c" 2

# 1 "./base/gsmemory.h" 1
# 42 "./base/gsmemory.h"
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
# 43 "./base/gsmemory.h" 2
# 1 "./base/gslibctx.h" 1
# 21 "./base/gslibctx.h"
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
# 22 "./base/gslibctx.h" 2
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
# 18 "./base/gxfapi.c" 2
# 1 "./base/gserrors.h" 1
# 50 "./base/gserrors.h"
int gs_log_error(int, const char *, int);
# 88 "./base/gserrors.h"
const char *gs_errstr(int code);
# 189 "./base/gserrors.h"
int gs_throw_imp(const char *func, const char *file, int line,
        int op, int code, const char *fmt, ...) __attribute__((__format__ (__printf__, 6, 7)));
# 19 "./base/gxfapi.c" 2
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
# 138 "./base/gscspace.h"
typedef struct gs_state_s gs_state;



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



typedef struct gs_imager_state_s gs_imager_state;







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
# 27 "./base/gxstdio.h"
# 1 "./base/gsio.h" 1
# 28 "./base/gxstdio.h" 2
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
# 20 "./base/gxfapi.c" 2
# 1 "./base/gxfont.h" 1
# 24 "./base/gxfont.h"
# 1 "./base/gsfont.h" 1
# 44 "./base/gsfont.h"
gs_font_dir *gs_font_dir_alloc2(gs_memory_t * struct_mem,
                                gs_memory_t * bits_mem);
gs_font_dir *gs_font_dir_alloc2_limits(gs_memory_t * struct_mem,
                                       gs_memory_t * bits_mem,
                                       uint smax, uint bmax, uint mmax,
                                       uint cmax, uint upper);
# 58 "./base/gsfont.h"
int gs_definefont(gs_font_dir *, gs_font *);


int gs_font_find_similar(const gs_font_dir * pdir, const gs_font **ppfont,
                           int (*similar)(const gs_font *, const gs_font *));



int gs_scalefont(gs_font_dir *, const gs_font *, double, gs_font **);
int gs_makefont(gs_font_dir *, const gs_font *, const gs_matrix *, gs_font **);
int gs_setfont(gs_state *, gs_font *);
gs_font *gs_currentfont(const gs_state *);
gs_font *gs_rootfont(const gs_state *);
void gs_set_currentfont(gs_state *, gs_font *);
int gs_purge_font(gs_font *);

gs_font *gs_find_font_by_id(gs_font_dir *pdir, gs_id id, gs_matrix *FontMatrix);


void gs_cachestatus(const gs_font_dir *, uint[7]);


uint gs_currentcachesize(const gs_font_dir *);
int gs_setcachesize(gs_state * pgs, gs_font_dir *, uint);
uint gs_currentcachelower(const gs_font_dir *);
int gs_setcachelower(gs_font_dir *, uint);
uint gs_currentcacheupper(const gs_font_dir *);
int gs_setcacheupper(gs_font_dir *, uint);
uint gs_currentaligntopixels(const gs_font_dir *);
int gs_setaligntopixels(gs_font_dir *, uint);
uint gs_currentgridfittt(const gs_font_dir *);
int gs_setgridfittt(gs_font_dir *, uint);
# 25 "./base/gxfont.h" 2
# 1 "./base/gsgdata.h" 1
# 55 "./base/gsgdata.h"
typedef struct gs_glyph_data_procs_s gs_glyph_data_procs_t;


typedef struct gs_glyph_data_s gs_glyph_data_t;

struct gs_glyph_data_s {
    gs_const_bytestring bits;
    const gs_glyph_data_procs_t *procs;
    void *proc_data;
    gs_memory_t *memory;
};
extern const gs_memory_struct_type_t st_glyph_data;






struct gs_glyph_data_procs_s {


    void (*free)(gs_glyph_data_t *pgd, client_name_t cname);


    int (*substring)(gs_glyph_data_t *pgd, uint offset, uint size);
};





int gs_glyph_data_substring(gs_glyph_data_t *pgd, uint offset, uint size);






void gs_glyph_data_free(gs_glyph_data_t *pgd, client_name_t cname);
# 125 "./base/gsgdata.h"
void gs_glyph_data_from_string(gs_glyph_data_t *pgd, const byte *data,
                               uint size, gs_font *font);
void gs_glyph_data_from_bytes(gs_glyph_data_t *pgd, const byte *bytes,
                              uint offset, uint size, gs_font *font);

void gs_glyph_data_from_null(gs_glyph_data_t *pgd);
# 26 "./base/gxfont.h" 2

# 1 "./base/gsnotify.h" 1
# 36 "./base/gsnotify.h"
typedef int (*gs_notify_proc_t)(void *proc_data, void *event_data);
typedef struct gs_notify_registration_s gs_notify_registration_t;
struct gs_notify_registration_s {
    gs_notify_proc_t proc;
    void *proc_data;
    gs_notify_registration_t *next;
};






typedef struct gs_notify_list_s {
    gs_memory_t *memory;
    gs_notify_registration_t *first;
} gs_notify_list_t;

extern const gs_memory_struct_type_t st_gs_notify_list;







void gs_notify_init(gs_notify_list_t *nlist, gs_memory_t *mem);


int gs_notify_register(gs_notify_list_t *nlist, gs_notify_proc_t proc,
                       void *proc_data);






int gs_notify_unregister(gs_notify_list_t *nlist, gs_notify_proc_t proc,
                         void *proc_data);


int gs_notify_unregister_calling(gs_notify_list_t *nlist,
                                 gs_notify_proc_t proc, void *proc_data,
                                 void (*unreg_proc)(void *pdata));





int gs_notify_all(gs_notify_list_t *nlist, void *event_data);


void gs_notify_release(gs_notify_list_t *nlist);
# 28 "./base/gxfont.h" 2
# 1 "./base/gsuid.h" 1
# 26 "./base/gsuid.h"
typedef struct gs_uid_s gs_uid;

struct gs_uid_s {


    long id;
    long *xvalues;
};
# 62 "./base/gsuid.h"
bool uid_equal(const gs_uid *, const gs_uid *);


int uid_copy(gs_uid *puid, gs_memory_t *mem, client_name_t cname);
# 29 "./base/gxfont.h" 2

# 1 "./base/gxftype.h" 1
# 25 "./base/gxftype.h"
typedef enum {
    ft_composite = 0,
    ft_encrypted = 1,
    ft_encrypted2 = 2,
    ft_user_defined = 3,
    ft_disk_based = 4,
    ft_CID_encrypted = 9,
    ft_CID_user_defined = 10,
    ft_CID_TrueType = 11,
    ft_Chameleon = 14,
    ft_CID_bitmap = 32,
    ft_TrueType = 42,
    ft_MicroType = 51,
# 51 "./base/gxftype.h"
    ft_GL2_stick_user_defined = 52,
# 60 "./base/gxftype.h"
    ft_PCL_user_defined = 53,





    ft_GL2_531 = 54
} font_type;




typedef enum {
    fbit_use_outlines = 0,
    fbit_use_bitmaps = 1,
    fbit_transform_bitmaps = 2
} fbit_type;
# 31 "./base/gxfont.h" 2
# 42 "./base/gxfont.h"
typedef struct gs_show_enum_s gs_show_enum;
# 65 "./base/gxfont.h"
typedef struct gs_font_info_s {
    int members;




    int Ascent;

    int AvgWidth;

    gs_int_rect BBox;

    int CapHeight;

    int Descent;

    uint Flags;
    uint Flags_requested;
    uint Flags_returned;

    float ItalicAngle;

    int Leading;

    int MaxWidth;

    int MissingWidth;

    int StemH;

    int StemV;

    int UnderlinePosition;

    int UnderlineThickness;

    int XHeight;




    gs_const_string Copyright;

    gs_const_string Notice;

    gs_const_string FamilyName;

    gs_const_string FullName;

    int EmbeddingRights;
} gs_font_info_t;
# 142 "./base/gxfont.h"
typedef struct gs_glyph_info_s {
    int members;




    gs_point width[2];
    gs_point v;

    gs_rect bbox;

    int num_pieces;

    gs_glyph *pieces;





} gs_glyph_info_t;



typedef struct gs_font_procs_s {
# 176 "./base/gxfont.h"
    int (*define_font)(gs_font_dir *, gs_font *);
# 185 "./base/gxfont.h"
    int (*make_font)(gs_font_dir *, const gs_font *, const gs_matrix *, gs_font **);
# 199 "./base/gxfont.h"
    int (*font_info)(gs_font *font, const gs_point *pscale, int members, gs_font_info_t *info);
# 215 "./base/gxfont.h"
    int (*same_font)(const gs_font *font, const gs_font *ofont, int mask);
# 229 "./base/gxfont.h"
    gs_glyph (*encode_char)(gs_font *, gs_char, gs_glyph_space_t);






    gs_char (*decode_glyph)(gs_font *, gs_glyph, int);
# 248 "./base/gxfont.h"
    int (*enumerate_glyph)(gs_font *font, int *pindex, gs_glyph_space_t glyph_space, gs_glyph *pglyph);
# 276 "./base/gxfont.h"
    int (*glyph_info)(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info);
# 292 "./base/gxfont.h"
    int (*glyph_outline)(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat, gx_path *ppath, double sbw[4]);







    int (*glyph_name)(gs_font *font, gs_glyph glyph, gs_const_string *pstr);
# 312 "./base/gxfont.h"
    int (*init_fstack)(gs_text_enum_t *, gs_font *);
# 326 "./base/gxfont.h"
    int (*next_char_glyph)(gs_text_enum_t *pte, gs_char *pchar, gs_glyph *pglyph);
# 338 "./base/gxfont.h"
    int (*build_char)(gs_show_enum *, gs_state *, gs_font *, gs_char, gs_glyph);

} gs_font_procs;


int gs_no_define_font(gs_font_dir *, gs_font *);
int gs_no_make_font(gs_font_dir *, const gs_font *, const gs_matrix *, gs_font **);
int gs_base_make_font(gs_font_dir *, const gs_font *, const gs_matrix *, gs_font **);
int gs_default_font_info(gs_font *font, const gs_point *pscale, int members, gs_font_info_t *info);
int gs_default_same_font(const gs_font *font, const gs_font *ofont, int mask);
int gs_base_same_font(const gs_font *font, const gs_font *ofont, int mask);

gs_glyph gs_no_encode_char(gs_font *, gs_char, gs_glyph_space_t);
gs_char gs_no_decode_glyph(gs_font *, gs_glyph, int);
int gs_no_enumerate_glyph(gs_font *font, int *pindex, gs_glyph_space_t glyph_space, gs_glyph *pglyph);
int gs_default_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info);
int gs_no_glyph_outline(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat, gx_path *ppath, double sbw[4]);
int gs_no_glyph_name(gs_font *font, gs_glyph glyph, gs_const_string *pstr);

int gs_default_init_fstack(gs_text_enum_t *, gs_font *);
int gs_default_next_char_glyph(gs_text_enum_t *pte, gs_char *pchar, gs_glyph *pglyph);
int gs_no_build_char(gs_show_enum *, gs_state *, gs_font *, gs_char, gs_glyph);

extern const gs_font_procs gs_font_procs_default;


typedef struct gs_font_name_s {


    byte chars[47 + 1];
    uint size;
} gs_font_name;
# 408 "./base/gxfont.h"
struct gs_font_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name;
};

extern const gs_memory_struct_type_t st_gs_font;
void gs_font_finalize(const gs_memory_t *cmem, void *ptr);
# 424 "./base/gxfont.h"
extern const gs_memory_struct_type_t st_gs_font_ptr_element;






gs_font *
  gs_font_alloc(gs_memory_t *mem, gs_memory_type_ptr_t pstype,
                const gs_font_procs *procs, gs_font_dir *dir,
                client_name_t cname);


void gs_font_notify_init(gs_font *font);






int gs_font_notify_register(gs_font *font, gs_notify_proc_t proc,
                            void *proc_data);
int gs_font_notify_unregister(gs_font *font, gs_notify_proc_t proc,
                              void *proc_data);
# 466 "./base/gxfont.h"
typedef struct gs_font_base_s gs_font_base;

struct gs_font_base_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
};

extern const gs_memory_struct_type_t st_gs_font_base;
# 481 "./base/gxfont.h"
gs_font_base *
  gs_font_base_alloc(gs_memory_t *mem, gs_memory_type_ptr_t pstype,
                     const gs_font_procs *procs, gs_font_dir *dir,
                     client_name_t cname);





extern const char gx_extendeg_glyph_name_separator[];





bool gs_font_glyph_is_notdef(gs_font_base *bfont, gs_glyph glyph);


const gs_font_base *gs_font_parent(const gs_font_base *pbfont);
# 21 "./base/gxfapi.c" 2
# 1 "./base/gxfont1.h" 1
# 22 "./base/gxfont1.h"
# 1 "./base/gstype1.h" 1
# 25 "./base/gstype1.h"
typedef struct gs_type1_state_s gs_type1_state;







typedef struct gs_font_type1_s gs_font_type1;


struct gs_type1_data_s;

int gs_type1_interp_init(gs_type1_state * pcis, gs_imager_state * pis,
                         gx_path * ppath, const gs_log2_scale_point * pscale,
                         const gs_log2_scale_point * psubpixels, bool no_grid_fitting,
                         int paint_type, gs_font_type1 * pfont);
void gs_type1_set_callback_data(gs_type1_state *pcis, void *callback_data);
void gs_type1_set_lsb(gs_type1_state * pcis, const gs_point * psbpt);
void gs_type1_set_width(gs_type1_state * pcis, const gs_point * pwpt);
# 64 "./base/gstype1.h"
typedef int (*charstring_interpret_proc_t)(gs_type1_state *, const gs_glyph_data_t *, int *);


int gs_type1_interpret(gs_type1_state *, const gs_glyph_data_t *, int *);

int gs_type2_interpret(gs_type1_state *, const gs_glyph_data_t *, int *);




typedef enum {


    c_num1 = 32,



    c_pos2_0 = 247,
    c_pos2_1 = 248,
    c_pos2_2 = 249,
    c_pos2_3 = 250,




    c_neg2_0 = 251,
    c_neg2_1 = 252,
    c_neg2_2 = 253,
    c_neg2_3 = 254



} char_num_command;







typedef enum {




    c_undef0 = 0,
    c_undef2 = 2,
    c_callsubr = 10,
    c_return = 11,
    c_undoc15 = 15,


    c_undef17 = 17,




    cx_hstem = 1,
    cx_vstem = 3,
    cx_vmoveto = 4,
    cx_rlineto = 5,
    cx_hlineto = 6,
    cx_vlineto = 7,
    cx_rrcurveto = 8,
    cx_escape = 12,
    cx_endchar = 14,
    cx_rmoveto = 21,
    cx_hmoveto = 22,
    cx_vhcurveto = 30,
    cx_hvcurveto = 31,

    cx_num4 = 255,



    c1_closepath = 9,
    c1_hsbw = 13,
# 151 "./base/gstype1.h"
    c2_blend = 16,
    c2_hstemhm = 18,
    c2_hintmask = 19,
    c2_cntrmask = 20,
    c2_vstemhm = 23,
    c2_rcurveline = 24,
    c2_rlinecurve = 25,
    c2_vvcurveto = 26,
    c2_hhcurveto = 27,
    c2_shortint = 28,
    c2_callgsubr = 29






} char_command;
# 190 "./base/gstype1.h"
typedef enum {
    ce1_dotsection = 0,
    ce1_vstem3 = 1,
    ce1_hstem3 = 2,
    ce1_seac = 6,
    ce1_sbw = 7,
    ce1_div = 12,
    ce1_undoc15 = 15,


    ce1_callothersubr = 16,
    ce1_pop = 17,
    ce1_setcurrentpoint = 33
} char1_extended_command;
# 218 "./base/gstype1.h"
typedef enum {
    ce2_and = 3,
    ce2_or = 4,
    ce2_not = 5,
    ce2_store = 8,
    ce2_abs = 9,
    ce2_add = 10,
    ce2_sub = 11,
    ce2_div = 12,
    ce2_load = 13,
    ce2_neg = 14,
    ce2_eq = 15,
    ce2_drop = 18,
    ce2_put = 20,
    ce2_get = 21,
    ce2_ifelse = 22,
    ce2_random = 23,
    ce2_mul = 24,
    ce2_sqrt = 26,
    ce2_dup = 27,
    ce2_exch = 28,
    ce2_index = 29,
    ce2_roll = 30,
    ce2_hflex = 34,
    ce2_flex = 35,
    ce2_hflex1 = 36,
    ce2_flex1 = 37
} char2_extended_command;
# 23 "./base/gxfont1.h" 2
# 55 "./base/gxfont1.h"
typedef struct gs_type1_data_s gs_type1_data;


typedef struct gs_type1_data_procs_s {



    int (*glyph_data)(gs_font_type1 * pfont, gs_glyph glyph,
                      gs_glyph_data_t *pgd);



    int (*subr_data)(gs_font_type1 * pfont, int subr_num, bool global,
                     gs_glyph_data_t *pgd);
# 77 "./base/gxfont1.h"
    int (*seac_data)(gs_font_type1 * pfont, int ccode,
                     gs_glyph * pglyph, gs_const_string *gstr, gs_glyph_data_t *pgd);







    int (*push_values)(void *callback_data, const fixed *values,
                       int count);



    int (*pop_value)(void *callback_data, fixed *value);

} gs_type1_data_procs_t;







struct gs_type1_data_s {

    gs_type1_data_procs_t procs;
    int (*interpret)(gs_type1_state *, const gs_glyph_data_t *, int *);
    void *proc_data;
    gs_font_base *parent;
    int lenIV;

    uint subroutineNumberBias;


    uint gsubrNumberBias;
    long initialRandomSeed;
    fixed defaultWidthX;
    fixed nominalWidthX;



    int BlueFuzz;
    float BlueScale;
    float BlueShift;

          struct { int count; float values[(7)*2]; } BlueValues;
    float ExpansionFactor;
    bool ForceBold;

    struct { int count; float values[(7)*2]; } FamilyBlues;

    struct { int count; float values[(5)*2]; } FamilyOtherBlues;
    int LanguageGroup;

    struct { int count; float values[(5)*2]; } OtherBlues;
    bool RndStemUp;
    struct { int count; float values[1]; } StdHW;
    struct { int count; float values[1]; } StdVW;

    struct { int count; float values[12]; } StemSnapH;
    struct { int count; float values[12]; } StemSnapV;


    struct { int count; float values[16]; } WeightVector;
    byte hash_subrs[16];
    int num_subrs;
};



struct gs_font_type1_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
    gs_type1_data data;
};

extern const gs_memory_struct_type_t st_gs_font_type1;






int gs_type1_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info);






int gs_type1_piece_codes( gs_font_type1 *pfont,
                         const gs_glyph_data_t *pgd, gs_char *chars);
# 22 "./base/gxfapi.c" 2
# 1 "./base/gxpath.h" 1
# 24 "./base/gxpath.h"
# 1 "./base/gslparam.h" 1
# 23 "./base/gslparam.h"
typedef enum {
    gs_cap_butt = 0,
    gs_cap_round = 1,
    gs_cap_square = 2,
    gs_cap_triangle = 3,
    gs_cap_unknown = 4
} gs_line_cap;




typedef enum {
    gs_join_miter = 0,
    gs_join_round = 1,
    gs_join_bevel = 2,
    gs_join_none = 3,
    gs_join_triangle = 4,
    gs_join_unknown = 5
} gs_line_join;
# 25 "./base/gxpath.h" 2
# 1 "./base/gspenum.h" 1
# 30 "./base/gspenum.h"
typedef struct gs_path_enum_s gs_path_enum;
# 26 "./base/gxpath.h" 2
# 1 "./base/gsrect.h" 1
# 63 "./base/gsrect.h"
int int_rect_difference(gs_int_rect * outer, const gs_int_rect * inner,
                        gs_int_rect * diffs );
# 27 "./base/gxpath.h" 2
# 44 "./base/gxpath.h"
typedef enum {
    sn_none = 0,
    sn_not_first = 1,
    sn_from_arc = 2,
    sn_dash_head = 4,
    sn_dash_tail = 8,
} segment_notes;







typedef enum {
    PATH_FILL,
    PATH_STROKE,
    NO_PATH
} gs_bbox_comp_t;
# 90 "./base/gxpath.h"
gx_path *gx_path_alloc_shared(const gx_path * shared, gs_memory_t * mem,
                              client_name_t cname);







int gx_path_init_contained_shared(gx_path * ppath, const gx_path * shared,
                                  gs_memory_t * mem, client_name_t cname);
# 109 "./base/gxpath.h"
int gx_path_init_local_shared(gx_path * ppath, const gx_path * shared,
                              gs_memory_t * mem);
# 121 "./base/gxpath.h"
void gx_path_init_bbox_accumulator(gx_path * ppath);





int gx_path_unshare(gx_path * ppath);





void gx_path_free(gx_path * ppath, client_name_t cname);
# 143 "./base/gxpath.h"
int gx_path_assign_preserve(gx_path * ppto, gx_path * ppfrom);





int gx_path_assign_free(gx_path * ppto, gx_path * ppfrom);




int gx_path_new(gx_path *),
    gx_path_add_point(gx_path *, fixed, fixed),
    gx_path_add_relative_point(gx_path *, fixed, fixed),
    gx_path_add_line_notes(gx_path *, fixed, fixed, segment_notes),
    gx_path_add_gap_notes(gx_path *, fixed, fixed, segment_notes),
    gx_path_add_dash_notes(gx_path * ppath, fixed x, fixed y, fixed dx, fixed dy, segment_notes notes),
    gx_path_add_lines_notes(gx_path *, const gs_fixed_point *, int, segment_notes),
    gx_path_add_rectangle(gx_path *, fixed, fixed, fixed, fixed),
    gx_path_add_char_path(gx_path *, gx_path *, gs_char_path_mode),
    gx_path_add_curve_notes(gx_path *, fixed, fixed, fixed, fixed, fixed, fixed, segment_notes),
    gx_path_add_partial_arc_notes(gx_path *, fixed, fixed, fixed, fixed, double, segment_notes),
    gx_path_add_path(gx_path *, gx_path *),
    gx_path_close_subpath_notes(gx_path *, segment_notes),


    gx_path_pop_close_notes(gx_path *, segment_notes);


byte gx_path_get_state_flags(gx_path *ppath);
void gx_path_set_state_flags(gx_path *ppath, byte flags);
bool gx_path_is_drawing(gx_path *ppath);
# 198 "./base/gxpath.h"
typedef enum {
    pco_none = 0,
    pco_monotonize = 1,
    pco_accurate = 2,
    pco_for_stroke = 4,
    pco_small_curves = 8
} gx_path_copy_options;



gx_path *gx_current_path(const gs_state *);
int gx_path_current_point(const gx_path *, gs_fixed_point *),
    gx_path_bbox(gx_path *, gs_fixed_rect *),
    gx_path_bbox_set(gx_path *, gs_fixed_rect *);
int gx_path_subpath_start_point(const gx_path *, gs_fixed_point *);
bool gx_path_has_curves(const gx_path *),
    gx_path_is_void(const gx_path *),
    gx_path_is_null(const gx_path *),
    gx_path__check_curves(const gx_path * ppath, gx_path_copy_options options, fixed fixed_flat),
    gx_path_has_long_segments(const gx_path * ppath);
typedef enum {
    prt_none = 0,
    prt_open = 1,
    prt_fake_closed = 2,
    prt_closed = 3
} gx_path_rectangular_type;

gx_path_rectangular_type
gx_path_is_rectangular(const gx_path *, gs_fixed_rect *);
# 241 "./base/gxpath.h"
int gx_path_copy_reducing(const gx_path * ppath_old, gx_path * ppath_new,
                          fixed fixed_flatness, const gs_imager_state *pis,
                          gx_path_copy_options options);
# 258 "./base/gxpath.h"
int gx_path_add_dash_expansion(const gx_path * , gx_path * ,
                                  const gs_imager_state *),
      gx_path_copy_reversed(const gx_path * , gx_path * ),
      gx_path_append_reversed(const gx_path * , gx_path * ),
      gx_path_translate(gx_path *, fixed, fixed),
      gx_path_scale_exp2_shared(gx_path *ppath, int log2_scale_x,
                                   int log2_scale_y, bool segments_shared);
void gx_point_scale_exp2(gs_fixed_point *, int, int),
      gx_rect_scale_exp2(gs_fixed_rect *, int, int);





int gx_path_enum_init(gs_path_enum *, const gx_path *);
int gx_path_enum_next(gs_path_enum *, gs_fixed_point[3]);

segment_notes
gx_path_enum_notes(const gs_path_enum *);
bool gx_path_enum_backup(gs_path_enum *);


int gs_moveto_aux(gs_imager_state *pis, gx_path *ppath, double x, double y);
int gx_setcurrentpoint_from_path(gs_imager_state *pis, gx_path *path);



int gx_path_merge_contacting_contours(gx_path *ppath);
# 296 "./base/gxpath.h"
int gx_clip_to_rectangle(gs_state *, gs_fixed_rect *);
int gx_clip_to_path(gs_state *);
int gx_default_clip_box(const gs_state *, gs_fixed_rect *);
int gx_effective_clip_path(gs_state *, gx_clip_path **);
int gx_curr_bbox(gs_state * pgs, gs_rect *bbox, gs_bbox_comp_t comp_type);





typedef struct gx_clip_list_s gx_clip_list;
# 316 "./base/gxpath.h"
typedef struct gs_cpath_enum_s gs_cpath_enum;





gx_clip_path *gx_cpath_alloc_shared(const gx_clip_path * shared,
                                    gs_memory_t * mem, client_name_t cname);



int gx_cpath_init_contained_shared(gx_clip_path * pcpath,
                                   const gx_clip_path * shared,
                                   gs_memory_t * mem,
                                   client_name_t cname);



int gx_cpath_init_local_shared(gx_clip_path * pcpath,
                               const gx_clip_path * shared,
                               gs_memory_t * mem);





int gx_cpath_init_local_shared_nested(gx_clip_path * pcpath,
                                      const gx_clip_path * shared,
                                      gs_memory_t * mem,
                                      bool safely_nested);



int gx_cpath_unshare(gx_clip_path * pcpath);
void gx_cpath_free(gx_clip_path * pcpath, client_name_t cname);
int gx_cpath_assign_preserve(gx_clip_path * pcpto, gx_clip_path * pcpfrom);
int gx_cpath_assign_free(gx_clip_path * pcpto, gx_clip_path * pcpfrom);



int
    gx_cpath_reset(gx_clip_path *),
    gx_cpath_from_rectangle(gx_clip_path *, gs_fixed_rect *),
    gx_cpath_clip(gs_state *, gx_clip_path *, gx_path *, int),
    gx_cpath_intersect(gx_clip_path *, gx_path *, int,
                       gs_imager_state *),
    gx_cpath_intersect_with_params(gx_clip_path *pcpath, gx_path *ppath_orig,
                   int rule, gs_imager_state *pis, const gx_fill_params * params),
    gx_cpath_scale_exp2_shared(gx_clip_path *pcpath, int log2_scale_x,
                               int log2_scale_y, bool list_shared,
                               bool segments_shared),
    gx_cpath_to_path(gx_clip_path *, gx_path *),
    gx_cpath_to_path_synthesize(const gx_clip_path * pcpath, gx_path * ppath);
bool
    gx_cpath_inner_box(const gx_clip_path *, gs_fixed_rect *),
    gx_cpath_outer_box(const gx_clip_path *, gs_fixed_rect *),
    gx_cpath_includes_rectangle(const gx_clip_path *, fixed, fixed,
                                fixed, fixed);
gx_path_rectangular_type cpath_is_rectangle(const gx_clip_path * pcpath, gs_fixed_rect *rect);
bool gx_cpath_rect_visible(gx_clip_path * pcpath, gs_int_rect *prect);
int gx_cpath_copy(const gx_clip_path * from, gx_clip_path * pcpath);



int gx_cpath_enum_init(gs_cpath_enum *, const gx_clip_path *);
int gx_cpath_enum_next(gs_cpath_enum *, gs_fixed_point[3]);

segment_notes
gx_cpath_enum_notes(const gs_cpath_enum *);
# 23 "./base/gxfapi.c" 2
# 1 "./base/gxfcache.h" 1
# 26 "./base/gxfcache.h"
# 1 "./base/gxbcache.h" 1
# 36 "./base/gxbcache.h"
typedef struct gx_cached_bits_head_s {
    uint size;
    uint depth;
} gx_cached_bits_head;
# 54 "./base/gxbcache.h"
typedef struct gx_cached_bits_s {
    gx_cached_bits_head head; ushort width, height, shift; ushort raster; gx_bitmap_id id;
} gx_cached_bits;
# 72 "./base/gxbcache.h"
typedef struct gx_bits_cache_chunk_s gx_bits_cache_chunk;
struct gx_bits_cache_chunk_s {
    gx_bits_cache_chunk *next;
    byte *data;
    uint size;
    uint allocated;
};
# 88 "./base/gxbcache.h"
typedef struct gx_bits_cache_s {
    gx_bits_cache_chunk *chunks; uint cnext; uint bsize; uint csize;
} gx_bits_cache;







void gx_bits_cache_init(gx_bits_cache *, gx_bits_cache_chunk *);




void gx_bits_cache_chunk_init(gx_bits_cache_chunk *, byte *, uint);






int gx_bits_cache_alloc(gx_bits_cache *, ulong, gx_cached_bits_head **);


void gx_bits_cache_shorten(gx_bits_cache *, gx_cached_bits_head *,
                           uint, gx_bits_cache_chunk *);



void gx_bits_cache_free(gx_bits_cache *, gx_cached_bits_head *,
                        gx_bits_cache_chunk *);
# 27 "./base/gxfcache.h" 2
# 47 "./base/gxfcache.h"
typedef struct ttfFont_s ttfFont;



typedef struct gx_ttfReader_s gx_ttfReader;



typedef struct ttfInterpreter_s ttfInterpreter;



typedef struct gx_ttfMemory_s gx_ttfMemory;



typedef struct gx_device_spot_analyzer_s gx_device_spot_analyzer;
# 81 "./base/gxfcache.h"
struct cached_fm_pair_s {
    gs_font *font;
    gs_uid UID;
    font_type FontType;
    uint hash;
    float mxx, mxy, myx, myy;
    int num_chars;

    bool xfont_tried;
    gx_xfont *xfont;
    gs_memory_t *memory;
    uint index;
    ttfFont *ttf;
    gx_ttfReader *ttr;
    bool design_grid;
    uint prev, next;
};
# 116 "./base/gxfcache.h"
typedef struct fm_pair_cache_s {
    uint msize, mmax;
    cached_fm_pair *mdata;
    uint used;
    uint free;
    uint unused;
} fm_pair_cache;




typedef gx_bits_cache_chunk char_cache_chunk;






typedef gx_cached_bits_head cached_char_head;
# 150 "./base/gxfcache.h"
typedef struct cached_char_s cached_char;


struct cached_char_s {





    gx_cached_bits_head head; ushort width, height, shift; ushort raster; gx_bitmap_id id;


    cached_fm_pair *pair;
    bool linked;


    gs_glyph code;
    byte wmode;



    char_cache_chunk *chunk;

    uint loc;
    uint pair_index;
    gs_fixed_point subpix_origin;
# 198 "./base/gxfcache.h"
    gx_xglyph xglyph;
    gs_fixed_point wxy;
    gs_fixed_point offset;
};
# 257 "./base/gxfcache.h"
typedef struct char_cache_s {


    gx_bits_cache_chunk *chunks; uint cnext; uint bsize; uint csize;
    gs_memory_t *struct_memory;
    gs_memory_t *bits_memory;
    cached_char **table;
    uint table_mask;
    uint bmax;
    uint cmax;
    uint bspace;
    uint lower;

    uint upper;
    gs_glyph_mark_proc_t mark_glyph;
    void *mark_glyph_data;
} char_cache;
# 282 "./base/gxfcache.h"
struct gs_font_dir_s {



    gs_font *orig_fonts;



    gs_font *scaled_fonts;
    uint ssize, smax;



    fm_pair_cache fmcache;



    char_cache ccache;

    uint enum_index;
    uint enum_offset;

    uint hash;


    bool align_to_pixels;


    void *glyph_to_unicode_table;


    gs_memory_t *memory;
    ttfInterpreter *tti;
    gx_ttfMemory *ttm;

    uint grid_fit_tt;
    gx_device_spot_analyzer *san;
    int (*global_glyph_code)(const gs_memory_t *mem, gs_const_string *gstr, gs_glyph *pglyph);
    ulong text_enum_id;
};
# 335 "./base/gxfcache.h"
int gx_char_cache_alloc(gs_memory_t * struct_mem, gs_memory_t * bits_mem,
                        gs_font_dir * pdir, uint bmax, uint mmax,
                        uint cmax, uint upper);
int gx_char_cache_init(gs_font_dir *);
void gx_purge_selected_cached_chars(gs_font_dir *,
                                    bool(*)(const gs_memory_t *, cached_char *, void *), void *);
void gx_compute_char_matrix(const gs_matrix *char_tm, const gs_log2_scale_point *log2_scale,
    float *mxx, float *mxy, float *myx, float *myy);
void gx_compute_ccache_key(gs_font * pfont, const gs_matrix *char_tm,
    const gs_log2_scale_point *log2_scale, bool design_grid,
    float *mxx, float *mxy, float *myx, float *myy);
int gx_lookup_fm_pair(gs_font * pfont, const gs_matrix *char_tm,
    const gs_log2_scale_point *log2_scale, bool design_grid, cached_fm_pair **ppair);
int gx_add_fm_pair(register gs_font_dir * dir, gs_font * font, const gs_uid * puid,
               const gs_matrix * char_tm, const gs_log2_scale_point *log2_scale,
               bool design_grid, cached_fm_pair **ppair);
int gx_fm_pair_attributes(gs_font_dir * dir,
               gs_font *font, cached_fm_pair *pair,
               const gs_matrix * char_tm, const gs_log2_scale_point *log2_scale,
               bool design_grid);
int gx_provide_fm_pair_attributes(gs_font_dir * dir,
               gs_font *font, cached_fm_pair *pair,
               const gs_matrix * char_tm, const gs_log2_scale_point *log2_scale,
               bool design_grid);
int gx_touch_fm_pair(gs_font_dir *dir, cached_fm_pair *pair);

void gs_clean_fm_pair(gs_font_dir * dir, cached_fm_pair * pair);
int gs_purge_fm_pair(gs_font_dir *, cached_fm_pair *, int);
int gs_purge_font_from_char_caches(gs_font *);
int gs_purge_font_from_char_caches_completely(gs_font * font);
# 24 "./base/gxfapi.c" 2
# 1 "./base/gxchrout.h" 1
# 33 "./base/gxchrout.h"
double gs_char_flatness(const gs_imager_state *pis, double default_scale);
# 25 "./base/gxfapi.c" 2
# 1 "./base/gximask.h" 1
# 38 "./base/gximask.h"
int gx_image_fill_masked_start(gx_device *dev, const gx_device_color *pdevc, const gx_clip_path *pcpath,
                           gs_memory_t *mem, gx_device **cdev);

int gx_image_fill_masked_end(gx_device *dev, gx_device *tdev, const gx_device_color *pdevc);

int gx_image_fill_masked(gx_device *dev,
    const byte *data, int data_x, int raster, gx_bitmap_id id,
    int x, int y, int width, int height,
    const gx_device_color *pdcolor, int depth,
    gs_logical_operation_t lop, const gx_clip_path *pcpath);
# 26 "./base/gxfapi.c" 2
# 1 "./base/gscoord.h" 1
# 24 "./base/gscoord.h"
int gs_initmatrix(gs_state *),
    gs_defaultmatrix(const gs_state *, gs_matrix *),
    gs_currentmatrix(const gs_state *, gs_matrix *),
    gs_setmatrix(gs_state *, const gs_matrix *),
    gs_translate(gs_state *, double, double),
    gs_translate_untransformed(gs_state *, double, double),
    gs_scale(gs_state *, double, double),
    gs_rotate(gs_state *, double),
    gs_concat(gs_state *, const gs_matrix *);


int gs_setdefaultmatrix(gs_state *, const gs_matrix *),
    gs_currentcharmatrix(gs_state *, gs_matrix *, bool),
    gs_setcharmatrix(gs_state *, const gs_matrix *),
    gs_settocharmatrix(gs_state *);


int gs_transform(gs_state *, double, double, gs_point *),
    gs_dtransform(gs_state *, double, double, gs_point *),
    gs_itransform(gs_state *, double, double, gs_point *),
    gs_idtransform(gs_state *, double, double, gs_point *);






int gs_imager_setmatrix(gs_imager_state *, const gs_matrix *);
int gs_imager_idtransform(const gs_imager_state *, double, double, gs_point *);
# 27 "./base/gxfapi.c" 2
# 1 "./base/gspaint.h" 1
# 24 "./base/gspaint.h"
int gs_erasepage(gs_state *),
    gs_fillpage(gs_state *),
    gs_fill(gs_state *),
    gs_eofill(gs_state *),
    gs_stroke(gs_state *);


int gs_imagepath(gs_state *, int, int, const byte *);
# 28 "./base/gxfapi.c" 2
# 1 "./base/gspath.h" 1
# 38 "./base/gspath.h"
int gs_newpath(gs_state *),
    gs_moveto(gs_state *, double, double),
    gs_rmoveto(gs_state *, double, double),
    gs_lineto(gs_state *, double, double),
    gs_rlineto(gs_state *, double, double),
    gs_arc(gs_state *, double, double, double, double, double),
    gs_arcn(gs_state *, double, double, double, double, double),





    gs_arc_add(gs_state *, bool, double, double, double, double, double, bool),
    gs_arcto(gs_state *, double, double, double, double, double, float[4]),
    gs_curveto(gs_state *, double, double, double, double, double, double),
    gs_rcurveto(gs_state *, double, double, double, double, double, double),
    gs_closepath(gs_state *);
# 66 "./base/gspath.h"
typedef struct gs_matrix_fixed_s gs_matrix_fixed;



void make_quadrant_arc(gs_point *p, const gs_point *c,
        const gs_point *p0, const gs_point *p1, double r);


int gs_upmergepath(gs_state *);


int gs_currentpoint(gs_state *, gs_point *),
      gs_upathbbox(gs_state *, gs_rect *, bool),
      gs_dashpath(gs_state *),
      gs_flattenpath(gs_state *),
      gs_reversepath(gs_state *),
      gs_strokepath(gs_state *),
      gs_strokepath2(gs_state *);
# 93 "./base/gspath.h"
gs_path_enum *gs_path_enum_alloc(gs_memory_t *, client_name_t);
int gs_path_enum_copy_init(gs_memory_t *mem, gs_path_enum *, const gs_state *, bool);



int gs_path_enum_next(gs_path_enum *, gs_point[3]);
void gs_path_enum_cleanup(gs_path_enum *);


int gs_clippath(gs_state *),
    gs_initclip(gs_state *),
    gs_clip(gs_state *),
    gs_eoclip(gs_state *);
# 29 "./base/gxfapi.c" 2
# 1 "./base/gzstate.h" 1
# 25 "./base/gzstate.h"
# 1 "./base/gxdcolor.h" 1
# 43 "./base/gxdcolor.h"
typedef struct gx_rop_source_s {
    const byte *sdata;
    int sourcex;
    uint sraster;
    gx_bitmap_id id;
    gx_color_index scolors[2];
    uint planar_height;
    bool use_scolors;
} gx_rop_source_t;
# 62 "./base/gxdcolor.h"
void gx_set_rop_no_source(const gx_rop_source_t **psource,
                          gx_rop_source_t *pno_source, gx_device *dev);
# 73 "./base/gxdcolor.h"
struct gx_device_color_type_s {







    gs_memory_type_ptr_t stype;
# 101 "./base/gxdcolor.h"
                         void (*save_dc)(const gx_device_color * pdevc, gx_device_color_saved * psdc);



                         const gx_device_halftone * (*get_dev_halftone)(const gx_device_color * pdevc);



                        bool (*get_phase)(const gx_device_color * pdevc, gs_int_point * pphase);
# 119 "./base/gxdcolor.h"
                         int (*load)(gx_device_color *pdevc, const gs_imager_state *pis, gx_device *dev, gs_color_select_t select);
# 130 "./base/gxdcolor.h"
                         int (*fill_rectangle)(const gx_device_color *pdevc, int x, int y, int w, int h, gx_device *dev, gs_logical_operation_t lop, const gx_rop_source_t *source);
# 143 "./base/gxdcolor.h"
                         int (*fill_masked)(const gx_device_color *pdevc, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int w, int h, gx_device *dev, gs_logical_operation_t lop, bool invert);







                         bool (*equal)(const gx_device_color *pdevc1, const gx_device_color *pdevc2);
# 223 "./base/gxdcolor.h"
                        int (*write)(const gx_device_color *pdevc, const gx_device_color_saved *psdc, const gx_device * dev, int64_t offset, byte *data, uint *psize);





                        int (*read)(gx_device_color *pdevc, const gs_imager_state * pis, const gx_device_color *prior_devc, const gx_device * dev, int64_t offset, const byte *data, uint size, gs_memory_t *mem);
# 253 "./base/gxdcolor.h"
                         int (*get_nonzero_comps)(const gx_device_color * pdevc, const gx_device * dev, gx_color_index * pcomp_bits);
};


int gx_dc_default_fill_masked(const gx_device_color *pdevc, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int w, int h, gx_device *dev, gs_logical_operation_t lop, bool invert);
int gx_dc_devn_fill_masked(const gx_device_color *pdevc, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int w, int h, gx_device *dev, gs_logical_operation_t lop, bool invert);

extern int gx_dc_cannot_write(const gx_device_color *pdevc, const gx_device_color_saved *psdc, const gx_device * dev, int64_t offset, byte *data, uint *psize);
extern int gx_dc_cannot_read(gx_device_color *pdevc, const gs_imager_state * pis, const gx_device_color *prior_devc, const gx_device * dev, int64_t offset, const byte *data, uint size, gs_memory_t *mem);

extern const gs_memory_struct_type_t st_device_color;




extern const gx_device_color_type_t

      gx_dc_type_data_none,

      gx_dc_type_data_null,

      gx_dc_type_data_pure,



      gx_dc_type_data_ht_binary,

      gx_dc_type_data_ht_colored,

      gx_dc_type_data_devn;


extern int gx_dc_devn_get_nonzero_comps(const gx_device_color * pdevc, const gx_device * dev, gx_color_index * pcomp_bits);
extern int gx_dc_pure_get_nonzero_comps(const gx_device_color * pdevc, const gx_device * dev, gx_color_index * pcomp_bits);
extern int gx_dc_ht_binary_get_nonzero_comps(const gx_device_color * pdevc, const gx_device * dev, gx_color_index * pcomp_bits);
extern int gx_dc_ht_colored_get_nonzero_comps(const gx_device_color * pdevc, const gx_device * dev, gx_color_index * pcomp_bits);


extern int gx_get_dc_type_index(const gx_device_color *);
extern const gx_device_color_type_t * gx_get_dc_type_from_index(int);


extern bool gx_dc_no_get_phase(const gx_device_color * pdevc, gs_int_point * pphase);
extern bool gx_dc_ht_get_phase(const gx_device_color * pdevc, gs_int_point * pphase);






int gx_set_device_color_1(gs_state * pgs);


int gx_remap_color(gs_state *);
# 345 "./base/gxdcolor.h"
extern int gx_dc_write_color( gx_color_index color,
                                   const gx_device * dev,
                                   byte * pdata,
                                   uint * psize );

extern int gx_dc_read_color( gx_color_index * pcolor,
                                  const gx_device * dev,
                                  const byte * pdata,
                                  int size );
# 26 "./base/gzstate.h" 2
# 1 "./base/gxistate.h" 1
# 29 "./base/gxistate.h"
# 1 "./base/gxline.h" 1
# 22 "./base/gxline.h"
# 1 "./base/math_.h" 1
# 29 "./base/math_.h"
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
# 30 "./base/math_.h" 2
# 76 "./base/math_.h"
extern double gs_sqrt(double, const char *, int);
# 23 "./base/gxline.h" 2





typedef struct gx_dash_params_s {
    float *pattern;
    uint pattern_size;
    float offset;
    bool adapt;

    float pattern_length;
    bool init_ink_on;
    int init_index;
    float init_dist_left;
} gx_dash_params;



typedef struct gx_line_params_s {
    float half_width;
    gs_line_cap start_cap;
    gs_line_cap end_cap;
    gs_line_cap dash_cap;
    gs_line_join join;
    int curve_join;

    float miter_limit;
    float miter_check;

    float dot_length;
    bool dot_length_absolute;
    gs_matrix dot_orientation;

    gx_dash_params dash;
} gx_line_params;





int gx_set_miter_limit(gx_line_params *, double);



int gx_set_dash(gx_dash_params *, const float *, uint, double, gs_memory_t *);


int gx_set_dot_length(gx_line_params *, double, bool);
# 30 "./base/gxistate.h" 2
# 1 "./base/gxmatrix.h" 1
# 35 "./base/gxmatrix.h"
struct gs_matrix_fixed_s {
    float xx, xy, yx, yy, tx, ty;
    fixed tx_fixed, ty_fixed;
    bool txy_fixed_valid;
};







int gs_matrix_fixed_from_matrix(gs_matrix_fixed *, const gs_matrix *);


int gs_point_transform2fixed(const gs_matrix_fixed *, double, double,
                             gs_fixed_point *);
int gs_distance_transform2fixed(const gs_matrix_fixed *, double, double,
                                gs_fixed_point *);

int gs_point_transform2fixed_rounding(const gs_matrix_fixed * pmat,
                         double x, double y, gs_fixed_point * ppt);
# 65 "./base/gxmatrix.h"
typedef struct {
    long xx, xy, yx, yy;
    int skewed;
    int shift;
    int max_bits;
    fixed round;
} fixed_coeff;
# 83 "./base/gxmatrix.h"
fixed fixed_coeff_mult(fixed, long, const fixed_coeff *, int);
# 31 "./base/gxistate.h" 2


# 1 "./base/gstrans.h" 1
# 23 "./base/gstrans.h"
# 1 "./base/gxcomp.h" 1
# 24 "./base/gxcomp.h"
# 1 "./base/gxbitfmt.h" 1
# 30 "./base/gxbitfmt.h"
typedef ulong gx_bitmap_format_t;
# 25 "./base/gxcomp.h" 2
# 68 "./base/gxcomp.h"
typedef struct gx_device_clist_writer_s gx_device_clist_writer;


typedef struct gs_composite_type_procs_s {







    int (*create_default_compositor)(const gs_composite_t *pcte, gx_device **pcdev, gx_device *dev, gs_imager_state *pis, gs_memory_t *mem);






    bool (*equal)(const gs_composite_t *pcte, const gs_composite_t *pcte2);
# 99 "./base/gxcomp.h"
    int (*write)(const gs_composite_t *pcte, byte *data, uint *psize, gx_device_clist_writer *cdev);
# 109 "./base/gxcomp.h"
    int (*read)(gs_composite_t **ppcte, const byte *data, uint size, gs_memory_t *mem);






    int (*adjust_ctm)(gs_composite_t *pcte, int x0, int y0, gs_imager_state *pis);
# 127 "./base/gxcomp.h"
    int (*is_closing)(const gs_composite_t *this, gs_composite_t **pcte, gx_device *dev);







    bool (*is_friendly)(const gs_composite_t *this, byte cmd0, byte cmd1);







    int (*clist_compositor_write_update)(const gs_composite_t * pcte, gx_device * dev, gx_device ** pcdev, gs_imager_state * pis, gs_memory_t * mem);







    int (*clist_compositor_read_update)(gs_composite_t * pcte, gx_device * cdev, gx_device * tdev, gs_imager_state * pis, gs_memory_t * mem);






    int (*get_cropping)(const gs_composite_t * pcte, int *ry, int *rheight, int cropping_min, int cropping_max);

} gs_composite_type_procs_t;

typedef struct gs_composite_type_s {
    byte comp_id;
    gs_composite_type_procs_t procs;
} gs_composite_type_t;





int gx_default_composite_clist_write_update(const gs_composite_t * pcte, gx_device * dev, gx_device ** pcdev, gs_imager_state * pis, gs_memory_t * mem);


int gx_default_composite_adjust_ctm(gs_composite_t *pcte, int x0, int y0, gs_imager_state *pis);


int gx_default_composite_is_closing(const gs_composite_t *this, gs_composite_t **pcte, gx_device *dev);


bool gx_default_composite_is_friendly(const gs_composite_t *this, byte cmd0, byte cmd1);





int gx_default_composite_clist_read_update(gs_composite_t * pcte, gx_device * cdev, gx_device * tdev, gs_imager_state * pis, gs_memory_t * mem);




int gx_default_composite_get_cropping(const gs_composite_t * pcte, int *ry, int *rheight, int cropping_min, int cropping_max);
# 205 "./base/gxcomp.h"
struct gs_composite_s {
    const gs_composite_type_t *type; gs_id id; bool idle; struct gs_composite_s *prev, *next;
};
# 24 "./base/gstrans.h" 2

# 1 "./base/gxblend.h" 1
# 41 "./base/gxblend.h"
typedef bits16 ArtPixMaxDepth;





typedef struct pdf14_device_s pdf14_device;




typedef struct pdf14_buf_s pdf14_buf;
# 62 "./base/gxblend.h"
    typedef struct gs_separations_s gs_separations;
# 74 "./base/gxblend.h"
typedef struct {



    void (* blend_luminosity)(int n_chan, byte *dst,
                    const byte *backdrop, const byte *src);



    void (* blend_saturation)(int n_chan, byte *dst,
                    const byte *backdrop, const byte *src);
} pdf14_nonseparable_blending_procs_s;

typedef pdf14_nonseparable_blending_procs_s
                pdf14_nonseparable_blending_procs_t;





typedef struct {

    pdf14_nonseparable_blending_procs_t device_procs;
    gx_device_procs color_mapping_procs;

} pdf14_parent_cs_params_s;

typedef pdf14_parent_cs_params_s pdf14_parent_cs_params_t;


void smask_luminosity_mapping(int num_rows, int num_cols, int n_chan, int row_stride,
                         int plane_stride, byte *src, const byte *des, bool isadditive,
                            gs_transparency_mask_subtype_t SMask_SubType);
void smask_blend(byte *src, int width, int height, int rowstride,
                 int planestride);

void smask_copy(int num_rows, int num_cols, int row_stride,
                         byte *src, const byte *des);
void smask_icc(gx_device *dev, int num_rows, int num_cols, int n_chan,
               int row_stride, int plane_stride, byte *src, const byte *des,
               gsicc_link_t *icclink);
# 140 "./base/gxblend.h"
void
art_blend_pixel(ArtPixMaxDepth * dst, const ArtPixMaxDepth * backdrop,
                const ArtPixMaxDepth * src, int n_chan,
                gs_blend_mode_t blend_mode);
# 171 "./base/gxblend.h"
void
art_blend_pixel_8(byte *dst, const byte *backdrop,
                const byte *src, int n_chan, gs_blend_mode_t blend_mode,
                const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 183 "./base/gxblend.h"
byte art_pdf_union_8(byte alpha1, byte alpha2);
# 193 "./base/gxblend.h"
byte art_pdf_union_mul_8(byte alpha1, byte alpha2, byte alpha_mask);
# 216 "./base/gxblend.h"
void
art_pdf_composite_pixel_alpha_8(byte *dst, const byte *src, int n_chan,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 229 "./base/gxblend.h"
void
art_pdf_composite_pixel_alpha_8_fast(byte *dst, const byte *src, int n_chan,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs,
        int stride);
# 242 "./base/gxblend.h"
void
art_pdf_composite_pixel_alpha_8_fast_mono(byte *dst, const byte *src,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs,
        int stride);
# 258 "./base/gxblend.h"
void
art_pdf_uncomposite_group_8(byte *dst,
                            const byte *backdrop,

                            const byte *src, byte src_alpha_g, int n_chan);
# 281 "./base/gxblend.h"
void
art_pdf_recomposite_group_8(byte *dst, byte *dst_alpha_g,
        const byte *src, byte src_alpha_g, int n_chan,
        byte alpha, gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 301 "./base/gxblend.h"
void
art_pdf_composite_group_8(byte *dst, byte *dst_alpha_g,
        const byte *src, int n_chan, byte alpha, gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 320 "./base/gxblend.h"
void
art_pdf_composite_knockout_group_8(byte *backdrop, byte tos_shape, byte *dst,
        byte *dst_alpha_g, const byte *src, int n_chan, byte alpha,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 337 "./base/gxblend.h"
void
art_pdf_composite_knockout_simple_8(byte *dst,
                                    byte *dst_shape,
                                    byte *dst_tag,
                                    const byte *src, byte tag,
                                    int n_chan, byte opacity);
# 352 "./base/gxblend.h"
void
art_pdf_knockoutisolated_group_8(byte *dst, const byte *src, int n_chan);
# 370 "./base/gxblend.h"
void
art_pdf_composite_knockout_isolated_8(byte *dst,
                                      byte *dst_shape,
                                      byte *dst_tag,
                                      const byte *src,
                                      int n_chan,
                                      byte shape,
                                      byte tag,
                                      byte alpha_mask, byte shape_mask,
                                      bool has_mask);





void art_blend_luminosity_rgb_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);
void art_blend_saturation_rgb_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);

void art_blend_saturation_cmyk_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);
void art_blend_luminosity_cmyk_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);

void art_blend_luminosity_custom_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);
void art_blend_saturation_custom_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);

void pdf14_unpack_additive(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);
void pdf14_unpack_subtractive(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);

void pdf14_unpack_compressed(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);

void pdf14_unpack_custom(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);

void pdf14_preserve_backdrop(pdf14_buf *buf, pdf14_buf *tos, bool knockout_buff);

int pdf14_preserve_backdrop_cm(pdf14_buf *buf, cmm_profile_t *group_profile,
                               pdf14_buf *tos, cmm_profile_t *tos_profile,
                               gs_memory_t *memory, gs_imager_state *pis,
                               gx_device *dev, bool knockout_buff);

void pdf14_compose_group(pdf14_buf *tos, pdf14_buf *nos, pdf14_buf *maskbuf,
              int x0, int x1, int y0, int y1, int n_chan, bool additive,
              const pdf14_nonseparable_blending_procs_t * pblend_procs,
              bool overprint, gx_color_index drawn_comps, bool blendspot,
              gs_memory_t *memory);

gx_color_index pdf14_encode_color(gx_device *dev, const gx_color_value colors[]);
gx_color_index pdf14_encode_color_tag(gx_device *dev, const gx_color_value colors[]);

int pdf14_decode_color(gx_device * dev, gx_color_index color, gx_color_value * out);
gx_color_index pdf14_compressed_encode_color(gx_device *dev, const gx_color_value colors[]);
int pdf14_compressed_decode_color(gx_device * dev, gx_color_index color,
                                                        gx_color_value * out);
void pdf14_gray_cs_to_cmyk_cm(gx_device * dev, frac gray, frac out[]);
void pdf14_rgb_cs_to_cmyk_cm(gx_device * dev, const gs_imager_state *pis,
                           frac r, frac g, frac b, frac out[]);
void pdf14_cmyk_cs_to_cmyk_cm(gx_device * dev, frac c, frac m, frac y, frac k, frac out[]);

void gx_build_blended_image_row(byte *buf_ptr, int y, int planestride,
                           int width, int num_comp, byte bg, byte *linebuf);
void gx_blend_image_buffer(byte *buf_ptr, int width, int height,
                      int rowstride, int planestride, int num_comp, byte bg);
int gx_put_blended_image_cmykspot(gx_device *target, byte *buf_ptr,
                      int planestride, int rowstride,
                      int x0, int y0, int width, int height, int num_comp, byte bg,
                      bool has_tags, gs_int_rect rect, gs_separations *pseparations);
int gx_put_blended_image_custom(gx_device *target, byte *buf_ptr,
                      int planestride, int rowstride,
                      int x0, int y0, int width, int height, int num_comp, byte bg);
# 26 "./base/gstrans.h" 2




typedef enum {
    PDF14_PUSH_DEVICE,
    PDF14_POP_DEVICE,
    PDF14_ABORT_DEVICE,
    PDF14_BEGIN_TRANS_GROUP,
    PDF14_END_TRANS_GROUP,
    PDF14_BEGIN_TRANS_MASK,
    PDF14_END_TRANS_MASK,
    PDF14_SET_BLEND_PARAMS,
    PDF14_PUSH_TRANS_STATE,
    PDF14_POP_TRANS_STATE,
    PDF14_PUSH_SMASK_COLOR,
    PDF14_POP_SMASK_COLOR
} pdf14_compositor_operations;
# 75 "./base/gstrans.h"
typedef struct gs_transparency_source_s {
    float alpha;
} gs_transparency_source_t;

struct gs_pdf14trans_params_s {

    pdf14_compositor_operations pdf14_op;
    int num_spot_colors;

    int changed;

    bool Isolated;
    bool Knockout;
    bool image_with_SMask;
    gs_rect bbox;

    gs_transparency_channel_selector_t csel;

    gs_transparency_mask_subtype_t subtype;
    int Background_components;
    bool function_is_identity;
    float Background[(64)];
    float GrayBackground;





    gs_function_t *transfer_function;
    byte transfer_fn[256];

    gs_blend_mode_t blend_mode;
    bool text_knockout;
    gs_transparency_source_t opacity;
    gs_transparency_source_t shape;
    bool mask_is_image;
    gs_matrix ctm;
    bool replacing;
    bool overprint;
    bool overprint_mode;
    bool blendspot;
    bool idle;
    uint mask_id;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    int64_t icc_hash;
    cmm_profile_t *iccprofile;
    bool crop_blend_params;

    bool is_pattern;
};



typedef struct gs_pdf14trans_params_s gs_pdf14trans_params_t;







typedef struct gs_pdf14trans_s {
    const gs_composite_type_t *type; gs_id id; bool idle; struct gs_composite_s *prev, *next;
    gs_pdf14trans_params_t params;
} gs_pdf14trans_t;


int gs_setblendmode(gs_state *, gs_blend_mode_t);
gs_blend_mode_t gs_currentblendmode(const gs_state *);
int gs_setopacityalpha(gs_state *, double);
float gs_currentopacityalpha(const gs_state *);
int gs_setshapealpha(gs_state *, double);
float gs_currentshapealpha(const gs_state *);
int gs_settextknockout(gs_state *, bool);
bool gs_currenttextknockout(const gs_state *);





int gs_push_pdf14trans_device(gs_state * pgs, bool is_pattern);

int gs_pop_pdf14trans_device(gs_state * pgs, bool is_pattern);

int gs_abort_pdf14trans_device(gs_state * pgs);

void gs_trans_group_params_init(gs_transparency_group_params_t *ptgp);

int gs_update_trans_marking_params(gs_state * pgs);

int gs_begin_transparency_group(gs_state * pgs,
                                const gs_transparency_group_params_t *ptgp,
                                const gs_rect *pbbox);

int gs_end_transparency_group(gs_state *pgs);

void gs_trans_mask_params_init(gs_transparency_mask_params_t *ptmp,
                               gs_transparency_mask_subtype_t subtype);

int gs_begin_transparency_mask(gs_state *pgs,
                               const gs_transparency_mask_params_t *ptmp,
                               const gs_rect *pbbox, bool mask_is_image);

int gs_end_transparency_mask(gs_state *pgs,
                             gs_transparency_channel_selector_t csel);




int gx_begin_transparency_group(gs_imager_state * pis, gx_device * pdev,
                                const gs_pdf14trans_params_t * pparams);

int gx_end_transparency_group(gs_imager_state * pis, gx_device * pdev);

int gx_begin_transparency_mask(gs_imager_state * pis, gx_device * pdev,
                                const gs_pdf14trans_params_t * pparams);

int gx_end_transparency_mask(gs_imager_state * pis, gx_device * pdev,
                                const gs_pdf14trans_params_t * pparams);

int gx_abort_trans_device(gs_imager_state * pis, gx_device * pdev);
# 206 "./base/gstrans.h"
int gs_push_transparency_state(gs_state *pgs);

int gs_pop_transparency_state(gs_state *pgs, bool force);

int gx_push_transparency_state(gs_imager_state * pis, gx_device * pdev);

int gx_pop_transparency_state(gs_imager_state * pis, gx_device * pdev);




int gs_is_pdf14trans_compositor(const gs_composite_t * pct);
# 34 "./base/gxistate.h" 2
# 89 "./base/gxistate.h"
typedef struct gs_halftone_s gs_halftone;
# 116 "./base/gxistate.h"
typedef struct gx_transfer_s {
    int red_component_num;
    gx_transfer_map *red;
    int green_component_num;
    gx_transfer_map *green;
    int blue_component_num;
    gx_transfer_map *blue;
    int gray_component_num;
    gx_transfer_map *gray;
} gx_transfer;
# 213 "./base/gxistate.h"
struct gs_devicen_color_map_s {
    bool use_alt_cspace;
    separation_type sep_type;
    uint num_components;
    uint num_colorants;
    gs_id cspace_id;
    int color_map[(64)];
};
# 229 "./base/gxistate.h"
typedef struct gs_xstate_trans_flags {
    bool xstate_pending;
    bool xstate_change;
} gs_xstate_trans_flags_t;
# 300 "./base/gxistate.h"
struct gs_imager_state_s {
    bool is_gstate; gs_memory_t *memory; void *client_data; gx_line_params line_params; bool hpgl_path_mode; gs_matrix_fixed ctm; bool current_point_valid; gs_point current_point; gs_point subpath_start; bool clamp_coordinates; gs_logical_operation_t log_op; gx_color_value alpha; gs_blend_mode_t blend_mode; gs_transparency_source_t opacity, shape; gs_xstate_trans_flags_t trans_flags; gs_id soft_mask_id; bool text_knockout; uint text_rendering_mode; bool has_transparency; gx_device *trans_device; bool overprint; int overprint_mode; int effective_overprint_mode; bool overprint_alt; int overprint_mode_alt; int effective_overprint_mode_alt; float flatness; gs_fixed_point fill_adjust; bool stroke_adjust; bool accurate_curves; bool have_pattern_streams; float smoothness; int renderingintent; bool blackptcomp; gsicc_manager_t *icc_manager; gsicc_link_cache_t *icc_link_cache; gsicc_profile_cache_t *icc_profile_cache; const gx_color_map_procs * (*get_cmap_procs)(const gs_imager_state *, const gx_device *); gs_halftone *halftone; gs_int_point screen_phase[2]; gx_device_halftone *dev_ht; struct gs_cie_render_s *cie_render; bool cie_to_xyz; gx_transfer_map *black_generation; gx_transfer_map *undercolor_removal; gx_transfer set_transfer; gx_transfer_map *effective_transfer[(8 * 8)]; struct gx_cie_joint_caches_s *cie_joint_caches; const struct gx_color_map_procs_s *cmap_procs; gs_devicen_color_map color_component_map; struct gx_pattern_cache_s *pattern_cache; gs_color_space *devicergb_cs; gs_color_space *devicecmyk_cs; struct gx_cie_joint_caches_s *cie_joint_caches_alt; gs_devicen_color_map color_component_map_alt;
};
# 322 "./base/gxistate.h"
int gs_imager_state_initialize(gs_imager_state * pis, gs_memory_t * mem);



gs_imager_state *
    gs_imager_state_copy(const gs_imager_state * pis, gs_memory_t * mem);


void gs_imager_state_copied(gs_imager_state * pis);


void gs_imager_state_pre_assign(gs_imager_state *to,
                                const gs_imager_state *from);


void gs_imager_state_release(gs_imager_state * pis);
int gs_currentscreenphase_pis(const gs_imager_state *, gs_int_point *, gs_color_select_t);
# 27 "./base/gzstate.h" 2
# 1 "./base/gsstate.h" 1
# 31 "./base/gsstate.h"
typedef struct gs_overprint_params_s gs_overprint_params_t;



gs_state *gs_state_alloc(gs_memory_t *);
int gs_state_free(gs_state *);
int gs_state_free_chain(gs_state *);


int gs_gsave(gs_state *), gs_grestore(gs_state *), gs_grestoreall(gs_state *);
int gs_grestore_only(gs_state *);
int gs_gsave_for_save(gs_state *, gs_state **), gs_grestoreall_for_restore(gs_state *, gs_state *);
gs_state *gs_gstate(gs_state *);
gs_state *gs_state_copy(gs_state *, gs_memory_t *);
int gs_copygstate(gs_state * , const gs_state * ),
      gs_currentgstate(gs_state * , const gs_state * ),
      gs_setgstate(gs_state * , const gs_state * );

int gs_state_update_overprint(gs_state *, const gs_overprint_params_t *);
bool gs_currentoverprint(const gs_state *);
void gs_setoverprint(gs_state *, bool);
int gs_currentoverprintmode(const gs_state *);
int gs_setoverprintmode(gs_state *, int);

int gs_do_set_overprint(gs_state *);

int gs_currentrenderingintent(const gs_state *);
int gs_setrenderingintent(gs_state *, int);

int gs_currentblackptcomp(const gs_state *);
int gs_setblackptcomp(gs_state *, int);

int gs_initgraphics(gs_state *);

bool gs_currentcpsimode(const gs_memory_t *);
void gs_setcpsimode(gs_memory_t *, bool);






# 1 "./base/gsline.h" 1
# 25 "./base/gsline.h"
int gs_setlinewidth(gs_state *, double);
float gs_currentlinewidth(const gs_state *);
int gs_setlinecap(gs_state *, gs_line_cap);
gs_line_cap gs_currentlinecap(const gs_state *);
int gs_setlinestartcap(gs_state *, gs_line_cap);
int gs_setlineendcap(gs_state *, gs_line_cap);
int gs_setlinedashcap(gs_state *, gs_line_cap);
int gs_setlinejoin(gs_state *, gs_line_join);
gs_line_join gs_currentlinejoin(const gs_state *);
int gs_setmiterlimit(gs_state *, double);
float gs_currentmiterlimit(const gs_state *);
int gs_setdash(gs_state *, const float *, uint, double);
uint gs_currentdash_length(const gs_state *);
const float *gs_currentdash_pattern(const gs_state *);
float gs_currentdash_offset(const gs_state *);
int gs_setflat(gs_state *, double);
float gs_currentflat(const gs_state *);
int gs_setstrokeadjust(gs_state *, bool);
bool gs_currentstrokeadjust(const gs_state *);


void gs_setdashadapt(gs_state *, bool);
bool gs_currentdashadapt(const gs_state *);
int gs_setcurvejoin(gs_state *, int);
int gs_currentcurvejoin(const gs_state *);


void gs_setaccuratecurves(gs_state *, bool);
bool gs_currentaccuratecurves(const gs_state *);
int gs_setdotlength(gs_state *, double, bool);
float gs_currentdotlength(const gs_state *);
bool gs_currentdotlength_absolute(const gs_state *);
int gs_setdotorientation(gs_state *);
int gs_dotorientation(gs_state *);






int gs_imager_setflat(gs_imager_state *, double);
bool gs_imager_currentdashadapt(const gs_imager_state *);
bool gs_imager_currentaccuratecurves(const gs_imager_state *);
# 73 "./base/gsstate.h" 2


# 1 "./base/gscolor.h" 1
# 25 "./base/gscolor.h"
int gs_setgray(gs_state *, double);
int gs_currentgray(const gs_state *, float *);
int gs_setrgbcolor(gs_state *, double, double, double);
int gs_currentrgbcolor(const gs_state *, float[3]);
int gs_setnullcolor(gs_state *);


int gs_settransfer(gs_state *, gs_mapping_proc);
int gs_settransfer_remap(gs_state *, gs_mapping_proc, bool);
gs_mapping_proc gs_currenttransfer(const gs_state *);
# 76 "./base/gsstate.h" 2


# 1 "./base/gsht.h" 1
# 23 "./base/gsht.h"
typedef struct gs_screen_halftone_s {
    float frequency;
    float angle;
    float (*spot_function) (double, double);


    float actual_frequency;
    float actual_angle;
} gs_screen_halftone;




typedef struct gs_colorscreen_halftone_s {
    union _css {
        gs_screen_halftone indexed[4];
        struct _csc {
            gs_screen_halftone red, green, blue, gray;
        } colored;
    } screens;
} gs_colorscreen_halftone;




int gs_setscreen(gs_state *, gs_screen_halftone *);
int gs_currentscreen(const gs_state *, gs_screen_halftone *);
int gs_currentscreenlevels(const gs_state *);
# 61 "./base/gsht.h"
typedef struct gs_screen_enum_s gs_screen_enum;
gs_screen_enum *gs_screen_enum_alloc(gs_memory_t *, client_name_t);
int gs_screen_init(gs_screen_enum *, gs_state *, gs_screen_halftone *);
int gs_screen_currentpoint(gs_screen_enum *, gs_point *);
int gs_screen_next(gs_screen_enum *, double);
int gs_screen_install(gs_screen_enum *);
# 79 "./base/gsstate.h" 2

int gs_setscreenphase(gs_state *, int, int, gs_color_select_t);
int gs_currentscreenphase(const gs_state *, gs_int_point *, gs_color_select_t);





int gx_imager_setscreenphase(gs_imager_state *, int, int, gs_color_select_t);


int gs_setfilladjust(gs_state *, double, double);
int gs_currentfilladjust(const gs_state *, gs_point *);
void gs_setlimitclamp(gs_state *, bool);
bool gs_currentlimitclamp(const gs_state *);
void gs_settextrenderingmode(gs_state * pgs, uint trm);
uint gs_currenttextrenderingmode(const gs_state * pgs);

gs_in_cache_device_t gs_incachedevice(const gs_state *);
void gs_sethpglpathmode(gs_state *, bool);
bool gs_currenthpglpathmode(const gs_state *);
# 28 "./base/gzstate.h" 2
# 1 "./base/gxstate.h" 1
# 37 "./base/gxstate.h"
gs_memory_t *gs_state_memory(const gs_state *);
gs_state *gs_state_saved(const gs_state *);
gs_state *gs_state_swap_saved(gs_state *, gs_state *);
gs_memory_t *gs_state_swap_memory(gs_state *, gs_memory_t *);







typedef void *(*gs_state_alloc_proc_t) (gs_memory_t * mem);
typedef int (*gs_state_copy_proc_t) (void *to, const void *from);
typedef void (*gs_state_free_proc_t) (void *old, gs_memory_t * mem);

typedef enum {
    copy_for_gsave,
    copy_for_grestore,
    copy_for_gstate,
    copy_for_setgstate,
    copy_for_copygstate,
    copy_for_currentgstate
} gs_state_copy_reason_t;



typedef int (*gs_state_copy_for_proc_t) (void *to, void *from,
                                         gs_state_copy_reason_t reason);
typedef struct gs_state_client_procs_s {
    gs_state_alloc_proc_t alloc;
    gs_state_copy_proc_t copy;
    gs_state_free_proc_t free;
    gs_state_copy_for_proc_t copy_for;
} gs_state_client_procs;
void gs_state_set_client(gs_state *, void *, const gs_state_client_procs *,
                            bool client_has_pattern_streams);



void *gs_state_client_data(const gs_state *);



gs_id gx_get_clip_path_id(gs_state *);
# 29 "./base/gzstate.h" 2
# 41 "./base/gzstate.h"
typedef struct gx_clip_stack_s gx_clip_stack_t;
# 57 "./base/gzstate.h"
typedef struct gs_device_filter_stack_s gs_device_filter_stack_t;
# 67 "./base/gzstate.h"
typedef struct gs_device_filter_s gs_device_filter_t;



struct gs_device_filter_stack_s {
    gs_device_filter_stack_t *next;
    gs_device_filter_t *df;
    gx_device *next_device;
    rc_header rc;
};



struct gs_state_s {
    bool is_gstate; gs_memory_t *memory; void *client_data; gx_line_params line_params; bool hpgl_path_mode; gs_matrix_fixed ctm; bool current_point_valid; gs_point current_point; gs_point subpath_start; bool clamp_coordinates; gs_logical_operation_t log_op; gx_color_value alpha; gs_blend_mode_t blend_mode; gs_transparency_source_t opacity, shape; gs_xstate_trans_flags_t trans_flags; gs_id soft_mask_id; bool text_knockout; uint text_rendering_mode; bool has_transparency; gx_device *trans_device; bool overprint; int overprint_mode; int effective_overprint_mode; bool overprint_alt; int overprint_mode_alt; int effective_overprint_mode_alt; float flatness; gs_fixed_point fill_adjust; bool stroke_adjust; bool accurate_curves; bool have_pattern_streams; float smoothness; int renderingintent; bool blackptcomp; gsicc_manager_t *icc_manager; gsicc_link_cache_t *icc_link_cache; gsicc_profile_cache_t *icc_profile_cache; const gx_color_map_procs * (*get_cmap_procs)(const gs_imager_state *, const gx_device *); gs_halftone *halftone; gs_int_point screen_phase[2]; gx_device_halftone *dev_ht; struct gs_cie_render_s *cie_render; bool cie_to_xyz; gx_transfer_map *black_generation; gx_transfer_map *undercolor_removal; gx_transfer set_transfer; gx_transfer_map *effective_transfer[(8 * 8)]; struct gx_cie_joint_caches_s *cie_joint_caches; const struct gx_color_map_procs_s *cmap_procs; gs_devicen_color_map color_component_map; struct gx_pattern_cache_s *pattern_cache; gs_color_space *devicergb_cs; gs_color_space *devicecmyk_cs; struct gx_cie_joint_caches_s *cie_joint_caches_alt; gs_devicen_color_map color_component_map_alt;
    gs_state *saved;



    gs_matrix ctm_inverse;
    bool ctm_inverse_valid;
    gs_matrix ctm_default;
    bool ctm_default_set;



    gx_path *path;
    gx_clip_path *clip_path;
    gx_clip_stack_t *clip_stack;
    gx_clip_path *view_clip;


    gs_id effective_clip_id;
    gs_id effective_view_clip_id;
    gx_clip_path *effective_clip_path;

    bool effective_clip_shared;
# 115 "./base/gzstate.h"
    struct {
        gs_color_space *color_space;
        gs_client_color *ccolor;
        gx_device_color *dev_color;
    } color[2];



    gs_font *font;
    gs_font *root_font;
    gs_matrix_fixed char_tm;

    bool char_tm_valid;
    gs_in_cache_device_t in_cachedevice;
    gs_char_path_mode in_charpath;
    gs_state *show_gstate;




    int level;
    gx_device *device;


    gs_device_filter_stack_t *dfilter_stack;





    gs_state_client_procs client_procs;
};
# 170 "./base/gzstate.h"
int gs_swapcolors(gs_state *);
void gs_swapcolors_quick(gs_state *);
# 30 "./base/gxfapi.c" 2
# 1 "./base/gxfcid.h" 1
# 22 "./base/gxfcid.h"
# 1 "./base/gxcid.h" 1
# 27 "./base/gxcid.h"
typedef struct gs_cid_system_info_s gs_cid_system_info_t;

struct gs_cid_system_info_s {
    gs_const_string Registry;
    gs_const_string Ordering;
    int Supplement;
};
extern const gs_memory_struct_type_t st_cid_system_info;
extern const gs_memory_struct_type_t st_cid_system_info_element;
# 50 "./base/gxcid.h"
void cid_system_info_set_null(gs_cid_system_info_t *);
bool cid_system_info_is_null(const gs_cid_system_info_t *);
# 23 "./base/gxfcid.h" 2

# 1 "./base/gxfont42.h" 1
# 24 "./base/gxfont42.h"
typedef struct gs_glyph_cache_s gs_glyph_cache;
# 35 "./base/gxfont42.h"
typedef struct gs_type42_data_s gs_type42_data;



typedef struct gs_font_type42_s gs_font_type42;







typedef enum gs_type42_metrics_options_s {
    gs_type42_metrics_options_WMODE0 = 0,
    gs_type42_metrics_options_WMODE1 = 1,
    gs_type42_metrics_options_BBOX = 2,
    gs_type42_metrics_options_WMODE0_AND_BBOX = 4,
    gs_type42_metrics_options_WMODE1_AND_BBOX = 5,
} gs_type42_metrics_options_t;
# 62 "./base/gxfont42.h"
int gs_type42_default_get_metrics(gs_font_type42 *pfont, uint glyph_index,
                                  gs_type42_metrics_options_t options, float *sbw);

typedef struct gs_type42_mtx_s {
    uint numMetrics;
    ulong offset;
    uint length;
} gs_type42_mtx_t;
struct gs_type42_data_s {

    int (*string_proc) (gs_font_type42 *, ulong, uint, const byte **);
    void *proc_data;




    uint (*get_glyph_index)(gs_font_type42 *pfont, gs_glyph glyph);
    int (*get_outline)(gs_font_type42 *pfont, uint glyph_index,
                       gs_glyph_data_t *pgd);
    int (*get_metrics)(gs_font_type42 *pfont, uint glyph_index,
                        gs_type42_metrics_options_t options,
                        float *sbw_bbox );
     uint (*substitute_glyph_index_vertical)(gs_font_type42 *pfont, uint glyph_index,
                                          int WMode, gs_glyph glyph);


    ulong cmap;

    ulong glyf;
    uint unitsPerEm;
    uint indexToLocFormat;
    gs_type42_mtx_t metrics[2];
    ulong loca;
    ulong name_offset;
    ulong os2_offset;
# 109 "./base/gxfont42.h"
    uint numGlyphs;
    uint trueNumGlyphs;
    uint maxPoints;
    uint maxContours;
    uint maxCPoints;
    uint maxCContours;
    uint *len_glyphs;
    gs_glyph_cache *gdcache;
    bool warning_patented;
    bool warning_bad_instruction;
    byte *gsub;
    ulong gsub_size;
};



struct gs_font_type42_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index; gs_type42_data data;
};

extern const gs_memory_struct_type_t st_gs_font_type42;
# 144 "./base/gxfont42.h"
int gs_type42_font_init(gs_font_type42 *pfont, int subfontid);


int gs_type42_read_data(gs_font_type42 * pfont, ulong pos, uint length, byte *buf);
# 162 "./base/gxfont42.h"
int gs_type42_append(uint glyph_index, gs_state * pgs,
                 gx_path * ppath, gs_text_enum_t *penum, gs_font *pfont,
                 bool charpath_flag);


int gs_type42_get_metrics(gs_font_type42 * pfont, uint glyph_index,
                          float psbw[4]);

int gs_type42_get_outline_from_TT_file(gs_font_type42 * pfont, stream *s, uint glyph_index,
                gs_glyph_data_t *pgd);


int gs_type42_enumerate_glyph(gs_font *font, int *pindex, gs_glyph_space_t glyph_space, gs_glyph *pglyph);
int gs_type42_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info);
int gs_type42_glyph_outline(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat, gx_path *ppath, double sbw[4]);


int gs_type42_glyph_info_by_gid(gs_font *font, gs_glyph glyph, const gs_matrix *pmat,
                     int members, gs_glyph_info_t *info, uint glyph_index);

int gs_type42_font_info(gs_font *font, const gs_point *pscale, int members,
           gs_font_info_t *info);
int gs_truetype_font_info(gs_font *font, const gs_point *pscale, int members,
           gs_font_info_t *info);

uint gs_type42_substitute_glyph_index_vertical(gs_font_type42 *pfont, uint glyph_index,
                                          int WMode, gs_glyph glyph);


void gs_type42_parse_component(const byte **pdata, uint *pflags, gs_matrix_fixed *psmat,
                               int *pmp , const gs_font_type42 *pfont,
                               const gs_matrix_fixed *pmat);
# 25 "./base/gxfcid.h" 2
# 34 "./base/gxfcid.h"
typedef struct gs_font_cid_data_s {
    gs_cid_system_info_t CIDSystemInfo;
    int CIDCount;
    int MaxCID;
    int GDBytes;


} gs_font_cid_data;

extern const gs_memory_struct_type_t st_gs_font_cid_data;
# 67 "./base/gxfcid.h"
typedef struct gs_font_cid0_s gs_font_cid0;



typedef struct gs_font_cid0_data_s {
    gs_font_cid_data common;
    ulong CIDMapOffset;
    gs_font_type1 **FDArray;
    uint FDArray_size;
    int FDBytes;




    int (*glyph_data)(gs_font_base *, gs_glyph, gs_glyph_data_t *, int *);
    void *proc_data;
} gs_font_cid0_data;
struct gs_font_cid0_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
    gs_font_cid0_data cidata;
};

extern const gs_memory_struct_type_t st_gs_font_cid0;
# 98 "./base/gxfcid.h"
extern const gs_memory_struct_type_t st_gs_font_type1_ptr_element;



typedef struct gs_font_cid1_data_s {
    gs_cid_system_info_t CIDSystemInfo;
} gs_font_cid1_data;
typedef struct gs_font_cid1_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
    gs_font_cid1_data cidata;
} gs_font_cid1;

extern const gs_memory_struct_type_t st_gs_font_cid1;
# 120 "./base/gxfcid.h"
typedef struct gs_subst_CID_on_WMode_s {
    rc_header rc;
    uint *data[2];
    uint size[2];
} gs_subst_CID_on_WMode_t;
# 135 "./base/gxfcid.h"
typedef struct gs_font_cid2_s gs_font_cid2;

typedef struct gs_font_cid2_data_s {
    gs_font_cid_data common;
    int MetricsCount;
    int (*CIDMap_proc)(gs_font_cid2 *, gs_glyph);




    struct o_ {
        int (*get_outline)(gs_font_type42 *, uint, gs_glyph_data_t *);
        int (*get_metrics)(gs_font_type42 *, uint, gs_type42_metrics_options_t,
                float * );
    } orig_procs;
} gs_font_cid2_data;
struct gs_font_cid2_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index; gs_type42_data data;
    gs_font_cid2_data cidata;
    gs_subst_CID_on_WMode_t *subst_CID_on_WMode;
};

extern const gs_memory_struct_type_t st_gs_font_cid2;
# 172 "./base/gxfcid.h"
const gs_cid_system_info_t *gs_font_cid_system_info(const gs_font *);





int gs_font_cid0_enumerate_glyph(gs_font *font, int *pindex, gs_glyph_space_t glyph_space, gs_glyph *pglyph);




bool gs_is_CIDSystemInfo_compatible(const gs_cid_system_info_t *info0,
                                    const gs_cid_system_info_t *info1);


const gs_font *gs_cid0_indexed_font(const gs_font *, int);


bool gs_cid0_has_type2(const gs_font *font);
# 31 "./base/gxfapi.c" 2
# 1 "./base/gxchar.h" 1
# 23 "./base/gxchar.h"
# 1 "./base/gschar.h" 1
# 39 "./base/gschar.h"
gs_show_enum *gs_show_enum_alloc(gs_memory_t *, gs_state *, client_name_t);




void gs_show_enum_release(gs_show_enum *, gs_memory_t *);

int gs_show_use_glyph(gs_show_enum *, gs_glyph);
# 70 "./base/gschar.h"
int gs_show_next(gs_show_enum *);

gs_char
    gs_show_current_char(const gs_show_enum *),
    gs_kshow_previous_char(const gs_show_enum *),
    gs_kshow_next_char(const gs_show_enum *);
gs_font *
    gs_show_current_font(const gs_show_enum *);

gs_glyph
    gs_show_current_glyph(const gs_show_enum *);
int gs_show_current_width(const gs_show_enum *, gs_point *);
void gs_show_width(const gs_show_enum *, gs_point *);

gs_char_path_mode
    gs_show_in_charpath(const gs_show_enum *);



int gs_setcachedevice_float(gs_show_enum *, gs_state *, const float * );
int gs_setcachedevice_double(gs_show_enum *, gs_state *, const double * );


int gs_setcachedevice2_float(gs_show_enum *, gs_state *, const float * );
int gs_setcachedevice2_double(gs_show_enum *, gs_state *, const double * );


int gs_setcharwidth(gs_show_enum *, gs_state *, double, double);






bool gs_show_width_only(const gs_show_enum *);
# 24 "./base/gxchar.h" 2
# 61 "./base/gxchar.h"
typedef enum {
    sws_none,
    sws_cache,
    sws_no_cache,
    sws_cache_width_only,
    sws_retry
} show_width_status;
struct gs_show_enum_s {

    gs_text_params_t text; gx_device *dev; gx_device *imaging_dev; gs_imager_state *pis; gs_font *orig_font; gx_path *path; const gx_device_color *pdcolor; const gx_clip_path *pcpath; gs_memory_t *memory; const gs_text_enum_procs_t *procs; rc_header rc; void *enum_client_data; gs_font *current_font; gs_glyph outer_CID; bool is_pure_color; gs_log2_scale_point log2_scale; cached_fm_pair *pair; uint index; uint xy_index; gx_font_stack_t fstack; int cmap_code; bool single_byte_space; int bytes_decoded; gs_point FontBBox_as_Metrics2; ulong text_enum_id; bool device_disabled_grid_fitting; gs_log2_scale_point fapi_log2_scale; gs_point fapi_glyph_shift; gs_text_returned_t returned;

    bool auto_release;
    gs_state *pgs;
    int level;
    gs_char_path_mode charpath_flag;
    gs_state *show_gstate;

    int can_cache;


    gs_int_rect ibox;

    gs_int_rect obox;
    int ftx, fty;

    gs_glyph (*encode_char)(gs_font *, gs_char, gs_glyph_space_t);
    gx_device_memory *dev_cache;
    gx_device_memory *dev_cache2;

    gx_device_null *dev_null;




    gs_fixed_point wxy;
    gs_point wxy_float;
    bool use_wxy_float;
    gs_fixed_point origin;


    cached_char *cc;

    show_width_status width_status;

    int (*continue_proc) (gs_show_enum *);
};







int gx_current_char(const gs_text_enum_t * pte);







int gx_alloc_char_bits(gs_font_dir *, gx_device_memory *, gx_device_memory *, ushort, ushort, const gs_log2_scale_point *, int, cached_char **);
void gx_open_cache_device(gx_device_memory *, cached_char *);
void gx_free_cached_char(gs_font_dir *, cached_char *);
int gx_add_cached_char(gs_font_dir *, gx_device_memory *, cached_char *, cached_fm_pair *, const gs_log2_scale_point *);
void gx_add_char_bits(gs_font_dir *, cached_char *, const gs_log2_scale_point *);
cached_char *
            gx_lookup_cached_char(const gs_font *, const cached_fm_pair *, gs_glyph, int, int, gs_fixed_point *);

int gx_image_cached_char(gs_show_enum *, cached_char *);
void gx_compute_text_oversampling(const gs_show_enum * penum, const gs_font *pfont,
                                  int alpha_bits, gs_log2_scale_point *p_log2_scale);
int set_char_width(gs_show_enum *penum, gs_state *pgs, double wx, double wy);
int gx_default_text_restore_state(gs_text_enum_t *pte);
int gx_hld_stringwidth_begin(gs_imager_state * pis, gx_path **path);
# 32 "./base/gxfapi.c" 2
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
# 33 "./base/gxfapi.c" 2
# 1 "./base/gsimage.h" 1
# 121 "./base/gsimage.h"
typedef struct gs_image_enum_s gs_image_enum;
int gs_image_begin_typed(const gs_image_common_t * pic, gs_state * pgs,
                         bool uses_color, gx_image_enum_common_t ** ppie);

gs_image_enum *gs_image_enum_alloc(gs_memory_t *, client_name_t);
# 142 "./base/gsimage.h"
int gs_image_common_init(gs_image_enum * penum,
                         gx_image_enum_common_t * pie,
                         const gs_data_image_t * pim, gx_device * dev);


int gs_image_init(gs_image_enum * penum, const gs_image_t * pim,
                  bool MultipleDataSources, gs_state * pgs);




int gs_image_enum_init(gs_image_enum * penum,
                       gx_image_enum_common_t * pie,
                       const gs_data_image_t * pim, gs_state *pgs);





uint gs_image_bytes_per_plane_row(const gs_image_enum * penum, int plane);
# 170 "./base/gsimage.h"
const byte *gs_image_planes_wanted(gs_image_enum *penum);
# 191 "./base/gsimage.h"
int gs_image_next_planes(gs_image_enum *penum, gs_const_string *plane_data,
                         uint *used);


int gs_image_next(gs_image_enum * penum, const byte * dbytes,
                  uint dsize, uint * pused);


int gs_image_cleanup(gs_image_enum * penum, gs_state *pgs);


int gs_image_cleanup_and_free_enum(gs_image_enum * penum, gs_state *pgs);
# 34 "./base/gxfapi.c" 2
# 1 "./base/gsbittab.h" 1
# 43 "./base/gsbittab.h"
extern const byte byte_reverse_bits[256];




extern const byte byte_right_mask[9];




extern const byte byte_count_bits[256];
# 62 "./base/gsbittab.h"
extern const byte
    byte_bit_run_length_0[256], byte_bit_run_length_1[256],
    byte_bit_run_length_2[256], byte_bit_run_length_3[256],
    byte_bit_run_length_4[256], byte_bit_run_length_5[256],
    byte_bit_run_length_6[256], byte_bit_run_length_7[256];





extern const byte *const byte_bit_run_length[8];
extern const byte *const byte_bit_run_length_neg[8];





extern const byte byte_acegbdfh_to_abcdefgh[256];
# 35 "./base/gxfapi.c" 2

# 1 "./base/gxfapi.h" 1
# 44 "./base/gxfapi.h"
typedef int fracint;



typedef int gs_fapi_retcode;

typedef enum
{
    gs_fapi_font_feature_FontMatrix,
    gs_fapi_font_feature_UniqueID,
    gs_fapi_font_feature_BlueScale,
    gs_fapi_font_feature_Weight,
    gs_fapi_font_feature_ItalicAngle,
    gs_fapi_font_feature_IsFixedPitch,
    gs_fapi_font_feature_UnderLinePosition,
    gs_fapi_font_feature_UnderlineThickness,
    gs_fapi_font_feature_FontType,
    gs_fapi_font_feature_FontBBox,
    gs_fapi_font_feature_BlueValues_count,
    gs_fapi_font_feature_BlueValues,
    gs_fapi_font_feature_OtherBlues_count,
    gs_fapi_font_feature_OtherBlues,
    gs_fapi_font_feature_FamilyBlues_count,
    gs_fapi_font_feature_FamilyBlues,
    gs_fapi_font_feature_FamilyOtherBlues_count,
    gs_fapi_font_feature_FamilyOtherBlues,
    gs_fapi_font_feature_BlueShift,
    gs_fapi_font_feature_BlueFuzz,
    gs_fapi_font_feature_StdHW,
    gs_fapi_font_feature_StdVW,
    gs_fapi_font_feature_StemSnapH_count,
    gs_fapi_font_feature_StemSnapH,
    gs_fapi_font_feature_StemSnapV_count,
    gs_fapi_font_feature_StemSnapV,
    gs_fapi_font_feature_ForceBold,
    gs_fapi_font_feature_LanguageGroup,
    gs_fapi_font_feature_lenIV,
    gs_fapi_font_feature_GlobalSubrs_count,
    gs_fapi_font_feature_Subrs_count,
    gs_fapi_font_feature_Subrs_total_size,
    gs_fapi_font_feature_TT_size,

    gs_fapi_font_feature_DollarBlend,
    gs_fapi_font_feature_DollarBlend_length,
    gs_fapi_font_feature_BlendAxisTypes_count,
    gs_fapi_font_feature_BlendAxisTypes,
    gs_fapi_font_feature_BlendPrivate_count,
    gs_fapi_font_feature_BlendFontInfo_count,
    gs_fapi_font_feature_WeightVector_count,
    gs_fapi_font_feature_WeightVector,
    gs_fapi_font_feature_BlendDesignPositionsArrays_count,
    gs_fapi_font_feature_BlendDesignPositionsArrayValue,
    gs_fapi_font_feature_BlendDesignMapArrays_count,
    gs_fapi_font_feature_BlendDesignMapSubArrays_count,
    gs_fapi_font_feature_BlendDesignMapArrayValue,


    gs_fapi_font_feature_CharStrings_count,

} gs_fapi_font_feature;

typedef enum
{
    gs_fapi_metrics_notdef,
    gs_fapi_metrics_add,
    gs_fapi_metrics_replace_width,
    gs_fapi_metrics_replace
} gs_fapi_metrics_type;

typedef struct
{
    gs_char client_char_code;
    gs_glyph char_codes[4];
    int char_codes_count;
    bool is_glyph_index;
    const unsigned char *char_name;
    unsigned int char_name_length;
    gs_fapi_metrics_type metrics_type;
    fracint sb_x, sb_y, aw_x, aw_y;
    int metrics_scale;

} gs_fapi_char_ref;


typedef struct
{
    int platform_id;
    int encoding_id;
} gs_fapi_ttf_cmap_request;



typedef struct gs_fapi_font_s gs_fapi_font;
struct gs_fapi_font_s
{

    void *server_font_data;
    bool need_decrypt;

    const gs_memory_t *memory;
    const char *font_file_path;
    const char *full_font_buf;
    int full_font_buf_len;
    int subfont;
    bool is_type1;
    bool is_cid;
    bool is_outline_font;
    bool is_mtx_skipped;
    bool is_vertical;
    bool metrics_only;
    gs_fapi_ttf_cmap_request ttf_cmap_req[10];
    void *client_ctx_p;
    void *client_font_data;
    void *client_font_data2;
    const void *char_data;
    int char_data_len;
    float embolden;
    unsigned short (*get_word) (gs_fapi_font *ff,
                                gs_fapi_font_feature var_id, int index);
    unsigned long (*get_long) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                               int index);
    float (*get_float) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                        int index);
    int (*get_name) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                     int index, char *buffer, int len);
    int (*get_proc) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                     int index, char *Buffer);
    unsigned short (*get_gsubr) (gs_fapi_font *ff, int index, byte *buf,
                                 ushort buf_length);
    unsigned short (*get_subr) (gs_fapi_font *ff, int index, byte *buf,
                                ushort buf_length);
    unsigned short (*get_raw_subr) (gs_fapi_font *ff, int index, byte *buf,
                                    ushort buf_length);
    int (*get_glyph) (gs_fapi_font *ff, int char_code, byte *buf,
                      ushort buf_length);
    unsigned short (*serialize_tt_font) (gs_fapi_font *ff, void *buf,
                                         int buf_size);
    unsigned short (*get_charstring) (gs_fapi_font *ff, int index,
                                      byte *buf, ushort buf_length);
    unsigned short (*get_charstring_name) (gs_fapi_font *ff, int index,
                                           byte *buf, ushort buf_length);
    int (*get_glyphdirectory_data) (gs_fapi_font *ff, int char_code,
                                    const byte **ptr);
    int (*get_glyphname_or_cid) (gs_font_base *pbfont,
                                 gs_string *charstring, gs_string *name,
                                 int ccode, gs_string *enc_char_name,
                                 char *font_file_path, gs_fapi_char_ref *cr,
                                 bool bCID);
    int (*fapi_get_metrics) (gs_fapi_font *ff, gs_string *char_name,
                             int cid, double *m, bool vertical);
    int (*fapi_set_cache) (gs_text_enum_t *penum,
                           const gs_font_base *pbfont,
                           const gs_string *char_name, int cid,
                           const double pwidth[2], const gs_rect *pbbox,
                           const double Metrics2_sbw_default[4],
                           bool *imagenow);
};

typedef struct gs_fapi_face_s gs_fapi_face;
struct gs_fapi_face_s
{
    gs_id font_id;
    gs_matrix ctm;
    gs_log2_scale_point log2_scale;
    bool align_to_pixels;
    float HWResolution[2];
};

typedef struct gs_fapi_path_s gs_fapi_path;
struct gs_fapi_path_s
{
    void *olh;
    int shift;
    int gs_error;
    int (*moveto) (gs_fapi_path *, int64_t, int64_t);
    int (*lineto) (gs_fapi_path *, int64_t, int64_t);
    int (*curveto) (gs_fapi_path *, int64_t, int64_t, int64_t, int64_t,
                    int64_t, int64_t);
    int (*closepath) (gs_fapi_path *);
};

typedef struct gs_fapi_font_scale_s
{
    fracint matrix[6];
    fracint HWResolution[2];
    int subpixels[2];
    bool align_to_pixels;
} gs_fapi_font_scale;

typedef struct gs_fapi_metrics_s
{
    int bbox_x0, bbox_y0, bbox_x1, bbox_y1;
    int escapement;
    int v_escapement;
    int em_x, em_y;
} gs_fapi_metrics;

typedef struct
{
    void *p;
    int width, height, line_step;
    int orig_x, orig_y;
    int left_indent, top_indent;
    int black_width, black_height;
} gs_fapi_raster;






typedef enum gs_fapi_descendant_code_s
{
    gs_fapi_descendant_prepared = -1,
    gs_fapi_toplevel_prepared = -2,
    gs_fapi_toplevel_begin = -3,
    gs_fapi_toplevel_complete = -4
} gs_fapi_descendant_code;




typedef enum gs_fapi_style_s
{
    gs_fapi_style_bold = 1
} gs_fapi_style;




typedef enum gs_fapi_font_info_s
{
    gs_fapi_font_info_name = 1,
    gs_fapi_font_info_bbox = 2,
    gs_fapi_font_info_pitch = 3,
    gs_fapi_font_info_uid = 4,
    gs_fapi_font_info_design_units = 5
} gs_fapi_font_info;

typedef struct gs_fapi_server_descriptor_s gs_fapi_server_descriptor;
typedef struct gs_fapi_server_instance_s gs_fapi_server_instance;

struct gs_fapi_server_descriptor_s
{
    const char *type;
    const char *subtype;
    void (*finit) (gs_fapi_server **server);
};

struct gs_fapi_server_instance_s
{
    const gs_fapi_server_descriptor *d;
};


struct gs_fapi_server_s
{
    gs_fapi_server_instance ig;
    void *client_ctx_p;
    int frac_shift;
    gs_fapi_face face;
    gs_fapi_font ff;
    int max_bitmap;
    bool use_outline;
    uint grid_fit;
    gs_matrix initial_FontMatrix;






    gs_fapi_retcode(*ensure_open) (gs_fapi_server *server, const char *param, int param_size);
    gs_fapi_retcode(*get_scaled_font) (gs_fapi_server *server, gs_fapi_font *ff, const gs_fapi_font_scale *scale, const char *xlatmap, gs_fapi_descendant_code dc);
    gs_fapi_retcode(*get_decodingID) (gs_fapi_server *server, gs_fapi_font *ff, const char **decodingID);
    gs_fapi_retcode(*get_font_bbox) (gs_fapi_server *server, gs_fapi_font *ff, int BBox[4], int unitsPerEm[2]);
    gs_fapi_retcode(*get_font_proportional_feature) (gs_fapi_server *server, gs_fapi_font *ff, bool *bProportional);
    gs_fapi_retcode(*can_retrieve_char_by_name) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, int *result);
    gs_fapi_retcode(*can_replace_metrics) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, int *result);
    gs_fapi_retcode(*can_simulate_style) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_style style, void *style_data);
    gs_fapi_retcode(*get_fontmatrix) (gs_fapi_server *server, gs_matrix *m);
    gs_fapi_retcode(*get_char_width) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, gs_fapi_metrics *metrics);
    gs_fapi_retcode(*get_char_raster_metrics) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, gs_fapi_metrics *metrics);
    gs_fapi_retcode(*get_char_raster) (gs_fapi_server *server, gs_fapi_raster *r);
    gs_fapi_retcode(*get_char_outline_metrics) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, gs_fapi_metrics *metrics);
    gs_fapi_retcode(*get_char_outline) (gs_fapi_server *server, gs_fapi_path *p);
    gs_fapi_retcode(*release_char_data) (gs_fapi_server *server);

    gs_fapi_retcode(*release_typeface) (gs_fapi_server *server, void *server_font_data);
    gs_fapi_retcode(*check_cmap_for_GID) (gs_fapi_server *server, uint *index);
    gs_fapi_retcode(*get_font_info) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_font_info item, int index, void *data, int *datalen);
# 355 "./base/gxfapi.h"
};
# 367 "./base/gxfapi.h"
typedef int (*gs_fapi_get_server_param_callback) (gs_fapi_server *I,
                                                  const char *subtype,
                                                  char **server_param,
                                                  int *server_param_size);

typedef int (*gs_fapi_server_init_func) (gs_memory_t *mem,
                                         gs_fapi_server **server);
# 382 "./base/gxfapi.h"
void gs_fapi_set_servers_client_data(gs_memory_t *mem,
                                     const gs_fapi_font *ff_proto,
                                     void *ctx_ptr);


int gs_fapi_find_server(gs_memory_t *mem, const char *name,
                        gs_fapi_server **server,
                        gs_fapi_get_server_param_callback
                        get_server_param_cb);

gs_fapi_server **gs_fapi_get_server_list(gs_memory_t *mem);




bool gs_fapi_available(gs_memory_t *mem, char *server);

int gs_fapi_get_metrics_count(gs_fapi_font *ff);

int
gs_fapi_prepare_font(gs_font *pfont, gs_fapi_server *I, int subfont, const char *font_file_path,
                     gs_string *full_font_buf, const char *xlatmap, const char **decodingID);

int
gs_fapi_finish_render(gs_font *pfont, gs_state *pgs, gs_text_enum_t *penum, gs_fapi_server *I);

int
gs_fapi_do_char(gs_font *pfont, gs_state *pgs, gs_text_enum_t *penum, char *font_file_path,
                bool bBuildGlyph, gs_string *charstring, gs_string *glyphname,
                gs_char chr, gs_glyph index, int subfont);
# 421 "./base/gxfapi.h"
int
gs_fapi_get_font_info(gs_font *pfont, gs_fapi_font_info item, int index,
                      void *data, int *data_len);

int
gs_fapi_passfont(gs_font *pfont, int subfont, char *font_file_path,
                 gs_string *full_font_buf, char *fapi_request, char *xlatmap,
                 char **fapi_id, gs_fapi_get_server_param_callback get_server_param_cb);

int gs_fapi_init(gs_memory_t *mem);

void gs_fapi_finit(gs_memory_t *mem);


void gx_fapi_get_ulp_character_data(byte **header, byte **character_data);
# 37 "./base/gxfapi.c" 2

const gs_fapi_server_init_func * gs_get_fapi_server_inits(void);


static int
gs_fapi_renderer_retcode(gs_memory_t *mem, gs_fapi_server *I,
                         gs_fapi_retcode rc)
{
    if (rc == 0)
        return 0;
    if (gs_debug_c('1')) {
        (emprintf_program_ident(mem, gs_program_name(), gs_revision_number()), errprintf(mem, "Error: Font Renderer Plugin ( %s ) return code = %d\n", I->ig.d->subtype, rc));


    }
    return rc < 0 ? rc : (-10);
}

typedef struct gs_fapi_outline_handler_s
{
    struct gx_path_s *path;
    fixed x0;
    fixed y0;
    bool close_path;
    bool need_close;
} gs_fapi_outline_handler;

static __inline__ int64_t
import_shift(int64_t x, int64_t n)
{
    return (n > 0 ? (x << n) : (x >> -n));
}

static __inline__ int
export_shift(int x, int n)
{
    return (n > 0 ? (x >> n) : (x << -n));
}

static __inline__ int
fapi_round(double x)
{
    return (int)(x + 0.5);
}

static int
add_closepath(gs_fapi_path *I)
{
    gs_fapi_outline_handler *olh = (gs_fapi_outline_handler *) I->olh;

    if (olh->need_close == ((bool)1)) {
        olh->need_close = ((bool)0);
        I->gs_error = gx_path_close_subpath_notes(olh->path, 0);
    }
    return (I->gs_error);
}

static int
add_move(gs_fapi_path *I, int64_t x, int64_t y)
{
    gs_fapi_outline_handler *olh = (gs_fapi_outline_handler *) I->olh;

    x = import_shift(x, I->shift) + olh->x0;
    y = -import_shift(y, I->shift) + olh->y0;

    if (x > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        x = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (x < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        x = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    if (y > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        y = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (y < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        y = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    if (olh->need_close && olh->close_path)
        if ((I->gs_error = add_closepath(I)) < 0)
            return (I->gs_error);
    olh->need_close = ((bool)0);
    I->gs_error = gx_path_add_point(olh->path, (fixed) x, (fixed) y);

    return (I->gs_error);
}

static int
add_line(gs_fapi_path *I, int64_t x, int64_t y)
{
    gs_fapi_outline_handler *olh = (gs_fapi_outline_handler *) I->olh;

    x = import_shift(x, I->shift) + olh->x0;
    y = -import_shift(y, I->shift) + olh->y0;
    if (x > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        x = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (x < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        x = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    if (y > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        y = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (y < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        y = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    olh->need_close = ((bool)1);
    I->gs_error = gx_path_add_line_notes(olh->path, (fixed) x, (fixed) y, 0);
    return (I->gs_error);
}

static int
add_curve(gs_fapi_path *I, int64_t x0, int64_t y0, int64_t x1, int64_t y1,
          int64_t x2, int64_t y2)
{
    gs_fapi_outline_handler *olh = (gs_fapi_outline_handler *) I->olh;

    x0 = import_shift(x0, I->shift) + olh->x0;
    y0 = -import_shift(y0, I->shift) + olh->y0;
    x1 = import_shift(x1, I->shift) + olh->x0;
    y1 = -import_shift(y1, I->shift) + olh->y0;
    x2 = import_shift(x2, I->shift) + olh->x0;
    y2 = -import_shift(y2, I->shift) + olh->y0;

    if (x0 > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        x0 = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (x0 < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        x0 = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    if (y0 > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        y0 = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (y0 < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        y0 = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }
    if (x1 > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        x1 = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (x1 < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        x1 = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    if (y1 > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        y1 = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (y1 < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        y1 = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }
    if (x2 > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        x2 = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (x2 < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        x2 = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    if (y2 > (int64_t) (~(-1 << ((1 << 2) * 8 - 1)))) {
        y2 = (int64_t) (~(-1 << ((1 << 2) * 8 - 1)));
    }
    else if (y2 < (int64_t) (-1 << ((1 << 2) * 8 - 1))) {
        y2 = (int64_t) (-1 << ((1 << 2) * 8 - 1));
    }

    olh->need_close = ((bool)1);
    I->gs_error =
        gx_path_add_curve_notes(olh->path, (fixed) x0, (fixed) y0, (fixed) x1,
                                (fixed) y1, (fixed) x2, (fixed) y2, 0);
    return (I->gs_error);
}

static gs_fapi_path path_interface_stub =
    { ((void*)0), 0, 0, add_move, add_line, add_curve, add_closepath };

int
gs_fapi_get_metrics_count(gs_fapi_font *ff)
{
    if (!ff->is_type1 && ff->is_cid) {
        gs_font_cid2 *pfcid = (gs_font_cid2 *) ff->client_font_data;

        return (pfcid->cidata.MetricsCount);
    }
    return 0;
}
# 233 "./base/gxfapi.c"
static bool
fapi_gs_char_show_width_only(const gs_text_enum_t *penum)
{
    if (!gs_text_is_width_only(penum))
        return ((bool)0);
    switch (penum->orig_font->FontType) {
        case ft_encrypted:
        case ft_encrypted2:
        case ft_CID_encrypted:
        case ft_CID_TrueType:
        case ft_CID_bitmap:
        case ft_TrueType:
            return ((bool)1);
        default:
            return ((bool)0);
    }
}
# 258 "./base/gxfapi.c"
static bool
using_transparency_pattern(gs_state *pgs)
{
    gx_device *dev = ((pgs)->device);

    return ((!(((((pgs)->color[0].dev_color))->type == (&gx_dc_type_data_pure)) && ((((pgs)->log_op) & (0x200 | (rop3_1 - 0xcc))) == (0xf0 & ~0xcc))))
            && dev->procs.begin_transparency_group != ((void*)0)
            && dev->procs.end_transparency_group != ((void*)0));
}

static bool
produce_outline_char(gs_show_enum *penum_s,
                     gs_font_base *pbfont, int abits,
                     gs_log2_scale_point *log2_scale)
{
    gs_state *pgs = (gs_state *) penum_s->pis;

    log2_scale->x = 0;
    log2_scale->y = 0;







    gx_compute_text_oversampling(penum_s, (gs_font *) pbfont, abits,
                                 log2_scale);

    return (pgs->in_charpath || pbfont->PaintType != 0 ||
            (pgs->in_cachedevice != CACHE_DEVICE_CACHING
             && using_transparency_pattern((gs_state *) penum_s->pis))
            || (pgs->in_cachedevice != CACHE_DEVICE_CACHING
                && (log2_scale->x > 0 || log2_scale->y > 0))
            || (pgs->in_cachedevice != CACHE_DEVICE_CACHING && abits > 1));
}

static __inline__ void
gs_fapi_release_typeface(gs_fapi_server *I, void **server_font_data)
{
    I->release_typeface(I, *server_font_data);
    I->face.font_id = 0L;
    if (I->ff.server_font_data == *server_font_data)
        I->ff.server_font_data = 0;
    *server_font_data = 0;
}

static int
notify_remove_font(void *proc_data, void *event_data)
{
    if (event_data == ((void*)0)) {
        gs_font_base *pbfont = proc_data;
        gs_fapi_server *I = pbfont->FAPI;

        if (pbfont->FAPI_font_data != 0) {
            gs_fapi_release_typeface(I, &pbfont->FAPI_font_data);
        }
    }
    return 0;
}

int
gs_fapi_prepare_font(gs_font *pfont, gs_fapi_server *I, int subfont, const char *font_file_path,
                     gs_string *full_font_buf, const char *xlatmap, const char **decodingID)
{
# 344 "./base/gxfapi.c"
    gs_memory_t *mem = pfont->memory;
    gs_font_base *pbfont = (gs_font_base *)pfont;
    int code, bbox_set = 0;
    int BBox[4], scale;
    int units[2];
    double size;
    gs_fapi_font_scale font_scale =
        { {1, 0, 0, 1, 0, 0}, {0, 0}, {1, 1}, ((bool)1) };

    scale = 1 << I->frac_shift;
    size = 1 / sqrt((double)(pbfont->FontMatrix.xx)*(pbfont->FontMatrix.xx)+(double)(pbfont->FontMatrix.xy)*(pbfont->FontMatrix.xy));



    if (size < 1000)
        size = 1000;

    font_scale.matrix[0] = font_scale.matrix[3] = (int)(size * scale + 0.5);

    font_scale.HWResolution[0] = (fracint) (72 * scale);
    font_scale.HWResolution[1] = (fracint) (72 * scale);




    I->ff.subfont = subfont;
    I->ff.font_file_path = font_file_path;
    I->ff.is_type1 = pbfont->FontType == ft_encrypted || pbfont->FontType == ft_encrypted2 || pbfont->FontType == ft_CID_encrypted;
    I->ff.is_vertical = (pbfont->WMode != 0);
    I->ff.memory = mem;
    I->ff.client_ctx_p = I->client_ctx_p;
    I->ff.client_font_data = pbfont;
    I->ff.client_font_data2 = pbfont;
    I->ff.server_font_data = pbfont->FAPI_font_data;
    if (full_font_buf) {
        I->ff.full_font_buf = (char *)full_font_buf->data;
        I->ff.full_font_buf_len = full_font_buf->size;
    }
    else {
        I->ff.full_font_buf = ((void*)0);
        I->ff.full_font_buf_len = 0;
    }
    I->ff.is_cid = pbfont->FontType == ft_CID_encrypted || pbfont->FontType == ft_CID_user_defined || pbfont->FontType == ft_CID_TrueType;
    I->ff.is_outline_font = pbfont->PaintType != 0;

    if (!I->ff.is_mtx_skipped)
        I->ff.is_mtx_skipped = (gs_fapi_get_metrics_count(&I->ff) != 0);

    if ((code = gs_fapi_renderer_retcode(mem, I, I->get_scaled_font(I, &I->ff,
                                                                    (const
                                                                     gs_fapi_font_scale
                                                                     *)
                                                                    &font_scale, xlatmap, gs_fapi_toplevel_begin)))
        < 0)
        return code;
    pbfont->FAPI_font_data = I->ff.server_font_data;
    if (I->ff.server_font_data != 0) {
        if ((code =
             gs_fapi_renderer_retcode(mem, I,
                                      I->get_font_bbox(I, &I->ff,
                                                       BBox, units))) < 0) {
            gs_fapi_release_typeface(I, &pbfont->FAPI_font_data);
            return code;
        }

        pbfont->FontBBox.p.x = ((double)BBox[0] / units[0]);
        pbfont->FontBBox.p.y = ((double)BBox[1] / units[1]);
        pbfont->FontBBox.q.x = ((double)BBox[2] / units[0]);
        pbfont->FontBBox.q.y = ((double)BBox[3] / units[1]);

        bbox_set = 1;
    }

    if (xlatmap != ((void*)0) && pbfont->FAPI_font_data != ((void*)0)) {
        if ((code =
             gs_fapi_renderer_retcode(mem, I,
                                      I->get_decodingID(I, &I->ff,
                                                        decodingID))) < 0) {
            gs_fapi_release_typeface(I, &pbfont->FAPI_font_data);
            return code;
        }
    }


    if (font_file_path == ((void*)0) && I->ff.is_type1 && I->ff.is_cid) {
        gs_font_cid0 *pfcid = (gs_font_cid0 *) pbfont;
        gs_font_type1 **FDArray = pfcid->cidata.FDArray;
        int i, n = pfcid->cidata.FDArray_size;

        I->ff.is_type1 = ((bool)1);
        I->ff.is_vertical = ((bool)0);
        I->ff.memory = mem;
        I->ff.client_ctx_p = I->client_ctx_p;
        for (i = 0; i < n; i++) {
            gs_font_type1 *pbfont1 = FDArray[i];
            int BBox_temp[4];
            int units_temp[2];

            pbfont1->FontBBox = pbfont->FontBBox;

            I->ff.client_font_data = pbfont1;
            pbfont1->FAPI = pbfont->FAPI;
            I->ff.client_font_data2 = pbfont1;
            I->ff.server_font_data = pbfont1->FAPI_font_data;
            I->ff.is_cid = ((bool)1);
            I->ff.is_outline_font = pbfont1->PaintType != 0;
            if (!I->ff.is_mtx_skipped)
                I->ff.is_mtx_skipped = (gs_fapi_get_metrics_count(&I->ff) != 0);
            I->ff.subfont = 0;
            if ((code =
                 gs_fapi_renderer_retcode(mem, I,
                                          I->get_scaled_font(I, &I->ff,
                                                             (const
                                                              gs_fapi_font_scale
                                                              *)&font_scale,
                                                             ((void*)0), i))) < 0) {
                break;
            }

            pbfont1->FAPI_font_data = I->ff.server_font_data;

            if ((code =
                 gs_fapi_renderer_retcode(mem, I,
                                          I->get_font_bbox(I, &I->ff,
                                                           BBox_temp, units_temp))) < 0) {
                break;
            }
        }
        if (i == n) {
            code =
                gs_fapi_renderer_retcode(mem, I,
                                         I->get_scaled_font(I, &I->ff,
                                                            (const
                                                             gs_fapi_font_scale
                                                             *)&font_scale,
                                                            ((void*)0),
                                                            gs_fapi_toplevel_complete));
            if (code >= 0)
                return bbox_set;
        }

        for (i = 0; i < n; i++) {
            gs_font_type1 *pbfont1 = FDArray[i];

            if (pbfont1->FAPI_font_data != ((void*)0))
                gs_fapi_release_typeface(I, &pbfont1->FAPI_font_data);
        }

        if (pbfont->FAPI_font_data != ((void*)0)) {
            gs_fapi_release_typeface(I, &pbfont->FAPI_font_data);
        }
        return ((-10));
    }




    code = gs_fapi_renderer_retcode(mem, I, I->get_scaled_font(I, &I->ff,
                                                               (const
                                                                gs_fapi_font_scale
                                                                *)&font_scale,
                                                               xlatmap,
                                                               gs_fapi_toplevel_complete));
    if (code < 0) {
        gs_fapi_release_typeface(I, &pbfont->FAPI_font_data);
        return code;
    }
    code =
        gs_notify_register(&pbfont->notify_list, notify_remove_font, pbfont);
    if (code < 0) {
        (emprintf_program_ident(mem, gs_program_name(), gs_revision_number()), errprintf(mem, "Ignoring gs_notify_register() failure for FAPI font....."));

    }

    return bbox_set;
}


static int
outline_char(gs_memory_t *mem, gs_fapi_server *I, int import_shift_v,
             gs_show_enum *penum_s, struct gx_path_s *path, bool close_path)
{
    gs_fapi_path path_interface = path_interface_stub;
    gs_fapi_outline_handler olh;
    int code;
    gs_state *pgs;

    extern const gs_memory_struct_type_t st_gs_show_enum;
    extern const gs_memory_struct_type_t st_gs_state;

    if ((*(penum_s->memory)->procs.object_type)(penum_s->memory, penum_s) == &st_gs_show_enum) {
        pgs = penum_s->pgs;
    }
    else {
        if ((*(penum_s->memory)->procs.object_type)(penum_s->memory, penum_s->pis) == &st_gs_state) {
            pgs = (gs_state *) penum_s->pis;
        }
        else

            return ((-21));
    }
    olh.path = path;
    olh.x0 = pgs->ctm.tx_fixed;
    olh.y0 = pgs->ctm.ty_fixed;
    olh.close_path = close_path;
    olh.need_close = ((bool)0);
    path_interface.olh = &olh;
    path_interface.shift = import_shift_v;
    if ((code =
         gs_fapi_renderer_retcode(mem, I,
                                  I->get_char_outline(I,
                                                      &path_interface))) < 0
        || path_interface.gs_error != 0) {
        if (path_interface.gs_error != 0)
            return path_interface.gs_error;
        else
            return code;
    }
    if (olh.need_close && olh.close_path)
        if ((code = add_closepath(&path_interface)) < 0)
            return code;
    return 0;
}

static void
compute_em_scale(const gs_font_base *pbfont, gs_fapi_metrics *metrics,
                 double FontMatrix_div, double *em_scale_x,
                 double *em_scale_y)
{
    gs_matrix mat;
    gs_matrix *m = &pbfont->base->orig_FontMatrix;
    int rounding_x, rounding_y;
    double sx, sy;
    gs_fapi_server *I = pbfont->FAPI;

    m = &mat;

    I->get_fontmatrix(I, m);






    if (m->xx == 0 && m->xy == 0 && m->yx == 0 && m->yy == 0)
        m = &pbfont->base->FontMatrix;
    sx = sqrt((double)(m->xx)*(m->xx)+(double)(m->xy)*(m->xy)) * metrics->em_x / FontMatrix_div;
    sy = sqrt((double)(m->yx)*(m->yx)+(double)(m->yy)*(m->yy)) * metrics->em_y / FontMatrix_div;
    rounding_x = (int)(0x00800000 / sx);
    rounding_y = (int)(0x00800000 / sy);
    *em_scale_x = (int)(sx * rounding_x + 0.5) / (double)rounding_x;
    *em_scale_y = (int)(sy * rounding_y + 0.5) / (double)rounding_y;
}

static int
fapi_copy_mono(gx_device *dev1, gs_fapi_raster *rast, int dx, int dy)
{
    int line_step = ((uint)((((rast->width) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3)), code;

    if (rast->line_step >= line_step) {
        return ((dev1)->procs.copy_mono) (dev1, rast->p, 0, rast->line_step,
                                          0, dx, dy, rast->width,
                                          rast->height, 0, 1);
    }
    else {
        byte *p = (*(dev1->memory)->procs.alloc_byte_array)(dev1->memory, rast->height, line_step, "fapi_copy_mono");

        byte *q = p, *r = rast->p, *pe;

        if (p == ((void*)0))
            return ((-25));
        pe = p + rast->height * line_step;
        for (; q < pe; q += line_step, r += rast->line_step)
            memcpy(q, r, rast->line_step);
        code =
            ((dev1)->procs.copy_mono) (dev1, p, 0, line_step, 0, dx, dy,
                                       rast->width, rast->height, 0, 1);
        ((dev1->memory)->procs.free_object(dev1->memory, p, "fapi_copy_mono"));
        return code;
    }
}
# 636 "./base/gxfapi.c"
static byte *
alloc_bold_lines(gs_memory_t *mem, uint width, int bold, client_name_t cname)
{ return (*(mem)->procs.alloc_byte_array)(mem, 2 + bold, ((uint)((((width + bold) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3)), cname);

}


static void
bits_merge(byte *dest, const byte *src, uint nbytes)
{ long *dp = (long *)dest;
        const long *sp = (const long *)src;
        uint n = (nbytes + sizeof(long) - 1) >> 3;

        for ( ; n >= 4; sp += 4, dp += 4, n -= 4 )
          dp[0] |= sp[0], dp[1] |= sp[1], dp[2] |= sp[2], dp[3] |= sp[3];
        for ( ; n; ++sp, ++dp, --n )
          *dp |= *sp;
}



static void
bits_smear_horizontally(byte *dest, const byte *src, uint width,
  uint smear_width)
{ uint bits_on = 0;
        const byte *sp = src;
        uint sbyte = *sp;
        byte *dp = dest;
        uint dbyte = sbyte;
        uint sdmask = 0x80;
        const byte *zp = src;
        uint zmask = 0x80;
        uint i = 0;


        { uint stop = (((smear_width) < (width)) ? (smear_width) : (width));

          for ( ; i < stop; ++i ) {
            if ( sbyte & sdmask )
              bits_on++;
            else if ( bits_on )
              dbyte |= sdmask;
            if ( (sdmask >>= 1) == 0 )
              sdmask = 0x80, *dp++ = dbyte, dbyte = sbyte = *++sp;
          }
        }


        { for ( ; i < width; ++i ) {
            if ( sbyte & sdmask )
              bits_on++;
            else if ( bits_on )
              dbyte |= sdmask;
            if ( *zp & zmask )
              --bits_on;
            if ( (sdmask >>= 1) == 0 ) {
              sdmask = 0x80;
              *dp++ = dbyte;
on: switch ( (dbyte = sbyte = *++sp) ) {
                case 0xff:
                  if ( width - i <= 8 )
                    break;
                  *dp++ = 0xff;
                  bits_on += 8 -
                    byte_count_bits[(*zp & (zmask - 1)) + (zp[1] & -zmask)];
                  ++zp;
                  i += 8;
                  goto on;
                case 0:
                  if ( bits_on || width - i <= 8 )
                    break;
                  *dp++ = 0;


                  ++zp;
                  i += 8;
                  goto on;
                default:
                  ;
              }
            }
            if ( (zmask >>= 1) == 0 )
              zmask = 0x80, ++zp;
          }
        }



        { uint stop = width + smear_width;

          for ( ; i < stop; ++i ) {
            if ( bits_on )
              dbyte |= sdmask;
            if ( (sdmask >>= 1) == 0 )
              sdmask = 0x80, *dp++ = dbyte, dbyte = 0;
            if ( *zp & zmask )
              --bits_on;
            if ( (zmask >>= 1) == 0 )
              zmask = 0x80, ++zp;
          }
        }

        if ( sdmask != 0x80 )
          *dp = dbyte;
}

static const int frac_pixel_shift = 4;





static int
fapi_image_uncached_glyph(gs_font *pfont, gs_state *pgs, gs_show_enum *penum,
                          gs_fapi_raster *rast, const int import_shift_v)
{
    gx_device *dev = penum->dev;
    gs_state *penum_pgs = (gs_state *) penum->pis;
    int code;
    const gx_clip_path *pcpath = pgs->clip_path;
    const gx_drawing_color *pdcolor = penum->pdcolor;
    int rast_orig_x = rast->orig_x;
    int rast_orig_y = -rast->orig_y;
    gs_font_base *pbfont = (gs_font_base *)pfont;
    gs_fapi_server *I = pbfont->FAPI;

    extern const gs_memory_struct_type_t st_gs_show_enum;

    byte *r = rast->p;
    byte *src, *dst;
    int h, padbytes, cpbytes, dstr = ((uint)((((rast->width) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
    int sstr = rast->line_step;




    if ((((((penum_pgs)->color[0].dev_color))->type == (&gx_dc_type_data_pure)) && ((((penum_pgs)->log_op) & (0x200 | (rop3_1 - 0xcc))) == (0xf0 & ~0xcc))) && I->ff.embolden == 0.0) {
        if (dstr != sstr) {
# 786 "./base/gxfapi.c"
            r = (*(penum->memory)->procs.alloc_bytes)(penum->memory, dstr * rast->height, "fapi_finish_render_aux");

            if (!r) {
                return ((-25));
            }

            cpbytes = sstr < dstr ? sstr : dstr;
            padbytes = dstr - cpbytes;
            h = rast->height;
            src = rast->p;
            dst = r;
            if (padbytes > 0) {
                while (h-- > 0) {
                    memcpy(dst, src, cpbytes);
                    memset(dst + cpbytes, 0, padbytes);
                    src += sstr;
                    dst += dstr;
                }
            }
            else {
                while (h-- > 0) {
                    memcpy(dst, src, cpbytes);
                    src += sstr;
                    dst += dstr;
                }
            }
        }

        if ((*(penum->memory)->procs.object_type)(penum->memory, penum) == &st_gs_show_enum) {
            code = gx_image_fill_masked(dev, r, 0, dstr, 0,
                                        (int)(penum_pgs->ctm.tx +
                                              (double)rast_orig_x /
                                              (1 << frac_pixel_shift) +
                                              penum->fapi_glyph_shift.x +
                                              0.5),
                                        (int)(penum_pgs->ctm.ty +
                                              (double)rast_orig_y /
                                              (1 << frac_pixel_shift) +
                                              penum->fapi_glyph_shift.y +
                                              0.5), rast->width, rast->height,
                                        pdcolor, 1, rop3_default, pcpath);
        }
        else {
            code = gx_image_fill_masked(dev, r, 0, dstr, 0,
                                        (int)(penum_pgs->ctm.tx +
                                              (double)rast_orig_x /
                                              (1 << frac_pixel_shift) + 0.5),
                                        (int)(penum_pgs->ctm.ty +
                                              (double)rast_orig_y /
                                              (1 << frac_pixel_shift) + 0.5),
                                        rast->width, rast->height, pdcolor, 1,
                                        rop3_default, pcpath);
        }
        if (rast->p != r) {
            ((penum->memory)->procs.free_object(penum->memory, r, "fapi_finish_render_aux"));
        }
    }
    else {
        gs_memory_t *mem = penum->memory->non_gc_memory;
        gs_image_enum *pie;
        gs_image_t image;
        int iy, nbytes;
        uint used;
        int code1;
        int x, y, w, h;
        uint bold = 0;
        byte *bold_lines = ((void*)0);
        byte *line = ((void*)0);
        int ascent = 0;

        pie = gs_image_enum_alloc(mem, "image_char(image_enum)");
        if (!pie) {
            return ((-25));
        }

        x = (int)(penum_pgs->ctm.tx +
                  (double)rast_orig_x / (1 << frac_pixel_shift) + 0.5);
        y = (int)(penum_pgs->ctm.ty +
                  (double)rast_orig_y / (1 << frac_pixel_shift) + 0.5);
        w = rast->width;
        h = rast->height;
        if (I->ff.embolden != 0.0) {
            bold = (uint)(2 * h * I->ff.embolden + 0.5);
            ascent += bold;
            bold_lines = alloc_bold_lines(pgs->memory, w, bold, "fapi_image_uncached_glyph(bold_line)");
            if (bold_lines == ((void*)0)) {
                code = ((-25));
                return(code);
            }
            line = (*(pgs->memory)->procs.alloc_byte_array)(pgs->memory, 1, ((uint)((((w + bold) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3)) + 1, "fapi_copy_mono");
            if (line == 0) {
                ((pgs->memory)->procs.free_object(pgs->memory, bold_lines, "fapi_image_uncached_glyph(bold_lines)"));
                code = ((-25));
                return(code);
            }
        }



        gs_image_t_init_mask_adjust(&image, ((bool)1), ((bool)1));
        gs_make_translation((double) - x, (double) (- y + ascent), &image.ImageMatrix);
        gs_matrix_multiply(&(*(const gs_matrix *)&(penum_pgs)->ctm), &image.ImageMatrix, &image.ImageMatrix);
        image.Width = w + bold;
        image.Height = h + bold;
        image.adjust = ((bool)0);
        code = gs_image_init(pie, &image, ((bool)0), penum_pgs);
        nbytes = (rast->width + 7) >> 3;

        switch (code) {
            case 1:
                code = 0;
            default:
                break;
            case 0:
                if (bold == 0) {
                    for (iy = 0; iy < h && code >= 0; iy++, r += sstr) {
                        code = gs_image_next(pie, r, nbytes, &used);
                    }
                }
                else {
                    uint dest_raster = ((uint)((((image.Width) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
                    uint dest_bytes = (image.Width + 7) >> 3;
                    int n1 = bold + 1;


                    for ( y = 0; y < image.Height; y++ ) {
                        int y0 = (y < bold ? 0 : y - bold);
                        int y1 = (((y + 1) < (rast->height)) ? (y + 1) : (rast->height));
                        int kmask;
                        bool first = ((bool)1);

                        if ( y < rast->height ) {
                            memcpy(line, r + y * rast->line_step, rast->line_step);
                            memset(line + rast->line_step, 0x00, (dest_raster + 1) - rast->line_step);

                            bits_smear_horizontally((bold_lines + ((y) % n1 + 1) * dest_raster), line, rast->width, bold);

                            kmask = 1;

                            for ( ; (y & kmask) == kmask && y - kmask >= y0;
                                  kmask = (kmask << 1) + 1) {

                                bits_merge((bold_lines + ((y - kmask) % n1 + 1) * dest_raster), (bold_lines + ((y - (kmask >> 1)) % n1 + 1) * dest_raster), dest_bytes);
                            }
                        }
# 943 "./base/gxfapi.c"
                        first = ((bool)1);

                        for ( iy = y1 - 1; iy >= y0; --iy ) {
                          kmask = 1;

                          while ( (iy & kmask) == kmask && iy - kmask >= y0 )
                            iy -= kmask, kmask <<= 1;
                          if ( first ) {
                            memcpy(bold_lines, (bold_lines + ((iy) % n1 + 1) * dest_raster), dest_bytes);
                            first = ((bool)0);
                          }
                          else
                            bits_merge(bold_lines, (bold_lines + ((iy) % n1 + 1) * dest_raster), dest_bytes);
                        }
                        code = gs_image_next(pie, bold_lines, dest_bytes, &used);
                    }
                }

        }

        if (bold_lines)
            ((pgs->memory)->procs.free_object(pgs->memory, bold_lines, "fapi_image_uncached_glyph(bold_lines)"));

        if (line)
            ((pgs->memory)->procs.free_object(pgs->memory, line, "fapi_image_uncached_glyph(line)"));

        code1 = gs_image_cleanup_and_free_enum(pie, penum_pgs);
        if (code >= 0 && code1 < 0)
            code = code1;
    }
    return (code);
}

int
gs_fapi_finish_render(gs_font *pfont, gs_state *pgs, gs_text_enum_t *penum, gs_fapi_server *I)
{
    gs_show_enum *penum_s = (gs_show_enum *) penum;
    gs_state *penum_pgs;
    gx_device *dev1;
    const int import_shift_v = 8 - 32;
    gs_fapi_raster rast;
    int code;
    gs_memory_t *mem = pfont->memory;
    gs_font_base *pbfont = (gs_font_base *)pfont;

    extern const gs_memory_struct_type_t st_gs_show_enum;
    extern const gs_memory_struct_type_t st_gs_state;

    if (penum == ((void*)0)) {
        return ((-21));
    }


    if ((*(penum->memory)->procs.object_type)(penum->memory, penum->pis) != &st_gs_state) {



        if ((*(penum->memory)->procs.object_type)(penum->memory, penum) == &st_gs_show_enum) {
            penum_pgs = penum_s->pgs;
        }
        else

            return ((-21));
    }
    else
        penum_pgs = (gs_state *) penum->pis;

    dev1 = ((penum_pgs)->device);





    if (pgs->in_charpath && !(((penum)->text.operation & (0x00200)) != 0)) {
        if ((code =
             outline_char(mem, I, import_shift_v, penum_s, penum_pgs->path,
                          !pbfont->PaintType)) < 0) {
            return code;
        }

        if ((code =
             gx_path_add_char_path(penum_pgs->show_gstate->path,
                                   penum_pgs->path,
                                   penum_pgs->in_charpath)) < 0) {
            return code;
        }

    }
    else {
        int code;

        memset(&rast, 0x00, sizeof(rast));

        code = I->get_char_raster(I, &rast);

        if (!(((penum)->text.operation & (0x00200)) != 0) && I->use_outline) {

            gs_imager_state *pis = (gs_imager_state *) penum_pgs->show_gstate;
            gs_point pt;

            if ((code = gs_currentpoint(penum_pgs, &pt)) < 0)
                return code;
            if ((code =
                 outline_char(mem, I, import_shift_v, penum_s,
                              penum_pgs->path, !pbfont->PaintType)) < 0)
                return code;
            if ((code =
                 gs_imager_setflat((gs_imager_state *) penum_pgs,
                                   gs_char_flatness(pis, 1.0))) < 0)
                return code;
            if (pbfont->PaintType) {
                float lw = gs_currentlinewidth(penum_pgs);

                gs_setlinewidth(penum_pgs, pbfont->StrokeWidth);
                code = gs_stroke(penum_pgs);
                gs_setlinewidth(penum_pgs, lw);
                if (code < 0)
                    return code;
            }
            else {
                gs_in_cache_device_t in_cachedevice =
                    penum_pgs->in_cachedevice;

                penum_pgs->in_cachedevice = CACHE_DEVICE_NOT_CACHING;

                penum_pgs->fill_adjust.x = penum_pgs->fill_adjust.y = 0;

                if ((code = gs_fill(penum_pgs)) < 0)
                    return code;

                penum_pgs->in_cachedevice = in_cachedevice;
            }
            if ((code = gs_moveto(penum_pgs, pt.x, pt.y)) < 0)
                return code;
        }
        else {
            int rast_orig_x = rast.orig_x;
            int rast_orig_y = -rast.orig_y;

            if (penum_pgs->in_cachedevice == CACHE_DEVICE_CACHING) {






                if (rast.width != 0) {
                    int shift_rd = 8 - frac_pixel_shift;
                    int rounding = 1 << (frac_pixel_shift - 1);
                    int dx =
                        (((penum_pgs-> ctm.tx_fixed >> shift_rd) + rast_orig_x + rounding) < 0 ? ~(~((penum_pgs-> ctm.tx_fixed >> shift_rd) + rast_orig_x + rounding) >> (frac_pixel_shift)) : ((penum_pgs-> ctm.tx_fixed >> shift_rd) + rast_orig_x + rounding) >> (frac_pixel_shift));



                    int dy =
                        (((penum_pgs-> ctm.ty_fixed >> shift_rd) + rast_orig_y + rounding) < 0 ? ~(~((penum_pgs-> ctm.ty_fixed >> shift_rd) + rast_orig_y + rounding) >> (frac_pixel_shift)) : ((penum_pgs-> ctm.ty_fixed >> shift_rd) + rast_orig_y + rounding) >> (frac_pixel_shift));




                    if (dx + rast.left_indent < 0
                        || dx + rast.left_indent + rast.black_width >
                        dev1->width) {
# 1115 "./base/gxfapi.c"
                        if (dx + rast.left_indent < 0)
                            dx -= dx + rast.left_indent;
                    }
                    if (dy + rast.top_indent < 0
                        || dy + rast.top_indent + rast.black_height >
                        dev1->height) {
# 1130 "./base/gxfapi.c"
                        if (dy + rast.top_indent < 0)
                            dy -= dy + rast.top_indent;
                    }
                    if ((code = fapi_copy_mono(dev1, &rast, dx, dy)) < 0)
                        return code;

                    if ((*(penum->memory)->procs.object_type)(penum->memory, penum) ==
                        &st_gs_show_enum) {
                        penum_s->cc->offset.x +=
                            ((fixed)((penum_s->fapi_glyph_shift.x)*(float)(1<<8)));
                        penum_s->cc->offset.y +=
                            ((fixed)((penum_s->fapi_glyph_shift.y)*(float)(1<<8)));
                    }
                }
            }
            else if (!(((penum)->text.operation & (0x00200)) != 0)) {
                if ((code =
                     fapi_image_uncached_glyph(pfont, pgs, penum_s, &rast,
                                               import_shift_v)) < 0)
                    return code;
            }
        }
    }

    return 0;
}
# 1164 "./base/gxfapi.c"
int
gs_fapi_do_char(gs_font *pfont, gs_state *pgs, gs_text_enum_t *penum, char *font_file_path,
                bool bBuildGlyph, gs_string *charstring, gs_string *glyphname,
                gs_char chr, gs_glyph index, int subfont)
{
    gs_show_enum *penum_s = (gs_show_enum *) penum;
    gx_device *dev = ((pgs)->device);






    gs_fapi_char_ref cr =
        { 0, {0}, 0, ((bool)0), ((void*)0), 0, 0, 0, 0, 0, gs_fapi_metrics_notdef };
    gs_font_base *pbfont = (gs_font_base *)pfont;
    const gs_matrix *ctm = &(*(const gs_matrix *)&(pgs)->ctm);
    int scale;
    gs_fapi_metrics metrics;
    gs_fapi_server *I = pbfont->FAPI;

    gs_string enc_char_name_string;
    bool bCID = (pbfont->FontType == ft_CID_encrypted || pbfont->FontType == ft_CID_user_defined || pbfont->FontType == ft_CID_TrueType || charstring != ((void*)0));
    bool bIsType1GlyphData = pbfont->FontType == ft_encrypted || pbfont->FontType == ft_encrypted2 || pbfont->FontType == ft_CID_encrypted;
    gs_log2_scale_point log2_scale = { 0, 0 };
    int alpha_bits = (*((dev)->procs.get_alpha_bits)) (dev, go_text);
    double FontMatrix_div = 1;
    bool bVertical = (gs_rootfont(pgs)->WMode != 0), bVertical0 = bVertical;
    double *sbwp, sbw[4] = { 0, 0, 0, 0 };
    double em_scale_x, em_scale_y;
    gs_rect char_bbox;
    int code;
    bool imagenow = ((bool)0);
    bool align_to_pixels = gs_currentaligntopixels(pbfont->dir);
    gs_fapi_descendant_code fdc;
    gs_memory_t *mem = pfont->memory;
    enum
    {
        SBW_DONE,
        SBW_SCALE,
        SBW_FROM_RENDERER
    } sbw_state = SBW_SCALE;

    if ( index == ((gs_glyph)0x7fffffff) )
        return 0;

    I->use_outline = ((bool)0);

    if (penum == 0)
        return ((-21));

    I->use_outline =
        produce_outline_char(penum_s, pbfont, alpha_bits, &log2_scale);

    if (I->use_outline) {
        I->max_bitmap = 0;
    }
    else {





        I->max_bitmap =
            pbfont->dir->ccache.upper + (pbfont->dir->ccache.upper >> 1) <
            ((uint)80000) ? pbfont->dir->ccache.upper +
            (pbfont->dir->ccache.upper >> 1) : ((uint)80000);
    }

    I->grid_fit = pbfont->dir->grid_fit_tt;


    if (!(((penum)->text.operation & (0x00200)) != 0) && !I->use_outline) {
        gs_currentcharmatrix(pgs, ((void*)0), 1);
        penum_s->fapi_log2_scale = log2_scale;
    }
    else {
        log2_scale.x = 0;
        log2_scale.y = 0;
    }







    I->ff.memory = pbfont->memory;
    I->ff.subfont = subfont;
    I->ff.font_file_path = font_file_path;
    I->ff.client_font_data = pbfont;
    I->ff.client_font_data2 = pbfont;
    I->ff.server_font_data = pbfont->FAPI_font_data;
    I->ff.is_type1 = bIsType1GlyphData;
    I->ff.is_cid = bCID;
    I->ff.is_outline_font = pbfont->PaintType != 0;
    I->ff.metrics_only = fapi_gs_char_show_width_only(penum);

    if (!I->ff.is_mtx_skipped)
        I->ff.is_mtx_skipped = (gs_fapi_get_metrics_count(&I->ff) != 0);

    I->ff.is_vertical = bVertical;
    I->ff.client_ctx_p = I->client_ctx_p;

    scale = 1 << I->frac_shift;
  retry_oversampling:
    if (I->face.font_id != pbfont->id ||
        !((&I->face.ctm)->xx == ctm->xx && (&I->face.ctm)->xy == ctm->xy && (&I->face.ctm)->yx == ctm->yx && (&I->face.ctm)->yy == ctm->yy) ||
        I->face.log2_scale.x != log2_scale.x ||
        I->face.log2_scale.y != log2_scale.y ||
        I->face.align_to_pixels != align_to_pixels ||
        I->face.HWResolution[0] != dev->HWResolution[0] ||
        I->face.HWResolution[1] != dev->HWResolution[1]
        ) {
        gs_fapi_font_scale font_scale = { {1, 0, 0, 1, 0, 0}
        , {0, 0}
        , {1, 1}
        , ((bool)1)
        };
        gs_matrix scale_mat, scale_ctm;

        I->face.font_id = pbfont->id;
        I->face.ctm = *ctm;
        I->face.log2_scale = log2_scale;
        I->face.align_to_pixels = align_to_pixels;
        I->face.HWResolution[0] = dev->HWResolution[0];
        I->face.HWResolution[1] = dev->HWResolution[1];

        font_scale.subpixels[0] = 1 << log2_scale.x;
        font_scale.subpixels[1] = 1 << log2_scale.y;
        font_scale.align_to_pixels = align_to_pixels;





        memset(&scale_ctm, 0x00, sizeof(gs_matrix));
        scale_ctm.xx = dev->HWResolution[0] / 72;
        scale_ctm.yy = dev->HWResolution[1] / 72;

        code = gs_matrix_invert((const gs_matrix *)&scale_ctm, &scale_ctm);

        code = gs_matrix_multiply(ctm, &scale_ctm, &scale_mat);

        code = I->get_fontmatrix(I, &scale_ctm);
        code = gs_matrix_invert((const gs_matrix *)&scale_ctm, &scale_ctm);
        code = gs_matrix_multiply(&scale_mat, &scale_ctm, &scale_mat);

        font_scale.matrix[0] =
            (fracint) (scale_mat.xx * FontMatrix_div * scale + 0.5);
        font_scale.matrix[1] =
            -(fracint) (scale_mat.xy * FontMatrix_div * scale + 0.5);
        font_scale.matrix[2] =
            (fracint) (scale_mat.yx * FontMatrix_div * scale + 0.5);
        font_scale.matrix[3] =
            -(fracint) (scale_mat.yy * FontMatrix_div * scale + 0.5);
        font_scale.matrix[4] =
            (fracint) (scale_mat.tx * FontMatrix_div * scale + 0.5);
        font_scale.matrix[5] =
            (fracint) (scale_mat.ty * FontMatrix_div * scale + 0.5);


        font_scale.HWResolution[0] =
            (fracint) ((double)dev->HWResolution[0] *
                       font_scale.subpixels[0] * scale);
        font_scale.HWResolution[1] =
            (fracint) ((double)dev->HWResolution[1] *
                       font_scale.subpixels[1] * scale);


        if ((sqrt((double)((double)font_scale.matrix[0])*((double)font_scale.matrix[0])+(double)((double)font_scale.matrix[2])*((double)font_scale.matrix[2]))
             == 0.0
             || sqrt((double)((double)font_scale.matrix[1])*((double)font_scale.matrix[1])+(double)((double)font_scale.matrix[3])*((double)font_scale.matrix[3])) == 0.0)) {



            if (!font_scale.matrix[0])
                font_scale.matrix[0] = 1;
            if (!font_scale.matrix[3])
                font_scale.matrix[3] = 1;
        }

        if (!bCID
            || (pbfont->FontType != ft_encrypted
                && pbfont->FontType != ft_encrypted2)) {
            fdc = gs_fapi_toplevel_prepared;
        }
        else {
            fdc = gs_fapi_toplevel_prepared;
        }
        if ((code =
             gs_fapi_renderer_retcode(mem, I,
                                      I->get_scaled_font(I, &I->ff,
                                                         &font_scale, ((void*)0),
                                                         fdc))) < 0) {
            return code;
        }
    }

    cr.char_codes_count = 1;
    cr.char_codes[0] = (index == ((gs_glyph)0x7fffffff)) ? 0 : index;
    cr.client_char_code = chr;
    cr.is_glyph_index = ((bool)1);
    enc_char_name_string.data = ((void*)0);
    enc_char_name_string.size = 0;

    if (I->ff.get_glyphname_or_cid) {
        if ((code =
             I->ff.get_glyphname_or_cid(pbfont, charstring, glyphname, index,
                                        &enc_char_name_string, font_file_path,
                                        &cr, bCID)) < 0)
            return (code);
    }


    if (bCID && !bIsType1GlyphData) {
        gs_font_cid2 *pfcid = (gs_font_cid2 *) pbfont;
        int MetricsCount = pfcid->cidata.MetricsCount;

        if (MetricsCount > 0) {
            const byte *data_ptr;
            int l = I->ff.get_glyphdirectory_data(&(I->ff), cr.char_codes[0],
                                                  &data_ptr);

            if (MetricsCount == 2 && l >= 4) {
                if (!bVertical0) {
                    cr.sb_x = (int)(((((uint)((data_ptr + 2)[0]) << 8) + (data_ptr + 2)[1]) ^ 0x8000) - 0x8000) * scale;
                    cr.aw_x = (((uint)((data_ptr + 0)[0]) << 8) + (data_ptr + 0)[1]) * scale;
                    cr.metrics_type = gs_fapi_metrics_replace;
                }
            }
            else if (l >= 8) {
                cr.sb_y = (int)(((((uint)((data_ptr + 2)[0]) << 8) + (data_ptr + 2)[1]) ^ 0x8000) - 0x8000) * scale;
                cr.aw_y = (((uint)((data_ptr + 0)[0]) << 8) + (data_ptr + 0)[1]) * scale;
                cr.sb_x = (int)(((((uint)((data_ptr + 6)[0]) << 8) + (data_ptr + 6)[1]) ^ 0x8000) - 0x8000) * scale;
                cr.aw_x = (((uint)((data_ptr + 4)[0]) << 8) + (data_ptr + 4)[1]) * scale;
                cr.metrics_type = gs_fapi_metrics_replace;
            }
        }
    }
    if (cr.metrics_type != gs_fapi_metrics_replace && bVertical) {
        double pwv[4];

        code =
            I->ff.fapi_get_metrics(&I->ff, &enc_char_name_string, index, pwv,
                                   bVertical);
        if (code < 0)
            return code;
        if (code == 0 ) {
            if (bCID && (!bIsType1GlyphData && font_file_path)) {
                cr.sb_x = fapi_round(sbw[2] / 2 * scale);
                cr.sb_y = fapi_round(pbfont->FontBBox.q.y * scale);
                cr.aw_y = fapi_round(-pbfont->FontBBox.q.x * scale);
                cr.metrics_scale = (bIsType1GlyphData ? 1000 : 1);
                cr.metrics_type = gs_fapi_metrics_replace;
                sbw[0] = sbw[2] / 2;
                sbw[1] = pbfont->FontBBox.q.y;
                sbw[2] = 0;
                sbw[3] = -pbfont->FontBBox.q.x;
                sbw_state = SBW_DONE;
            }
            else {
                bVertical = ((bool)0);
            }
        }
        else {
            cr.sb_x = fapi_round(pwv[2] * scale);
            cr.sb_y = fapi_round(pwv[3] * scale);
            cr.aw_x = fapi_round(pwv[0] * scale);
            cr.aw_y = fapi_round(pwv[1] * scale);
            cr.metrics_scale = (bIsType1GlyphData ? 1000 : 1);
            cr.metrics_type = (code == 2 ? gs_fapi_metrics_replace
                               : gs_fapi_metrics_replace_width);
            sbw[0] = pwv[2];
            sbw[1] = pwv[3];
            sbw[2] = pwv[0];
            sbw[3] = pwv[1];
            sbw_state = SBW_DONE;
        }
    }
    if (cr.metrics_type == gs_fapi_metrics_notdef && !bVertical) {
        code =
            I->ff.fapi_get_metrics(&I->ff, &enc_char_name_string, index, sbw,
                                   bVertical);
        if (code < 0)
            return code;
        if (code == 0 ) {
            sbw_state = SBW_FROM_RENDERER;
            if (pbfont->FontType == 2) {
                gs_font_type1 *pfont1 = (gs_font_type1 *) pbfont;

                cr.aw_x =
                    export_shift(pfont1->data.defaultWidthX,
                                 8 - I->frac_shift);
                cr.metrics_scale = 1000;
                cr.metrics_type = gs_fapi_metrics_add;
            }
        }
        else {
            cr.sb_x = fapi_round(sbw[0] * scale);
            cr.sb_y = fapi_round(sbw[1] * scale);
            cr.aw_x = fapi_round(sbw[2] * scale);
            cr.aw_y = fapi_round(sbw[3] * scale);
            cr.metrics_scale = (bIsType1GlyphData ? 1000 : 1);
            cr.metrics_type = (code == 2 ? gs_fapi_metrics_replace
                               : gs_fapi_metrics_replace_width);
            sbw_state = SBW_DONE;
        }
    }
    memset(&metrics, 0x00, sizeof(metrics));

    if (I->ff.metrics_only) {
        code = I->get_char_outline_metrics(I, &I->ff, &cr, &metrics);



        if (code == (-25) && I->use_outline == ((bool)0)) {
            I->max_bitmap = 0;
            I->use_outline = ((bool)1);
            goto retry_oversampling;
        }

    }
    else if (I->use_outline) {

        code = I->get_char_outline_metrics(I, &I->ff, &cr, &metrics);
    }
    else {
        code = I->get_char_raster_metrics(I, &I->ff, &cr, &metrics);



        if (code == (-25)) {
            I->use_outline = ((bool)1);
            goto retry_oversampling;
        }
        if (code == (-13)) {
            if (log2_scale.x > 0 || log2_scale.y > 0) {
                penum_s->fapi_log2_scale.x = log2_scale.x =
                    penum_s->fapi_log2_scale.y = log2_scale.y = 0;
                I->release_char_data(I);
                goto retry_oversampling;
            }
            if ((code =
                 gs_fapi_renderer_retcode(mem, I,
                                          I->get_char_outline_metrics(I,
                                                                      &I->ff,
                                                                      &cr,
                                                                      &metrics)))
                < 0)
                return code;
        }
    }





    if (code > 0) {
        return ((-28));
    }

    if ((code = gs_fapi_renderer_retcode(mem, I, code)) < 0)
        return code;

    compute_em_scale(pbfont, &metrics, FontMatrix_div, &em_scale_x,
                     &em_scale_y);
    char_bbox.p.x = metrics.bbox_x0 / em_scale_x;
    char_bbox.p.y = metrics.bbox_y0 / em_scale_y;
    char_bbox.q.x = metrics.bbox_x1 / em_scale_x;
    char_bbox.q.y = metrics.bbox_y1 / em_scale_y;




    if (pbfont->FontType != ft_MicroType && !bCID
        && pbfont->FontBBox.q.x > pbfont->FontBBox.p.x
        && pbfont->FontBBox.q.y > pbfont->FontBBox.p.y) {
        char_bbox.p.x = (((char_bbox.p.x) < (pbfont->FontBBox.p.x)) ? (char_bbox.p.x) : (pbfont->FontBBox.p.x));
        char_bbox.p.y = (((char_bbox.p.y) < (pbfont->FontBBox.p.y)) ? (char_bbox.p.y) : (pbfont->FontBBox.p.y));
        char_bbox.q.x = (((char_bbox.q.x) > (pbfont->FontBBox.q.x)) ? (char_bbox.q.x) : (pbfont->FontBBox.q.x));
        char_bbox.q.y = (((char_bbox.q.y) > (pbfont->FontBBox.q.y)) ? (char_bbox.q.y) : (pbfont->FontBBox.q.y));
    }

    if (pbfont->PaintType != 0) {
        float w = pbfont->StrokeWidth / 2;

        char_bbox.p.x -= w;
        char_bbox.p.y -= w;
        char_bbox.q.x += w;
        char_bbox.q.y += w;
    }
    penum_s->fapi_glyph_shift.x = penum_s->fapi_glyph_shift.y = 0;
    if (sbw_state == SBW_FROM_RENDERER) {
        int can_replace_metrics;

        if ((code =
             gs_fapi_renderer_retcode(mem, I,
                                      I->can_replace_metrics(I, &I->ff, &cr,
                                                             &can_replace_metrics)))
            < 0)
            return code;

        sbw[2] = metrics.escapement / em_scale_x;
        sbw[3] = metrics.v_escapement / em_scale_y;
        if (pbfont->FontType == 2 && !can_replace_metrics) {
            gs_font_type1 *pfont1 = (gs_font_type1 *) pbfont;

            sbw[2] += ((pfont1->data.nominalWidthX)*(1.0/(1<<8)));
        }
    }
    else if (sbw_state == SBW_SCALE) {
        sbw[0] = (double)cr.sb_x / scale / em_scale_x;
        sbw[1] = (double)cr.sb_y / scale / em_scale_y;
        sbw[2] = (double)cr.aw_x / scale / em_scale_x;
        sbw[3] = (double)cr.aw_y / scale / em_scale_y;
    }


    if (cr.metrics_type == gs_fapi_metrics_replace) {




        int can_replace_metrics;

        if ((code =
             gs_fapi_renderer_retcode(mem, I,
                                      I->can_replace_metrics(I, &I->ff, &cr,
                                                             &can_replace_metrics)))
            < 0)
            return code;
        if (!can_replace_metrics) {






            char_bbox.q.x -= char_bbox.p.x;
            char_bbox.p.x = 0;
            gs_distance_transform((metrics.bbox_x0 / em_scale_x - sbw[0]),
                                  0, ctm, &penum_s->fapi_glyph_shift);
            penum_s->fapi_glyph_shift.x *= 1 << log2_scale.x;
            penum_s->fapi_glyph_shift.y *= 1 << log2_scale.y;
        }
    }
# 1640 "./base/gxfapi.c"
    if (I->ff.metrics_only) {
        pgs->in_cachedevice = CACHE_DEVICE_NOT_CACHING;
    }

    if (pgs->in_cachedevice == CACHE_DEVICE_CACHING) {
        sbwp = sbw;
    }
    else {




        sbwp = ((void*)0);

        if (I->use_outline) {




            pgs->in_cachedevice = CACHE_DEVICE_NOT_CACHING;
        }
    }

    if (bCID) {
        code =
            I->ff.fapi_set_cache(penum, pbfont, &enc_char_name_string, index,
                                 sbw + 2, &char_bbox, sbwp, &imagenow);
    }
    else {
        code =
            I->ff.fapi_set_cache(penum, pbfont, &enc_char_name_string, -1,
                                 sbw + 2, &char_bbox, sbwp, &imagenow);
    }







    if (code >= 0 && imagenow == ((bool)1)) {
        code = gs_fapi_finish_render(pfont, pgs, penum, I);
        I->release_char_data(I);
    }

    if (code != 0) {
        if (code < 0) {

            I->release_char_data(I);
        }
        else {

        }
    }

    return code;
}

int
gs_fapi_get_font_info(gs_font *pfont, gs_fapi_font_info item, int index,
                      void *data, int *data_len)
{
    int code = 0;
    gs_font_base *pbfont = (gs_font_base *) pfont;
    gs_fapi_server *I = pbfont->FAPI;

    code = I->get_font_info(I, &I->ff, item, index, data, data_len);
    return (code);
}






int
gs_fapi_passfont(gs_font *pfont, int subfont, char *font_file_path,
                 gs_string *full_font_buf, char *fapi_request, char *xlatmap,
                 char **fapi_id, gs_fapi_get_server_param_callback get_server_param_cb)
{
    gs_font_base *pbfont;
    int code = 0;
    gs_fapi_server *I, **list;
    bool free_params = ((bool)0);
    gs_memory_t *mem = pfont->memory;
    const char *decodingID = ((void*)0);
    bool do_restart = ((bool)0);

    list = gs_fapi_get_server_list(mem);

    (*fapi_id) = ((void*)0);

    pbfont = (gs_font_base *) pfont;

    I = *list;

    if (fapi_request) {
        if (gs_debug_c('1'))
            errprintf_nomem("Requested FAPI plugin: %s ", fapi_request);

        while ((I = *list) != ((void*)0)
               && (__extension__ (__builtin_constant_p (strlen(fapi_request)) && ((__builtin_constant_p (I->ig.d->subtype) && strlen (I->ig.d->subtype) < ((size_t) (strlen(fapi_request)))) || (__builtin_constant_p (fapi_request) && strlen (fapi_request) < ((size_t) (strlen(fapi_request))))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (I->ig.d->subtype) && __builtin_constant_p (fapi_request) && (__s1_len = strlen (I->ig.d->subtype), __s2_len = strlen (fapi_request), (!((size_t)(const void *)((I->ig.d->subtype) + 1) - (size_t)(const void *)(I->ig.d->subtype) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((fapi_request) + 1) - (size_t)(const void *)(fapi_request) == 1) || __s2_len >= 4)) ? __builtin_strcmp (I->ig.d->subtype, fapi_request) : (__builtin_constant_p (I->ig.d->subtype) && ((size_t)(const void *)((I->ig.d->subtype) + 1) - (size_t)(const void *)(I->ig.d->subtype) == 1) && (__s1_len = strlen (I->ig.d->subtype), __s1_len < 4) ? (__builtin_constant_p (fapi_request) && ((size_t)(const void *)((fapi_request) + 1) - (size_t)(const void *)(fapi_request) == 1) ? __builtin_strcmp (I->ig.d->subtype, fapi_request) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (fapi_request); register int __result = (((const unsigned char *) (const char *) (I->ig.d->subtype))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (I->ig.d->subtype))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (I->ig.d->subtype))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (I->ig.d->subtype))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (fapi_request) && ((size_t)(const void *)((fapi_request) + 1) - (size_t)(const void *)(fapi_request) == 1) && (__s2_len = strlen (fapi_request), __s2_len < 4) ? (__builtin_constant_p (I->ig.d->subtype) && ((size_t)(const void *)((I->ig.d->subtype) + 1) - (size_t)(const void *)(I->ig.d->subtype) == 1) ? __builtin_strcmp (I->ig.d->subtype, fapi_request) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (I->ig.d->subtype); register int __result = __s1[0] - ((const unsigned char *) (const char *) (fapi_request))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (fapi_request))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (fapi_request))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (fapi_request))[3]); } } __result; }))) : __builtin_strcmp (I->ig.d->subtype, fapi_request)))); }) : strncmp (I->ig.d->subtype, fapi_request, strlen(fapi_request)))) != 0) {

            list++;
        }
        if (!I) {
            if (gs_debug_c('1'))
                errprintf_nomem("not found. Falling back to normal plugin search\n");
            list = (gs_fapi_server **) gs_fapi_get_server_list(mem);
            I = *list;
        }
        else {
            if (gs_debug_c('1'))
                errprintf_nomem("found.\n");
            do_restart = ((bool)1);
        }
    }

    while (I) {
        char *server_param = ((void*)0);
        int server_param_size = 0;

        (*get_server_param_cb) (I, (const char *)I->ig.d->subtype,
                                &server_param, &server_param_size);

        if (server_param == ((void*)0) && server_param_size > 0) {
            server_param =
                (char *)((mem->non_gc_memory)->procs.alloc_bytes_immovable(mem->non_gc_memory, server_param_size, "gs_fapi_passfont server params"));


            if (!server_param) {
                return ((-25));
            }
            free_params = ((bool)1);
            (*get_server_param_cb) (I, (const char *)I->ig.d->subtype,
                                    &server_param, &server_param_size);
        }

        if ((code =
             gs_fapi_renderer_retcode(mem, I,
                                      I->ensure_open(I, server_param,
                                                     server_param_size))) < 0)
            return code;

        if (free_params) {
            ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, server_param, "gs_fapi_passfont server params"));

        }

        pbfont->FAPI = I;
        code =
            gs_fapi_prepare_font(pfont, I, subfont, font_file_path,
                                 full_font_buf, xlatmap, &decodingID);
        if (code >= 0) {
            (*fapi_id) = (char *)I->ig.d->subtype;
            return 0;
        }


        pbfont->FAPI = ((void*)0);
        if (do_restart == ((bool)1)) {
            if (gs_debug_c('1'))
                errprintf_nomem("Requested FAPI plugin %s failed, searching for alternative plugin\n", I->ig.d->subtype);


            list = (gs_fapi_server **) gs_fapi_get_server_list(mem);
            do_restart = ((bool)0);
        }
        else {
            I = *list;
            list++;
        }
    }
    return (code);
}

bool
gs_fapi_available(gs_memory_t *mem, char *server)
{
    bool retval = ((bool)0);

    if (server) {
        gs_fapi_server *serv = ((void*)0);

        retval = (gs_fapi_find_server(mem, server, &serv, ((void*)0)) >= 0);
    }
    else {
        retval = ((mem->gs_lib_ctx->fapi_servers) != ((void*)0)) && (*(mem->gs_lib_ctx->fapi_servers) != ((void*)0));
    }
    return (retval);
}

void
gs_fapi_set_servers_client_data(gs_memory_t *mem, const gs_fapi_font *ff_proto, void *ctx_ptr)
{
    gs_fapi_server **servs = gs_fapi_get_server_list(mem);

    if (servs) {
        while (*servs) {
            (*servs)->client_ctx_p = ctx_ptr;
            if (ff_proto)
                (*servs)->ff = *ff_proto;
            servs++;
        }
    }
}

gs_fapi_server **
gs_fapi_get_server_list(gs_memory_t *mem)
{
    return (mem->gs_lib_ctx->fapi_servers);
}

int
gs_fapi_find_server(gs_memory_t *mem, const char *name, gs_fapi_server **server,
                    gs_fapi_get_server_param_callback get_server_param_cb)
{
    gs_fapi_server **servs = gs_fapi_get_server_list(mem);
    char *server_param = ((void*)0);
    int server_param_size = 0;
    int code = 0;
    bool free_params = ((bool)0);

    (*server) = ((void*)0);

    while (servs && *servs && __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((char *)(*servs)->ig.d->subtype) && __builtin_constant_p ((char *)name) && (__s1_len = strlen ((char *)(*servs)->ig.d->subtype), __s2_len = strlen ((char *)name), (!((size_t)(const void *)(((char *)(*servs)->ig.d->subtype) + 1) - (size_t)(const void *)((char *)(*servs)->ig.d->subtype) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((char *)name) + 1) - (size_t)(const void *)((char *)name) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((char *)(*servs)->ig.d->subtype, (char *)name) : (__builtin_constant_p ((char *)(*servs)->ig.d->subtype) && ((size_t)(const void *)(((char *)(*servs)->ig.d->subtype) + 1) - (size_t)(const void *)((char *)(*servs)->ig.d->subtype) == 1) && (__s1_len = strlen ((char *)(*servs)->ig.d->subtype), __s1_len < 4) ? (__builtin_constant_p ((char *)name) && ((size_t)(const void *)(((char *)name) + 1) - (size_t)(const void *)((char *)name) == 1) ? __builtin_strcmp ((char *)(*servs)->ig.d->subtype, (char *)name) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((char *)name); register int __result = (((const unsigned char *) (const char *) ((char *)(*servs)->ig.d->subtype))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((char *)(*servs)->ig.d->subtype))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((char *)(*servs)->ig.d->subtype))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((char *)(*servs)->ig.d->subtype))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((char *)name) && ((size_t)(const void *)(((char *)name) + 1) - (size_t)(const void *)((char *)name) == 1) && (__s2_len = strlen ((char *)name), __s2_len < 4) ? (__builtin_constant_p ((char *)(*servs)->ig.d->subtype) && ((size_t)(const void *)(((char *)(*servs)->ig.d->subtype) + 1) - (size_t)(const void *)((char *)(*servs)->ig.d->subtype) == 1) ? __builtin_strcmp ((char *)(*servs)->ig.d->subtype, (char *)name) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((char *)(*servs)->ig.d->subtype); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((char *)name))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((char *)name))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((char *)name))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((char *)name))[3]); } } __result; }))) : __builtin_strcmp ((char *)(*servs)->ig.d->subtype, (char *)name)))); })) {
        servs++;
    }

    if (servs && *servs && get_server_param_cb) {
        (*get_server_param_cb) ((*servs), (char *) (*servs)->ig.d->subtype,
                                &server_param, &server_param_size);

        if (server_param == ((void*)0) && server_param_size > 0) {
            server_param =
                (char *)((mem->non_gc_memory)->procs.alloc_bytes_immovable(mem->non_gc_memory, server_param_size, "gs_fapi_find_server server params"));


            if (!server_param) {
                return ((-25));
            }
            free_params = ((bool)1);
            (*get_server_param_cb) ((*servs),
                                    (const char *)(*servs)->ig.d->subtype,
                                    &server_param, &server_param_size);
        }

        if ((code =
             gs_fapi_renderer_retcode(mem, (*servs),
                                      (*servs)->ensure_open((*servs),
                                                            server_param,
                                                            server_param_size)))
            < 0) {
        }

        if (free_params) {
            ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, server_param, "gs_fapi_find_server: server_param"));

        }

        (*server) = (*servs);
    }
    else {
        if (!servs || !(*servs)) {
            code = (-7);
        }
    }


    return (code);
}

int
gs_fapi_init(gs_memory_t *mem)
{
    int code = 0;
    int i, num_servers = 0;
    gs_fapi_server **servs = ((void*)0);
    const gs_fapi_server_init_func *gs_fapi_server_inits =
        gs_get_fapi_server_inits();

    while (gs_fapi_server_inits[num_servers]) {
        num_servers++;
    }

    servs =
        (gs_fapi_server **) ((mem->non_gc_memory)->procs.alloc_bytes_immovable(mem->non_gc_memory, (num_servers + 1) * sizeof(gs_fapi_server *), "gs_fapi_init"));




    if (!servs) {
        return ((-25));
    }

    for (i = 0; i < num_servers; i++) {
        gs_fapi_server_init_func *f =
            (gs_fapi_server_init_func *) & (gs_fapi_server_inits[i]);

        code = (*f) (mem, &(servs[i]));
        if (code != 0) {
            break;
        }


        servs[i]->client_ctx_p = ((void*)0);
    }

    for (; i < num_servers + 1; i++) {
        servs[i] = ((void*)0);
    }

    mem->gs_lib_ctx->fapi_servers = servs;

    return (code);
}

void
gs_fapi_finit(gs_memory_t *mem)
{
    gs_fapi_server **servs = mem->gs_lib_ctx->fapi_servers;

    while (servs && *servs) {
        ((*servs)->ig.d->finit) (servs);
        servs++;
    }
    ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, mem->gs_lib_ctx->fapi_servers, "gs_fapi_finit: mem->gs_lib_ctx->fapi_servers"));

    mem->gs_lib_ctx->fapi_servers = ((void*)0);
}
