# 1 "./base/gdevp14.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gdevp14.c" 2
# 18 "./base/gdevp14.c"
# 1 "./base/math_.h" 1
# 23 "./base/math_.h"
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
# 24 "./base/math_.h" 2





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
# 19 "./base/gdevp14.c" 2
# 1 "./base/memory_.h" 1
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
# 20 "./base/gdevp14.c" 2
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
# 21 "./base/gdevp14.c" 2

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
# 23 "./base/gdevp14.c" 2
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
# 24 "./base/gdevp14.c" 2


# 1 "./base/gxistate.h" 1
# 29 "./base/gxistate.h"
# 1 "./base/gxline.h" 1
# 23 "./base/gxline.h"
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
# 24 "./base/gxline.h" 2




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



typedef struct gs_matrix_fixed_s gs_matrix_fixed;



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
# 27 "./base/gdevp14.c" 2
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
# 28 "./base/gdevp14.c" 2
# 1 "./base/gxiparam.h" 1
# 39 "./base/gxiparam.h"
struct gx_image_type_s {




    gs_memory_type_ptr_t stype;





    int (*begin_typed_image)(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
# 61 "./base/gxiparam.h"
    int (*source_size)(const gs_imager_state *pis, const gs_image_common_t *pic, gs_int_point *psize);
# 72 "./base/gxiparam.h"
    int (*sput)(const gs_image_common_t *pic, stream *s, const gs_color_space **ppcs);
# 82 "./base/gxiparam.h"
    int (*sget)(gs_image_common_t *pic, stream *s, gs_color_space *pcs);
# 91 "./base/gxiparam.h"
    void (*release)(gs_image_common_t *pic, gs_memory_t *mem);





    int index;
};





int gx_data_image_source_size(const gs_imager_state *pis, const gs_image_common_t *pic, gs_int_point *psize);




int gx_image_no_sput(const gs_image_common_t *pic, stream *s, const gs_color_space **ppcs);
int gx_image_no_sget(gs_image_common_t *pic, stream *s, gs_color_space *pcs);
void gx_image_default_release(gs_image_common_t *pic, gs_memory_t *mem);




int gx_pixel_image_sput(const gs_pixel_image_t *pic, stream *s,
                        const gs_color_space **ppcs, int extra);
int gx_pixel_image_sget(gs_pixel_image_t *pic, stream *s,
                        gs_color_space *pcs);
void gx_pixel_image_release(gs_pixel_image_t *pic, gs_memory_t *mem);


bool gx_image_matrix_is_default(const gs_data_image_t *pid);
void gx_image_matrix_set_default(gs_data_image_t *pid);
void sput_variable_uint(stream *s, uint w);
int sget_variable_uint(stream *s, uint *pw);
# 140 "./base/gxiparam.h"
typedef struct gx_image_enum_procs_s {
# 151 "./base/gxiparam.h"
    int (*plane_data)(gx_image_enum_common_t *info, const gx_image_plane_t *planes, int height, int *rows_used);
# 162 "./base/gxiparam.h"
    int (*end_image)(gx_image_enum_common_t *info, bool draw_last);
# 175 "./base/gxiparam.h"
    int (*flush)(gx_image_enum_common_t *info);
# 200 "./base/gxiparam.h"
    bool (*planes_wanted)(const gx_image_enum_common_t *info, byte *wanted);

} gx_image_enum_procs_t;
# 224 "./base/gxiparam.h"
struct gx_image_enum_common_s {
    const gx_image_type_t *image_type; const gx_image_enum_procs_t *procs; gx_device *dev; gs_memory_t *memory; gs_id id; bool skipping; int num_planes; int plane_depths[((64) + 1)]; int plane_widths[((64) + 1)];
};

extern const gs_memory_struct_type_t st_gx_image_enum_common;
# 237 "./base/gxiparam.h"
int gx_image_enum_common_init(gx_image_enum_common_t * piec,
                              const gs_data_image_t * pic,
                              const gx_image_enum_procs_t * piep,
                              gx_device * dev, int num_components,
                              gs_image_format_t format);





int gx_no_plane_data(gx_image_enum_common_t *info, const gx_image_plane_t *planes, int height, int *rows_used);
int gx_ignore_end_image(gx_image_enum_common_t *info, bool draw_last);




int gx_begin_image1(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
int gx_image1_plane_data(gx_image_enum_common_t *info, const gx_image_plane_t *planes, int height, int *rows_used);
int gx_image1_end_image(gx_image_enum_common_t *info, bool draw_last);
int gx_image1_flush(gx_image_enum_common_t *info);


void gx_image_free_enum(gx_image_enum_common_t **ppenum);


void image_init_map(byte * map, int map_size, const float *decode);
# 29 "./base/gdevp14.c" 2



# 1 "./base/gsdfilt.h" 1
# 32 "./base/gsdfilt.h"
typedef struct gs_device_filter_stack_s gs_device_filter_stack_t;




typedef struct gs_device_filter_s gs_device_filter_t;


struct gs_device_filter_s {
    int (*push)(gs_device_filter_t *self, gs_memory_t *mem, gs_state *pgs,
                gx_device **pdev, gx_device *target);
    int (*prepop)(gs_device_filter_t *self, gs_memory_t *mem, gs_state *pgs,
                  gx_device *dev);
    int (*postpop)(gs_device_filter_t *self, gs_memory_t *mem, gs_state *pgs,
                   gx_device *dev);
};

extern const gs_memory_struct_type_t st_gs_device_filter;
# 61 "./base/gsdfilt.h"
int gs_push_device_filter(gs_memory_t *mem, gs_state *pgs, gs_device_filter_t *df);
# 73 "./base/gsdfilt.h"
int gs_pop_device_filter(gs_memory_t *mem, gs_state *pgs);
# 84 "./base/gsdfilt.h"
int gs_clear_device_filters(gs_memory_t *mem, gs_state *pgs);
# 33 "./base/gdevp14.c" 2
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
# 34 "./base/gdevp14.c" 2
# 1 "./base/gsrect.h" 1
# 63 "./base/gsrect.h"
int int_rect_difference(gs_int_rect * outer, const gs_int_rect * inner,
                        gs_int_rect * diffs );
# 35 "./base/gdevp14.c" 2
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
# 36 "./base/gdevp14.c" 2
# 1 "./base/gzstate.h" 1
# 27 "./base/gzstate.h"
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
# 71 "./base/gzstate.h"
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
# 37 "./base/gdevp14.c" 2
# 1 "./base/gdevdevn.h" 1
# 59 "./base/gdevdevn.h"
typedef const char * fixed_colorant_name;
typedef fixed_colorant_name * fixed_colorant_names_list;




typedef struct devn_separation_name_s {
    int size;
    byte * data;
} devn_separation_name;




struct gs_separations_s {
    int num_separations;
    devn_separation_name names[(8 * 8)];
};
# 86 "./base/gdevdevn.h"
typedef int gs_separation_map[(8 * 8) + 6];

typedef struct gs_devn_params_s {




    int bitspercomponent;







    fixed_colorant_names_list std_colorant_names;
    int num_std_colorant_names;
    int max_separations;
# 112 "./base/gdevdevn.h"
    int page_spot_colors;




    gs_separations separations;




    int num_separation_order_names;




    gs_separation_map separation_order_map;



    struct compressed_color_list_s * compressed_color_list;
# 141 "./base/gdevdevn.h"
    struct compressed_color_list_s * pdf14_compressed_color_list;
    gs_separations pdf14_separations;
} gs_devn_params_t;






extern fixed_colorant_name DeviceCMYKComponents[];


# 1 "./base/gsequivc.h" 1
# 27 "./base/gsequivc.h"
typedef struct cmyk_color_s {
    bool color_info_valid;
    frac c;
    frac m;
    frac y;
    frac k;
} cmyk_color;
# 43 "./base/gsequivc.h"
typedef struct equivalent_cmyk_color_params_s {
    bool all_color_info_valid;
    cmyk_color color[(8 * 8)];
} equivalent_cmyk_color_params;




void update_spot_equivalent_cmyk_colors(gx_device * pdev,
                const gs_state * pgs, gs_devn_params * pdevn_params,
                equivalent_cmyk_color_params * pparams);





void capture_spot_equivalent_cmyk_colors(gx_device * pdev,
                const gs_state * pgs, const gs_client_color * pcc,
                const gs_color_space * pcs, int sep_num,
                equivalent_cmyk_color_params * pparams);
# 153 "./base/gdevdevn.h" 2
# 163 "./base/gdevdevn.h"
void gray_cs_to_devn_cm(gx_device * dev, int * map, frac gray, frac out[]);

void rgb_cs_to_devn_cm(gx_device * dev, int * map,
                const gs_imager_state *pis, frac r, frac g, frac b, frac out[]);

void cmyk_cs_to_devn_cm(gx_device * dev, const int * map,
                frac c, frac m, frac y, frac k, frac out[]);
# 213 "./base/gdevdevn.h"
int devn_get_color_comp_index(gx_device * dev,
    gs_devn_params * pdevn_params, equivalent_cmyk_color_params * pequiv_colors,
    const char * pname, int name_size, int component_type,
    int auto_spot_colors);


int devn_get_params(gx_device * pdev, gs_param_list * plist,
                    gs_devn_params * pdevn_params,
                    equivalent_cmyk_color_params * pequiv_colors);
# 232 "./base/gdevdevn.h"
int devn_printer_put_params(gx_device * pdev, gs_param_list * plist,
                        gs_devn_params * pdevn_params,
                        equivalent_cmyk_color_params * pequiv_colors);
# 245 "./base/gdevdevn.h"
int devn_put_params(gx_device * pdev, gs_param_list * plist,
                        gs_devn_params * pdevn_params,
                        equivalent_cmyk_color_params * pequiv_colors);
# 262 "./base/gdevdevn.h"
int check_pcm_and_separation_names(const gx_device * dev,
                const gs_devn_params * pparams, const char * pname,
                int name_size, int component_type);
# 277 "./base/gdevdevn.h"
int devn_copy_params(gx_device * psrcdev, gx_device * pdesdev);
# 286 "./base/gdevdevn.h"
void devn_free_params(gx_device *dev);
# 304 "./base/gdevdevn.h"
int repack_data(byte * source, byte * dest, int depth, int first_bit,
                int bit_width, int npixel);
# 320 "./base/gdevdevn.h"
int bpc_to_depth(int ncomp, int bpc);
# 388 "./base/gdevdevn.h"
typedef gx_color_index comp_bit_map_t;
# 436 "./base/gdevdevn.h"
typedef struct comp_bit_map_list_s {
    short num_comp;
    short num_non_solid_comp;
    bool solid_not_100;
    comp_bit_map_t colorants;
    comp_bit_map_t solid_colorants;
} comp_bit_map_list_t;
# 461 "./base/gdevdevn.h"
typedef struct compressed_color_list_s {
    gs_memory_t * mem;




    int level_num_comp;

    int num_sub_level_ptrs;

    int first_bit_map;




    union {
        struct compressed_color_list_s * sub_level_ptrs[256];
        comp_bit_map_list_t comp_data[256];
    } u;
} compressed_color_list_t;
# 495 "./base/gdevdevn.h"
gx_color_index devn_encode_compressed_color(gx_device *pdev,
        const gx_color_value colors[], gs_devn_params * pdevn_params);
# 507 "./base/gdevdevn.h"
int devn_decode_compressed_color(gx_device * dev, gx_color_index color,
                        gx_color_value * out, gs_devn_params * pdevn_params);
# 520 "./base/gdevdevn.h"
int devn_unpack_row(gx_device * dev, int num_comp, gs_devn_params * pdevn_params,
                                         int width, byte * in, byte * out);




comp_bit_map_list_t * find_bit_map(gx_color_index index,
                                compressed_color_list_t * pcomp_list);




compressed_color_list_t * alloc_compressed_color_list_elem(gs_memory_t * mem,
                                                                int num_comps);






extern int num_comp_bits[];
# 554 "./base/gdevdevn.h"
extern int comp_bit_factor[];





void print_compressed_color_list(const gs_memory_t *mem, compressed_color_list_t * pcomp_list, int num_comp);




void free_compressed_color_list(compressed_color_list_t * pcomp_list);




void free_separation_names(gs_memory_t *mem, gs_separations * pseparation);
# 38 "./base/gdevp14.c" 2
# 1 "./base/gdevmem.h" 1
# 21 "./base/gdevmem.h"
# 1 "./base/gxbitops.h" 1
# 108 "./base/gxbitops.h"
extern const bits16 mono_copy_masks[17];




extern const bits32 mono_fill_masks[33];
# 22 "./base/gdevmem.h" 2
# 74 "./base/gdevmem.h"
void mem_get_initial_matrix(gx_device *dev, gs_matrix *pmat);
int mem_close(gx_device *dev);
# 88 "./base/gdevmem.h"
int mem_draw_thin_line(gx_device *dev, fixed fx0, fixed fy0, fixed fx1, fixed fy1, const gx_drawing_color *pdcolor, gs_logical_operation_t lop, fixed adjustx, fixed adjusty);


int mem_open(gx_device *dev);
int mem_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);




int mem_word_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);


gx_color_index mem_mapped_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int mem_mapped_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);

int mem_default_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int mem_default_strip_copy_rop2(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop, uint planar_height);
# 218 "./base/gdevmem.h"
void mem_swap_byte_rect(byte *, uint, int, int, int, bool);
# 229 "./base/gdevmem.h"
extern const gx_device_memory mem_mono_device;
extern const gx_device_memory mem_mapped2_device;
extern const gx_device_memory mem_mapped4_device;
extern const gx_device_memory mem_mapped8_device;
extern const gx_device_memory mem_true16_device;
extern const gx_device_memory mem_true24_device;
extern const gx_device_memory mem_true32_device;
extern const gx_device_memory mem_true40_device;
extern const gx_device_memory mem_true48_device;
extern const gx_device_memory mem_true56_device;
extern const gx_device_memory mem_true64_device;
extern const gx_device_memory mem_x_device;
extern const gx_device_memory mem_planar_device;




int mem_mono_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int mem_mono_strip_copy_rop_dev(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int mem_gray_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int mem_gray8_rgb24_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
# 263 "./base/gdevmem.h"
extern const gx_device_memory mem_mono_word_device;
extern const gx_device_memory mem_mapped2_word_device;
extern const gx_device_memory mem_mapped4_word_device;
extern const gx_device_memory mem_mapped8_word_device;
extern const gx_device_memory mem_true24_word_device;
extern const gx_device_memory mem_true32_word_device;
extern const gx_device_memory mem_true40_word_device;
extern const gx_device_memory mem_true48_word_device;
extern const gx_device_memory mem_true56_word_device;
extern const gx_device_memory mem_true64_word_device;



extern const gs_const_string mem_mono_b_w_palette;
extern const gs_const_string mem_mono_w_b_palette;
# 39 "./base/gdevp14.c" 2
# 1 "./base/gdevp14.h" 1
# 23 "./base/gdevp14.h"
# 1 "./base/gxcolor2.h" 1
# 23 "./base/gxcolor2.h"
# 1 "./base/gscolor2.h" 1
# 23 "./base/gscolor2.h"
# 1 "./base/gscindex.h" 1
# 48 "./base/gscindex.h"
extern int gs_cspace_build_Indexed(
                                   gs_color_space ** ppcspace,
                                   gs_color_space * pbase_cspace,
                                   uint num_entries,
                                   const gs_const_string * ptbl,
                                   gs_memory_t * pmem
                                   );


extern int gs_cspace_indexed_num_entries(
                                         const gs_color_space * pcspace
                                         );



extern float *gs_cspace_indexed_value_array(
                                            const gs_color_space * pcspace
                                            );


extern int gs_cspace_indexed_set_proc(
                                      gs_color_space * pcspace,
                                      int (*proc) (const gs_color_space *, int, float *)
                                      );


int gs_cspace_indexed_lookup(const gs_color_space *, int,
                             gs_client_color *);


int gs_cspace_indexed_lookup_bytes(const gs_color_space *pcs, float index_float,
                        unsigned char *output);


int gs_cspace_indexed_lookup_frac(const gs_color_space *pcs, float index_float,
                        frac *output);
# 24 "./base/gscolor2.h" 2
# 1 "./base/gsptype1.h" 1
# 22 "./base/gsptype1.h"
# 1 "./base/gspcolor.h" 1
# 24 "./base/gspcolor.h"
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
# 25 "./base/gspcolor.h" 2
# 51 "./base/gspcolor.h"
typedef struct gs_pattern_type_s gs_pattern_type_t;
# 64 "./base/gspcolor.h"
typedef struct gs_pattern_template_s {
    const gs_pattern_type_t *type; int PatternType; gs_uid uid; void *client_data;
} gs_pattern_template_t;


extern const gs_memory_struct_type_t st_pattern_template;
# 88 "./base/gspcolor.h"
struct gs_pattern_instance_s {
    rc_header rc; const gs_pattern_type_t *type; gs_state *saved; gs_id pattern_id;
};


extern const gs_memory_struct_type_t st_pattern_instance;
# 103 "./base/gspcolor.h"
int gs_setpattern(gs_state *, const gs_client_color *);
int gs_setpatternspace(gs_state *);







int gs_make_pattern(gs_client_color *, const gs_pattern_template_t *,
                    const gs_matrix *, gs_state *, gs_memory_t *);
const gs_pattern_template_t *gs_get_pattern(const gs_client_color *);
# 123 "./base/gspcolor.h"
void gs_pattern_reference(gs_client_color * pcc, int delta);
# 23 "./base/gsptype1.h" 2
# 38 "./base/gsptype1.h"
typedef struct gs_pattern1_template_s {




    const gs_pattern_type_t *type; int PatternType; gs_uid uid; void *client_data;
    int PaintType;
    int TilingType;
    bool uses_transparency;
    gs_rect BBox;
    float XStep;
    float YStep;
    int (*PaintProc) (const gs_client_color *, gs_state *);
} gs_pattern1_template_t;
# 61 "./base/gsptype1.h"
typedef gs_pattern1_template_t gs_client_pattern;







extern int gs_cspace_build_Pattern1(
                                    gs_color_space ** ppcspace,
                                    gs_color_space * pbase_cspace,
                                    gs_memory_t * pmem
                                    );


void gs_pattern1_init(gs_pattern1_template_t *);
# 89 "./base/gsptype1.h"
int gs_makepattern(gs_client_color *, const gs_client_pattern *,
                   const gs_matrix *, gs_state *, gs_memory_t *);
const gs_client_pattern *gs_getpattern(const gs_client_color *);


bool gx_dc_is_pattern1_color(const gx_device_color *pdevc);


bool gx_dc_is_pattern1_color_with_trans(const gx_device_color *pdevc);


void * gx_pattern1_get_transptr(const gx_device_color *pdevc);

int gx_pattern1_clist_has_trans(const gx_device_color *pdevc);



void gx_set_pattern_procs_trans(gx_device_color *pdevc);
void gx_set_pattern_procs_standard(gx_device_color *pdevc);
bool gx_pattern_procs_istrans(gx_device_color *pdevc);


bool gx_dc_is_pattern1_color_clist_based(const gx_device_color *pdevc);


gs_id gs_dc_get_pattern_id(const gx_device_color *pdevc);
# 148 "./base/gsptype1.h"
extern int gs_makepixmappattern(
                                gs_client_color * pcc,
                                const gs_depth_bitmap * pbitmap,
                                bool mask,
                                const gs_matrix * pmat,
                                long id,
                                gs_color_space * pcspace,
                                uint white_index,
                                gs_state * pgs,
                                gs_memory_t * mem
                                );





extern int gs_makebitmappattern_xform(
                                      gs_client_color * pcc,
                                      const gx_tile_bitmap * ptile,
                                      bool mask,
                                      const gs_matrix * pmat,
                                      long id,
                                      gs_state * pgs,
                                      gs_memory_t * mem
                                      );




extern int pixmap_high_level_pattern(gs_state * pgs);
# 25 "./base/gscolor2.h" 2
# 35 "./base/gscolor2.h"
gs_color_space *gs_currentcolorspace(const gs_state *);
int gs_setcolorspace(gs_state *, gs_color_space *);
int gs_setcolorspace_only(gs_state *, gs_color_space *);
const gs_client_color *gs_currentcolor(const gs_state *);
int gs_setcolor(gs_state *, const gs_client_color *);
const gx_device_color *gs_currentdevicecolor(const gs_state *);


int
gs_indexed_limit_and_lookup(const gs_client_color * pc,const gs_color_space *pcs,
                         gs_client_color *pcc);


extern const gs_color_space_type gs_color_space_type_Indexed;




typedef struct gs_cie_render_s gs_cie_render;

const gs_cie_render *gs_currentcolorrendering(const gs_state *);
int gs_setcolorrendering(gs_state *, gs_cie_render *);


int gs_includecolorspace(gs_state * pgs, const byte *res_name, int name_length);
# 24 "./base/gxcolor2.h" 2





struct gs_indexed_map_s {
    rc_header rc;
    union {
        int (*lookup_index)(const gs_color_space *, int, float *);
        int (*tint_transform)(const gs_separation_params *, double, float *);
    } proc;
    void *proc_data;
    uint num_values;
    float *values;
};





int lookup_indexed_map(const gs_color_space *, int, float *);



int alloc_indexed_map(gs_indexed_map ** ppmap, int num_values,
                      gs_memory_t * mem, client_name_t cname);


void free_indexed_map(gs_memory_t *, void *, client_name_t);
# 73 "./base/gxcolor2.h"
struct gs_pattern1_instance_s {
    rc_header rc; const gs_pattern_type_t *type; gs_state *saved; gs_id pattern_id;
    gs_pattern1_template_t templat;

    gs_matrix step_matrix;
    gs_rect bbox;
    bool is_simple;
    bool has_overlap;


    int is_planar;





    bool uses_mask;
    bool is_clist;
    gs_int_point size;
    gx_bitmap_id id;
};
# 24 "./base/gdevp14.h" 2

# 1 "./base/gxpcolor.h" 1
# 26 "./base/gxpcolor.h"
# 1 "./base/gxdevmem.h" 1
# 81 "./base/gxdevmem.h"
struct gx_device_memory_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;




    uint raster;
    byte *base;

    gs_memory_t *bitmap_memory;
    bool foreign_bits;
    gs_memory_t *line_pointer_memory;
    bool foreign_line_pointers;





    gx_render_plane_t planes[(8 * 8)];



    gs_matrix initial_matrix;
    byte **line_ptrs;


    gs_const_string palette;

    struct _c24 {
        gx_color_index rgb;
        bits32 rgbr, gbrg, brgb;
    } color24;

    struct _c40 {
        gx_color_index abcde;
        bits32 abcd, bcde, cdea, deab, eabc;
    } color40;

    struct _c48 {
        gx_color_index abcdef;
        bits32 abcd, cdef, efab;
    } color48;

    struct _c56 {
        gx_color_index abcdefg;
        bits32 abcd, bcde, cdef, defg, efga, fgab, gabc;
    } color56;

    struct _c64 {
        gx_color_index abcdefgh;
        bits32 abcd, efgh;
    } color64;



    gs_log2_scale_point log2_scale;
    int log2_alpha_bits;
    int mapped_x;
    int mapped_y;
    int mapped_height;
    int mapped_start;
    gx_color_index save_color;
    const gx_drawing_color *save_hl_color;


    int plane_depth;
    int band_y;
};

extern const gs_memory_struct_type_t st_device_memory;
# 183 "./base/gxdevmem.h"
int gdev_mem_bits_size(const gx_device_memory *mdev, int width,
                         int height, ulong *size);

ulong gdev_mem_line_ptrs_size(const gx_device_memory *mdev, int width,
                              int height);

int gdev_mem_data_size(const gx_device_memory *mdev, int width,
                         int height, ulong *size);
# 199 "./base/gxdevmem.h"
int gdev_mem_max_height(const gx_device_memory * dev, int width, ulong size,
                bool page_uses_transparency);
# 210 "./base/gxdevmem.h"
const gx_device_memory *gdev_mem_device_for_bits(int);


const gx_device_memory *gdev_mem_word_device_for_bits(int);
# 226 "./base/gxdevmem.h"
void gs_make_mem_mono_device(gx_device_memory * mdev, gs_memory_t * mem,
                             gx_device * target);
void gs_make_mem_device(gx_device_memory * mdev,
                        const gx_device_memory * mdproto,
                        gs_memory_t * mem, int page_device,
                        gx_device * target);
void gs_make_mem_abuf_device(gx_device_memory * adev, gs_memory_t * mem,
                             gx_device * target,
                             const gs_log2_scale_point * pscale,
                             int alpha_bits, int mapped_x, bool devn);
void gs_make_mem_alpha_device(gx_device_memory * adev, gs_memory_t * mem,
                              gx_device * target, int alpha_bits);






int gs_make_mem_mono_device_with_copydevice(gx_device_memory ** mdev,
                                            gs_memory_t * mem,
                                            gx_device * target);

int gs_make_mem_device_with_copydevice(gx_device_memory ** mdev,
                                       const gx_device_memory * mdproto,
                                       gs_memory_t * mem,
                                       int page_device,
                                       gx_device * target);
# 263 "./base/gxdevmem.h"
int gdev_mem_open_scan_lines(gx_device_memory *mdev, int setup_height);
# 278 "./base/gxdevmem.h"
int gdev_mem_set_line_ptrs(gx_device_memory *mdev,
                           byte *base, int raster, byte **line_ptrs,
                           int setup_height);


void gdev_mem_mono_set_inverted(gx_device_memory * mdev, bool black_is_1);


bool gs_device_is_memory(const gx_device *);


bool gs_device_is_abuf(const gx_device *);


int alpha_buffer_bits(gs_state * pgs);
# 27 "./base/gxpcolor.h" 2
# 1 "./base/gxpcache.h" 1
# 29 "./base/gxpcache.h"
typedef struct gx_pattern_cache_s gx_pattern_cache;







struct gx_pattern_cache_s {
    gs_memory_t *memory;
    gx_color_tile *tiles;
    uint num_tiles;
    uint tiles_used;
    uint next;
    ulong bits_used;
    ulong max_bits;
    void (*free_all) (gx_pattern_cache *);
};
# 28 "./base/gxpcolor.h" 2

# 1 "./base/gxcpath.h" 1
# 44 "./base/gxcpath.h"
typedef struct gx_clip_rect_s gx_clip_rect;
struct gx_clip_rect_s {
    gx_clip_rect *next, *prev;
    int ymin, ymax;
    int xmin, xmax;
    byte to_visit;
};


extern const gs_memory_struct_type_t st_clip_rect;
# 68 "./base/gxcpath.h"
typedef struct gx_clip_list_s gx_clip_list;

struct gx_clip_list_s {
    gx_clip_rect single;
    gx_clip_rect *head;
    gx_clip_rect *tail;
    gx_clip_rect *insert;
    int xmin, xmax;
    int count;

};
# 98 "./base/gxcpath.h"
typedef struct gx_device_clip_s gx_device_clip;

struct gx_device_clip_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;
    gx_clip_list list;
    gx_clip_rect *current;
    gs_int_point translation;
    gs_fixed_rect clipping_box;
    bool clipping_box_set;
};

extern const gs_memory_struct_type_t st_device_clip;




void gx_make_clip_device_on_stack(gx_device_clip * dev, const gx_clip_path *pcpath, gx_device *target);
gx_device *gx_make_clip_device_on_stack_if_needed(gx_device_clip * dev, const gx_clip_path *pcpath, gx_device *target, gs_fixed_rect *rect);
void gx_make_clip_device_in_heap(gx_device_clip * dev, const gx_clip_path *pcpath, gx_device *target,
                              gs_memory_t *mem);
# 126 "./base/gxcpath.h"
void gx_clip_list_init(gx_clip_list *);


void gx_clip_list_free(gx_clip_list *, gs_memory_t *);


void gx_cpath_set_outer_box(gx_clip_path *);




const gx_clip_list *gx_cpath_list(const gx_clip_path *pcpath);
# 30 "./base/gxpcolor.h" 2

# 1 "./base/gxiclass.h" 1
# 23 "./base/gxiclass.h"
typedef struct gx_image_enum_s gx_image_enum;
# 50 "./base/gxiclass.h"
typedef int (*irender_proc_t)(gx_image_enum *penum, const byte *buffer, int data_x, uint w, int h, gx_device *dev);
# 62 "./base/gxiclass.h"
typedef irender_proc_t (*gx_image_class_t)(gx_image_enum *penum);
# 32 "./base/gxpcolor.h" 2





typedef union gx_device_clist_s gx_device_clist;
# 47 "./base/gxpcolor.h"
struct gs_pattern_type_s {
    int PatternType;
    struct pp_ {
# 61 "./base/gxpcolor.h"
        bool (*uses_base_space)(const gs_pattern_template_t *);
# 71 "./base/gxpcolor.h"
        int (*make_pattern)(gs_client_color *, const gs_pattern_template_t *, const gs_matrix *, gs_state *, gs_memory_t *);
# 80 "./base/gxpcolor.h"
        const gs_pattern_template_t *(*get_pattern)(const gs_pattern_instance_t *);
# 90 "./base/gxpcolor.h"
        int (*remap_color)(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
# 101 "./base/gxpcolor.h"
        int (*set_color)(const gs_client_color *, gs_state *);

    } procs;
};





void gs_pattern_common_init(gs_pattern_template_t *,
                            const gs_pattern_type_t *);





int gs_make_pattern_common(gs_client_color *, const gs_pattern_template_t *,
                           const gs_matrix *, gs_state *, gs_memory_t *,
                           gs_memory_type_ptr_t);


extern void rc_free_pattern_instance(gs_memory_t *, void *, client_name_t);


extern const gs_color_space_type gs_color_space_type_Pattern;






extern const gx_device_color_type_t
    gx_dc_pattern, gx_dc_pure_masked, gx_dc_binary_masked,
    gx_dc_colored_masked, gx_dc_devn_masked;
# 143 "./base/gxpcolor.h"
extern void gx_dc_pattern_save_dc(const gx_device_color * pdevc, gx_device_color_saved * psdc);
extern int gx_dc_pattern_write(const gx_device_color *pdevc, const gx_device_color_saved *psdc, const gx_device * dev, int64_t offset, byte *data, uint *psize);
extern int gx_dc_pattern_read(gx_device_color *pdevc, const gs_imager_state * pis, const gx_device_color *prior_devc, const gx_device * dev, int64_t offset, const byte *data, uint size, gs_memory_t *mem);





extern int gx_dc_pattern_get_nonzero_comps(const gx_device_color * pdevc, const gx_device * dev, gx_color_index * pcomp_bits);






typedef struct gx_pattern_trans_s gx_pattern_trans_t;

struct gx_pattern_trans_s {

    const gx_device *pdev14;
    byte *transbytes;
    gs_memory_t *mem;
    gx_pattern_trans_t *fill_trans_buffer;
    gs_int_rect rect;
    int rowstride;
    int planestride;
    int n_chan;
    bool has_shape;
    int width;
    int height;
    const pdf14_nonseparable_blending_procs_t *blending_procs;
    bool is_additive;
    gs_blend_mode_t blending_mode;
    gs_int_rect *dirty;
    void (* pat_trans_fill)(int xmin, int ymin, int xmax, int ymax, int px,
                            int py, const gx_color_tile *ptile,
                            gx_pattern_trans_t *fill_trans_buffer);
    int (* image_render)(gx_image_enum * penum, const byte * buffer,
                            int data_x, uint w, int h, gx_device * dev);
};
# 195 "./base/gxpcolor.h"
struct gx_color_tile_s {



    gx_bitmap_id id;
    int depth;


    gs_uid uid;

    int bits_used;



    int tiling_type;
    gs_matrix step_matrix;

    gs_rect bbox;
    gx_strip_bitmap tbits;
    gx_strip_bitmap tmask;


    gx_pattern_trans_t *ttrans;

    gx_device_clist *cdev;
    byte is_simple;
    byte has_overlap;
    byte is_dummy;

    byte pad[2];

    uint index;
    bool trans_group_popped;
    bool is_planar;






};
# 253 "./base/gxpcolor.h"
uint gx_pat_cache_default_tiles(void);
ulong gx_pat_cache_default_bits(void);
gx_pattern_cache *gx_pattern_alloc_cache(gs_memory_t *, uint, ulong);

void gx_pattern_cache_free(gx_pattern_cache *pcache);


gx_pattern_cache *gstate_pattern_cache(gs_state *);
void gstate_set_pattern_cache(gs_state *, gx_pattern_cache *);







typedef struct gx_device_pattern_accum_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;

    gs_memory_t *bitmap_memory;
    const gs_pattern1_instance_t *instance;

    gx_device_memory *bits;
    gx_device_memory *mask;






    gx_pattern_trans_t *transbuff;

} gx_device_pattern_accum;
# 294 "./base/gxpcolor.h"
gx_device_forward * gx_pattern_accum_alloc(gs_memory_t * mem,
                       gs_memory_t * stoarge_memory,
                       gs_pattern1_instance_t *pinst, client_name_t cname);


bool gx_device_is_pattern_accum(gx_device *dev);




void gx_pattern_cache_ensure_space(gs_imager_state * pis, int needed);

void gx_pattern_cache_update_used(gs_imager_state *pis, ulong used);


void gx_pattern_cache_update_space(gs_imager_state * pis, int64_t used);





int gx_pattern_cache_add_entry(gs_imager_state *, gx_device_forward *,
                               gx_color_tile **);


int gx_pattern_cache_add_dummy_entry(gs_imager_state *pis, gs_pattern1_instance_t *pinst,
                                int depth);


int gx_pattern_cache_get_entry(gs_imager_state * pis, gs_id id, gx_color_tile ** pctile);


bool gx_pattern_cache_lookup(gx_device_color *, const gs_imager_state *,
                             gx_device *, gs_color_select_t);


void gx_pattern_cache_winnow(gx_pattern_cache *,
                             bool (*)(gx_color_tile *, void *),
                             void *);

bool gx_pattern_tile_is_clist(gx_color_tile *ptile);


bool gx_device_is_pattern_clist(gx_device *dev);

int pattern_clist_open_device(gx_device *dev);


int gx_trans_pattern_fill_rect(int xmin, int ymin, int xmax, int ymax,
                               gx_color_tile *ptile,
                               gx_pattern_trans_t *fill_trans_buffer,
                               gs_int_point phase, gx_device *dev,
                               const gx_device_color * pdevc);

gx_pattern_trans_t* new_pattern_trans_buff(gs_memory_t *mem);

void tile_rect_trans_simple(int xmin, int ymin, int xmax, int ymax, int px,
                            int py, const gx_color_tile *ptile,
                            gx_pattern_trans_t *fill_trans_buffer);




void tile_rect_trans_blend(int xmin, int ymin, int xmax, int ymax, int px,
                           int py, const gx_color_tile *ptile,
                            gx_pattern_trans_t *fill_trans_buffer);


int gx_erase_colored_pattern(gs_state *pgs);
# 26 "./base/gdevp14.h" 2


typedef enum {
    PDF14_DeviceGray = 0,
    PDF14_DeviceRGB = 1,
    PDF14_DeviceCMYK = 2,
    PDF14_DeviceCMYKspot = 3,
    PDF14_DeviceCustom = 4
} pdf14_default_colorspace_t;
# 45 "./base/gdevp14.h"
typedef struct {
# 54 "./base/gdevp14.h"
    void (* unpack_color)(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);




    int (* put_image)(gx_device * dev,
                    gs_imager_state * pis, gx_device * target);
} pdf14_procs_s;

typedef pdf14_procs_s pdf14_procs_t;
# 74 "./base/gdevp14.h"
typedef struct pdf14_rcmask_s pdf14_rcmask_t;

struct pdf14_rcmask_s {

    pdf14_buf *mask_buf;
    rc_header rc;
    gs_memory_t *memory;

};

typedef struct pdf14_mask_s pdf14_mask_t;

struct pdf14_mask_s {

    pdf14_rcmask_t *rc_mask;
    pdf14_mask_t *previous;
    gs_memory_t *memory;

};
# 103 "./base/gdevp14.h"
typedef struct pdf14_parent_color_s pdf14_parent_color_t;

struct pdf14_parent_color_s {
    int num_components;
    bool isadditive;
    gx_color_polarity_t polarity;
    byte comp_shift[(8 * 8)];
    byte comp_bits[(8 * 8)];
    byte depth;
    uint max_gray;
    uint max_color;
    const gx_color_map_procs *(*get_cmap_procs)(const gs_imager_state *,
                                                     const gx_device *);
    const gx_cm_color_map_procs *(*parent_color_mapping_procs)(const gx_device *);
    gx_color_index (*encode)(gx_device *, const gx_color_value value[]);
    int (*decode)(gx_device *, gx_color_index, gx_color_value *);
    int (*parent_color_comp_index)(gx_device *, const char *, int, int);
    const pdf14_procs_t * unpack_procs;
    const pdf14_nonseparable_blending_procs_t * parent_blending_procs;
    cmm_profile_t *icc_profile;
    pdf14_parent_color_t *previous;
};

typedef struct pdf14_ctx_s pdf14_ctx;

struct pdf14_buf_s {
    pdf14_buf *saved;
    byte *backdrop;
    bool isolated;
    bool knockout;
    byte alpha;
    byte shape;
    gs_blend_mode_t blend_mode;

    bool has_alpha_g;
    bool has_shape;
    bool has_tags;

    gs_int_rect rect;





    int rowstride;
    int planestride;
    int n_chan;
    int n_planes;
    byte *data;
    byte *transfer_fn;
    gs_int_rect dirty;
    pdf14_mask_t *mask_stack;
    bool idle;

    gs_transparency_mask_subtype_t SMask_SubType;

    uint mask_id;
    pdf14_parent_color_t *parent_color_info_procs;

    gs_transparency_color_t color_space;
};

typedef struct pdf14_smaskcolor_s {
    gsicc_smask_t *profiles;
    int ref_count;
} pdf14_smaskcolor_t;

struct pdf14_ctx_s {
    pdf14_buf *stack;
    pdf14_mask_t *mask_stack;
    gs_memory_t *memory;
    gs_int_rect rect;
    bool additive;
    int n_chan;
    int smask_depth;
    bool smask_blend;
};
# 212 "./base/gdevp14.h"
typedef struct pdf14_device_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;
    gs_devn_params devn_params;
    const pdf14_procs_t * pdf14_procs;
    const pdf14_nonseparable_blending_procs_t * blend_procs;

    pdf14_ctx *ctx;
    pdf14_smaskcolor_t *smaskcolor;
    float opacity;
    float shape;
    float alpha;
    gs_blend_mode_t blend_mode;
    bool text_knockout;
    bool overprint;
    bool overprint_mode;
    bool blendspot;
    gx_color_index drawn_comps;
    gx_device * pclist_device;
    bool free_devicen;
    const gx_color_map_procs *(*save_get_cmap_procs)(const gs_imager_state *,
                                                     const gx_device *);
    gx_device_color_info saved_target_color_info;
    gx_color_index (*saved_target_encode_color)(gx_device * dev, const gx_color_value colors[]);
    int (*saved_target_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
    const gx_cm_color_map_procs * (*saved_target_get_color_mapping_procs)(const gx_device * dev);
    int (*saved_target_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
    gx_color_index (*my_encode_color)(gx_device * dev, const gx_color_value colors[]);
    int (*my_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
    const gx_cm_color_map_procs * (*my_get_color_mapping_procs)(const gx_device * dev);
    int (*my_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);

    pdf14_parent_color_t *trans_group_parent_cmap_procs;

} pdf14_device_t;







typedef struct pdf14_device_s pdf14_clist_device;




int send_pdf14trans(gs_imager_state * pis, gx_device * dev,
    gx_device * * pcdev, gs_pdf14trans_params_t * pparams, gs_memory_t * mem);
# 271 "./base/gdevp14.h"
int
pdf14_put_devn_params(gx_device * pdev, gs_devn_params * pdevn_params,
                                        gs_param_list * plist);




int pdf14_get_buffer_information(const gx_device * dev,
                                 gx_pattern_trans_t *transbuff, gs_memory_t *mem,
                                 bool free_device);


int pdf14_disable_device(gx_device * dev);


int gs_pdf14_device_color_mon_set(gx_device *pdev, bool monitoring);
# 40 "./base/gdevp14.c" 2
# 1 "./base/gdevprn.h" 1
# 23 "./base/gdevprn.h"
# 1 "./base/string_.h" 1
# 24 "./base/gdevprn.h" 2




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
# 29 "./base/gdevprn.h" 2


# 1 "./base/gxclist.h" 1
# 24 "./base/gxclist.h"
# 1 "./base/gxband.h" 1
# 22 "./base/gxband.h"
# 1 "./base/gxclio.h" 1
# 32 "./base/gxclio.h"
typedef void *clist_file_ptr;

struct clist_io_procs_s {
# 44 "./base/gxclio.h"
    int (*DO_NOT_USE_FOPEN)(char fname[4096], const char *fmode,
                    clist_file_ptr * pcf,
                    gs_memory_t * mem, gs_memory_t *data_mem,
                    bool ok_to_compress);




    int (*fclose)(clist_file_ptr cf, const char *fname, bool delete);




    int (*unlink)(const char *fname);



    int (*fwrite_chars)(const void *data, uint len, clist_file_ptr cf);



    int (*fread_chars)(void *data, uint len, clist_file_ptr cf);







    int (*set_memory_warning)(clist_file_ptr cf, int bytes_left);





    int (*ferror_code)(clist_file_ptr cf);

    int64_t (*ftell)(clist_file_ptr cf);






    void (*rewind)(clist_file_ptr cf, bool discard_data, const char *fname);

    int (*fseek)(clist_file_ptr cf, int64_t offset, int mode, const char *fname);
};

typedef struct clist_io_procs_s clist_io_procs_t;

extern const clist_io_procs_t *clist_io_procs_file_global;
extern const clist_io_procs_t *clist_io_procs_memory_global;
# 23 "./base/gxband.h" 2




typedef gx_color_index gx_color_usage_bits;




gx_color_usage_bits gx_color_index2usage(gx_device *dev, gx_color_index);




typedef struct gx_colors_usage_s {
    gx_color_usage_bits or;
    bool slow_rop;

    gs_int_rect trans_bbox;

} gx_color_usage_t;




typedef struct gx_band_page_info_s {
    char cfname[4096];
    clist_file_ptr cfile;
    char bfname[4096];
    clist_file_ptr bfile;
    const clist_io_procs_t *io_procs;
    uint tile_cache_size;
    ulong line_ptrs_offset;
    int64_t bfile_end_pos;
    gx_band_params_t band_params;

} gx_band_page_info_t;
# 25 "./base/gxclist.h" 2
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
# 26 "./base/gxclist.h" 2


# 1 "./base/gxdevbuf.h" 1
# 40 "./base/gxdevbuf.h"
typedef struct gx_device_buf_space_s {
    ulong bits;
    ulong line_ptrs;
    uint raster;
} gx_device_buf_space_t;

typedef struct gx_device_buf_procs_s {
# 65 "./base/gxdevbuf.h"
    int (*create_buf_device)(gx_device **pbdev, gx_device *target, int y, const gx_render_plane_t *render_plane, gs_memory_t *mem, gx_color_usage_t *color_usage);
# 76 "./base/gxdevbuf.h"
    int (*size_buf_device)(gx_device_buf_space_t *space, gx_device *target, const gx_render_plane_t *render_plane, int height, bool for_band);
# 96 "./base/gxdevbuf.h"
    int (*setup_buf_device)(gx_device *bdev, byte *buffer, int bytes_per_line, byte **line_ptrs , int y, int setup_height, int full_height);
# 106 "./base/gxdevbuf.h"
    void (*destroy_buf_device)(gx_device *bdev);

} gx_device_buf_procs_t;


int gx_default_create_buf_device(gx_device **pbdev, gx_device *target, int y, const gx_render_plane_t *render_plane, gs_memory_t *mem, gx_color_usage_t *color_usage);
int gx_default_size_buf_device(gx_device_buf_space_t *space, gx_device *target, const gx_render_plane_t *render_plane, int height, bool for_band);
int gx_default_setup_buf_device(gx_device *bdev, byte *buffer, int bytes_per_line, byte **line_ptrs , int y, int setup_height, int full_height);
void gx_default_destroy_buf_device(gx_device *bdev);
# 29 "./base/gxclist.h" 2
# 72 "./base/gxclist.h"
typedef struct gx_saved_page_s {
    char dname[32];
    gx_device_color_info color_info;

    char cfname[4096];
    char bfname[4096];
    const clist_io_procs_t *io_procs;
    uint tile_cache_size;
    int64_t bfile_end_pos;
    gx_band_params_t band_params;

    gs_memory_t *mem;


    int paramlist_len;
    byte *paramlist;
} gx_saved_page;




typedef struct gx_placed_page_s {
    gx_saved_page *page;
    gs_int_point offset;
} gx_placed_page;
# 124 "./base/gxclist.h"
typedef struct {
    ulong offset;


} tile_hash;

typedef struct {
    gx_cached_bits_head head; ushort width, height, shift; ushort raster; gx_bitmap_id id;


    byte x_reps, y_reps;
    ushort rep_shift;
    ushort index;
    ushort num_bands;
    byte num_planes;




} tile_slot;


typedef struct cmd_prefix_s cmd_prefix;
struct cmd_prefix_s {
    cmd_prefix *next;
    uint size;
    ulong id;
};



typedef struct cmd_list_s {
    cmd_prefix *head, *tail;
} cmd_list;







extern const gs_imager_state clist_imager_state_initial;






typedef struct gx_clist_state_s gx_clist_state;
# 217 "./base/gxclist.h"
typedef struct clist_icc_serial_entry_s clist_icc_serial_entry_t;

struct clist_icc_serial_entry_s {
    int64_t hashcode;
    int64_t file_position;
    int size;
};

typedef struct clist_icctable_entry_s clist_icctable_entry_t;

struct clist_icctable_entry_s {
    clist_icc_serial_entry_t serial_data;
    clist_icctable_entry_t *next;
    cmm_profile_t *icc_profile;

    bool render_is_valid;




};






typedef struct clist_icctable_s clist_icctable_t;

struct clist_icctable_s {
    int tablesize;
    gs_memory_t *memory;
    clist_icctable_entry_t *head;
    clist_icctable_entry_t *final;
};






typedef struct gx_device_clist_common_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; gx_device_buf_procs_t buf_procs; gs_memory_t *bandlist_memory; byte *data; uint data_size; gx_band_params_t band_params; bool do_not_open_or_close_bandfiles; int is_printer; gx_bits_cache_chunk chunk; gx_bits_cache bits; uint tile_hash_mask; uint tile_band_mask_size; tile_hash *tile_table; int ymin, ymax; gx_band_page_info_t page_info; int nbands; int64_t trans_dev_icc_hash; clist_icctable_t *icc_table; gsicc_link_cache_t *icc_cache_cl; int icc_cache_list_len; gsicc_link_cache_t **icc_cache_list;
} gx_device_clist_common;
# 274 "./base/gxclist.h"
typedef struct clist_writer_cropping_buffer_s clist_writer_cropping_buffer_t;

struct clist_writer_cropping_buffer_s {
    int cropping_min, cropping_max;
    uint mask_id, temp_mask_id;
    clist_writer_cropping_buffer_t *next;
};







typedef struct clist_icc_color_s {
    int64_t icc_hash;
    byte icc_num_components;
    bool is_lab;
    gsicc_profile_t default_match;
    gsicc_colorbuffer_t data_cs;
} clist_icc_color_t;

typedef struct clist_color_space_s {
    byte byte1;
    gs_id id;
    clist_icc_color_t icc_info;
    const gs_color_space *space;
} clist_color_space_t;

struct gx_device_clist_writer_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; gx_device_buf_procs_t buf_procs; gs_memory_t *bandlist_memory; byte *data; uint data_size; gx_band_params_t band_params; bool do_not_open_or_close_bandfiles; int is_printer; gx_bits_cache_chunk chunk; gx_bits_cache bits; uint tile_hash_mask; uint tile_band_mask_size; tile_hash *tile_table; int ymin, ymax; gx_band_page_info_t page_info; int nbands; int64_t trans_dev_icc_hash; clist_icctable_t *icc_table; gsicc_link_cache_t *icc_cache_cl; int icc_cache_list_len; gsicc_link_cache_t **icc_cache_list;
    int error_code;
    gx_clist_state *states;
    byte *cbuf;
    byte *cnext;
    byte *cend;
    cmd_list *ccl;
    cmd_list band_range_list;
    int band_range_min, band_range_max;
    uint tile_max_size;
    uint tile_max_count;
    gx_strip_bitmap tile_params;
    int tile_depth;
    int tile_known_min, tile_known_max;







    gs_imager_state imager_state;
    bool pdf14_needed;


    int pdf14_trans_group_level;
    int pdf14_smask_level;
    bool page_pdf14_needed;

    float dash_pattern[11];
    const gx_clip_path *clip_path;

    gs_id clip_path_id;
    clist_color_space_t color_space;

    gs_id transfer_ids[4];
    gs_id black_generation_id;
    gs_id undercolor_removal_id;
    gs_id device_halftone_id;
    gs_id image_enum_id;

    int error_is_retryable;


    int permanent_error;
    int driver_call_nesting;
    int ignore_lo_mem_warnings;

    int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current);
    int disable_mask;
    gs_pattern1_instance_t *pinst;
    int cropping_min, cropping_max;
    int save_cropping_min, save_cropping_max;
    bool cropping_saved;
    int cropping_level;
    clist_writer_cropping_buffer_t *cropping_stack;
    ulong ins_count;
    uint mask_id_count;
    uint mask_id;
    uint temp_mask_id;
    bool is_fillpage;
    gx_device_color_info clist_color_info;






};
# 390 "./base/gxclist.h"
typedef struct clist_render_thread_control_s clist_render_thread_control_t;




typedef struct gx_device_clist_reader_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; gx_device_buf_procs_t buf_procs; gs_memory_t *bandlist_memory; byte *data; uint data_size; gx_band_params_t band_params; bool do_not_open_or_close_bandfiles; int is_printer; gx_bits_cache_chunk chunk; gx_bits_cache bits; uint tile_hash_mask; uint tile_band_mask_size; tile_hash *tile_table; int ymin, ymax; gx_band_page_info_t page_info; int nbands; int64_t trans_dev_icc_hash; clist_icctable_t *icc_table; gsicc_link_cache_t *icc_cache_cl; int icc_cache_list_len; gsicc_link_cache_t **icc_cache_list;
    gx_render_plane_t yplane;

    const gx_placed_page *pages;
    gx_color_usage_t *color_usage_array;
    int num_pages;
    void *offset_map;
    int num_render_threads;
    clist_render_thread_control_t *render_threads;
    byte *main_thread_data;
    int curr_render_thread;
    int thread_lookahead_direction;
    int next_band;

} gx_device_clist_reader;

union gx_device_clist_s {
    gx_device_clist_common common;
    gx_device_clist_reader reader;
    gx_device_clist_writer writer;
};






extern const gs_memory_struct_type_t st_device_clist;
# 454 "./base/gxclist.h"
extern const gx_device_procs gs_clist_device_procs;

void clist_init_io_procs(gx_device_clist *pclist_dev, bool in_memory);


int clist_finish_page(gx_device * dev, bool flush);


int clist_close_output_file(gx_device *dev);





int clist_close_page_info(gx_band_page_info_t *ppi);




typedef struct gx_device_printer_s gx_device_printer;



int clist_setup_params(gx_device *dev);
# 490 "./base/gxclist.h"
int clist_render_rectangle(gx_device_clist *cdev,
                           const gs_int_rect *prect, gx_device *bdev,
                           const gx_render_plane_t *render_plane,
                           bool clear);



void clist_update_trans_bbox(gx_device_clist_writer *dev, gs_int_rect *bbox);



gx_device_clist *
clist_make_accum_device(gx_device *target, const char *dname, void *base, int space,
                        gx_device_buf_procs_t *buf_procs, gx_band_params_t *band_params,
                        bool use_memory_clist, bool uses_transparency,
                        gs_pattern1_instance_t *pinst);


int clist_data_size(const gx_device_clist *cdev, int select);

int clist_get_data(const gx_device_clist *cdev, int select, int64_t offset, byte *buf, int length);

int clist_put_data(const gx_device_clist *cdev, int select, int64_t offset, const byte *buf, int length);


int clist_write_color_usage_array(gx_device_clist_writer *cldev);



int clist_writer_color_usage(gx_device_clist_writer *cldev, int y, int height,
                     gx_color_usage_t *color_usage, int *range_start);




int clist_icc_writetable(gx_device_clist_writer *cldev);


int64_t clist_icc_addprofile(gx_device_clist_writer *cdev, cmm_profile_t *iccprofile, int *iccsize);


bool clist_icc_searchtable(gx_device_clist_writer *cdev, int64_t hashcode);


int clist_icc_addentry(gx_device_clist_writer *cdev, int64_t hashcode,
                       cmm_profile_t *icc_profile);


int clist_free_icc_table(clist_icctable_t *icc_table, gs_memory_t *memory);






int clist_read_chunk(gx_device_clist_reader *crdev, int64_t position, int size, unsigned char *buf);




int clist_render_init(gx_device_clist *dev);

int
clist_close_writer_and_init_reader(gx_device_clist *cldev);

void
clist_select_render_plane(gx_device *dev, int y, int height,
                          gx_render_plane_t *render_plane, int index);

int clist_rasterize_lines(gx_device *dev, int y, int lineCount,
                                  gx_device *bdev,
                                  const gx_render_plane_t *render_plane,
                                  int *pmy);


int
clist_enable_multi_thread_render(gx_device *dev);


void
clist_teardown_render_threads(gx_device *dev);
# 32 "./base/gdevprn.h" 2
# 1 "./base/gxclthrd.h" 1
# 31 "./base/gxclthrd.h"
gx_device * setup_device_and_mem_for_thread(gs_memory_t *chunk_base_mem, gx_device *dev, bool bg_print, gsicc_link_cache_t **cachep);





void teardown_device_and_mem_for_thread(gx_device *dev, gp_thread_id thread_id, bool bg_print);


typedef enum {
    THREAD_ERROR = -1,
    THREAD_IDLE = 0,
    THREAD_DONE = 1,
    THREAD_BUSY = 2
} thread_status;






struct clist_render_thread_control_s {
    thread_status status;

    gs_memory_t *memory;
    gx_semaphore_t *sema_this;
    gx_semaphore_t *sema_group;
    gx_device *cdev;
    gx_device *bdev;
    int band;
    gp_thread_id thread;


    gx_process_page_options_t *options;
    void *buffer;



};
# 33 "./base/gdevprn.h" 2
# 1 "./base/gxclpage.h" 1
# 25 "./base/gxclpage.h"
typedef struct gx_saved_pages_list_element_s gx_saved_pages_list_element;

struct gx_saved_pages_list_element_s {
    int sequence_number;
    gx_saved_pages_list_element *prev;
    gx_saved_pages_list_element *next;
    gx_saved_page *page;
};

typedef struct gx_saved_pages_list_s {
    int PageCount;
    int count;
    int collated_copies;
    int save_banding_type;
    gx_saved_pages_list_element *head;
    gx_saved_pages_list_element *tail;
    gs_memory_t *mem;
} gx_saved_pages_list;
# 54 "./base/gxclpage.h"
int gdev_prn_save_page(gx_device_printer * pdev, gx_saved_page * page);
# 71 "./base/gxclpage.h"
int gdev_prn_render_pages(gx_device_printer * pdev,
                          const gx_placed_page * ppages, int count);




gx_saved_pages_list *gx_saved_pages_list_new(gx_device_printer *);
# 86 "./base/gxclpage.h"
int gx_saved_pages_list_add(gx_device_printer * pdev);




void gx_saved_pages_list_free(gx_saved_pages_list *list);





int gx_saved_pages_param_process(gx_device_printer *pdev, byte *param, int param_size);
# 113 "./base/gxclpage.h"
int gx_saved_pages_list_print(gx_device_printer *pdev, gx_saved_pages_list *list,
                              byte *control, int control_size, int *printed_count);
# 34 "./base/gdevprn.h" 2
# 58 "./base/gdevprn.h"
typedef struct gdev_space_params_s gdev_prn_space_params;





typedef struct gdev_banding_type gdev_prn_banding_type;



typedef struct gdev_prn_start_render_params_s gdev_prn_start_render_params;




typedef struct gx_page_queue_s gx_page_queue_t;





typedef struct gx_printer_device_procs_s {
# 89 "./base/gdevprn.h"
    int (*print_page)(gx_device_printer *, FILE *);







    int (*print_page_copies)(gx_device_printer *, FILE *, int);
# 106 "./base/gdevprn.h"
    gx_device_buf_procs_t buf_procs;
# 121 "./base/gdevprn.h"
    void (*get_space_params)(const gx_device_printer *, gdev_prn_space_params *);
# 137 "./base/gdevprn.h"
    int (*start_render_thread)(gdev_prn_start_render_params *);
# 152 "./base/gdevprn.h"
    int (*open_render_device)(gx_device_printer *);



    int (*close_render_device)(gx_device_printer *);
# 177 "./base/gdevprn.h"
    int (*buffer_page)(gx_device_printer *, FILE *, int);

} gx_printer_device_procs;
# 190 "./base/gdevprn.h"
typedef struct bg_print_s {
    gx_semaphore_t *sema;
    gx_device *device;
    gp_thread_id thread_id;
    int num_copies;
    int return_code;
} bg_print_t;
# 234 "./base/gdevprn.h"
struct gx_device_printer_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
    byte skip[(((sizeof(gx_device_memory)) > (sizeof(gx_device_clist))) ? (sizeof(gx_device_memory)) : (sizeof(gx_device_clist))) - sizeof(gx_device) + sizeof(double) ]; gx_printer_device_procs printer_procs; char fname[4096]; bool BLS_force_memory; bool OpenOutputFile; bool ReopenPerPage; bool Duplex; int Duplex_set; bool file_is_new; FILE *file; long buffer_space; byte *buf; gs_memory_t *buffer_memory; gs_memory_t *bandlist_memory; int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current); gx_page_queue_t *page_queue; bool is_async_renderer; gx_device_printer *async_renderer; uint clist_disable_mask; bool bg_print_requested; bg_print_t bg_print; int num_render_threads_requested; gx_saved_pages_list *saved_pages_list; gx_device_procs save_procs_while_delaying_erasepage; gx_device_procs orig_procs;
};




extern const gs_memory_struct_type_t st_device_printer;






typedef int (*dev_proc_print_page_t)(gx_device_printer *, FILE *);


int gdev_prn_open(gx_device *dev);
int gdev_prn_output_page(gx_device *dev, int num_copies, int flush);
int gdev_prn_output_page_seekable(gx_device *dev, int num_copies, int flush);
int gdev_prn_bg_output_page(gx_device *dev, int num_copies, int flush);
int gdev_prn_bg_output_page_seekable(gx_device *dev, int num_copies, int flush);
int gdev_prn_close(gx_device *dev);


int gdev_prn_get_params(gx_device *dev, gs_param_list *plist);
int gdev_prn_put_params(gx_device *dev, gs_param_list *plist);
int gdev_prn_forwarding_dev_spec_op(gx_device *dev, int op, void *data, int datasize);
int gdev_prn_dev_spec_op(gx_device *dev, int op, void *data, int datasize);



void gx_default_get_space_params(const gx_device_printer *, gdev_prn_space_params *);


int gx_default_start_render_thread(gdev_prn_start_render_params *);
int gx_default_open_render_device(gx_device_printer *);
int gx_default_close_render_device(gx_device_printer *);
int gx_default_buffer_page(gx_device_printer *, FILE *, int);
# 361 "./base/gdevprn.h"
extern const gx_device_procs prn_std_procs;
extern const gx_device_procs prn_bg_procs;
# 526 "./base/gdevprn.h"
int gdev_prn_open_printer_seekable(gx_device *dev, bool binary_mode,
                                   bool seekable);



int gdev_prn_open_printer(gx_device * dev, bool binary_mode);





bool gdev_prn_file_is_new(const gx_device_printer *pdev);
# 559 "./base/gdevprn.h"
int gdev_prn_color_usage(gx_device *dev, int y, int height,
                         gx_color_usage_t *color_usage,
                         int *range_start);





int gx_page_info_color_usage(const gx_device *dev,
                             const gx_band_page_info_t *page_info,
                             int y, int height,
                             gx_color_usage_t *color_usage,
                             int *range_start);
# 595 "./base/gdevprn.h"
int gdev_prn_render_rectangle(gx_device_printer *pdev,
                              const gs_int_rect *prect,
                              gx_device *target,
                              const gx_render_plane_t *render_plane,
                              bool clear);
# 617 "./base/gdevprn.h"
int gdev_prn_get_lines(gx_device_printer *pdev, int y, int height,
                       byte *buffer, uint bytes_per_line,
                       byte **actual_buffer, uint *actual_bytes_per_line,
                       const gx_render_plane_t *render_plane);






int gdev_prn_get_bits(gx_device_printer *pdev, int y, byte *buffer,
                      byte **actual_buffer);







int gdev_prn_copy_scan_lines(gx_device_printer *, int, byte *, uint);







void gdev_prn_clear_trailing_bits(byte *data, uint raster, int height,
                                  const gx_device *dev);




int gdev_prn_close_printer(gx_device *);


int gx_print_page_single_copy(gx_device_printer *, FILE *);





int gx_default_print_page_copies(gx_device_printer *, FILE *, int);





int gdev_prn_print_scan_lines(gx_device *);


int gdev_prn_allocate_memory(gx_device *pdev,
                             gdev_prn_space_params *space,
                             int new_width, int new_height);
int gdev_prn_reallocate_memory(gx_device *pdev,
                               gdev_prn_space_params *space,
                               int new_width, int new_height);
int gdev_prn_free_memory(gx_device *pdev);







typedef int (*create_buf_device_proc_t)(gx_device **pbdev, gx_device *target, int y, const gx_render_plane_t *render_plane, gs_memory_t *mem, gx_color_usage_t *color_usage);
int gdev_create_buf_device(create_buf_device_proc_t cbd_proc,
                           gx_device **pbdev, gx_device *target, int y,
                           const gx_render_plane_t *render_plane,
                           gs_memory_t *mem, gx_color_usage_t *color_usage);
# 701 "./base/gdevprn.h"
int gdev_prn_initialize(gx_device *, const char *, int (*)(gx_device_printer *, FILE *));
void gdev_prn_init_color(gx_device *, int, gx_color_index (*)(gx_device *dev, const gx_color_value cv[]), int (*)(gx_device *dev, gx_color_index color, gx_color_value rgb[3]));
# 41 "./base/gdevp14.c" 2
# 1 "./base/gsovrc.h" 1
# 223 "./base/gsovrc.h"
struct gs_overprint_params_s {
# 239 "./base/gsovrc.h"
    bool retain_any_comps;
# 263 "./base/gsovrc.h"
    bool retain_spot_comps;





    bool idle;
# 278 "./base/gsovrc.h"
    gx_color_index drawn_comps;







    unsigned short k_value;




    bool blendspot;
};






typedef struct gs_overprint_s {
    const gs_composite_type_t *type; gs_id id; bool idle; struct gs_composite_s *prev, *next;
    gs_overprint_params_t params;
} gs_overprint_t;
# 332 "./base/gsovrc.h"
extern const gs_memory_struct_type_t st_overprint_params;







extern int gs_create_overprint(
    gs_composite_t ** ppct,
    const gs_overprint_params_t * pparams,
    gs_memory_t * mem );


extern bool gs_is_overprint_compositor(const gs_composite_t * pct);
# 42 "./base/gdevp14.c" 2

# 1 "./base/gscolor1.h" 1
# 24 "./base/gscolor1.h"
int gs_setcmykcolor(gs_state *, double, double, double, double),
    gs_currentcmykcolor(const gs_state *, float[4]),
    gs_setblackgeneration(gs_state *, gs_mapping_proc),
    gs_setblackgeneration_remap(gs_state *, gs_mapping_proc, bool);
gs_mapping_proc gs_currentblackgeneration(const gs_state *);
int gs_setundercolorremoval(gs_state *, gs_mapping_proc),
    gs_setundercolorremoval_remap(gs_state *, gs_mapping_proc, bool);
gs_mapping_proc gs_currentundercolorremoval(const gs_state *);


int gs_setcolortransfer(gs_state *, gs_mapping_proc ,
                        gs_mapping_proc ,
                        gs_mapping_proc ,
                        gs_mapping_proc ),
    gs_setcolortransfer_remap(gs_state *, gs_mapping_proc ,
                              gs_mapping_proc ,
                              gs_mapping_proc ,
                              gs_mapping_proc , bool);
void gs_currentcolortransfer(const gs_state *, gs_mapping_proc[4]);
# 44 "./base/gdevp14.c" 2


# 1 "./base/gxcldev.h" 1
# 24 "./base/gxcldev.h"
# 1 "./base/gxht.h" 1
# 22 "./base/gxht.h"
# 1 "./base/gsht1.h" 1
# 25 "./base/gsht1.h"
int gs_setcolorscreen(gs_state *, gs_colorscreen_halftone *);
int gs_currentcolorscreen(gs_state *, gs_colorscreen_halftone *);
# 47 "./base/gsht1.h"
int gs_sethalftone(gs_state *, gs_halftone *);
int gs_sethalftone_allocated(gs_state *, gs_halftone *);
int gs_currenthalftone(gs_state *, gs_halftone *);
# 23 "./base/gxht.h" 2

# 1 "./base/gxhttype.h" 1
# 23 "./base/gxhttype.h"
typedef enum {
    ht_type_none,
    ht_type_screen,
    ht_type_colorscreen,
    ht_type_spot,
    ht_type_threshold,
    ht_type_threshold2,



    ht_type_multiple,
    ht_type_multiple_colorscreen,


    ht_type_client_order
} gs_halftone_type;
# 25 "./base/gxht.h" 2
# 70 "./base/gxht.h"
typedef struct gs_spot_halftone_s {
    gs_screen_halftone screen;
    bool accurate_screens;
    gs_mapping_proc transfer;
    gs_mapping_closure_t transfer_closure;
} gs_spot_halftone;
# 84 "./base/gxht.h"
typedef struct gs_threshold_halftone_common_s {
    int width; int height; gs_mapping_closure_t transfer_closure;
} gs_threshold_halftone_common;


typedef struct gs_threshold_halftone_s {
    int width; int height; gs_mapping_closure_t transfer_closure;
    gs_const_string thresholds;
    gs_mapping_proc transfer;
} gs_threshold_halftone;




typedef struct gs_threshold2_halftone_s {
    int width; int height; gs_mapping_closure_t transfer_closure;
    int width2;
    int height2;
    int bytes_per_sample;
    gs_const_bytestring thresholds;
} gs_threshold2_halftone;


typedef struct gs_client_order_halftone_s gs_client_order_halftone;



typedef struct gx_ht_order_s gx_ht_order;

typedef struct gs_client_order_ht_procs_s {






    int (*create_order) (gx_ht_order * porder,
                         gs_state * pgs,
                         const gs_client_order_halftone * phcop,
                         gs_memory_t * mem);

} gs_client_order_ht_procs_t;
struct gs_client_order_halftone_s {
    int width;
    int height;
    int num_levels;
    const gs_client_order_ht_procs_t *procs;
    const void *client_data;
    gs_mapping_closure_t transfer_closure;
};




typedef struct gs_halftone_component_s {
    int comp_number;
    int cname;
    gs_halftone_type type;
    union {
        gs_spot_halftone spot;
        gs_threshold_halftone threshold;
        gs_threshold2_halftone threshold2;
        gs_client_order_halftone client_order;
    } params;
} gs_halftone_component;

extern const gs_memory_struct_type_t st_halftone_component;




extern const gs_memory_struct_type_t st_ht_component_element;
# 165 "./base/gxht.h"
typedef struct gs_multiple_halftone_s {
    gs_halftone_component *components;
    uint num_comp;
    int (*get_colorname_string)(const gs_memory_t *mem, gs_separation_name colorname_index,
                unsigned char **ppstr, unsigned int *pname_size);
} gs_multiple_halftone;
# 183 "./base/gxht.h"
struct gs_halftone_s {
    gs_halftone_type type;
    rc_header rc;
    union {
        gs_screen_halftone screen;
        gs_colorscreen_halftone colorscreen;
        gs_spot_halftone spot;
        gs_threshold_halftone threshold;
        gs_threshold2_halftone threshold2;
        gs_client_order_halftone client_order;
        gs_multiple_halftone multiple;
    } params;
};

extern const gs_memory_struct_type_t st_halftone;
# 212 "./base/gxht.h"
void gs_setaccuratescreens(gs_memory_t *, bool);
bool gs_currentaccuratescreens(gs_memory_t *);


int gs_screen_init_memory(gs_screen_enum *, gs_state *,
                          gs_screen_halftone *, bool, gs_memory_t *);
# 227 "./base/gxht.h"
void gs_setminscreenlevels(gs_memory_t *, uint);
uint gs_currentminscreenlevels(gs_memory_t *);
# 25 "./base/gxcldev.h" 2

# 1 "./base/gxdht.h" 1
# 76 "./base/gxdht.h"
typedef struct gx_ht_cell_params_s {



    short M, N, R;
    short M1, N1, R1;

    ulong C;
    short D, D1;
    uint W, W1;
    int S;
} gx_ht_cell_params_t;


void gx_compute_cell_values(gx_ht_cell_params_t *);
# 111 "./base/gxdht.h"
typedef uint ht_mask_t;


typedef struct gx_ht_bit_s {
    uint offset;
    ht_mask_t mask;
} gx_ht_bit;


typedef ht_mask_t ht_sample_t;
# 155 "./base/gxdht.h"
typedef struct gx_ht_cache_s gx_ht_cache;
# 164 "./base/gxdht.h"
typedef struct gx_ht_order_procs_s {



    uint bit_data_elt_size;





    int (*construct_order)(gx_ht_order *order, const byte *thresholds);



    int (*bit_index)(const gx_ht_order *order, uint index,
                     gs_int_point *ppt);



    int (*render)(gx_ht_tile *tile, int new_bit_level,
                  const gx_ht_order *order);




    int (*draw)(gx_ht_order *order, frac shade,
                byte *data, int data_raster,
                int x, int y, int w, int h);

} gx_ht_order_procs_t;




extern const gx_ht_order_procs_t ht_order_procs_table[2];



typedef struct gx_ht_order_screen_params_s {
    gs_matrix matrix;
    ulong max_size;
} gx_ht_order_screen_params_t;
struct gx_ht_order_s {
    gx_ht_cell_params_t params;
    ushort width;
    ushort height;
    ushort raster;
    ushort shift;
    ushort orig_height;
    ushort orig_shift;
    uint full_height;
    uint num_levels;
    uint num_bits;
    const gx_ht_order_procs_t *procs;
    gs_memory_t *data_memory;
    uint *levels;
    void *bit_data;
    gx_ht_cache *cache;
    gx_transfer_map *transfer;
    gx_ht_order_screen_params_t screen_params;
    byte *threshold;
    bool threshold_inverts;
};
# 236 "./base/gxdht.h"
extern const gs_memory_struct_type_t st_ht_order;
# 261 "./base/gxdht.h"
typedef struct gx_ht_order_component_s {
    gx_ht_order corder;
    int comp_number;
    int cname;
} gx_ht_order_component;







extern const gs_memory_struct_type_t st_ht_order_component_element;
# 289 "./base/gxdht.h"
struct gx_device_halftone_s {
    gx_ht_order order;
    rc_header rc;
    gs_id id;




    gs_halftone_type type;
    gx_ht_order_component *components;

    uint num_comp;
    uint num_dev_comp;

    int lcm_width, lcm_height;

};

extern const gs_memory_struct_type_t st_device_halftone;







void gx_ht_complete_threshold_order(gx_ht_order *porder);



void gx_device_halftone_release(gx_device_halftone * pdht, gs_memory_t * mem);
# 27 "./base/gxcldev.h" 2
# 1 "./base/strimpl.h" 1
# 23 "./base/strimpl.h"
# 1 "./base/scommon.h" 1
# 46 "./base/scommon.h"
typedef int64_t gs_offset_t;






typedef struct stream_state_s stream_state;
# 62 "./base/scommon.h"
typedef struct stream_template_s stream_template;
# 99 "./base/scommon.h"
typedef struct stream_cursor_read_s {
    const byte *ptr;
    const byte *limit;
    byte *_skip;
} stream_cursor_read;
typedef struct stream_cursor_write_s {
    const byte *_skip;
    byte *ptr;
    byte *limit;
} stream_cursor_write;
typedef union stream_cursor_s {
    stream_cursor_read r;
    stream_cursor_write w;
} stream_cursor;
# 146 "./base/scommon.h"
int s_no_report_error(stream_state *, const char *);
# 177 "./base/scommon.h"
struct stream_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];
};

extern const gs_memory_struct_type_t st_stream_state;
# 24 "./base/strimpl.h" 2
# 126 "./base/strimpl.h"
struct stream_template_s {


    gs_memory_type_ptr_t stype;


    int (*init)(stream_state *);



    int (*process)(stream_state *, stream_cursor_read *, stream_cursor_write *, bool);


    uint min_in_size;
    uint min_out_size;


    void (*release)(stream_state *);



    void (*set_defaults)(stream_state *);


    int (*reinit)(stream_state *);

};


int stream_move(stream_cursor_read *, stream_cursor_write *);


typedef enum {
    hex_ignore_garbage = 0,
    hex_ignore_whitespace = 1,
    hex_ignore_leading_whitespace = 2,
    hex_break_on_whitespace = 3
} hex_syntax;
int s_hex_process(stream_cursor_read *, stream_cursor_write *, int *, hex_syntax);
# 28 "./base/gxcldev.h" 2
# 1 "./base/scfx.h" 1
# 23 "./base/scfx.h"
# 1 "./base/shc.h" 1
# 22 "./base/shc.h"
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
# 23 "./base/shc.h" 2
# 47 "./base/shc.h"
typedef struct hc_definition_s {
    ushort *counts;
    uint num_counts;
    ushort *values;
    uint num_values;
} hc_definition;
# 73 "./base/shc.h"
typedef struct stream_hc_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; bool FirstBitLowOrder; uint bits; int bits_left;
} stream_hc_state;
# 86 "./base/shc.h"
typedef struct hce_code_s {
    ushort code;
    ushort code_length;
} hce_code;



typedef struct hce_table_s {
    uint count;
    hce_code *codes;
} hce_table;
# 135 "./base/shc.h"
void hc_put_code_proc(bool, byte *, uint);
# 152 "./base/shc.h"
byte *hc_put_last_bits_proc(stream_hc_state *, byte *, uint, int);
# 171 "./base/shc.h"
typedef struct hcd_code_s {
    short value;
    ushort code_length;
} hcd_code;

typedef struct hcd_table_s {
    uint count;
    uint initial_bits;
    hcd_code *codes;
} hcd_table;
# 24 "./base/scfx.h" 2
# 48 "./base/scfx.h"
typedef struct stream_CF_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; bool FirstBitLowOrder; uint bits; int bits_left; bool Uncompressed; int K; bool EndOfLine; bool EncodedByteAlign; int Columns; int Rows; bool EndOfBlock; bool BlackIs1; int DamagedRowsBeforeError; int DecodedByteAlign; uint raster; byte *lbuf; byte *lprev; int k_left;
} stream_CF_state;
# 73 "./base/scfx.h"
typedef struct stream_CFE_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; bool FirstBitLowOrder; uint bits; int bits_left; bool Uncompressed; int K; bool EndOfLine; bool EncodedByteAlign; int Columns; int Rows; bool EndOfBlock; bool BlackIs1; int DamagedRowsBeforeError; int DecodedByteAlign; uint raster; byte *lbuf; byte *lprev; int k_left;

    int max_code_bytes;
    byte *lcode;

    int read_count;
    int write_count;
    int code_bytes;
} stream_CFE_state;






extern const stream_template s_CFE_template;


typedef struct stream_CFD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; bool FirstBitLowOrder; uint bits; int bits_left; bool Uncompressed; int K; bool EndOfLine; bool EncodedByteAlign; int Columns; int Rows; bool EndOfBlock; bool BlackIs1; int DamagedRowsBeforeError; int DecodedByteAlign; uint raster; byte *lbuf; byte *lprev; int k_left;
    int cbit;

    int rows_left;
    int row;
    int rpos;
    int wpos;

    int eol_count;
    byte invert;
    int run_color;



    int damaged_rows;

    bool skipping_damage;


    int uncomp_run;


    int uncomp_left;
    int uncomp_exit;

} stream_CFD_state;






extern const stream_template s_CFD_template;
# 29 "./base/gxcldev.h" 2
# 1 "./base/srlx.h" 1
# 29 "./base/srlx.h"
typedef struct stream_RLE_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; bool EndOfData;

    ulong record_size;

    ulong record_left;
    int copy_left;
} stream_RLE_state;
# 49 "./base/srlx.h"
extern const stream_template s_RLE_template;


typedef struct stream_RLD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; bool EndOfData;

    int copy_left;
    int copy_data;
} stream_RLD_state;
# 67 "./base/srlx.h"
extern const stream_template s_RLD_template;
# 30 "./base/gxcldev.h" 2
# 44 "./base/gxcldev.h"
void clist_rle_init(stream_RLE_state *ss);
void clist_rld_init(stream_RLD_state *ss);
void clist_cfe_init(stream_CFE_state *ss, int width, gs_memory_t *mem);
void clist_cfd_init(stream_CFD_state *ss, int width, int height,
                    gs_memory_t *mem);
# 57 "./base/gxcldev.h"
int cmd_write_pseudo_band(gx_device_clist_writer *cldev, unsigned char *pbuf,
                          int data_size, int pseudo_band_offset);
# 72 "./base/gxcldev.h"
typedef enum {
    cmd_op_misc = 0x00,
    cmd_opv_end_run = 0x00,
    cmd_opv_set_tile_size = 0x01,



    cmd_opv_set_tile_phase = 0x02,
    cmd_opv_set_tile_bits = 0x03,
    cmd_opv_set_bits = 0x04,

    cmd_opv_set_tile_color = 0x05,

    cmd_opv_set_misc = 0x06,





    cmd_opv_enable_lop = 0x07,
    cmd_opv_disable_lop = 0x08,
    cmd_opv_end_page = 0x0b,
    cmd_opv_delta_color0 = 0x0c,
    cmd_opv_delta_color1 = 0x0d,
    cmd_opv_set_copy_color = 0x0e,
    cmd_opv_set_copy_alpha = 0x0f,
    cmd_op_set_color0 = 0x10,

    cmd_op_set_color1 = 0x20,
    cmd_op_fill_rect = 0x30,
    cmd_op_fill_rect_short = 0x40,
    cmd_op_fill_rect_tiny = 0x50,
    cmd_op_tile_rect = 0x60,
    cmd_op_tile_rect_short = 0x70,
    cmd_op_tile_rect_tiny = 0x80,
    cmd_op_copy_mono_planes = 0x90,







    cmd_op_copy_color_alpha = 0xa0,



    cmd_op_delta_tile_index = 0xb0,
    cmd_op_set_tile_index = 0xc0
} gx_cmd_op;
# 161 "./base/gxcldev.h"
typedef struct {
    int x, y, width, height;
} gx_cmd_rect;


typedef struct {
    byte dx, dwidth, dy, dheight;
} gx_cmd_rect_short;






typedef struct {
    unsigned dx:4;
    unsigned dy:4;
} gx_cmd_rect_tiny;
# 231 "./base/gxcldev.h"
uint clist_bitmap_bytes(uint width_bits, uint height,
                        int compression_mask,
                        uint * width_bytes, uint * raster);
# 244 "./base/gxcldev.h"
typedef struct cmd_block_s {
    int band_min, band_max;

    int64_t pos;
} cmd_block;




struct gx_clist_state_s {
    gx_color_index colors[2];
    gx_device_color_saved sdc;
    uint tile_index;
    gx_bitmap_id tile_id;







    gs_id pattern_id;
    gs_int_point tile_phase;
    gx_color_index tile_colors[2];
    gx_device_color tile_color_devn[2];
    gx_cmd_rect rect;
    gs_logical_operation_t lop;
    short lop_enabled;

    short clip_enabled;

    bool color_is_alpha;
    bool color_is_devn;
    uint known;







    cmd_list list;

    gx_color_usage_t color_usage;
};
# 314 "./base/gxcldev.h"
int clist_fillpage(gx_device *dev, gs_imager_state * pis, gx_device_color *pdevc);
int clist_fill_rectangle(gx_device *dev, int x, int y, int width, int height, gx_color_index color);
int clist_copy_mono(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
int clist_copy_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
int clist_copy_alpha(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);
int clist_strip_tile_rectangle(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y);
int clist_strip_tile_rect_devn(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, const gx_drawing_color *pdcolor0, const gx_drawing_color *pdcolor1, int phase_x, int phase_y);
int clist_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
int clist_strip_copy_rop2(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop, uint planar_height);
int clist_fill_trapezoid(gx_device *dev, const gs_fixed_edge *left, const gs_fixed_edge *right, fixed ybot, fixed ytop, bool swap_axes, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int clist_fill_linear_color_trapezoid(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const gs_fixed_point *p3, const frac31 *c0, const frac31 *c1, const frac31 *c2, const frac31 *c3);
int clist_fill_linear_color_triangle(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const frac31 *c0, const frac31 *c1, const frac31 *c2);
int clist_dev_spec_op(gx_device *dev, int op, void *data, int datasize);
int clist_copy_planes(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, int plane_height);
int clist_fill_rectangle_hl_color(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int clist_copy_alpha_hl_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth);
int clist_process_page(gx_device *dev, gx_process_page_options_t *options);


int clist_fill_mask(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath);
int clist_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
int clist_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);


int clist_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);
# 401 "./base/gxcldev.h"
int clist_VMerror_recover(gx_device_clist_writer *, int);
int clist_VMerror_recover_flush(gx_device_clist_writer *, int);


int cmd_put_params(gx_device_clist_writer *, gs_param_list *);
# 421 "./base/gxcldev.h"
byte *cmd_put_list_op(gx_device_clist_writer * cldev, cmd_list * pcl, uint size);




int cmd_get_buffer_space(gx_device_clist_writer * cldev, gx_clist_state * pcls, uint size);
# 441 "./base/gxcldev.h"
byte *cmd_put_range_op(gx_device_clist_writer * cldev, int band_min,
                       int band_max, uint size);
# 464 "./base/gxcldev.h"
int cmd_write_buffer(gx_device_clist_writer * cldev, byte cmd_end);


int clist_end_page(gx_device_clist_writer *);




int cmd_size_w(uint);
# 485 "./base/gxcldev.h"
byte *cmd_put_w(uint, byte *);
# 496 "./base/gxcldev.h"
int cmd_size_frac31(register frac31 w);
byte * cmd_put_frac31(register frac31 w, register byte * dp);


typedef struct {
    byte set_op;
    byte delta_op;
    bool tile_color;
    bool devn;
} clist_select_color_t;

extern const clist_select_color_t
      clist_select_color0, clist_select_color1, clist_select_tile_color0,
      clist_select_tile_color1, clist_select_devn_color0,
      clist_select_devn_color1;


int cmd_put_color(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                  const clist_select_color_t * select,
                  gx_color_index color, gx_color_index * pcolor);

extern const gx_color_index cmd_delta_offsets[];







int cmd_set_tile_colors(gx_device_clist_writer *cldev, gx_clist_state * pcls,
                        gx_color_index color0, gx_color_index color1);


int
cmd_set_tile_phase_generic(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                   int px, int py, bool all_bands);
int cmd_set_tile_phase(gx_device_clist_writer *cldev, gx_clist_state * pcls,
                       int px, int py);


int cmd_put_enable_lop(gx_device_clist_writer *, gx_clist_state *, int);
# 547 "./base/gxcldev.h"
int cmd_put_enable_clip(gx_device_clist_writer *, gx_clist_state *, int);
# 559 "./base/gxcldev.h"
int cmd_set_lop(gx_device_clist_writer *, gx_clist_state *,
                gs_logical_operation_t);



int cmd_update_lop(gx_device_clist_writer *, gx_clist_state *,
                   gs_logical_operation_t);
# 634 "./base/gxcldev.h"
typedef struct cmd_rects_enum_s {
        int y;
        int height;
        int yend;
        int band_height;
        int band_code;
        int band;
        gx_clist_state *pcls;
        int band_end;
        int rect_nbands;
} cmd_rects_enum_t;
# 663 "./base/gxcldev.h"
const byte *cmd_read_matrix(gs_matrix * pmat, const byte * cbp);




int cmd_write_rect_cmd(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                       int op, int x, int y, int width, int height);

int cmd_write_rect_hl_cmd(gx_device_clist_writer * cldev,
                             gx_clist_state * pcls, int op, int x, int y,
                             int width, int height, bool extended_command);

int cmd_write_page_rect_cmd(gx_device_clist_writer * cldev, int op);
# 701 "./base/gxcldev.h"
int cmd_put_bits(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                 const byte * data, uint width_bits, uint height,
                 uint raster, int op_size, int compression_mask,
                 byte ** pdp, uint * psize);






typedef enum {
    cmd_map_transfer = 0,
    cmd_map_transfer_0,
    cmd_map_transfer_1,
    cmd_map_transfer_2,
    cmd_map_transfer_3,
    cmd_map_black_generation,
    cmd_map_undercolor_removal
} cmd_map_index;
typedef enum {
    cmd_map_none = 0,
    cmd_map_identity,
    cmd_map_other
} cmd_map_contents;
int cmd_put_color_map(gx_device_clist_writer * cldev,
                      cmd_map_index map_index, int comp_num,
                      const gx_transfer_map * map, gs_id * pid);





int clist_change_tile(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                      const gx_strip_bitmap * tiles, int depth);





int clist_change_bits(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                      const gx_strip_bitmap * tiles, int depth);






int cmd_put_color_mapping(gx_device_clist_writer * cldev,
                                  const gs_imager_state * pis);




int cmd_put_halftone(gx_device_clist_writer * cldev,
                     const gx_device_halftone * pdht);







typedef enum {
    playback_action_render,
    playback_action_render_no_pdf14,
    playback_action_setup
} clist_playback_action;


int clist_playback_band(clist_playback_action action,
                        gx_device_clist_reader *cdev,
                        stream *s, gx_device *target,
                        int x0, int y0, gs_memory_t *mem);


int clist_playback_file_bands(clist_playback_action action,
                          gx_device_clist_reader *crdev,
                          gx_band_page_info_t *page_info, gx_device *target,
                          int band_first, int band_last, int x0, int y0);





int clist_writer_push_no_cropping(gx_device_clist_writer *cdev);
int clist_writer_push_cropping(gx_device_clist_writer *cdev, int ry, int rheight);
int clist_writer_pop_cropping(gx_device_clist_writer *cdev);
int clist_writer_check_empty_cropping_stack(gx_device_clist_writer *cdev);
int clist_read_icctable(gx_device_clist_reader *crdev);
int clist_read_color_usage_array(gx_device_clist_reader *crdev);



int cmd_write_icctable(gx_device_clist_writer * cldev, unsigned char *pbuf, int data_size);





typedef enum {

    COLOR_USAGE_OFFSET = 1,
    ICC_TABLE_OFFSET = 2

} psuedoband_offset;



typedef enum {
    ALLBANDS = 0,
    PUSHCROP,
    POPCROP,
    CURRBANDS,
    SAMEAS_PUSHCROP_BUTNOPUSH
} cl_crop_action;
# 47 "./base/gdevp14.c" 2
# 1 "./base/gxclpath.h" 1
# 52 "./base/gxclpath.h"
typedef enum {
    cmd_dc_type_pure = 0,
    cmd_dc_type_ht = 1,
    cmd_dc_type_color = 2
} cmd_dc_type;


typedef enum {
    cmd_op_misc2 = 0xd0,




    cmd_op_fill_rect_hl = 0xd1,
    cmd_opv_set_fill_adjust = 0xd2,
    cmd_opv_set_ctm = 0xd3,
    cmd_opv_set_color_space = 0xd4,
# 84 "./base/gxclpath.h"
    cmd_opv_set_misc2 = 0xd5,
    cmd_opv_set_dash = 0xd6,


    cmd_opv_enable_clip = 0xd7,
    cmd_opv_disable_clip = 0xd8,
    cmd_opv_begin_clip = 0xd9,
    cmd_opv_end_clip = 0xda,
    cmd_opv_begin_image_rect = 0xdb,

    cmd_opv_begin_image = 0xdc,

    cmd_opv_image_data = 0xdd,

    cmd_opv_image_plane_data = 0xde,



    cmd_opv_extend = 0xdf,
    cmd_op_segment = 0xe0,
    cmd_opv_rmoveto = 0xe0,
    cmd_opv_rlineto = 0xe1,
    cmd_opv_hlineto = 0xe2,
    cmd_opv_vlineto = 0xe3,
    cmd_opv_rmlineto = 0xe4,
    cmd_opv_rm2lineto = 0xe5,
    cmd_opv_rm3lineto = 0xe6,

    cmd_opv_rrcurveto = 0xe7,
      cmd_opv_min_curveto = cmd_opv_rrcurveto,
    cmd_opv_hvcurveto = 0xe8,
    cmd_opv_vhcurveto = 0xe9,
    cmd_opv_nrcurveto = 0xea,
    cmd_opv_rncurveto = 0xeb,
    cmd_opv_vqcurveto = 0xec,

    cmd_opv_hqcurveto = 0xed,


    cmd_opv_scurveto = 0xee,



      cmd_opv_max_curveto = cmd_opv_scurveto,
    cmd_opv_closepath = 0xef,
    cmd_op_path = 0xf0,
    cmd_opv_fill = 0xf0,
    cmd_opv_rgapto = 0xf1,
    cmd_opv_eofill = 0xf3,


    cmd_opv_stroke = 0xf6,


    cmd_opv_polyfill = 0xf9,


    cmd_opv_fill_trapezoid = 0xfc
} gx_cmd_xop;



typedef enum {
    devn_not_tile = 0x00,
    devn_tile0 = 0x01,
    devn_tile1 = 0x02
} dc_devn_cl_type;




typedef enum {
    cmd_opv_ext_put_params = 0x00,
    cmd_opv_ext_create_compositor = 0x01,

    cmd_opv_ext_put_halftone = 0x02,
    cmd_opv_ext_put_ht_seg = 0x03,

    cmd_opv_ext_put_drawing_color = 0x04,

    cmd_opv_ext_tile_rect_hl = 0x05,
    cmd_opv_ext_put_tile_devn_color0 = 0x6,
    cmd_opv_ext_put_tile_devn_color1 = 0x7,
    cmd_opv_ext_set_color_is_devn = 0x8,
    cmd_opv_ext_unset_color_is_devn = 0x9
} gx_cmd_ext_op;
# 213 "./base/gxclpath.h"
int clist_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int clist_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int clist_fill_parallelogram(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int clist_fill_triangle(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
# 232 "./base/gxclpath.h"
gx_color_usage_bits cmd_drawing_color_usage(gx_device_clist_writer *cldev,
                                            const gx_drawing_color *pdcolor);






bool cmd_slow_rop(gx_device *dev, gs_logical_operation_t lop,
                  const gx_drawing_color *pdcolor);



int cmd_put_drawing_color(gx_device_clist_writer * cldev,
                          gx_clist_state * pcls,
                          const gx_drawing_color * pdcolor,
                          cmd_rects_enum_t *pre, dc_devn_cl_type devn_type);



void cmd_clear_known(gx_device_clist_writer * cldev, uint known);


int cmd_write_ctm_return_length(gx_device_clist_writer * cldev, const gs_matrix *m);
int cmd_write_ctm_return_length_nodevice(const gs_matrix *m);

int cmd_write_ctm(const gs_matrix *m, byte *dp, int len);





int cmd_write_unknown(gx_device_clist_writer * cldev, gx_clist_state * pcls,
                      uint must_know);


bool cmd_check_clip_path(gx_device_clist_writer * cldev,
                         const gx_clip_path * pcpath);
# 48 "./base/gdevp14.c" 2
# 1 "./base/gxdcconv.h" 1
# 25 "./base/gxdcconv.h"
frac color_rgb_to_gray(frac r, frac g, frac b,
                       const gs_imager_state * pis);
void color_rgb_to_cmyk(frac r, frac g, frac b,
                       const gs_imager_state * pis, frac cmyk[4],
                       gs_memory_t * mem);
frac color_cmyk_to_gray(frac c, frac m, frac y, frac k,
                        const gs_imager_state * pis);
void color_cmyk_to_rgb(frac c, frac m, frac y, frac k,
                       const gs_imager_state * pis, frac rgb[3],
                       gs_memory_t * mem);
# 49 "./base/gdevp14.c" 2
# 1 "./base/vdtrace.h" 1
# 44 "./base/vdtrace.h"
typedef struct vd_trace_host_s vd_trace_host;
typedef struct vd_trace_interface_s vd_trace_interface;
struct gs_fixed_point_s;

struct vd_trace_interface_s {
    vd_trace_host *host;
    double scale_x, scale_y;
    double orig_x, orig_y;
    double shift_x, shift_y;
    double (*get_size_x)(vd_trace_interface *I);
    double (*get_size_y)(vd_trace_interface *I);
    void (*get_dc)(vd_trace_interface *I, vd_trace_interface **I1);
    void (*release_dc)(vd_trace_interface *I, vd_trace_interface **I1);
    void (*erase)(vd_trace_interface *I, unsigned long rgbcolor);
    void (*beg_path)(vd_trace_interface *I);
    void (*end_path)(vd_trace_interface *I);
    void (*moveto)(vd_trace_interface *I, double x, double y);
    void (*lineto)(vd_trace_interface *I, double x, double y);
    void (*curveto)(vd_trace_interface *I, double x0, double y0, double x1, double y1, double x2, double y2);
    void (*closepath)(vd_trace_interface *I);
    void (*circle)(vd_trace_interface *I, double x, double y, int r);
    void (*round)(vd_trace_interface *I, double x, double y, int r);
    void (*pixel)(vd_trace_interface *I, double x, double y, unsigned long rgbcolor);
    void (*fill)(vd_trace_interface *I);
    void (*stroke)(vd_trace_interface *I);
    void (*setcolor)(vd_trace_interface *I, unsigned long rgbcolor);
    void (*setlinewidth)(vd_trace_interface *I, unsigned int width);
    void (*text)(vd_trace_interface *I, double x, double y, char *ASCIIZ);
    void (*wait)(vd_trace_interface *I);
    void (*set_scale)(vd_trace_interface *I);
    void (*set_shift)(vd_trace_interface *I);
    void (*set_origin)(vd_trace_interface *I);
};

extern vd_trace_interface * vd_trace0;
extern vd_trace_interface * vd_trace1;
extern char vd_flags[];

void vd_impl_moveto(double x, double y);
void vd_impl_lineto(double x, double y);
void vd_impl_lineto_multi(const struct gs_fixed_point_s *p, int n);
void vd_impl_curveto(double x0, double y0, double x1, double y1, double x2, double y2);
void vd_impl_bar(double x0, double y0, double x1, double y1, int w, unsigned long c);
void vd_impl_square(double x0, double y0, int w, unsigned int c);
void vd_impl_rect(double x0, double y0, double x1, double y1, int w, unsigned int c);
void vd_impl_quad(double x0, double y0, double x1, double y1, double x2, double y2, double x3, double y3, int w, unsigned int c);
void vd_impl_curve(double x0, double y0, double x1, double y1, double x2, double y2, double x3, double y3, int w, unsigned long c);
void vd_impl_circle(double x, double y, int r, unsigned long c);
void vd_impl_round(double x, double y, int r, unsigned long c);
void vd_impl_pixel(double x, double y, unsigned long c);
void vd_impl_text(double x, double y, char *s, unsigned long c);
void vd_setflag(char f, char v);
# 50 "./base/gdevp14.c" 2
# 1 "./base/gscolorbuffer.h" 1
# 25 "./base/gscolorbuffer.h"
void gs_transform_color_buffer_generic(byte *inputbuffer,
            int rowstride, int planestride,
            int input_num_color, gs_int_rect rect,byte *outputbuffer,
            int output_num_color,int num_noncolor_planes);
# 51 "./base/gdevp14.c" 2
# 1 "./base/gsptype2.h" 1
# 32 "./base/gsptype2.h"
typedef struct gs_shading_s gs_shading_t;


typedef struct gs_pattern2_template_s {
    const gs_pattern_type_t *type; int PatternType; gs_uid uid; void *client_data;
    const gs_shading_t *Shading;
} gs_pattern2_template_t;
# 54 "./base/gsptype2.h"
typedef struct gs_pattern2_instance_s {
    rc_header rc; const gs_pattern_type_t *type; gs_state *saved; gs_id pattern_id;
    gs_pattern2_template_t templat;
    bool shfill;
} gs_pattern2_instance_t;
# 85 "./base/gsptype2.h"
extern const gx_device_color_type_t gx_dc_pattern2;
# 97 "./base/gsptype2.h"
void gs_pattern2_init(gs_pattern2_template_t *);


bool gx_dc_is_pattern2_color(const gx_device_color *pdevc);


int gs_pattern2_set_shfill(gs_client_color * pcc);


int gx_dc_pattern2_shade_bbox_transform2fixed(const gs_rect * rect,
        const gs_imager_state * pis, gs_fixed_rect * rfixed);


int gx_dc_pattern2_get_bbox(const gx_device_color * pdevc, gs_fixed_rect *bbox);


int gx_dc_pattern2_color_has_bbox(const gx_device_color * pdevc);


int gx_dc_pattern2_clip_with_bbox(const gx_device_color * pdevc, gx_device * pdev,
                                  gx_clip_path *cpath_local, const gx_clip_path **cpath1);

int gx_dc_pattern2_clip_with_bbox_simple(const gx_device_color * pdevc, gx_device * pdev,
                                  gx_clip_path *cpath);

int gx_dc_pattern2_is_rectangular_cell(const gx_device_color * pdevc, gx_device * pdev, gs_fixed_rect *rect);


const gs_color_space *gx_dc_pattern2_get_color_space(const gx_device_color * pdevc);


bool gx_dc_pattern2_can_overlap(const gx_device_color *pdevc);


bool gx_dc_pattern2_has_background(const gx_device_color *pdevc);
# 52 "./base/gdevp14.c" 2


# 1 "./base/gzcpath.h" 1
# 24 "./base/gzcpath.h"
# 1 "./base/gzpath.h" 1
# 23 "./base/gzpath.h"
# 1 "./base/gxpath.h" 1
# 25 "./base/gxpath.h"
# 1 "./base/gspenum.h" 1
# 30 "./base/gspenum.h"
typedef struct gs_path_enum_s gs_path_enum;
# 26 "./base/gxpath.h" 2
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
# 24 "./base/gzpath.h" 2
# 37 "./base/gzpath.h"
typedef enum {
    s_start,
    s_line,
    s_line_close,
    s_curve,
    s_dash,
    s_gap
} segment_type;
# 58 "./base/gzpath.h"
typedef struct segment_s segment;


typedef struct subpath_s subpath;





struct segment_s {
    segment *prev; segment *next; ushort type; ushort notes; gs_fixed_point pt;
};






typedef struct {
    segment *prev; segment *next; ushort type; ushort notes; gs_fixed_point pt;
} line_segment;






typedef struct {
    segment *prev; segment *next; ushort type; ushort notes; gs_fixed_point pt;
    gs_fixed_point tangent;
} dash_segment;







typedef struct {
    segment *prev; segment *next; ushort type; ushort notes; gs_fixed_point pt;
    subpath * sub;
} line_close_segment;
# 127 "./base/gzpath.h"
typedef struct {
    segment *prev; segment *next; ushort type; ushort notes; gs_fixed_point pt;
    gs_fixed_point p1, p2;
} curve_segment;
# 141 "./base/gzpath.h"
struct subpath_s {
    segment *prev; segment *next; ushort type; ushort notes; gs_fixed_point pt;
    segment * last;

    int curve_count;
    line_close_segment closer;
    char is_closed;
};







gx_path_rectangular_type
gx_subpath_is_rectangular(const subpath * pstart, gs_fixed_rect * pbox,
                          const subpath ** ppnext);
# 167 "./base/gzpath.h"
int gx_curve_log2_samples(fixed, fixed, const curve_segment *, fixed);





int gx_curve_monotonic_points(fixed, fixed, fixed, fixed, double[2]);


int gx_curve_monotonize(gx_path * ppath, const curve_segment * pc);


int gx_subdivide_curve(gx_path *, int, curve_segment *, segment_notes);
# 202 "./base/gzpath.h"
typedef enum {

    psf_position_valid = 1,
    psf_subpath_open = 2,
    psf_is_drawing = 4,
    psf_outside_range = 8,

    psf_last_newpath = 0,
    psf_last_moveto = psf_position_valid | psf_subpath_open,
    psf_last_draw = psf_position_valid | psf_subpath_open | psf_is_drawing,
    psf_last_closepath = psf_position_valid
} gx_path_state_flags;
# 260 "./base/gzpath.h"
typedef struct gx_path_segments_s {
    rc_header rc;
    struct psc_ {
        subpath *subpath_first;
        subpath *subpath_current;
    } contents;
} gx_path_segments;







typedef enum {
    path_allocated_on_stack,
    path_allocated_contained,
    path_allocated_on_heap
} gx_path_allocation_t;






typedef struct gx_path_procs_s {
    int (*add_point)(gx_path *, fixed, fixed);
    int (*add_line)(gx_path *, fixed, fixed, segment_notes);
    int (*add_gap)(gx_path *, fixed, fixed, segment_notes);
    int (*add_curve)(gx_path *, fixed, fixed, fixed, fixed, fixed, fixed, segment_notes);
    int (*close_subpath)(gx_path *, segment_notes);
    byte (*state_flags)(gx_path *, byte);
} gx_path_procs;


struct gx_path_s {
# 309 "./base/gzpath.h"
    gx_path_segments local_segments;
    gs_memory_t *memory;
    gx_path_allocation_t allocation;
    gx_path_segments *segments;
    segment *last_charpath_segment;


    gs_fixed_rect bbox;
    segment *box_last;







    byte start_flags;
    byte state_flags;
    byte bbox_set;
    byte bbox_accurate;
    byte _pad;
    int subpath_count;
    int curve_count;
    gs_fixed_point position;
    gx_path_procs *procs;
};


extern const gs_memory_struct_type_t st_path;






struct gs_path_enum_s {
    gs_memory_t *memory;
    gs_matrix mat;
    const segment *pseg;
    const gx_path *path;
    gx_path *copied_path;


    bool moveto_done;
    segment_notes notes;
};


extern const gs_memory_struct_type_t st_path_enum;
# 384 "./base/gzpath.h"
typedef struct gx_flattened_iterator_s gx_flattened_iterator;
struct gx_flattened_iterator_s {

    fixed x0, y0, x3, y3;
    fixed cx, bx, ax, cy, by, ay;
    fixed x, y;
    uint i, k;
    uint rmask;
    fixed idx, idy, id2x, id2y, id3x, id3y;
    uint rx, ry, rdx, rdy, rd2x, rd2y, rd3x, rd3y;

    bool curve;
    fixed lx0, ly0, lx1, ly1;
};

bool gx_flattened_iterator__init(gx_flattened_iterator *this,
            fixed x0, fixed y0, const curve_segment *pc, int k);
bool gx_flattened_iterator__init_line(gx_flattened_iterator *this,
            fixed x0, fixed y0, fixed x1, fixed y1);
void gx_flattened_iterator__switch_to_backscan(gx_flattened_iterator *this, bool not_first);
int gx_flattened_iterator__next(gx_flattened_iterator *this);
int gx_flattened_iterator__prev(gx_flattened_iterator *this);

bool curve_coeffs_ranged(fixed x0, fixed x1, fixed x2, fixed x3,
                    fixed y0, fixed y1, fixed y2, fixed y3,
                    fixed *ax, fixed *bx, fixed *cx,
                    fixed *ay, fixed *by, fixed *cy,
                    int k);

bool gx_check_fixed_diff_overflow(fixed v0, fixed v1);
bool gx_check_fixed_sum_overflow(fixed v0, fixed v1);
# 25 "./base/gzcpath.h" 2








typedef struct gx_clip_rect_list_s {
    rc_header rc;
    gx_clip_list list;
} gx_clip_rect_list;
# 49 "./base/gzcpath.h"
typedef struct gx_cpath_path_list_s gx_cpath_path_list;

struct gx_cpath_path_list_s {
    gx_path path;
    rc_header rc;
    int rule;
    gx_cpath_path_list *next;
};







struct gx_clip_path_s {
    gx_path path;
    gx_clip_rect_list local_list;
    int rule;


    gs_fixed_rect inner_box;



    gs_fixed_rect outer_box;
    gx_clip_rect_list *rect_list;
    bool path_valid;
    gx_cpath_path_list *path_list;

    gs_id id;
};

extern const gs_memory_struct_type_t st_clip_path;
# 93 "./base/gzcpath.h"
typedef enum {
    visit_left = 1,
    visit_right = 2
} cpe_visit_t;
typedef enum {
    cpe_scan, cpe_left, cpe_right, cpe_close, cpe_done
} cpe_state_t;
struct gs_cpath_enum_s {
    gs_path_enum path_enum;

    bool using_path;
    gx_clip_rect *visit;
    gx_clip_rect *rp;
    cpe_visit_t first_visit;
    cpe_state_t state;
    bool have_line;
    gs_int_point line_end;
    bool any_rectangles;
};
# 55 "./base/gdevp14.c" 2
# 1 "./base/gxpaint.h" 1
# 50 "./base/gxpaint.h"
int gx_fill_path(gx_path * ppath, gx_device_color * pdevc, gs_state * pgs,
                 int rule, fixed adjust_x, fixed adjust_y);
int gx_stroke_fill(gx_path * ppath, gs_state * pgs);
int gx_stroke_add(gx_path *ppath, gx_path *to_path, const gs_state * pgs, bool traditional);




int gx_imager_stroke_add(gx_path *ppath, gx_path *to_path,
                         gx_device *dev, const gs_imager_state *pis);







void gx_adjust_if_empty(const gs_fixed_rect *, gs_fixed_point *);
# 79 "./base/gxpaint.h"
int gx_stroke_path_expansion(const gs_imager_state *pis,
                             const gx_path *ppath, gs_fixed_point *ppt);
# 96 "./base/gxpaint.h"
struct gx_fill_params_s {
    int rule;
    gs_fixed_point adjust;
    float flatness;
};
# 110 "./base/gxpaint.h"
struct gx_stroke_params_s {
    float flatness;
    bool traditional;
};

int gx_stroke_path_only(gx_path * ppath, gx_path * to_path, gx_device * dev,
                        const gs_imager_state * pis,
                        const gx_stroke_params * params,
                        const gx_device_color * pdevc,
                        const gx_clip_path * pcpath);
# 56 "./base/gdevp14.c" 2
# 1 "./base/gsicc_manage.h" 1
# 47 "./base/gsicc_manage.h"
typedef enum {
    COLOR_TUNE,
    GRAPHIC_CMYK,
    IMAGE_CMYK,
    TEXT_CMYK,
    GRAPHIC_RGB,
    IMAGE_RGB,
    TEXT_RGB
} gsicc_srcgtagkey_t;
# 66 "./base/gsicc_manage.h"
# 1 "./base/gsicc_cms.h" 1
# 27 "./base/gsicc_cms.h"
    typedef void* gcmmhprofile_t;




    typedef void* gcmmhlink_t;



bool gsicc_mcm_monitor_rgb(void *inputcolor, int num_bytes);
bool gsicc_mcm_monitor_cmyk(void *inputcolor, int num_bytes);
bool gsicc_mcm_monitor_lab(void *inputcolor, int num_bytes);
void gsicc_mcm_set_link(gsicc_link_t* link);
void gsicc_mcm_end_monitor(gsicc_link_cache_t *cache, gx_device *dev);
void gsicc_mcm_begin_monitor(gsicc_link_cache_t *cache, gx_device *dev);
gsicc_link_t* gsicc_rcm_get_link(const gs_imager_state *pis, gx_device *dev,
                                 gsicc_colorbuffer_t data_cs);
gsicc_link_t* gsicc_nocm_get_link(const gs_imager_state *pis, gx_device *dev,
                                  gs_color_space_index src_index);
gcmmhprofile_t gscms_get_profile_handle_mem(gs_memory_t *mem,
                                            unsigned char *buffer,
                                            unsigned int input_size);
gcmmhprofile_t gscms_get_profile_handle_file(gs_memory_t *mem,
                                             const char *filename);
void gscms_transform_color_buffer(gx_device *dev, gsicc_link_t *icclink,
                                  gsicc_bufferdesc_t *input_buff_desc,
                                  gsicc_bufferdesc_t *output_buff_desc,
                                  void *inputbuffer,
                                  void *outputbuffer);
int gscms_get_channel_count(gcmmhprofile_t profile);
int gscms_get_pcs_channel_count(gcmmhprofile_t profile);
char* gscms_get_clrtname(gcmmhprofile_t profile, int colorcount, gs_memory_t *memory);
int gscms_get_numberclrtnames(gcmmhprofile_t profile);
bool gscms_is_device_link(gcmmhprofile_t profile);
bool gscms_is_input(gcmmhprofile_t profile);
gsicc_colorbuffer_t gscms_get_profile_data_space(gcmmhprofile_t profile);
void gscms_transform_color(gx_device *dev, gsicc_link_t *icclink, void *inputcolor,
                           void *outputcolor, int num_bytes);
gcmmhlink_t gscms_get_link(gcmmhprofile_t lcms_srchandle,
                           gcmmhprofile_t lcms_deshandle,
                           gsicc_rendering_param_t *rendering_params,
                           int cmm_flags,
                           gs_memory_t *memory);
gcmmhlink_t gscms_get_link_proof_devlink(gcmmhprofile_t lcms_srchandle,
                                         gcmmhprofile_t lcms_proofhandle,
                                         gcmmhprofile_t lcms_deshandle,
                                         gcmmhprofile_t lcms_devlinkhandle,
                                         gsicc_rendering_param_t *rendering_params,
                                         bool src_dev_link, int cmm_flags,
                                         gs_memory_t *memory);
int gscms_create(gs_memory_t *memory);
void gscms_destroy(gs_memory_t *memory);
void gscms_release_link(gsicc_link_t *icclink);
void gscms_release_profile(void *profile);
int gscms_transform_named_color(gsicc_link_t *icclink, float tint_value,
                                const char* ColorName,
                                gx_color_value device_values[] );
void gscms_get_name2device_link(gsicc_link_t *icclink,
                                gcmmhprofile_t lcms_srchandle,
                                gcmmhprofile_t lcms_deshandle,
                                gcmmhprofile_t lcms_proofhandle,
                                gsicc_rendering_param_t *rendering_params,
                                gs_memory_t *memory);
int gscms_get_input_channel_count(gcmmhprofile_t profile);
int gscms_get_output_channel_count(gcmmhprofile_t profile);
void gscms_get_link_dim(gcmmhlink_t link, int *num_inputs, int *num_outputs);
int gscms_avoid_white_fix_flag(void);
# 67 "./base/gsicc_manage.h" 2


void gsicc_profile_reference(cmm_profile_t *icc_profile, int delta);
void gsicc_extract_profile(gs_graphics_type_tag_t graphics_type_tag,
                       cmm_dev_profile_t *profile_struct,
                       cmm_profile_t **profile, gsicc_rendering_param_t *render_cond);
void gsicc_get_srcprofile(gsicc_colorbuffer_t data_cs,
                     gs_graphics_type_tag_t graphics_type_tag,
                     cmm_srcgtag_profile_t *srcgtag_profile,
                     cmm_profile_t **profile, gsicc_rendering_param_t *render_cond);
int gsicc_getsrc_channel_count(cmm_profile_t *icc_profile);
int gsicc_init_iccmanager(gs_state * pgs);
int gsicc_init_gs_colors(gs_state *pgs);
void gsicc_profile_serialize(gsicc_serialized_profile_t *profile_data,
                              cmm_profile_t *iccprofile);
int gsicc_set_device_profile_intent(gx_device *dev,
                                    gsicc_rendering_intents_t intent,
                                    gsicc_profile_types_t profile_type);
int gsicc_set_device_blackptcomp(gx_device *dev,
                                    gsicc_blackptcomp_t blackptcomp,
                                    gsicc_profile_types_t profile_type);
int gsicc_set_device_blackpreserve(gx_device *dev,
                                   gsicc_blackpreserve_t blackpreserve,
                                   gsicc_profile_types_t profile_type);
int gsicc_set_devicen_equiv_colors(gx_device *dev, const gs_imager_state * pis,
                                    cmm_profile_t *profile);
int gsicc_set_device_profile_colorants(gx_device *dev, char *name_str);
int gsicc_init_device_profile_struct(gx_device * dev, char *profile_name,
                                     gsicc_profile_types_t profile_type);
int gsicc_set_profile(gsicc_manager_t *icc_manager, const char *pname,
                      int namelen, gsicc_profile_t defaulttype);
int gsicc_set_srcgtag_struct(gsicc_manager_t *icc_manager, const char* pname,
                            int namelen);
cmm_profile_t* gsicc_get_profile_handle_file(const char* pname, int namelen,
                                             gs_memory_t *mem);
void gsicc_init_profile_info(cmm_profile_t *profile);
int gsicc_initialize_default_profile(cmm_profile_t *icc_profile);
gsicc_manager_t* gsicc_manager_new(gs_memory_t *memory);
cmm_profile_t* gsicc_profile_new(stream *s, gs_memory_t *memory,
                                 const char* pname, int namelen);
int gsicc_set_gscs_profile(gs_color_space *pcs, cmm_profile_t *icc_profile,
                           gs_memory_t * mem);
cmm_profile_t* gsicc_get_gscs_profile(gs_color_space *gs_colorspace,
                                      gsicc_manager_t *icc_manager);
void gsicc_init_hash_cs(cmm_profile_t *picc_profile, gs_imager_state *pis);
gcmmhprofile_t gsicc_get_profile_handle_clist(cmm_profile_t *picc_profile,
                                              gs_memory_t *memory);
gcmmhprofile_t gsicc_get_profile_handle_buffer(unsigned char *buffer,
                                               int profile_size,
                                               gs_memory_t *memory);
gsicc_smask_t* gsicc_new_iccsmask(gs_memory_t *memory);
int gsicc_initialize_iccsmask(gsicc_manager_t *icc_manager);
unsigned int gsicc_getprofilesize(unsigned char *buffer);
void gscms_set_icc_range(cmm_profile_t **icc_profile);
cmm_profile_t* gsicc_read_serial_icc(gx_device * dev, int64_t icc_hashcode);
cmm_profile_t* gsicc_finddevicen(const gs_color_space *pcs,
                                 gsicc_manager_t *icc_manager);
gs_color_space_index gsicc_get_default_type(cmm_profile_t *profile_data);
bool gsicc_profile_from_ps(cmm_profile_t *profile_data);
cmm_dev_profile_t* gsicc_new_device_profile_array(gs_memory_t *memory);
void gs_setoverrideicc(gs_imager_state *pis, bool value);
bool gs_currentoverrideicc(const gs_imager_state *pis);
cmm_profile_t* gsicc_set_iccsmaskprofile(const char *pname, int namelen,
                                         gsicc_manager_t *icc_manager,
                                         gs_memory_t *mem);
int gsicc_set_device_profile(gx_device * pdev, gs_memory_t * mem,
                             char *file_name, gsicc_profile_types_t defaulttype);
char* gsicc_get_dev_icccolorants(cmm_dev_profile_t *dev_profile);
void gsicc_setrange_lab(cmm_profile_t *profile);

void gs_currentdevicenicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdevicenprofileicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentdefaultgrayicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdefaultgrayicc(const gs_state * pgs, gs_param_string * pval);
void gs_currenticcdirectory(const gs_state * pgs, gs_param_string * pval);
int gs_seticcdirectory(const gs_state * pgs, gs_param_string * pval);
void gs_currentsrcgtagicc(const gs_state * pgs, gs_param_string * pval);
int gs_setsrcgtagicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentdefaultrgbicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdefaultrgbicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentnamedicc(const gs_state * pgs, gs_param_string * pval);
int gs_setnamedprofileicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentdefaultcmykicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdefaultcmykicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentlabicc(const gs_state * pgs, gs_param_string * pval);
int gs_setlabicc(const gs_state * pgs, gs_param_string * pval);
# 57 "./base/gdevp14.c" 2
# 1 "./base/gsicc_cache.h" 1
# 32 "./base/gsicc_cache.h"
typedef struct gsicc_namedcolor_s {
    char *colorant_name;
    unsigned int name_size;
    unsigned short lab[3];
} gsicc_namedcolor_t;

gsicc_link_cache_t* gsicc_cache_new(gs_memory_t *memory);
gsicc_link_t* gsicc_findcachelink(gsicc_hashlink_t hashcode,
                                  gsicc_link_cache_t *icc_link_cache,
                                  bool includes_proof, bool includes_devlink);
void gsicc_init_buffer(gsicc_bufferdesc_t *buffer_desc, unsigned char num_chan,
                  unsigned char bytes_per_chan, bool has_alpha, bool alpha_first,
                  bool is_planar, int plane_stride, int row_stride, int num_rows,
                  int pixels_per_row);
bool gsicc_alloc_link_entry(gsicc_link_cache_t *icc_link_cache,
                            gsicc_link_t **ret_link, gsicc_hashlink_t hash,
                            bool include_softproof, bool include_devlink);
gsicc_link_t* gsicc_get_link(const gs_imager_state * pis, gx_device *dev,
                             const gs_color_space *input_colorspace,
                             gs_color_space *output_colorspace,
                             gsicc_rendering_param_t *rendering_params,
                             gs_memory_t *memory);
gsicc_link_t* gsicc_get_link_profile(const gs_imager_state *pis, gx_device *dev,
                                     cmm_profile_t *gs_input_profile,
                                     cmm_profile_t *gs_output_profile,
                                     gsicc_rendering_param_t *rendering_params,
                                     gs_memory_t *memory, bool devicegraytok);
void gsicc_release_link(gsicc_link_t *icclink);
void gsicc_link_free(gsicc_link_t *icc_link, gs_memory_t *memory);
void gsicc_get_icc_buff_hash(unsigned char *buffer, int64_t *hash, unsigned int buff_size);
int gsicc_transform_named_color(const float tint_values[],
                            gsicc_namedcolor_t color_names[],
                            uint num_names,
                            gx_color_value device_values[],
                            const gs_imager_state *pis, gx_device *dev,
                            cmm_profile_t *gs_output_profile,
                            gsicc_rendering_param_t *rendering_params);
int gsicc_get_device_profile_comps(cmm_dev_profile_t *dev_profile);
# 58 "./base/gdevp14.c" 2


# 1 "./base/gximage.h" 1
# 26 "./base/gximage.h"
# 1 "./base/sisparam.h" 1
# 61 "./base/sisparam.h"
typedef struct stream_image_scale_params_s {
    int spp_decode;
    int spp_interp;

    int PatchWidthIn, PatchHeightIn;
    int PatchWidthOut, PatchHeightOut;
    int BitsPerComponentIn;
    uint MaxValueIn;
    int BitsPerComponentOut;
    uint MaxValueOut;

    int WidthIn, HeightIn;
    int WidthOut, HeightOut;
    bool ColorPolarityAdditive;
    int src_y_offset;
    int EntireWidthIn;
    int EntireHeightIn;
    int EntireWidthOut;
    int EntireHeightOut;
    bool early_cm;

    int LeftMarginIn;
    int LeftMarginOut;
    int TopMargin;
    int Active;
} stream_image_scale_params_t;







typedef struct stream_image_scale_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1]; stream_image_scale_params_t params;
} stream_image_scale_state;
# 27 "./base/gximage.h" 2
# 1 "./base/gxdda.h" 1
# 139 "./base/gxdda.h"
typedef struct gx_dda_int_s {
    struct ia_ { int Q; uint R; } state;
    struct ie_ { int dQ; uint dR, N; } step;
} gx_dda_int_t;


typedef
struct _a { fixed Q; uint R; } gx_dda_state_fixed;
     typedef struct _e { fixed dQ; uint dR, N; } gx_dda_step_fixed;
     typedef struct gx_dda_fixed_s {
         gx_dda_state_fixed state;
         gx_dda_step_fixed step;
     } gx_dda_fixed;



     typedef struct gx_dda_fixed_point_s {
         gx_dda_fixed x, y;
     } gx_dda_fixed_point;
# 28 "./base/gximage.h" 2


# 1 "./base/gxsample.h" 1
# 26 "./base/gxsample.h"
typedef union sample_lookup_s {
    bits32 lookup4x1to32[16];
    bits16 lookup2x2to16[16];
    byte lookup8[256];



} sample_lookup_t;





extern const bits32 lookup4x1to32_identity[16];
extern const bits32 lookup4x1to32_inverted[16];



typedef struct sample_map_s sample_map;
# 63 "./base/gxsample.h"
typedef const byte *(*sample_unpack_proc_t)(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);




const byte *sample_unpack_copy(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);




const byte *sample_unpack_1(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
const byte *sample_unpack_2(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
const byte *sample_unpack_4(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
const byte *sample_unpack_8(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);

const byte *sample_unpack_1_interleaved(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
const byte *sample_unpack_2_interleaved(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
const byte *sample_unpack_4_interleaved(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
const byte *sample_unpack_8_interleaved(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
# 31 "./base/gximage.h" 2
# 51 "./base/gximage.h"
typedef enum {
    sd_none,
    sd_lookup,
    sd_compute
} sample_decoding;
struct sample_map_s {

    sample_lookup_t table;
# 70 "./base/gximage.h"
    float decode_lookup[16];
# 80 "./base/gximage.h"
    float decode_factor;

    sample_decoding decoding;







    bool inverted;

};
# 130 "./base/gximage.h"
extern const sample_unpack_proc_t sample_unpack_12_proc;





extern const sample_unpack_proc_t sample_unpack_16_proc;
extern const sample_unpack_proc_t sample_unpackicc_16_proc;



typedef enum {
    image_portrait = 0,
    image_landscape,
    image_skewed
} image_posture;
# 154 "./base/gximage.h"
typedef struct gx_image_clue_s {
    gx_device_color dev_color;
    bits32 key;
} gx_image_clue;

typedef struct gx_image_color_cache_s {
    bool *is_transparent;
    byte *device_contone;
} gx_image_color_cache_t;
# 173 "./base/gximage.h"
typedef struct gx_device_rop_texture_s gx_device_rop_texture;


typedef struct gx_image_icc_setup_s {
    bool need_decode;
    bool is_lab;
    bool must_halftone;
    bool has_transfer;
} gx_image_icc_setup_t;

struct gx_image_enum_s {
    const gx_image_type_t *image_type; const gx_image_enum_procs_t *procs; gx_device *dev; gs_memory_t *memory; gs_id id; bool skipping; int num_planes; int plane_depths[((64) + 1)]; int plane_widths[((64) + 1)];



    int Width;
    int Height;
    byte bps;
    byte unpack_bps;

    byte log2_xbytes;


    byte spp;
    gs_image_alpha_t alpha;
    struct mc_ {
        uint values[((64) + 1) * 2];


        bits32 mask, test;

        bool exact;

    } mask_color;
    byte use_mask_color;

    byte spread;

    byte masked;
    byte interpolate;
    gs_matrix matrix;
    struct r_ {
        int x, y, w, h;
    } rect;
    struct {
        int x, y, w, h;
    } rrect;
    fixed dst_height;



    fixed dst_width;



    gs_fixed_point x_extent, y_extent;
    const byte *(*unpack)(byte *bptr, int *pdata_x, const byte * data, int data_x, uint dsize, const sample_map *smap, int spread, int num_components_per_plane);
    int (*render)(gx_image_enum *penum, const byte *buffer, int data_x, uint w, int h, gx_device *dev);
    const gs_imager_state *pis;
    const gs_color_space *pcs;
    byte *buffer;

    uint buffer_size;
    byte *line;
    uint line_size;
    uint line_width;
    image_posture posture;
    byte use_rop;
    byte clip_image;
# 251 "./base/gximage.h"
    byte slow_loop;

    byte device_color;

    gs_fixed_rect clip_outer;
    gs_fixed_rect clip_inner;
    gs_logical_operation_t log_op;
    fixed adjust;

    fixed dxx, dxy;

    gx_device_clip *clip_dev;
    gx_device_rop_texture *rop_dev;
    stream_image_scale_state *scaler;


    int y;
    gs_int_point used;

    gs_fixed_point cur, prev;

    struct dd_ {
        gx_dda_fixed_point row;

        gx_dda_fixed_point strip;
        gx_dda_fixed_point pixel0;

    } dda;
    int line_xy;
    int xi_next;

    gs_int_point xyi;

    int yi0;
    int yci, hci;
    int xci, wci;


    sample_map map[((64) + 1)];


    gx_image_clue *clues;
    gx_device_color icolor0_val;
    gx_device_color icolor1_val;
    gx_device_color *icolor0;
    gx_device_color *icolor1;
    gsicc_link_t *icc_link;
    gx_image_color_cache_t *color_cache;
    byte *ht_buffer;
    int ht_stride;
    int ht_offset_bits;
    int ht_plane_height;
    byte *thresh_buffer;
    int thresh_stride;
    gs_image_parent_t image_parent_type;
    ht_landscape_info_t ht_landscape;
    gx_image_icc_setup_t icc_setup;
    bool use_cie_range;
};
# 332 "./base/gximage.h"
void gx_image_scale_mask_colors(gx_image_enum *penum,
                                int component_index);

bool gx_has_transfer(const gs_imager_state *pis, int num_comps);





int
gx_image_enum_alloc(const gs_image_common_t * pic,
                    const gs_int_rect * prect,
                    gs_memory_t * mem, gx_image_enum **ppenum);
# 353 "./base/gximage.h"
int
gx_image_enum_begin(gx_device * dev, const gs_imager_state * pis,
                    const gs_matrix *pmat, const gs_image_common_t * pic,
                    const gx_drawing_color * pdcolor,
                    const gx_clip_path * pcpath,
                    gs_memory_t * mem, gx_image_enum *penum);





void
image_init_clues(gx_image_enum * penum, int bps, int spp);



int
image_init_color_cache(gx_image_enum * penum, int bps, int spp);
# 61 "./base/gdevp14.c" 2

# 1 "./base/gxdevsop.h" 1
# 113 "./base/gxdevsop.h"
typedef struct gxdso_device_child_request_s
{
    gx_device *target;
    int n;
} gxdso_device_child_request;

enum {
# 133 "./base/gxdevsop.h"
    gxdso_pattern_can_accum,







    gxdso_pattern_start_accum,







    gxdso_pattern_finish_accum,
# 158 "./base/gxdevsop.h"
    gxdso_pattern_load,






    gxdso_pattern_shading_area,







    gxdso_pattern_is_cpath_accum,







    gxdso_pattern_shfill_doesnt_need_path,







    gxdso_pattern_handles_clip_path,







    gxdso_is_std_cmyk_1bit,
# 210 "./base/gxdevsop.h"
    gxdso_is_pdf14_device,
# 230 "./base/gxdevsop.h"
    gxdso_device_child,





    gxdso_supports_devn,



    gxdso_supports_hlcolor,
# 249 "./base/gxdevsop.h"
    gxdso_interpolate_threshold,




    gxdso_interpolate_antidropout,







    gxdso_needs_invariant_palette,



    gxdso_supports_saved_pages,



    gxdso_form_begin,
    gxdso_form_end,




    gxdso_adjust_bandheight,

    gxdso_pattern__LAST
};
# 63 "./base/gdevp14.c" 2
# 1 "./base/gsicc.h" 1
# 23 "./base/gsicc.h"
# 1 "./base/gscie.h" 1
# 27 "./base/gscie.h"
# 1 "./base/gxctable.h" 1
# 39 "./base/gxctable.h"
typedef struct gx_color_lookup_table_s {
    int n;
    int dims[4];
    int m;
    const gs_const_string *table;
} gx_color_lookup_table;
# 54 "./base/gxctable.h"
void gx_color_interpolate_nearest(const fixed * pi,
                            const gx_color_lookup_table * pclt, frac * pv);


void gx_color_interpolate_linear(const fixed * pi,
                            const gx_color_lookup_table * pclt, frac * pv);
# 28 "./base/gscie.h" 2
# 144 "./base/gscie.h"
typedef float cie_cached_value;
# 179 "./base/gscie.h"
typedef struct gs_vector3_s {
    float u, v, w;
} gs_vector3;


typedef struct gs_matrix3_s {
    gs_vector3 cu, cv, cw;
    bool is_identity;
} gs_matrix3;



typedef gs_range_t gs_range;
typedef struct gs_range3_s {
    gs_range ranges[3];
} gs_range3;
typedef struct gs_range4_s {
    gs_range ranges[4];
} gs_range4;


typedef struct gs_cie_common_s gs_cie_common;
typedef struct gs_cie_wbsd_s gs_cie_wbsd;

typedef float (*gs_cie_a_proc) (double, const gs_cie_a *);

typedef float (*gs_cie_abc_proc) (double, const gs_cie_abc *);
typedef struct gs_cie_abc_proc3_s {
    gs_cie_abc_proc procs[3];
} gs_cie_abc_proc3;

typedef float (*gs_cie_def_proc) (double, const gs_cie_def *);
typedef struct gs_cie_def_proc3_s {
    gs_cie_def_proc procs[3];
} gs_cie_def_proc3;

typedef float (*gs_cie_defg_proc) (double, const gs_cie_defg *);
typedef struct gs_cie_defg_proc4_s {
    gs_cie_defg_proc procs[4];
} gs_cie_defg_proc4;

typedef float (*gs_cie_common_proc) (double, const gs_cie_common *);
typedef struct gs_cie_common_proc3_s {
    gs_cie_common_proc procs[3];
} gs_cie_common_proc3;

typedef float (*gs_cie_render_proc) (double, const gs_cie_render *);
typedef struct gs_cie_render_proc3_s {
    gs_cie_render_proc procs[3];
} gs_cie_render_proc3;
# 254 "./base/gscie.h"
typedef int (*gs_cie_transform_proc)(int, double, const gs_cie_wbsd *,
                                     gs_cie_render *, float *);
typedef struct gs_cie_transform_proc3_s {
    gs_cie_transform_proc proc;
    const char *proc_name;
    gs_const_string proc_data;
    const char *driver_name;
} gs_cie_transform_proc3;

typedef frac(*gs_cie_render_table_proc) (byte, const gs_cie_render *);
typedef struct gs_cie_render_table_procs_s {
    gs_cie_render_table_proc procs[4];
} gs_cie_render_table_procs;


typedef struct gs_cie_wb_s {
    gs_vector3 WhitePoint;
    gs_vector3 BlackPoint;
} gs_cie_wb;
# 318 "./base/gscie.h"
typedef struct cie_linear_params_s {
    bool is_linear;
    float scale, origin;
} cie_linear_params_t;
typedef struct cie_cache_params_s {
    bool is_identity;
    double base, factor;
    cie_linear_params_t linear;
} cie_cache_params;
typedef struct cie_cache_floats_s {
    cie_cache_params params;
    float values[(1 << 9)];
} cie_cache_floats;
typedef struct cie_cache_fracs_s {
    cie_cache_params params;
    frac values[(1 << 9)];
} cie_cache_fracs;
typedef struct cie_cache_ints_s {
    cie_cache_params params;
    int values[(1 << 9)];
} cie_cache_ints;
typedef union gx_cie_scalar_cache_s {
    cie_cache_floats floats;
    cie_cache_fracs fracs;
    cie_cache_ints ints;
} gx_cie_scalar_cache;

typedef struct cie_cached_vector3_s {
    cie_cached_value u, v, w;
} cie_cached_vector3;
typedef struct cie_interpolation_range_s {
    cie_cached_value rmin, rmax;
} cie_interpolation_range_t;
typedef struct cie_vector_cache_params_s {
    cie_cached_value base, factor, limit;
    cie_interpolation_range_t interpolation_ranges[3];
} cie_vector_cache_params;
typedef struct cie_cache_vectors_s {
    cie_vector_cache_params params;
    cie_cached_vector3 values[(1 << 9)];
} cie_cache_vectors;
typedef struct gx_cie_vector_cache_s {
    cie_cache_floats floats;
    cie_cache_vectors vecs;
} gx_cie_vector_cache;
typedef struct gx_cie_vector_cache3_s {
    gx_cie_vector_cache caches[3];
    cie_interpolation_range_t interpolation_ranges[3];
} gx_cie_vector_cache3_t;




struct gs_cie_common_s {
    int (*install_cspace)(gs_color_space *, gs_state *);
    void *client_data;
    gs_range3 RangeLMN;
    gs_cie_common_proc3 DecodeLMN;
    gs_matrix3 MatrixLMN;
    gs_cie_wb points;

    struct {
        gx_cie_scalar_cache DecodeLMN[3];
    } caches;
};
# 394 "./base/gscie.h"
typedef struct gs_cie_common_elements_s {
    gs_cie_common common; rc_header rc;
} gs_cie_common_elements_t;
# 409 "./base/gscie.h"
struct gs_cie_a_s {
    gs_cie_common common; rc_header rc;
    gs_range RangeA;
    gs_cie_a_proc DecodeA;
    gs_vector3 MatrixA;

    struct {
        gx_cie_vector_cache DecodeA;
    } caches;
};
# 439 "./base/gscie.h"
struct gs_cie_abc_s {
    gs_cie_common common; rc_header rc; gs_range3 RangeABC; gs_cie_abc_proc3 DecodeABC; gs_matrix3 MatrixABC; struct { bool skipABC; gx_cie_vector_cache3_t DecodeABC; } caches;
};







struct gs_cie_def_s {
    gs_cie_common common; rc_header rc; gs_range3 RangeABC; gs_cie_abc_proc3 DecodeABC; gs_matrix3 MatrixABC; struct { bool skipABC; gx_cie_vector_cache3_t DecodeABC; } caches;
    gs_range3 RangeDEF;
    gs_cie_def_proc3 DecodeDEF;
    gs_range3 RangeHIJ;
    gx_color_lookup_table Table;
    struct {
        gx_cie_scalar_cache DecodeDEF[3];
    } caches_def;
};







struct gs_cie_defg_s {
    gs_cie_common common; rc_header rc; gs_range3 RangeABC; gs_cie_abc_proc3 DecodeABC; gs_matrix3 MatrixABC; struct { bool skipABC; gx_cie_vector_cache3_t DecodeABC; } caches;
    gs_range4 RangeDEFG;
    gs_cie_defg_proc4 DecodeDEFG;
    gs_range4 RangeHIJK;
    gx_color_lookup_table Table;
    struct {
        gx_cie_scalar_cache DecodeDEFG[4];
    } caches_defg;
};
# 487 "./base/gscie.h"
extern const gs_range3 Range3_default;
extern const gs_range4 Range4_default;
extern const gs_cie_defg_proc4 DecodeDEFG_default;
extern const gs_cie_defg_proc4 DecodeDEFG_from_cache;
extern const gs_cie_def_proc3 DecodeDEF_default;
extern const gs_cie_def_proc3 DecodeDEF_from_cache;
extern const gs_cie_abc_proc3 DecodeABC_default;
extern const gs_cie_abc_proc3 DecodeABC_from_cache;
extern const gs_cie_common_proc3 DecodeLMN_default;
extern const gs_cie_common_proc3 DecodeLMN_from_cache;
extern const gs_matrix3 Matrix3_default;
extern const gs_range RangeA_default;
extern const gs_cie_a_proc DecodeA_default;
extern const gs_cie_a_proc DecodeA_from_cache;
extern const gs_vector3 MatrixA_default;
extern const gs_vector3 BlackPoint_default;
extern const gs_cie_render_proc3 Encode_default;
extern const gs_cie_render_proc3 EncodeLMN_from_cache;
extern const gs_cie_render_proc3 EncodeABC_from_cache;
extern const gs_cie_transform_proc3 TransformPQR_default;
extern const gs_cie_transform_proc3 TransformPQR_from_cache;
extern const gs_cie_transform_proc TransformPQR_lookup_proc_name;
extern const gs_cie_render_table_procs RenderTableT_default;
extern const gs_cie_render_table_procs RenderTableT_from_cache;



struct gs_cie_wbsd_s {
    struct {
        gs_vector3 xyz, pqr;
    } ws, bs, wd, bd;
};
typedef struct gs_cie_render_table_s {





    gx_color_lookup_table lookup;
    gs_cie_render_table_procs T;
} gs_cie_render_table_t;
typedef enum {
    CIE_RENDER_STATUS_BUILT,
    CIE_RENDER_STATUS_INITED,
    CIE_RENDER_STATUS_SAMPLED,
    CIE_RENDER_STATUS_COMPLETED
} cie_render_status_t;

typedef struct gx_cie_float_fixed_cache_s {
    cie_cache_floats floats;
    union if_ {
        cie_cache_fracs fracs;
        cie_cache_ints ints;
    } fixeds;
} gx_cie_float_fixed_cache;


struct gs_cie_render_s {
    cie_render_status_t status;
    rc_header rc;
    gs_id id;
    void *client_data;
    gs_cie_wb points;
    gs_matrix3 MatrixPQR;
    gs_range3 RangePQR;
    gs_cie_transform_proc3 TransformPQR;
    gs_matrix3 MatrixLMN;
    gs_cie_render_proc3 EncodeLMN;
    gs_range3 RangeLMN;
    gs_matrix3 MatrixABC;
    gs_cie_render_proc3 EncodeABC;
    gs_range3 RangeABC;
    gs_cie_render_table_t RenderTable;

    gs_range3 DomainLMN;
    gs_range3 DomainABC;
    gs_matrix3 MatrixABCEncode;
    cie_cached_value EncodeABC_base[3];
    gs_matrix3 MatrixPQR_inverse_LMN;
    gs_vector3 wdpqr, bdpqr;
    struct {
        gx_cie_vector_cache3_t EncodeLMN;
        gx_cie_float_fixed_cache EncodeABC[3];
        gx_cie_scalar_cache RenderTableT[4];
        bool RenderTableT_is_identity;
    } caches;
};


extern const gs_memory_struct_type_t st_cie_render1;
# 585 "./base/gscie.h"
typedef enum {
    CIE_JC_STATUS_BUILT,
    CIE_JC_STATUS_INITED,
    CIE_JC_STATUS_COMPLETED
} cie_joint_caches_status_t;
# 601 "./base/gscie.h"
struct gx_cie_joint_caches_s {
# 626 "./base/gscie.h"
    gs_id cspace_id;
    gs_id render_id;
    cie_joint_caches_status_t id_status;
    cie_joint_caches_status_t status;
    rc_header rc;
    int (*remap_finish)(cie_cached_vector3 vec3, frac *pconc, float *xyz, const gs_imager_state *pis, const gs_color_space *pcs);
    bool skipDecodeABC;
    bool skipDecodeLMN;
    gx_cie_vector_cache3_t DecodeLMN;
    gs_cie_wbsd points_sd;
    bool skipPQR;
    gx_cie_vector_cache3_t TransformPQR;
    bool skipEncodeLMN;
};



typedef struct gx_cie_joint_caches_s gx_cie_joint_caches;
# 669 "./base/gscie.h"
typedef struct gs_sample_loop_params_s {
    float A, B;
    int N;
} gs_sample_loop_params_t;


void gs_cie_cache_init(cie_cache_params *, gs_sample_loop_params_t *,
                       const gs_range *, client_name_t);

void gs_cie_cache_to_fracs(const cie_cache_floats *, cie_cache_fracs *);
void gs_cie_defg_complete(gs_cie_defg *);
void gs_cie_def_complete(gs_cie_def *);
void gs_cie_abc_complete(gs_cie_abc *);
void gs_cie_a_complete(gs_cie_a *);
gx_cie_joint_caches *gx_unshare_cie_caches(gs_state *);
gx_cie_joint_caches *gx_currentciecaches(gs_state *);
const gs_cie_common *gs_cie_cs_common(const gs_state *);
int gs_cie_cs_complete(gs_state *, bool);
int gs_cie_jc_complete(const gs_imager_state *, const gs_color_space *);
float gs_cie_cached_value(double, const cie_cache_floats *);
int gx_install_cie_abc(gs_cie_abc *, gs_state *);
# 723 "./base/gscie.h"
int gs_cie_compute_points_sd(gx_cie_joint_caches *pjc,
                             const gs_cie_common * pcie,
                             const gs_cie_render * pcrd);






int gs_cie_render_init(gs_cie_render *);







int gs_cie_render_sample(gs_cie_render *);
# 749 "./base/gscie.h"
int gs_cie_render_complete(gs_cie_render *);
# 766 "./base/gscie.h"
extern int
    gs_cspace_build_CIEA(gs_color_space ** ppcspace, void *client_data,
                         gs_memory_t * pmem),
    gs_cspace_build_CIEABC(gs_color_space ** ppcspace, void *client_data,
                           gs_memory_t * pmem),
    gs_cspace_build_CIEDEF(gs_color_space ** ppcspace, void *client_data,
                           gs_memory_t * pmem),
    gs_cspace_build_CIEDEFG(gs_color_space ** ppcspace, void *client_data,
                            gs_memory_t * pmem);
# 833 "./base/gscie.h"
extern int
    gs_cie_defx_set_lookup_table(gs_color_space * pcspace, int *pdims,
                                 const gs_const_string * ptable);


int gx_serialize_cie_common_elements(const gs_color_space * pcs, stream * s);

bool gx_color_space_needs_cie_caches(const gs_color_space * pcs);



float common_identity(double in, const gs_cie_common * pcie);
float abc_identity(double in, const gs_cie_abc * pcie);
float a_identity(double in, const gs_cie_a * pcie);
void cie_mult3(const gs_vector3 * in, register const gs_matrix3 * mat,
          gs_vector3 * out);
void cie_matrix_mult3(const gs_matrix3 *, const gs_matrix3 *,
                              gs_matrix3 *);
void cie_matrix_transpose3(const gs_matrix3 *, gs_matrix3 *);
# 24 "./base/gsicc.h" 2





extern int gs_cspace_build_ICC( gs_color_space ** ppcspace,
                                        void * client_data,
                                        gs_memory_t * pmem );

extern const gs_color_space_type gs_color_space_type_ICC;
extern int gx_remap_ICC_imagelab(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
# 64 "./base/gdevp14.c" 2
# 75 "./base/gdevp14.c"
static int pdf14_tile_pattern_fill(gx_device * pdev, const gs_imager_state * pis,
                                   gx_path * ppath, const gx_fill_params * params,
                                   const gx_device_color * pdevc, const gx_clip_path * pcpath);
static pdf14_mask_t *pdf14_mask_element_new(gs_memory_t *memory);
static void pdf14_free_smask_color(pdf14_device * pdev);
static int compute_group_device_int_rect(pdf14_device *pdev, gs_int_rect *rect,
                                         const gs_rect *pbbox, gs_imager_state *pis);
static int pdf14_clist_update_params(pdf14_clist_device * pdev,
                                     const gs_imager_state * pis,
                                     bool crop_blend_params,
                                     gs_pdf14trans_params_t *group_params);
static int pdf14_mark_fill_rectangle(gx_device * dev, int x, int y, int w, int h,
                                     gx_color_index color, const gx_device_color *pdc,
                                     bool devn);
static int pdf14_mark_fill_rectangle_ko_simple(gx_device * dev, int x, int y,
                                               int w, int h, gx_color_index color,
                                               const gx_device_color *pdc,
                                               bool devn);
static int pdf14_copy_alpha_color(gx_device * dev, const byte * data, int data_x,
                                  int aa_raster, gx_bitmap_id id, int x, int y, int w, int h,
                                  gx_color_index color, const gx_device_color *pdc,
                                  int depth, bool devn);


static int pdf14_decrement_smask_color(gs_imager_state * pis, gx_device * dev);
static int pdf14_increment_smask_color(gs_imager_state * pis, gx_device * dev);
# 117 "./base/gdevp14.c"
void pdf14_cmyk_cs_to_cmyk_cm(gx_device *, frac, frac, frac, frac, frac *);
static int gs_pdf14_device_push(gs_memory_t *mem, gs_imager_state * pis,
                                gx_device ** pdev, gx_device * target,
                                const gs_pdf14trans_t * pdf14pct);
static int gs_pdf14_clist_device_push(gs_memory_t * mem, gs_imager_state * pis,
                                      gx_device ** pdev, gx_device * target,
                                      const gs_pdf14trans_t * pdf14pct);
static int pdf14_tile_pattern_fill(gx_device * pdev,
                const gs_imager_state * pis, gx_path * ppath,
                const gx_fill_params * params,
                const gx_device_color * pdevc, const gx_clip_path * pcpath);
static pdf14_mask_t * pdf14_mask_element_new(gs_memory_t * memory);





static const gc_ptr_element_t pdf14_buf_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_buf *)0)->saved - (char *)((pdf14_buf *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_buf *)0)->data - (char *)((pdf14_buf *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_buf *)0)->backdrop - (char *)((pdf14_buf *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_buf *)0)->transfer_fn - (char *)((pdf14_buf *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_buf *)0)->mask_stack - (char *)((pdf14_buf *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_buf *)0)->parent_color_info_procs - (char *)((pdf14_buf *)0) )) } }; static const gc_struct_data_t pdf14_buf_reloc_ptrs = { (sizeof(pdf14_buf_enum_ptrs) / sizeof((pdf14_buf_enum_ptrs)[0])), 0, 0, pdf14_buf_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14_buf = { sizeof(pdf14_buf), "pdf14_buf", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf14_buf_reloc_ptrs };




static const gc_ptr_element_t pdf14_ctx_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_ctx *)0)->stack - (char *)((pdf14_ctx *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_ctx *)0)->mask_stack - (char *)((pdf14_ctx *)0) )) } }; static const gc_struct_data_t pdf14_ctx_reloc_ptrs = { (sizeof(pdf14_ctx_enum_ptrs) / sizeof((pdf14_ctx_enum_ptrs)[0])), 0, 0, pdf14_ctx_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14_ctx = { sizeof(pdf14_ctx), "pdf14_ctx", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf14_ctx_reloc_ptrs };



static const gc_ptr_element_t pdf14_clr_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_parent_color_t *)0)->previous - (char *)((pdf14_parent_color_t *)0) )) } }; static const gc_struct_data_t pdf14_clr_reloc_ptrs = { (sizeof(pdf14_clr_enum_ptrs) / sizeof((pdf14_clr_enum_ptrs)[0])), 0, 0, pdf14_clr_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14_clr = { sizeof(pdf14_parent_color_t), "pdf14_clr", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf14_clr_reloc_ptrs };


static const gc_ptr_element_t pdf14_mask_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_mask_t *)0)->rc_mask - (char *)((pdf14_mask_t *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_mask_t *)0)->previous - (char *)((pdf14_mask_t *)0) )) } }; static const gc_struct_data_t pdf14_mask_reloc_ptrs = { (sizeof(pdf14_mask_enum_ptrs) / sizeof((pdf14_mask_enum_ptrs)[0])), 0, 0, pdf14_mask_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14_mask = { sizeof(pdf14_mask_t), "pdf_mask", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf14_mask_reloc_ptrs };



static const gc_ptr_element_t pdf14_rcmask_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_rcmask_t *)0)->mask_buf - (char *)((pdf14_rcmask_t *)0) )) } }; static const gc_struct_data_t pdf14_rcmask_reloc_ptrs = { (sizeof(pdf14_rcmask_enum_ptrs) / sizeof((pdf14_rcmask_enum_ptrs)[0])), 0, 0, pdf14_rcmask_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14_rcmask = { sizeof(pdf14_rcmask_t), "pdf_rcmask", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf14_rcmask_reloc_ptrs };



static const gc_ptr_element_t pdf14_smaskcolor_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf14_smaskcolor_t *)0)->profiles - (char *)((pdf14_smaskcolor_t *)0) )) } }; static const gc_struct_data_t pdf14_smaskcolor_reloc_ptrs = { (sizeof(pdf14_smaskcolor_enum_ptrs) / sizeof((pdf14_smaskcolor_enum_ptrs)[0])), 0, 0, pdf14_smaskcolor_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14_smaskcolor = { sizeof(pdf14_smaskcolor_t), "pdf14_smaskcolor", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf14_smaskcolor_reloc_ptrs };
# 166 "./base/gdevp14.c"
static int pdf14_open(gx_device * pdev);
static int pdf14_close(gx_device *dev);
static int pdf14_output_page(gx_device * pdev, int num_copies, int flush);
static int pdf14_put_params(gx_device *dev, gs_param_list *plist);
static int (pdf14_cmykspot_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
static const gx_cm_color_map_procs * (pdf14_cmykspot_get_color_mapping_procs)(const gx_device * dev);
gx_color_index (pdf14_encode_color)(gx_device * dev, const gx_color_value colors[]);
gx_color_index (pdf14_encode_color_tag)(gx_device * dev, const gx_color_value colors[]);
gx_color_index (pdf14_compressed_encode_color)(gx_device * dev, const gx_color_value colors[]);
int (pdf14_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
int (pdf14_compressed_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
static int pdf14_fill_rectangle(gx_device *dev, int x, int y, int width, int height, gx_color_index color);
static int pdf14_fill_rectangle_hl_color(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
static int pdf14_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
static int pdf14_copy_mono(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
static int pdf14_fill_mask(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath);
static int pdf14_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
static int pdf14_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
static int pdf14_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);
static int pdf14_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
static int pdf14_forward_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
static int pdf14_begin_transparency_group(gx_device *dev, const gs_transparency_group_params_t *ptgp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem);
static int pdf14_end_transparency_group(gx_device *dev, gs_imager_state *pis);
static int pdf14_begin_transparency_mask(gx_device *dev, const gx_transparency_mask_params_t *ptmp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem);
static int pdf14_end_transparency_mask(gx_device *dev, gs_imager_state *pis);
static int pdf14_dev_spec_op(gx_device *dev, int op, void *data, int datasize);
static int pdf14_clist_get_param_compressed_color_list(pdf14_device * p14dev);
static int pdf14_push_transparency_state(gx_device *dev, gs_imager_state *pis);
static int pdf14_pop_transparency_state(gx_device *dev, gs_imager_state *pis);
static gs_devn_params * pdf14_ret_devn_params(gx_device *dev);
static int pdf14_copy_alpha(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);
static int pdf14_copy_planes(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, int plane_height);
static int pdf14_copy_alpha_hl_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth);
static int pdf14_discard_trans_layer(gx_device *dev, gs_imager_state *pis);

static const gx_color_map_procs *
    pdf14_get_cmap_procs(const gs_imager_state *, const gx_device *);
static const gx_color_map_procs *
    pdf14_get_cmap_procs_group(const gs_imager_state *, const gx_device *);
# 287 "./base/gdevp14.c"
static const gx_device_procs pdf14_Gray_procs =
        { pdf14_open, ((void*)0), ((void*)0), pdf14_output_page, pdf14_close, pdf14_encode_color, pdf14_decode_color, pdf14_fill_rectangle, ((void*)0), pdf14_copy_mono, ((void*)0), ((void*)0), ((void*)0), gx_forward_get_params, pdf14_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha, ((void*)0), ((void*)0), pdf14_fill_path, pdf14_stroke_path, pdf14_fill_mask, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_begin_typed_image, ((void*)0), ((void*)0), pdf14_create_compositor, ((void*)0), pdf14_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, pdf14_discard_trans_layer, gx_default_DevGray_get_color_mapping_procs, gx_default_DevGray_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), pdf14_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, pdf14_ret_devn_params, ((void*)0), pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, pdf14_copy_planes, ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha_hl_color };



static const gx_device_procs pdf14_RGB_procs =
        { pdf14_open, ((void*)0), ((void*)0), pdf14_output_page, pdf14_close, pdf14_encode_color, pdf14_decode_color, pdf14_fill_rectangle, ((void*)0), pdf14_copy_mono, ((void*)0), ((void*)0), ((void*)0), gx_forward_get_params, pdf14_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha, ((void*)0), ((void*)0), pdf14_fill_path, pdf14_stroke_path, pdf14_fill_mask, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_begin_typed_image, ((void*)0), ((void*)0), pdf14_create_compositor, ((void*)0), pdf14_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, pdf14_discard_trans_layer, gx_default_DevRGB_get_color_mapping_procs, gx_default_DevRGB_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), pdf14_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, pdf14_ret_devn_params, ((void*)0), pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, pdf14_copy_planes, ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha_hl_color };



static const gx_device_procs pdf14_CMYK_procs =
        { pdf14_open, ((void*)0), ((void*)0), pdf14_output_page, pdf14_close, pdf14_encode_color, pdf14_decode_color, pdf14_fill_rectangle, ((void*)0), pdf14_copy_mono, ((void*)0), ((void*)0), ((void*)0), gx_forward_get_params, pdf14_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha, ((void*)0), ((void*)0), pdf14_fill_path, pdf14_stroke_path, pdf14_fill_mask, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_begin_typed_image, ((void*)0), ((void*)0), pdf14_create_compositor, ((void*)0), pdf14_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, pdf14_discard_trans_layer, gx_default_DevCMYK_get_color_mapping_procs, gx_default_DevCMYK_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), pdf14_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, pdf14_ret_devn_params, ((void*)0), pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, pdf14_copy_planes, ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha_hl_color };
# 308 "./base/gdevp14.c"
static const gx_device_procs pdf14_CMYKspot_procs =
        { pdf14_open, ((void*)0), ((void*)0), pdf14_output_page, pdf14_close, pdf14_encode_color, pdf14_decode_color, pdf14_fill_rectangle, ((void*)0), pdf14_copy_mono, ((void*)0), ((void*)0), ((void*)0), gx_forward_get_params, pdf14_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha, ((void*)0), ((void*)0), pdf14_fill_path, pdf14_stroke_path, pdf14_fill_mask, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_begin_typed_image, ((void*)0), ((void*)0), pdf14_create_compositor, ((void*)0), pdf14_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, pdf14_discard_trans_layer, pdf14_cmykspot_get_color_mapping_procs, pdf14_cmykspot_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), pdf14_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, pdf14_ret_devn_params, ((void*)0), pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, pdf14_copy_planes, ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha_hl_color };




static const gx_device_procs pdf14_custom_procs =
        { pdf14_open, ((void*)0), ((void*)0), pdf14_output_page, pdf14_close, gx_forward_encode_color, gx_forward_decode_color, pdf14_fill_rectangle, ((void*)0), pdf14_copy_mono, ((void*)0), ((void*)0), ((void*)0), gx_forward_get_params, pdf14_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha, ((void*)0), ((void*)0), pdf14_fill_path, pdf14_stroke_path, pdf14_fill_mask, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_begin_typed_image, ((void*)0), ((void*)0), pdf14_create_compositor, ((void*)0), pdf14_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, pdf14_discard_trans_layer, gx_forward_get_color_mapping_procs, gx_forward_get_color_comp_index, gx_forward_encode_color, gx_forward_decode_color, ((void*)0), pdf14_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, pdf14_ret_devn_params, ((void*)0), pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, pdf14_copy_planes, ((void*)0), ((void*)0), ((void*)0), ((void*)0), pdf14_copy_alpha_hl_color };




static gs_ptr_type_t pdf14_device_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static void pdf14_device_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static const gs_memory_struct_type_t st_pdf14_device = { sizeof(pdf14_device), "pdf14_device", 0, 0, pdf14_device_enum_ptrs, pdf14_device_reloc_ptrs, gx_device_finalize, 0 };



static int pdf14_put_image(gx_device * dev, gs_imager_state * pis,
                                                        gx_device * target);
static int pdf14_cmykspot_put_image(gx_device * dev, gs_imager_state * pis,
                                                        gx_device * target);
static int pdf14_custom_put_image(gx_device * dev, gs_imager_state * pis,
                                                        gx_device * target);


static int pdf14_update_device_color_procs(gx_device *dev,
                              gs_transparency_color_t group_color, int64_t icc_hashcode,
                              gs_imager_state *pis, cmm_profile_t *iccprofile);



static int
pdf14_update_device_color_procs_push_c(gx_device *dev,
                              gs_transparency_color_t group_color, int64_t icc_hashcode,
                              gs_imager_state *pis, cmm_profile_t *iccprofile);

static int
pdf14_update_device_color_procs_pop_c(gx_device *dev,gs_imager_state *pis);

static void pdf14_push_parent_color(gx_device *dev, const gs_imager_state *pis);
static void pdf14_pop_parent_color(gx_device *dev, const gs_imager_state *pis);

static const pdf14_procs_t gray_pdf14_procs = {
    pdf14_unpack_additive,
    pdf14_put_image
};

static const pdf14_procs_t rgb_pdf14_procs = {
    pdf14_unpack_additive,
    pdf14_put_image
};

static const pdf14_procs_t cmyk_pdf14_procs = {
    pdf14_unpack_subtractive,
    pdf14_put_image
};

static const pdf14_procs_t cmykspot_pdf14_procs = {
    pdf14_unpack_compressed,
    pdf14_cmykspot_put_image
};

static const pdf14_procs_t custom_pdf14_procs = {
    pdf14_unpack_custom,
    pdf14_custom_put_image
};

static const pdf14_nonseparable_blending_procs_t gray_blending_procs = {
    art_blend_luminosity_custom_8,
    art_blend_saturation_custom_8
};

static const pdf14_nonseparable_blending_procs_t rgb_blending_procs = {
    art_blend_luminosity_rgb_8,
    art_blend_saturation_rgb_8
};

static const pdf14_nonseparable_blending_procs_t cmyk_blending_procs = {
    art_blend_luminosity_cmyk_8,
    art_blend_saturation_cmyk_8
};

static const pdf14_nonseparable_blending_procs_t custom_blending_procs = {
    art_blend_luminosity_custom_8,
    art_blend_saturation_custom_8
};

const pdf14_device gs_pdf14_Gray_device = {
    sizeof(pdf14_device), &pdf14_Gray_procs, "pdf14gray", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0, {( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 ) , ( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 ) , ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , ((8) == 1 ? 1 : ((8) + 7) & ~7) , ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 3 ? 0xff : (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) , ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 3 ? 0 : (1 << ((8) - ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) * ((8) / (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 ))))) - 1 ) , ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? 0 : (1 << ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 3 ? (8) / (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) : ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? 0 : ((8) - ((8) - ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) * ((8) / (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 ))))) / ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? (1) : (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) ) )) - 1 ) , ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 3 ? 0 : (1 << ((8) - ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) * ((8) / (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 ))))) - 1 ) + 1 , ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? 0 : (1 << ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 3 ? (8) / (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) : ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? 0 : ((8) - ((8) - ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) * ((8) / (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 ))))) / ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? (1) : (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) - 1) ) )) - 1 ) + 1 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 1 ? "DeviceGray" : ((( (8) <= 1 ? 1 : ((8) % 3 == 0 || (8) == 4 || (8) == 8 ) ? 3 : 4 )) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },



    { 0 },
    ((void*)0),
    { 0 },
    &gray_pdf14_procs,
    &gray_blending_procs
};

const pdf14_device gs_pdf14_RGB_device = {
    sizeof(pdf14_device), &pdf14_RGB_procs, "pdf14RGB", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0, {3 , 3 , ( (3) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 24 , ((3) == 3 ? 0xff : (3) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (3) == 1 ? "DeviceGray" : ((3) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },


    { 0 },
    ((void*)0),
    { 0 },
    &rgb_pdf14_procs,
    &rgb_blending_procs
};

const pdf14_device gs_pdf14_CMYK_device = {
    sizeof(pdf14_device), &pdf14_CMYK_procs, "pdf14cmyk", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0, {( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ) , ( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , ((32) == 1 ? 1 : ((32) + 7) & ~7) , ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? 0xff : (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? 0 : (1 << ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) - 1 ) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : (1 << ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? (32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) : ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : ((32) - ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) / ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? (1) : (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) ) )) - 1 ) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? 0 : (1 << ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) - 1 ) + 1 , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : (1 << ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? (32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) : ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : ((32) - ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) / ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? (1) : (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) ) )) - 1 ) + 1 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? "DeviceGray" : ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },


    { 0 },
    ((void*)0),
    { 0 },
    &cmyk_pdf14_procs,
    &cmyk_blending_procs
};

const pdf14_device gs_pdf14_CMYKspot_device = {
    sizeof(pdf14_device), &pdf14_CMYKspot_procs, "pdf14cmykspot", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0,

    {(8 * 8) , (8 * 8) , ( ((8 * 8)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 64 , (((8 * 8)) == 3 ? 0xff : ((8 * 8)) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((8 * 8)) == 1 ? "DeviceGray" : (((8 * 8)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 },
    { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 },
    {0, 0}, {0, 0, 0, 0},
    0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },
    { 0 },
    ((void*)0),

    { 8,
      DeviceCMYKComponents,
      4,
      0,
      -1,
      {0},
      0,
      {0, 1, 2, 3, 4, 5, 6, 7 }
    },
    &cmykspot_pdf14_procs,
    &cmyk_blending_procs
};
# 462 "./base/gdevp14.c"
const pdf14_device gs_pdf14_custom_device = {
    sizeof(pdf14_device), &pdf14_custom_procs, "pdf14custom", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0,

    {(8 * 8) , (8 * 8) , ( ((8 * 8)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 64 , (((8 * 8)) == 3 ? 0xff : ((8 * 8)) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((8 * 8)) == 1 ? "DeviceGray" : (((8 * 8)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 },
    { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 },
    {0, 0}, {0, 0, 0, 0},
    0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },
    { 0 },
    ((void*)0),

    { 8,
      DeviceCMYKComponents,
      4,
      0,
      -1,
      {0},
      0,
      {0, 1, 2, 3, 4, 5, 6, 7 }
    },
    &custom_pdf14_procs,
    &custom_blending_procs
};





static int no_print_page(gx_device_printer *, FILE *);

static int
no_print_page(gx_device_printer *pdev, FILE *prn_stream)
{
    return ((-1));
}

struct gx_device_pdf14_accum_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
    byte skip[(((sizeof(gx_device_memory)) > (sizeof(gx_device_clist))) ? (sizeof(gx_device_memory)) : (sizeof(gx_device_clist))) - sizeof(gx_device) + sizeof(double) ]; gx_printer_device_procs printer_procs; char fname[4096]; bool BLS_force_memory; bool OpenOutputFile; bool ReopenPerPage; bool Duplex; int Duplex_set; bool file_is_new; FILE *file; long buffer_space; byte *buf; gs_memory_t *buffer_memory; gs_memory_t *bandlist_memory; int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current); gx_page_queue_t *page_queue; bool is_async_renderer; gx_device_printer *async_renderer; uint clist_disable_mask; bool bg_print_requested; bg_print_t bg_print; int num_render_threads_requested; gx_saved_pages_list *saved_pages_list; gx_device_procs save_procs_while_delaying_erasepage; gx_device_procs orig_procs;
    gx_device *save_p14dev;
};
typedef struct gx_device_pdf14_accum_s gx_device_pdf14_accum;

static const gc_ptr_element_t pdf14_accum_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((gx_device_pdf14_accum *)0)->save_p14dev - (char *)((gx_device_pdf14_accum *)0) )) } }; static const gc_struct_data_t pdf14_accum_reloc_ptrs = { (sizeof(pdf14_accum_enum_ptrs) / sizeof((pdf14_accum_enum_ptrs)[0])), 0, &st_device_printer, pdf14_accum_enum_ptrs }; const gs_memory_struct_type_t st_pdf14_accum = { sizeof(gx_device_pdf14_accum), "gx_device_pdf14_accum", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, gx_device_finalize, &pdf14_accum_reloc_ptrs };



static const gx_device_procs pdf14_accum_Gray_procs =
    { gdev_prn_open, ((void*)0), ((void*)0), ((void*)0), gdev_prn_close, gx_default_8bit_map_gray_color, gx_default_8bit_map_color_gray, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_prn_get_params, gdev_prn_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_page_device_get_page_device, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_prn_dev_spec_op, ((void*)0), gx_default_get_profile, gx_default_set_graphics_type_tag };


const gx_device_pdf14_accum pdf14_accum_Gray = {
    sizeof(gx_device_pdf14_accum), &pdf14_accum_Gray_procs, "pdf14-accum-Gray", 0 , &st_pdf14_accum, 0 , 0 , { 0 } , 0 , 0 , 0, {1 , 1 , ( (1) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 8 , ((1) == 3 ? 0xff : (1) - 1) , 255 , 0 , 256 , 0 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (1) == 1 ? "DeviceGray" : ((1) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(0) * (300) / 10 + 0.5), (int)((float)(0) * (300) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(0) * (300) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (300)) , (float)(((((int)((float)(0) * (300) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (300)) }, { 0, 0, 0, 0 } , 0 , { 300, 300 } , { 300, 300 }, {(float)(-(0) * (300)), (float)(-(0) * (300))}, {(float)((0) * 72.0), (float)((0) * 72.0), (float)((0) * 72.0), (float)((0) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { no_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 },






    0
};

static const gx_device_procs pdf14_accum_RGB_procs =
    { gdev_prn_open, ((void*)0), ((void*)0), ((void*)0), gdev_prn_close, gx_default_rgb_map_rgb_color, gx_default_rgb_map_color_rgb, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_prn_get_params, gdev_prn_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_page_device_get_page_device, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_prn_dev_spec_op, ((void*)0), gx_default_get_profile, gx_default_set_graphics_type_tag };


const gx_device_pdf14_accum pdf14_accum_RGB = {
    sizeof(gx_device_pdf14_accum), &pdf14_accum_RGB_procs, "pdf14-accum-RGB", 0 , &st_pdf14_accum, 0 , 0 , { 0 } , 0 , 0 , 0, {3 , 3 , ( (3) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 24 , ((3) == 3 ? 0xff : (3) - 1) , 0 , 255 , 1 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (3) == 1 ? "DeviceGray" : ((3) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(0) * (300) / 10 + 0.5), (int)((float)(0) * (300) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(0) * (300) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (300)) , (float)(((((int)((float)(0) * (300) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (300)) }, { 0, 0, 0, 0 } , 0 , { 300, 300 } , { 300, 300 }, {(float)(-(0) * (300)), (float)(-(0) * (300))}, {(float)((0) * 72.0), (float)((0) * 72.0), (float)((0) * 72.0), (float)((0) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { no_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 },






    0
};

static const gx_device_procs pdf14_accum_CMYK_procs =
    { gdev_prn_open, ((void*)0), ((void*)0), ((void*)0), gdev_prn_close, cmyk_8bit_map_cmyk_color, cmyk_8bit_map_color_cmyk, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_prn_get_params, gdev_prn_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_page_device_get_page_device, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_prn_dev_spec_op, ((void*)0), gx_default_get_profile, gx_default_set_graphics_type_tag };


const gx_device_pdf14_accum pdf14_accum_CMYK = {
    sizeof(gx_device_pdf14_accum), &pdf14_accum_CMYK_procs, "pdf14-accum-CMYK", 0 , &st_pdf14_accum, 0 , 0 , { 0 } , 0 , 0 , 0, {4 , 4 , ( (4) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 32 , ((4) == 3 ? 0xff : (4) - 1) , 0 , 255 , 1 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (4) == 1 ? "DeviceGray" : ((4) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(0) * (300) / 10 + 0.5), (int)((float)(0) * (300) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(0) * (300) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (300)) , (float)(((((int)((float)(0) * (300) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (300)) }, { 0, 0, 0, 0 } , 0 , { 300, 300 } , { 300, 300 }, {(float)(-(0) * (300)), (float)(-(0) * (300))}, {(float)((0) * 72.0), (float)((0) * 72.0), (float)((0) * 72.0), (float)((0) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { no_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 },






    0
};


static
gs_ptr_type_t pdf14_device_enum_ptrs(const gs_memory_t *mem, const void *vptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { const pdf14_device *pdev = vptr; switch ( index ) { default:
{
    index -= 7;
    if (index < pdev->devn_params.separations.num_separations)
        return (pep->ptr = (const void *)(pdev->devn_params.separations.names[index].data), (&ptr_struct_procs));
    index -= pdev->devn_params.separations.num_separations;
    if (index < pdev->devn_params.pdf14_separations.num_separations)
        return (pep->ptr = (const void *)(pdev->devn_params.pdf14_separations.names[index].data), (&ptr_struct_procs));
    return 0;
}
case 0: return (pep->ptr = (const void *)(pdev->ctx), (&ptr_struct_procs));
case 1: return (pep->ptr = (const void *)(pdev->trans_group_parent_cmap_procs), (&ptr_struct_procs));
case 2: return (pep->ptr = (const void *)(pdev->smaskcolor), (&ptr_struct_procs));
case 3: return (pep->ptr = (const void *)(gx_device_enum_ptr(pdev->target)), (&ptr_struct_procs));
case 4: return (pep->ptr = (const void *)(pdev->devn_params.compressed_color_list), (&ptr_struct_procs));
case 5: return (pep->ptr = (const void *)(pdev->devn_params.pdf14_compressed_color_list), (&ptr_struct_procs));
case 6: return (pep->ptr = (const void *)(gx_device_enum_ptr(pdev->pclist_device)), (&ptr_struct_procs));
} }

static void pdf14_device_reloc_ptrs(void *vptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { pdf14_device *pdev = vptr;
{
    {
        int i;

        for (i = 0; i < pdev->devn_params.separations.num_separations; ++i) {
            (((pdf14_device *)vptr)->devn_params.separations.names[i].data = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((pdf14_device *)vptr)->devn_params.separations.names[i].data), gcst)));
        }
    }
    (((pdf14_device *)vptr)->devn_params.compressed_color_list = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((pdf14_device *)vptr)->devn_params.compressed_color_list), gcst)));
    (((pdf14_device *)vptr)->devn_params.pdf14_compressed_color_list = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((pdf14_device *)vptr)->devn_params.pdf14_compressed_color_list), gcst)));
    (pdev->ctx = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(pdev->ctx), gcst)));
    (pdev->smaskcolor = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(pdev->smaskcolor), gcst)));
    (pdev->trans_group_parent_cmap_procs = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(pdev->trans_group_parent_cmap_procs), gcst)));
    pdev->target = gx_device_reloc_ptr(pdev->target, gcst);
    pdev->pclist_device = gx_device_reloc_ptr(pdev->pclist_device, gcst);
}
}
# 601 "./base/gdevp14.c"
static pdf14_buf *
pdf14_buf_new(gs_int_rect *rect, bool has_tags, bool has_alpha_g,
              bool has_shape, bool idle, int n_chan, gs_memory_t *memory)
{






    pdf14_buf *result;
    pdf14_parent_color_t *new_parent_color;
    int rowstride = (rect->q.x - rect->p.x + 3) & -4;
    int height = (rect->q.y - rect->p.y);
    int n_planes = n_chan + (has_shape ? 1 : 0) + (has_alpha_g ? 1 : 0) +
                   (has_tags ? 1 : 0);
    int planestride;
    double dsize = (((double) rowstride) * height) * n_planes;

    if (dsize > (double)((unsigned int)~0 + (unsigned int)0))
      return ((void*)0);

    result = (pdf14_buf *)(*(memory)->procs.alloc_struct)(memory, &st_pdf14_buf, "pdf14_buf_new");

    if (result == ((void*)0))
        return result;

    result->backdrop = ((void*)0);
    result->saved = ((void*)0);
    result->isolated = ((bool)0);
    result->knockout = ((bool)0);
    result->has_alpha_g = has_alpha_g;
    result->has_shape = has_shape;
    result->has_tags = has_tags;
    result->rect = *rect;
    result->n_chan = n_chan;
    result->n_planes = n_planes;
    result->rowstride = rowstride;
    result->transfer_fn = ((void*)0);
    result->mask_stack = ((void*)0);
    result->idle = idle;
    result->mask_id = 0;
    new_parent_color = (pdf14_parent_color_t *)(*(memory)->procs.alloc_struct)(memory, &st_pdf14_clr, "pdf14_buf_new");

    result->parent_color_info_procs = new_parent_color;
    result->parent_color_info_procs->get_cmap_procs = ((void*)0);
    result->parent_color_info_procs->parent_color_mapping_procs = ((void*)0);
    result->parent_color_info_procs->parent_color_comp_index = ((void*)0);
    result->parent_color_info_procs->icc_profile = ((void*)0);
    result->parent_color_info_procs->previous = ((void*)0);
    result->parent_color_info_procs->encode = ((void*)0);
    result->parent_color_info_procs->decode = ((void*)0);
    if (height <= 0) {

        result->planestride = 0;
        result->data = 0;
    } else {
        planestride = rowstride * height;
        result->planestride = planestride;
        result->data = (*(memory)->procs.alloc_bytes)(memory, planestride * n_planes, "pdf14_buf_new");

        if (result->data == ((void*)0)) {
            ((memory)->procs.free_object(memory, result, "pdf_buf_new"));
            return ((void*)0);
        }
        if (has_alpha_g) {
            int alpha_g_plane = n_chan + (has_shape ? 1 : 0);
            memset (result->data + alpha_g_plane * planestride, 0, planestride);
        }
        if (has_tags) {
            int tags_plane = n_chan + (has_shape ? 1 : 0) + (has_alpha_g ? 1 : 0);
            memset (result->data + tags_plane * planestride,
                    GS_UNTOUCHED_TAG, planestride);
        }
    }



    result->dirty.p.x = rect->q.x;
    result->dirty.p.y = rect->q.y;
    result->dirty.q.x = rect->p.x;
    result->dirty.q.y = rect->p.y;
    return result;
}

static void
pdf14_buf_free(pdf14_buf *buf, gs_memory_t *memory)
{
    ((memory)->procs.free_object(memory, buf->mask_stack, "pdf14_buf_free"));
    ((memory)->procs.free_object(memory, buf->transfer_fn, "pdf14_buf_free"));
    ((memory)->procs.free_object(memory, buf->data, "pdf14_buf_free"));
    ((memory)->procs.free_object(memory, buf->parent_color_info_procs, "pdf14_buf_free"));
    ((memory)->procs.free_object(memory, buf->backdrop, "pdf14_buf_free"));
    ((memory)->procs.free_object(memory, buf, "pdf14_buf_free"));
}

static void
rc_pdf14_maskbuf_free(gs_memory_t * mem, void *ptr_in, client_name_t cname)
{

    pdf14_rcmask_t *rcmask = (pdf14_rcmask_t * ) ptr_in;

    if ( rcmask->mask_buf != ((void*)0) ){
        pdf14_buf_free(rcmask->mask_buf, mem);
    }
    ((mem)->procs.free_object(mem, rcmask, "rc_pdf14_maskbuf_free"));
}

static pdf14_rcmask_t *
pdf14_rcmask_new(gs_memory_t *memory)
{
    pdf14_rcmask_t *result;

    result = (pdf14_rcmask_t *)(*(memory)->procs.alloc_struct)(memory, &st_pdf14_rcmask, "pdf14_maskbuf_new");

    if ( result == ((void*)0) )
        return(((void*)0));
    do { (result)->rc.ref_count = 1; (result)->rc.memory = memory; (result)->rc.free = rc_pdf14_maskbuf_free; do { } while (0); } while (0);
    result->mask_buf = ((void*)0);
    result->memory = memory;
    return(result);
}

static pdf14_ctx *
pdf14_ctx_new(gs_int_rect *rect, int n_chan, bool additive, gx_device *dev)
{
    pdf14_ctx *result;
    pdf14_buf *buf;
    gs_memory_t *memory = dev->memory;
    bool has_tags = dev->graphics_type_tag & GS_DEVICE_ENCODES_TAGS;

    result = (pdf14_ctx *)(*(memory)->procs.alloc_struct)(memory, &st_pdf14_ctx, "pdf14_ctx_new");

    if (result == ((void*)0))
        return result;

    buf = pdf14_buf_new(rect, has_tags, ((bool)0), ((bool)0), ((bool)0), n_chan + 1, memory);
    if (buf == ((void*)0)) {
        ((memory)->procs.free_object(memory, result, "pdf14_ctx_new"));
        return ((void*)0);
    }
    do { } while (0);


    if (buf->data != ((void*)0)) {
        if (buf->has_tags) {
            memset(buf->data, 0, buf->planestride * (buf->n_planes-1));
        } else {
            memset(buf->data, 0, buf->planestride * buf->n_planes);
        }
    }
    buf->saved = ((void*)0);
    result->stack = buf;
    result->mask_stack = pdf14_mask_element_new(memory);
    result->mask_stack->rc_mask = pdf14_rcmask_new(memory);
    result->n_chan = n_chan;
    result->memory = memory;
    result->rect = *rect;
    result->additive = additive;
    result->smask_depth = 0;
    result->smask_blend = ((bool)0);
    return result;
}

static void
pdf14_ctx_free(pdf14_ctx *ctx)
{
    pdf14_buf *buf, *next;

    if (ctx->mask_stack) {

        do { if (ctx->mask_stack->rc_mask) { do { do { } while (0); (ctx->mask_stack->rc_mask)->rc.ref_count += (-1); } while (0); if (!(ctx->mask_stack->rc_mask)->rc.ref_count) { do { do { } while (0); (ctx->mask_stack->rc_mask)->rc.free((ctx->mask_stack->rc_mask)->rc.memory, (void *)(ctx->mask_stack->rc_mask), "pdf14_ctx_free"); } while (0); (ctx->mask_stack->rc_mask) = 0; } else do { } while (0); } } while (0);
        ((ctx->memory)->procs.free_object(ctx->memory, ctx->mask_stack, "pdf14_ctx_free"));
    }
    for (buf = ctx->stack; buf != ((void*)0); buf = next) {
        next = buf->saved;
        pdf14_buf_free(buf, ctx->memory);
    }
    ((ctx->memory)->procs.free_object(ctx->memory, ctx, "pdf14_ctx_free"));
}







static pdf14_buf *
pdf14_find_backdrop_buf(pdf14_ctx *ctx)
{
    pdf14_buf *buf = ctx->stack;

    while (buf != ((void*)0)) {
        if (buf->isolated) return ((void*)0);
        if (buf->knockout && !buf->isolated) return buf->saved;


        if (buf->saved != ((void*)0) && buf->saved->knockout && buf->saved->isolated) return ((void*)0);


        if (buf->saved != ((void*)0) && buf->saved->knockout && !buf->saved->isolated)
            return ((void*)0);

        if (!buf->knockout) return buf->saved;
        buf = buf->saved;
    }


    return ((void*)0);
}

static int
pdf14_push_transparency_group(pdf14_ctx *ctx, gs_int_rect *rect, bool isolated,
                              bool knockout, byte alpha, byte shape,
                              gs_blend_mode_t blend_mode, bool idle, uint mask_id,
                              int numcomps, bool cm_back_drop,
                              cmm_profile_t *group_profile,
                              cmm_profile_t *tos_profile, gs_imager_state *pis,
                              gx_device *dev)
{
    pdf14_buf *tos = ctx->stack;
    pdf14_buf *buf, *backdrop;
    bool has_shape, has_tags;

    do { } while (0);




    has_shape = tos->has_shape || tos->knockout;

    has_tags = tos->has_tags;






    buf = pdf14_buf_new(rect, has_tags, !isolated, has_shape, idle, numcomps + 1,
                        ctx->memory);
    do { } while (0);


    if (buf == ((void*)0))
        return ((-25));
    buf->isolated = isolated;
    buf->knockout = knockout;
    buf->alpha = alpha;
    buf->shape = shape;
    buf->blend_mode = blend_mode;
    buf->mask_id = mask_id;
    buf->mask_stack = ctx->mask_stack;

    ctx->mask_stack = ((void*)0);

    buf->saved = tos;
    ctx->stack = buf;
    if (buf->data == ((void*)0))
        return 0;
    if (idle)
        return 0;
    backdrop = pdf14_find_backdrop_buf(ctx);
    if (backdrop == ((void*)0)) {
        memset(buf->data, 0, buf->planestride * (buf->n_chan +
                                                 (buf->has_shape ? 1 : 0) +
                                                 (buf->has_alpha_g ? 1 : 0) +
                                                 (buf->has_tags ? 1 : 0)));
    } else {
        if (!buf->knockout) {
            if (!cm_back_drop) {
                pdf14_preserve_backdrop(buf, tos, ((bool)0));
            } else {


                pdf14_preserve_backdrop_cm(buf, group_profile, tos, tos_profile,
                                           ctx->memory, pis, dev, ((bool)0));
            }
        }
    }



    if (buf->knockout) {
        buf->backdrop = (*(ctx->memory)->procs.alloc_bytes)(ctx->memory, buf->planestride * buf->n_chan, "pdf14_push_transparency_group");

        if (buf->backdrop == ((void*)0)) {
            ((ctx->memory)->procs.free_object(ctx->memory, buf->backdrop, "pdf14_push_transparency_group"));
            return gs_throw_imp(__func__, "./base/gdevp14.c", 888, 0, (-25), "Knockout backdrop allocation failed");
        }
        if (buf->isolated) {

            memset(buf->backdrop, 0, buf->planestride * buf->n_chan);
        } else {



            pdf14_buf *check = tos;
            pdf14_buf *child = ((void*)0);
            cmm_profile_t *prev_knockout_profile;

            while (check != ((void*)0)) {
                if (check->isolated)
                    break;
                if (check->knockout) {
                    break;
                }
                child = check;
                check = check->saved;
            }


            if (check == ((void*)0)) {
                prev_knockout_profile = tos_profile;
                check = tos;
            } else {
                if (child == ((void*)0)) {
                    prev_knockout_profile = tos_profile;
                } else {
                    prev_knockout_profile = child->parent_color_info_procs->icc_profile;
                }
            }
            if (!cm_back_drop) {
                pdf14_preserve_backdrop(buf, check, ((bool)0));
            } else {


                pdf14_preserve_backdrop_cm(buf, group_profile, check,
                                           prev_knockout_profile, ctx->memory, pis,
                                           dev, ((bool)0));
            }
            memcpy(buf->backdrop, buf->data, buf->planestride * buf->n_chan);
        }
# 941 "./base/gdevp14.c"
    }
# 950 "./base/gdevp14.c"
    return 0;
}

static int
pdf14_pop_transparency_group(gs_imager_state *pis, pdf14_ctx *ctx,
    const pdf14_nonseparable_blending_procs_t * pblend_procs,
    int curr_num_color_comp, cmm_profile_t *curr_icc_profile, gx_device *dev)
{
    pdf14_buf *tos = ctx->stack;
    pdf14_buf *nos = tos->saved;
    pdf14_mask_t *mask_stack = tos->mask_stack;
    pdf14_buf *maskbuf;
    int x0, x1, y0, y1;
    byte *new_data_buf = ((void*)0);
    int num_noncolor_planes, new_num_planes;
    int num_cols, num_rows, num_newcolor_planes;
    bool icc_match;
    gsicc_rendering_param_t rendering_params;
    gsicc_link_t *icc_link;
    gsicc_bufferdesc_t input_buff_desc;
    gsicc_bufferdesc_t output_buff_desc;
    pdf14_device *pdev = (pdf14_device *)dev;
    bool overprint = pdev->overprint;
    gx_color_index drawn_comps = pdev->drawn_comps;
    bool blendspot = pdev->blendspot;
    bool nonicc_conversion = ((bool)1);




    if ( mask_stack == ((void*)0)) {
        maskbuf = ((void*)0);
    } else {
        maskbuf = mask_stack->rc_mask->mask_buf;
    }
    if (nos == ((void*)0))
        return ((-15));


    do { if ((tos->rect).p.x > (tos->dirty).p.x) (tos->dirty).p.x = (tos->rect).p.x; if ((tos->rect).q.x < (tos->dirty).q.x) (tos->dirty).q.x = (tos->rect).q.x; if ((tos->rect).p.y > (tos->dirty).p.y) (tos->dirty).p.y = (tos->rect).p.y; if ((tos->rect).q.y < (tos->dirty).q.y) (tos->dirty).q.y = (tos->rect).q.y; } while (0);
    do { if ((nos->rect).p.x > (nos->dirty).p.x) (nos->dirty).p.x = (nos->rect).p.x; if ((nos->rect).q.x < (nos->dirty).q.x) (nos->dirty).q.x = (nos->rect).q.x; if ((nos->rect).p.y > (nos->dirty).p.y) (nos->dirty).p.y = (nos->rect).p.y; if ((nos->rect).q.y < (nos->dirty).q.y) (nos->dirty).q.y = (nos->rect).q.y; } while (0);


    y0 = (((tos->dirty.p.y) > (nos->rect.p.y)) ? (tos->dirty.p.y) : (nos->rect.p.y));
    y1 = (((tos->dirty.q.y) < (nos->rect.q.y)) ? (tos->dirty.q.y) : (nos->rect.q.y));
    x0 = (((tos->dirty.p.x) > (nos->rect.p.x)) ? (tos->dirty.p.x) : (nos->rect.p.x));
    x1 = (((tos->dirty.q.x) < (nos->rect.q.x)) ? (tos->dirty.q.x) : (nos->rect.q.x));
    if (ctx->mask_stack) {







        do { if (ctx->mask_stack->rc_mask) { do { do { } while (0); (ctx->mask_stack->rc_mask)->rc.ref_count += (-1); } while (0); if (!(ctx->mask_stack->rc_mask)->rc.ref_count) { do { do { } while (0); (ctx->mask_stack->rc_mask)->rc.free((ctx->mask_stack->rc_mask)->rc.memory, (void *)(ctx->mask_stack->rc_mask), "pdf14_pop_transparency_group"); } while (0); (ctx->mask_stack->rc_mask) = 0; } else do { } while (0); } } while (0);
        if (ctx->mask_stack->rc_mask == ((void*)0) ){
            ((ctx->memory)->procs.free_object(ctx->memory, ctx->mask_stack, "pdf14_pop_transparency_group"));
        }
        ctx->mask_stack = ((void*)0);
    }
    ctx->mask_stack = mask_stack;
    tos->mask_stack = ((void*)0);
    if (tos->idle)
        goto exit;
    if (maskbuf != ((void*)0) && maskbuf->data == ((void*)0) && maskbuf->alpha == 255)
        goto exit;
# 1032 "./base/gdevp14.c"
    if ( nos->parent_color_info_procs->icc_profile != ((void*)0) ) {
        icc_match = (nos->parent_color_info_procs->icc_profile->hashcode !=
                        curr_icc_profile->hashcode);
    } else {

        icc_match = ((bool)0);
    }


    if ( (nos->parent_color_info_procs->parent_color_mapping_procs != ((void*)0) &&
          nos->parent_color_info_procs->num_components != curr_num_color_comp)
                    || icc_match ) {
        if (x0 < x1 && y0 < y1) {




            num_noncolor_planes = tos->n_planes - curr_num_color_comp;
            num_newcolor_planes = nos->parent_color_info_procs->num_components;
            new_num_planes = num_noncolor_planes + num_newcolor_planes;


            if (nos->parent_color_info_procs->icc_profile != ((void*)0) &&
                curr_icc_profile != ((void*)0)) {


                rendering_params.black_point_comp = gsBLACKPTCOMP_ON;
                rendering_params.graphics_type_tag = GS_IMAGE_TAG;
                rendering_params.override_icc = ((bool)0);
                rendering_params.preserve_black = gsBKPRESNOTSPECIFIED;
                rendering_params.rendering_intent = gsPERCEPTUAL;
                rendering_params.cmm = gsCMM_DEFAULT;





                icc_link = gsicc_get_link_profile(pis, dev, curr_icc_profile,
                                    nos->parent_color_info_procs->icc_profile,
                                    &rendering_params, pis->memory, ((bool)0));
                if (icc_link != ((void*)0)) {

                    nonicc_conversion = ((bool)0);


                    if ( !(icc_link->is_identity) ) {
# 1086 "./base/gdevp14.c"
                        if( num_newcolor_planes != curr_num_color_comp ) {

                            new_data_buf = (*(ctx->memory)->procs.alloc_bytes)(ctx->memory, tos->planestride*new_num_planes, "pdf14_buf_new");


                            if (new_data_buf == ((void*)0))
                                return ((-25));

                            memcpy(new_data_buf + tos->planestride * num_newcolor_planes,
                                   tos->data + tos->planestride * curr_num_color_comp,
                                   tos->planestride * num_noncolor_planes);
                        } else {

                            new_data_buf = tos->data;
                        }




                        num_rows = tos->rect.q.y - tos->rect.p.y;
                        num_cols = tos->rect.q.x - tos->rect.p.x;
                        gsicc_init_buffer(&input_buff_desc, curr_num_color_comp, 1,
                                          ((bool)0), ((bool)0), ((bool)1),
                                          tos->planestride, tos->rowstride,
                                          num_rows, num_cols);
                        gsicc_init_buffer(&output_buff_desc,
                                          nos->parent_color_info_procs->num_components,
                                          1, ((bool)0), ((bool)0), ((bool)1), tos->planestride,
                                          tos->rowstride, num_rows, num_cols);





                        (icc_link->procs.map_buffer)(dev, icc_link, &input_buff_desc,
                                                     &output_buff_desc, tos->data,
                                                     new_data_buf);
                    }

                    gsicc_release_link(icc_link);

                    if( !(icc_link->is_identity) &&
                        num_newcolor_planes != curr_num_color_comp ) {
                        ((ctx->memory)->procs.free_object(ctx->memory, tos->data, "pdf14_buf_free"));
                        tos->data = new_data_buf;
                    }
                }
            }
            if (nonicc_conversion) {

                new_data_buf = (*(ctx->memory)->procs.alloc_bytes)(ctx->memory, tos->planestride*new_num_planes, "pdf14_buf_new");

                if (new_data_buf == ((void*)0))
                    return ((-25));
                gs_transform_color_buffer_generic(tos->data, tos->rowstride,
                            tos->planestride,curr_num_color_comp, tos->rect,
                            new_data_buf, num_newcolor_planes, num_noncolor_planes);

                ((ctx->memory)->procs.free_object(ctx->memory, tos->data, "pdf14_buf_free"));
                 tos->data = new_data_buf;
            }

             tos->n_chan = nos->n_chan;
             tos->n_planes = nos->n_planes;
# 1158 "./base/gdevp14.c"
             pdf14_compose_group(tos, nos, maskbuf, x0, x1, y0, y1, nos->n_chan,
                 nos->parent_color_info_procs->isadditive,
                 nos->parent_color_info_procs->parent_blending_procs,
                 ((bool)0), drawn_comps, ((bool)0), ctx->memory);
        }
    } else {

        if (x0 < x1 && y0 < y1)
            pdf14_compose_group(tos, nos, maskbuf, x0, x1, y0, y1,nos->n_chan,
                                ctx->additive, pblend_procs, overprint,
                                drawn_comps, blendspot, ctx->memory);
    }
exit:
    ctx->stack = nos;



    if (ctx->smask_depth > 0 && maskbuf != ((void*)0)) {


        ctx->smask_blend = ((bool)1);
    }
    do { } while (0);
    pdf14_buf_free(tos, ctx->memory);
    return 0;
}







static int
pdf14_push_transparency_mask(pdf14_ctx *ctx, gs_int_rect *rect, byte bg_alpha,
                             byte *transfer_fn, bool idle, bool replacing,
                             uint mask_id, gs_transparency_mask_subtype_t subtype,
                             int numcomps, int Background_components,
                             const float Background[],
                             const float GrayBackground)
{
    pdf14_buf *buf;
    unsigned char *curr_ptr, gray;

    do { } while (0);


    ctx->smask_depth += 1;
# 1214 "./base/gdevp14.c"
    buf = pdf14_buf_new(rect, ((bool)0), ((bool)0), ((bool)0), idle, numcomps+1,
                        ctx->memory);
    if (buf == ((void*)0))
        return ((-25));
    buf->alpha = bg_alpha;

    buf->isolated = ((bool)1);
    buf->knockout = ((bool)0);
    buf->shape = 0xff;
    buf->blend_mode = BLEND_MODE_Normal;
    buf->transfer_fn = transfer_fn;
    buf->mask_id = mask_id;
    {



        buf->mask_stack = ctx->mask_stack;
        if (buf->mask_stack){
            do { if (buf->mask_stack->rc_mask) do { (buf->mask_stack->rc_mask)->rc.ref_count++; do { } while (0); } while (0); } while (0);
        }
    }
# 1245 "./base/gdevp14.c"
    buf->saved = ctx->stack;
    ctx->stack = buf;


    buf->SMask_SubType = subtype;
    if (buf->data != ((void*)0)){






        if ( Background_components && GrayBackground != 0.0 ) {
            curr_ptr = buf->data;
            gray = (unsigned char) (255.0 * GrayBackground);
            memset(curr_ptr, gray, buf->planestride);
                curr_ptr += buf->planestride;



            memset(curr_ptr, 255, buf->planestride *(buf->n_chan - 1));
        } else {

            memset(buf->data, 0, buf->planestride * buf->n_chan);
        }
    }
    return 0;
}

static void pdf14_free_mask_stack(pdf14_mask_t *mask_stack, gs_memory_t *memory)
{
    if (mask_stack->rc_mask != ((void*)0)) {
        pdf14_mask_t *curr_mask = mask_stack;
        pdf14_mask_t *old_mask;
        while (curr_mask != ((void*)0)) {
            do { if (curr_mask->rc_mask) { do { do { } while (0); (curr_mask->rc_mask)->rc.ref_count += (-1); } while (0); if (!(curr_mask->rc_mask)->rc.ref_count) { do { do { } while (0); (curr_mask->rc_mask)->rc.free((curr_mask->rc_mask)->rc.memory, (void *)(curr_mask->rc_mask), "pdf14_free_mask_stack"); } while (0); (curr_mask->rc_mask) = 0; } else do { } while (0); } } while (0);
            old_mask = curr_mask;
            curr_mask = curr_mask->previous;
            ((old_mask->memory)->procs.free_object(old_mask->memory, old_mask, "pdf14_free_mask_stack"));
        }
    } else {
        ((memory)->procs.free_object(memory, mask_stack, "pdf14_free_mask_stack"));
    }
}

static int
pdf14_pop_transparency_mask(pdf14_ctx *ctx, gs_imager_state *pis, gx_device *dev)
{
    pdf14_buf *tos = ctx->stack;
    byte *new_data_buf;
    int icc_match;
    cmm_profile_t *des_profile = tos->parent_color_info_procs->icc_profile;
    cmm_profile_t *src_profile;
    gsicc_rendering_param_t rendering_params;
    gsicc_link_t *icc_link;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    ((dev)->procs.get_profile)(dev, &dev_profile);
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &src_profile,
                          &render_cond);
    ctx->smask_depth -= 1;



    if ( des_profile != ((void*)0) && src_profile != ((void*)0) ) {
        icc_match = (des_profile->hashcode == src_profile->hashcode);
    } else {
        icc_match = -1;
    }
    do { } while (0);

    ctx->stack = tos->saved;
    tos->saved = ((void*)0);
    if (tos->mask_stack) {






        do { if (tos->mask_stack->rc_mask) { do { do { } while (0); (tos->mask_stack->rc_mask)->rc.ref_count += (-1); } while (0); if (!(tos->mask_stack->rc_mask)->rc.ref_count) { do { do { } while (0); (tos->mask_stack->rc_mask)->rc.free((tos->mask_stack->rc_mask)->rc.memory, (void *)(tos->mask_stack->rc_mask), "pdf14_pop_transparency_mask(tos->mask_stack->rc_mask)"); } while (0); (tos->mask_stack->rc_mask) = 0; } else do { } while (0); } } while (0);

        if (tos->mask_stack->rc_mask) {
            if (tos->mask_stack->rc_mask->rc.ref_count == 1){
                do { if (tos->mask_stack->rc_mask) { do { do { } while (0); (tos->mask_stack->rc_mask)->rc.ref_count += (-1); } while (0); if (!(tos->mask_stack->rc_mask)->rc.ref_count) { do { do { } while (0); (tos->mask_stack->rc_mask)->rc.free((tos->mask_stack->rc_mask)->rc.memory, (void *)(tos->mask_stack->rc_mask), "pdf14_pop_transparency_mask(tos->mask_stack->rc_mask)"); } while (0); (tos->mask_stack->rc_mask) = 0; } else do { } while (0); } } while (0);

            }
        }
        tos->mask_stack = ((void*)0);
    }
    if (tos->data == ((void*)0) ) {





        if (tos->alpha == 255) {
            pdf14_buf_free(tos, ctx->memory);
            if (ctx->mask_stack != ((void*)0)) {
                pdf14_free_mask_stack(ctx->mask_stack, ctx->memory);
                ctx->mask_stack = ((void*)0);
            }
        } else {

            if (ctx->mask_stack != ((void*)0)) {
                pdf14_free_mask_stack(ctx->mask_stack, ctx->memory);
            }
            ctx->mask_stack = pdf14_mask_element_new(ctx->memory);
            ctx->mask_stack->rc_mask = pdf14_rcmask_new(ctx->memory);
            ctx->mask_stack->rc_mask->mask_buf = tos;
        }
        ctx->smask_blend = ((bool)0);
    } else {






        new_data_buf = (*(ctx->memory)->procs.alloc_bytes)(ctx->memory, tos->planestride, "pdf14_pop_transparency_mask");

        if (new_data_buf == ((void*)0))
            return ((-25));



        memset(new_data_buf, 0, tos->planestride);


        if (tos->SMask_SubType == TRANSPARENCY_MASK_Alpha) {
            ctx->smask_blend = ((bool)0);
            smask_copy(tos->rect.q.y - tos->rect.p.y,
                       tos->rect.q.x - tos->rect.p.x,
                       tos->rowstride,
                       (tos->data)+tos->planestride, new_data_buf);
# 1389 "./base/gdevp14.c"
        } else {
            if ( icc_match == 1 || tos->n_chan == 2) {
# 1409 "./base/gdevp14.c"
                smask_blend(tos->data, tos->rect.q.x - tos->rect.p.x,
                            tos->rect.q.y - tos->rect.p.y, tos->rowstride,
                            tos->planestride);
# 1420 "./base/gdevp14.c"
                smask_copy(tos->rect.q.y - tos->rect.p.y,
                           tos->rect.q.x - tos->rect.p.x,
                           tos->rowstride, tos->data, new_data_buf);
            } else {
                if ( icc_match == -1 ) {

                    smask_luminosity_mapping(tos->rect.q.y - tos->rect.p.y ,
                        tos->rect.q.x - tos->rect.p.x,tos->n_chan,
                        tos->rowstride, tos->planestride,
                        tos->data, new_data_buf, ctx->additive, tos->SMask_SubType);
                } else {


                    rendering_params.black_point_comp = gsBLACKPTCOMP_OFF;
                    rendering_params.graphics_type_tag = GS_IMAGE_TAG;
                    rendering_params.override_icc = ((bool)0);
                    rendering_params.preserve_black = gsBKPRESNOTSPECIFIED;
                    rendering_params.rendering_intent = gsPERCEPTUAL;
                    rendering_params.cmm = gsCMM_DEFAULT;
                    icc_link = gsicc_get_link_profile(pis, dev, des_profile,
                        src_profile, &rendering_params, pis->memory, ((bool)0));
                    smask_icc(dev, tos->rect.q.y - tos->rect.p.y,
                              tos->rect.q.x - tos->rect.p.x,tos->n_chan,
                              tos->rowstride, tos->planestride,
                              tos->data, new_data_buf, icc_link);

                    gsicc_release_link(icc_link);
                }
            }
        }

        ((ctx->memory)->procs.free_object(ctx->memory, tos->data, "pdf14_pop_transparency_mask"));
        tos->data = new_data_buf;

        tos->n_chan = 1;
        tos->n_planes = 1;

        if (ctx->mask_stack != ((void*)0)) {




            pdf14_free_mask_stack(ctx->mask_stack, ctx->memory);
        }
        ctx->mask_stack = pdf14_mask_element_new(ctx->memory);
        if (ctx->mask_stack == ((void*)0))
            return ((-25));
        ctx->mask_stack->rc_mask = pdf14_rcmask_new(ctx->memory);
        if (ctx->mask_stack->rc_mask == ((void*)0))
            return ((-25));
        ctx->mask_stack->rc_mask->mask_buf = tos;
    }
    return 0;
}

static pdf14_mask_t *
pdf14_mask_element_new(gs_memory_t *memory)
{
    pdf14_mask_t *result;

    result = (pdf14_mask_t *)(*(memory)->procs.alloc_struct)(memory, &st_pdf14_mask, "pdf14_mask_element_new");


    result->rc_mask = ((void*)0);
    result->previous = ((void*)0);
    result->memory = memory;
    return(result);
}

static int
pdf14_push_transparency_state(gx_device *dev, gs_imager_state *pis)
{




    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_ctx *ctx = pdev->ctx;
    pdf14_mask_t *new_mask;

    do { } while (0);



    if ( ctx->mask_stack != ((void*)0) ) {
        new_mask = pdf14_mask_element_new(ctx->memory);

        new_mask->rc_mask = ctx->mask_stack->rc_mask;
        do { if (new_mask->rc_mask) do { (new_mask->rc_mask)->rc.ref_count++; do { } while (0); } while (0); } while (0);
        new_mask->previous = ctx->mask_stack;
        ctx->mask_stack = new_mask;
    }



    return(0);
}

static int
pdf14_pop_transparency_state(gx_device *dev, gs_imager_state *pis)
{


    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_ctx *ctx = pdev->ctx;
    pdf14_mask_t *old_mask;

    do { } while (0);



    if (ctx->mask_stack != ((void*)0)) {
        old_mask = ctx->mask_stack;
        ctx->mask_stack = ctx->mask_stack->previous;
        if (old_mask->rc_mask) {
            do { if (old_mask->rc_mask) { do { do { } while (0); (old_mask->rc_mask)->rc.ref_count += (-1); } while (0); if (!(old_mask->rc_mask)->rc.ref_count) { do { do { } while (0); (old_mask->rc_mask)->rc.free((old_mask->rc_mask)->rc.memory, (void *)(old_mask->rc_mask), "pdf14_pop_transparency_state"); } while (0); (old_mask->rc_mask) = 0; } else do { } while (0); } } while (0);
        }
        ((old_mask->memory)->procs.free_object(old_mask->memory, old_mask, "pdf14_pop_transparency_state"));



        if (ctx->smask_depth > 0) {
            if (ctx->stack != ((void*)0) && ctx->stack->mask_stack != ((void*)0)) {
                ctx->stack->mask_stack = ctx->mask_stack;
            }
        }
    }



    return 0;
}

static int
pdf14_open(gx_device *dev)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    gs_int_rect rect;

    do { } while (0);

    rect.p.x = 0;
    rect.p.y = 0;
    rect.q.x = dev->width;
    rect.q.y = dev->height;
    pdev->ctx = pdf14_ctx_new(&rect, dev->color_info.num_components,
        pdev->color_info.polarity != GX_CINFO_POLARITY_SUBTRACTIVE, dev);
    if (pdev->ctx == ((void*)0))
        return ((-25));
    pdev->free_devicen = ((bool)1);
    return 0;
}

static const gx_cm_color_map_procs pdf14_DeviceCMYKspot_procs = {
    pdf14_gray_cs_to_cmyk_cm, pdf14_rgb_cs_to_cmyk_cm, pdf14_cmyk_cs_to_cmyk_cm
};

static const gx_cm_color_map_procs *
pdf14_cmykspot_get_color_mapping_procs(const gx_device * dev)
{
    return &pdf14_DeviceCMYKspot_procs;
}






int
pdf14_get_buffer_information(const gx_device * dev,
                             gx_pattern_trans_t *transbuff, gs_memory_t *mem,
                             bool free_device)
{
    const pdf14_device * pdev = (pdf14_device *)dev;
    pdf14_buf *buf;
    gs_int_rect rect;
    int x1,y1,width,height;

    if ( pdev->ctx == ((void*)0)){
        return 0;
    }



    buf = pdev->ctx->stack;
    rect = buf->rect;
    transbuff->dirty = &buf->dirty;
    x1 = (((pdev->width) < (rect.q.x)) ? (pdev->width) : (rect.q.x));
    y1 = (((pdev->height) < (rect.q.y)) ? (pdev->height) : (rect.q.y));
    width = x1 - rect.p.x;
    height = y1 - rect.p.y;
    if (width <= 0 || height <= 0 || buf->data == ((void*)0))
        return 0;
    transbuff->n_chan = buf->n_chan;
    transbuff->has_shape = buf->has_shape;
    transbuff->width = buf->rect.q.x - buf->rect.p.x;
    transbuff->height = buf->rect.q.y - buf->rect.p.y;
    transbuff->blending_mode = pdev->blend_mode;

    if (free_device) {
        transbuff->pdev14 = ((void*)0);
        transbuff->rect = rect;
        if ((width < transbuff->width) || (height < transbuff->height)) {



            int rowstride = (width + 3) & -4;
            int planestride = rowstride * height;
            int k, j;
            byte *buff_ptr_src, *buff_ptr_des;

            transbuff->planestride = planestride;
            transbuff->rowstride = rowstride;
            transbuff->transbytes = (*(mem)->procs.alloc_bytes)(mem, planestride*buf->n_chan, "pdf14_get_buffer_information");

            transbuff->mem = mem;
            for (j = 0; j < transbuff->n_chan; j++) {
                buff_ptr_src = buf->data + j * buf->planestride +
                           buf->rowstride * rect.p.y + rect.p.x;
                buff_ptr_des = transbuff->transbytes + j * planestride;
                for (k = 0; k < height; k++) {
                    memcpy(buff_ptr_des, buff_ptr_src,rowstride);
                    buff_ptr_des += rowstride;
                    buff_ptr_src += buf->rowstride;
                }
            }

        } else {



            transbuff->planestride = buf->planestride;
            transbuff->rowstride = buf->rowstride;
            transbuff->transbytes = buf->data;
            transbuff->mem = dev->memory;
            buf->data = ((void*)0);
        }

        ((dev)->procs.close_device)((gx_device *)dev);







    } else {


        transbuff->pdev14 = dev;
        transbuff->planestride = buf->planestride;
        transbuff->rowstride = buf->rowstride;
        transbuff->transbytes = buf->data;
        transbuff->mem = dev->memory;
        transbuff->rect = rect;
# 1684 "./base/gdevp14.c"
    }
    return(0);
}
# 1699 "./base/gdevp14.c"
static int
pdf14_put_image(gx_device * dev, gs_imager_state * pis, gx_device * target)
{
    const pdf14_device * pdev = (pdf14_device *)dev;
    int code;
    gs_image1_t image;
    gx_image_enum_common_t *info;
    pdf14_buf *buf = pdev->ctx->stack;
    gs_int_rect rect = buf->rect;
    int y;
    int num_comp = buf->n_chan - 1;
    byte *linebuf;
    gs_color_space *pcs;
    const byte bg = pdev->ctx->additive ? 255 : 0;
    int x1, y1, width, height;
    byte *buf_ptr;
    bool data_blended = ((bool)0);
    int num_rows_left;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;
    cmm_dev_profile_t *target_profile;



    if (buf->saved != ((void*)0)) {
        return gs_throw_imp(__func__, "./base/gdevp14.c", 1724, 0, (-1), "PDF14 device push/pop out of sync");
    }

    do { } while (0);
    do { if ((buf->dirty).p.x > (rect).p.x) (rect).p.x = (buf->dirty).p.x; if ((buf->dirty).q.x < (rect).q.x) (rect).q.x = (buf->dirty).q.x; if ((buf->dirty).p.y > (rect).p.y) (rect).p.y = (buf->dirty).p.y; if ((buf->dirty).q.y < (rect).q.y) (rect).q.y = (buf->dirty).q.y; } while (0);
    x1 = (((pdev->width) < (rect.q.x)) ? (pdev->width) : (rect.q.x));
    y1 = (((pdev->height) < (rect.q.y)) ? (pdev->height) : (rect.q.y));
    width = x1 - rect.p.x;
    height = y1 - rect.p.y;



    if (width <= 0 || height <= 0 || buf->data == ((void*)0))
        return 0;
    buf_ptr = buf->data + rect.p.y * buf->rowstride + rect.p.x;





    code = ((target)->procs.get_profile)(target, &target_profile);
    if (code < 0)
        return code;
    if (target_profile == ((void*)0))
        return gs_throw_imp(__func__, "./base/gdevp14.c", 1748, 0, ((-100)), "%s", gs_errstr(((-100))));






    if (target->procs.put_image != ((void*)0)) {


        int alpha_offset = num_comp;
        int tag_offset = buf->has_tags ? num_comp+1 : 0;
        code = ((target)->procs.put_image) (target, buf_ptr, num_comp,
                                            rect.p.x, rect.p.y, width, height,
                                            buf->rowstride, buf->planestride,
                                            num_comp,tag_offset);
        if (code == 0) {
# 1775 "./base/gdevp14.c"
            gx_blend_image_buffer(buf_ptr, width, height, buf->rowstride,
                                  buf->planestride, num_comp, bg);
# 1785 "./base/gdevp14.c"
            data_blended = ((bool)1);

            alpha_offset = 0;
            code = ((target)->procs.put_image) (target, buf_ptr, num_comp,
                                                rect.p.x, rect.p.y, width, height,
                                                buf->rowstride, buf->planestride,
                                                alpha_offset, tag_offset);
        }
        if (code > 0) {

            num_rows_left = height - code;
            while (num_rows_left > 0) {
                code = ((target)->procs.put_image) (target, buf_ptr, buf->n_planes,
                                                    rect.p.x, rect.p.y+code, width,
                                                    num_rows_left, buf->rowstride,
                                                    buf->planestride,
                                                    alpha_offset, tag_offset);
                num_rows_left = num_rows_left - code;
            }
            return 0;
        }
    }



    code = gs_cspace_build_ICC(&pcs, ((void*)0), pis->memory);
    if (pcs == ((void*)0))
        return ((-25));
    if (code < 0)
        return code;






    code = ((dev)->procs.get_profile)(dev, &dev_profile);
    if (code < 0) {
        rc_decrement_only_cs(pcs, "pdf14_put_image");
        return code;
    }
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile,
                          &(pcs->cmm_icc_profile_data), &render_cond);

    do { if (pcs->cmm_icc_profile_data) do { (pcs->cmm_icc_profile_data)->rc.ref_count++; do { } while (0); } while (0); } while (0);
    gscms_set_icc_range(&(pcs->cmm_icc_profile_data));
    gs_image_t_init_adjust(&image, pcs, ((bool)0));
    image.ImageMatrix.xx = (float)width;
    image.ImageMatrix.yy = (float)height;
    image.Width = width;
    image.Height = height;
    image.BitsPerComponent = 8;
    (*(gs_matrix *)&(pis)->ctm).xx = (float)width;
    (*(gs_matrix *)&(pis)->ctm).xy = 0;
    (*(gs_matrix *)&(pis)->ctm).yx = 0;
    (*(gs_matrix *)&(pis)->ctm).yy = (float)height;
    (*(gs_matrix *)&(pis)->ctm).tx = (float)rect.p.x;
    (*(gs_matrix *)&(pis)->ctm).ty = (float)rect.p.y;
    code = ((target)->procs.begin_typed_image) (target,
                                                pis, ((void*)0),
                                                (gs_image_common_t *)&image,
                                                ((void*)0), ((void*)0), ((void*)0),
                                                pis->memory, &info);
    if (code < 0) {
        rc_decrement_only_cs(pcs, "pdf14_put_image");
        return code;
    }
# 1867 "./base/gdevp14.c"
    linebuf = (*(pdev->memory)->procs.alloc_bytes)(pdev->memory, width * num_comp, "pdf14_put_image");
    for (y = 0; y < height; y++) {
        gx_image_plane_t planes;
        int rows_used,k,x;

        if (data_blended) {
            for (x = 0; x < width; x++) {
                for (k = 0; k < num_comp; k++) {
                    linebuf[x * num_comp + k] = buf_ptr[x + buf->planestride * k];
                }
            }
        } else {
            gx_build_blended_image_row(buf_ptr, y, buf->planestride, width,
                                       num_comp, bg, linebuf);
        }
        planes.data = linebuf;
        planes.data_x = 0;
        planes.raster = width * num_comp;
        info->procs->plane_data(info, &planes, 1, &rows_used);

        buf_ptr += buf->rowstride;
    }
    ((pdev->memory)->procs.free_object(pdev->memory, linebuf, "pdf14_put_image"));
    info->procs->end_image(info, ((bool)1));

    rc_decrement_only_cs(pcs, "pdf14_put_image");
    return code;
}
# 1907 "./base/gdevp14.c"
static int
pdf14_cmykspot_put_image(gx_device * dev, gs_imager_state * pis, gx_device * target)
{
    pdf14_device * pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;
    gs_int_rect rect = buf->rect;
    int x1, y1, width, height;
    gs_devn_params * pdevn_params = &pdev->devn_params;
    gs_separations * pseparations = &pdevn_params->separations;
    int planestride = buf->planestride;
    int rowstride = buf->rowstride;
    const byte bg = pdev->ctx->additive ? ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) : 0;
    int num_comp = buf->n_chan - 1;
    byte *buf_ptr;

    do { } while (0);
    do { if ((buf->dirty).p.x > (rect).p.x) (rect).p.x = (buf->dirty).p.x; if ((buf->dirty).q.x < (rect).q.x) (rect).q.x = (buf->dirty).q.x; if ((buf->dirty).p.y > (rect).p.y) (rect).p.y = (buf->dirty).p.y; if ((buf->dirty).q.y < (rect).q.y) (rect).q.y = (buf->dirty).q.y; } while (0);
    x1 = (((pdev->width) < (rect.q.x)) ? (pdev->width) : (rect.q.x));
    y1 = (((pdev->height) < (rect.q.y)) ? (pdev->height) : (rect.q.y));
    width = x1 - rect.p.x;
    height = y1 - rect.p.y;
    if (width <= 0 || height <= 0 || buf->data == ((void*)0))
        return 0;
    buf_ptr = buf->data + rect.p.y * buf->rowstride + rect.p.x;
# 1942 "./base/gdevp14.c"
    return gx_put_blended_image_cmykspot(target, buf_ptr, planestride, rowstride,
                      rect.p.x, rect.p.y, width, height, num_comp, bg,
                      buf->has_tags, rect, pseparations);
}
# 1958 "./base/gdevp14.c"
static int
pdf14_custom_put_image(gx_device * dev, gs_imager_state * pis, gx_device * target)
{
    pdf14_device * pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;
    gs_int_rect rect = buf->rect;
    int x0 = rect.p.x, y0 = rect.p.y;
    int planestride = buf->planestride;
    int rowstride = buf->rowstride;
    int num_comp = buf->n_chan - 1;
    const byte bg = pdev->ctx->additive ? ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) : 0;
    int x1, y1, width, height;
    byte *buf_ptr;

    do { } while (0);
    do { if ((buf->dirty).p.x > (rect).p.x) (rect).p.x = (buf->dirty).p.x; if ((buf->dirty).q.x < (rect).q.x) (rect).q.x = (buf->dirty).q.x; if ((buf->dirty).p.y > (rect).p.y) (rect).p.y = (buf->dirty).p.y; if ((buf->dirty).q.y < (rect).q.y) (rect).q.y = (buf->dirty).q.y; } while (0);
    x1 = (((pdev->width) < (rect.q.x)) ? (pdev->width) : (rect.q.x));
    y1 = (((pdev->height) < (rect.q.y)) ? (pdev->height) : (rect.q.y));
    width = x1 - rect.p.x;
    height = y1 - rect.p.y;
    if (width <= 0 || height <= 0 || buf->data == ((void*)0))
        return 0;
    buf_ptr = buf->data + rect.p.y * buf->rowstride + rect.p.x;

    return gx_put_blended_image_custom(target, buf_ptr,
                      planestride, rowstride,
                      x0, y0, width, height, num_comp, bg);
}

static int
pdf14_close(gx_device *dev)
{
    pdf14_device *pdev = (pdf14_device *)dev;

    if (pdev->ctx) {
        pdf14_ctx_free(pdev->ctx);
        pdev->ctx = ((void*)0);
    }
    return 0;
}




static int
pdf14_discard_trans_layer(gx_device *dev, gs_imager_state * pis)
{
    pdf14_device *pdev = (pdf14_device *)dev;

    pdf14_ctx *ctx = pdev->ctx;
    pdf14_smaskcolor_t *smaskcolor = pdev->smaskcolor;
    pdf14_parent_color_t *group_procs = pdev->trans_group_parent_cmap_procs;


    if (smaskcolor != ((void*)0)) {
        smaskcolor->ref_count = 1;
        pdf14_decrement_smask_color(pis, dev);
        pdev->smaskcolor = ((void*)0);
    }


    if (group_procs != ((void*)0)) {
        while (group_procs->previous != ((void*)0))
            pdf14_pop_parent_color(dev, pis);
        ((dev->memory)->procs.free_object(dev->memory, group_procs, "pdf14_discard_trans_layer"));
        pdev->trans_group_parent_cmap_procs = ((void*)0);
    }


    if (ctx != ((void*)0)) {
        pdf14_buf *buf, *next;
        pdf14_parent_color_t *procs, *prev_procs;

        if (ctx->mask_stack != ((void*)0)) {
            pdf14_free_mask_stack(ctx->mask_stack, ctx->memory);
            ((ctx->memory)->procs.free_object(ctx->memory, ctx->mask_stack, "pdf14_discard_trans_layer"));
            ctx->mask_stack = ((void*)0);
        }


        for (buf = ctx->stack; buf != ((void*)0); buf = next) {
            next = buf->saved;

            ((ctx->memory)->procs.free_object(ctx->memory, buf->transfer_fn, "pdf14_discard_trans_layer"));
            ((ctx->memory)->procs.free_object(ctx->memory, buf->data, "pdf14_discard_trans_layer"));
            ((ctx->memory)->procs.free_object(ctx->memory, buf->backdrop, "pdf14_discard_trans_layer"));



            ((ctx->memory)->procs.free_object(ctx->memory, buf->mask_stack, "pdf14_discard_trans_layer"));
            for (procs = buf->parent_color_info_procs; procs != ((void*)0); procs = prev_procs) {
                prev_procs = procs->previous;
                ((ctx->memory)->procs.free_object(ctx->memory, procs, "pdf14_discard_trans_layer"));
            }
            ((ctx->memory)->procs.free_object(ctx->memory, buf, "pdf14_discard_trans_layer"));
        }

        ((ctx->memory)->procs.free_object(ctx->memory, ctx, "pdf14_discard_trans_layer"));
    }
    return 0;
}

static int
pdf14_output_page(gx_device * dev, int num_copies, int flush)
{
    pdf14_device * pdev = (pdf14_device *)dev;

    if (pdev->target != ((void*)0))
        return (*((pdev->target)->procs.output_page)) (pdev->target, num_copies, flush);
    return 0;
}
# 2079 "./base/gdevp14.c"
static void
gs_pdf14_device_copy_params(gx_device *dev, const gx_device *target)
{
    cmm_dev_profile_t *profile_targ;
    cmm_dev_profile_t *profile_dev14;

    dev->width = target->width;
    dev->height = target->height;
    memcpy(dev->MediaSize, target->MediaSize, sizeof(dev->MediaSize));
    memcpy(dev->ImagingBBox, target->ImagingBBox, sizeof(dev->ImagingBBox));
    dev->ImagingBBox_set = target->ImagingBBox_set;
    memcpy(dev->HWResolution, target->HWResolution, sizeof(dev->HWResolution));
    memcpy(dev->MarginsHWResolution, target->MarginsHWResolution, sizeof(dev->MarginsHWResolution));
    memcpy(dev->Margins, target->Margins, sizeof(dev->Margins));
    memcpy(dev->HWMargins, target->HWMargins, sizeof(dev->HWMargins));
    dev->PageCount = target->PageCount;
    dev->MaxPatternBitmap = target->MaxPatternBitmap;
    memcpy(&(dev->space_params), &(target->space_params), sizeof(gdev_space_params));




    if (dev->icc_struct == ((void*)0)) {
        dev->icc_struct = gsicc_new_device_profile_array(dev->memory);
        profile_dev14 = dev->icc_struct;
        (((gx_device *) target)->procs.get_profile)((gx_device *) target,
                                          &(profile_targ));
        profile_dev14->device_profile[0] = profile_targ->device_profile[0];
        dev->icc_struct->devicegraytok = profile_targ->devicegraytok;
        dev->icc_struct->graydetection = profile_targ->graydetection;
        dev->icc_struct->pageneutralcolor = profile_targ->pageneutralcolor;
        dev->icc_struct->supports_devn = profile_targ->supports_devn;
        dev->icc_struct->usefastcolor = profile_targ->usefastcolor;
        gp_monitor_enter(&(profile_dev14->device_profile[0]->lock)->native);
        do { if (profile_dev14->device_profile[0]) do { (profile_dev14->device_profile[0])->rc.ref_count++; do { } while (0); } while (0); } while (0);
        gp_monitor_leave(&(profile_dev14->device_profile[0]->lock)->native);
        profile_dev14->rendercond[0] = profile_targ->rendercond[0];
        profile_dev14->sim_overprint = profile_targ->sim_overprint;
    }
    dev->graphics_type_tag = target->graphics_type_tag;


}







static int
pdf14_forward_put_params(gx_device * dev, gs_param_list * plist)
{
    pdf14_device * pdev = (pdf14_device *)dev;
    gx_device * tdev = pdev->target;
    bool was_open = tdev->is_open;
    int code = 0;

    if (tdev != 0 && (code = ((tdev)->procs.put_params)(tdev, plist)) >= 0) {
        gx_device_decache_colors(dev);
        if (!tdev->is_open) {
            code = gs_closedevice(dev);
            if (code == 0)
                code = was_open ? 1 : 0;
        }
        gx_device_copy_params(dev, tdev);
    }
    return code;
}


int put_param_compressed_color_list_elem(gx_device * pdev,
    gs_param_list * plist, compressed_color_list_t ** pret_comp_list,
    char * keyname, int num_comps);
int put_param_pdf14_spot_names(gx_device * pdev,
                gs_separations * pseparations, gs_param_list * plist);
# 2165 "./base/gdevp14.c"
static int
pdf14_put_params(gx_device * dev, gs_param_list * plist)
{
    pdf14_device * pdev = (pdf14_device *)dev;
    gx_device * tdev = pdev->target;
    bool was_open = tdev->is_open;
    int code = 0;

    if (tdev != 0 && (code = ((tdev)->procs.put_params)(tdev, plist)) >= 0) {
        gx_device_decache_colors(dev);
        if (!tdev->is_open) {
            code = gs_closedevice(dev);
            if (code == 0)
                code = was_open ? 1 : 0;
        }
        gs_pdf14_device_copy_params(dev, tdev);
    }
    return code;
}





static void
pdf14_set_marking_params(gx_device *dev, const gs_imager_state *pis)
{
    pdf14_device * pdev = (pdf14_device *)dev;

    pdev->opacity = pis->opacity.alpha;
    pdev->shape = pis->shape.alpha;
    pdev->alpha = pis->opacity.alpha * pis->shape.alpha;
    pdev->blend_mode = pis->blend_mode;
    pdev->overprint = pis->overprint;
    pdev->overprint_mode = pis->overprint_mode;

    do { } while (0);


}

static void
update_lop_for_pdf14(gs_imager_state *pis, const gx_drawing_color *pdcolor)
{
    bool hastrans = ((bool)0);






    if (pdcolor != ((void*)0))
    {
        if (gx_dc_is_pattern1_color(pdcolor) &&
            gx_pattern1_get_transptr(pdcolor) != ((void*)0)) {
            hastrans = ((bool)1);
        } else if (gx_dc_is_pattern2_color(pdcolor)) {


            hastrans = ((bool)1);
        }
    }

    if ((pis->alpha != 0xFFFF) ||
        (pis->blend_mode != BLEND_MODE_Normal && pis->blend_mode != BLEND_MODE_Darken && pis->blend_mode != BLEND_MODE_Lighten) ||
        (pis->opacity.alpha != 1.0) ||
        (pis->shape.alpha != 1.0) ||
        (hastrans))
    {




        pis->log_op |= 0x400;
    }
}

static int
pdf14_fill_path(gx_device *dev, const gs_imager_state *pis,
                           gx_path *ppath, const gx_fill_params *params,
                           const gx_drawing_color *pdcolor,
                           const gx_clip_path *pcpath)
{
    gs_imager_state new_is = *pis;
    int code;
    gs_pattern2_instance_t *pinst = ((void*)0);

    if (pdcolor != ((void*)0) && gx_dc_is_pattern1_color(pdcolor)){
        if( gx_pattern1_get_transptr(pdcolor) != ((void*)0) ||
            gx_pattern1_clist_has_trans(pdcolor) ){
# 2293 "./base/gdevp14.c"
            code = pdf14_tile_pattern_fill(dev, &new_is, ppath,
                params, pdcolor, pcpath);
            new_is.trans_device = ((void*)0);
            new_is.has_transparency = ((bool)0);
            return code;
        }
    }
    if (pdcolor != ((void*)0) && gx_dc_is_pattern2_color(pdcolor)) {
        pinst =
            (gs_pattern2_instance_t *)pdcolor->ccolor.pattern;
           pinst->saved->has_transparency = ((bool)1);


           pinst->saved->trans_device = dev;
    }
    update_lop_for_pdf14(&new_is, pdcolor);
    pdf14_set_marking_params(dev, pis);
    new_is.trans_device = dev;
    new_is.has_transparency = ((bool)1);
    code = gx_default_fill_path(dev, &new_is, ppath, params, pdcolor, pcpath);
    new_is.trans_device = ((void*)0);
    new_is.has_transparency = ((bool)0);
    if (pinst != ((void*)0)){
        pinst->saved->trans_device = ((void*)0);
    }
    return code;
}

static int
pdf14_stroke_path(gx_device *dev, const gs_imager_state *pis,
                             gx_path *ppath, const gx_stroke_params *params,
                             const gx_drawing_color *pdcolor,
                             const gx_clip_path *pcpath)
{
    gs_imager_state new_is = *pis;

    update_lop_for_pdf14(&new_is, pdcolor);
    pdf14_set_marking_params(dev, pis);
    return gx_default_stroke_path(dev, &new_is, ppath, params, pdcolor,
                                  pcpath);
}

static int
pdf14_copy_alpha(gx_device * dev, const byte * data, int data_x,
           int aa_raster, gx_bitmap_id id, int x, int y, int w, int h,
                      gx_color_index color, int depth)
{
    return pdf14_copy_alpha_color(dev, data, data_x, aa_raster, id, x, y, w, h,
                                  color, ((void*)0), depth, ((bool)0));
}

static int
pdf14_copy_alpha_hl_color(gx_device * dev, const byte * data, int data_x,
           int aa_raster, gx_bitmap_id id, int x, int y, int w, int h,
                      const gx_drawing_color *pdcolor, int depth)
{
    return pdf14_copy_alpha_color(dev, data, data_x, aa_raster, id, x, y, w, h,
                                  0, pdcolor, depth, ((bool)1));
}

static int
pdf14_copy_alpha_color(gx_device * dev, const byte * data, int data_x,
           int aa_raster, gx_bitmap_id id, int x, int y, int w, int h,
                      gx_color_index color, const gx_device_color *pdc,
                      int depth, bool devn)
{
    const byte *aa_row;
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;
    int i, j, k;
    byte *line, *dst_ptr;
    byte src[(8 * 8)+3];
    byte dst[(8 * 8)+3];
    gs_blend_mode_t blend_mode = pdev->blend_mode;
    bool additive = pdev->ctx->additive;
    int rowstride = buf->rowstride;
    int planestride = buf->planestride;
    gs_graphics_type_tag_t curr_tag = GS_UNKNOWN_TAG;
    bool has_alpha_g = buf->has_alpha_g;
    bool has_shape = buf->has_shape;
    bool has_tags = buf->has_tags;
    bool knockout = buf->knockout;
    int num_chan = buf->n_chan;
    int num_comp = num_chan - 1;
    int shape_off = num_chan * planestride;
    int alpha_g_off = shape_off + (has_shape ? planestride : 0);
    int tag_off = alpha_g_off + (has_alpha_g ? planestride : 0);
    bool overprint = pdev->overprint;
    bool blendspot = pdev->blendspot;
    gx_color_index drawn_comps = pdev->drawn_comps;
    gx_color_index comps;
    byte shape = 0;
    byte src_alpha;
    int alpha2_aa, alpha_aa, sx;
    int alpha_aa_act;
    int xoff;
    gx_color_index mask = ((gx_color_index)1 << 8) - 1;
    int shift = 8;

    if (buf->data == ((void*)0))
        return 0;
    aa_row = data;
    if (has_tags) {
        curr_tag = (color >> (num_comp*8)) & 0xff;
    }

    if (devn) {
        if (additive) {
            for (j = 0; j < num_comp; j++) {
                src[j] = ((pdc->colors.devn.values[j]) >> shift & mask);
            }
        } else {
            for (j = 0; j < num_comp; j++) {
                src[j] = 255 - ((pdc->colors.devn.values[j]) >> shift & mask);
            }
        }
    } else
        pdev->pdf14_procs->unpack_color(num_comp, color, pdev, src);
    src_alpha = src[num_comp] = (byte)floor (255 * pdev->alpha + 0.5);
    if (has_shape)
        shape = (byte)floor (255 * pdev->shape + 0.5);

    if (x < buf->rect.p.x) {
        xoff = data_x + buf->rect.p.x - x;
        w += x - buf->rect.p.x;
        x = buf->rect.p.x;
    } else {
        xoff = data_x;
    }
    if (y < buf->rect.p.y) {
      h += y - buf->rect.p.y;
      aa_row -= (y - buf->rect.p.y) * aa_raster;
      y = buf->rect.p.y;
    }
    if (x + w > buf->rect.q.x) w = buf->rect.q.x - x;
    if (y + h > buf->rect.q.y) h = buf->rect.q.y - y;

    if (x < buf->dirty.p.x) buf->dirty.p.x = x;
    if (y < buf->dirty.p.y) buf->dirty.p.y = y;
    if (x + w > buf->dirty.q.x) buf->dirty.q.x = x + w;
    if (y + h > buf->dirty.q.y) buf->dirty.q.y = y + h;
    line = buf->data + (x - buf->rect.p.x) + (y - buf->rect.p.y) * rowstride;

    for (j = 0; j < h; ++j, aa_row += aa_raster) {
        dst_ptr = line;
        sx = xoff;
        for (i = 0; i < w; ++i, ++sx) {

            if (additive) {
                for (k = 0; k < num_chan; ++k)
                    dst[k] = dst_ptr[k * planestride];
            } else {
                for (k = 0; k < num_comp; ++k)
                    dst[k] = 255 - dst_ptr[k * planestride];
                dst[num_comp] = dst_ptr[num_comp * planestride];
            }

            if (depth == 2) {
                alpha_aa = ((aa_row[sx >> 2] >> ((3 - (sx & 3)) << 1)) & 3) * 5;
            } else {
                alpha2_aa = aa_row[sx >> 1],
                alpha_aa = (sx & 1 ? alpha2_aa & 0xf : alpha2_aa >> 4);
            }
            if (alpha_aa != 0) {
                if (!(alpha_aa == 15)) {

                    alpha_aa_act = (255 * alpha_aa) / 15;
                    if (src_alpha != 255) {

                        int tmp = src_alpha * alpha_aa_act + 0x80;
                        alpha_aa_act = (tmp + (tmp >> 8)) >> 8;
                    }

                    src[num_comp] = alpha_aa_act;
                } else {


                    src[num_comp] = src_alpha;
                }
                if (knockout) {
                    if (has_shape) {
                        art_pdf_composite_knockout_simple_8(dst,
                            has_shape ? dst_ptr + shape_off : ((void*)0),
                            has_tags ? dst_ptr + tag_off : ((void*)0),
                            src, curr_tag, num_comp, 255);
                    } else {
                        art_pdf_knockoutisolated_group_8(dst, src, num_comp);
                    }
                } else {
                    art_pdf_composite_pixel_alpha_8(dst, src, num_comp,
                                                 blend_mode, pdev->blend_procs);
                }

                if (additive) {
                    for (k = 0; k < num_chan; ++k)
                        dst_ptr[k * planestride] = dst[k];
                } else {
                    if (overprint) {
                        if (blendspot) {

                            for (k = 0; k < num_comp; ++k) {
                                int temp =
                                    (255 - dst_ptr[k * planestride]) * dst[k];
                                temp = temp >> 8;
                                dst_ptr[k * planestride] = (255 - temp);
                            }
                        } else {
                            for (k = 0, comps = drawn_comps; comps != 0;
                                 ++k, comps >>= 1) {
                                if ((comps & 0x1) != 0) {
                                    dst_ptr[k * planestride] = 255 - dst[k];
                                }
                            }
                        }

                        dst_ptr[num_comp * planestride] = dst[num_comp];
                    } else {
                        for (k = 0; k < num_comp; ++k)
                            dst_ptr[k * planestride] = 255 - dst[k];

                        dst_ptr[num_comp * planestride] = dst[num_comp];
                    }
                }
                if (has_alpha_g) {
                    int tmp = (255 - dst_ptr[alpha_g_off]) * (255 - src[num_comp]) + 0x80;
                    dst_ptr[alpha_g_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
                }
                if (has_shape) {
                    int tmp = (255 - dst_ptr[shape_off]) * (255 - shape) + 0x80;
                    dst_ptr[shape_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
                }
                if (has_tags) {

                    if (dst[num_comp] == 255) {
                        dst_ptr[tag_off] = curr_tag;
                    } else {
                        dst_ptr[tag_off] = ( dst_ptr[tag_off] |curr_tag ) & ~GS_UNTOUCHED_TAG;
                    }
                }
            }
            ++dst_ptr;
        }
        line += rowstride;
    }
    return 0;
}

static int
pdf14_fill_mask(gx_device * orig_dev,
                     const byte * data, int dx, int raster, gx_bitmap_id id,
                     int x, int y, int w, int h,
                     const gx_drawing_color * pdcolor, int depth,
                     gs_logical_operation_t lop, const gx_clip_path * pcpath)
{
    gx_device *dev;
    pdf14_device *p14dev = (pdf14_device *)orig_dev;
    gx_device_clip cdev;
    gx_color_tile *ptile = ((void*)0);
    int code = 0;
    gs_int_rect group_rect;
    gx_pattern_trans_t *fill_trans_buffer = ((void*)0);
    bool has_pattern_trans = ((bool)0);
    cmm_dev_profile_t *dev_profile;



    if (pdcolor != ((void*)0) && gx_dc_is_pattern1_color(pdcolor)) {
        if( gx_pattern1_get_transptr(pdcolor) != ((void*)0)) {
            ptile = pdcolor->colors.pattern.p_tile;




            if (ptile->ttrans->n_chan-1 < 4) {
                ptile->ttrans->blending_procs = &rgb_blending_procs;
                ptile->ttrans->is_additive = ((bool)1);
            } else {
                ptile->ttrans->blending_procs = &cmyk_blending_procs;
                ptile->ttrans->is_additive = ((bool)0);
            }

            gx_set_pattern_procs_trans((gx_device_color*) pdcolor);


            if (ptile->has_overlap) {

                ptile->ttrans->pat_trans_fill = &tile_rect_trans_blend;
            } else {

                ptile->ttrans->pat_trans_fill = &tile_rect_trans_simple;
            }

            group_rect.p.x = x;
            group_rect.p.y = (((0) > (y)) ? (0) : (y));
            group_rect.q.x = x + w;
            group_rect.q.y = y + h;
            if (!(w <= 0 || h <= 0)) {
                code = pdf14_push_transparency_group(p14dev->ctx, &group_rect,
                     1, 0, 255,255, ptile->ttrans->blending_mode, 0, 0,
                     ptile->ttrans->n_chan-1, ((bool)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
                if (code < 0)
                    return code;


                fill_trans_buffer = new_pattern_trans_buff(p14dev->memory);
                pdf14_get_buffer_information((gx_device *) p14dev,
                                              fill_trans_buffer, ((void*)0), ((bool)0));


                ptile->ttrans->fill_trans_buffer = fill_trans_buffer;
                has_pattern_trans = ((bool)1);
            }
        }
    }
    if (pcpath != 0) {
        gx_make_clip_device_on_stack(&cdev, pcpath, orig_dev);
        dev = (gx_device *) & cdev;
    } else
        dev = orig_dev;
    if (depth > 1) {

        code = (*((dev)->procs.copy_alpha))
            (dev, data, dx, raster, id, x, y, w, h,
             ((pdcolor)->colors.pure), depth);
    } else {
        code = pdcolor->type->fill_masked(pdcolor, data, dx, raster, id,
                                          x, y, w, h, dev, lop, ((bool)0));
    }
    if (has_pattern_trans) {
        if (code >= 0)
            code = ((dev)->procs.get_profile)(dev, &dev_profile);
        if (code >= 0)
            code = pdf14_pop_transparency_group(((void*)0), p14dev->ctx,
                                                p14dev->blend_procs,
                                                p14dev->color_info.num_components,
                                                dev_profile->device_profile[0],
                                                orig_dev);
        ((p14dev->memory)->procs.free_object(p14dev->memory, ptile->ttrans->fill_trans_buffer, "pdf14_fill_mask"));

        ptile->ttrans->fill_trans_buffer = ((void*)0);
    }
    return code;
}



static int
pdf14_tile_pattern_fill(gx_device * pdev, const gs_imager_state * pis,
                        gx_path * ppath, const gx_fill_params * params,
                        const gx_device_color * pdevc,
                        const gx_clip_path * pcpath)
{
    int code;
    gs_imager_state *pis_noconst = (gs_imager_state *)pis;
    gs_fixed_rect clip_box;
    gs_fixed_rect outer_box;
    pdf14_device * p14dev = (pdf14_device *)pdev;
    gs_int_rect rect;
    gx_clip_rect *curr_clip_rect;
    gx_color_tile *ptile = ((void*)0);
    int k;
    gx_pattern_trans_t *fill_trans_buffer = ((void*)0);
    gs_int_point phase;
    int n_chan_tile;
    gx_clip_path cpath_intersection;
    gx_path path_ttrans;
    gs_blend_mode_t blend_mode;

    if (pcpath != ((void*)0)) {
        code = gx_cpath_init_local_shared_nested(&cpath_intersection, pcpath, ppath->memory, 1);
    } else {
        (*((pdev)->procs.get_clipping_box)) (pdev, &clip_box);
        (void)gx_cpath_init_local_shared(&cpath_intersection, ((void*)0), ppath->memory);
        code = gx_cpath_from_rectangle(&cpath_intersection, &clip_box);
    }
    if (code < 0)
        return code;
    if (ppath != ((void*)0)) {
        code = gx_cpath_intersect_with_params(&cpath_intersection, ppath,
                                              params->rule, pis_noconst, params);
        if (code < 0)
            return code;
    }





    ptile = pdevc->colors.pattern.p_tile;
    if (ptile->ttrans != ((void*)0))
    {
        if ((cpath_intersection.outer_box.p.x < 0) ||
            (cpath_intersection.outer_box.p.y < 0) ||
            (cpath_intersection.outer_box.q.x > ((fixed)(ptile->ttrans->width)<<8)) ||
            (cpath_intersection.outer_box.q.y > ((fixed)(ptile->ttrans->height)<<8)))
        {
# 2698 "./base/gdevp14.c"
        } else {


            (void)gx_path_init_local_shared(&path_ttrans, ((void*)0), ppath->memory);
            gx_path_add_rectangle(&path_ttrans,
                                  ((fixed)(ptile->ttrans->rect.p.x)<<8),
                                  ((fixed)(ptile->ttrans->rect.p.y)<<8),
                                  ((fixed)(ptile->ttrans->rect.q.x)<<8),
                                  ((fixed)(ptile->ttrans->rect.q.y)<<8));
            code = gx_cpath_intersect(&cpath_intersection, &path_ttrans,
                                      params->rule, pis_noconst);
        }
    }


    if (ppath != ((void*)0) && code >= 0) {

        gx_cpath_outer_box(&cpath_intersection, &outer_box);
        rect.p.x = ((int)((outer_box.p.x) >> (8)));
        rect.p.y = ((int)((outer_box.p.y) >> (8)));
        rect.q.x = ((int)(((outer_box.q.x)+((1<<8)-1)) >> (8)));
        rect.q.y = ((int)(((outer_box.q.y)+((1<<8)-1)) >> (8)));







        ptile = pdevc->colors.pattern.p_tile;
        if (ptile->cdev == ((void*)0)) {
            n_chan_tile = ptile->ttrans->n_chan;
            blend_mode = ptile->ttrans->blending_mode;
            code = pdf14_push_transparency_group(p14dev->ctx, &rect, 1, 0, 255,255,
                                                 blend_mode, 0, 0, n_chan_tile-1,
                                                 ((bool)0), ((void*)0), ((void*)0), pis_noconst,
                                                 pdev);
            if (code < 0)
                return code;
        } else {
            n_chan_tile = ptile->cdev->common.color_info.num_components+1;
            blend_mode = p14dev->blend_mode;
        }



        if (ptile->cdev == ((void*)0)) {
            if (n_chan_tile-1 < 4) {
                ptile->ttrans->blending_procs = &rgb_blending_procs;
                ptile->ttrans->is_additive = ((bool)1);
            } else {
                ptile->ttrans->blending_procs = &cmyk_blending_procs;
                ptile->ttrans->is_additive = ((bool)0);
            }
        }


        if (ptile->cdev == ((void*)0)) {
            fill_trans_buffer = new_pattern_trans_buff(pis->memory);
            pdf14_get_buffer_information(pdev, fill_trans_buffer, ((void*)0), ((bool)0));
            fill_trans_buffer->blending_mode = blend_mode;


            if (ptile->has_overlap) {

                ptile->ttrans->pat_trans_fill = &tile_rect_trans_blend;
            } else {

                ptile->ttrans->pat_trans_fill = &tile_rect_trans_simple;
            }

            phase.x = pdevc->phase.x;
            phase.y = pdevc->phase.y;
            if (cpath_intersection.rect_list->list.head != ((void*)0)){
                curr_clip_rect = cpath_intersection.rect_list->list.head->next;
                for( k = 0; k< cpath_intersection.rect_list->list.count; k++){
                    do { } while (0);




                    gx_trans_pattern_fill_rect(curr_clip_rect->xmin, curr_clip_rect->ymin,
                                curr_clip_rect->xmax, curr_clip_rect->ymax, ptile,
                                fill_trans_buffer, phase, pdev, pdevc);
                    curr_clip_rect = curr_clip_rect->next;
                }
            } else if (cpath_intersection.rect_list->list.count == 1) {

                do { } while (0);
# 2795 "./base/gdevp14.c"
                gx_trans_pattern_fill_rect(cpath_intersection.rect_list->list.single.xmin,
                                                cpath_intersection.rect_list->list.single.ymin,
                                                cpath_intersection.rect_list->list.single.xmax,
                                                cpath_intersection.rect_list->list.single.ymax,
                                                ptile, fill_trans_buffer, phase, pdev, pdevc);
            }
        } else {




            gx_device *dev;
            gx_device_clip clipdev;

            gx_make_clip_device_on_stack(&clipdev, &cpath_intersection, pdev);
            dev = (gx_device *)&clipdev;
            phase.x = pdevc->phase.x;
            phase.y = pdevc->phase.y;
            gx_trans_pattern_fill_rect(rect.p.x, rect.p.y, rect.q.x, rect.q.y,
                                            ptile, fill_trans_buffer, phase,
                                            dev, pdevc);
        }

        if (fill_trans_buffer != ((void*)0)) {
            ((pis->memory)->procs.free_object(pis->memory, fill_trans_buffer, "pdf14_tile_pattern_fill"));
            ptile->ttrans->fill_trans_buffer = ((void*)0);
        }



        if (ptile->cdev == ((void*)0)) {
            code = pdf14_pop_transparency_group(pis_noconst, p14dev->ctx,
                                                p14dev->blend_procs,
                                                p14dev->color_info.num_components,
                                                p14dev->icc_struct->device_profile[0],
                                                pdev);
        }
    }
    return code;
}





static pdf14_device *find_pdf14_device(gx_device *dev)
{
    pdf14_device *pdev;

    if (((dev)->procs.dev_spec_op)(dev, gxdso_is_pdf14_device, &pdev, sizeof(pdev)) <= 0)
        return ((void*)0);
    return pdev;
}



static int
pdf14_pattern_trans_render(gx_image_enum * penum, const byte * buffer, int data_x,
                    uint w, int h, gx_device * dev)
{
    int code;
    pdf14_device * p14dev;
    const gs_imager_state * pis = penum->pis;
    gx_device_color * pdcolor = (penum->icolor1);
    gx_color_tile *ptile = pdcolor->colors.pattern.p_tile;


    code = (ptile->ttrans->image_render)(penum, buffer, data_x, w, h, dev);
    if (code < 0)
        return code;



    if ( h == 0 && ptile->trans_group_popped == ((bool)0)) {
        if (pis->is_gstate) {



            code = gs_end_transparency_group((gs_state *) pis);
        } else {


            cmm_dev_profile_t *dev_profile;
            code = ((dev)->procs.get_profile)(dev, &dev_profile);
            if (code < 0)
                return code;

            p14dev = find_pdf14_device(dev);

            do { } while (0);


            code = pdf14_pop_transparency_group(((void*)0), p14dev->ctx, p14dev->blend_procs,
                    p14dev->color_info.num_components, dev_profile->device_profile[0],
                    (gx_device *) p14dev);
        }
        pdcolor->colors.pattern.p_tile->trans_group_popped = ((bool)1);
        ((pis->memory)->procs.free_object(pis->memory, ptile->ttrans->fill_trans_buffer, "pdf14_pattern_trans_render"));

        ptile->ttrans->fill_trans_buffer = ((void*)0);
    }
    return code;
}




static int
pdf14_patt_trans_image_fill(gx_device * dev, const gs_imager_state * pis,
                           const gs_matrix *pmat, const gs_image_common_t *pic,
                           const gs_int_rect * prect,
                           const gx_drawing_color * pdcolor,
                           const gx_clip_path * pcpath, gs_memory_t * mem,
                           gx_image_enum_common_t ** pinfo)
{
    const gs_image_t *pim = (const gs_image_t *)pic;
    pdf14_device * p14dev = (pdf14_device *)dev;
    gx_color_tile *ptile;
    int code;
    gs_int_rect group_rect;
    gx_image_enum *penum;
    gs_rect bbox_in, bbox_out;
    gx_pattern_trans_t *fill_trans_buffer;

    ptile = pdcolor->colors.pattern.p_tile;




    if (ptile->ttrans->n_chan-1 < 4) {
        ptile->ttrans->blending_procs = &rgb_blending_procs;
        ptile->ttrans->is_additive = ((bool)1);
    } else {
        ptile->ttrans->blending_procs = &cmyk_blending_procs;
        ptile->ttrans->is_additive = ((bool)0);
    }


    ptile->ttrans->blending_mode = pis->blend_mode;


    if (ptile->has_overlap) {

        ptile->ttrans->pat_trans_fill = &tile_rect_trans_blend;
    } else {

        ptile->ttrans->pat_trans_fill = &tile_rect_trans_simple;
    }

    gx_set_pattern_procs_trans((gx_device_color*) pdcolor);

    code = gx_default_begin_typed_image(dev, pis, pmat, pic,
                            prect, pdcolor,pcpath, mem, pinfo);
    if (code < 0)
        return code;



    bbox_in.p.x = 0;
    bbox_in.p.y = 0;
    bbox_in.q.x = pim->Width;
    bbox_in.q.y = pim->Height;
    code = gs_bbox_transform_inverse(&bbox_in, &(pim->ImageMatrix),
                                &bbox_out);
    if (code < 0)
        return code;

    code = compute_group_device_int_rect(p14dev, &group_rect,
                                            &bbox_out, (gs_imager_state *)pis);
    if (code < 0)
        return code;
    if (!(pim->Width == 0 || pim->Height == 0)) {
        do { } while (0);


        code = pdf14_push_transparency_group(p14dev->ctx, &group_rect, 1, 0, 255,255,
                                             pis->blend_mode, 0, 0,
                                             ptile->ttrans->n_chan-1, ((bool)0), ((void*)0),
                                             ((void*)0), (gs_imager_state *)pis, dev);


        fill_trans_buffer = new_pattern_trans_buff(pis->memory);
        pdf14_get_buffer_information(dev, fill_trans_buffer, ((void*)0), ((bool)0));



        ptile->ttrans->fill_trans_buffer = fill_trans_buffer;



        penum = (gx_image_enum *) *pinfo;
        ptile->ttrans->image_render = penum->render;
        penum->render = &pdf14_pattern_trans_render;
        ptile->trans_group_popped = ((bool)0);
    }
    return code;
}

static int
pdf14_begin_typed_image(gx_device * dev, const gs_imager_state * pis,
                           const gs_matrix *pmat, const gs_image_common_t *pic,
                           const gs_int_rect * prect,
                           const gx_drawing_color * pdcolor,
                           const gx_clip_path * pcpath, gs_memory_t * mem,
                           gx_image_enum_common_t ** pinfo)
{
    const gs_image_t *pim = (const gs_image_t *)pic;
    int code;



    if (pim->ImageMask) {
        if (pdcolor != ((void*)0) && gx_dc_is_pattern1_color(pdcolor)) {
            if( gx_pattern1_get_transptr(pdcolor) != ((void*)0)){
# 3018 "./base/gdevp14.c"
                if (dev->procs.begin_image != gx_default_begin_image) {
                    code = pdf14_patt_trans_image_fill(dev, pis, pmat, pic,
                                                prect, pdcolor, pcpath, mem,
                                                pinfo);
                    return code;
                }
            }
        }
    }
    pdf14_set_marking_params(dev, pis);
    return gx_default_begin_typed_image(dev, pis, pmat, pic, prect, pdcolor,
                                        pcpath, mem, pinfo);
}

static void
pdf14_set_params(gs_imager_state * pis, gx_device * dev,
                                const gs_pdf14trans_params_t * pparams)
{
    pdf14_device * p14dev = (pdf14_device *)dev;

    do { } while (0);
    if (pparams->changed & (1 << 0))
        pis->blend_mode = pparams->blend_mode;
    if (pparams->changed & (1 << 1))
        pis->text_knockout = pparams->text_knockout;
    if (pparams->changed & (1 << 2))
        pis->shape.alpha = pparams->shape.alpha;
    if (pparams->changed & (1 << 3))
        pis->opacity.alpha = pparams->opacity.alpha;
    if (pparams->changed & (1 << 4))
        pis->overprint = pparams->overprint;
    if (pparams->changed & (1 << 5))
        pis->overprint_mode = pparams->overprint_mode;
    if (pparams->changed & (1 << 6))
        p14dev->blendspot = pparams->blendspot;
    pdf14_set_marking_params(dev, pis);
}
# 3066 "./base/gdevp14.c"
static int
pdf14_forward_open_device(gx_device * dev)
{
    gx_device_forward * pdev = (gx_device_forward *)dev;
    gx_device * tdev = pdev->target;
    int code;


    if (tdev == 0)
        return ((-1));
    if ((code = gs_opendevice(tdev)) >= 0)
        gx_device_copy_params(dev, tdev);
    return code;
}





static void
pdf14_forward_device_procs(gx_device * dev)
{
    gx_device_forward * pdev = (gx_device_forward *)dev;







    memset(&(pdev->procs), 0, ((int)(sizeof(pdev->procs))));
    gx_device_forward_fill_in_procs(pdev);




    ((dev)->procs.close_device = (gx_forward_close_device));
    ((dev)->procs.fill_rectangle = (gx_forward_fill_rectangle));
    ((dev)->procs.fill_rectangle_hl_color = (gx_forward_fill_rectangle_hl_color));
    ((dev)->procs.tile_rectangle = (gx_forward_tile_rectangle));
    ((dev)->procs.copy_mono = (gx_forward_copy_mono));
    ((dev)->procs.copy_color = (gx_forward_copy_color));
    ((dev)->procs.get_page_device = (gx_forward_get_page_device));
    ((dev)->procs.strip_tile_rectangle = (gx_forward_strip_tile_rectangle));
    ((dev)->procs.copy_alpha = (gx_forward_copy_alpha));
    ((dev)->procs.get_profile = (gx_forward_get_profile));
    ((dev)->procs.set_graphics_type_tag = (gx_forward_set_graphics_type_tag));

    ((dev)->procs.open_device = (pdf14_forward_open_device));
    ((dev)->procs.put_params = (pdf14_forward_put_params));
}







int
pdf14_disable_device(gx_device * dev)
{
    gx_device_forward * pdev = (gx_device_forward *)dev;

    do { } while (0);
    dev->color_info = pdev->target->color_info;
    pdf14_forward_device_procs(dev);
    ((dev)->procs.create_compositor = (pdf14_forward_create_compositor));
    return 0;
}





static pdf14_default_colorspace_t
pdf14_determine_default_blend_cs(gx_device * pdev)
{


    if (pdev->color_info.polarity == GX_CINFO_POLARITY_ADDITIVE ||
        pdev->color_info.num_components == 1)





         if (pdev->color_info.num_components == 1)
             return PDF14_DeviceGray;
         else
            return PDF14_DeviceRGB;
    else {



        int i, output_comp_num, num_cmyk_used = 0, num_cmyk = 0;







        for (i = 0; i < 4; i++) {
            const char * pcomp_name = (const char *)DeviceCMYKComponents[i];

            output_comp_num = ((pdev)->procs.get_color_comp_index)
                (pdev, pcomp_name, strlen(pcomp_name), 0);
            if (output_comp_num >= 0) {
                num_cmyk++;
                if (output_comp_num != (8 * 8))
                    num_cmyk_used++;
            }
        }






        if (num_cmyk_used == 4 && pdev->color_info.num_components == 4
            && pdev->color_info.max_components == 4)
            return PDF14_DeviceCMYK;






        if (num_cmyk != 4)
            return PDF14_DeviceCustom;




        return PDF14_DeviceCMYKspot;
    }
}







static int
get_pdf14_device_proto(gx_device * dev, pdf14_device ** pdevproto,
        pdf14_device * ptempdevproto, gs_imager_state * pis,
        const gs_pdf14trans_t * pdf14pct)
{
    pdf14_default_colorspace_t dev_cs =
                pdf14_determine_default_blend_cs(dev);

    switch (dev_cs) {
        case PDF14_DeviceGray:
            *pdevproto = (pdf14_device *)&gs_pdf14_Gray_device;
            *ptempdevproto = **pdevproto;
            ptempdevproto->color_info.max_components = 1;
            ptempdevproto->color_info.num_components =
                                    ptempdevproto->color_info.max_components;
            ptempdevproto->color_info.max_gray = 255;
            ptempdevproto->color_info.gray_index = 0;
            ptempdevproto->color_info.dither_grays = 256;
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceRGB:
            *pdevproto = (pdf14_device *)&gs_pdf14_RGB_device;
            *ptempdevproto = **pdevproto;
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceCMYK:
            *pdevproto = (pdf14_device *)&gs_pdf14_CMYK_device;
            *ptempdevproto = **pdevproto;
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceCMYKspot:
            *pdevproto = (pdf14_device *)&gs_pdf14_CMYKspot_device;







            if (pdf14pct->params.num_spot_colors >= 0) {
                *ptempdevproto = **pdevproto;
                ptempdevproto->devn_params.page_spot_colors =
                    pdf14pct->params.num_spot_colors;
                ptempdevproto->color_info.num_components =
                    ptempdevproto->devn_params.num_std_colorant_names +
                    pdf14pct->params.num_spot_colors;
                if (ptempdevproto->color_info.num_components >
                        (64))
                    ptempdevproto->color_info.num_components =
                        (64);
                ptempdevproto->color_info.depth =
                                    ptempdevproto->color_info.num_components * 8;
                *pdevproto = ptempdevproto;
            }
            break;
        case PDF14_DeviceCustom:





            *ptempdevproto = gs_pdf14_custom_device;
            ptempdevproto->color_info = dev->color_info;

            ptempdevproto->color_info.depth =
                ptempdevproto->color_info.num_components * 8;
            ptempdevproto->color_info.max_gray = 255;
            ptempdevproto->color_info.max_color = 255;
            ptempdevproto->color_info.dither_grays = 256;
            ptempdevproto->color_info.dither_colors = 256;

            *pdevproto = ptempdevproto;
            break;
        default:
            return ((-15));
    }
    return 0;
}
# 3296 "./base/gdevp14.c"
static int
pdf14_recreate_device(gs_memory_t *mem, gs_imager_state * pis,
                gx_device * dev, const gs_pdf14trans_t * pdf14pct)
{
    pdf14_device * pdev = (pdf14_device *)dev;
    gx_device * target = pdev->target;
    pdf14_device * dev_proto;
    pdf14_device temp_dev_proto;
    int code;

    do { } while (0);





    code = get_pdf14_device_proto(target, &dev_proto,
                                 &temp_dev_proto, pis, pdf14pct);
    if (code < 0)
        return code;
    pdev->color_info = dev_proto->color_info;
    pdev->pad = target->pad;
    pdev->log2_align_mod = target->log2_align_mod;
    pdev->is_planar = target->is_planar;
    pdev->procs = dev_proto->procs;
    dev->static_procs = dev_proto->static_procs;
    gx_device_set_procs(dev);
    gx_device_fill_in_procs(dev);
    check_device_separable(dev);
    return ((pdev)->procs.open_device)(dev);
}





static int
gx_update_pdf14_compositor(gx_device * pdev, gs_imager_state * pis,
    const gs_pdf14trans_t * pdf14pct, gs_memory_t * mem )
{
    pdf14_device *p14dev = (pdf14_device *)pdev;
    gs_pdf14trans_params_t params = pdf14pct->params;
    int code = 0;

    params.idle = pdf14pct->idle;
    switch (params.pdf14_op) {
        default:
            break;
        case PDF14_PUSH_DEVICE:
            if (!(params.is_pattern)) {
                p14dev->blend_mode = 0;
                p14dev->opacity = p14dev->shape = 0.0;
                pdf14_recreate_device(mem, pis, pdev, pdf14pct);
            }
            break;
        case PDF14_ABORT_DEVICE:


            code = gx_abort_trans_device(pis, pdev);
            if (p14dev->free_devicen) {
                devn_free_params(pdev);
            }
            pdf14_disable_device(pdev);
            pdf14_close(pdev);
            break;
        case PDF14_POP_DEVICE:
            if (!(params.is_pattern)) {
                do { } while (0);

                pis->get_cmap_procs = p14dev->save_get_cmap_procs;
                gx_set_cmap_procs(pis, p14dev->target);

                {

                    gs_imager_state new_is = *pis;




                    new_is.log_op = rop3_default;
                    code = p14dev->pdf14_procs->put_image(pdev, &new_is, p14dev->target);
                }




                if (p14dev->free_devicen) {
                    devn_free_params(pdev);
                }
                pdf14_disable_device(pdev);
                pdf14_close(pdev);
            }
            break;
        case PDF14_BEGIN_TRANS_GROUP:
            code = gx_begin_transparency_group(pis, pdev, &params);
            break;
        case PDF14_END_TRANS_GROUP:
            code = gx_end_transparency_group(pis, pdev);
            break;
        case PDF14_BEGIN_TRANS_MASK:
            code = gx_begin_transparency_mask(pis, pdev, &params);
            break;
        case PDF14_END_TRANS_MASK:
            code = gx_end_transparency_mask(pis, pdev, &params);
            break;
        case PDF14_SET_BLEND_PARAMS:
            pdf14_set_params(pis, pdev, &pdf14pct->params);
            break;
        case PDF14_PUSH_TRANS_STATE:
            code = gx_push_transparency_state(pis, pdev);
            break;
        case PDF14_POP_TRANS_STATE:
            code = gx_pop_transparency_state(pis, pdev);
            break;
        case PDF14_PUSH_SMASK_COLOR:
            code = pdf14_increment_smask_color(pis, pdev);
            break;
        case PDF14_POP_SMASK_COLOR:
            code = pdf14_decrement_smask_color(pis, pdev);
            break;
    }
    return code;
}
# 3428 "./base/gdevp14.c"
static int
pdf14_forward_create_compositor(gx_device * dev, gx_device * * pcdev,
        const gs_composite_t * pct, gs_imager_state * pis,
        gs_memory_t * mem, gx_device *cdev)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    gx_device * tdev = pdev->target;
    gx_device * ndev;
    int code;

    *pcdev = dev;
    if (gs_is_pdf14trans_compositor(pct)) {
        const gs_pdf14trans_t * pdf14pct = (const gs_pdf14trans_t *) pct;

        if (pdf14pct->params.pdf14_op == PDF14_PUSH_DEVICE)
            return gx_update_pdf14_compositor(dev, pis, pdf14pct, mem);
        return 0;
    }
    code = ((tdev)->procs.create_compositor)(tdev, &ndev, pct, pis, mem, cdev);
    if (code < 0)
        return code;
    gx_device_set_target((gx_device_forward *)pdev, ndev);
    return 0;
}






static int
pdf14_create_compositor(gx_device * dev, gx_device * * pcdev,
        const gs_composite_t * pct, gs_imager_state * pis,
        gs_memory_t * mem, gx_device *cdev)
{
    pdf14_device *p14dev = (pdf14_device *)dev;
    if (gs_is_pdf14trans_compositor(pct)) {
        const gs_pdf14trans_t * pdf14pct = (const gs_pdf14trans_t *) pct;
        *pcdev = dev;




        p14dev->pclist_device = cdev;
        return gx_update_pdf14_compositor(dev, pis, pdf14pct, mem);
    } else if (gs_is_overprint_compositor(pct)) {






                const gs_overprint_t * op_pct = (const gs_overprint_t *) pct;
                p14dev->blendspot = op_pct->params.blendspot;
                if (op_pct->params.retain_any_comps && !op_pct->params.retain_spot_comps) {
                    p14dev->drawn_comps = op_pct->params.drawn_comps;
                } else {


                    p14dev->drawn_comps = ( (gx_color_index) 1 << (p14dev->color_info.num_components)) - (gx_color_index) 1;
                }
                *pcdev = dev;
                return 0;
    } else
        return gx_no_create_compositor(dev, pcdev, pct, pis, mem, cdev);
}

static int
pdf14_text_begin(gx_device * dev, gs_imager_state * pis,
                 const gs_text_params_t * text, gs_font * font,
                 gx_path * path, const gx_device_color * pdcolor,
                 const gx_clip_path * pcpath, gs_memory_t * memory,
                 gs_text_enum_t ** ppenum)
{
    int code;
    gs_text_enum_t *penum;

    do { } while (0);
    pdf14_set_marking_params(dev, pis);
    code = gx_default_text_begin(dev, pis, text, font, path, pdcolor, pcpath,
                                 memory, &penum);
    if (code < 0)
        return code;
    *ppenum = (gs_text_enum_t *)penum;
    return code;
}




static int
pdf14_copy_mono(gx_device * dev,
               const byte * base, int sourcex, int sraster, gx_bitmap_id id,
        int x, int y, int w, int h, gx_color_index zero, gx_color_index one)
{
    const byte *sptr;
    const byte *line;
    int sbit, first_bit;
    int code, sbyte, bit, count;
    int run_length, startx, current_bit, bit_value;
    gx_color_index current_color;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, sourcex -= x, x = 0; if ( y < 0 ) h += y, base -= (int)(y * sraster), id = 0L, y = 0; } if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); if ( h > (dev)->height - y ) h = (dev)->height - y; if ( w <= 0 || h <= 0 ) return 0; } while (0);
    line = base + (sourcex >> 3);
    sbit = sourcex & 7;
    first_bit = 7 - sbit;


    while (h-- > 0) {

        sptr = line;
        sbyte = *sptr++;
        bit = first_bit;
        count = w;
        run_length = 0;
        startx = x;
        current_bit = 0;
        current_color = zero;


        do {
            bit_value = (sbyte >> bit) & 1;
            if (bit_value == current_bit) {

                run_length++;
            } else {

                if (run_length != 0) {
                    if (current_color != ((gx_color_index)(~0))) {
                        code = (*((dev)->procs.fill_rectangle))
                                (dev, startx, y, run_length, 1, current_color);
                        if (code < 0)
                            return code;
                    }
                    startx += run_length;
                }
                run_length = 1;
                current_color = bit_value ? one : zero;
                current_bit = bit_value;
            }

            if (bit == 0) {
                bit = 7;
                sbyte = *sptr++;
            }
            else
                bit--;
        } while (--count > 0);

        if (run_length != 0 && current_color != ((gx_color_index)(~0))) {
            code = (*((dev)->procs.fill_rectangle))
                        (dev, startx, y, run_length, 1, current_color);
            if (code < 0)
                return code;
        }

        line += sraster;
        y++;
    }
    return 0;
}




static int
pdf14_copy_planes(gx_device * dev, const byte * data, int data_x, int raster,
                  gx_bitmap_id id, int x, int y, int w, int h, int plane_height)
{
    pdf14_device *pdev = (pdf14_device *)dev;



    pdf14_buf *buf = pdev->ctx->stack;
    int num_planes = dev->color_info.num_components;
    byte *dptr = (byte *)data + data_x;
    int yinc, xinc, pi;
    gx_drawing_color dcolor;
    int code = 0;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, x = 0; if ( y < 0 ) h += y, y = 0; } } while (0); do { if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); do { if ( h > (dev)->height - y ) h = (dev)->height - y; } while (0); } while (0);
    if (w <= 0 || h <= 0)
        return 0;

    dcolor.type = (&gx_dc_type_data_devn);




    for (yinc = 0; yinc < h; yinc++) {
        for (xinc = 0; xinc < w; xinc++) {
            for (pi = 0; pi < num_planes; pi++) {
                dcolor.colors.devn.values[pi] = *(dptr + plane_height * raster * pi) << 8;
            }
            if (buf->knockout)
                code =
                    pdf14_mark_fill_rectangle_ko_simple(dev, x + xinc,
                                                        y + yinc, 1, 1, 0,
                                                        &dcolor, ((bool)1));
            else
                code =
                    pdf14_mark_fill_rectangle(dev, x + xinc, y + yinc, 1, 1, 0,
                                               &dcolor, ((bool)1));
            if (code < 0)
                return code;
            dptr++;
        }
        dptr = (byte *)data + raster * yinc + data_x;
    }
    return code;
}

static int
pdf14_fill_rectangle_hl_color(gx_device *dev, const gs_fixed_rect *rect,
    const gs_imager_state *pis, const gx_drawing_color *pdcolor,
    const gx_clip_path *pcpath)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;
    int x = ((int)((rect->p.x) >> (8)));
    int y = ((int)((rect->p.y) >> (8)));
    int w = ((int)((rect->q.x) >> (8))) - x;
    int h = ((int)((rect->q.y) >> (8))) -y;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, x = 0; if ( y < 0 ) h += y, y = 0; } } while (0); do { if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); do { if ( h > (dev)->height - y ) h = (dev)->height - y; } while (0); } while (0);
    if (w <= 0 || h <= 0)
        return 0;
    if (buf->knockout)
        return pdf14_mark_fill_rectangle_ko_simple(dev, x, y, w, h, 0, pdcolor,
                                                   ((bool)1));
    else
        return pdf14_mark_fill_rectangle(dev, x, y, w, h, 0, pdcolor, ((bool)1));
}

static int
pdf14_fill_rectangle(gx_device * dev,
                    int x, int y, int w, int h, gx_color_index color)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, x = 0; if ( y < 0 ) h += y, y = 0; } } while (0); do { if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); do { if ( h > (dev)->height - y ) h = (dev)->height - y; } while (0); } while (0);
    if (w <= 0 || h <= 0)
        return 0;
    if (buf->knockout)
        return pdf14_mark_fill_rectangle_ko_simple(dev, x, y, w, h, color, ((void*)0),
                                                   ((bool)0));
    else
        return pdf14_mark_fill_rectangle(dev, x, y, w, h, color, ((void*)0), ((bool)0));
}

static int
pdf14_compute_group_device_int_rect(const gs_matrix *ctm,
                                    const gs_rect *pbbox, gs_int_rect *rect)
{
    gs_rect dev_bbox;
    int code;

    code = gs_bbox_transform(pbbox, ctm, &dev_bbox);
    if (code < 0)
        return code;
    rect->p.x = (int)floor(dev_bbox.p.x);
    rect->p.y = (int)floor(dev_bbox.p.y);
    rect->q.x = (int)ceil(dev_bbox.q.x);
    rect->q.y = (int)ceil(dev_bbox.q.y);
    return 0;
}

static int
compute_group_device_int_rect(pdf14_device *pdev, gs_int_rect *rect,
                              const gs_rect *pbbox, gs_imager_state *pis)
{
    int code = pdf14_compute_group_device_int_rect(&(*(const gs_matrix *)&(pis)->ctm), pbbox, rect);

    if (code < 0)
        return code;
    do { if ((pdev->ctx->rect).p.x > (*rect).p.x) (*rect).p.x = (pdev->ctx->rect).p.x; if ((pdev->ctx->rect).q.x < (*rect).q.x) (*rect).q.x = (pdev->ctx->rect).q.x; if ((pdev->ctx->rect).p.y > (*rect).p.y) (*rect).p.y = (pdev->ctx->rect).p.y; if ((pdev->ctx->rect).q.y < (*rect).q.y) (*rect).q.y = (pdev->ctx->rect).q.y; } while (0);

    if (rect->q.x < rect->p.x)
        rect->q.x = rect->p.x;
    if (rect->q.y < rect->p.y)
        rect->q.y = rect->p.y;
    return 0;
}

static int
pdf14_begin_transparency_group(gx_device *dev,
                              const gs_transparency_group_params_t *ptgp,
                              const gs_rect *pbbox,
                              gs_imager_state *pis, gs_memory_t *mem)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    double alpha = pis->opacity.alpha * pis->shape.alpha;
    gs_int_rect rect;
    int code;
    bool isolated = ptgp->Isolated;
    bool sep_target;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    cmm_profile_t *group_profile;
    cmm_profile_t *tos_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;
    bool cm_back_drop = ((bool)0);
    bool new_icc = ((bool)0);

    sep_target = (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->dname) && __builtin_constant_p ("pdf14cmykspot") && (__s1_len = strlen (pdev->dname), __s2_len = strlen ("pdf14cmykspot"), (!((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("pdf14cmykspot") + 1) - (size_t)(const void *)("pdf14cmykspot") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->dname, "pdf14cmykspot") : (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) && (__s1_len = strlen (pdev->dname), __s1_len < 4) ? (__builtin_constant_p ("pdf14cmykspot") && ((size_t)(const void *)(("pdf14cmykspot") + 1) - (size_t)(const void *)("pdf14cmykspot") == 1) ? __builtin_strcmp (pdev->dname, "pdf14cmykspot") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("pdf14cmykspot"); register int __result = (((const unsigned char *) (const char *) (pdev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("pdf14cmykspot") && ((size_t)(const void *)(("pdf14cmykspot") + 1) - (size_t)(const void *)("pdf14cmykspot") == 1) && (__s2_len = strlen ("pdf14cmykspot"), __s2_len < 4) ? (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) ? __builtin_strcmp (pdev->dname, "pdf14cmykspot") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("pdf14cmykspot"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("pdf14cmykspot"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("pdf14cmykspot"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("pdf14cmykspot"))[3]); } } __result; }))) : __builtin_strcmp (pdev->dname, "pdf14cmykspot")))); }) == 0) ||
                 (((dev)->procs.dev_spec_op)(dev, gxdso_supports_devn, ((void*)0), 0));
    code = ((dev)->procs.get_profile)(dev, &dev_profile);
    if (code < 0)
        return code;
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &tos_profile, &render_cond);



    code = compute_group_device_int_rect(pdev, &rect, pbbox, pis);
    if (code < 0)
        return code;
    do { } while (0);




    if (ptgp->group_color == UNKNOWN){
        if (pdev->ctx->stack){

            group_color_numcomps = pdev->ctx->stack->n_chan - 1;
        } else {

            group_color_numcomps = pdev->color_info.num_components;
        }



        if (group_color_numcomps < 5 ) {
            group_color = ICC;
            group_profile = tos_profile;
        } else {


            group_color = DEVICEN;
            group_profile = ((void*)0);
         }
    } else {
        group_color_numcomps = ptgp->group_color_numcomps;
        group_color = ptgp->group_color;
        group_profile = ptgp->iccprofile;
    }


    if (!sep_target) {

        if (group_profile == ((void*)0) && pdev->pclist_device != ((void*)0)) {

            gx_device_clist_reader *pcrdev = (gx_device_clist_reader *)(pdev->pclist_device);
            group_profile = gsicc_read_serial_icc((gx_device *) pcrdev, ptgp->icc_hashcode);
            if (group_profile == ((void*)0))
                return gs_throw_imp(__func__, "./base/gdevp14.c", 3785, 0, (-1), "ICC data not found in clist");

            group_profile->dev = (gx_device *) pcrdev;
            new_icc = ((bool)1);
        }
        if (group_profile != ((void*)0)) {


            if (!(group_profile->hash_is_valid)) {
                gsicc_get_icc_buff_hash(group_profile->buffer,
                                        &(group_profile->hashcode),
                                        group_profile->buffer_size);
                group_profile->hash_is_valid = ((bool)1);
            }
            if (group_profile->hashcode != tos_profile->hashcode) {
                cm_back_drop = ((bool)1);
            }
        }
        code = pdf14_update_device_color_procs(dev, group_color, ptgp->icc_hashcode,
                                               pis, group_profile);
        do { } while (0);

    } else {
        code = 0;

        group_color_numcomps = pdev->color_info.num_components;
    }

    if (code < 0)
        return code;
    code = pdf14_push_transparency_group(pdev->ctx, &rect, isolated, ptgp->Knockout,
                                         (byte)floor (255 * alpha + 0.5),
                                         (byte)floor (255 * pis->shape.alpha + 0.5),
                                         pis->blend_mode, ptgp->idle,
                                         ptgp->mask_id, group_color_numcomps,
                                         cm_back_drop, group_profile, tos_profile,
                                         pis, dev);
    if (new_icc)
        do { if (group_profile) { do { do { } while (0); (group_profile)->rc.ref_count += (-1); } while (0); if (!(group_profile)->rc.ref_count) { do { do { } while (0); (group_profile)->rc.free((group_profile)->rc.memory, (void *)(group_profile), "pdf14_begin_transparency_group"); } while (0); (group_profile) = 0; } else do { } while (0); } } while (0);
    return code;
}

static int
pdf14_end_transparency_group(gx_device *dev,
                              gs_imager_state *pis)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    int code;
    pdf14_parent_color_t *parent_color;
    cmm_profile_t *group_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    code = ((dev)->procs.get_profile)(dev, &dev_profile);
    if (code < 0)
        return code;
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &group_profile,
                          &render_cond);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    code = pdf14_pop_transparency_group(pis, pdev->ctx, pdev->blend_procs,
                                pdev->color_info.num_components, group_profile,
                                (gx_device *) pdev);






    parent_color = pdev->ctx->stack->parent_color_info_procs;
        if (!(parent_color->parent_color_mapping_procs == ((void*)0) &&
                parent_color->parent_color_comp_index == ((void*)0))) {
            pis->get_cmap_procs = parent_color->get_cmap_procs;
            gx_set_cmap_procs(pis, dev);
            pdev->procs.get_color_mapping_procs =
                parent_color->parent_color_mapping_procs;
            pdev->procs.get_color_comp_index =
                parent_color->parent_color_comp_index;
            pdev->color_info.polarity = parent_color->polarity;
            pdev->color_info.num_components = parent_color->num_components;
            pdev->blend_procs = parent_color->parent_blending_procs;
            pdev->ctx->additive = parent_color->isadditive;
            pdev->pdf14_procs = parent_color->unpack_procs;
            pdev->color_info.depth = parent_color->depth;
        pdev->color_info.max_color = parent_color->max_color;
        pdev->color_info.max_gray = parent_color->max_gray;
        memcpy(&(pdev->color_info.comp_bits),&(parent_color->comp_bits),
                            (8 * 8));
        memcpy(&(pdev->color_info.comp_shift),&(parent_color->comp_shift),
                            (8 * 8));
            parent_color->get_cmap_procs = ((void*)0);
            parent_color->parent_color_comp_index = ((void*)0);
            parent_color->parent_color_mapping_procs = ((void*)0);
        if (parent_color->icc_profile != ((void*)0)) {


            do { if (group_profile) { do { do { } while (0); (group_profile)->rc.ref_count += (-1); } while (0); if (!(group_profile)->rc.ref_count) { do { do { } while (0); (group_profile)->rc.free((group_profile)->rc.memory, (void *)(group_profile), "pdf14_end_transparency_group"); } while (0); (group_profile) = 0; } else do { } while (0); } } while (0);
            dev->icc_struct->device_profile[0] = parent_color->icc_profile;
            do { if (parent_color->icc_profile) { do { do { } while (0); (parent_color->icc_profile)->rc.ref_count += (-1); } while (0); if (!(parent_color->icc_profile)->rc.ref_count) { do { do { } while (0); (parent_color->icc_profile)->rc.free((parent_color->icc_profile)->rc.memory, (void *)(parent_color->icc_profile), "pdf14_end_transparency_group"); } while (0); (parent_color->icc_profile) = 0; } else do { } while (0); } } while (0);
            parent_color->icc_profile = ((void*)0);
        }
    }
    do { } while (0);
    return code;
}

static int
pdf14_update_device_color_procs(gx_device *dev,
                              gs_transparency_color_t group_color,
                              int64_t icc_hashcode, gs_imager_state *pis,
                              cmm_profile_t *iccprofile)
{
    pdf14_device *pdevproto = ((void*)0);
    pdf14_device *pdev = (pdf14_device *)dev;
    const pdf14_procs_t *new_14procs = ((void*)0);
    pdf14_parent_color_t *parent_color_info;
    gx_color_polarity_t new_polarity;
    int new_num_comps;
    bool new_additive;
    byte new_depth;
    gx_device_clist_reader *pcrdev;
    byte comp_bits[] = {0,0,0,0};
    byte comp_shift[] = {0,0,0,0};
    int k;
    bool has_tags = dev->graphics_type_tag & GS_DEVICE_ENCODES_TAGS;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    if (pdev->ctx->stack != ((void*)0)){
        parent_color_info = pdev->ctx->stack->parent_color_info_procs;
    } else {

        return ((-21));
    }
    do { } while (0);
# 3934 "./base/gdevp14.c"
        parent_color_info->get_cmap_procs = ((void*)0);
        parent_color_info->parent_color_mapping_procs = ((void*)0);
        parent_color_info->parent_color_comp_index = ((void*)0);
        switch (group_color) {
            case GRAY_SCALE:
                new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                new_num_comps = 1;
                pdevproto = (pdf14_device *)&gs_pdf14_Gray_device;
                new_additive = ((bool)1);
                new_14procs = &gray_pdf14_procs;
                new_depth = 8;
                comp_bits[0] = 8;
                comp_shift[0] = 0;
                break;
            case DEVICE_RGB:
            case CIE_XYZ:
                new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                new_num_comps = 3;
                pdevproto = (pdf14_device *)&gs_pdf14_RGB_device;
                new_additive = ((bool)1);
                new_14procs = &rgb_pdf14_procs;
                new_depth = 24;
                for (k = 0; k < 3; k++) {
                    comp_bits[k] = 8;
                    comp_shift[k] = (2-k)*8;
                }
                break;
            case DEVICE_CMYK:
                new_polarity = GX_CINFO_POLARITY_SUBTRACTIVE;
                new_num_comps = 4;
                pdevproto = (pdf14_device *)&gs_pdf14_CMYK_device;
                new_additive = ((bool)0);


                if (dev->color_info.num_components > 4){
                    new_14procs = &cmykspot_pdf14_procs;
                } else {
                    new_14procs = &cmyk_pdf14_procs;
                }
                new_depth = 32;
                for (k = 0; k < 4; k++) {
                    comp_bits[k] = 8;
                    comp_shift[k] = (3-k)*8;
                }
                break;
            case ICC:


                if (iccprofile == ((void*)0) && pdev->pclist_device != ((void*)0)) {


                    pcrdev = (gx_device_clist_reader *)(pdev->pclist_device);
                    iccprofile = gsicc_read_serial_icc((gx_device *) pcrdev,
                                                       icc_hashcode);
                    if (iccprofile == ((void*)0))
                        return gs_throw_imp(__func__, "./base/gdevp14.c", 3989, 0, -1, "ICC data not found in clist");

                    iccprofile->dev = (gx_device *) pcrdev;
                } else {



                    do { if (iccprofile) do { (iccprofile)->rc.ref_count++; do { } while (0); } while (0); } while (0);
                }
                new_num_comps = iccprofile->num_comps;
                new_depth = new_num_comps * 8;
                if (new_num_comps == 4) {
                    new_additive = ((bool)0);
                    new_polarity = GX_CINFO_POLARITY_SUBTRACTIVE;
                } else {
                    new_additive = ((bool)1);
                    new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                }
                switch (new_num_comps) {
                    case 1:
                        pdevproto = (pdf14_device *)&gs_pdf14_Gray_device;
                        new_14procs = &gray_pdf14_procs;
                        comp_bits[0] = 8;
                        comp_shift[0] = 0;
                        break;
                    case 3:
                        pdevproto = (pdf14_device *)&gs_pdf14_RGB_device;
                        new_14procs = &rgb_pdf14_procs;
                        for (k = 0; k < 3; k++) {
                            comp_bits[k] = 8;
                            comp_shift[k] = (2-k)*8;
                        }
                        break;
                   case 4:
                        pdevproto = (pdf14_device *)&gs_pdf14_CMYK_device;
                        new_14procs = &cmyk_pdf14_procs;
                        for (k = 0; k < 4; k++) {
                            comp_bits[k] = 8;
                            comp_shift[k] = (3-k)*8;
                        }
                        break;
                }
                break;
            default:
                return ((-15));
                break;
         }
        do { } while (0);




        parent_color_info->get_cmap_procs = pis->get_cmap_procs;
        parent_color_info->parent_color_mapping_procs =
            pdev->procs.get_color_mapping_procs;
        parent_color_info->parent_color_comp_index =
            pdev->procs.get_color_comp_index;
        parent_color_info->parent_blending_procs = pdev->blend_procs;
        parent_color_info->polarity = pdev->color_info.polarity;
        parent_color_info->num_components = pdev->color_info.num_components;
        parent_color_info->isadditive = pdev->ctx->additive;
        parent_color_info->unpack_procs = pdev->pdf14_procs;
        parent_color_info->depth = pdev->color_info.depth;
        memcpy(&(parent_color_info->comp_bits),&(pdev->color_info.comp_bits),
                            (8 * 8));
        memcpy(&(parent_color_info->comp_shift),&(pdev->color_info.comp_shift),
                            (8 * 8));
        parent_color_info->max_color = pdev->color_info.max_color;
        parent_color_info->max_gray = pdev->color_info.max_gray;
        parent_color_info->encode = pdev->procs.encode_color;
        parent_color_info->decode = pdev->procs.decode_color;


        if (group_color == ICC && iccprofile != ((void*)0)) {
            ((dev)->procs.get_profile)(dev, &dev_profile);
            gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile,
                                  &(parent_color_info->icc_profile),
                                  &render_cond);
        }



        if (pdev->procs.encode_color == pdf14_compressed_encode_color &&
            new_num_comps == 1) {
            pdev->procs.decode_color = pdevproto->static_procs->decode_color;
            if (has_tags) {
                pdev->procs.encode_color = pdf14_encode_color_tag;
            } else {
                pdev->procs.encode_color = pdevproto->static_procs->encode_color;
            }
        }
        pis->get_cmap_procs = pdf14_get_cmap_procs_group;
        gx_set_cmap_procs(pis, dev);
        pdev->procs.get_color_mapping_procs =
            pdevproto->static_procs->get_color_mapping_procs;
        pdev->procs.get_color_comp_index =
            pdevproto->static_procs->get_color_comp_index;
        pdev->blend_procs = pdevproto->blend_procs;
        pdev->color_info.polarity = new_polarity;
        pdev->color_info.num_components = new_num_comps;
        pdev->ctx->additive = new_additive;
        pdev->pdf14_procs = new_14procs;
        if (has_tags) {
            new_depth += 8;
        }
        pdev->color_info.depth = new_depth;
        memset(&(pdev->color_info.comp_bits),0,(8 * 8));
        memset(&(pdev->color_info.comp_shift),0,(8 * 8));
        memcpy(&(pdev->color_info.comp_bits),comp_bits,4);
        memcpy(&(pdev->color_info.comp_shift),comp_shift,4);
        pdev->color_info.max_color = 255;
        pdev->color_info.max_gray = 255;



        if (group_color == ICC && iccprofile != ((void*)0)) {



            dev->icc_struct->device_profile[0] = iccprofile;
            do { if (parent_color_info->icc_profile) do { (parent_color_info->icc_profile)->rc.ref_count++; do { } while (0); } while (0); } while (0);
        }
        return(1);
}



static int
pdf14_update_device_color_procs_push_c(gx_device *dev,
                              gs_transparency_color_t group_color, int64_t icc_hashcode,
                              gs_imager_state *pis, cmm_profile_t *icc_profile)
{
    pdf14_device *pdevproto;
    pdf14_device *pdev = (pdf14_device *)dev;
    gx_device_clist_writer * cldev = (gx_device_clist_writer *)pdev->pclist_device;
    const pdf14_procs_t *new_14procs;
    bool update_color_info;
    gx_color_polarity_t new_polarity;
    int new_num_comps;
    bool new_additive;
    byte new_depth;
    byte comp_bits[] = {0,0,0,0};
    byte comp_shift[] = {0,0,0,0};
    int k;
    bool has_tags = dev->graphics_type_tag & GS_DEVICE_ENCODES_TAGS;
    cmm_profile_t *icc_profile_dev;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    if (group_color == ICC && icc_profile == ((void*)0))
        return gs_throw_imp(__func__, "./base/gdevp14.c", 4139, 0, (-23), "Missing ICC data");
    do { } while (0);
# 4150 "./base/gdevp14.c"
        update_color_info = ((bool)0);
        switch (group_color) {
            case GRAY_SCALE:
                  if (pdev->color_info.num_components != 1){
                    update_color_info = ((bool)1);
                    new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                    new_num_comps = 1;
                    pdevproto = (pdf14_device *)&gs_pdf14_Gray_device;
                    new_additive = ((bool)1);
                    new_14procs = &gray_pdf14_procs;
                    new_depth = 8;
                    comp_bits[0] = 8;
                    comp_shift[0] = 0;
                }
                break;
            case DEVICE_RGB:
            case CIE_XYZ:
                if (pdev->color_info.num_components != 3){
                    update_color_info = ((bool)1);
                    new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                    new_num_comps = 3;
                    pdevproto = (pdf14_device *)&gs_pdf14_RGB_device;
                    new_additive = ((bool)1);
                    new_14procs = &rgb_pdf14_procs;
                    new_depth = 24;
                    for (k = 0; k < 3; k++) {
                        comp_bits[k] = 8;
                        comp_shift[k] = (2-k)*8;
                    }
                }
                break;
            case DEVICE_CMYK:
                if (pdev->color_info.num_components != 4){
                    update_color_info = ((bool)1);
                    new_polarity = GX_CINFO_POLARITY_SUBTRACTIVE;
                    new_num_comps = 4;
                    pdevproto = (pdf14_device *)&gs_pdf14_CMYK_device;
                    new_additive = ((bool)0);


                    if (dev->color_info.num_components > 4){
                        new_14procs = &cmykspot_pdf14_procs;
                    } else {
                        new_14procs = &cmyk_pdf14_procs;
                    }
                    new_depth = 32;
                    for (k = 0; k < 4; k++) {
                        comp_bits[k] = 8;
                        comp_shift[k] = (3-k)*8;
                    }
                }
                break;
            case ICC:

                ((dev)->procs.get_profile)(dev, &dev_profile);
                gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile,
                                      &icc_profile_dev, &render_cond);
                if (icc_profile_dev->hashcode != icc_profile->hashcode) {
                    update_color_info = ((bool)1);
                    new_num_comps = icc_profile->num_comps;
                    new_depth = icc_profile->num_comps*8;
                    switch (new_num_comps) {
                    case 1:
                        new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                        new_additive = ((bool)1);
                        pdevproto = (pdf14_device *)&gs_pdf14_Gray_device;
                        new_14procs = &gray_pdf14_procs;
                        comp_bits[0] = 8;
                        comp_shift[0] = 0;
                        break;
                    case 3:
                        new_polarity = GX_CINFO_POLARITY_ADDITIVE;
                        new_additive = ((bool)1);
                        pdevproto = (pdf14_device *)&gs_pdf14_RGB_device;
                        new_14procs = &rgb_pdf14_procs;
                        for (k = 0; k < 3; k++) {
                            comp_bits[k] = 8;
                            comp_shift[k] = (2-k)*8;
                        }
                        break;
                    case 4:
                        new_polarity = GX_CINFO_POLARITY_SUBTRACTIVE;
                        new_additive = ((bool)0);
                        pdevproto = (pdf14_device *)&gs_pdf14_CMYK_device;
                        new_14procs = &cmyk_pdf14_procs;
                        for (k = 0; k < 4; k++) {
                            comp_bits[k] = 8;
                            comp_shift[k] = (3-k)*8;
                        }
                        break;
                    default:
                        return gs_throw_imp(__func__, "./base/gdevp14.c", 4242, 0, (-23), "ICC Number of colorants illegal");

                    }
                }
                break;
            case UNKNOWN:
                return 0;
                break;
            default:
                return ((-15));
                break;
         }
         if (update_color_info){
             if (has_tags) {
                 new_depth += 8;
             }
            do { } while (0);



            pis->get_cmap_procs = pdf14_get_cmap_procs_group;
            gx_set_cmap_procs(pis, dev);
            pdev->procs.get_color_mapping_procs =
                pdevproto->static_procs->get_color_mapping_procs;
            pdev->procs.get_color_comp_index =
                pdevproto->static_procs->get_color_comp_index;
            pdev->blend_procs = pdevproto->blend_procs;
            pdev->color_info.polarity = new_polarity;
            pdev->color_info.num_components = new_num_comps;
            pdev->color_info.max_color = 255;
            pdev->color_info.max_gray = 255;
            pdev->pdf14_procs = new_14procs;
            pdev->color_info.depth = new_depth;
            memset(&(pdev->color_info.comp_bits),0,(8 * 8));
            memset(&(pdev->color_info.comp_shift),0,(8 * 8));
            memcpy(&(pdev->color_info.comp_bits),comp_bits,4);
            memcpy(&(pdev->color_info.comp_shift),comp_shift,4);







            if (pdev->procs.encode_color == pdf14_compressed_encode_color &&
                new_num_comps == 1) {
                pdev->procs.decode_color =
                    pdevproto->static_procs->decode_color;
                if (has_tags) {
                    pdev->procs.encode_color = pdf14_encode_color_tag;
                } else {
                    pdev->procs.encode_color =
                        pdevproto->static_procs->encode_color;
                }
            }
            cldev->clist_color_info.depth = pdev->color_info.depth;
            cldev->clist_color_info.polarity = pdev->color_info.polarity;
            cldev->clist_color_info.num_components = pdev->color_info.num_components;
            cldev->clist_color_info.max_color = pdev->color_info.max_color;
            cldev->clist_color_info.max_gray = pdev->color_info.max_gray;



           if (group_color == ICC) {
                dev->icc_struct->device_profile[0] = icc_profile;
            }
            if (pdev->ctx) {
               pdev->ctx->additive = new_additive;
            }
            return(1);
         }
         do { } while (0);
         return 0;
}

static int
pdf14_update_device_color_procs_pop_c(gx_device *dev,gs_imager_state *pis)
{

    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_parent_color_t *parent_color = pdev->trans_group_parent_cmap_procs;
    gx_device_clist_writer * cldev = (gx_device_clist_writer *)pdev->pclist_device;

    do { } while (0);

    if (!(parent_color->parent_color_mapping_procs == ((void*)0) &&
        parent_color->parent_color_comp_index == ((void*)0))) {
        do { } while (0);


        pis->get_cmap_procs = parent_color->get_cmap_procs;
        gx_set_cmap_procs(pis, dev);
        pdev->procs.get_color_mapping_procs = parent_color->parent_color_mapping_procs;
        pdev->procs.get_color_comp_index = parent_color->parent_color_comp_index;
        pdev->color_info.polarity = parent_color->polarity;
        pdev->color_info.depth = parent_color->depth;
        pdev->color_info.num_components = parent_color->num_components;
        pdev->blend_procs = parent_color->parent_blending_procs;
        pdev->pdf14_procs = parent_color->unpack_procs;
        pdev->color_info.max_color = parent_color->max_color;
        pdev->color_info.max_gray = parent_color->max_gray;
        pdev->procs.encode_color = parent_color->encode;
        pdev->procs.decode_color = parent_color->decode;
        memcpy(&(pdev->color_info.comp_bits),&(parent_color->comp_bits),
                            (8 * 8));
        memcpy(&(pdev->color_info.comp_shift),&(parent_color->comp_shift),
                            (8 * 8));



        cldev->clist_color_info.depth = pdev->color_info.depth;
        cldev->clist_color_info.polarity = pdev->color_info.polarity;
        cldev->clist_color_info.num_components = pdev->color_info.num_components;
        cldev->clist_color_info.max_color = pdev->color_info.max_color;
        cldev->clist_color_info.max_gray = pdev->color_info.max_gray;
        memcpy(&(cldev->clist_color_info.comp_bits),&(parent_color->comp_bits),
                            (8 * 8));
        memcpy(&(cldev->clist_color_info.comp_shift),&(parent_color->comp_shift),
                            (8 * 8));
        if (pdev->ctx){
            pdev->ctx->additive = parent_color->isadditive;
        }




         dev->icc_struct->device_profile[0] = parent_color->icc_profile;
         do { } while (0);
    } else {
        do { } while (0);
    }
    return 0;
}






static void
pdf14_push_parent_color(gx_device *dev, const gs_imager_state *pis)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_parent_color_t *new_parent_color;
    cmm_profile_t *icc_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    ((dev)->procs.get_profile)(dev, &dev_profile);
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &icc_profile,
                          &render_cond);
    do { } while (0);

    new_parent_color = (pdf14_parent_color_t *)(*(dev->memory)->procs.alloc_struct)(dev->memory, &st_pdf14_clr, "pdf14_clr_new");


    new_parent_color->previous = pdev->trans_group_parent_cmap_procs;

    pdev->trans_group_parent_cmap_procs = new_parent_color;

    new_parent_color->get_cmap_procs = pis->get_cmap_procs;
    new_parent_color->parent_color_mapping_procs =
        pdev->procs.get_color_mapping_procs;
    new_parent_color->parent_color_comp_index =
        pdev->procs.get_color_comp_index;
    new_parent_color->parent_blending_procs = pdev->blend_procs;
    new_parent_color->polarity = pdev->color_info.polarity;
    new_parent_color->num_components = pdev->color_info.num_components;
    new_parent_color->unpack_procs = pdev->pdf14_procs;
    new_parent_color->depth = pdev->color_info.depth;
    new_parent_color->max_color = pdev->color_info.max_color;
    new_parent_color->max_gray = pdev->color_info.max_gray;
    new_parent_color->decode = pdev->procs.decode_color;
    new_parent_color->encode = pdev->procs.encode_color;
    memcpy(&(new_parent_color->comp_bits),&(pdev->color_info.comp_bits),
                        (8 * 8));
    memcpy(&(new_parent_color->comp_shift),&(pdev->color_info.comp_shift),
                        (8 * 8));

    new_parent_color->icc_profile = icc_profile;
    do { if (icc_profile) do { (icc_profile)->rc.ref_count++; do { } while (0); } while (0); } while (0);

    if (pdev->ctx) {
        new_parent_color->isadditive = pdev->ctx->additive;
    }
}





static void
pdf14_pop_parent_color(gx_device *dev, const gs_imager_state *pis)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_parent_color_t *old_parent_color_info = pdev->trans_group_parent_cmap_procs;

    do { } while (0);

    if (old_parent_color_info->icc_profile != ((void*)0))
        do { if (old_parent_color_info->icc_profile) { do { do { } while (0); (old_parent_color_info->icc_profile)->rc.ref_count += (-1); } while (0); if (!(old_parent_color_info->icc_profile)->rc.ref_count) { do { do { } while (0); (old_parent_color_info->icc_profile)->rc.free((old_parent_color_info->icc_profile)->rc.memory, (void *)(old_parent_color_info->icc_profile), "pdf14_pop_parent_color"); } while (0); (old_parent_color_info->icc_profile) = 0; } else do { } while (0); } } while (0);

    pdev->trans_group_parent_cmap_procs = old_parent_color_info->previous;

    ((dev->memory)->procs.free_object(dev->memory, old_parent_color_info, "pdf14_clr_free"));
}

static int
pdf14_begin_transparency_mask(gx_device *dev,
                              const gx_transparency_mask_params_t *ptmp,
                              const gs_rect *pbbox,
                              gs_imager_state *pis, gs_memory_t *mem)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    byte bg_alpha = 0;
    byte *transfer_fn = (byte *)(*(pdev->ctx->memory)->procs.alloc_bytes)(pdev->ctx->memory, 256, "pdf14_begin_transparency_mask");

    gs_int_rect rect;
    int code;
    int group_color_numcomps;
    gs_transparency_color_t group_color;

    if (transfer_fn == ((void*)0))
        return ((-25));
    code = compute_group_device_int_rect(pdev, &rect, pbbox, pis);
    if (code < 0)
        return code;

    if (ptmp->Background_components)
        bg_alpha = (int)(255 * ptmp->GrayBackground + 0.5);
    do { } while (0);

    memcpy(transfer_fn, ptmp->transfer_fn, ((int)(sizeof(ptmp->transfer_fn))));


    if (ptmp->group_color == UNKNOWN){
        if (pdev->ctx->stack){

            group_color_numcomps = pdev->ctx->stack->n_chan-1;
        } else {

            group_color_numcomps = pdev->color_info.num_components;
        }
        switch (group_color_numcomps) {
            case 1:
                group_color = GRAY_SCALE;
                break;
            case 3:
                group_color = DEVICE_RGB;
                break;
            case 4:
                group_color = DEVICE_CMYK;
            break;
            default:


                group_color = DEVICEN;
            break;
         }
    } else {
        group_color = ptmp->group_color;
        group_color_numcomps = ptmp->group_color_numcomps;
    }


    code = pdf14_update_device_color_procs(dev, group_color, ptmp->icc_hashcode,
                                           pis, ptmp->iccprofile);
    if (code < 0)
        return code;


    return pdf14_push_transparency_mask(pdev->ctx, &rect, bg_alpha,
                                        transfer_fn, ptmp->idle, ptmp->replacing,
                                        ptmp->mask_id, ptmp->subtype,
                                        group_color_numcomps,
                                        ptmp->Background_components,
                                        ptmp->Background,
                                        ptmp->GrayBackground);
}

static int
pdf14_end_transparency_mask(gx_device *dev, gs_imager_state *pis)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_parent_color_t *parent_color;
    int ok;

    do { } while (0);
    ok = pdf14_pop_transparency_mask(pdev->ctx, pis, dev);






    if (pdev->ctx->stack != ((void*)0) ) {
        parent_color = pdev->ctx->stack->parent_color_info_procs;
        if (!(parent_color->parent_color_mapping_procs == ((void*)0) &&
            parent_color->parent_color_comp_index == ((void*)0))) {
            pis->get_cmap_procs = parent_color->get_cmap_procs;
            gx_set_cmap_procs(pis, dev);
            pdev->procs.get_color_mapping_procs = parent_color->parent_color_mapping_procs;
            pdev->procs.get_color_comp_index = parent_color->parent_color_comp_index;
            pdev->color_info.polarity = parent_color->polarity;
            pdev->color_info.num_components = parent_color->num_components;
            pdev->color_info.depth = parent_color->depth;
            pdev->blend_procs = parent_color->parent_blending_procs;
            pdev->ctx->additive = parent_color->isadditive;
            pdev->pdf14_procs = parent_color->unpack_procs;
            pdev->color_info.max_color = parent_color->max_color;
            pdev->color_info.max_gray = parent_color->max_gray;
            parent_color->get_cmap_procs = ((void*)0);
            parent_color->parent_color_comp_index = ((void*)0);
            parent_color->parent_color_mapping_procs = ((void*)0);
            pdev->procs.encode_color = parent_color->encode;
            pdev->procs.decode_color = parent_color->decode;
            memcpy(&(pdev->color_info.comp_bits),&(parent_color->comp_bits),
                                (8 * 8));
            memcpy(&(pdev->color_info.comp_shift),&(parent_color->comp_shift),
                                (8 * 8));

            if (parent_color->icc_profile != ((void*)0)) {
                do { if (dev->icc_struct->device_profile[0]) { do { do { } while (0); (dev->icc_struct->device_profile[0])->rc.ref_count += (-1); } while (0); if (!(dev->icc_struct->device_profile[0])->rc.ref_count) { do { do { } while (0); (dev->icc_struct->device_profile[0])->rc.free((dev->icc_struct->device_profile[0])->rc.memory, (void *)(dev->icc_struct->device_profile[0]), "pdf14_end_transparency_mask"); } while (0); (dev->icc_struct->device_profile[0]) = 0; } else do { } while (0); } } while (0);
                dev->icc_struct->device_profile[0] = parent_color->icc_profile;
                do { if (parent_color->icc_profile) { do { do { } while (0); (parent_color->icc_profile)->rc.ref_count += (-1); } while (0); if (!(parent_color->icc_profile)->rc.ref_count) { do { do { } while (0); (parent_color->icc_profile)->rc.free((parent_color->icc_profile)->rc.memory, (void *)(parent_color->icc_profile), "pdf14_end_transparency_mask"); } while (0); (parent_color->icc_profile) = 0; } else do { } while (0); } } while (0);
                parent_color->icc_profile = ((void*)0);
            }
        }
    }
    return ok;
}

static int
pdf14_mark_fill_rectangle(gx_device * dev, int x, int y, int w, int h,
                          gx_color_index color, const gx_device_color *pdc,
                          bool devn)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;
    int i, j, k;
    byte *dst_ptr;
    byte src[(8 * 8)+3];
    byte dst[(8 * 8)+3];
    gs_blend_mode_t blend_mode = pdev->blend_mode;
    bool additive = pdev->ctx->additive;
    int rowstride = buf->rowstride;
    int planestride = buf->planestride;
    gs_graphics_type_tag_t curr_tag = GS_UNKNOWN_TAG;
    bool has_alpha_g = buf->has_alpha_g;
    bool has_shape = buf->has_shape;
    bool has_tags = buf->has_tags;
    int num_chan = buf->n_chan;
    int num_comp = num_chan - 1;
    int shape_off = num_chan * planestride;
    int alpha_g_off = shape_off + (has_shape ? planestride : 0);
    int tag_off = alpha_g_off + (has_alpha_g ? planestride : 0);
    bool overprint = pdev->overprint;
    bool blendspot = pdev->blendspot;
    gx_color_index drawn_comps = pdev->drawn_comps;
    gx_color_index comps;
    byte shape = 0;
    byte src_alpha;
    const gx_color_index mask = ((gx_color_index)1 << 8) - 1;
    const int shift = 8;

    if (buf->data == ((void*)0))
        return 0;
# 4625 "./base/gdevp14.c"
    if (has_tags) {
        curr_tag = (color >> (num_comp*8)) & 0xff;
    }
    if (devn) {
        if (additive) {
            for (j = 0; j < num_comp; j++) {
                src[j] = ((pdc->colors.devn.values[j]) >> shift & mask);
            }
        } else {
            for (j = 0; j < num_comp; j++) {
                src[j] = 255 - ((pdc->colors.devn.values[j]) >> shift & mask);
            }
        }
    } else
        pdev->pdf14_procs->unpack_color(num_comp, color, pdev, src);
    src_alpha = src[num_comp] = (byte)floor (255 * pdev->alpha + 0.5);
    if (has_shape)
        shape = (byte)floor (255 * pdev->shape + 0.5);

    if (x < buf->rect.p.x) {
        w += x - buf->rect.p.x;
        x = buf->rect.p.x;
    }
    if (y < buf->rect.p.y) {
      h += y - buf->rect.p.y;
      y = buf->rect.p.y;
    }
    if (x + w > buf->rect.q.x) w = buf->rect.q.x - x;
    if (y + h > buf->rect.q.y) h = buf->rect.q.y - y;

    if (x < buf->dirty.p.x) buf->dirty.p.x = x;
    if (y < buf->dirty.p.y) buf->dirty.p.y = y;
    if (x + w > buf->dirty.q.x) buf->dirty.q.x = x + w;
    if (y + h > buf->dirty.q.y) buf->dirty.q.y = y + h;
    dst_ptr = buf->data + (x - buf->rect.p.x) + (y - buf->rect.p.y) * rowstride;
    src_alpha = 255-src_alpha;
    shape = 255-shape;
    if (!has_alpha_g)
        alpha_g_off = 0;
    if (!has_shape)
        shape_off = 0;
    if (!has_tags)
        tag_off = 0;
    rowstride -= w;


    if (num_comp == 1 && additive) {
        for (j = h; j > 0; --j) {
            for (i = w; i > 0; --i) {
                if (src[1] == 0) {

                } else if (dst_ptr[planestride] == 0) {
                    dst_ptr[0] = src[0];
                    dst_ptr[planestride] = src[1];
                } else {
                    art_pdf_composite_pixel_alpha_8_fast_mono(dst_ptr, src,
                                                blend_mode, pdev->blend_procs, planestride);
                }
                if (alpha_g_off) {
                    int tmp = (255 - dst_ptr[alpha_g_off]) * src_alpha + 0x80;
                    dst_ptr[alpha_g_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
                }
                if (shape_off) {
                    int tmp = (255 - dst_ptr[shape_off]) * shape + 0x80;
                    dst_ptr[shape_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
                }
                if (tag_off) {

                    if (dst_ptr[planestride] == 255) {
                        dst_ptr[tag_off] = curr_tag;
                    } else {
                        dst_ptr[tag_off] = ( dst_ptr[tag_off] |curr_tag ) & ~GS_UNTOUCHED_TAG;
                    }
                }
                ++dst_ptr;
            }
            dst_ptr += rowstride;
        }
    } else {
        for (j = h; j > 0; --j) {
            for (i = w; i > 0; --i) {
                if (additive) {
                    if (src[num_comp] == 0) {

                    } else if (dst_ptr[num_comp * planestride] == 0) {
                        for (k = 0; k < num_chan; ++k)
                            dst_ptr[k * planestride] = src[k];
                    } else {
                        art_pdf_composite_pixel_alpha_8_fast(dst_ptr, src, num_comp,
                                                blend_mode, pdev->blend_procs, planestride);
                    }
                } else {

                    for (k = 0; k < num_comp; ++k)
                        dst[k] = 255 - dst_ptr[k * planestride];
                    dst[num_comp] = dst_ptr[num_comp * planestride];
                    art_pdf_composite_pixel_alpha_8(dst, src, num_comp,
                                                    blend_mode, pdev->blend_procs);

                    if (overprint && dst_ptr[num_comp * planestride] != 0) {
                        if (blendspot) {

                            for (k = 0; k < num_comp; ++k) {
                                int temp =
                                    (255 - dst_ptr[k * planestride]) * dst[k];
                                temp = temp >> 8;
                                dst_ptr[k * planestride] = (255 - temp);
                            }
                        } else {
                            for (k = 0, comps = drawn_comps; comps != 0; ++k, comps >>= 1) {
                                if ((comps & 0x1) != 0) {
                                    dst_ptr[k * planestride] = 255 - dst[k];
                                }
                            }
                        }

                        dst_ptr[num_comp * planestride] = dst[num_comp];
                    } else {
                        for (k = 0; k < num_comp; ++k)
                            dst_ptr[k * planestride] = 255 - dst[k];
                        dst_ptr[num_comp * planestride] = dst[num_comp];
                    }
                }
                if (alpha_g_off) {
                    int tmp = (255 - dst_ptr[alpha_g_off]) * src_alpha + 0x80;
                    dst_ptr[alpha_g_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
                }
                if (shape_off) {
                    int tmp = (255 - dst_ptr[shape_off]) * shape + 0x80;
                    dst_ptr[shape_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
                }
                if (tag_off) {

                    if (dst[num_comp] == 255) {
                        dst_ptr[tag_off] = curr_tag;
                    } else {
                        dst_ptr[tag_off] = ( dst_ptr[tag_off] |curr_tag ) & ~GS_UNTOUCHED_TAG;
                    }
                }
                ++dst_ptr;
            }
            dst_ptr += rowstride;
        }
    }
# 4782 "./base/gdevp14.c"
    return 0;
}

static int
pdf14_mark_fill_rectangle_ko_simple(gx_device * dev, int x, int y, int w, int h,
                                    gx_color_index color,
                                    const gx_device_color *pdc, bool devn)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    pdf14_buf *buf = pdev->ctx->stack;
    int i, j, k;
    byte *line, *dst_ptr;
    byte src[(8 * 8)+3];
    byte dst[(8 * 8)+3];
    int rowstride = buf->rowstride;
    int planestride = buf->planestride;
    int num_chan = buf->n_chan;
    int num_comp = num_chan - 1;
    int shape_off = num_chan * planestride;
    bool has_shape = buf->has_shape;
    bool has_alpha_g = buf->has_alpha_g;
    int alpha_g_off = shape_off + (has_shape ? planestride : 0);
    int tag_off = shape_off + (has_alpha_g ? planestride : 0) +
                              (has_shape ? planestride : 0);
    bool has_tags = buf->has_tags;
    bool additive = pdev->ctx->additive;
    gs_graphics_type_tag_t curr_tag = dev->graphics_type_tag & ~GS_DEVICE_ENCODES_TAGS;
    gx_color_index mask = ((gx_color_index)1 << 8) - 1;
    int shift = 8;
    byte shape = 0;
    byte src_alpha;

    if (buf->data == ((void*)0))
        return 0;
# 4832 "./base/gdevp14.c"
    if (devn) {
        if (additive) {
            for (j = 0; j < num_comp; j++) {
                src[j] = ((pdc->colors.devn.values[j]) >> shift & mask);
            }
        } else {
            for (j = 0; j < num_comp; j++) {
                src[j] = 255 - ((pdc->colors.devn.values[j]) >> shift & mask);
            }
        }
    } else
        pdev->pdf14_procs->unpack_color(num_comp, color, pdev, src);

    src_alpha = src[num_comp] = (byte)floor (255 * pdev->alpha + 0.5);
    if (has_shape) {
        shape = (byte)floor (255 * pdev->shape + 0.5);
    } else {
        shape_off = 0;
    }
    if (has_tags) {
        curr_tag = (color >> (num_comp*8)) & 0xff;
    } else {
        tag_off = 0;
    }
    if (!has_alpha_g)
        alpha_g_off = 0;
    src_alpha = 255 - src_alpha;
    shape = 255 - shape;


    if (x < buf->rect.p.x) {
        w += x - buf->rect.p.x;
        x = buf->rect.p.x;
    }
    if (y < buf->rect.p.y) {
      h += y - buf->rect.p.y;
      y = buf->rect.p.y;
    }
    if (x + w > buf->rect.q.x) w = buf->rect.q.x - x;
    if (y + h > buf->rect.q.y) h = buf->rect.q.y - y;

    if (x < buf->dirty.p.x) buf->dirty.p.x = x;
    if (y < buf->dirty.p.y) buf->dirty.p.y = y;
    if (x + w > buf->dirty.q.x) buf->dirty.q.x = x + w;
    if (y + h > buf->dirty.q.y) buf->dirty.q.y = y + h;

    line = buf->data + (x - buf->rect.p.x) + (y - buf->rect.p.y) * rowstride;

    for (j = 0; j < h; ++j) {
        dst_ptr = line;
        for (i = 0; i < w; ++i) {

            if (additive) {
                for (k = 0; k < num_chan; ++k)
                    dst[k] = dst_ptr[k * planestride];
            } else {
                for (k = 0; k < num_comp; ++k)
                    dst[k] = 255 - dst_ptr[k * planestride];
                dst[num_comp] = dst_ptr[num_comp * planestride];
            }
            if (buf->isolated) {
                art_pdf_knockoutisolated_group_8(dst, src, num_comp);
            } else {
                art_pdf_composite_knockout_simple_8(dst,
                    has_shape ? dst_ptr + shape_off : ((void*)0),
                    has_tags ? dst_ptr + tag_off : ((void*)0), src, curr_tag, num_comp, 255);
            }

            if (additive) {
                for (k = 0; k < num_chan; ++k)
                    dst_ptr[k * planestride] = dst[k];
            } else {
                for (k = 0; k < num_comp; ++k)
                    dst_ptr[k * planestride] = 255 - dst[k];
                dst_ptr[num_comp * planestride] = dst[num_comp];
            }
            if (tag_off) {
                dst_ptr[tag_off] = curr_tag;
            }
            if (alpha_g_off) {
                int tmp = (255 - dst_ptr[alpha_g_off]) * src_alpha + 0x80;
                dst_ptr[alpha_g_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
            }
            if (shape_off) {
                int tmp = (255 - dst_ptr[shape_off]) * shape + 0x80;
                dst_ptr[shape_off] = 255 - ((tmp + (tmp >> 8)) >> 8);
            }
            ++dst_ptr;
        }
        line += rowstride;
    }
# 4933 "./base/gdevp14.c"
    return 0;
}






static void pdf14_cmap_gray_direct(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static void pdf14_cmap_rgb_direct(frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static void pdf14_cmap_cmyk_direct(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t, const gs_color_space *);
static void pdf14_cmap_gray_direct_group(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static void pdf14_cmap_rgb_direct_group(frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static void pdf14_cmap_cmyk_direct_group(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t, const gs_color_space *);
static void pdf14_cmap_rgb_alpha_direct(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static void pdf14_cmap_separation_direct(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static void pdf14_cmap_devicen_direct(const frac *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
static bool pdf14_cmap_is_halftoned(const gs_imager_state *, gx_device *);

static const gx_color_map_procs pdf14_cmap_many = {
     pdf14_cmap_gray_direct,
     pdf14_cmap_rgb_direct,
     pdf14_cmap_cmyk_direct,
     pdf14_cmap_rgb_alpha_direct,
     pdf14_cmap_separation_direct,
     pdf14_cmap_devicen_direct,
     pdf14_cmap_is_halftoned
    };

static const gx_color_map_procs pdf14_cmap_many_group = {
     pdf14_cmap_gray_direct_group,
     pdf14_cmap_rgb_direct_group,
     pdf14_cmap_cmyk_direct_group,
     pdf14_cmap_rgb_alpha_direct,
     pdf14_cmap_separation_direct,
     pdf14_cmap_devicen_direct,
     pdf14_cmap_is_halftoned
    };




static __inline__ void
map_components_to_colorants(const frac * pcc,
        const gs_devicen_color_map * pcolor_component_map, frac * plist)
{
    int i = pcolor_component_map->num_colorants - 1;
    int pos;


    for (; i >= 0; i--) {
        plist[i] = ((frac)0);
    }

    for (i = pcolor_component_map->num_components - 1; i >= 0; i--) {
        pos = pcolor_component_map->color_map[i];
        if (pos >= 0)
            plist[pos] = pcc[i];
    }
}

static void
pdf14_cmap_gray_direct(frac gray, gx_device_color * pdc, const gs_imager_state * pis,
                 gx_device * dev, gs_color_select_t select)
{
    int i,ncomps;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;


    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;

    ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_gray(trans_device, gray, cm_comps);
    for (i = 0; i < ncomps; i++)
        cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

    color = ((trans_device)->procs.encode_color)(trans_device, cv);

    if (color != ((gx_color_index)(~0)))
        ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
}

static void
pdf14_cmap_rgb_direct(frac r, frac g, frac b, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, gs_color_select_t select)
{
    int i,ncomps;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;


    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;

    ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_rgb(trans_device, pis, r, g, b, cm_comps);
    for (i = 0; i < ncomps; i++)
        cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

    color = ((trans_device)->procs.encode_color)(trans_device, cv);

    if (color != ((gx_color_index)(~0)))
        ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
}

static void
pdf14_cmap_cmyk_direct(frac c, frac m, frac y, frac k, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, gs_color_select_t select,
     const gs_color_space *pcs)
{
    int i,ncomps;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;


    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;

    ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_cmyk(trans_device, c, m, y, k, cm_comps);
    for (i = 0; i < ncomps; i++)
        cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));


    if (((trans_device)->procs.dev_spec_op)(trans_device, gxdso_supports_devn, ((void*)0), 0)) {
        for (i = 0; i < ncomps; i++)
            pdc->colors.devn.values[i] = cv[i];
        pdc->type = (&gx_dc_type_data_devn);
    } else {

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    }
}



static void
pdf14_cmap_gray_direct_group(frac gray, gx_device_color * pdc, const gs_imager_state * pis,
                 gx_device * dev, gs_color_select_t select)
{
    int i, ncomps = dev->color_info.num_components;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;
# 5106 "./base/gdevp14.c"
    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;


   if (ncomps == 1 ) {
        cv[0] = ((ushort)( ((gray) << (((1 << 1) * 8) - 15)) + ((gray) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

         if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    } else {

        ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_gray(trans_device, gray, cm_comps);
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    }
}



static void
pdf14_cmap_rgb_direct_group(frac r, frac g, frac b, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, gs_color_select_t select)
{
    int i, ncomps = dev->color_info.num_components;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;





    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;
    if ( ncomps == 3 ){
        cv[0] = ((ushort)( ((r) << (((1 << 1) * 8) - 15)) + ((r) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
        cv[1] = ((ushort)( ((g) << (((1 << 1) * 8) - 15)) + ((g) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
        cv[2] = ((ushort)( ((b) << (((1 << 1) * 8) - 15)) + ((b) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

         if (color != ((gx_color_index)(~0)))
        ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    } else {
# 5175 "./base/gdevp14.c"
        ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_rgb(trans_device, pis, r, g, b, cm_comps);
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    }
}


static void
pdf14_cmap_cmyk_direct_group(frac c, frac m, frac y, frac k, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, gs_color_select_t select,
     const gs_color_space *pcs)
{
    int i, ncomps = dev->color_info.num_components;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;






    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;
    if (ncomps == 4 ){
        cv[0] = ((ushort)( ((c) << (((1 << 1) * 8) - 15)) + ((c) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
        cv[1] = ((ushort)( ((m) << (((1 << 1) * 8) - 15)) + ((m) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
        cv[2] = ((ushort)( ((y) << (((1 << 1) * 8) - 15)) + ((y) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
        cv[3] = ((ushort)( ((k) << (((1 << 1) * 8) - 15)) + ((k) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    } else {

        ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_cmyk(trans_device, c, m, y, k, cm_comps);
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
        color = ((trans_device)->procs.encode_color)(trans_device, cv);
        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    }
}

static void
pdf14_cmap_rgb_alpha_direct(frac r, frac g, frac b, frac alpha, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, gs_color_select_t select)
{
    int i, ncomps;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;





    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;

    ((trans_device)->procs.get_color_mapping_procs)(trans_device)->map_rgb(trans_device, pis, r, g, b, cm_comps);

    if (alpha != ((frac)0x7ff8)) {



        frac alpha_bias = 0;

        for (i = 0; i < ncomps; i++)
            cm_comps[i] = (frac)((long)cm_comps[i] * alpha) / ((frac)0x7ff8) + alpha_bias;
    }

    for (i = 0; i < ncomps; i++)
        cv[i] = ((ushort)( ((cm_comps[i]) << (((1 << 1) * 8) - 15)) + ((cm_comps[i]) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));
    color = ((trans_device)->procs.encode_color)(trans_device, cv);

    if (color != ((gx_color_index)(~0)))
        ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
}

static void
pdf14_cmap_separation_direct(frac all, gx_device_color * pdc, const gs_imager_state * pis,
                 gx_device * dev, gs_color_select_t select)
{
    int i, ncomps = dev->color_info.num_components;
    bool additive = dev->color_info.polarity == GX_CINFO_POLARITY_ADDITIVE;
    frac comp_value = all;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;

    if (pis->color_component_map.sep_type == SEP_ALL) {




        if (additive)
            comp_value = ((frac)0x7ff8) - comp_value;

        i = pis->color_component_map.num_colorants - 1;
        for (; i >= 0; i--)
            cm_comps[i] = comp_value;
    }
    else {

        map_components_to_colorants(&comp_value, &(pis->color_component_map), cm_comps);
    }

    if (additive)
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( (((pis->effective_transfer[i]->proc == gs_identity_transfer ? cm_comps[i] : gx_color_frac_map(cm_comps[i], &pis->effective_transfer[i]->values[0]))) << (((1 << 1) * 8) - 15)) + (((pis->effective_transfer[i]->proc == gs_identity_transfer ? cm_comps[i] : gx_color_frac_map(cm_comps[i], &pis->effective_transfer[i]->values[0]))) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

    else
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( ((((frac)0x7ff8) - (pis->effective_transfer[i]->proc == gs_identity_transfer ? (frac)(((frac)0x7ff8) - cm_comps[i]) : gx_color_frac_map((frac)(((frac)0x7ff8) - cm_comps[i]), &pis->effective_transfer[i]->values[0]))) << (((1 << 1) * 8) - 15)) + ((((frac)0x7ff8) - (pis->effective_transfer[i]->proc == gs_identity_transfer ? (frac)(((frac)0x7ff8) - cm_comps[i]) : gx_color_frac_map((frac)(((frac)0x7ff8) - cm_comps[i]), &pis->effective_transfer[i]->values[0]))) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));




    if (((dev)->procs.dev_spec_op)(dev, gxdso_supports_devn, ((void*)0), 0)) {
        for (i = 0; i < ncomps; i++)
            pdc->colors.devn.values[i] = cv[i];
        pdc->type = (&gx_dc_type_data_devn);
    } else {

        color = ((dev)->procs.encode_color)(dev, cv);

        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    }
}

static void
pdf14_cmap_devicen_direct(const frac * pcc,
    gx_device_color * pdc, const gs_imager_state * pis, gx_device * dev,
    gs_color_select_t select)
{
    int i, ncomps = dev->color_info.num_components;
    frac cm_comps[(8 * 8)];
    gx_color_value cv[(8 * 8)];
    gx_color_index color;
    gx_device *trans_device;






    if (pis->trans_device != ((void*)0)){
        trans_device = pis->trans_device;
    } else {
        trans_device = dev;
    }
    ncomps = trans_device->color_info.num_components;

    map_components_to_colorants(pcc, &(pis->color_component_map), cm_comps);;

    if (trans_device->color_info.polarity == GX_CINFO_POLARITY_ADDITIVE)
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( (((pis->effective_transfer[i]->proc == gs_identity_transfer ? cm_comps[i] : gx_color_frac_map(cm_comps[i], &pis->effective_transfer[i]->values[0]))) << (((1 << 1) * 8) - 15)) + (((pis->effective_transfer[i]->proc == gs_identity_transfer ? cm_comps[i] : gx_color_frac_map(cm_comps[i], &pis->effective_transfer[i]->values[0]))) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));

    else
        for (i = 0; i < ncomps; i++)
            cv[i] = ((ushort)( ((((frac)0x7ff8) - (pis->effective_transfer[i]->proc == gs_identity_transfer ? (frac)(((frac)0x7ff8) - cm_comps[i]) : gx_color_frac_map((frac)(((frac)0x7ff8) - cm_comps[i]), &pis->effective_transfer[i]->values[0]))) << (((1 << 1) * 8) - 15)) + ((((frac)0x7ff8) - (pis->effective_transfer[i]->proc == gs_identity_transfer ? (frac)(((frac)0x7ff8) - cm_comps[i]) : gx_color_frac_map((frac)(((frac)0x7ff8) - cm_comps[i]), &pis->effective_transfer[i]->values[0]))) >> (15 * 2 - ((1 << 1) * 8) - 3)) ));



    if (((trans_device)->procs.dev_spec_op)(trans_device, gxdso_supports_devn, ((void*)0), 0)) {
        for (i = 0; i < ncomps; i++)
            pdc->colors.devn.values[i] = cv[i];
        pdc->type = (&gx_dc_type_data_devn);
    } else {

        color = ((trans_device)->procs.encode_color)(trans_device, cv);

        if (color != ((gx_color_index)(~0)))
            ((pdc)->colors.pure = (color), (pdc)->type = (&gx_dc_type_data_pure));
    }
}

static bool
pdf14_cmap_is_halftoned(const gs_imager_state * pis, gx_device * dev)
{
    return ((bool)0);
}

static const gx_color_map_procs *
pdf14_get_cmap_procs(const gs_imager_state *pis, const gx_device * dev)
{

    return &pdf14_cmap_many;
}

static const gx_color_map_procs *
pdf14_get_cmap_procs_group(const gs_imager_state *pis, const gx_device * dev)
{

    return &pdf14_cmap_many_group;
}

static int
pdf14_dev_spec_op(gx_device *pdev, int dev_spec_op,
                  void *data, int size)
{
    if (dev_spec_op == gxdso_pattern_shfill_doesnt_need_path)
        return 1;
    if (dev_spec_op == gxdso_is_pdf14_device) {
        if (data != ((void*)0) && size == sizeof(gx_device *))
            *(gx_device **)data = pdev;
        return 1;
    }
    if (dev_spec_op == gxdso_device_child) {
        pdf14_device *dev = (pdf14_device *)pdev;
        gxdso_device_child_request *d = (gxdso_device_child_request *)data;
        if (d->target == pdev) {
            d->target = dev->target;
            return 1;
        }
    }
    if (dev_spec_op == gxdso_supports_devn) {
        cmm_dev_profile_t *dev_profile;
        int code;
        code = ((pdev)->procs.get_profile)((gx_device*) pdev, &dev_profile);
        if (code == 0) {
            return dev_profile->supports_devn;
        } else {
            return 0;
        }
    }
    return gx_default_dev_spec_op(pdev, dev_spec_op, data, size);
}


int
gs_pdf14_device_color_mon_set(gx_device *pdev, bool monitoring)
{
    pdf14_device * p14dev = (pdf14_device *)pdev;
    gx_device *targ = p14dev->target;
    cmm_dev_profile_t *dev_profile;
    int code = ((targ)->procs.get_profile)((gx_device*) targ, &dev_profile);

    if (code == 0)
        dev_profile->pageneutralcolor = monitoring;
    return code;
}

int
gs_pdf14_device_push(gs_memory_t *mem, gs_imager_state * pis,
        gx_device ** pdev, gx_device * target, const gs_pdf14trans_t * pdf14pct)
{
    pdf14_device * dev_proto;
    pdf14_device * p14dev, temp_dev_proto;
    int code;
    bool has_tags = target->graphics_type_tag & GS_DEVICE_ENCODES_TAGS;
    cmm_profile_t *icc_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;
    int k;
    int max_bitmap = target->space_params.MaxBitmap == 0 ? 10000000L :
                                 target->space_params.MaxBitmap;
    bool use_pdf14_accum = ((bool)0);





    if (((target)->procs.dev_spec_op)(target, gxdso_supports_saved_pages, ((void*)0), 0) == 0 &&
        gx_device_is_pattern_clist(target) == 0 &&
        gx_device_is_pattern_accum(target) == 0 &&
        gs_device_is_memory(target) == 0) {

        uint32_t pdf14_trans_buffer_size = ((3 * (((((1) > (target->width)) ? (1) : (target->width))) * 8 * (1 + 4))) >> 3);


        if (target->height < ((unsigned long)~0L + (unsigned long)0) / pdf14_trans_buffer_size)
                pdf14_trans_buffer_size *= target->height;
        else
                max_bitmap = 0;
        if (pdf14_trans_buffer_size > max_bitmap)
            use_pdf14_accum = ((bool)1);
    }
    code = ((target)->procs.get_profile)(target, &dev_profile);
    if (code < 0)
        return code;
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &icc_profile,
                          &render_cond);
    do { } while (0);

    code = get_pdf14_device_proto(target, &dev_proto,
                                  &temp_dev_proto, pis, pdf14pct);
    if (code < 0)
        return code;
    code = gs_copydevice((gx_device **) &p14dev,
                         (const gx_device *) dev_proto, mem);
    if (code < 0)
        return code;
    gs_pdf14_device_copy_params((gx_device *)p14dev, target);
    gx_device_set_target((gx_device_forward *)p14dev, target);
    p14dev->pad = target->pad;
    p14dev->log2_align_mod = target->log2_align_mod;
    p14dev->is_planar = target->is_planar;




    if ((icc_profile->data_cs == gsCIELAB || icc_profile->islab)
        && pis->icc_manager->default_rgb != ((void*)0)) {
        p14dev->icc_struct->device_profile[0] =
                                        pis->icc_manager->default_rgb;
        do { if (pis->icc_manager->default_rgb) do { (pis->icc_manager->default_rgb)->rc.ref_count++; do { } while (0); } while (0); } while (0);
    }

    if (p14dev->color_info.num_components > target->color_info.num_components)
        p14dev->color_info.num_components = target->color_info.num_components;
    if (p14dev->color_info.max_components > target->color_info.max_components)
        p14dev->color_info.max_components = target->color_info.max_components;
    p14dev->color_info.depth = p14dev->color_info.num_components * 8;







    if (has_tags) {
        p14dev->procs.encode_color = pdf14_encode_color_tag;
        p14dev->color_info.depth += 8;
    }
    check_device_separable((gx_device *)p14dev);
    gx_device_fill_in_procs((gx_device *)p14dev);
    p14dev->save_get_cmap_procs = pis->get_cmap_procs;
    pis->get_cmap_procs = pdf14_get_cmap_procs;
    gx_set_cmap_procs(pis, (gx_device *)p14dev);

    for (k = 0; k < p14dev->color_info.num_components; k++) {
        p14dev->color_info.comp_bits[k] = 8;
        p14dev->color_info.comp_shift[k] =
                            (p14dev->color_info.num_components - 1 - k) * 8;
    }
    if (use_pdf14_accum) {

        p14dev->width = 1;
        p14dev->height = 1;
    }
    code = (((gx_device *) p14dev)->procs.open_device) ((gx_device *) p14dev);
    *pdev = (gx_device *) p14dev;
    pdf14_set_marking_params((gx_device *)p14dev, pis);
    p14dev->blendspot = ((bool)0);
    p14dev->trans_group_parent_cmap_procs = ((void*)0);

    p14dev->color_info.anti_alias = target->color_info.anti_alias;
# 5552 "./base/gdevp14.c"
    if (use_pdf14_accum) {
        const gx_device_pdf14_accum *accum_proto = ((void*)0);
        gx_device *new_target = ((void*)0);
        gx_device_color pdcolor;
        frac pconc_white = ((frac)0x7ff8);

        do { } while (0);


        switch (target->color_info.num_components) {
            case 1:
                accum_proto = &pdf14_accum_Gray;
                break;
            case 3:
                accum_proto = &pdf14_accum_RGB;
                break;
            case 4:
                accum_proto = &pdf14_accum_CMYK;
                break;
            default:

                break;
        }
        if (accum_proto == ((void*)0) ||
            (code = gs_copydevice(&new_target, (gx_device *)accum_proto, mem->stable_memory)) < 0)
            goto no_clist_accum;

        ((gx_device_pdf14_accum *)new_target)->save_p14dev = (gx_device *)p14dev;

        new_target->color_info.separable_and_linear = GX_CINFO_SEP_LIN;
        set_linear_color_bits_mask_shift(new_target);
        gs_pdf14_device_copy_params(new_target, target);
        ((gx_device_pdf14_accum *)new_target)->page_uses_transparency = ((bool)1);
        gx_device_fill_in_procs(new_target);

        memcpy(&(new_target->space_params), &(target->space_params), sizeof(gdev_space_params));
        max_bitmap = (((target->space_params.MaxBitmap) > (target->space_params.BufferSpace)) ? (target->space_params.MaxBitmap) : (target->space_params.BufferSpace));
        new_target->space_params.BufferSpace = max_bitmap;

        if ((code = gdev_prn_open(new_target)) < 0 ||
             !((gx_device_printer *)((gx_device_printer *)new_target)->buffer_space != 0)) {
            ((mem->stable_memory)->procs.free_object(mem->stable_memory, new_target, "pdf14-accum"));
            goto no_clist_accum;
        }

        ((new_target)->procs.set_graphics_type_tag)(new_target, GS_PATH_TAG);
        if ((code = gx_remap_concrete_DGray(&pconc_white,
                                            (((gs_state *)pis)->color[0].color_space),
                                            &pdcolor, pis, new_target, gs_color_select_all)) < 0)
            goto no_clist_accum;

        (*((new_target)->procs.fillpage))(new_target, pis, &pdcolor);
        code = clist_create_compositor(new_target, pdev, (gs_composite_t *)pdf14pct, pis, mem, ((void*)0));
        if (code < 0)
            goto no_clist_accum;

        pdf14_disable_device((gx_device *)p14dev);
        pdf14_close((gx_device *)p14dev);
    }
    return code;

no_clist_accum:

    return (-100);
}
# 5630 "./base/gdevp14.c"
static const gc_ptr_element_t st_pdf14trans_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((gs_pdf14trans_t *)0)->params.transfer_function - (char *)((gs_pdf14trans_t *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((gs_pdf14trans_t *)0)->params.iccprofile - (char *)((gs_pdf14trans_t *)0) )) } }; static const gc_struct_data_t st_pdf14trans_reloc_ptrs = { (sizeof(st_pdf14trans_enum_ptrs) / sizeof((st_pdf14trans_enum_ptrs)[0])), 0, 0, st_pdf14trans_enum_ptrs }; static const gs_memory_struct_type_t st_pdf14trans = { sizeof(gs_pdf14trans_t), "gs_pdf14trans_t", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &st_pdf14trans_reloc_ptrs };
# 5640 "./base/gdevp14.c"
static bool
c_pdf14trans_equal(const gs_composite_t * pct0, const gs_composite_t * pct1)
{
    return ((bool)0);
}
# 5656 "./base/gdevp14.c"
static __inline__ int
c_pdf14trans_write_ctm(byte **ppbuf, const gs_pdf14trans_params_t *pparams)
{




    byte *pbuf = *ppbuf;
    int len, code;

    len = cmd_write_ctm_return_length_nodevice(&pparams->ctm);
    pbuf--;
    code = cmd_write_ctm(&pparams->ctm, pbuf, len);
    if (code < 0)
        return code;
    pbuf += len + 1;
    *ppbuf = pbuf;
    return 0;
}






static int
c_pdf14trans_write(const gs_composite_t * pct, byte * data, uint * psize,
                   gx_device_clist_writer *cdev)
{
    const gs_pdf14trans_params_t * pparams = &((const gs_pdf14trans_t *)pct)->params;
    int need, avail = *psize;
    byte buf[( 4 + 1 + sizeof(float) * 6 + sizeof(((gs_pdf14trans_params_t *)0)->subtype) + sizeof(((gs_pdf14trans_params_t *)0)->group_color_numcomps) + 4 + sizeof(((gs_pdf14trans_params_t *)0)->bbox) + sizeof(((gs_pdf14trans_params_t *)0)->mask_id) + sizeof(((gs_pdf14trans_params_t *)0)->Background) + sizeof(float)*4 + sizeof(((gs_pdf14trans_params_t *)0)->GrayBackground) + sizeof(int64_t))];



    byte * pbuf = buf;
    int opcode = pparams->pdf14_op;
    int mask_size = 0;
    uint mask_id = 0;
    int code;
    bool found_icc;
    int64_t hashcode = 0;
    cmm_profile_t *icc_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    int pdf14_needed = cdev->pdf14_needed;
    int trans_group_level = cdev->pdf14_trans_group_level;
    int smask_level = cdev->pdf14_smask_level;

    code = (((gx_device *) cdev)->procs.get_profile)((gx_device *) cdev,
                                                     &dev_profile);
    if (code < 0)
        return code;
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &icc_profile,
                          &render_cond);
    *pbuf++ = opcode;
    switch (opcode) {
        default:
            break;
        case PDF14_PUSH_DEVICE:
            trans_group_level = 0;
            cdev->pdf14_smask_level = 0;
            cdev->page_pdf14_needed = ((bool)0);
            do { memcpy(pbuf, &pparams->num_spot_colors, sizeof(pparams->num_spot_colors)); pbuf += sizeof(pparams->num_spot_colors); } while (0);
            do { memcpy(pbuf, &pparams->is_pattern, sizeof(pparams->is_pattern)); pbuf += sizeof(pparams->is_pattern); } while (0);





            if (icc_profile->data_cs == gsCIELAB || icc_profile->islab) {


                cdev->trans_dev_icc_hash = pparams->iccprofile->hashcode;
                found_icc =
                    clist_icc_searchtable(cdev, pparams->iccprofile->hashcode);
                if (!found_icc) {

                    clist_icc_addentry(cdev, pparams->iccprofile->hashcode,
                                       pparams->iccprofile);
                }
            }
            break;
        case PDF14_POP_DEVICE:
            pdf14_needed = ((bool)0);
            trans_group_level = 0;
            smask_level = 0;
            do { memcpy(pbuf, &pparams->is_pattern, sizeof(pparams->is_pattern)); pbuf += sizeof(pparams->is_pattern); } while (0);
            break;
        case PDF14_END_TRANS_GROUP:
            trans_group_level--;
            if (smask_level == 0 && trans_group_level == 0)
                pdf14_needed = cdev->page_pdf14_needed;
            break;
        case PDF14_BEGIN_TRANS_GROUP:
            pdf14_needed = ((bool)1);
            trans_group_level++;
            code = c_pdf14trans_write_ctm(&pbuf, pparams);
            if (code < 0)
                return code;
            *pbuf++ = (pparams->Isolated & 1) + ((pparams->Knockout & 1) << 1);
            *pbuf++ = pparams->blend_mode;
            *pbuf++ = pparams->group_color;
            do { memcpy(pbuf, &pparams->group_color_numcomps, sizeof(pparams->group_color_numcomps)); pbuf += sizeof(pparams->group_color_numcomps); } while (0);
            do { memcpy(pbuf, &pparams->opacity.alpha, sizeof(pparams->opacity.alpha)); pbuf += sizeof(pparams->opacity.alpha); } while (0);
            do { memcpy(pbuf, &pparams->shape.alpha, sizeof(pparams->shape.alpha)); pbuf += sizeof(pparams->shape.alpha); } while (0);
            do { memcpy(pbuf, &pparams->bbox, sizeof(pparams->bbox)); pbuf += sizeof(pparams->bbox); } while (0);
            mask_id = pparams->mask_id;
            do { memcpy(pbuf, &mask_id, sizeof(mask_id)); pbuf += sizeof(mask_id); } while (0);



            if (pparams->group_color == ICC) {

                hashcode = pparams->iccprofile->hashcode;
                found_icc = clist_icc_searchtable(cdev, hashcode);
                if (!found_icc) {

                    clist_icc_addentry(cdev, hashcode, pparams->iccprofile);
                    do { memcpy(pbuf, &hashcode, sizeof(hashcode)); pbuf += sizeof(hashcode); } while (0);
                } else {

                    do { memcpy(pbuf, &hashcode, sizeof(hashcode)); pbuf += sizeof(hashcode); } while (0);
                }
            } else {
                do { memcpy(pbuf, &hashcode, sizeof(hashcode)); pbuf += sizeof(hashcode); } while (0);
            }
            break;
        case PDF14_BEGIN_TRANS_MASK:
            pdf14_needed = ((bool)1);
            smask_level++;
            code = c_pdf14trans_write_ctm(&pbuf, pparams);
            if (code < 0)
                return code;
            do { memcpy(pbuf, &pparams->subtype, sizeof(pparams->subtype)); pbuf += sizeof(pparams->subtype); } while (0);
            *pbuf++ = pparams->group_color;
            do { memcpy(pbuf, &pparams->group_color_numcomps, sizeof(pparams->group_color_numcomps)); pbuf += sizeof(pparams->group_color_numcomps); } while (0);
            *pbuf++ = pparams->replacing;
            *pbuf++ = pparams->function_is_identity;
            *pbuf++ = pparams->Background_components;
            do { memcpy(pbuf, &pparams->bbox, sizeof(pparams->bbox)); pbuf += sizeof(pparams->bbox); } while (0);
            mask_id = pparams->mask_id;
            do { memcpy(pbuf, &mask_id, sizeof(mask_id)); pbuf += sizeof(mask_id); } while (0);
            if (pparams->Background_components) {
                const int l = sizeof(pparams->Background[0]) * pparams->Background_components;

                memcpy(pbuf, pparams->Background, l);
                pbuf += l;
                memcpy(pbuf, &pparams->GrayBackground, sizeof(pparams->GrayBackground));
                pbuf += sizeof(pparams->GrayBackground);
            }
            if (!pparams->function_is_identity)
                mask_size = sizeof(pparams->transfer_fn);



            if (pparams->group_color == ICC) {

                hashcode = pparams->iccprofile->hashcode;
                found_icc = clist_icc_searchtable(cdev, hashcode);
                if (!found_icc) {

                    clist_icc_addentry(cdev, hashcode, pparams->iccprofile);
                    do { memcpy(pbuf, &hashcode, sizeof(hashcode)); pbuf += sizeof(hashcode); } while (0);
                } else {

                    do { memcpy(pbuf, &hashcode, sizeof(hashcode)); pbuf += sizeof(hashcode); } while (0);
                }
            } else {
                do { memcpy(pbuf, &hashcode, sizeof(hashcode)); pbuf += sizeof(hashcode); } while (0);
            }
            break;
        case PDF14_END_TRANS_MASK:
            smask_level--;
            if (smask_level == 0 && trans_group_level == 0)
                pdf14_needed = cdev->page_pdf14_needed;
            break;
        case PDF14_SET_BLEND_PARAMS:
            if (pparams->blend_mode != BLEND_MODE_Normal || pparams->opacity.alpha != 1.0 ||
                pparams->shape.alpha != 1.0)
                pdf14_needed = ((bool)1);
            else if (smask_level == 0 && trans_group_level == 0)
                pdf14_needed = ((bool)0);
            if (smask_level == 0 && trans_group_level == 0)
                cdev->page_pdf14_needed = pdf14_needed;
            *pbuf++ = pparams->changed;
            if (pparams->changed & (1 << 0))
                *pbuf++ = pparams->blend_mode;
            if (pparams->changed & (1 << 1))
                *pbuf++ = pparams->text_knockout;
            if (pparams->changed & (1 << 3))
                do { memcpy(pbuf, &pparams->opacity.alpha, sizeof(pparams->opacity.alpha)); pbuf += sizeof(pparams->opacity.alpha); } while (0);
            if (pparams->changed & (1 << 2))
                do { memcpy(pbuf, &pparams->shape.alpha, sizeof(pparams->shape.alpha)); pbuf += sizeof(pparams->shape.alpha); } while (0);
            if (pparams->changed & (1 << 4))
                do { memcpy(pbuf, &pparams->overprint, sizeof(pparams->overprint)); pbuf += sizeof(pparams->overprint); } while (0);
            if (pparams->changed & (1 << 5))
                do { memcpy(pbuf, &pparams->overprint_mode, sizeof(pparams->overprint_mode)); pbuf += sizeof(pparams->overprint_mode); } while (0);
            if (pparams->changed & (1 << 6))
                do { memcpy(pbuf, &pparams->blendspot, sizeof(pparams->blendspot)); pbuf += sizeof(pparams->blendspot); } while (0);
            break;
        case PDF14_PUSH_TRANS_STATE:
            break;
        case PDF14_POP_TRANS_STATE:
            break;
        case PDF14_PUSH_SMASK_COLOR:
            return 0;
            break;
        case PDF14_POP_SMASK_COLOR:
            return 0;
            break;
    }


    need = (pbuf - buf) + mask_size;
    *psize = need;
    if (need > avail) {
        if (avail)
            return ((-15));
        else
            return (-15);
    }




    if ( need + 3 > ((( 4 + 1 + sizeof(float) * 6 + sizeof(((gs_pdf14trans_params_t *)0)->subtype) + sizeof(((gs_pdf14trans_params_t *)0)->group_color_numcomps) + 4 + sizeof(((gs_pdf14trans_params_t *)0)->bbox) + sizeof(((gs_pdf14trans_params_t *)0)->mask_id) + sizeof(((gs_pdf14trans_params_t *)0)->Background) + sizeof(float)*4 + sizeof(((gs_pdf14trans_params_t *)0)->GrayBackground) + sizeof(int64_t)) + sizeof(((gs_pdf14trans_params_t *)0)->transfer_fn))) )
        return ((-15));


    memcpy(data, buf, need - mask_size);
    if (mask_size)
        memcpy(data + need - mask_size, pparams->transfer_fn, mask_size);
    do { } while (0);


    cdev->pdf14_needed = pdf14_needed;
    cdev->pdf14_trans_group_level = trans_group_level;
    cdev->pdf14_smask_level = smask_level;
    return 0;
}




static int gs_create_pdf14trans( gs_composite_t ** ppct,
                const gs_pdf14trans_params_t * pparams,
                gs_memory_t * mem );
# 5916 "./base/gdevp14.c"
static int
c_pdf14trans_read(gs_composite_t * * ppct, const byte * data,
                                uint size, gs_memory_t * mem )
{
    gs_pdf14trans_params_t params = {0};
    const byte * start = data;
    int used, code = 0;

    if (size < 1)
        return ((-15));


    params.pdf14_op = *data++;
    do { } while (0);

    memset(&params.ctm, 0, sizeof(params.ctm));
    switch (params.pdf14_op) {
        default:
            break;
        case PDF14_PUSH_DEVICE:
            do { memcpy(&params.num_spot_colors, data, sizeof(params.num_spot_colors)); data += sizeof(params.num_spot_colors); } while (0);
            do { memcpy(&params.is_pattern, data, sizeof(params.is_pattern)); data += sizeof(params.is_pattern); } while (0);
            break;
        case PDF14_ABORT_DEVICE:
            break;
        case PDF14_POP_DEVICE:
            do { memcpy(&params.is_pattern, data, sizeof(params.is_pattern)); data += sizeof(params.is_pattern); } while (0);
            break;
        case PDF14_END_TRANS_GROUP:
            code += 0;
            break;
        case PDF14_PUSH_TRANS_STATE:
            break;
        case PDF14_POP_TRANS_STATE:
            break;
        case PDF14_BEGIN_TRANS_GROUP:




            data = cmd_read_matrix(&params.ctm, data);
            params.Isolated = (*data) & 1;
            params.Knockout = (*data++ >> 1) & 1;
            params.blend_mode = *data++;
            params.group_color = *data++;
            do { memcpy(&params.group_color_numcomps, data, sizeof(params.group_color_numcomps)); data += sizeof(params.group_color_numcomps); } while (0);
            do { memcpy(&params.opacity.alpha, data, sizeof(params.opacity.alpha)); data += sizeof(params.opacity.alpha); } while (0);
            do { memcpy(&params.shape.alpha, data, sizeof(params.shape.alpha)); data += sizeof(params.shape.alpha); } while (0);
            do { memcpy(&params.bbox, data, sizeof(params.bbox)); data += sizeof(params.bbox); } while (0);
            do { memcpy(&params.mask_id, data, sizeof(params.mask_id)); data += sizeof(params.mask_id); } while (0);
            do { memcpy(&params.icc_hash, data, sizeof(params.icc_hash)); data += sizeof(params.icc_hash); } while (0);
            break;
        case PDF14_BEGIN_TRANS_MASK:
# 5981 "./base/gdevp14.c"
            data = cmd_read_matrix(&params.ctm, data);
            do { memcpy(&params.subtype, data, sizeof(params.subtype)); data += sizeof(params.subtype); } while (0);
            params.group_color = *data++;
            do { memcpy(&params.group_color_numcomps, data, sizeof(params.group_color_numcomps)); data += sizeof(params.group_color_numcomps); } while (0);
            params.replacing = *data++;
            params.function_is_identity = *data++;
            params.Background_components = *data++;
            do { memcpy(&params.bbox, data, sizeof(params.bbox)); data += sizeof(params.bbox); } while (0);
            do { memcpy(&params.mask_id, data, sizeof(params.mask_id)); data += sizeof(params.mask_id); } while (0);
            if (params.Background_components) {
                const int l = sizeof(params.Background[0]) * params.Background_components;

                memcpy(params.Background, data, l);
                data += l;
                memcpy(&params.GrayBackground, data, sizeof(params.GrayBackground));
                data += sizeof(params.GrayBackground);
            }
            do { memcpy(&params.icc_hash, data, sizeof(params.icc_hash)); data += sizeof(params.icc_hash); } while (0);
            if (params.function_is_identity) {
                int i;

                for (i = 0; i < 256; i++) {
                    params.transfer_fn[i] = (byte)floor(i *
                        (255.0 / (256 - 1)) + 0.5);
                }
            } else {
                do { memcpy(&params.transfer_fn, data, sizeof(params.transfer_fn)); data += sizeof(params.transfer_fn); } while (0);
            }
            break;
        case PDF14_END_TRANS_MASK:
            break;
        case PDF14_PUSH_SMASK_COLOR:
            return 0;
            break;
        case PDF14_POP_SMASK_COLOR:
            return 0;
            break;
        case PDF14_SET_BLEND_PARAMS:
            params.changed = *data++;
            if (params.changed & (1 << 0))
                params.blend_mode = *data++;
            if (params.changed & (1 << 1))
                params.text_knockout = *data++;
            if (params.changed & (1 << 3))
                do { memcpy(&params.opacity.alpha, data, sizeof(params.opacity.alpha)); data += sizeof(params.opacity.alpha); } while (0);
            if (params.changed & (1 << 2))
                do { memcpy(&params.shape.alpha, data, sizeof(params.shape.alpha)); data += sizeof(params.shape.alpha); } while (0);
            if (params.changed & (1 << 4))
                do { memcpy(&params.overprint, data, sizeof(params.overprint)); data += sizeof(params.overprint); } while (0);
            if (params.changed & (1 << 5))
                do { memcpy(&params.overprint_mode, data, sizeof(params.overprint_mode)); data += sizeof(params.overprint_mode); } while (0);
            if (params.changed & (1 << 6))
                do { memcpy(&params.blendspot, data, sizeof(params.blendspot)); data += sizeof(params.blendspot); } while (0);
            break;
    }
    code = gs_create_pdf14trans(ppct, &params, mem);
    if (code < 0)
        return code;
    used = data - start;
    do { } while (0);


    if ( used + 3 > (( 4 + 1 + sizeof(float) * 6 + sizeof(((gs_pdf14trans_params_t *)0)->subtype) + sizeof(((gs_pdf14trans_params_t *)0)->group_color_numcomps) + 4 + sizeof(((gs_pdf14trans_params_t *)0)->bbox) + sizeof(((gs_pdf14trans_params_t *)0)->mask_id) + sizeof(((gs_pdf14trans_params_t *)0)->Background) + sizeof(float)*4 + sizeof(((gs_pdf14trans_params_t *)0)->GrayBackground) + sizeof(int64_t)) + sizeof(((gs_pdf14trans_params_t *)0)->transfer_fn)) )
        return ((-15));
    else
        return used;
}




static int
c_pdf14trans_adjust_ctm(gs_composite_t * pct0, int x0, int y0, gs_imager_state *pis)
{
    gs_pdf14trans_t *pct = (gs_pdf14trans_t *)pct0;
    gs_matrix mat = pct->params.ctm;

    do { } while (0);


    mat.tx -= x0;
    mat.ty -= y0;
    gs_imager_setmatrix(pis, &mat);
    return 0;
}







static int
c_pdf14trans_create_default_compositor(const gs_composite_t * pct,
    gx_device ** pp14dev, gx_device * tdev, gs_imager_state * pis,
    gs_memory_t * mem)
{
    const gs_pdf14trans_t * pdf14pct = (const gs_pdf14trans_t *) pct;
    gx_device * p14dev = ((void*)0);
    int code = 0;






    switch (pdf14pct->params.pdf14_op) {
        case PDF14_PUSH_DEVICE:
            code = gs_pdf14_device_push(mem, pis, &p14dev, tdev, pdf14pct);
            *pp14dev = p14dev;
            break;
        default:
            *pp14dev = tdev;
            break;
    }
    return code;
}




static int
find_opening_op(int opening_op, gs_composite_t **ppcte, int return_code)
{

    gs_composite_t *pcte = *ppcte;

    for (;;) {
        if (pcte->type->comp_id == 0x03) {
            gs_pdf14trans_t *pct = (gs_pdf14trans_t *)pcte;
            int op = pct->params.pdf14_op;

            *ppcte = pcte;
            if (op == opening_op)
                return return_code;
            if (op != PDF14_SET_BLEND_PARAMS) {
                if (opening_op == PDF14_BEGIN_TRANS_MASK)
                    return 0;
                if (opening_op == PDF14_BEGIN_TRANS_GROUP) {
                    if (op != PDF14_BEGIN_TRANS_MASK && op != PDF14_END_TRANS_MASK)
                        return 0;
                }
                if (opening_op == PDF14_PUSH_DEVICE) {
                    if (op != PDF14_BEGIN_TRANS_MASK && op != PDF14_END_TRANS_MASK &&
                        op != PDF14_BEGIN_TRANS_GROUP && op != PDF14_END_TRANS_GROUP)
                        return 0;
                }
            }
        } else
            return 0;
        pcte = pcte->prev;
        if (pcte == ((void*)0))
            return 2;
    }
}




static int
find_same_op(const gs_composite_t *composite_action, int my_op, gs_composite_t **ppcte)
{
    const gs_pdf14trans_t *pct0 = (gs_pdf14trans_t *)composite_action;
    gs_composite_t *pct = *ppcte;

    for (;;) {
        if (pct->type->comp_id == 0x03) {
            gs_pdf14trans_t *pct_pdf14 = (gs_pdf14trans_t *)pct;

            *ppcte = pct;
            if (pct_pdf14->params.pdf14_op != my_op)
                return 0;
            if (pct_pdf14->params.csel == pct0->params.csel) {


                if ((pct_pdf14->params.changed & pct0->params.changed) ==
                    pct_pdf14->params.changed) {
                    return 4;
                } else {
                    return 0;
                }
            }
        } else
            return 0;
        pct = pct->prev;
        if (pct == ((void*)0))
            return 0;
    }
}




static int
c_pdf14trans_is_closing(const gs_composite_t * composite_action, gs_composite_t ** ppcte,
                        gx_device *dev)
{
    gs_pdf14trans_t *pct0 = (gs_pdf14trans_t *)composite_action;
    int op0 = pct0->params.pdf14_op;

    switch (op0) {
        default: return ((-28));
        case PDF14_PUSH_DEVICE:
            return 0;
        case PDF14_ABORT_DEVICE:
            return 0;
        case PDF14_POP_DEVICE:
            if (*ppcte == ((void*)0))
                return 0;
            else {
                int code = find_opening_op(PDF14_PUSH_DEVICE, ppcte, 1);

                if (code == 1)
                    return 5;
                return code;
            }
        case PDF14_BEGIN_TRANS_GROUP:
            return 0;
        case PDF14_END_TRANS_GROUP:
            if (*ppcte == ((void*)0))
                return 2;
            return find_opening_op(PDF14_BEGIN_TRANS_GROUP, ppcte, 6);
        case PDF14_BEGIN_TRANS_MASK:
            return 0;
        case PDF14_PUSH_TRANS_STATE:
            return 0;
        case PDF14_POP_TRANS_STATE:
            return 0;
        case PDF14_PUSH_SMASK_COLOR:
            return 0;
            break;
        case PDF14_POP_SMASK_COLOR:
            return 0;
            break;
        case PDF14_END_TRANS_MASK:
            if (*ppcte == ((void*)0))
                return 2;
            return find_opening_op(PDF14_BEGIN_TRANS_MASK, ppcte, 6);
        case PDF14_SET_BLEND_PARAMS:
            if (*ppcte == ((void*)0))
                return 0;

            return find_same_op(composite_action, PDF14_SET_BLEND_PARAMS, ppcte);
    }
}




static bool
c_pdf14trans_is_friendly(const gs_composite_t * composite_action, byte cmd0, byte cmd1)
{
    gs_pdf14trans_t *pct0 = (gs_pdf14trans_t *)composite_action;
    int op0 = pct0->params.pdf14_op;

    if (op0 == PDF14_PUSH_DEVICE || op0 == PDF14_END_TRANS_GROUP) {



        if (cmd0 == cmd_opv_extend && (cmd1 == cmd_opv_ext_put_halftone ||
                                       cmd1 == cmd_opv_ext_put_ht_seg))
            return ((bool)1);
        if (cmd0 == cmd_opv_set_misc && (cmd1 >> 6) == ((2 << 6) >> 6))
            return ((bool)1);
    }
    return ((bool)0);
}

static int c_pdf14trans_create_default_compositor(const gs_composite_t *pcte, gx_device **pcdev, gx_device *dev, gs_imager_state *pis, gs_memory_t *mem);
static bool c_pdf14trans_equal(const gs_composite_t *pcte, const gs_composite_t *pcte2);
static int c_pdf14trans_write(const gs_composite_t *pcte, byte *data, uint *psize, gx_device_clist_writer *cdev);
static int c_pdf14trans_read(gs_composite_t **ppcte, const byte *data, uint size, gs_memory_t *mem);
static int c_pdf14trans_adjust_ctm(gs_composite_t *pcte, int x0, int y0, gs_imager_state *pis);
static int c_pdf14trans_is_closing(const gs_composite_t *this, gs_composite_t **pcte, gx_device *dev);
static bool c_pdf14trans_is_friendly(const gs_composite_t *this, byte cmd0, byte cmd1);
static int c_pdf14trans_clist_write_update(const gs_composite_t * pcte, gx_device * dev, gx_device ** pcdev, gs_imager_state * pis, gs_memory_t * mem);
static int c_pdf14trans_clist_read_update(gs_composite_t * pcte, gx_device * cdev, gx_device * tdev, gs_imager_state * pis, gs_memory_t * mem);
static int c_pdf14trans_get_cropping(const gs_composite_t * pcte, int *ry, int *rheight, int cropping_min, int cropping_max);
# 6268 "./base/gdevp14.c"
const gs_composite_type_t gs_composite_pdf14trans_type = {
    0x03,
    {
        c_pdf14trans_create_default_compositor,
        c_pdf14trans_equal,
        c_pdf14trans_write,
        c_pdf14trans_read,
        c_pdf14trans_adjust_ctm,
        c_pdf14trans_is_closing,
        c_pdf14trans_is_friendly,

        c_pdf14trans_clist_write_update,
        c_pdf14trans_clist_read_update,
        c_pdf14trans_get_cropping
    }
};

const gs_composite_type_t gs_composite_pdf14trans_no_clist_writer_type = {
    0x03,
    {
        c_pdf14trans_create_default_compositor,
        c_pdf14trans_equal,
        c_pdf14trans_write,
        c_pdf14trans_read,
        c_pdf14trans_adjust_ctm,
        c_pdf14trans_is_closing,
        c_pdf14trans_is_friendly,

        gx_default_composite_clist_write_update,
        c_pdf14trans_clist_read_update,
        c_pdf14trans_get_cropping
    }
};




int
gs_is_pdf14trans_compositor(const gs_composite_t * pct)
{
    return (pct->type == &gs_composite_pdf14trans_type
                || pct->type == &gs_composite_pdf14trans_no_clist_writer_type);
}




static int
gs_create_pdf14trans(
    gs_composite_t ** ppct,
    const gs_pdf14trans_params_t * pparams,
    gs_memory_t * mem )
{
    gs_pdf14trans_t * pct;

    pct = (gs_pdf14trans_t *)(*(mem)->procs.alloc_struct)(mem, &st_pdf14trans, "gs_create_pdf14trans");

    if (pct == ((void*)0))
        return ((-25));
    pct->type = &gs_composite_pdf14trans_type;
    pct->id = gs_next_ids(mem, 1);
    pct->params = *pparams;
    pct->idle = ((bool)0);
    *ppct = (gs_composite_t *)pct;
    return 0;
}




int
send_pdf14trans(gs_imager_state * pis, gx_device * dev,
    gx_device * * pcdev, gs_pdf14trans_params_t * pparams, gs_memory_t * mem)
{
    gs_composite_t * pct = ((void*)0);
    int code;

    pparams->ctm = (*(const gs_matrix *)&(pis)->ctm);
    code = gs_create_pdf14trans(&pct, pparams, mem);
    if (code < 0)
        return code;
    code = ((dev)->procs.create_compositor) (dev, pcdev, pct, pis, mem, ((void*)0));

    ((pis->memory)->procs.free_object(pis->memory, pct, "send_pdf14trans"));

    return code;
}
# 6453 "./base/gdevp14.c"
static int pdf14_clist_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
static int pdf14_clist_forward_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
static int pdf14_clist_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
static int pdf14_clist_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
static int pdf14_clist_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);
static int pdf14_clist_begin_image(gx_device *dev, const gs_imager_state *pis, const gs_image_t *pim, gs_image_format_t format, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
static int pdf14_clist_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);

static const gx_device_procs pdf14_clist_Gray_procs =
        { ((void*)0), gx_forward_get_initial_matrix, gx_forward_sync_output, gx_forward_output_page, gx_forward_close_device, pdf14_encode_color, pdf14_decode_color, gx_forward_fill_rectangle, gx_forward_tile_rectangle, gx_forward_copy_mono, gx_forward_copy_color, ((void*)0) , gx_forward_get_bits, gx_forward_get_params, pdf14_put_params, pdf14_encode_color, gx_forward_get_xfont_procs, gx_forward_get_xfont_device, ((void*)0), gx_forward_get_page_device, ((void*)0), gx_forward_copy_alpha, gx_forward_get_band, gx_forward_copy_rop, pdf14_clist_fill_path, pdf14_clist_stroke_path, gx_forward_fill_mask, gx_forward_fill_trapezoid, gx_forward_fill_parallelogram, gx_forward_fill_triangle, gx_forward_draw_thin_line, pdf14_clist_begin_image, gx_default_image_data, gx_default_end_image, gx_forward_strip_tile_rectangle, gx_forward_strip_copy_rop, gx_forward_get_clipping_box, pdf14_clist_begin_typed_image, gx_forward_get_bits_rectangle, ((void*)0), pdf14_clist_create_compositor, gx_forward_get_hardware_params, pdf14_clist_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, ((void*)0), gx_default_DevGray_get_color_mapping_procs, gx_default_DevGray_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), gx_forward_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, gx_forward_ret_devn_params, gx_forward_fillpage, pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_copy_alpha_hl_color};




static const gx_device_procs pdf14_clist_RGB_procs =
        { ((void*)0), gx_forward_get_initial_matrix, gx_forward_sync_output, gx_forward_output_page, gx_forward_close_device, pdf14_encode_color, pdf14_decode_color, gx_forward_fill_rectangle, gx_forward_tile_rectangle, gx_forward_copy_mono, gx_forward_copy_color, ((void*)0) , gx_forward_get_bits, gx_forward_get_params, pdf14_put_params, pdf14_encode_color, gx_forward_get_xfont_procs, gx_forward_get_xfont_device, ((void*)0), gx_forward_get_page_device, ((void*)0), gx_forward_copy_alpha, gx_forward_get_band, gx_forward_copy_rop, pdf14_clist_fill_path, pdf14_clist_stroke_path, gx_forward_fill_mask, gx_forward_fill_trapezoid, gx_forward_fill_parallelogram, gx_forward_fill_triangle, gx_forward_draw_thin_line, pdf14_clist_begin_image, gx_default_image_data, gx_default_end_image, gx_forward_strip_tile_rectangle, gx_forward_strip_copy_rop, gx_forward_get_clipping_box, pdf14_clist_begin_typed_image, gx_forward_get_bits_rectangle, ((void*)0), pdf14_clist_create_compositor, gx_forward_get_hardware_params, pdf14_clist_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, ((void*)0), gx_default_DevRGB_get_color_mapping_procs, gx_default_DevRGB_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), gx_forward_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, gx_forward_ret_devn_params, gx_forward_fillpage, pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_copy_alpha_hl_color};




static const gx_device_procs pdf14_clist_CMYK_procs =
        { ((void*)0), gx_forward_get_initial_matrix, gx_forward_sync_output, gx_forward_output_page, gx_forward_close_device, pdf14_encode_color, pdf14_decode_color, gx_forward_fill_rectangle, gx_forward_tile_rectangle, gx_forward_copy_mono, gx_forward_copy_color, ((void*)0) , gx_forward_get_bits, gx_forward_get_params, pdf14_put_params, pdf14_encode_color, gx_forward_get_xfont_procs, gx_forward_get_xfont_device, ((void*)0), gx_forward_get_page_device, ((void*)0), gx_forward_copy_alpha, gx_forward_get_band, gx_forward_copy_rop, pdf14_clist_fill_path, pdf14_clist_stroke_path, gx_forward_fill_mask, gx_forward_fill_trapezoid, gx_forward_fill_parallelogram, gx_forward_fill_triangle, gx_forward_draw_thin_line, pdf14_clist_begin_image, gx_default_image_data, gx_default_end_image, gx_forward_strip_tile_rectangle, gx_forward_strip_copy_rop, gx_forward_get_clipping_box, pdf14_clist_begin_typed_image, gx_forward_get_bits_rectangle, ((void*)0), pdf14_clist_create_compositor, gx_forward_get_hardware_params, pdf14_clist_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, ((void*)0), gx_default_DevCMYK_get_color_mapping_procs, gx_default_DevCMYK_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), gx_forward_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, gx_forward_ret_devn_params, gx_forward_fillpage, pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_copy_alpha_hl_color};
# 6485 "./base/gdevp14.c"
static const gx_device_procs pdf14_clist_CMYKspot_procs =
        { ((void*)0), gx_forward_get_initial_matrix, gx_forward_sync_output, gx_forward_output_page, gx_forward_close_device, pdf14_encode_color, pdf14_decode_color, gx_forward_fill_rectangle, gx_forward_tile_rectangle, gx_forward_copy_mono, gx_forward_copy_color, ((void*)0) , gx_forward_get_bits, gx_forward_get_params, pdf14_put_params, pdf14_encode_color, gx_forward_get_xfont_procs, gx_forward_get_xfont_device, ((void*)0), gx_forward_get_page_device, ((void*)0), gx_forward_copy_alpha, gx_forward_get_band, gx_forward_copy_rop, pdf14_clist_fill_path, pdf14_clist_stroke_path, gx_forward_fill_mask, gx_forward_fill_trapezoid, gx_forward_fill_parallelogram, gx_forward_fill_triangle, gx_forward_draw_thin_line, pdf14_clist_begin_image, gx_default_image_data, gx_default_end_image, gx_forward_strip_tile_rectangle, gx_forward_strip_copy_rop, gx_forward_get_clipping_box, pdf14_clist_begin_typed_image, gx_forward_get_bits_rectangle, ((void*)0), pdf14_clist_create_compositor, gx_forward_get_hardware_params, pdf14_clist_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, ((void*)0), pdf14_cmykspot_get_color_mapping_procs, pdf14_cmykspot_get_color_comp_index, pdf14_encode_color, pdf14_decode_color, ((void*)0), gx_forward_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, gx_forward_ret_devn_params, gx_forward_fillpage, pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_copy_alpha_hl_color};





static const gx_device_procs pdf14_clist_custom_procs =
        { ((void*)0), gx_forward_get_initial_matrix, gx_forward_sync_output, gx_forward_output_page, gx_forward_close_device, gx_forward_encode_color, gx_forward_decode_color, gx_forward_fill_rectangle, gx_forward_tile_rectangle, gx_forward_copy_mono, gx_forward_copy_color, ((void*)0) , gx_forward_get_bits, gx_forward_get_params, pdf14_put_params, gx_forward_encode_color, gx_forward_get_xfont_procs, gx_forward_get_xfont_device, ((void*)0), gx_forward_get_page_device, ((void*)0), gx_forward_copy_alpha, gx_forward_get_band, gx_forward_copy_rop, pdf14_clist_fill_path, pdf14_clist_stroke_path, gx_forward_fill_mask, gx_forward_fill_trapezoid, gx_forward_fill_parallelogram, gx_forward_fill_triangle, gx_forward_draw_thin_line, pdf14_clist_begin_image, gx_default_image_data, gx_default_end_image, gx_forward_strip_tile_rectangle, gx_forward_strip_copy_rop, gx_forward_get_clipping_box, pdf14_clist_begin_typed_image, gx_forward_get_bits_rectangle, ((void*)0), pdf14_clist_create_compositor, gx_forward_get_hardware_params, pdf14_clist_text_begin, ((void*)0), pdf14_begin_transparency_group, pdf14_end_transparency_group, pdf14_begin_transparency_mask, pdf14_end_transparency_mask, ((void*)0), gx_forward_get_color_mapping_procs, gx_forward_get_color_comp_index, gx_forward_encode_color, gx_forward_decode_color, ((void*)0), gx_forward_fill_rectangle_hl_color, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_update_spot_equivalent_colors, gx_forward_ret_devn_params, gx_forward_fillpage, pdf14_push_transparency_state, pdf14_pop_transparency_state, ((void*)0), pdf14_dev_spec_op, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_forward_copy_alpha_hl_color};




const pdf14_clist_device pdf14_clist_Gray_device = {
    sizeof(pdf14_clist_device), &pdf14_clist_Gray_procs, "pdf14clistgray", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0, {3 , 3 , ( (3) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 8 , ((3) == 3 ? 0xff : (3) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (3) == 1 ? "DeviceGray" : ((3) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },


    { 0 },
    ((void*)0),
    { 0 },
    &gray_pdf14_procs,
    &gray_blending_procs
};

const pdf14_clist_device pdf14_clist_RGB_device = {
    sizeof(pdf14_clist_device), &pdf14_clist_RGB_procs, "pdf14clistRGB", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0, {3 , 3 , ( (3) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 24 , ((3) == 3 ? 0xff : (3) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (3) == 1 ? "DeviceGray" : ((3) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },


    { 0 },
    ((void*)0),
    { 0 },
    &rgb_pdf14_procs,
    &rgb_blending_procs
};

const pdf14_clist_device pdf14_clist_CMYK_device = {
    sizeof(pdf14_clist_device), &pdf14_clist_CMYK_procs, "pdf14clistcmyk", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0, {( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ) , ( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , ((32) == 1 ? 1 : ((32) + 7) & ~7) , ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? 0xff : (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? 0 : (1 << ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) - 1 ) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : (1 << ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? (32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) : ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : ((32) - ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) / ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? (1) : (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) ) )) - 1 ) , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? 0 : (1 << ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) - 1 ) + 1 , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : (1 << ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? (32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) : ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? 0 : ((32) - ((32) - ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) * ((32) / (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 ))))) / ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? (1) : (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) - 1) ) )) - 1 ) + 1 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 1 ? "DeviceGray" : ((( (32) <= 1 ? 1 : ((32) % 3 == 0 || (32) == 4 || (32) == 8 ) ? 3 : 4 )) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },



    { 0 },
    ((void*)0),
    { 0 },
    &cmyk_pdf14_procs,
    &cmyk_blending_procs
};

const pdf14_clist_device pdf14_clist_CMYKspot_device = {
    sizeof(pdf14_device), &pdf14_clist_CMYKspot_procs, "pdf14clistcmykspot", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0,
    {(8 * 8) , (8 * 8) , ( ((8 * 8)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 64 , (((8 * 8)) == 3 ? 0xff : ((8 * 8)) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((8 * 8)) == 1 ? "DeviceGray" : (((8 * 8)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 },
    { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 },
    {0, 0}, {0, 0, 0, 0},
    0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },
    { 0 },
    ((void*)0),

    { 8,
      DeviceCMYKComponents,
      4,
      0,
      -1,
      {0},
      0,
      {0, 1, 2, 3, 4, 5, 6, 7 }
    },
    &cmykspot_pdf14_procs,
    &cmyk_blending_procs
};

const pdf14_clist_device pdf14_clist_custom_device = {
    sizeof(pdf14_device), &pdf14_clist_CMYKspot_procs, "pdf14clistcustom", 0 , &st_pdf14_device, 0 , 0 , { 0 } , 0 , 0 , 0,
    {(8 * 8) , (8 * 8) , ( ((8 * 8)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 64 , (((8 * 8)) == 3 ? 0xff : ((8 * 8)) - 1) , 255 , 255 , 256 , 256 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((8 * 8)) == 1 ? "DeviceGray" : (((8 * 8)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 },
    { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)(8.5 * 72), (int)(11 * 72), 0 , 0 , 0 , 0 , { (float)(((((int)(8.5 * 72)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)(11 * 72)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 },
    {0, 0}, {0, 0, 0, 0},
    0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },
    { 0 },
    ((void*)0),

    { 8,
      DeviceCMYKComponents,
      4,
      0,
      -1,
      {0},
      0,
      {0, 1, 2, 3, 4, 5, 6, 7 }
    },
    &custom_pdf14_procs,
    &custom_blending_procs
};







static int
get_pdf14_clist_device_proto(gx_device * dev, pdf14_clist_device ** pdevproto,
        pdf14_clist_device * ptempdevproto, gs_imager_state * pis,
        const gs_pdf14trans_t * pdf14pct)
{
    pdf14_default_colorspace_t dev_cs =
                pdf14_determine_default_blend_cs(dev);

    switch (dev_cs) {
        case PDF14_DeviceGray:
            *pdevproto = (pdf14_clist_device *)&pdf14_clist_Gray_device;
# 6601 "./base/gdevp14.c"
            *ptempdevproto = **pdevproto;
            ptempdevproto->color_info.max_components = 1;
            ptempdevproto->color_info.num_components =
                                    ptempdevproto->color_info.max_components;
            ptempdevproto->color_info.max_gray = 255;
            ptempdevproto->color_info.gray_index = 0;
            ptempdevproto->color_info.dither_grays = 256;
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceRGB:
            *pdevproto = (pdf14_clist_device *)&pdf14_clist_RGB_device;
            *ptempdevproto = **pdevproto;
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceCMYK:
            *pdevproto = (pdf14_clist_device *)&pdf14_clist_CMYK_device;
            *ptempdevproto = **pdevproto;
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceCMYKspot:
            *pdevproto = (pdf14_clist_device *)&pdf14_clist_CMYKspot_device;
            *ptempdevproto = **pdevproto;





            if (pdf14pct->params.num_spot_colors >= 0) {
                ptempdevproto->devn_params.page_spot_colors =
                    pdf14pct->params.num_spot_colors;
                ptempdevproto->color_info.num_components =
                    ptempdevproto->devn_params.num_std_colorant_names +
                    pdf14pct->params.num_spot_colors;
                if (ptempdevproto->color_info.num_components >
                        ptempdevproto->color_info.max_components)
                    ptempdevproto->color_info.num_components =
                        ptempdevproto->color_info.max_components;
                ptempdevproto->color_info.depth =
                                    ptempdevproto->color_info.num_components * 8;
            }
            *pdevproto = ptempdevproto;
            break;
        case PDF14_DeviceCustom:





            *ptempdevproto = pdf14_clist_custom_device;
            ptempdevproto->color_info = dev->color_info;

            ptempdevproto->color_info.depth =
                ptempdevproto->color_info.num_components * 8;
            ptempdevproto->color_info.max_gray = 255;
            ptempdevproto->color_info.max_color = 255;
            ptempdevproto->color_info.dither_grays = 256;
            ptempdevproto->color_info.dither_colors = 256;
            *pdevproto = ptempdevproto;
            break;
        default:
            return ((-15));
    }
    return 0;
}

static int
pdf14_create_clist_device(gs_memory_t *mem, gs_imager_state * pis,
                                gx_device ** ppdev, gx_device * target,
                                const gs_pdf14trans_t * pdf14pct)
{
    pdf14_clist_device * dev_proto;
    pdf14_clist_device * pdev, temp_dev_proto;
    int code;
    bool has_tags = target->graphics_type_tag & GS_DEVICE_ENCODES_TAGS;
    cmm_profile_t *target_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;
    int k;

    code = ((target)->procs.get_profile)(target, &dev_profile);
    if (code < 0)
        return code;
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &target_profile,
                          &render_cond);
    do { } while (0);
    code = get_pdf14_clist_device_proto(target, &dev_proto,
                                 &temp_dev_proto, pis, pdf14pct);
    if (code < 0)
        return code;
    code = gs_copydevice((gx_device **) &pdev,
                         (const gx_device *) dev_proto, mem);
    if (code < 0)
        return code;

    if (pdev->color_info.num_components > target->color_info.num_components)
        pdev->color_info.num_components = target->color_info.num_components;
    if (pdev->color_info.max_components > target->color_info.max_components)
        pdev->color_info.max_components = target->color_info.max_components;
    pdev->color_info.depth = pdev->color_info.num_components * 8;
    pdev->pad = target->pad;
    pdev->log2_align_mod = target->log2_align_mod;
    pdev->is_planar = target->is_planar;






    if (has_tags) {
        pdev->procs.encode_color = pdf14_encode_color_tag;
        pdev->color_info.depth += 8;
    }
    check_device_separable((gx_device *)pdev);
    gx_device_fill_in_procs((gx_device *)pdev);
    gs_pdf14_device_copy_params((gx_device *)pdev, target);
    gx_device_set_target((gx_device_forward *)pdev, target);

    for (k = 0; k < pdev->color_info.num_components; k++) {
        pdev->color_info.comp_bits[k] = 8;
        pdev->color_info.comp_shift[k] = (pdev->color_info.num_components - 1 - k) * 8;
    }
    code = (((gx_device *) pdev)->procs.open_device) ((gx_device *) pdev);
    pdev->pclist_device = target;



    if (target_profile->data_cs == gsCIELAB || target_profile->islab) {
        do { if ((pdev->icc_struct->device_profile[0]) != (pis->icc_manager->default_rgb)) { do { if (pis->icc_manager->default_rgb) do { (pis->icc_manager->default_rgb)->rc.ref_count++; do { } while (0); } while (0); } while (0); do { if (pdev->icc_struct->device_profile[0]) { do { do { } while (0); (pdev->icc_struct->device_profile[0])->rc.ref_count += (-1); } while (0); if (!(pdev->icc_struct->device_profile[0])->rc.ref_count) { do { do { } while (0); (pdev->icc_struct->device_profile[0])->rc.free((pdev->icc_struct->device_profile[0])->rc.memory, (void *)(pdev->icc_struct->device_profile[0]), "pdf14_create_clist_device"); } while (0); do { } while (0); } else do { } while (0); } } while (0); (pdev->icc_struct->device_profile[0]) = (pis->icc_manager->default_rgb); } } while (0);

    }
    pdev->my_encode_color = pdev->procs.encode_color;
    pdev->my_decode_color = pdev->procs.decode_color;
    pdev->my_get_color_mapping_procs = pdev->procs.get_color_mapping_procs;
    pdev->my_get_color_comp_index = pdev->procs.get_color_comp_index;
    pdev->color_info.separable_and_linear =
        target->color_info.separable_and_linear;
    *ppdev = (gx_device *) pdev;
    return code;
}







static int
pdf14_disable_clist_device(gs_memory_t *mem, gs_imager_state * pis,
                                gx_device * dev)
{
    gx_device_forward * pdev = (gx_device_forward *)dev;
    gx_device * target = pdev->target;

    do { } while (0);






    dev->color_info = target->color_info;
    pdf14_forward_device_procs(dev);
    ((dev)->procs.create_compositor = (pdf14_clist_forward_create_compositor));
    return 0;
}
# 6774 "./base/gdevp14.c"
static int
pdf14_recreate_clist_device(gs_memory_t *mem, gs_imager_state * pis,
                gx_device * dev, const gs_pdf14trans_t * pdf14pct)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    gx_device * target = pdev->target;
    pdf14_clist_device * dev_proto;
    pdf14_clist_device temp_dev_proto;
    int code;

    do { } while (0);




    code = get_pdf14_clist_device_proto(target, &dev_proto,
                                 &temp_dev_proto, pis, pdf14pct);
    if (code < 0)
        return code;
    pdev->color_info = dev_proto->color_info;
    pdev->procs = dev_proto->procs;
    pdev->pad = target->pad;
    pdev->log2_align_mod = target->log2_align_mod;
    pdev->is_planar = target->is_planar;
    gx_device_fill_in_procs(dev);
    check_device_separable((gx_device *)pdev);
    return code;
}
# 6810 "./base/gdevp14.c"
typedef struct keyname_link_list_s {
        struct keyname_link_list_s * next;
        char * key_name;
    } keyname_link_list_t;






static const gc_ptr_element_t keyname_link_list_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((keyname_link_list_t *)0)->next - (char *)((keyname_link_list_t *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((keyname_link_list_t *)0)->key_name - (char *)((keyname_link_list_t *)0) )) } }; static const gc_struct_data_t keyname_link_list_reloc_ptrs = { (sizeof(keyname_link_list_enum_ptrs) / sizeof((keyname_link_list_enum_ptrs)[0])), 0, 0, keyname_link_list_enum_ptrs }; static const gs_memory_struct_type_t st_keyname_link_list = { sizeof(keyname_link_list_t), "keyname_link_list", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &keyname_link_list_reloc_ptrs };




static int
free_temp_keyname_list(gs_memory_t * mem, keyname_link_list_t * plist)
{
    keyname_link_list_t * pthis_elem;

    while (plist != ((void*)0)) {
        pthis_elem = plist;
        plist = plist->next;
        ((mem)->procs.free_object(mem, (byte *)pthis_elem, "free_temp_keyname_list"));
    }
    return 0;
}
# 6851 "./base/gdevp14.c"
static int
get_param_compressed_color_list_elem(pdf14_clist_device * pdev,
        gs_param_list * plist, compressed_color_list_t * pcomp_list,
        char * keyname, keyname_link_list_t ** pkeyname_list)
{
    int max_list_elem_size =
            6 + 256 * sizeof(comp_bit_map_list_t);
    int i, j;
    byte * pdata;
    gs_param_string str;

    if (pcomp_list == ((void*)0))
        return 0;


    pdata = (*(pdev->memory)->procs.alloc_bytes)(pdev->memory, max_list_elem_size, "convert_compressed_color_list_elem");

    str.data = (const byte *)pdata;
    str.persistent = ((bool)0);

    for(j = 0; j < 2; j++) *pdata++ = (byte)((pcomp_list->num_sub_level_ptrs) >> (j * 8));
    for(j = 0; j < 2; j++) *pdata++ = (byte)((pcomp_list->first_bit_map) >> (j * 8));


    for (i = pcomp_list->first_bit_map; i < 256; i++) {
        for(j = 0; j < 2; j++) *pdata++ = (byte)((pcomp_list->u.comp_data[i].num_comp) >> (j * 8));
        for(j = 0; j < 2; j++) *pdata++ = (byte)((pcomp_list->u.comp_data[i].num_non_solid_comp) >> (j * 8));
        for(j = 0; j < 1; j++) *pdata++ = (byte)((pcomp_list->u.comp_data[i].solid_not_100) >> (j * 8));
        for(j = 0; j < sizeof(pcomp_list->u.comp_data[i].colorants); j++) *pdata++ = (byte)((pcomp_list->u.comp_data[i].colorants) >> (j * 8));

        if (pcomp_list->u.comp_data[i].num_comp !=
                        pcomp_list->u.comp_data[i].num_non_solid_comp) {
            for(j = 0; j < sizeof(pcomp_list->u.comp_data[i].solid_colorants); j++) *pdata++ = (byte)((pcomp_list->u.comp_data[i].solid_colorants) >> (j * 8));

        }
    }
    str.size = pdata - str.data;
    param_write_string(plist, keyname, &str);
    ((pdev->memory)->procs.free_object(pdev->memory, (byte *)str.data, "convert_compressed_color_list_elem"));



    for (i = 0; i < pcomp_list->num_sub_level_ptrs; i++) {







        char * keyname_buf = (char *)(*(pdev->memory)->procs.alloc_bytes)(pdev->memory, strlen(keyname) + 10, "convert_compressed_color_list_elem");





        keyname_link_list_t * pkeyname_list_elem =
            (keyname_link_list_t *)(*(pdev->memory)->procs.alloc_struct)(pdev->memory, &st_keyname_link_list, "convert_compressed_color_list_elem");

        pkeyname_list_elem->next = *pkeyname_list;
        pkeyname_list_elem->key_name = keyname_buf;
        *pkeyname_list = pkeyname_list_elem;
        gs_sprintf(keyname_buf, "%s_%d", keyname, i);
        get_param_compressed_color_list_elem(pdev, plist,
                                pcomp_list->u.sub_level_ptrs[i], keyname_buf,
                                pkeyname_list);
    }

    return 0;
}
# 6938 "./base/gdevp14.c"
int
put_param_compressed_color_list_elem(gx_device * pdev,
    gs_param_list * plist, compressed_color_list_t ** pret_comp_list,
    char * keyname, int num_comps)
{
    int code, i, j;
    byte * pdata;
    gs_param_string str;
    compressed_color_list_t * pcomp_list;


    code = param_read_string(plist, keyname, &str);
    switch (code) {
      case 0:
          break;
      default:
          (*(plist)->procs->signal_error)(plist, keyname, code);
      case 1:
          *pret_comp_list = ((void*)0);
          return 0;
    }

    pdata = (byte *)str.data;
    pcomp_list = alloc_compressed_color_list_elem(pdev->memory, num_comps);
    j = 2 - 1; pcomp_list->num_sub_level_ptrs = pdata[j--]; for(; j >= 0; j--) pcomp_list->num_sub_level_ptrs = (pcomp_list->num_sub_level_ptrs << 8) | pdata[j]; pdata += 2;
    j = 2 - 1; pcomp_list->first_bit_map = pdata[j--]; for(; j >= 0; j--) pcomp_list->first_bit_map = (pcomp_list->first_bit_map << 8) | pdata[j]; pdata += 2;


    for (i = pcomp_list->first_bit_map; i < 256; i++) {
        j = 2 - 1; pcomp_list->u.comp_data[i].num_comp = pdata[j--]; for(; j >= 0; j--) pcomp_list->u.comp_data[i].num_comp = (pcomp_list->u.comp_data[i].num_comp << 8) | pdata[j]; pdata += 2;
        j = 2 - 1; pcomp_list->u.comp_data[i].num_non_solid_comp = pdata[j--]; for(; j >= 0; j--) pcomp_list->u.comp_data[i].num_non_solid_comp = (pcomp_list->u.comp_data[i].num_non_solid_comp << 8) | pdata[j]; pdata += 2;
        j = 1 - 1; pcomp_list->u.comp_data[i].solid_not_100 = pdata[j--]; for(; j >= 0; j--) pcomp_list->u.comp_data[i].solid_not_100 = (pcomp_list->u.comp_data[i].solid_not_100 << 8) | pdata[j]; pdata += 1;
        j = sizeof(pcomp_list->u.comp_data[i].colorants) - 1; pcomp_list->u.comp_data[i].colorants = pdata[j--]; for(; j >= 0; j--) pcomp_list->u.comp_data[i].colorants = (pcomp_list->u.comp_data[i].colorants << 8) | pdata[j]; pdata += sizeof(pcomp_list->u.comp_data[i].colorants);

        if (pcomp_list->u.comp_data[i].num_comp !=
                        pcomp_list->u.comp_data[i].num_non_solid_comp) {
            j = sizeof(pcomp_list->u.comp_data[i].solid_colorants) - 1; pcomp_list->u.comp_data[i].solid_colorants = pdata[j--]; for(; j >= 0; j--) pcomp_list->u.comp_data[i].solid_colorants = (pcomp_list->u.comp_data[i].solid_colorants << 8) | pdata[j]; pdata += sizeof(pcomp_list->u.comp_data[i].solid_colorants);

        }
    }


    for (i = 0; i < pcomp_list->num_sub_level_ptrs; i++) {
        char buff[50];
        compressed_color_list_t * sub_list_ptr;

        gs_sprintf(buff, "%s_%d", keyname, i);
        put_param_compressed_color_list_elem(pdev, plist,
                                        &sub_list_ptr, buff, num_comps - 1);
        pcomp_list->u.sub_level_ptrs[i] = sub_list_ptr;
    }

    *pret_comp_list = pcomp_list;
    return 0;
}





gs_devn_params *
pdf14_ret_devn_params(gx_device *pdev)
{
    pdf14_device *p14dev = (pdf14_device *)pdev;

    return(&(p14dev->devn_params));
}
# 7013 "./base/gdevp14.c"
static int
get_param_spot_color_names(pdf14_clist_device * pdev,
        gs_param_list * plist, keyname_link_list_t ** pkeyname_list)
{
    int code = 0, i;
    gs_param_string str;
    gs_separations * separations = &pdev->devn_params.separations;
    int num_spot_colors = separations->num_separations;

    if (num_spot_colors == 0)
        return 0;

    code = param_write_int(plist, "PDF14NumSpotColors",
                                                 &num_spot_colors);
    if (code < 0)
        return code;

    for (i = 0; i < num_spot_colors; i++) {






        char * keyname_buf = (char *)(*(pdev->memory)->procs.alloc_bytes)(pdev->memory, strlen("PDF14SpotName_") + 10, "get_param_spot_color_names");





        keyname_link_list_t * pkeyname_list_elem =
            (keyname_link_list_t *)(*(pdev->memory)->procs.alloc_struct)(pdev->memory, &st_keyname_link_list, "get_param_spot_color_names");

        pkeyname_list_elem->next = *pkeyname_list;
        pkeyname_list_elem->key_name = keyname_buf;
        *pkeyname_list = pkeyname_list_elem;
        gs_sprintf(keyname_buf, "PDF14SpotName_%d", i);
        str.size = separations->names[i].size;
        str.data = separations->names[i].data;
        str.persistent = ((bool)0);
        code = param_write_string(plist, keyname_buf, &str);
    }
    return code;
}




int
put_param_pdf14_spot_names(gx_device * pdev,
                gs_separations * pseparations, gs_param_list * plist)
{
    int code, num_spot_colors, i;
    gs_param_string str;


    code = param_read_int(plist, "PDF14NumSpotColors",
                                                &num_spot_colors);
    switch (code) {
        default:
            (*(plist)->procs->signal_error)(plist, "PDF14NumSpotColors", code);
            break;
        case 1:
            return 0;
        case 0:
            if (num_spot_colors < 1 ||
                num_spot_colors > (8 * 8))
                return ((-15));
            for (i = 0; i < num_spot_colors; i++) {
                char buff[20];
                byte * sep_name;

                gs_sprintf(buff, "PDF14SpotName_%d", i);
                code = param_read_string(plist, buff, &str);
                switch (code) {
                    default:
                        (*(plist)->procs->signal_error)(plist, buff, code);
                        break;
                    case 0:
                        sep_name = (*(pdev->memory)->procs.alloc_bytes)(pdev->memory, str.size, "put_param_pdf14_spot_names");

                        memcpy(sep_name, str.data, str.size);
                        pseparations->names[i].size = str.size;
                        pseparations->names[i].data = sep_name;
                }
            }
            pseparations->num_separations = num_spot_colors;
            break;
    }
    return 0;;
}

static int
pdf14_clist_get_param_compressed_color_list(pdf14_device * p14dev)
{
    gx_device_clist_writer * cldev = (gx_device_clist_writer *)p14dev->pclist_device;
    gs_c_param_list param_list;
    keyname_link_list_t * pkeyname_list_head = ((void*)0);
    int code;






    if (cldev->permanent_error)
        return cldev->permanent_error;
    gs_c_param_list_write(&param_list, p14dev->memory);
    code = get_param_compressed_color_list_elem(p14dev,
                (gs_param_list *)&param_list,
                p14dev->devn_params.compressed_color_list,
                (char *)"PDF14CompressedColorList", &pkeyname_list_head);
    get_param_spot_color_names(p14dev, (gs_param_list *)&param_list,
                         &pkeyname_list_head);
    if (code >= 0) {
        gx_device * tdev = p14dev->target;

        gs_c_param_list_read(&param_list);

        code = ((tdev)->procs.put_params)(tdev, (gs_param_list *)&param_list);
# 7141 "./base/gdevp14.c"
    }
    gs_c_param_list_release(&param_list);
    free_temp_keyname_list(p14dev->memory, pkeyname_list_head);

    return code;
}
# 7158 "./base/gdevp14.c"
int
pdf14_put_devn_params(gx_device * pdev, gs_devn_params * pdevn_params,
                                        gs_param_list * plist)
{
    int code = put_param_compressed_color_list_elem(pdev, plist,
            &pdevn_params->pdf14_compressed_color_list,
            (char *)"PDF14CompressedColorList", (8 - 1));
    if (code >= 0)
       code = put_param_pdf14_spot_names(pdev,
                       &pdevn_params->pdf14_separations, plist);
    return code;
}
# 7178 "./base/gdevp14.c"
static int
pdf14_clist_create_compositor(gx_device * dev, gx_device ** pcdev,
    const gs_composite_t * pct, gs_imager_state * pis, gs_memory_t * mem,
    gx_device *cdev)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    int code, is_pdf14_compositor;
    bool sep_target;
    const gs_pdf14trans_t * pdf14pct = (const gs_pdf14trans_t *) pct;


    if ((is_pdf14_compositor = gs_is_pdf14trans_compositor(pct)) != 0) {
        switch (pdf14pct->params.pdf14_op) {
            case PDF14_PUSH_DEVICE:

                pdev->saved_target_color_info = pdev->target->color_info;
                pdev->target->color_info = pdev->color_info;
                pdev->saved_target_encode_color = pdev->target->procs.encode_color;
                pdev->saved_target_decode_color = pdev->target->procs.decode_color;
                pdev->target->procs.encode_color = pdev->procs.encode_color =
                                                   pdev->my_encode_color;
                pdev->target->procs.decode_color = pdev->procs.decode_color =
                                                   pdev->my_decode_color;
                pdev->saved_target_get_color_mapping_procs =
                                    pdev->target->procs.get_color_mapping_procs;
                pdev->saved_target_get_color_comp_index =
                                        pdev->target->procs.get_color_comp_index;
                pdev->target->procs.get_color_mapping_procs =
                        pdev->procs.get_color_mapping_procs =
                        pdev->my_get_color_mapping_procs;
                pdev->target->procs.get_color_comp_index =
                        pdev->procs.get_color_comp_index =
                        pdev->my_get_color_comp_index;
                pdev->save_get_cmap_procs = pis->get_cmap_procs;
                pis->get_cmap_procs = pdf14_get_cmap_procs;
                gx_set_cmap_procs(pis, dev);
                code = pdf14_recreate_clist_device(mem, pis, dev, pdf14pct);
                pdev->blend_mode = pdev->text_knockout = 0;
                pdev->opacity = pdev->shape = 0.0;
                if (code < 0)
                    return code;





                {
                    gs_composite_t pctemp = *pct;

                    pctemp.type = &gs_composite_pdf14trans_no_clist_writer_type;
                    code = ((pdev->target)->procs.create_compositor)
                                (pdev->target, pcdev, &pctemp, pis, mem, cdev);
                    *pcdev = dev;
                    return code;
                }
            case PDF14_POP_DEVICE:

                pdev->target->color_info = pdev->saved_target_color_info;
                pdev->target->procs.encode_color =
                                        pdev->saved_target_encode_color;
                pdev->target->procs.decode_color =
                                        pdev->saved_target_decode_color;
                pdev->target->procs.get_color_mapping_procs =
                                    pdev->saved_target_get_color_mapping_procs;
                pdev->target->procs.get_color_comp_index =
                                    pdev->saved_target_get_color_comp_index;
                pis->get_cmap_procs = pdev->save_get_cmap_procs;
                gx_set_cmap_procs(pis, pdev->target);





                pdf14_clist_get_param_compressed_color_list(pdev);

                pdf14_disable_clist_device(mem, pis, dev);



                code = cmd_put_color_mapping(
                        (gx_device_clist_writer *)(pdev->target), pis);
                if (code < 0)
                    return code;
                break;
            case PDF14_BEGIN_TRANS_GROUP:





                code = pdf14_clist_update_params(pdev, pis, ((bool)1),
                                                 (gs_pdf14trans_params_t *)&(pdf14pct->params));
                if (code < 0)
                    return code;
                if (pdf14pct->params.Background_components != 0 &&
                    pdf14pct->params.Background_components !=
                    pdev->color_info.num_components)
                    return ((-15));




                pdf14_push_parent_color(dev, pis);


                sep_target = (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->dname) && __builtin_constant_p ("pdf14clistcustom") && (__s1_len = strlen (pdev->dname), __s2_len = strlen ("pdf14clistcustom"), (!((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("pdf14clistcustom") + 1) - (size_t)(const void *)("pdf14clistcustom") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->dname, "pdf14clistcustom") : (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) && (__s1_len = strlen (pdev->dname), __s1_len < 4) ? (__builtin_constant_p ("pdf14clistcustom") && ((size_t)(const void *)(("pdf14clistcustom") + 1) - (size_t)(const void *)("pdf14clistcustom") == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcustom") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("pdf14clistcustom"); register int __result = (((const unsigned char *) (const char *) (pdev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("pdf14clistcustom") && ((size_t)(const void *)(("pdf14clistcustom") + 1) - (size_t)(const void *)("pdf14clistcustom") == 1) && (__s2_len = strlen ("pdf14clistcustom"), __s2_len < 4) ? (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcustom") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[3]); } } __result; }))) : __builtin_strcmp (pdev->dname, "pdf14clistcustom")))); }) == 0) ||
                    (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->dname) && __builtin_constant_p ("pdf14clistcmykspot") && (__s1_len = strlen (pdev->dname), __s2_len = strlen ("pdf14clistcmykspot"), (!((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("pdf14clistcmykspot") + 1) - (size_t)(const void *)("pdf14clistcmykspot") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->dname, "pdf14clistcmykspot") : (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) && (__s1_len = strlen (pdev->dname), __s1_len < 4) ? (__builtin_constant_p ("pdf14clistcmykspot") && ((size_t)(const void *)(("pdf14clistcmykspot") + 1) - (size_t)(const void *)("pdf14clistcmykspot") == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcmykspot") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("pdf14clistcmykspot"); register int __result = (((const unsigned char *) (const char *) (pdev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("pdf14clistcmykspot") && ((size_t)(const void *)(("pdf14clistcmykspot") + 1) - (size_t)(const void *)("pdf14clistcmykspot") == 1) && (__s2_len = strlen ("pdf14clistcmykspot"), __s2_len < 4) ? (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcmykspot") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[3]); } } __result; }))) : __builtin_strcmp (pdev->dname, "pdf14clistcmykspot")))); }) == 0) ||
                    (((dev)->procs.dev_spec_op)(dev, gxdso_supports_devn, ((void*)0), 0));
                if (!sep_target) {




                    code = pdf14_update_device_color_procs_push_c(dev,
                                  pdf14pct->params.group_color,
                                  pdf14pct->params.icc_hash, pis,
                                  pdf14pct->params.iccprofile);
                    if (code < 0)
                        return code;
                }
                break;
            case PDF14_BEGIN_TRANS_MASK:




                pdf14_push_parent_color(dev, pis);

                code = pdf14_update_device_color_procs_push_c(dev,
                                  pdf14pct->params.group_color,
                                  pdf14pct->params.icc_hash, pis,
                                  pdf14pct->params.iccprofile);
                if (code < 0)
                    return code;




                break;


            case PDF14_END_TRANS_GROUP:



                sep_target = (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->dname) && __builtin_constant_p ("pdf14clistcustom") && (__s1_len = strlen (pdev->dname), __s2_len = strlen ("pdf14clistcustom"), (!((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("pdf14clistcustom") + 1) - (size_t)(const void *)("pdf14clistcustom") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->dname, "pdf14clistcustom") : (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) && (__s1_len = strlen (pdev->dname), __s1_len < 4) ? (__builtin_constant_p ("pdf14clistcustom") && ((size_t)(const void *)(("pdf14clistcustom") + 1) - (size_t)(const void *)("pdf14clistcustom") == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcustom") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("pdf14clistcustom"); register int __result = (((const unsigned char *) (const char *) (pdev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("pdf14clistcustom") && ((size_t)(const void *)(("pdf14clistcustom") + 1) - (size_t)(const void *)("pdf14clistcustom") == 1) && (__s2_len = strlen ("pdf14clistcustom"), __s2_len < 4) ? (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcustom") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("pdf14clistcustom"))[3]); } } __result; }))) : __builtin_strcmp (pdev->dname, "pdf14clistcustom")))); }) == 0) ||
                    (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->dname) && __builtin_constant_p ("pdf14clistcmykspot") && (__s1_len = strlen (pdev->dname), __s2_len = strlen ("pdf14clistcmykspot"), (!((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("pdf14clistcmykspot") + 1) - (size_t)(const void *)("pdf14clistcmykspot") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->dname, "pdf14clistcmykspot") : (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) && (__s1_len = strlen (pdev->dname), __s1_len < 4) ? (__builtin_constant_p ("pdf14clistcmykspot") && ((size_t)(const void *)(("pdf14clistcmykspot") + 1) - (size_t)(const void *)("pdf14clistcmykspot") == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcmykspot") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("pdf14clistcmykspot"); register int __result = (((const unsigned char *) (const char *) (pdev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("pdf14clistcmykspot") && ((size_t)(const void *)(("pdf14clistcmykspot") + 1) - (size_t)(const void *)("pdf14clistcmykspot") == 1) && (__s2_len = strlen ("pdf14clistcmykspot"), __s2_len < 4) ? (__builtin_constant_p (pdev->dname) && ((size_t)(const void *)((pdev->dname) + 1) - (size_t)(const void *)(pdev->dname) == 1) ? __builtin_strcmp (pdev->dname, "pdf14clistcmykspot") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("pdf14clistcmykspot"))[3]); } } __result; }))) : __builtin_strcmp (pdev->dname, "pdf14clistcmykspot")))); }) == 0) ||
                    (((dev)->procs.dev_spec_op)(dev, gxdso_supports_devn, ((void*)0), 0));
                if (!sep_target) {
                    code = pdf14_update_device_color_procs_pop_c(dev,pis);
                    if (code < 0)
                        return code;
                }

                pdf14_pop_parent_color(dev, pis);
                break;
            case PDF14_END_TRANS_MASK:



                code = pdf14_update_device_color_procs_pop_c(dev,pis);
                if (code < 0)
                    return code;

                pdf14_pop_parent_color(dev, pis);
                break;
            case PDF14_PUSH_TRANS_STATE:
                break;
            case PDF14_POP_TRANS_STATE:
                break;
            case PDF14_PUSH_SMASK_COLOR:
                code = pdf14_increment_smask_color(pis,dev);
                *pcdev = dev;
                return code;
                break;
            case PDF14_POP_SMASK_COLOR:
                code = pdf14_decrement_smask_color(pis,dev);
                *pcdev = dev;
                return code;
                break;
            case PDF14_SET_BLEND_PARAMS:

                code = pdf14_clist_update_params(pdev, pis, ((bool)0),
                                                 (gs_pdf14trans_params_t *)&(pdf14pct->params));
                *pcdev = dev;
                return code;
                break;
            case PDF14_ABORT_DEVICE:
                break;
            default:
                break;
        }
    }
    code = ((pdev->target)->procs.create_compositor)
                        (pdev->target, pcdev, pct, pis, mem, cdev);


    if (is_pdf14_compositor && pdf14pct->params.pdf14_op == PDF14_POP_DEVICE &&
        pdev->target->stype == &st_pdf14_accum) {

        int y, rows_used;
        byte *linebuf = (*(mem)->procs.alloc_bytes)(mem, gx_device_raster((gx_device *)pdev, ((bool)1)), "pdf14-clist_accum pop dev");
        byte *actual_data;
        gx_device *tdev = pdev->target;

        gx_device *target = ((pdf14_device *)((gx_device_pdf14_accum *)(tdev))->save_p14dev)->target;
        gs_image1_t image;
        gs_color_space *pcs;
        gx_image_enum_common_t *info;
        gx_image_plane_t planes;
        gsicc_rendering_param_t render_cond;
        cmm_dev_profile_t *dev_profile;




        code = gs_cspace_build_ICC(&pcs, ((void*)0), pis->memory);
        if (linebuf == ((void*)0) || pcs == ((void*)0))
            goto put_accum_error;







        code = ((dev)->procs.get_profile)(dev, &dev_profile);
        if (code < 0) {
            rc_decrement_only_cs(pcs, "pdf14_put_image");
            return code;
        }
        gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile,
                              &(pcs->cmm_icc_profile_data), &render_cond);

        do { if (pcs->cmm_icc_profile_data) do { (pcs->cmm_icc_profile_data)->rc.ref_count++; do { } while (0); } while (0); } while (0);
        gscms_set_icc_range(&(pcs->cmm_icc_profile_data));

        gs_image_t_init_adjust(&image, pcs, ((bool)0));
        image.ImageMatrix.xx = (float)pdev->width;
        image.ImageMatrix.yy = (float)pdev->height;
        image.Width = pdev->width;
        image.Height = pdev->height;
        image.BitsPerComponent = 8;
        (*(gs_matrix *)&(pis)->ctm).xx = (float)pdev->width;
        (*(gs_matrix *)&(pis)->ctm).xy = 0;
        (*(gs_matrix *)&(pis)->ctm).yx = 0;
        (*(gs_matrix *)&(pis)->ctm).yy = (float)pdev->height;
        (*(gs_matrix *)&(pis)->ctm).tx = 0.0;
        (*(gs_matrix *)&(pis)->ctm).ty = 0.0;
        code = ((target)->procs.begin_typed_image) (target,
                                                    pis, ((void*)0),
                                                    (gs_image_common_t *)&image,
                                                    ((void*)0), ((void*)0), ((void*)0),
                                                    pis->memory, &info);
        if (code < 0)
            goto put_accum_error;
        for (y=0; y < tdev->height; y++) {
            code = ((tdev)->procs.get_bits)(tdev, y, linebuf, &actual_data);
            planes.data = actual_data;
            planes.data_x = 0;
            planes.raster = tdev->width * tdev->color_info.num_components;
            if ((code = info->procs->plane_data(info, &planes, 1, &rows_used)) < 0)
                goto put_accum_error;
        }
        info->procs->end_image(info, ((bool)1));

put_accum_error:
        ((pdev->memory)->procs.free_object(pdev->memory, linebuf, "pdf14_put_image"));

        rc_decrement_only_cs(pcs, "pdf14_put_image");
        ((tdev)->procs.close_device)(tdev);

        gx_device_set_target((gx_device_forward *)pdev,
                             ((gx_device_pdf14_accum *)(pdev->target))->save_p14dev);
        pdev->pclist_device = pdev->target;
        *pcdev = pdev->target;
        pdev->color_info = target->color_info;
        ((tdev->memory)->procs.free_object(tdev->memory, tdev, "popdevice pdf14-accum"));
        return 0;
    }

    if (*pcdev != pdev->target)
        gx_device_set_target((gx_device_forward *)pdev, *pcdev);
    *pcdev = dev;
    return code;
}
# 7473 "./base/gdevp14.c"
static int
pdf14_clist_forward_create_compositor(gx_device * dev, gx_device * * pcdev,
        const gs_composite_t * pct, gs_imager_state * pis,
        gs_memory_t * mem, gx_device *cdev)
{
    pdf14_device *pdev = (pdf14_device *)dev;
    gx_device * tdev = pdev->target;
    gx_device * ndev;
    int code;

    *pcdev = dev;
    if (gs_is_pdf14trans_compositor(pct)) {
        const gs_pdf14trans_t * pdf14pct = (const gs_pdf14trans_t *) pct;

        if (pdf14pct->params.pdf14_op == PDF14_PUSH_DEVICE)
            return pdf14_clist_create_compositor(dev, &ndev, pct, pis, mem, cdev);
        return 0;
    }
    code = ((tdev)->procs.create_compositor)(tdev, &ndev, pct, pis, mem, cdev);
    if (code < 0)
        return code;
    gx_device_set_target((gx_device_forward *)pdev, ndev);
    return 0;
}





static int
pdf14_clist_update_params(pdf14_clist_device * pdev, const gs_imager_state * pis,
                          bool crop_blend_params,
                          gs_pdf14trans_params_t *group_params)
{
    gs_pdf14trans_params_t params = { 0 };
    gx_device * pcdev;
    int changed = 0;
    int code = 0;
    gs_composite_t *pct_new = ((void*)0);

    params.crop_blend_params = crop_blend_params;

    params.pdf14_op = PDF14_SET_BLEND_PARAMS;
    if (pis->blend_mode != pdev->blend_mode) {
        changed |= (1 << 0);
        params.blend_mode = pdev->blend_mode = pis->blend_mode;
    }
    if (pis->text_knockout != pdev->text_knockout) {
        changed |= (1 << 1);
        params.text_knockout = pdev->text_knockout = pis->text_knockout;
    }
    if (pis->shape.alpha != pdev->shape) {
        changed |= (1 << 2);
        params.shape.alpha = pdev->shape = pis->shape.alpha;
    }
    if (pis->opacity.alpha != pdev->opacity) {
        changed |= (1 << 3);
        params.opacity.alpha = pdev->opacity = pis->opacity.alpha;
    }
    if (pis->overprint != pdev->overprint) {
        changed |= (1 << 4);
        params.overprint = pdev->overprint = pis->overprint;
    }
    if (pis->overprint_mode != pdev->overprint_mode) {
        changed |= (1 << 5);
        params.overprint_mode = pdev->overprint_mode = pis->overprint_mode;
    }
    if (crop_blend_params) {
        params.ctm = group_params->ctm;
        params.bbox = group_params->bbox;
    }
    params.changed = changed;





    if (changed != 0) {
        code = gs_create_pdf14trans(&pct_new, &params, pis->memory);
        if (code < 0) return code;
        code = ((pdev->target)->procs.create_compositor)
                    (pdev->target, &pcdev, pct_new, (gs_imager_state *)pis, pis->memory, ((void*)0));
        ((pis->memory)->procs.free_object(pis->memory, pct_new, "pdf14_clist_update_params"));
    }
    return code;
}





static int
pdf14_clist_fill_path(gx_device *dev, const gs_imager_state *pis,
                           gx_path *ppath, const gx_fill_params *params,
                           const gx_drawing_color *pdcolor,
                           const gx_clip_path *pcpath)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    gs_imager_state new_is = *pis;
    int code;
    gs_pattern2_instance_t *pinst = ((void*)0);
    gx_device_forward * fdev = (gx_device_forward *)dev;
    cmm_dev_profile_t *dev_profile, *fwd_profile;
    gsicc_rendering_param_t render_cond;
    cmm_profile_t *icc_profile_fwd, *icc_profile_dev;

    code = ((dev)->procs.get_profile)(dev, &dev_profile);
    if (code < 0)
        return code;
    code = ((fdev->target)->procs.get_profile)(fdev->target, &fwd_profile);
    if (code < 0)
        return code;

    gsicc_extract_profile(GS_UNKNOWN_TAG, fwd_profile, &icc_profile_fwd,
                          &render_cond);
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &icc_profile_dev,
                          &render_cond);







    code = pdf14_clist_update_params(pdev, pis, ((bool)0), ((void*)0));
    if (code < 0)
        return code;
# 7608 "./base/gdevp14.c"
    if (pdcolor != ((void*)0) && gx_dc_is_pattern2_color(pdcolor)) {
        pinst =
            (gs_pattern2_instance_t *)pdcolor->ccolor.pattern;
           pinst->saved->has_transparency = ((bool)1);


           pinst->saved->trans_device = dev;
    }
    update_lop_for_pdf14(&new_is, pdcolor);
    new_is.trans_device = dev;
    new_is.has_transparency = ((bool)1);
    code = gx_forward_fill_path(dev, &new_is, ppath, params, pdcolor, pcpath);
    new_is.trans_device = ((void*)0);
    new_is.has_transparency = ((bool)0);
    if (pinst != ((void*)0)){
        pinst->saved->trans_device = ((void*)0);
    }
    return code;
}





static int
pdf14_clist_stroke_path(gx_device *dev, const gs_imager_state *pis,
                             gx_path *ppath, const gx_stroke_params *params,
                             const gx_drawing_color *pdcolor,
                             const gx_clip_path *pcpath)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    gs_imager_state new_is = *pis;
    int code;
    gs_pattern2_instance_t *pinst = ((void*)0);







    code = pdf14_clist_update_params(pdev, pis, ((bool)0), ((void*)0));
    if (code < 0)
        return code;




    if (pdcolor != ((void*)0) && gx_dc_is_pattern2_color(pdcolor) &&
        pdev->trans_group_parent_cmap_procs != ((void*)0)) {
        pinst =
            (gs_pattern2_instance_t *)pdcolor->ccolor.pattern;
           pinst->saved->has_transparency = ((bool)1);


           pinst->saved->trans_device = dev;
    }

    update_lop_for_pdf14(&new_is, pdcolor);
    new_is.trans_device = dev;
    new_is.has_transparency = ((bool)1);
    code = gx_forward_stroke_path(dev, &new_is, ppath, params, pdcolor, pcpath);
    new_is.trans_device = ((void*)0);
    new_is.has_transparency = ((bool)0);
    if (pinst != ((void*)0)){
        pinst->saved->trans_device = ((void*)0);
    }
    return code;
}





static int
pdf14_clist_text_begin(gx_device * dev, gs_imager_state * pis,
                 const gs_text_params_t * text, gs_font * font,
                 gx_path * path, const gx_device_color * pdcolor,
                 const gx_clip_path * pcpath, gs_memory_t * memory,
                 gs_text_enum_t ** ppenum)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    gs_text_enum_t *penum;
    int code;

    do { } while (0);






    code = pdf14_clist_update_params(pdev, pis, ((bool)0), ((void*)0));
    if (code < 0)
        return code;

    code = gx_forward_text_begin(dev, pis, text, font, path,
                                pdcolor, pcpath, memory, &penum);
    if (code < 0)
        return code;
    *ppenum = (gs_text_enum_t *)penum;
    return code;
}

static int
pdf14_clist_begin_image(gx_device * dev,
                       const gs_imager_state * pis, const gs_image_t * pim,
                       gs_image_format_t format, const gs_int_rect * prect,
                       const gx_drawing_color * pdcolor,
                       const gx_clip_path * pcpath,
                       gs_memory_t * memory, gx_image_enum_common_t ** pinfo)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    int code;







    code = pdf14_clist_update_params(pdev, pis, ((bool)0), ((void*)0));
    if (code < 0)
        return code;

    code = gx_forward_begin_image(dev, pis, pim, format, prect,
                                        pdcolor, pcpath, memory, pinfo);
    if (code < 0)
        return gx_default_begin_image(dev, pis, pim, format, prect,
                                        pdcolor, pcpath, memory, pinfo);
    else return code;

}

static int
pdf14_clist_begin_typed_image(gx_device * dev, const gs_imager_state * pis,
                           const gs_matrix *pmat, const gs_image_common_t *pic,
                           const gs_int_rect * prect,
                           const gx_drawing_color * pdcolor,
                           const gx_clip_path * pcpath, gs_memory_t * mem,
                           gx_image_enum_common_t ** pinfo)
{
    pdf14_clist_device * pdev = (pdf14_clist_device *)dev;
    int code;
    gs_imager_state * pis_noconst = (gs_imager_state *)pis;
    const gs_image_t *pim = (const gs_image_t *)pic;
    gx_image_enum *penum;
    gx_color_tile *ptile;
    gs_rect bbox_in, bbox_out;
    gs_transparency_group_params_t tgp;






    code = pdf14_clist_update_params(pdev, pis, ((bool)0), ((void*)0));
    if (code < 0)
        return code;






    pis_noconst->has_transparency = ((bool)1);
    pis_noconst->trans_device = dev;



    if (pim->ImageMask) {
        if (pdcolor != ((void*)0) && gx_dc_is_pattern1_color(pdcolor)) {
            if( gx_pattern1_get_transptr(pdcolor) != ((void*)0)){
                 if (dev->procs.begin_image != pdf14_clist_begin_image) {
                    ptile = pdcolor->colors.pattern.p_tile;




                    if (ptile->ttrans->n_chan-1 < 4) {
                        ptile->ttrans->blending_procs = &rgb_blending_procs;
                        ptile->ttrans->is_additive = ((bool)1);
                    } else {
                        ptile->ttrans->blending_procs = &cmyk_blending_procs;
                        ptile->ttrans->is_additive = ((bool)0);
                    }


                    ptile->ttrans->blending_mode = pis->blend_mode;


                    code = gx_default_begin_typed_image(dev, pis, pmat, pic,
                                                        prect, pdcolor,
                                                        pcpath, mem, pinfo);
                    if (code < 0)
                        return code;

                    penum = (gx_image_enum *) *pinfo;


                    bbox_in.p.x = 0;
                    bbox_in.p.y = 0;
                    bbox_in.q.x = pim->Width;
                    bbox_in.q.y = pim->Height;
                    code = gs_bbox_transform_inverse(&bbox_in, &(pim->ImageMatrix),
                                                     &bbox_out);
                    if (code < 0) return code;

                    do { } while (0);
                    tgp.Isolated = ((bool)1);
                    tgp.Knockout = ((bool)0);
                    tgp.mask_id = 0;
                    tgp.image_with_SMask = ((bool)0);
                    tgp.idle = ((bool)0);
                    tgp.iccprofile = ((void*)0);
                    tgp.icc_hashcode = 0;
                    tgp.group_color_numcomps = ptile->ttrans->n_chan-1;
                    tgp.ColorSpace = ((void*)0);

                    gs_begin_transparency_group((gs_state *) pis_noconst, &tgp,
                                                &bbox_out);
                    ptile->ttrans->image_render = penum->render;
                    penum->render = &pdf14_pattern_trans_render;
                    ptile->trans_group_popped = ((bool)0);
                    pis_noconst->has_transparency = ((bool)0);
                    pis_noconst->trans_device = ((void*)0);
                    return code;
                }
            }
        }
    }


    code = gx_forward_begin_typed_image(dev, pis, pmat,
                            pic, prect, pdcolor, pcpath, mem, pinfo);
    if (code < 0){
        code = gx_default_begin_typed_image(dev, pis, pmat, pic, prect,
                                        pdcolor, pcpath, mem, pinfo);
        pis_noconst->has_transparency = ((bool)0);
        pis_noconst->trans_device = ((void*)0);
        return code;
    } else {
        pis_noconst->has_transparency = ((bool)0);
        pis_noconst->trans_device = ((void*)0);
        return code;
    }
}

static int
gs_pdf14_clist_device_push(gs_memory_t *mem, gs_imager_state *pis, gx_device **pcdev,
                           gx_device *dev, const gs_pdf14trans_t *pdf14pct)
{
    int code;
    pdf14_clist_device *p14dev;
    gx_device_clist_writer * const cdev = &((gx_device_clist *)dev)->writer;

    code = pdf14_create_clist_device(mem, pis, pcdev, dev, pdf14pct);
# 7874 "./base/gdevp14.c"
    p14dev = (pdf14_clist_device *)(*pcdev);
    p14dev->saved_target_color_info = dev->color_info;
    dev->color_info = (*pcdev)->color_info;

    dev->color_info.anti_alias = p14dev->saved_target_color_info.anti_alias;
    p14dev->color_info.anti_alias = dev->color_info.anti_alias;


    cdev->clist_color_info.depth = p14dev->color_info.depth;
    cdev->clist_color_info.polarity = p14dev->color_info.polarity;
    cdev->clist_color_info.num_components = p14dev->color_info.num_components;
    cdev->clist_color_info.max_color = p14dev->color_info.max_color;
    cdev->clist_color_info.max_gray = p14dev->color_info.max_gray;

    p14dev->saved_target_encode_color = dev->procs.encode_color;
    p14dev->saved_target_decode_color = dev->procs.decode_color;
    dev->procs.encode_color = p14dev->procs.encode_color =
                              p14dev->my_encode_color;
    dev->procs.decode_color = p14dev->procs.decode_color =
                              p14dev->my_decode_color;
    p14dev->saved_target_get_color_mapping_procs =
                              dev->procs.get_color_mapping_procs;
    p14dev->saved_target_get_color_comp_index =
                              dev->procs.get_color_comp_index;
    dev->procs.get_color_mapping_procs =
        p14dev->procs.get_color_mapping_procs =
        p14dev->my_get_color_mapping_procs;
    dev->procs.get_color_comp_index =
        p14dev->procs.get_color_comp_index =
        p14dev->my_get_color_comp_index;
    p14dev->save_get_cmap_procs = pis->get_cmap_procs;
    pis->get_cmap_procs = pdf14_get_cmap_procs;
    gx_set_cmap_procs(pis, dev);
    return code;
}
# 7917 "./base/gdevp14.c"
static int
c_pdf14trans_clist_write_update(const gs_composite_t * pcte, gx_device * dev,
                gx_device ** pcdev, gs_imager_state * pis, gs_memory_t * mem)
{
    gx_device_clist_writer * const cdev = &((gx_device_clist *)dev)->writer;
    const gs_pdf14trans_t * pdf14pct = (const gs_pdf14trans_t *) pcte;
    int code = 0;


    switch (pdf14pct->params.pdf14_op) {
        case PDF14_PUSH_DEVICE:
            return gs_pdf14_clist_device_push(mem, pis, pcdev, dev, pdf14pct);

        case PDF14_POP_DEVICE:
# 7940 "./base/gdevp14.c"
            code = 0;

            code = clist_writer_check_empty_cropping_stack(cdev);
            break;

        case PDF14_BEGIN_TRANS_GROUP:
            {


                gs_pdf14trans_t * pdf14pct_noconst;

                pdf14pct_noconst = (gs_pdf14trans_t *) pcte;



                pdf14pct_noconst->params.mask_id = cdev->mask_id;
                do { } while (0);


            }
            break;
        case PDF14_END_TRANS_GROUP:
            code = 0;
            break;
        case PDF14_BEGIN_TRANS_MASK:

            cdev->mask_id = ++cdev->mask_id_count;


            {


                gs_pdf14trans_t * pdf14pct_noconst;

                pdf14pct_noconst = (gs_pdf14trans_t *) pcte;
                pdf14pct_noconst->params.mask_id = cdev->mask_id;
                do { } while (0);


            }
            break;
        case PDF14_END_TRANS_MASK:
            code = 0;
            break;
        case PDF14_PUSH_TRANS_STATE:
            code = 0;
            break;
        case PDF14_POP_TRANS_STATE:
            code = 0;
            break;
        case PDF14_ABORT_DEVICE:
            code = 0;
            break;
        case PDF14_PUSH_SMASK_COLOR:
            return 0;
            break;
        case PDF14_POP_SMASK_COLOR:
            return 0;
            break;
        default:
            break;
    }
    *pcdev = dev;
    if (code < 0)
        return code;


    code = gs_imager_setmatrix(&cdev->imager_state, &pdf14pct->params.ctm);

    cmd_clear_known(cdev, (1<<11));

    return code;
}
# 8022 "./base/gdevp14.c"
static int
c_pdf14trans_clist_read_update(gs_composite_t * pcte, gx_device * cdev,
                gx_device * tdev, gs_imager_state * pis, gs_memory_t * mem)
{
    pdf14_device * p14dev = (pdf14_device *)tdev;
    gs_pdf14trans_t * pdf14pct = (gs_pdf14trans_t *) pcte;
    gs_devn_params * pclist_devn_params;
    gx_device_clist_reader *pcrdev = (gx_device_clist_reader *)cdev;
    cmm_profile_t *cl_icc_profile, *p14_icc_profile;
    gsicc_rendering_param_t render_cond;
    cmm_dev_profile_t *dev_profile;

    ((cdev)->procs.get_profile)(cdev, &dev_profile);
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &cl_icc_profile,
                          &render_cond);
    ((p14dev)->procs.get_profile)((gx_device *)p14dev, &dev_profile);
    gsicc_extract_profile(GS_UNKNOWN_TAG, dev_profile, &p14_icc_profile,
                          &render_cond);






    switch (pdf14pct->params.pdf14_op) {
        case PDF14_PUSH_DEVICE:




            gp_monitor_enter(&(p14_icc_profile->lock)->native);
            do { if ((p14dev->icc_struct->device_profile[0]) != (cl_icc_profile)) { do { if (cl_icc_profile) do { (cl_icc_profile)->rc.ref_count++; do { } while (0); } while (0); } while (0); do { if (p14dev->icc_struct->device_profile[0]) { do { do { } while (0); (p14dev->icc_struct->device_profile[0])->rc.ref_count += (-1); } while (0); if (!(p14dev->icc_struct->device_profile[0])->rc.ref_count) { do { do { } while (0); (p14dev->icc_struct->device_profile[0])->rc.free((p14dev->icc_struct->device_profile[0])->rc.memory, (void *)(p14dev->icc_struct->device_profile[0]), "c_pdf14trans_clist_read_update"); } while (0); do { } while (0); } else do { } while (0); } } while (0); (p14dev->icc_struct->device_profile[0]) = (cl_icc_profile); } } while (0);

            gp_monitor_leave(&(p14_icc_profile->lock)->native);
# 8068 "./base/gdevp14.c"
            pclist_devn_params = ((cdev)->procs.ret_devn_params)(cdev);
            if (pclist_devn_params != ((void*)0) && pclist_devn_params->page_spot_colors != 0) {
                int num_comp = p14dev->color_info.num_components;
# 8080 "./base/gdevp14.c"
                p14dev->devn_params.page_spot_colors =
                    pclist_devn_params->page_spot_colors;
                if (num_comp < p14dev->devn_params.page_spot_colors + 4 ) {
                    p14dev->color_info.num_components = num_comp;
                } else {
                    p14dev->color_info.num_components =
                        p14dev->devn_params.num_std_colorant_names +
                        p14dev->devn_params.page_spot_colors;
                }


                devn_free_params((gx_device*) p14dev);
                p14dev->devn_params.compressed_color_list =
                    pclist_devn_params->pdf14_compressed_color_list;
                p14dev->devn_params.separations =
                    pclist_devn_params->pdf14_separations;
                p14dev->free_devicen = ((bool)0);
                if (num_comp != p14dev->color_info.num_components) {





                    if (p14dev->ctx != ((void*)0)) {
                        pdf14_ctx_free(p14dev->ctx);
                    }
                    ((tdev)->procs.open_device) (tdev);
                }
            }




            if (cl_icc_profile->data_cs == gsCIELAB || cl_icc_profile->islab) {
                cl_icc_profile =
                    gsicc_read_serial_icc(cdev, pcrdev->trans_dev_icc_hash);

                cl_icc_profile->dev = (gx_device *) cdev;
                gp_monitor_enter(&(p14_icc_profile->lock)->native);
                do { if ((p14dev->icc_struct->device_profile[0]) != (cl_icc_profile)) { do { if (cl_icc_profile) do { (cl_icc_profile)->rc.ref_count++; do { } while (0); } while (0); } while (0); do { if (p14dev->icc_struct->device_profile[0]) { do { do { } while (0); (p14dev->icc_struct->device_profile[0])->rc.ref_count += (-1); } while (0); if (!(p14dev->icc_struct->device_profile[0])->rc.ref_count) { do { do { } while (0); (p14dev->icc_struct->device_profile[0])->rc.free((p14dev->icc_struct->device_profile[0])->rc.memory, (void *)(p14dev->icc_struct->device_profile[0]), "c_pdf14trans_clist_read_update"); } while (0); do { } while (0); } else do { } while (0); } } while (0); (p14dev->icc_struct->device_profile[0]) = (cl_icc_profile); } } while (0);


                do { if (p14dev->icc_struct->device_profile[0]) { do { do { } while (0); (p14dev->icc_struct->device_profile[0])->rc.ref_count += (-1); } while (0); if (!(p14dev->icc_struct->device_profile[0])->rc.ref_count) { do { do { } while (0); (p14dev->icc_struct->device_profile[0])->rc.free((p14dev->icc_struct->device_profile[0])->rc.memory, (void *)(p14dev->icc_struct->device_profile[0]), "c_pdf14trans_clist_read_update"); } while (0); (p14dev->icc_struct->device_profile[0]) = 0; } else do { } while (0); } } while (0);

                gp_monitor_leave(&(p14_icc_profile->lock)->native);
            }
            break;

        case PDF14_POP_DEVICE:





            break;

        default:
            break;
    }

    return 0;
}




static int
c_pdf14trans_get_cropping(const gs_composite_t *pcte, int *ry, int *rheight,
                          int cropping_min, int cropping_max)
{
    gs_pdf14trans_t * pdf14pct = (gs_pdf14trans_t *) pcte;
    switch (pdf14pct->params.pdf14_op) {
        case PDF14_PUSH_DEVICE: return ALLBANDS;
        case PDF14_POP_DEVICE: return ALLBANDS;
        case PDF14_ABORT_DEVICE: return ALLBANDS;
        case PDF14_BEGIN_TRANS_GROUP:
            { gs_int_rect rect;

                pdf14_compute_group_device_int_rect(&pdf14pct->params.ctm,
                                                &pdf14pct->params.bbox, &rect);

                *ry = (((rect.p.y) > (cropping_min)) ? (rect.p.y) : (cropping_min));
                *rheight = (((rect.q.y) < (cropping_max)) ? (rect.q.y) : (cropping_max)) - *ry;
                return PUSHCROP;
            }
        case PDF14_BEGIN_TRANS_MASK:
            { gs_int_rect rect;

                pdf14_compute_group_device_int_rect(&pdf14pct->params.ctm,
                                                    &pdf14pct->params.bbox, &rect);


                if ( pdf14pct->params.GrayBackground == 1.0 || pdf14pct->params.mask_is_image) {



                    *ry = (((rect.p.y) > (cropping_min)) ? (rect.p.y) : (cropping_min));
                    *rheight = (((rect.q.y) < (cropping_max)) ? (rect.q.y) : (cropping_max)) - *ry;
                    return PUSHCROP;
                } else {



                    *ry = cropping_min;
                    *rheight = cropping_max - cropping_min;
                    return PUSHCROP;
                }
            }
        case PDF14_END_TRANS_GROUP: return POPCROP;
        case PDF14_END_TRANS_MASK: return POPCROP;
        case PDF14_PUSH_TRANS_STATE: return CURRBANDS;
        case PDF14_POP_TRANS_STATE: return CURRBANDS;
        case PDF14_SET_BLEND_PARAMS: return ALLBANDS;
        case PDF14_PUSH_SMASK_COLOR: return POPCROP;
        case PDF14_POP_SMASK_COLOR: return POPCROP;
    }
    return ALLBANDS;
}
# 8221 "./base/gdevp14.c"
static int
pdf14_cmykspot_get_color_comp_index(gx_device * dev, const char * pname,
                                int name_size, int component_type)
{
    pdf14_device * pdev = (pdf14_device *) dev;
    gx_device * tdev = pdev->target;
    gs_devn_params * pdevn_params = &pdev->devn_params;
    gs_separations * pseparations = &pdevn_params->separations;
    int comp_index;
    int (*target_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type) =
                                        ((tdev)->procs.get_color_comp_index);



    if (target_get_color_comp_index == pdf14_cmykspot_get_color_comp_index)
        target_get_color_comp_index =
        ((pdf14_clist_device *)pdev)->saved_target_get_color_comp_index;




    if (component_type == 0)
        return (*target_get_color_comp_index)(tdev, pname, name_size, component_type);




    comp_index = check_pcm_and_separation_names(dev, pdevn_params,
                                        pname, name_size, component_type);



    if (comp_index >= 0)
        return comp_index;



    comp_index = (*target_get_color_comp_index)(tdev, pname, name_size, component_type);




    if (comp_index < 0 || comp_index == (8 * 8))
        return comp_index;




    if (pseparations->num_separations < (8 * 8) - 1) {
        int sep_num = pseparations->num_separations++;
        int color_component_number;
        byte * sep_name;

        sep_name = (*(dev->memory->stable_memory)->procs.alloc_bytes)(dev->memory->stable_memory, name_size, "pdf14_cmykspot_get_color_comp_index");

        memcpy(sep_name, pname, name_size);
        pseparations->names[sep_num].size = name_size;
        pseparations->names[sep_num].data = sep_name;
        color_component_number = sep_num + pdevn_params->num_std_colorant_names;
        if (color_component_number >= dev->color_info.num_components)
            color_component_number = (8 * 8);
        else
            pdevn_params->separation_order_map[color_component_number] =
                                               color_component_number;
        return color_component_number;
    }

    return (8 * 8);
}




static int
pdf14_increment_smask_color(gs_imager_state * pis, gx_device * dev)
{
    pdf14_device * pdev = (pdf14_device *) dev;
    pdf14_smaskcolor_t *result;
    gsicc_smask_t *smask_profiles = pis->icc_manager->smask_profiles;
    int k;
# 8310 "./base/gdevp14.c"
    if (pdev->smaskcolor == ((void*)0) && pis->icc_manager->smask_profiles != ((void*)0) &&
        pis->icc_manager->smask_profiles->swapped) {
            return 0;
    }
    if (pdev->smaskcolor != ((void*)0)) {
        pdev->smaskcolor->ref_count++;
        do { } while (0);


    } else {


        result = (pdf14_smaskcolor_t *)(*(pdev->memory)->procs.alloc_struct)(pdev->memory, &st_pdf14_smaskcolor, "pdf14_increment_smask_color");


        if (result == ((void*)0) ) return(-1);
        result->profiles = gsicc_new_iccsmask(pdev->memory);
        if (result->profiles == ((void*)0) ) return(-1);
        pdev->smaskcolor = result;




        result->profiles->smask_gray = pis->icc_manager->default_gray;
        result->profiles->smask_rgb = pis->icc_manager->default_rgb;
        result->profiles->smask_cmyk = pis->icc_manager->default_cmyk;
        pis->icc_manager->default_gray = smask_profiles->smask_gray;
        pis->icc_manager->default_rgb = smask_profiles->smask_rgb;
        pis->icc_manager->default_cmyk = smask_profiles->smask_cmyk;
        pis->icc_manager->smask_profiles->swapped = ((bool)1);
        do { } while (0);

        pdev->smaskcolor->ref_count = 1;




        if (pis->is_gstate) {
            gs_state *pgs = (gs_state*) pis;
            for (k = 0; k < 2; k++) {
                gs_color_space *pcs = pgs->color[k].color_space;
                cmm_profile_t *profile = pcs->cmm_icc_profile_data;
                if (profile != ((void*)0)) {
                    switch(profile->data_cs) {
                        case gsGRAY:
                            if (profile->hashcode ==
                                result->profiles->smask_gray->hashcode) {
                                    profile = pis->icc_manager->default_gray;
                            }
                            break;
                        case gsRGB:
                            if (profile->hashcode ==
                                result->profiles->smask_rgb->hashcode) {
                                    profile = pis->icc_manager->default_rgb;
                            }
                            break;
                        case gsCMYK:
                            if (profile->hashcode ==
                                result->profiles->smask_cmyk->hashcode) {
                                    profile = pis->icc_manager->default_cmyk;
                            }
                            break;
                        default:

                            break;
                    }
                    do { if ((pcs->cmm_icc_profile_data) != (profile)) { do { if (profile) do { (profile)->rc.ref_count++; do { } while (0); } while (0); } while (0); do { if (pcs->cmm_icc_profile_data) { do { do { } while (0); (pcs->cmm_icc_profile_data)->rc.ref_count += (-1); } while (0); if (!(pcs->cmm_icc_profile_data)->rc.ref_count) { do { do { } while (0); (pcs->cmm_icc_profile_data)->rc.free((pcs->cmm_icc_profile_data)->rc.memory, (void *)(pcs->cmm_icc_profile_data), "pdf14_increment_smask_color"); } while (0); do { } while (0); } else do { } while (0); } } while (0); (pcs->cmm_icc_profile_data) = (profile); } } while (0);

                }
            }
        }
    }
    return(0);
}

static int
pdf14_decrement_smask_color(gs_imager_state * pis, gx_device * dev)
{
    pdf14_device * pdev = (pdf14_device *) dev;
    pdf14_smaskcolor_t *smaskcolor = pdev->smaskcolor;
    gsicc_manager_t *icc_manager = pis->icc_manager;
    int k;


    if (pdev->smaskcolor == ((void*)0) && pis->icc_manager->smask_profiles != ((void*)0) &&
        pis->icc_manager->smask_profiles->swapped) {
            return 0;
    }
    if (smaskcolor != ((void*)0)) {
        smaskcolor->ref_count--;
        do { } while (0);


        if (smaskcolor->ref_count == 0) {
            do { } while (0);



            if (pis->is_gstate) {
                gs_state *pgs = (gs_state*) pis;
                do { } while (0);
                for (k = 0; k < 2; k++) {
                    gs_color_space *pcs = pgs->color[k].color_space;
                    cmm_profile_t *profile = pcs->cmm_icc_profile_data;
                    if (profile != ((void*)0)) {
                        switch(profile->data_cs) {
                            case gsGRAY:
                                if (profile->hashcode ==
                                    pis->icc_manager->default_gray->hashcode) {
                                        profile =
                                            smaskcolor->profiles->smask_gray;
                                }
                                break;
                            case gsRGB:
                                if (profile->hashcode ==
                                    pis->icc_manager->default_rgb->hashcode) {
                                        profile =
                                            smaskcolor->profiles->smask_rgb;
                                }
                                break;
                            case gsCMYK:
                                if (profile->hashcode ==
                                    pis->icc_manager->default_cmyk->hashcode) {
                                        profile =
                                            smaskcolor->profiles->smask_cmyk;
                                }
                                break;
                            default:

                                break;
                        }
                        do { if ((pcs->cmm_icc_profile_data) != (profile)) { do { if (profile) do { (profile)->rc.ref_count++; do { } while (0); } while (0); } while (0); do { if (pcs->cmm_icc_profile_data) { do { do { } while (0); (pcs->cmm_icc_profile_data)->rc.ref_count += (-1); } while (0); if (!(pcs->cmm_icc_profile_data)->rc.ref_count) { do { do { } while (0); (pcs->cmm_icc_profile_data)->rc.free((pcs->cmm_icc_profile_data)->rc.memory, (void *)(pcs->cmm_icc_profile_data), "pdf14_decrement_smask_color"); } while (0); do { } while (0); } else do { } while (0); } } while (0); (pcs->cmm_icc_profile_data) = (profile); } } while (0);

                    }
                }
            }

            icc_manager->default_gray = smaskcolor->profiles->smask_gray;
            icc_manager->default_rgb = smaskcolor->profiles->smask_rgb;
            icc_manager->default_cmyk = smaskcolor->profiles->smask_cmyk;
            icc_manager->smask_profiles->swapped = ((bool)0);
            pdf14_free_smask_color(pdev);
        }
    }
    return(0);
}

static void
pdf14_free_smask_color(pdf14_device * pdev)
{
    if (pdev->smaskcolor != ((void*)0)) {
        if ( pdev->smaskcolor->profiles != ((void*)0)) {



            ((pdev->memory)->procs.free_object(pdev->memory, pdev->smaskcolor->profiles, "pdf14_free_smask_color"));

        }
        ((pdev->memory)->procs.free_object(pdev->memory, pdev->smaskcolor, "pdf14_free_smask_color"));
        pdev->smaskcolor = ((void*)0);
    }
}
