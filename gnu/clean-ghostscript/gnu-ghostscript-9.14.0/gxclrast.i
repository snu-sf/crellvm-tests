# 1 "./base/gxclrast.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gxclrast.c" 2
# 18 "./base/gxclrast.c"
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
# 19 "./base/gxclrast.c" 2
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
# 20 "./base/gxclrast.c" 2
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
# 36 "./base/srdline.h"
typedef struct stream_s stream;
# 45 "./base/srdline.h"
extern int sreadline(stream *s_in, stream *s_out, void *readline_data, gs_const_string *prompt, gs_string *buf, gs_memory_t *bufmem, uint *pcount, bool *pin_eol, bool (*is_stdin)(const stream *));
# 41 "./base/gp.h" 2




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
# 46 "./base/gp.h" 2
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
# 21 "./base/gxclrast.c" 2
# 1 "./base/gpcheck.h" 1
# 35 "./base/gpcheck.h"
int gs_return_check_interrupt(const gs_memory_t *mem, int code);
# 22 "./base/gxclrast.c" 2


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
# 25 "./base/gxclrast.c" 2
# 1 "./base/gsparams.h" 1
# 27 "./base/gsparams.h"
# 1 "./base/stream.h" 1
# 23 "./base/stream.h"
# 1 "./base/scommon.h" 1
# 24 "./base/scommon.h"
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
# 25 "./base/scommon.h" 2
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
# 24 "./base/stream.h" 2
# 1 "./base/gxiodev.h" 1
# 23 "./base/gxiodev.h"
# 1 "./base/stat_.h" 1
# 29 "./base/stat_.h"
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
# 218 "/usr/include/sys/stat.h" 3 4
extern int stat (const char *__restrict __file, struct stat *__restrict __buf) __asm__ ("" "stat64") __attribute__ ((__nothrow__ ))

     __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __asm__ ("" "fstat64") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));






extern int stat64 (const char *__restrict __file,
     struct stat64 *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 244 "/usr/include/sys/stat.h" 3 4
extern int fstatat (int __fd, const char *__restrict __file, struct stat *__restrict __buf, int __flag) __asm__ ("" "fstatat64") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 254 "/usr/include/sys/stat.h" 3 4
extern int fstatat64 (int __fd, const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 268 "/usr/include/sys/stat.h" 3 4
extern int lstat (const char *__restrict __file, struct stat *__restrict __buf) __asm__ ("" "lstat64") __attribute__ ((__nothrow__ ))


     __attribute__ ((__nonnull__ (1, 2)));





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
# 411 "/usr/include/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf) __asm__ ("" "__fxstat64") __attribute__ ((__nothrow__ ))

     __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename, struct stat *__stat_buf) __asm__ ("" "__xstat64") __attribute__ ((__nothrow__ ))

     __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename, struct stat *__stat_buf) __asm__ ("" "__lxstat64") __attribute__ ((__nothrow__ ))

     __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename, struct stat *__stat_buf, int __flag) __asm__ ("" "__fxstatat64") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4)));
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




extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) stat (const char *__path, struct stat *__statbuf)
{
  return __xstat (1, __path, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) lstat (const char *__path, struct stat *__statbuf)
{
  return __lxstat (1, __path, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) fstat (int __fd, struct stat *__statbuf)
{
  return __fxstat (1, __fd, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) fstatat (int __fd, const char *__filename, struct stat *__statbuf, int __flag)

{
  return __fxstatat (1, __fd, __filename, __statbuf, __flag);
}



extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) mknod (const char *__path, __mode_t __mode, __dev_t __dev)
{
  return __xmknod (0, __path, __mode, &__dev);
}



extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) mknodat (int __fd, const char *__path, __mode_t __mode, __dev_t __dev)

{
  return __xmknodat (0, __fd, __path, __mode, &__dev);
}





extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) stat64 (const char *__path, struct stat64 *__statbuf)
{
  return __xstat64 (1, __path, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) lstat64 (const char *__path, struct stat64 *__statbuf)
{
  return __lxstat64 (1, __path, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) fstat64 (int __fd, struct stat64 *__statbuf)
{
  return __fxstat64 (1, __fd, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) fstatat64 (int __fd, const char *__filename, struct stat64 *__statbuf, int __flag)

{
  return __fxstatat64 (1, __fd, __filename, __statbuf, __flag);
}
# 30 "./base/stat_.h" 2
# 24 "./base/gxiodev.h" 2
# 33 "./base/gxiodev.h"
typedef struct gx_io_device_s gx_io_device;

typedef struct gx_io_device_procs_s gx_io_device_procs;
# 48 "./base/gxiodev.h"
typedef struct gs_param_list_s gs_param_list;
# 78 "./base/gxiodev.h"
struct gx_io_device_procs_s {



    int (*init)(gx_io_device *iodev, gs_memory_t *mem);




    int (*open_device)(gx_io_device *iodev, const char *access, stream **ps, gs_memory_t *mem);




    int (*open_file)(gx_io_device *iodev, const char *fname, uint namelen, const char *access, stream **ps, gs_memory_t *mem);







    int (*gp_fopen)(gx_io_device *iodev, const char *fname, const char *access, FILE **pfile, char *rfname, uint rnamelen);



    int (*fclose)(gx_io_device *iodev, FILE *file);



    int (*delete_file)(gx_io_device *iodev, const char *fname);



    int (*rename_file)(gx_io_device *iodev, const char *from, const char *to);



    int (*file_status)(gx_io_device *iodev, const char *fname, struct stat *pstat);




    file_enum *(*enumerate_files)(gx_io_device *iodev, const char *pat, uint patlen, gs_memory_t *mem);



    uint (*enumerate_next)(file_enum *pfen, char *ptr, uint maxlen);



    void (*enumerate_close)(file_enum *pfen);





    int (*get_params)(gx_io_device *iodev, gs_param_list *plist);



    int (*put_params)(gx_io_device *iodev, gs_param_list *plist);

};



typedef int (*iodev_proc_fopen_t)(gx_io_device *iodev, const char *fname, const char *access, FILE **pfile, char *rfname, uint rnamelen);


int iodev_no_init(gx_io_device *iodev, gs_memory_t *mem);
int iodev_no_open_device(gx_io_device *iodev, const char *access, stream **ps, gs_memory_t *mem);
int iodev_no_open_file(gx_io_device *iodev, const char *fname, uint namelen, const char *access, stream **ps, gs_memory_t *mem);
int iodev_no_fopen(gx_io_device *iodev, const char *fname, const char *access, FILE **pfile, char *rfname, uint rnamelen);
int iodev_no_fclose(gx_io_device *iodev, FILE *file);
int iodev_no_delete_file(gx_io_device *iodev, const char *fname);
int iodev_no_rename_file(gx_io_device *iodev, const char *from, const char *to);
int iodev_no_file_status(gx_io_device *iodev, const char *fname, struct stat *pstat);
file_enum *iodev_no_enumerate_files(gx_io_device *iodev, const char *pat, uint patlen, gs_memory_t *mem);
int iodev_no_get_params(gx_io_device *iodev, gs_param_list *plist);
int iodev_no_put_params(gx_io_device *iodev, gs_param_list *plist);


int iodev_os_gp_fopen(gx_io_device *iodev, const char *fname, const char *access, FILE **pfile, char *rfname, uint rnamelen);
int iodev_os_fclose(gx_io_device *iodev, FILE *file);


gx_io_device *gs_getiodevice(const gs_memory_t *,int);




gx_io_device *gs_findiodevice(const gs_memory_t *,const byte *, uint);


int gs_getdevparams(gx_io_device *, gs_param_list *);
int gs_putdevparams(gx_io_device *, gs_param_list *);



int gs_fopen_errno_to_code(int);



file_enum *gs_enumerate_files_init(const char *pat, uint patlen, gs_memory_t * mem);
uint gs_enumerate_files_next(file_enum * pfen, char *ptr, uint maxlen);
void gs_enumerate_files_close(file_enum * pfen);







struct gx_io_device_s {
    const char *dname;
    const char *dtype;
    gx_io_device_procs procs;
    void *state;
};
# 25 "./base/stream.h" 2
# 38 "./base/stream.h"
typedef struct {





    int (*available)(stream *, gs_offset_t *);





    int (*seek)(stream *, gs_offset_t);





    void (*reset)(stream *);





    int (*flush)(stream *);





    int (*close)(stream *);



    int (*process)(stream_state *, stream_cursor_read *, stream_cursor_write *, bool);






    int (*switch_mode)(stream *, bool);

} stream_procs;



struct stream_s {





    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];
# 113 "./base/stream.h"
    stream_cursor cursor;
    byte *cbuf;
    uint bsize;
    uint cbsize;
# 130 "./base/stream.h"
    short end_status;

    byte foreign;
    byte modes;
# 142 "./base/stream.h"
    gs_string cbuf_string;

    gs_offset_t position;

    stream_procs procs;
    stream *strm;

    int is_temp;




    int inline_temp;

    stream_state *state;






    ushort read_id;


    ushort write_id;
    stream *prev, *next;
    bool close_strm;
    bool close_at_eod;
    int (*save_close)(stream *);





    FILE *file;
    gs_const_string file_name;

    uint file_modes;


    gs_offset_t file_offset;
    gs_offset_t file_limit;
};


extern const gs_memory_struct_type_t st_stream;
# 220 "./base/stream.h"
int savailable(stream *, gs_offset_t *);



int sclose(stream *);
int sswitch(stream *, bool);




int spgetcc(stream *, bool);
# 243 "./base/stream.h"
int sgets(stream *, byte *, uint, uint *);
int sungetc(stream *, byte);




int spskip(stream *, gs_offset_t, gs_offset_t *);







int s_process_read_buf(stream *);




int spputc(stream *, byte);
# 271 "./base/stream.h"
int sputs(stream *, const byte *, uint, uint *);





int s_process_write_buf(stream *, bool);


gs_offset_t stell(stream *);
int spseek(stream *, gs_offset_t);
# 330 "./base/stream.h"
stream *s_alloc(gs_memory_t *, client_name_t);
stream_state *s_alloc_state(gs_memory_t *, gs_memory_type_ptr_t, client_name_t);




void s_init(stream *, gs_memory_t *);
void s_init_state(stream_state *, const stream_template *, gs_memory_t *);


int file_prepare_stream(const char *, uint, const char *,
                 uint, stream **, char[4], gs_memory_t *);


void file_init_stream(stream *, FILE *, const char *, byte *, uint);


int file_open_stream(const char *, uint, const char *,
                 uint, stream **, gx_io_device *,
                 iodev_proc_fopen_t, gs_memory_t *);


stream * file_alloc_stream(gs_memory_t *, client_name_t);
# 370 "./base/stream.h"
int file_close_file(stream *);

int file_close_finish(stream *);


int file_close_disable(stream *);


void sread_string(stream *, const byte *, uint),
    sread_string_reusable(stream *, const byte *, uint),
    swrite_string(stream *, byte *, uint);
void sread_file(stream *, FILE *, byte *, uint),
    swrite_file(stream *, FILE *, byte *, uint),
    sappend_file(stream *, FILE *, byte *, uint);


int sread_subfile(stream *s, gs_offset_t start, gs_offset_t length);



int ssetfilename(stream *, const byte *, uint);



int sfilename(stream *, gs_const_string *);



void swrite_position_only(stream *);


void s_std_init(stream *, byte *, uint, const stream_procs *, int );


void s_disable(stream *);


int s_std_null(stream *);
void s_std_read_reset(stream *), s_std_write_reset(stream *);
int s_std_read_flush(stream *), s_std_write_flush(stream *), s_std_noavailable(stream *, gs_offset_t *),
     s_std_noseek(stream *, gs_offset_t), s_std_close(stream *), s_std_switch_mode(stream *, bool);


int s_filter_write_flush(stream *), s_filter_close(stream *);


extern const stream_procs s_filter_read_procs, s_filter_write_procs;
# 426 "./base/stream.h"
int s_init_filter(stream *fs, stream_state *fss, byte *buf, uint bsize,
                  stream *target);
stream *s_add_filter(stream **ps, const stream_template *template,
                     stream_state *ss, gs_memory_t *mem);





int s_close_filters(stream **ps, stream *target);



extern const stream_template s_NullE_template;
extern const stream_template s_NullD_template;


int file_close_finish(stream *);
int file_close_disable(stream *);
# 28 "./base/gsparams.h" 2
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
# 29 "./base/gsparams.h" 2
# 57 "./base/gsparams.h"
int gs_param_list_serialize(gs_param_list *list, byte *buf, int buf_size);






int gs_param_list_unserialize(gs_param_list *list, const byte *buf);
# 26 "./base/gxclrast.c" 2
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



# 1 "./base/gsdevice.h" 1
# 24 "./base/gsdevice.h"
typedef struct gx_device_s gx_device;




typedef struct gx_device_memory_s gx_device_memory;




typedef struct gs_matrix_s gs_matrix;
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
# 70 "./base/gsstate.h" 2


# 1 "./base/gsline.h" 1
# 22 "./base/gsline.h"
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
# 23 "./base/gsline.h" 2


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
# 22 "./base/gscolor.h"
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
# 23 "./base/gscolor.h" 2


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
# 1 "./base/gscsel.h" 1
# 27 "./base/gscsel.h"
typedef enum {
    gs_color_select_all = -1,
    gs_color_select_texture = 0,
    gs_color_select_source = 1
} gs_color_select_t;
# 80 "./base/gsstate.h" 2
int gs_setscreenphase(gs_state *, int, int, gs_color_select_t);
int gs_currentscreenphase(const gs_state *, gs_int_point *, gs_color_select_t);





int gx_imager_setscreenphase(gs_imager_state *, int, int, gs_color_select_t);


int gs_setfilladjust(gs_state *, double, double);
int gs_currentfilladjust(const gs_state *, gs_point *);
void gs_setlimitclamp(gs_state *, bool);
bool gs_currentlimitclamp(const gs_state *);
void gs_settextrenderingmode(gs_state * pgs, uint trm);
uint gs_currenttextrenderingmode(const gs_state * pgs);

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
# 97 "./base/gsstate.h" 2
gs_in_cache_device_t gs_incachedevice(const gs_state *);
void gs_sethpglpathmode(gs_state *, bool);
bool gs_currenthpglpathmode(const gs_state *);
# 27 "./base/gxclrast.c" 2
# 1 "./base/gstrans.h" 1
# 22 "./base/gstrans.h"
# 1 "./base/gstparam.h" 1
# 22 "./base/gstparam.h"
# 1 "./base/gsccolor.h" 1
# 27 "./base/gsccolor.h"
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
# 23 "./base/gstparam.h" 2
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
# 24 "./base/gstparam.h" 2
# 1 "./base/gscspace.h" 1
# 23 "./base/gscspace.h"
# 1 "./base/gsiparam.h" 1
# 23 "./base/gsiparam.h"
# 1 "./base/gsmatrix.h" 1
# 31 "./base/gsmatrix.h"
struct gs_matrix_s {
    float xx, xy, yx, yy, tx, ty;
};
struct gs_matrix_double_s {
  double xx, xy, yx, yy, tx, ty;
};







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






int sget_matrix(stream *, gs_matrix *);
int sput_matrix(stream *, const gs_matrix *);
# 24 "./base/gsiparam.h" 2

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
# 26 "./base/gsiparam.h" 2
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
# 24 "./base/gscspace.h" 2
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
# 23 "./base/gstrans.h" 2
# 1 "./base/gxcomp.h" 1
# 22 "./base/gxcomp.h"
# 1 "./base/gscompt.h" 1
# 41 "./base/gscompt.h"
typedef struct gs_composite_s gs_composite_t;






gs_id gs_composite_id(const gs_composite_t * pcte);
# 23 "./base/gxcomp.h" 2

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
# 21 "./base/gxblend.h"
# 1 "./base/gxcindex.h" 1
# 58 "./base/gxcindex.h"
enum { ARCH_SIZEOF_GX_COLOR_INDEX__must_equal__sizeof_GX_COLOR_INDEX_TYPE = 1/!!(8 == sizeof(unsigned long int)) };
typedef unsigned long int gx_color_index_data;
# 87 "./base/gxcindex.h"
typedef gx_color_index_data gx_color_index;
# 22 "./base/gxblend.h" 2
# 1 "./base/gxcvalue.h" 1
# 23 "./base/gxcvalue.h"
typedef unsigned short gx_color_value;
# 23 "./base/gxblend.h" 2
# 1 "./base/gxfrac.h" 1
# 27 "./base/gxfrac.h"
typedef short frac;
typedef short signed_frac;
# 24 "./base/gxblend.h" 2
# 1 "./base/gxdevcli.h" 1
# 25 "./base/gxdevcli.h"
# 1 "./base/gsdcolor.h" 1
# 23 "./base/gsdcolor.h"
# 1 "./base/gxarith.h" 1
# 27 "./base/gxarith.h"
int imod(int m, int n);


int igcd(int x, int y);





int idivmod(int a, int b, int m);




int ilog2(int n);
# 24 "./base/gsdcolor.h" 2

# 1 "./base/gxhttile.h" 1
# 32 "./base/gxhttile.h"
typedef struct gx_ht_tile_s gx_ht_tile;



struct gx_ht_tile_s {
    gx_strip_bitmap tiles;
    int level;


    uint index;

};
# 26 "./base/gsdcolor.h" 2




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

# 1 "./base/gsxfont.h" 1
# 24 "./base/gsxfont.h"
typedef ulong gx_xglyph;




struct gx_xfont_procs_s;
typedef struct gx_xfont_procs_s gx_xfont_procs;


struct gx_xfont_s;
typedef struct gx_xfont_s gx_xfont;
# 33 "./base/gxdevcli.h" 2



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
# 24 "./base/gxcmap.h"
# 1 "./base/gxfmap.h" 1
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

# 1 "./base/gscms.h" 1
# 26 "./base/gscms.h"
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
# 25 "./base/gxblend.h" 2
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
# 28 "./base/gxclrast.c" 2
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
# 29 "./base/gxclrast.c" 2
# 1 "./base/gxdevice.h" 1
# 24 "./base/gxdevice.h"
# 1 "./base/gsfname.h" 1
# 36 "./base/gsfname.h"
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
# 30 "./base/gxclrast.c" 2
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
# 31 "./base/gxclrast.c" 2

# 1 "./base/gsiparm4.h" 1
# 29 "./base/gsiparm4.h"
typedef struct gs_image4_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;
# 40 "./base/gsiparm4.h"
    bool MaskColor_is_range;
    uint MaskColor[((64) + 1) * 2];






    gs_image_parent_t image_parent_type;
} gs_image4_t;
# 60 "./base/gsiparm4.h"
void gs_image4_t_init(gs_image4_t * pim, gs_color_space * color_space);
# 33 "./base/gxclrast.c" 2
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
# 34 "./base/gxclrast.c" 2
# 1 "./base/gxcldev.h" 1
# 22 "./base/gxcldev.h"
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
# 28 "./base/gxclist.h" 2
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
# 30 "./base/gxclist.h" 2
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



typedef union gx_device_clist_s gx_device_clist;


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
# 23 "./base/gxcldev.h" 2

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
# 35 "./base/gxclrast.c" 2
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
# 36 "./base/gxclrast.c" 2



# 1 "./base/gxdhtres.h" 1
# 29 "./base/gxdhtres.h"
typedef struct gx_device_halftone_resource_s gx_device_halftone_resource_t;


struct gx_device_halftone_resource_s {
    const char *rname;
    int HalftoneType;
    int Width;
    int Height;
    int num_levels;
    const unsigned int *levels;
    const void *bit_data;
    int elt_size;
};
# 40 "./base/gxclrast.c" 2
# 1 "./base/gxgetbit.h" 1
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
# 41 "./base/gxclrast.c" 2
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
# 42 "./base/gxclrast.c" 2
# 1 "./base/gxpcolor.h" 1
# 27 "./base/gxpcolor.h"
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
# 43 "./base/gxclrast.c" 2

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
# 45 "./base/gxclrast.c" 2
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
# 46 "./base/gxclrast.c" 2
# 1 "./base/gzpath.h" 1
# 23 "./base/gzpath.h"
# 1 "./base/gxpath.h" 1
# 25 "./base/gxpath.h"
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
# 47 "./base/gxclrast.c" 2
# 1 "./base/gzcpath.h" 1
# 33 "./base/gzcpath.h"
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
# 48 "./base/gxclrast.c" 2
# 1 "./base/gzacpath.h" 1
# 31 "./base/gzacpath.h"
typedef struct gx_device_cpath_accum_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
    gs_memory_t *list_memory;
    gs_int_rect clip_box;
    gs_int_rect bbox;
    gx_clip_list list;
} gx_device_cpath_accum;







void gx_cpath_accum_begin(gx_device_cpath_accum * padev, gs_memory_t * mem);


void gx_cpath_accum_set_cbox(gx_device_cpath_accum * padev,
                             const gs_fixed_rect * pbox);



int gx_cpath_accum_end(const gx_device_cpath_accum * padev,
                       gx_clip_path * pcpath);


void gx_cpath_accum_discard(gx_device_cpath_accum * padev);


int gx_cpath_intersect_path_slow(gx_clip_path *, gx_path *, int,
                        gs_imager_state *, const gx_fill_params *);

int cpath_accum_fill_rect_with(gx_device_cpath_accum *pcdev, gx_device *tdev,
                               gx_device_color *pdevc);
# 49 "./base/gxclrast.c" 2



# 1 "./base/gsserial.h" 1
# 57 "./base/gsserial.h"
extern int enc_u_size_uint(uint);
# 76 "./base/gsserial.h"
extern byte * enc_u_put_uint(uint, byte *);
extern const byte * enc_u_get_uint(uint *, const byte *);
extern byte * enc_u_get_uint_nc(uint *, byte *);
# 177 "./base/gsserial.h"
extern int enc_s_size_int(int);
# 190 "./base/gsserial.h"
extern byte * enc_s_put_int(int, byte *);
extern const byte * enc_s_get_int(int *, const byte *);
extern byte * enc_s_get_int_nc(int *, byte *);
# 53 "./base/gxclrast.c" 2
# 1 "./base/gxdhtserial.h" 1
# 55 "./base/gxdhtserial.h"
extern int gx_ht_write( const gx_device_halftone * pdht,
                             const gx_device * dev,
                             byte * data,
                             uint * psize );
# 73 "./base/gxdhtserial.h"
extern int gx_ht_read_and_install( gs_imager_state * pis,
                                        const gx_device * dev,
                                        const byte * data,
                                        uint size,
                                        gs_memory_t * mem );
# 54 "./base/gxclrast.c" 2
# 1 "./base/gzht.h" 1
# 30 "./base/gzht.h"
void gx_sort_ht_order(gx_ht_bit *, uint);


int gx_ht_alloc_ht_order(gx_ht_order * porder, uint width, uint height,
                         uint num_levels, uint num_bits, uint strip_shift,
                         const gx_ht_order_procs_t *procs,
                         gs_memory_t * mem);
int gx_ht_alloc_order(gx_ht_order * porder, uint width, uint height,
                      uint strip_shift, uint num_levels, gs_memory_t *mem);
int gx_ht_alloc_threshold_order(gx_ht_order * porder, uint width,
                                uint height, uint num_levels,
                                gs_memory_t * mem);
int gx_ht_alloc_client_order(gx_ht_order * porder, uint width, uint height,
                             uint num_levels, uint num_bits, gs_memory_t * mem);
void gx_ht_construct_spot_order(gx_ht_order *);
int gx_ht_construct_threshold_order(gx_ht_order *, const byte *);
void gx_ht_construct_bit(gx_ht_bit * bit, int width, int bit_num);
void gx_ht_construct_bits(gx_ht_order *);
int gx_ht_construct_threshold(gx_ht_order *d_order, gx_device *dev,
                              const gs_imager_state * pis, int plane_index);


struct gs_screen_enum_s {
    gs_halftone halftone;
    gx_ht_order order;
    gs_matrix mat;
    gs_matrix mat_inv;
    int x, y;
    int strip, shift;
    gs_state *pgs;
};







int gs_sethalftone_prepare(gs_state *, gs_halftone *,
                           gx_device_halftone *);



int gs_screen_order_alloc(gx_ht_order *, gs_memory_t *);
int gs_screen_order_init_memory(gx_ht_order *, const gs_state *,
                                gs_screen_halftone *, bool, gs_memory_t *);






int gs_screen_enum_init_memory(gs_screen_enum *, const gx_ht_order *,
                               gs_state *, const gs_screen_halftone *,
                               gs_memory_t *);





int gx_ht_process_screen_memory(gs_screen_enum * penum, gs_state * pgs,
                                gs_screen_halftone * phsp, bool accurate,
                                gs_memory_t * mem);
# 113 "./base/gzht.h"
struct gx_ht_cache_s {

    byte *bits;
    uint bits_size;
    gx_ht_tile *ht_tiles;
    uint num_tiles;


    gx_ht_order order;
    int num_cached;
    int levels_per_tile;
    int tiles_fit;

    gx_bitmap_id base_id;

    gx_ht_tile *(*render_ht)(gx_ht_cache *, int);
};
# 159 "./base/gzht.h"
extern const gx_color_value *const fc_color_quo[8];







uint gx_ht_cache_default_tiles(void);
uint gx_ht_cache_default_bits_size(void);
gx_ht_cache *gx_ht_alloc_cache(gs_memory_t *, uint, uint);
void gx_ht_free_cache(gs_memory_t *, gx_ht_cache *);







void gx_ht_init_cache(const gs_memory_t *mem, gx_ht_cache *, const gx_ht_order *);
# 188 "./base/gzht.h"
void gx_ht_order_release(gx_ht_order * porder, gs_memory_t * mem, bool free_cache);





int gx_imager_dev_ht_install(gs_imager_state * pis,
                             gx_device_halftone * pdht,
                             gs_halftone_type type,
                             const gx_device * dev);






int gx_ht_install(gs_state *, const gs_halftone *, gx_device_halftone *);




void gx_imager_set_effective_xfer(gs_imager_state * pis);
void gx_set_effective_transfer(gs_state * pgs);
# 228 "./base/gzht.h"
int gs_color_name_component_number(gx_device * dev, const char * pname,
                                int name_size, int halftonetype);






int gs_cname_to_colorant_number(gs_state * pgs, byte * pname, uint name_size,
                                 int halftonetype);
# 55 "./base/gxclrast.c" 2
# 1 "./base/gxshade.h" 1
# 22 "./base/gxshade.h"
# 1 "./base/gsshade.h" 1
# 24 "./base/gsshade.h"
# 1 "./base/gsdsrc.h" 1
# 53 "./base/gsdsrc.h"
typedef enum {
    data_source_type_string,
    data_source_type_bytes,
    data_source_type_floats,
    data_source_type_stream
} gs_data_source_type_t;


typedef struct gs_data_source_s gs_data_source_t;

struct gs_data_source_s {
    int (*access)(const gs_data_source_t *psrc, ulong start, uint length, byte *buf, const byte **ptr);
    gs_data_source_type_t type;
    union d_ {
        gs_const_string str;
        stream *strm;
    } data;
};
# 89 "./base/gsdsrc.h"
extern const gs_memory_struct_type_t st_data_source;
# 98 "./base/gsdsrc.h"
int data_source_access_string(const gs_data_source_t *psrc, ulong start, uint length, byte *buf, const byte **ptr);







int data_source_access_bytes(const gs_data_source_t *psrc, ulong start, uint length, byte *buf, const byte **ptr);
# 116 "./base/gsdsrc.h"
int data_source_access_stream(const gs_data_source_t *psrc, ulong start, uint length, byte *buf, const byte **ptr);
# 25 "./base/gsshade.h" 2
# 1 "./base/gsfunc.h" 1
# 36 "./base/gsfunc.h"
typedef int gs_function_type_t;
# 60 "./base/gsfunc.h"
typedef struct gs_function_params_s {
    int m; const float *Domain; int n; const float *Range;
} gs_function_params_t;




typedef struct gs_function_info_s {
    const gs_data_source_t *DataSource;
    ulong data_size;
    const gs_function_t *const *Functions;
    int num_Functions;
} gs_function_info_t;




typedef int (*fn_evaluate_proc_t)(const gs_function_t * pfn, const float *in, float *out);





typedef int (*fn_is_monotonic_proc_t)(const gs_function_t * pfn, const float *lower, const float *upper, uint *mask);




typedef void (*fn_get_info_proc_t)(const gs_function_t *pfn, gs_function_info_t *pfi);




typedef int (*fn_get_params_proc_t)(const gs_function_t *pfn, gs_param_list *plist);
# 108 "./base/gsfunc.h"
typedef int (*fn_make_scaled_proc_t)(const gs_function_t *pfn, gs_function_t **ppsfn, const gs_range_t *pranges, gs_memory_t *mem);




typedef void (*fn_free_params_proc_t)(gs_function_params_t * params, gs_memory_t * mem);




typedef void (*fn_free_proc_t)(gs_function_t * pfn, bool free_params, gs_memory_t * mem);




typedef int (*fn_serialize_proc_t)(const gs_function_t * pfn, stream *s);


typedef struct gs_function_procs_s {
    fn_evaluate_proc_t evaluate;
    fn_is_monotonic_proc_t is_monotonic;
    fn_get_info_proc_t get_info;
    fn_get_params_proc_t get_params;
    fn_make_scaled_proc_t make_scaled;
    fn_free_params_proc_t free_params;
    fn_free_proc_t free;
    fn_serialize_proc_t serialize;
} gs_function_procs_t;
typedef struct gs_function_head_s {
    gs_function_type_t type;
    gs_function_procs_t procs;
} gs_function_head_t;
struct gs_function_s {
    gs_function_head_t head;
    gs_function_params_t params;
};
# 182 "./base/gsfunc.h"
int alloc_function_array(uint count, gs_function_t *** pFunctions,
                         gs_memory_t *mem);
# 26 "./base/gsshade.h" 2





typedef struct gx_cie_joint_caches_s gx_cie_joint_caches;





typedef enum {
    shading_type_Function_based = 1,
    shading_type_Axial = 2,
    shading_type_Radial = 3,
    shading_type_Free_form_Gouraud_triangle = 4,
    shading_type_Lattice_form_Gouraud_triangle = 5,
    shading_type_Coons_patch = 6,
    shading_type_Tensor_product_patch = 7
} gs_shading_type_t;
# 60 "./base/gsshade.h"
typedef struct gs_shading_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias;
} gs_shading_params_t;




typedef struct gs_shading_s gs_shading_t;
# 85 "./base/gsshade.h"
typedef int (*shading_fill_rectangle_proc_t)(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);




typedef struct gs_shading_procs_s {
    shading_fill_rectangle_proc_t fill_rectangle;
} gs_shading_procs_t;
typedef struct gs_shading_head_s {
    gs_shading_type_t type;
    gs_shading_procs_t procs;
} gs_shading_head_t;


struct gs_shading_s {
    gs_shading_head_t head;
    gs_shading_params_t params;
};







typedef struct gs_shading_Fb_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias;
    float Domain[4];
    gs_matrix Matrix;
    gs_function_t *Function;
} gs_shading_Fb_params_t;







typedef struct gs_shading_A_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias;
    float Coords[4];
    float Domain[2];
    gs_function_t *Function;
    bool Extend[2];
} gs_shading_A_params_t;







typedef struct gs_shading_R_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias;
    float Coords[6];
    float Domain[2];
    gs_function_t *Function;
    bool Extend[2];
} gs_shading_R_params_t;
# 159 "./base/gsshade.h"
typedef struct gs_shading_mesh_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias; gs_data_source_t DataSource; int BitsPerCoordinate; int BitsPerComponent; float *Decode; gs_function_t *Function;
} gs_shading_mesh_params_t;
typedef struct gs_shading_mesh_s {
    gs_shading_head_t head;
    gs_shading_mesh_params_t params;
} gs_shading_mesh_t;






typedef struct gs_shading_FfGt_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias; gs_data_source_t DataSource; int BitsPerCoordinate; int BitsPerComponent; float *Decode; gs_function_t *Function;
    int BitsPerFlag;
} gs_shading_FfGt_params_t;






typedef struct gs_shading_LfGt_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias; gs_data_source_t DataSource; int BitsPerCoordinate; int BitsPerComponent; float *Decode; gs_function_t *Function;
    int VerticesPerRow;
} gs_shading_LfGt_params_t;






typedef struct gs_shading_Cp_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias; gs_data_source_t DataSource; int BitsPerCoordinate; int BitsPerComponent; float *Decode; gs_function_t *Function;
    int BitsPerFlag;
} gs_shading_Cp_params_t;






typedef struct gs_shading_Tpp_params_s {
    gs_color_space *ColorSpace; gx_cie_joint_caches *cie_joint_caches; gs_client_color *Background; bool have_BBox; gs_rect BBox; bool AntiAlias; gs_data_source_t DataSource; int BitsPerCoordinate; int BitsPerComponent; float *Decode; gs_function_t *Function;
    int BitsPerFlag;
} gs_shading_Tpp_params_t;
# 214 "./base/gsshade.h"
void gs_shading_Fb_params_init(gs_shading_Fb_params_t * params);
void gs_shading_A_params_init(gs_shading_A_params_t * params);
void gs_shading_R_params_init(gs_shading_R_params_t * params);
void gs_shading_FfGt_params_init(gs_shading_FfGt_params_t * params);
void gs_shading_LfGt_params_init(gs_shading_LfGt_params_t * params);
void gs_shading_Cp_params_init(gs_shading_Cp_params_t * params);
void gs_shading_Tpp_params_init(gs_shading_Tpp_params_t * params);


int gs_shading_Fb_init(gs_shading_t ** ppsh,
                       const gs_shading_Fb_params_t * params,
                       gs_memory_t * mem);
int gs_shading_A_init(gs_shading_t ** ppsh,
                      const gs_shading_A_params_t * params,
                      gs_memory_t * mem);
int gs_shading_R_init(gs_shading_t ** ppsh,
                      const gs_shading_R_params_t * params,
                      gs_memory_t * mem);
int gs_shading_FfGt_init(gs_shading_t ** ppsh,
                         const gs_shading_FfGt_params_t * params,
                         gs_memory_t * mem);
int gs_shading_LfGt_init(gs_shading_t ** ppsh,
                         const gs_shading_LfGt_params_t * params,
                         gs_memory_t * mem);
int gs_shading_Cp_init(gs_shading_t ** ppsh,
                       const gs_shading_Cp_params_t * params,
                       gs_memory_t * mem);
int gs_shading_Tpp_init(gs_shading_t ** ppsh,
                        const gs_shading_Tpp_params_t * params,
                        gs_memory_t * mem);
# 263 "./base/gsshade.h"
int gs_shading_do_fill_rectangle(const gs_shading_t *psh,
                         const gs_fixed_rect *prect, gx_device *dev,
                         gs_imager_state *pis, bool fill_background);


int gs_shading_path_add_box(gx_path *ppath, const gs_rect *pbox,
                     const gs_matrix_fixed *pmat);
# 23 "./base/gxshade.h" 2
# 66 "./base/gxshade.h"
typedef struct gs_shading_Fb_s {
    gs_shading_head_t head;
    gs_shading_Fb_params_t params;
} gs_shading_Fb_t;
int gs_shading_Fb_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);

typedef struct gs_shading_A_s {
    gs_shading_head_t head;
    gs_shading_A_params_t params;
} gs_shading_A_t;
int gs_shading_A_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);

typedef struct gs_shading_R_s {
    gs_shading_head_t head;
    gs_shading_R_params_t params;
} gs_shading_R_t;
int gs_shading_R_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);

typedef struct gs_shading_FfGt_s {
    gs_shading_head_t head;
    gs_shading_FfGt_params_t params;
} gs_shading_FfGt_t;
int gs_shading_FfGt_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);

typedef struct gs_shading_LfGt_s {
    gs_shading_head_t head;
    gs_shading_LfGt_params_t params;
} gs_shading_LfGt_t;
int gs_shading_LfGt_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);

typedef struct gs_shading_Cp_s {
    gs_shading_head_t head;
    gs_shading_Cp_params_t params;
} gs_shading_Cp_t;
int gs_shading_Cp_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);

typedef struct gs_shading_Tpp_s {
    gs_shading_head_t head;
    gs_shading_Tpp_params_t params;
} gs_shading_Tpp_t;
int gs_shading_Tpp_fill_rectangle(const gs_shading_t *psh, const gs_rect *prect, const gs_fixed_rect *prect_clip, gx_device *dev, gs_imager_state *pis);


typedef struct shade_coord_stream_s shade_coord_stream_t;
struct shade_coord_stream_s {
    stream ds;

    stream *s;
    uint bits;
    int left;
    bool ds_EOF;
    const gs_shading_mesh_params_t *params;
    const gs_matrix_fixed *pctm;
    int (*get_value)(shade_coord_stream_t *cs, int num_bits, uint *pvalue);
    int (*get_decoded)(shade_coord_stream_t *cs, int num_bits,
                       const float decode[2], float *pvalue);
    void (*align)(shade_coord_stream_t *cs, int radix);
    bool (*is_eod)(const shade_coord_stream_t *cs);
};


typedef struct mesh_vertex_s {
    gs_fixed_point p;
    float cc[(64)];
} mesh_vertex_t;


typedef struct shading_vertex_s shading_vertex_t;



typedef struct patch_color_s patch_color_t;



void shade_next_init(shade_coord_stream_t * cs,
                     const gs_shading_mesh_params_t * params,
                     const gs_imager_state * pis);


int shade_next_flag(shade_coord_stream_t * cs, int BitsPerFlag);


int shade_next_coords(shade_coord_stream_t * cs, gs_fixed_point * ppt,
                      int num_points);


int shade_next_color(shade_coord_stream_t * cs, float *pc);


int shade_next_vertex(shade_coord_stream_t * cs, shading_vertex_t * vertex,
                      patch_color_t *c);
# 204 "./base/gxshade.h"
typedef struct shading_fill_state_s {
    gx_device *dev; gs_imager_state *pis; const gs_color_space *direct_space; int num_components; float cc_max_error[(64)]; gx_device *trans_device; gsicc_link_t *icclink;
} shading_fill_state_t;


int shade_init_fill_state(shading_fill_state_t * pfs,
                          const gs_shading_t * psh, gx_device * dev,
                          gs_imager_state * pis);






int shade_fill_path(const shading_fill_state_t * pfs, gx_path * ppath,
                    gx_device_color * pdevc, const gs_fixed_point *fill_adjust);
# 56 "./base/gxclrast.c" 2
# 1 "./base/gxshade4.h" 1
# 60 "./base/gxshade4.h"
typedef struct mesh_frame_s {
    mesh_vertex_t va, vb, vc;
    bool check_clipping;
} mesh_frame_t;
# 78 "./base/gxshade4.h"
typedef struct mesh_fill_state_s {
    gx_device *dev; gs_imager_state *pis; const gs_color_space *direct_space; int num_components; float cc_max_error[(64)]; gx_device *trans_device; gsicc_link_t *icclink; const gs_shading_mesh_t *pshm; gs_fixed_rect rect;
} mesh_fill_state_t;


typedef struct wedge_vertex_list_elem_s wedge_vertex_list_elem_t;
struct wedge_vertex_list_elem_s {
    gs_fixed_point p;
    int level;
    bool divide_count;
    wedge_vertex_list_elem_t *next, *prev;
};
typedef struct {
    bool last_side;
    wedge_vertex_list_elem_t *beg, *end;
} wedge_vertex_list_t;
# 102 "./base/gxshade4.h"
struct patch_color_s {
    float t[2];
    gs_client_color cc;





};
# 119 "./base/gxshade4.h"
typedef struct gs_color_index_cache_s gs_color_index_cache_t;
# 128 "./base/gxshade4.h"
struct patch_fill_state_s {
    gx_device *dev; gs_imager_state *pis; const gs_color_space *direct_space; int num_components; float cc_max_error[(64)]; gx_device *trans_device; gsicc_link_t *icclink; const gs_shading_mesh_t *pshm; gs_fixed_rect rect;
    const gs_function_t *Function;
    int function_arg_shift;
    bool vectorization;
    int n_color_args;
    fixed max_small_coord;
    wedge_vertex_list_elem_t *wedge_vertex_list_elem_buffer;
    wedge_vertex_list_elem_t *free_wedge_vertex;
    int wedge_vertex_list_elem_count;
    int wedge_vertex_list_elem_count_max;
    gs_client_color color_domain;
    fixed decomposition_limit;
    fixed fixed_flat;
    double smoothness;
    bool maybe_self_intersecting;
    bool monotonic_color;
    bool linear_color;
    bool unlinear;
    bool inside;
    int color_stack_size;
    int color_stack_step;
    byte *color_stack_ptr;
    byte *color_stack;
    byte *color_stack_limit;
    gs_memory_t *memory;
    gs_color_index_cache_t *pcic;
} ;


struct shading_vertex_s {
    gs_fixed_point p;
    const patch_color_t *c;
};


typedef struct patch_curve_s {
    mesh_vertex_t vertex;
    gs_fixed_point control[2];
    bool straight;
} patch_curve_t;

typedef struct {
    const shading_vertex_t *p[2][2];
    wedge_vertex_list_t *l0001, *l0111, *l1110, *l1000;
} quadrangle_patch;


int mesh_init_fill_state(mesh_fill_state_t * pfs,
                          const gs_shading_mesh_t * psh,
                          const gs_fixed_rect * rect_clip,
                          gx_device * dev, gs_imager_state * pis);

int init_patch_fill_state(patch_fill_state_t *pfs);
bool term_patch_fill_state(patch_fill_state_t *pfs);
int gx_init_patch_fill_state_for_clist(gx_device *dev, patch_fill_state_t *pfs, gs_memory_t *memory);

int mesh_triangle(patch_fill_state_t *pfs,
    const shading_vertex_t *p0, const shading_vertex_t *p1, const shading_vertex_t *p2);

int mesh_padding(patch_fill_state_t *pfs, const gs_fixed_point *p0, const gs_fixed_point *p1,
            const patch_color_t *c0, const patch_color_t *c1);

int patch_fill(patch_fill_state_t * pfs, const patch_curve_t curve[4],
           const gs_fixed_point interior[4],
           void (*transform) (gs_fixed_point *, const patch_curve_t[4],
                              const gs_fixed_point[4], double, double));

int constant_color_quadrangle(patch_fill_state_t *pfs, const quadrangle_patch *p, bool self_intersecting);

int wedge_vertex_list_elem_buffer_alloc(patch_fill_state_t *pfs);
void wedge_vertex_list_elem_buffer_free(patch_fill_state_t *pfs);

void patch_resolve_color(patch_color_t * ppcr, const patch_fill_state_t *pfs);

int gx_shade_background(gx_device *pdev, const gs_fixed_rect *rect,
        const gx_device_color *pdevc, gs_logical_operation_t log_op);

int patch_color_to_device_color(const patch_fill_state_t *pfs,
        const patch_color_t *c, gx_device_color *pdevc);

byte *reserve_colors(patch_fill_state_t *pfs, patch_color_t *c0[], int n);
void release_colors(patch_fill_state_t *pfs, byte *ptr, int n);

int gx_fill_triangle_small(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const frac31 *c0, const frac31 *c1, const frac31 *c2);
# 57 "./base/gxclrast.c" 2
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
# 58 "./base/gxclrast.c" 2
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
# 59 "./base/gxclrast.c" 2

typedef const gx_device_halftone_resource_t *const *(*gx_dht_proc)(void); extern const gx_dht_proc gx_device_halftone_list[];
extern const gx_image_type_t * const gx_image_type_table[];


extern const gs_color_space_type gs_color_space_type_Indexed;
# 95 "./base/gxclrast.c"
static long
cmd_get_w(const byte * p, const byte ** rp)
{
    int val = *p++ & 0x7f;
    int shift = 7;

    for (; val |= (int)(*p & 0x7f) << shift, *p++ > 0x7f; shift += 7);
    *rp = p;
    return val;
}







static frac31
cmd_get_frac31(const byte * p, const byte ** rp)
{
    frac31 val = (*p++ & 0xFE) << 24;
    int shift = 24 - 7;

    for (; val |= (frac31)(*p & 0xFE) << shift, *p++ & 1; shift -= 7);
    *rp = p;
    return val;
}
# 130 "./base/gxclrast.c"
typedef struct command_buf_s {
    byte *data;
    uint size;
    const byte *ptr;
    const byte *warn_limit;
    const byte *end;
    stream *s;
    int end_status;
} command_buf_t;


static void
set_cb_end(command_buf_t *pcb, const byte *end)
{
    pcb->end = end;
    pcb->warn_limit = pcb->data + (pcb->size - (2 + sizeof(float) + sizeof(float) + (11 * sizeof(float)) ) + 1);
    if ( pcb->warn_limit > pcb->end )
        pcb->warn_limit = pcb->end;


}


static int
top_up_cbuf(command_buf_t *pcb, const byte **pcbp)
{
    uint nread;
    const byte *cbp = *pcbp;
    byte *cb_top = pcb->data + (pcb->end - cbp);




    if (pcb->end - cbp >= pcb->size) {
        errprintf(pcb->s->memory, "Clist I/O error: cbp past end of buffer\n");
        return ((-12));
    }

    if ((((pcb->s)->cursor.r.ptr >= (pcb->s)->cursor.r.limit) && (pcb->s)->end_status == ((int)(-1)))) {

        pcb->end_status = pcb->s->end_status;
        return 0;
    }
# 181 "./base/gxclrast.c"
    memmove(pcb->data, cbp, pcb->end - cbp);
    nread = pcb->end - cb_top;
    pcb->end_status = sgets(pcb->s, cb_top, nread, &nread);
    if ( nread == 0 ) {

        if (cb_top >= pcb->end) {

            *pcbp = pcb->data;
            pcb->data[0] = cmd_opv_end_run;
            return ((-12));
        }
        *cb_top = cmd_opv_end_run;
        nread = 1;
    }
    set_cb_end(pcb, cb_top + nread);
    do { } while (0);
    *pcbp = pcb->data;
    return 0;
}


static const byte *
cmd_read_data(command_buf_t *pcb, byte *ptr, uint rsize, const byte *cbp)
{
    if (pcb->end - cbp >= rsize) {
        memmove(ptr, cbp, rsize);
        return cbp + rsize;
    } else {
        uint cleft = pcb->end - cbp;
        uint rleft = rsize - cleft;

        memmove(ptr, cbp, cleft);
        sgets(pcb->s, ptr + cleft, rleft, &rleft);
        return pcb->end;
    }
}




static __inline__ const byte *
cmd_copy_value(void *pvar, int var_size, const byte *cbp)
{
    memcpy(pvar, cbp, var_size);
    return cbp + var_size;
}
# 235 "./base/gxclrast.c"
typedef struct ht_buff_s {
    uint ht_size, read_size;
    byte * pcurr;
    byte * pbuff;
} ht_buff_t;





static int read_set_tile_size(command_buf_t *pcb, tile_slot *bits, bool for_pattern);
static int read_set_bits(command_buf_t *pcb, tile_slot *bits,
                          int compress, gx_clist_state *pcls,
                          gx_strip_bitmap *tile, tile_slot **pslot,
                          gx_device_clist_reader *cdev, gs_memory_t *mem);
static int read_set_misc2(command_buf_t *pcb, gs_imager_state *pis,
                           segment_notes *pnotes);
static int read_set_color_space(command_buf_t *pcb, gs_imager_state *pis,
                                 gs_color_space **ppcs, gx_device_clist_reader *cdev,
                                 gs_memory_t *mem);
static int read_begin_image(command_buf_t *pcb, gs_image_common_t *pic,
                             gs_color_space *pcs);
static int read_put_params(command_buf_t *pcb, gs_imager_state *pis,
                            gx_device_clist_reader *cdev,
                            gs_memory_t *mem);
static int read_create_compositor(command_buf_t *pcb, gs_memory_t *mem, gs_composite_t **ppcomp);
static int apply_create_compositor(gx_device_clist_reader *cdev, gs_imager_state *pis,
                                   gs_memory_t *mem, gs_composite_t *pcomp,
                                   int x0, int y0, gx_device **ptarget);
static int read_alloc_ht_buff(ht_buff_t *, uint, gs_memory_t *);
static int read_ht_segment(ht_buff_t *, command_buf_t *, gs_imager_state *,
                            gx_device *, gs_memory_t *);

static const byte *cmd_read_rect(int, gx_cmd_rect *, const byte *);
static const byte *cmd_read_short_bits(command_buf_t *pcb, byte *data, int tot_bytes,
                                        int width_bytes, int height,
                                        uint raster, const byte *cbp);
static int cmd_select_map(cmd_map_index, cmd_map_contents,
                           gs_imager_state *, int **,
                           frac **, uint *, gs_memory_t *);
static int cmd_create_dev_ht(gx_device_halftone **, gs_memory_t *);
static int cmd_resize_halftone(gx_device_halftone **, uint,
                                gs_memory_t *);
static int clist_decode_segment(gx_path *, int, fixed[6],
                                 gs_fixed_point *, int, int,
                                 segment_notes);
static int clist_do_polyfill(gx_device *, gx_path *,
                              const gx_drawing_color *,
                              gs_logical_operation_t);

static __inline__ void
enqueue_compositor(gs_composite_t **ppcomp_first, gs_composite_t **ppcomp_last, gs_composite_t *pcomp)
{
    if (*ppcomp_last == ((void*)0)) {
        pcomp->prev = pcomp->next = ((void*)0);
        *ppcomp_last = *ppcomp_first = pcomp;
    } else {
        (*ppcomp_last)->next = pcomp;
        pcomp->prev = *ppcomp_last;
        pcomp->next = ((void*)0);
        *ppcomp_last = pcomp;
    }
}
# 331 "./base/gxclrast.c"
static __inline__ int
dequeue_compositor(gs_composite_t **ppcomp_first, gs_composite_t **ppcomp_last, gs_composite_t *pcomp)
{
    if (*ppcomp_last == *ppcomp_first) {
        if (*ppcomp_last == pcomp) {
            *ppcomp_last = *ppcomp_first = ((void*)0);
            return 0;
        } else
            return ((-28));
    } else {
        gs_composite_t *pcomp_next = pcomp->next, *pcomp_prev = pcomp->prev;

        if (*ppcomp_last == pcomp)
            *ppcomp_last = pcomp->prev;
        else
            pcomp_next->prev = pcomp_prev;
        if (*ppcomp_first == pcomp)
            *ppcomp_first = pcomp->next;
        else
            pcomp_prev->next = pcomp_next;
        pcomp->next = pcomp->prev = ((void*)0);
        return 0;
    }
}

static __inline__ void
free_compositor(gs_composite_t *pcomp, gs_memory_t *mem)
{
    ((mem)->procs.free_object(mem, pcomp, "free_compositor"));
}

static __inline__ bool
is_null_compositor_op(const byte *cbp, int *length)
{
    if (cbp[0] == cmd_opv_end_run) {
        *length = 1;
        return ((bool)1);
    }
    return ((bool)0);
}

static int
execute_compositor_queue(gx_device_clist_reader *cdev, gx_device **target, gx_device **tdev, gs_imager_state *pis,
                         gs_composite_t **ppcomp_first, gs_composite_t **ppcomp_last, gs_composite_t *pcomp_from,
                         int x0, int y0, gs_memory_t *mem, bool idle)
{
    while (pcomp_from != ((void*)0)) {
        gs_composite_t *pcomp = pcomp_from;
        int code;

        pcomp_from = pcomp->next;
        code = dequeue_compositor(ppcomp_first, ppcomp_last, pcomp);
        if (code < 0)
            return code;
        pcomp->idle |= idle;
        code = apply_create_compositor(cdev, pis, mem, pcomp, x0, y0, target);
        if (code < 0)
            return code;
        *tdev = *target;
    }
    return 0;
}

static void
mark_as_idle(gs_composite_t *pcomp_start, gs_composite_t *pcomp_end)
{
    gs_composite_t *pcomp = pcomp_start;

    while (pcomp != ((void*)0)) {
        pcomp->idle = ((bool)1);
        if (pcomp == pcomp_end)
            break;
        pcomp = pcomp->next;
    }
}

static __inline__ int
drop_compositor_queue(gs_composite_t **ppcomp_first, gs_composite_t **ppcomp_last,
                      gs_composite_t *pcomp_from, gs_memory_t *mem, int x0, int y0,
                      gs_imager_state *pis)
{
    gs_composite_t *pcomp;

    do {
        int code;

        pcomp = *ppcomp_last;
        if (pcomp == ((void*)0))
            return 0;
        dequeue_compositor(ppcomp_first, ppcomp_last, *ppcomp_last);
        code = pcomp->type->procs.adjust_ctm(pcomp, x0, y0, pis);
        if (code < 0)
            return code;
        free_compositor(pcomp, mem);
    } while (pcomp != pcomp_from);
    return 0;
}

static int
read_set_misc_map(byte cb, command_buf_t *pcb, gs_imager_state *pis, gs_memory_t *mem)
{
    const byte *cbp = pcb->ptr;
    frac *mdata;
    int *pcomp_num;
    uint count;
    cmd_map_contents cont =
        (cmd_map_contents)(cb & 0x30) >> 4;
    int code;

    code = cmd_select_map(cb & 0xf, cont,
                          pis,
                          &pcomp_num,
                          &mdata, &count, mem);

    if (code < 0)
        return code;

    if (pcomp_num == ((void*)0))
        cbp++;
    else {
        *pcomp_num = (int) *cbp++;
        do { } while (0);
    }
    if (cont == cmd_map_other) {
        cbp = cmd_read_data(pcb, (byte *)mdata, count, cbp);
# 468 "./base/gxclrast.c"
    }


    gx_imager_set_effective_xfer(pis);
    pcb->ptr = cbp;
    return 0;
}

int
clist_playback_band(clist_playback_action playback_action,
                    gx_device_clist_reader *cdev, stream *s,
                    gx_device *target, int x0, int y0, gs_memory_t * mem)
{
    byte *cbuf_storage;
    command_buf_t cbuf;


    byte *data_bits = 0;
    const byte *cbp;
    int dev_depth;
    int dev_depth_bytes;
    int odd_delta_shift;
    int num_zero_bytes;
    gx_device *tdev;
    gx_clist_state state;
    gx_color_index *set_colors;
    gx_device_color *set_dev_colors;
    tile_slot *state_slot;
    gx_strip_bitmap state_tile;
    tile_slot tile_bits;
    gs_int_point tile_phase, color_phase;
    gx_path path;
    bool in_path;
    gs_fixed_point ppos;
    gx_clip_path clip_path;
    bool use_clip;
    gx_clip_path *pcpath;
    gx_device_cpath_accum clip_accum;
    gs_fixed_rect target_box;
    struct _cas {
        bool lop_enabled;
        gx_device_color dcolor;
    } clip_save;
    bool in_clip = ((bool)0);
    gs_imager_state imager_state;
    gx_device_color dev_color;
    float dash_pattern[11];
    gx_fill_params fill_params;
    gx_stroke_params stroke_params;
    gs_halftone_type halftone_type;
    union im_ {
        gs_image_common_t c;
        gs_data_image_t d;
        gs_image1_t i1;
        gs_image4_t i4;
    } image;
    gs_int_rect image_rect;
    gs_color_space *pcs = ((void*)0);
    gx_image_enum_common_t *image_info;
    gx_image_plane_t planes[32];
    uint data_height;
    uint data_size;
    byte *data_on_heap;
    fixed vs[6];
    segment_notes notes;
    int data_x;
    int code = 0;
    ht_buff_t ht_buff;
    gx_device *const orig_target = target;
    gx_device_clip clipper_dev;
    bool clipper_dev_open;
    patch_fill_state_t pfs;
    int op = 0;
    int plane_height = 0;




    gs_composite_t *pcomp_first = ((void*)0), *pcomp_last = ((void*)0);
    tile_slot bits;


    if ((cbuf_storage = (*(mem)->procs.alloc_bytes)(mem, 4096 + sizeof(double), "clist_playback_band(cbuf_storage)")) == ((void*)0)) {

        return ((-25));
    }
    cbuf.data = (byte *)cbuf_storage;
    cbuf.size = 4096;
    cbuf.s = s;
    cbuf.end_status = 0;
    set_cb_end(&cbuf, cbuf.data + cbuf.size);
    cbp = cbuf.end;

    pfs.dev = ((void*)0);
    memset(&ht_buff, 0, sizeof(ht_buff));


    memset(&bits, 0, sizeof(bits));
    memset(&tile_bits, 0, sizeof(tile_bits));
    memset(&clip_save, 0, sizeof(clip_save));
    memset(&state_slot, 0, sizeof(state_slot));
    ppos.x = ppos.y = 0;

in:
    tdev = target;
    set_colors = state.colors;
    set_dev_colors = state.tile_color_devn;
    use_clip = ((bool)0);
    pcpath = ((void*)0);
    clipper_dev_open = ((bool)0);
    notes = sn_none;
    data_x = 0;
    {
        static const gx_clist_state cls_initial = { { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, { (&gx_dc_type_data_none) }, 0, 0L, 0L, { 0, 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, { {((void*)0)}, {((void*)0)} }, { 0, 0, 0, 0 }, (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0)), 0, 0, 0, 0, 0x3fff, { 0, 0 }, { 0, 0, { { (~(-1 << ((1 << 2) * 8 - 1))), (~(-1 << ((1 << 2) * 8 - 1))) }, { (-1 << ((1 << 2) * 8 - 1)), (-1 << ((1 << 2) * 8 - 1)) } } } };

        state = cls_initial;
    }
    state_tile.id = 0L;
    state_tile.shift = state_tile.rep_shift = 0;
    state_tile.size.x = state_tile.size.y = 0;
    state_tile.num_planes = 1;
    tile_phase.x = color_phase.x = x0;
    tile_phase.y = color_phase.y = y0;
    (void)gx_path_init_local_shared(&path, ((void*)0), mem);
    in_path = ((bool)0);




    {
        gs_fixed_rect cbox;

        (void)gx_cpath_init_local_shared(&clip_path, ((void*)0), mem);
        cbox.p.x = 0;
        cbox.p.y = 0;
        cbox.q.x = cdev->width;
        cbox.q.y = cdev->height;
        gx_cpath_from_rectangle(&clip_path, &cbox);
    }
    if (target != 0)
        (*((target)->procs.get_clipping_box))(target, &target_box);
    imager_state = clist_imager_state_initial;
    code = gs_imager_state_initialize(&imager_state, mem);


    do { if (imager_state.icc_link_cache) { do { do { } while (0); (imager_state.icc_link_cache)->rc.ref_count += (-1); } while (0); if (!(imager_state.icc_link_cache)->rc.ref_count) { do { do { } while (0); (imager_state.icc_link_cache)->rc.free((imager_state.icc_link_cache)->rc.memory, (void *)(imager_state.icc_link_cache), "clist_playback_band"); } while (0); (imager_state.icc_link_cache) = 0; } else do { } while (0); } } while (0);
    imager_state.icc_link_cache = cdev->icc_cache_cl;

    gp_monitor_enter(&(cdev->icc_cache_cl->lock)->native);
    do { if (cdev->icc_cache_cl) do { (cdev->icc_cache_cl)->rc.ref_count++; do { } while (0); } while (0); } while (0);
    gp_monitor_leave(&(cdev->icc_cache_cl->lock)->native);
    if (code < 0)
        goto out;

    imager_state.line_params.dash.pattern = dash_pattern;
    if (tdev != 0) {
        gx_set_cmap_procs(&imager_state, tdev);

        if ( !(tdev->color_info.max_gray > 15 || tdev->color_info.max_color > 15) &&
             playback_action == playback_action_render_no_pdf14)
             playback_action = playback_action_render;
    }
    gx_imager_setscreenphase(&imager_state, -x0, -y0, gs_color_select_all);
    halftone_type = ht_type_none;
    pcs = gs_cspace_new_DeviceGray(mem);
    if (pcs == ((void*)0)) {
        code = ((-25));
        goto out;
    }
    ((&dev_color)->type = (&gx_dc_type_data_none));
    data_bits = (*(mem)->procs.alloc_bytes)(mem, 4096, "clist_playback_band(data_bits)");

    if (data_bits == 0) {
        code = ((-25));
        goto out;
    }
    while (code >= 0) {
        int compress;
        int depth = 0x7badf00d;
        int raster = 0x7badf00d;
        byte *source = ((void*)0);
        gx_color_index colors[2];
        gx_color_index *pcolor;
        gx_device_color *pdcolor = ((void*)0);
        gs_logical_operation_t log_op;


        if (cbp >= cbuf.warn_limit) {
            if (cbuf.end_status < 0) {
                if (cbp >= cbuf.end) {
                    code = (cbuf.end_status == ((int)(-1)) ? 0 :
                            ((-12)));
                    break;
                }
            } else {
                code = top_up_cbuf(&cbuf, &cbp);
                if (code < 0)
                    return code;
            }
        }
        op = *cbp++;
# 681 "./base/gxclrast.c"
        switch (op >> 4) {
            case cmd_op_misc >> 4:
                switch (op) {
                    case cmd_opv_end_run:
                        do { } while (0);
                        continue;
                    case cmd_opv_set_tile_size:
                        cbuf.ptr = cbp;
                        code = read_set_tile_size(&cbuf, &tile_bits,
                                    gx_device_is_pattern_clist((gx_device *)cdev));
                        cbp = cbuf.ptr;
                        if (code < 0)
                            goto out;
                        continue;
                    case cmd_opv_set_tile_phase:
                        do { if ( *cbp < 0x80 ) state.tile_phase.x = *cbp++; else { const byte *_cbp; state.tile_phase.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                        do { if ( *cbp < 0x80 ) state.tile_phase.y = *cbp++; else { const byte *_cbp; state.tile_phase.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                        do { } while (0);


                        goto set_phase;
                    case cmd_opv_set_tile_bits:
                        bits = tile_bits;
                        compress = 0;
                      stb:
                        cbuf.ptr = cbp;
                        code = read_set_bits(&cbuf, &bits, compress,
                                             &state, &state_tile, &state_slot,
                                             cdev, mem);
                        cbp = cbuf.ptr;
                        if (code < 0)
                            goto out;
                        goto stp;
                    case cmd_opv_set_bits:
                        compress = *cbp & 3;
                        bits.head.depth = *cbp++ >> 2;
                        do { if ( *cbp < 0x80 ) bits.width = *cbp++; else { const byte *_cbp; bits.width = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                        do { if ( *cbp < 0x80 ) bits.height = *cbp++; else { const byte *_cbp; bits.height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                        do { } while (0);


                        bits.raster =
                            ((uint)((((bits.width * bits.head.depth) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
                        bits.x_reps = bits.y_reps = 1;
                        bits.shift = bits.rep_shift = 0;
                        bits.num_planes = 1;
                        goto stb;
                    case cmd_opv_set_tile_color:
                        set_colors = state.tile_colors;
                        do { } while (0);
                        continue;
                    case cmd_opv_set_misc:
                        {
                            uint cb = *cbp++;

                            switch (cb >> 6) {
                                case (0 << 6) >> 6:
                                    do { if ( *cbp < 0x80 ) state.lop = *cbp++; else { const byte *_cbp; state.lop = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    state.lop = (state.lop << 6) + (cb & 0x3f);
                                    do { } while (0);
                                    if (state.lop_enabled)
                                        imager_state.log_op = state.lop;
                                    break;
                                case (1 << 6) >> 6:
                                    if (cb & 0x20)
                                        do { if ( *cbp < 0x80 ) data_x = *cbp++; else { const byte *_cbp; data_x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    else
                                        data_x = 0;
                                    data_x = (data_x << 5) + (cb & 0x1f);
                                    do { } while (0);
                                    break;
                                case (2 << 6) >> 6:
                                    cbuf.ptr = cbp;
                                    code = read_set_misc_map(cb, &cbuf, &imager_state, mem);
                                    if (code < 0)
                                        goto out;
                                    cbp = cbuf.ptr;
                                    break;
                                case (3 << 6) >> 6: {
                                    uint num_comp;

                                    halftone_type = cb & 0x3f;
                                    do { if ( *cbp < 0x80 ) num_comp = *cbp++; else { const byte *_cbp; num_comp = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    do { } while (0);

                                    code = cmd_resize_halftone(
                                                        &imager_state.dev_ht,
                                                        num_comp, mem);
                                    if (code < 0)
                                        goto out;
                                    break;
                                }
                                default:
                                    goto bad_op;
                            }
                        }
                        continue;
                    case cmd_opv_enable_lop:
                        state.lop_enabled = ((bool)1);
                        imager_state.log_op = state.lop;
                        do { } while (0);
                        continue;
                    case cmd_opv_disable_lop:
                        state.lop_enabled = ((bool)0);
                        imager_state.log_op = (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0));
                        do { } while (0);
                        continue;
                    case cmd_opv_end_page:
                        do { } while (0);




                        goto out;
                    case cmd_opv_delta_color0:
                        pcolor = &set_colors[0];
                        goto delta2_c;
                    case cmd_opv_delta_color1:
                        pcolor = &set_colors[1];
                      delta2_c:set_colors = state.colors;

                        {
                            gx_color_index delta = 0;
                            uint data;

                            dev_depth = (tdev->color_info.depth <= 8*sizeof(gx_color_index) ?
                                         tdev->color_info.depth : 8*sizeof(gx_color_index));
                            dev_depth_bytes = (dev_depth + 7) >> 3;
                            switch (dev_depth_bytes) {

                                case 8:
                                    data = *cbp++;
                                    delta = (((gx_color_index)
                                        ((data & 0xf0) << 4) + (data & 0x0f)) << 24) << 24;
                                case 6:
                                    data = *cbp++;
                                    delta |= (((gx_color_index)
                                        ((data & 0xf0) << 4) + (data & 0x0f)) << 16) << 16;
                                case 4:
                                    data = *cbp++;
                                    delta |= ((gx_color_index)
                                        ((data & 0xf0) << 4) + (data & 0x0f)) << 16;
                                case 2:
                                    data = *cbp++;
                                    delta |= ((gx_color_index)
                                        ((data & 0xf0) << 4) + (data & 0x0f));
                                    break;

                                case 7:
                                    data = *cbp++;
                                    delta = ((gx_color_index)
                                        ((data & 0xf0) << 4) + (data & 0x0f)) << 16;
                                case 5:
                                    data = *cbp++;
                                    delta |= ((gx_color_index)
                                        ((data & 0xf0) << 4) + (data & 0x0f));
                                case 3:
                                    data = *cbp++;
                                    odd_delta_shift = (dev_depth_bytes - 3) * 8;
                                    delta |= ((gx_color_index)
                                        ((data & 0xe0) << 3) + (data & 0x1f)) << odd_delta_shift;
                                    data = *cbp++;
                                    delta |= ((gx_color_index) ((data & 0xf8) << 2) + (data & 0x07))
                                                        << (odd_delta_shift + 11);
                            }
                            *pcolor += delta - cmd_delta_offsets[dev_depth_bytes];
                        }
                        if (sizeof(*pcolor) <= sizeof(ulong))
                            do { } while (0);
                        else
                            do { } while (0);

                        continue;
                    case cmd_opv_set_copy_color:
                        state.color_is_alpha = 0;
                        do { } while (0);
                        continue;
                    case cmd_opv_set_copy_alpha:
                        state.color_is_alpha = 1;
                        do { } while (0);
                        continue;
                    default:
                        goto bad_op;
                }

            case cmd_op_set_color0 >> 4:
                pcolor = &set_colors[0];
                goto set_color;
            case cmd_op_set_color1 >> 4:
                pcolor = &set_colors[1];
              set_color:set_colors = state.colors;







                num_zero_bytes = op & 0x0f;

                if (num_zero_bytes == 15)
                    *pcolor = ((gx_color_index)(~0));
                else {
                    gx_color_index color = 0;

                    dev_depth = (tdev->color_info.depth < 8*sizeof(gx_color_index) ?
                                 tdev->color_info.depth : 8*sizeof(gx_color_index));
                    dev_depth_bytes = (dev_depth + 7) >> 3;
                    switch (dev_depth_bytes - num_zero_bytes) {
                        case 8:
                            color = (gx_color_index) * cbp++;
                        case 7:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        case 6:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        case 5:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        case 4:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        case 3:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        case 2:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        case 1:
                            color = (color << 8) | (gx_color_index) * cbp++;
                        default:
                            break;
                    }
                    color <<= num_zero_bytes * 8;
                    *pcolor = color;
                }
                if (sizeof(*pcolor) <= sizeof(ulong))
                    do { } while (0);
                else
                    do { } while (0);

                continue;
            case cmd_op_fill_rect >> 4:
            case cmd_op_tile_rect >> 4:
                cbp = cmd_read_rect(op, &state.rect, cbp);
                break;
            case cmd_op_fill_rect_short >> 4:
            case cmd_op_tile_rect_short >> 4:
                state.rect.x += *cbp + (-128);
                state.rect.width += cbp[1] + (-128);
                if (op & 0xf) {
                    state.rect.height += (op & 0xf) + (-8);
                    cbp += 2;
                } else {
                    state.rect.y += cbp[2] + (-128);
                    state.rect.height += cbp[3] + (-128);
                    cbp += 4;
                }
                break;
            case cmd_op_fill_rect_tiny >> 4:
            case cmd_op_tile_rect_tiny >> 4:
                if (op & 8)
                    state.rect.x += state.rect.width;
                else {
                    int txy = *cbp++;

                    state.rect.x += (txy >> 4) + (-8);
                    state.rect.y += (txy & 0xf) + (-8);
                }
                state.rect.width += (op & 7) + (-4);
                break;
            case cmd_op_copy_mono_planes >> 4:
                do { if ( *cbp < 0x80 ) plane_height = *cbp++; else { const byte *_cbp; plane_height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                if (plane_height == 0) {

                    depth = 1;
                } else {
                    depth = tdev->color_info.depth;
                }
                do { } while (0);
                goto copy;
            case cmd_op_copy_color_alpha >> 4:
                if (state.color_is_alpha) {
                    if (!(op & 8))
                        depth = *cbp++;
                } else
                    depth = tdev->color_info.depth;
                plane_height = 0;
              copy:do { if ( *cbp < 0x80 ) state.rect.x = *cbp++; else { const byte *_cbp; state.rect.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                do { if ( *cbp < 0x80 ) state.rect.y = *cbp++; else { const byte *_cbp; state.rect.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                if (op & 8) {
# 976 "./base/gxclrast.c"
                    depth = state_slot->head.depth;
                    state.rect.width = state_slot->width;
                    state.rect.height = state_slot->height;
                    raster = state_slot->raster;
                    source = (byte *) (state_slot + 1);
                } else {

                    uint width_bits, width_bytes;
                    uint bytes;
                    uint planes = 1;
                    uint plane_depth = depth;
                    uint pln;
                    byte compression = op & 3;
                    uint out_bytes;

                    do { if ( *cbp < 0x80 ) state.rect.width = *cbp++; else { const byte *_cbp; state.rect.width = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                    do { if ( *cbp < 0x80 ) state.rect.height = *cbp++; else { const byte *_cbp; state.rect.height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                    if (plane_height != 0) {
                        planes = tdev->color_info.num_components;
                        plane_depth /= planes;
                    }
                    width_bits = state.rect.width * plane_depth;
                    bytes = clist_bitmap_bytes(width_bits,
                                               state.rect.height,
                                               op & 3, &width_bytes,
                                               (uint *)&raster);
                    if (planes > 1) {
                        out_bytes = raster * state.rect.height;
                        plane_height = state.rect.height;
                    } else {
                        out_bytes = bytes;
                    }
# 1022 "./base/gxclrast.c"
                    for (pln = 0; pln < planes; pln++) {
                        byte *plane_bits = data_bits + pln * plane_height * raster;


                        if (cbp + out_bytes >= cbuf.warn_limit) {
                            code = top_up_cbuf(&cbuf, &cbp);
                            if (code < 0)
                                return code;
                        }
                        if (pln)
                            compression = *cbp++;

                        if (compression == 3) {
                            cbp = cmd_read_data(&cbuf, plane_bits, 1, cbp);
                            if (width_bytes > 0 && state.rect.height > 0)
                                memset(plane_bits+1, *plane_bits, width_bytes * state.rect.height - 1);

                        } else if (compression) {
                            stream_cursor_read r;
                            stream_cursor_write w;




                            uint cleft = cbuf.end - cbp;

                            if (cleft < bytes && !cbuf.end_status) {
                                uint nread = 4096 - cleft;






                                memmove(cbuf.data, cbp, cleft);
                                cbuf.end_status = sgets(s, cbuf.data + cleft, nread, &nread);
                                set_cb_end(&cbuf, cbuf.data + cleft + nread);
                                cbp = cbuf.data;
                            }
                            r.ptr = cbp - 1;
                            r.limit = cbuf.end - 1;
                            w.ptr = plane_bits - 1;
                            w.limit = w.ptr + 4096;
                            switch (compression) {
                                case 1:
                                    {
                                        stream_RLD_state sstate;

                                        clist_rld_init(&sstate);

                                        (*s_RLD_template.process)
                                            ((stream_state *)&sstate, &r, &w, ((bool)1));
                                    }
                                    break;
                                case 2:
                                    {
                                        stream_CFD_state sstate;

                                        clist_cfd_init(&sstate,
                                        width_bytes << 3 ,
                                                       state.rect.height, mem);

                                        (*s_CFD_template.process)
                                            ((stream_state *)&sstate, &r, &w, ((bool)1));
                                        (*s_CFD_template.release)
                                            ((stream_state *)&sstate);
                                    }
                                    break;
                                default:
                                    goto bad_op;
                            }
                            cbp = r.ptr + 1;
                            if (pln == 0)
                                source = data_bits;
                        } else if ((state.rect.height > 1 && width_bytes != raster) ||
                                   (plane_height != 0)) {
                            cbp = cmd_read_short_bits(&cbuf, plane_bits, bytes, width_bytes,
                                                      state.rect.height, raster, cbp);
                            if (pln == 0)
                                source = data_bits;
                        } else {

                            cbp = cmd_read_data(&cbuf, cbuf.data, bytes, cbp);
                            source = cbuf.data;
                        }
                    }
# 1116 "./base/gxclrast.c"
                }
                break;
            case cmd_op_delta_tile_index >> 4:
                state.tile_index += (int)(op & 0xf) - 8;
                goto sti;
            case cmd_op_set_tile_index >> 4:
                state.tile_index =
                    ((op & 0xf) << 8) + *cbp++;
              sti:state_slot =
                    (tile_slot *) (cdev->chunk.data +
                                 cdev->tile_table[state.tile_index].offset);
                do { } while (0);


                state_tile.data = (byte *) (state_slot + 1);
              stp:state_tile.size.x = state_slot->width;
                state_tile.size.y = state_slot->height;
                state_tile.raster = state_slot->raster;
                state_tile.rep_width = state_tile.size.x /
                    state_slot->x_reps;
                state_tile.rep_height = state_tile.size.y /
                    state_slot->y_reps;
                state_tile.rep_shift = state_slot->rep_shift;
                state_tile.shift = state_slot->shift;
                state_tile.id = state_slot->id;
                state_tile.num_planes = state_slot->num_planes;
set_phase:
# 1157 "./base/gxclrast.c"
                if (state_tile.size.x)
                    tile_phase.x =
                        (state.tile_phase.x + x0) % state_tile.size.x;
                if (imager_state.dev_ht && imager_state.dev_ht->lcm_width)
                    color_phase.x =
                        (state.tile_phase.x + x0) %
                        imager_state.dev_ht->lcm_width;




                if (state_tile.size.y) {
                    int full_height;

                    if (state_tile.shift == 0)
                        full_height = state_tile.size.y;
                    else
                        full_height = state_tile.rep_height *
                            (state_tile.rep_width /
                             igcd(state_tile.rep_shift,
                                  state_tile.rep_width));
                    tile_phase.y =
                        (state.tile_phase.y + y0) % full_height;
                }
                if (imager_state.dev_ht && imager_state.dev_ht->lcm_height)
                    color_phase.y =
                        (state.tile_phase.y + y0) %
                        imager_state.dev_ht->lcm_height;
                gx_imager_setscreenphase(&imager_state,
                                         -(state.tile_phase.x + x0),
                                         -(state.tile_phase.y + y0),
                                         gs_color_select_all);
                continue;
            case cmd_op_misc2 >> 4:
                switch (op) {
                    case cmd_opv_set_fill_adjust:
                        cbp = cmd_copy_value(&imager_state.fill_adjust.x, sizeof(imager_state.fill_adjust.x), cbp);
                        cbp = cmd_copy_value(&imager_state.fill_adjust.y, sizeof(imager_state.fill_adjust.y), cbp);
                        do { } while (0);


                        continue;
                    case cmd_opv_set_ctm:
                        {
                            gs_matrix mat;

                            cbp = cmd_read_matrix(&mat, cbp);
                            do { } while (0);


                            mat.tx -= x0;
                            mat.ty -= y0;
                            gs_imager_setmatrix(&imager_state, &mat);
                        }
                        continue;
                    case cmd_opv_set_misc2:
                        cbuf.ptr = cbp;
                        code = read_set_misc2(&cbuf, &imager_state, &notes);
                        cbp = cbuf.ptr;
                        if (code < 0)
                            goto out;
                        continue;
                    case cmd_opv_set_dash:
                        {
                            int nb = *cbp++;
                            int n = nb & 0x3f;
                            float dot_length, offset;

                            cbp = cmd_copy_value(&dot_length, sizeof(dot_length), cbp);
                            cbp = cmd_copy_value(&offset, sizeof(offset), cbp);
                            memcpy(dash_pattern, cbp, n * sizeof(float));

                            gx_set_dash(&imager_state.line_params.dash,
                                        dash_pattern, n, offset,
                                        ((void*)0));
                            ((&imager_state.line_params.dash)->adapt = ((nb & 0x80) != 0));

                            gx_set_dot_length(&imager_state.line_params,
                                              dot_length,
                                              (nb & 0x40) != 0);
# 1250 "./base/gxclrast.c"
                            cbp += n * sizeof(float);
                        }
                        break;
                    case cmd_opv_enable_clip:
                        pcpath = (use_clip ? &clip_path : ((void*)0));
                        clipper_dev_open = ((bool)0);
                        do { } while (0);
                        break;
                    case cmd_opv_disable_clip:
                        pcpath = ((void*)0);
                        clipper_dev_open = ((bool)0);
                        do { } while (0);
                        break;
                    case cmd_opv_begin_clip:
                        pcpath = ((void*)0);
                        clipper_dev_open = ((bool)0);
                        in_clip = ((bool)1);
                        do { } while (0);
                        code = gx_cpath_reset(&clip_path);
                        if (code < 0)
                            goto out;
                        gx_cpath_accum_begin(&clip_accum, mem);
                        gx_cpath_accum_set_cbox(&clip_accum,
                                                &target_box);
                        tdev = (gx_device *)&clip_accum;
                        clip_save.lop_enabled = state.lop_enabled;
                        clip_save.dcolor = dev_color;

                        ((&dev_color)->colors.pure = ((gx_color_index)1), (&dev_color)->type = (&gx_dc_type_data_pure));
                        state.lop_enabled = ((bool)0);
                        imager_state.log_op = (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0));
                        break;
                    case cmd_opv_end_clip:
                        do { } while (0);
                        gx_cpath_accum_end(&clip_accum, &clip_path);
                        tdev = target;




                        {
                            gs_fixed_rect cbox;

                            gx_cpath_inner_box(&clip_path, &cbox);
                            use_clip =
                                !(cbox.p.x <= target_box.p.x &&
                                  cbox.q.x >= target_box.q.x &&
                                  cbox.p.y <= target_box.p.y &&
                                  cbox.q.y >= target_box.q.y);
                        }
                        pcpath = (use_clip ? &clip_path : ((void*)0));
                        clipper_dev_open = ((bool)0);
                        state.lop_enabled = clip_save.lop_enabled;
                        imager_state.log_op =
                            (state.lop_enabled ? state.lop :
                             (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0)));
                        dev_color = clip_save.dcolor;
                        in_clip = ((bool)0);
                        break;
                    case cmd_opv_set_color_space:
                        cbuf.ptr = cbp;
                        code = read_set_color_space(&cbuf, &imager_state,
                                                    &pcs, cdev, mem);
                        cbp = cbuf.ptr;
                        if (code < 0) {
                            if (code == (-15))
                                goto bad_op;
                            goto out;
                        }
                        break;
                    case cmd_op_fill_rect_hl:
                        {
                            gs_fixed_rect rect_hl;

                            cbp = cmd_read_rect(op & 0xf0, &state.rect, cbp);
                            if (dev_color.type != (&gx_dc_type_data_devn)) {
                                do { } while (0);
                                code = ((-20));
                                goto out;
                            }
                            do { } while (0);


                            rect_hl.p.x = ((fixed)(state.rect.x - x0)<<8);
                            rect_hl.p.y = ((fixed)(state.rect.y - y0)<<8);
                            rect_hl.q.x = ((fixed)(state.rect.width)<<8) + rect_hl.p.x;
                            rect_hl.q.y = ((fixed)(state.rect.height)<<8) + rect_hl.p.y;
                            code = ((tdev)->procs.fill_rectangle_hl_color) (tdev,
                                                        &rect_hl, ((void*)0),
                                                        &dev_color, ((void*)0));
                        }
                        continue;
                    case cmd_opv_begin_image_rect:
                        cbuf.ptr = cbp;
                        code = read_begin_image(&cbuf, &image.c, pcs);
                        cbp = cbuf.ptr;
                        if (code < 0)
                            goto out;
                        {
                            uint diff;

                            do { if ( *cbp < 0x80 ) image_rect.p.x = *cbp++; else { const byte *_cbp; image_rect.p.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                            do { if ( *cbp < 0x80 ) image_rect.p.y = *cbp++; else { const byte *_cbp; image_rect.p.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                            do { if ( *cbp < 0x80 ) diff = *cbp++; else { const byte *_cbp; diff = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                            image_rect.q.x = image.d.Width - diff;
                            do { if ( *cbp < 0x80 ) diff = *cbp++; else { const byte *_cbp; diff = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                            image_rect.q.y = image.d.Height - diff;
                            do { } while (0);


                        }
                        goto ibegin;
                    case cmd_opv_begin_image:
                        cbuf.ptr = cbp;
                        code = read_begin_image(&cbuf, &image.c, pcs);
                        cbp = cbuf.ptr;
                        if (code < 0)
                            goto out;
                        image_rect.p.x = 0;
                        image_rect.p.y = 0;
                        image_rect.q.x = image.d.Width;
                        image_rect.q.y = image.d.Height;
                        do { } while (0);

ibegin: do { } while (0);
                        {

                            ((tdev)->procs.set_graphics_type_tag)(tdev, GS_IMAGE_TAG);
                            code = (*((tdev)->procs.begin_typed_image))
                                (tdev, &imager_state, ((void*)0),
                                 (const gs_image_common_t *)&image,
                                 &image_rect, &dev_color, pcpath, mem,
                                 &image_info);
                        }
                        if (code < 0)
                            goto out;
                        break;
                    case cmd_opv_image_plane_data:
                        do { if ( *cbp < 0x80 ) data_height = *cbp++; else { const byte *_cbp; data_height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                        if (data_height == 0) {
                            do { } while (0);
                            code = gx_image_end(image_info, ((bool)1));
                            if (code < 0)
                                goto out;
                            continue;
                        }
                        {
                            uint flags;
                            int plane;
                            uint raster1 = 0xbaadf00d;

                            do { if ( *cbp < 0x80 ) flags = *cbp++; else { const byte *_cbp; flags = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                            for (plane = 0;
                                 plane < image_info->num_planes;
                                 ++plane, flags >>= 1
                                 ) {
                                if (flags & 1) {
                                    if (cbuf.end - cbp <
                                        2 * (((sizeof(uint)) * 8 + 6) / 7))
                                        code = top_up_cbuf(&cbuf, &cbp);
                                        if (code < 0)
                                            return code;
                                    do { if ( *cbp < 0x80 ) planes[plane].raster = *cbp++; else { const byte *_cbp; planes[plane].raster = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    if ((raster1 = planes[plane].raster) != 0)
                                        do { if ( *cbp < 0x80 ) data_x = *cbp++; else { const byte *_cbp; data_x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                } else {
                                    planes[plane].raster = raster1;
                                }
                                planes[plane].data_x = data_x;
                            }
                        }
                        goto idata;
                    case cmd_opv_image_data:
                        do { if ( *cbp < 0x80 ) data_height = *cbp++; else { const byte *_cbp; data_height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                        if (data_height == 0) {
                            do { } while (0);
                            code = gx_image_end(image_info, ((bool)1));
                            if (code < 0)
                                goto out;
                            continue;
                        }
                        {
                            uint bytes_per_plane;
                            int plane;

                            do { if ( *cbp < 0x80 ) bytes_per_plane = *cbp++; else { const byte *_cbp; bytes_per_plane = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                            do { } while (0);

                            for (plane = 0;
                                 plane < image_info->num_planes;
                                 ++plane
                                 ) {
                                planes[plane].data_x = data_x;
                                planes[plane].raster = bytes_per_plane;
                            }
                        }
idata: data_size = 0;
                        {
                            int plane;

                            for (plane = 0; plane < image_info->num_planes;
                                 ++plane)
                                data_size += planes[plane].raster;
                        }
                        data_size *= data_height;
                        data_on_heap = 0;
                        if (cbuf.end - cbp < data_size)
                            code = top_up_cbuf(&cbuf, &cbp);
                            if (code < 0)
                                return code;
                        if (cbuf.end - cbp >= data_size) {
                            planes[0].data = cbp;
                            cbp += data_size;
                        } else {
                            uint cleft = cbuf.end - cbp;
                            uint rleft = data_size - cleft;
                            byte *rdata;

                            if (data_size > cbuf.end - cbuf.data) {

                                rdata = data_on_heap =
                                    (*(mem)->procs.alloc_bytes)(mem, data_size, "clist image_data");

                                if (rdata == 0) {
                                    code = ((-25));
                                    goto out;
                                }
                            } else
                                rdata = cbuf.data;
                            memmove(rdata, cbp, cleft);
                            if (sgets(s, rdata + cleft, rleft, &rleft) < 0) {
                                code = ((-28));
                                goto out;
                            }
                            planes[0].data = rdata;
                            cbp = cbuf.end;
                        }
                        {
                            int plane;
                            const byte *data = planes[0].data;

                            for (plane = 0;
                                 plane < image_info->num_planes;
                                 ++plane
                                 ) {
                                if (planes[plane].raster == 0)
                                    planes[plane].data = 0;
                                else {
                                    planes[plane].data = data;
                                    data += planes[plane].raster *
                                        data_height;
                                }
                            }
                        }
# 1519 "./base/gxclrast.c"
                        code = gx_image_plane_data(image_info, planes,
                                                   data_height);
                        if (code < 0)
                            gx_image_end(image_info, ((bool)0));
                        if (data_on_heap)
                            ((mem)->procs.free_object(mem, data_on_heap, "clist image_data"));

                        data_x = 0;
                        if (code < 0)
                            goto out;
                        continue;
                    case cmd_opv_extend:
                        switch (*cbp++) {
                            case cmd_opv_ext_put_params:
                                cbuf.ptr = cbp;
                                code = read_put_params(&cbuf, &imager_state,
                                                        cdev, mem);
                                cbp = cbuf.ptr;
                                if (code > 0)
                                    break;
                                if (code < 0)
                                    goto out;
                                if (playback_action == playback_action_setup)
                                    goto out;
                                break;
                            case cmd_opv_ext_create_compositor:
                                do { } while (0);
                                cbuf.ptr = cbp;




                                gx_imager_setscreenphase(&imager_state,
                                            -x0, -y0, gs_color_select_all);
                                cbp -= 2;
                                for (;;) {




                                    int len;

                                    if (cbp >= cbuf.warn_limit) {
                                        code = top_up_cbuf(&cbuf, &cbp);
                                        if (code < 0)
                                            goto out;
                                    }
                                    if (cbp[0] == cmd_opv_extend && cbp[1] == cmd_opv_ext_create_compositor) {
                                        gs_composite_t *pcomp, *pcomp_opening;

                                        cbuf.ptr = cbp += 2;
                                        code = read_create_compositor(&cbuf, mem, &pcomp);
                                        if (code < 0)
                                            goto out;
                                        cbp = cbuf.ptr;
                                        if (pcomp == ((void*)0))
                                            continue;
                                        if (gs_is_pdf14trans_compositor(pcomp) &&
                                            playback_action == playback_action_render_no_pdf14) {

                                            ((mem)->procs.free_object(mem, pcomp, "read_create_compositor"));
                                            pcomp = ((void*)0);
                                            continue;
                                        }
                                        pcomp_opening = pcomp_last;
                                        code = pcomp->type->procs.is_closing(pcomp, &pcomp_opening, tdev);
                                        if (code < 0)
                                            goto out;
                                        else if (code == 0) {

                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                        } else if (code == 1) {

                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                            code = execute_compositor_queue(cdev, &target, &tdev,
                                                &imager_state, &pcomp_first, &pcomp_last, pcomp_opening, x0, y0, mem, ((bool)1));
                                            if (code < 0)
                                                goto out;
                                        } else if (code == 2) {

                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                            code = execute_compositor_queue(cdev, &target, &tdev,
                                                &imager_state, &pcomp_first, &pcomp_last, pcomp_first, x0, y0, mem, ((bool)0));
                                            if (code < 0)
                                                goto out;
                                        } else if (code == 3) {

                                            code = execute_compositor_queue(cdev, &target, &tdev,
                                                &imager_state, &pcomp_first, &pcomp_last, pcomp_opening, x0, y0, mem, ((bool)1));
                                            if (code < 0)
                                                goto out;
                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                        } else if (code == 4) {

                                            code = dequeue_compositor(&pcomp_first, &pcomp_last, pcomp_opening);
                                            if (code < 0)
                                                goto out;
                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                            free_compositor(pcomp_opening, mem);
                                        } else if (code == 5) {

                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                            code = drop_compositor_queue(&pcomp_first, &pcomp_last, pcomp_opening, mem, x0, y0, &imager_state);
                                            if (code < 0)
                                                goto out;
                                        } else if (code == 6) {

                                            enqueue_compositor(&pcomp_first, &pcomp_last, pcomp);
                                            mark_as_idle(pcomp_opening, pcomp);
                                        } else {
                                            code = ((-28));
                                            goto out;
                                        }
                                    } else if (is_null_compositor_op(cbp, &len)) {
                                        cbuf.ptr = cbp += len;
                                    } else if (cbp[0] == cmd_opv_end_page) {

                                        code = execute_compositor_queue(cdev, &target, &tdev,
                                                &imager_state, &pcomp_first, &pcomp_last, pcomp_first, x0, y0, mem, ((bool)1));
                                        if (code < 0)
                                            goto out;
                                        break;
                                    } else if (pcomp_last != ((void*)0) &&
                                            pcomp_last->type->procs.is_friendly(pcomp_last, cbp[0], cbp[1])) {







                                        uint cb;

                                        switch (*cbp++) {
                                            case cmd_opv_extend:
                                                switch (*cbp++) {
                                                    case cmd_opv_ext_put_halftone:
                                                        {
                                                            uint ht_size;

                                                            do { if (((ht_size) = *(cbp)) >= (1U << 7)) { uint tmp_w; (cbp) = enc_u_get_uint(&tmp_w, (cbp)); (ht_size) = tmp_w; } else ++(cbp); } while (0);
                                                            code = read_alloc_ht_buff(&ht_buff, ht_size, mem);
                                                            if (code < 0)
                                                                goto out;
                                                        }
                                                        break;
                                                    case cmd_opv_ext_put_ht_seg:
                                                        cbuf.ptr = cbp;
                                                        code = read_ht_segment(&ht_buff, &cbuf,
                                                                               &imager_state, tdev,
                                                                               mem);
                                                        cbp = cbuf.ptr;
                                                        if (code < 0)
                                                            goto out;
                                                        break;
                                                    default:
                                                        code = ((-28));
                                                        goto out;
                                                }
                                                break;
                                            case cmd_opv_set_misc:
                                                cb = *cbp++;
                                                switch (cb >> 6) {
                                                    case (2 << 6) >> 6:
                                                        cbuf.ptr = cbp;
                                                        code = read_set_misc_map(cb, &cbuf, &imager_state, mem);
                                                        if (code < 0)
                                                            goto out;
                                                        cbp = cbuf.ptr;
                                                        break;
                                                    default:
                                                        code = ((-28));
                                                        goto out;
                                                }
                                                break;
                                            default:
                                                code = ((-28));
                                                goto out;
                                        }
                                    } else {

                                        code = execute_compositor_queue(cdev, &target, &tdev,
                                            &imager_state, &pcomp_first, &pcomp_last, pcomp_first, x0, y0, mem, ((bool)0));
                                        if (code < 0)
                                            goto out;
                                        break;
                                    }
                                }
                                if (pcomp_last != ((void*)0)) {
                                    code = ((-28));
                                    goto out;
                                }
                                break;
                            case cmd_opv_ext_put_halftone:
                                {
                                    uint ht_size;

                                    do { } while (0);
                                    do { if (((ht_size) = *(cbp)) >= (1U << 7)) { uint tmp_w; (cbp) = enc_u_get_uint(&tmp_w, (cbp)); (ht_size) = tmp_w; } else ++(cbp); } while (0);
                                    code = read_alloc_ht_buff(&ht_buff, ht_size, mem);
                                    if (code < 0)
                                        goto out;
                                }
                                break;
                            case cmd_opv_ext_put_ht_seg:
                                do { } while (0);
                                cbuf.ptr = cbp;
                                code = read_ht_segment(&ht_buff, &cbuf,
                                                       &imager_state, tdev,
                                                       mem);
                                cbp = cbuf.ptr;
                                if (code < 0)
                                    goto out;
                                break;
                            case cmd_opv_ext_set_color_is_devn:
                                state.color_is_devn = ((bool)1);
                                do { } while (0);
                                break;
                            case cmd_opv_ext_unset_color_is_devn:
                                state.color_is_devn = ((bool)0);
                                do { } while (0);
                                break;
                            case cmd_opv_ext_tile_rect_hl:

                                cbp = cmd_read_rect(op & 0xf0, &state.rect, cbp);
                                do { } while (0);


                                code = (*((tdev)->procs.strip_tile_rect_devn))
                                    (tdev, &state_tile,
                                     state.rect.x - x0, state.rect.y - y0,
                                     state.rect.width, state.rect.height,
                                     &(state.tile_color_devn[0]),
                                     &(state.tile_color_devn[1]),
                                     tile_phase.x, tile_phase.y);
                                break;
                            case cmd_opv_ext_put_tile_devn_color0:
                                pdcolor = &set_dev_colors[0];
                                goto load_dcolor;
                            case cmd_opv_ext_put_tile_devn_color1:
                                pdcolor = &set_dev_colors[1];
                                goto load_dcolor;
                            case cmd_opv_ext_put_drawing_color:
                                pdcolor = &dev_color;
                    load_dcolor:{
                                    uint color_size;
                                    int left, offset, l;
                                    const gx_device_color_type_t * pdct;
                                    byte type_and_flag = *cbp++;
                                    byte is_continuation = type_and_flag & 0x80;

                                    do { } while (0);
                                    pdct = gx_get_dc_type_from_index(type_and_flag & 0x7F);
                                    if (pdct == 0) {
                                        code = ((-15));
                                        goto out;
                                    }
                                    offset = 0;
                                    if (is_continuation)
                                        do { if (((offset) = *(cbp)) >= (1U << 7)) { uint tmp_w; (cbp) = enc_u_get_uint(&tmp_w, (cbp)); (offset) = tmp_w; } else ++(cbp); } while (0);
                                    do { if (((color_size) = *(cbp)) >= (1U << 7)) { uint tmp_w; (cbp) = enc_u_get_uint(&tmp_w, (cbp)); (color_size) = tmp_w; } else ++(cbp); } while (0);
                                    left = color_size;
                                    if (!left) {


                                        code = pdct->read(pdcolor, &imager_state,
                                                          pdcolor, tdev, offset,
                                                          cbp, 0, mem);
                                        if (code < 0)
                                            goto out;
                                    }
                                    while (left) {
                                        if (cbuf.warn_limit - cbp < (int)left) {
                                            code = top_up_cbuf(&cbuf, &cbp);
                                            if (code < 0)
                                                return code;
                                        }
                                        l = (((left) < (cbuf.end - cbp)) ? (left) : (cbuf.end - cbp));
                                        code = pdct->read(pdcolor, &imager_state,
                                                          pdcolor, tdev, offset,
                                                          cbp, l, mem);
                                        if (code < 0)
                                            goto out;
                                        l = code;
                                        cbp += l;
                                        offset += l;
                                        left -= l;
                                    }
                                    code = (*(pdcolor)->type->load)(pdcolor, &imager_state, tdev, gs_color_select_texture);

                                    if (code < 0)
                                        goto out;
                                }
                                break;
                            default:
                                goto bad_op;
                        }
                        break;
                    default:
                        goto bad_op;
                }
                continue;
            case cmd_op_segment >> 4:
                {
                    int i;
                    static const byte op_num_operands[] = {
                        2, 2, 1, 1, 4, 6, 6, 6, 4, 4, 4, 4, 2, 2, 0, 0
                    };
                  rgapto:
                    if (!in_path) {
                        ppos.x = ((fixed)(state.rect.x)<<8);
                        ppos.y = ((fixed)(state.rect.y)<<8);
                        do { } while (0);

                        notes = sn_none;
                        in_path = ((bool)1);
                    }
                    for (i = 0; i < op_num_operands[op & 0xf]; ++i) {
                        fixed v;
                        int b = *cbp;

                        switch (b >> 5) {
                            case 0:
                            case 1:
                                vs[i++] =
                                    ((fixed) ((b ^ 0x20) - 0x20) << 13) +
                                    ((int)cbp[1] << 5) + (cbp[2] >> 3);
                                do { } while (0);
                                cbp += 2;
                                v = (int)((*cbp & 7) ^ 4) - 4;
                                break;
                            case 2:
                            case 3:
                                v = (b ^ 0x60) - 0x20;
                                break;
                            case 4:
                            case 5:







                                v = (((b ^ 0xa0) - 0x20) << 8) + (int)*++cbp;
                                break;
                            case 6:
                                v = (b ^ 0xd0) - 0x10;
                                vs[i] =
                                    ((v << 8) + cbp[1]) << (8 - 2);
                                do { } while (0);
                                cbp += 2;
                                continue;
                            default :
                                v = (int)(*++cbp ^ 0x80) - 0x80;
                                for (b = 0; b < sizeof(fixed) - 3; ++b)
                                    v = (v << 8) + *++cbp;
                                break;
                        }
                        cbp += 3;



                        vs[i] = (v << 16) + (uint) (cbp[-2] << 8) + cbp[-1];
                        do { } while (0);
                    }
                    do { } while (0);
                    code = clist_decode_segment(&path, op, vs, &ppos,
                                                x0, y0, notes);
                    if (code < 0)
                        goto out;
                }
                continue;
            case cmd_op_path >> 4:
                {
                    gx_path fpath;
                    gx_path *ppath;

                    if (op == cmd_opv_rgapto)
                        goto rgapto;

                    ppath = &path;

                    do { } while (0);

                    if (in_clip) {
                        (void)gx_path_init_local_shared(&fpath, ((void*)0), mem);
                        code = gx_path_copy_reducing(&path, &fpath, ((fixed)((((&imager_state)->flatness))*(float)(1<<8))), ((void*)0), (imager_state.accurate_curves ? pco_accurate : pco_none));


                        if (code < 0)
                            goto out;
                        ppath = &fpath;
                    }
                    switch (op) {
                        case cmd_opv_fill:
                            fill_params.rule = (-1);
                            goto fill;
                        case cmd_opv_eofill:
                            fill_params.rule = 1;
                        fill:
                            fill_params.adjust = imager_state.fill_adjust;
                            fill_params.flatness = imager_state.flatness;
                            code = (*((tdev)->procs.fill_path))(tdev, &imager_state, ppath, &fill_params, &dev_color, pcpath);



                            break;
                        case cmd_opv_stroke:
                            stroke_params.flatness = imager_state.flatness;
                            stroke_params.traditional = ((bool)0);
                            code = (*((tdev)->procs.stroke_path))
                                                       (tdev, &imager_state,
                                                       ppath, &stroke_params,
                                                       &dev_color, pcpath);
                            break;
                        case cmd_opv_polyfill:
                            code = clist_do_polyfill(tdev, ppath, &dev_color,
                                                     imager_state.log_op);
                            break;
                        case cmd_opv_fill_trapezoid:
                            {
                                gs_fixed_edge left, right;
                                fixed ybot, ytop;
                                int options, swap_axes, wh;
                                fixed x0f;
                                fixed y0f;
                                gx_device *ttdev = tdev;

                                if (pcpath != ((void*)0) && !clipper_dev_open) {
                                    gx_make_clip_device_on_stack(&clipper_dev, pcpath, tdev);
                                    clipper_dev_open = ((bool)1);
                                }
                                if (clipper_dev_open)
                                    ttdev = (gx_device *)&clipper_dev;





                                if (tdev->color_info.num_components != ttdev->color_info.num_components){


                                    ttdev->color_info.num_components = tdev->color_info.num_components;
                                    ttdev->color_info.depth = tdev->color_info.depth;
                                    memcpy(&(ttdev->color_info.comp_bits),&(tdev->color_info.comp_bits),(8 * 8));
                                    memcpy(&(ttdev->color_info.comp_shift),&(tdev->color_info.comp_shift),(8 * 8));
                                }
                                do { if ( *cbp < 0x80 ) left.start.x = *cbp++; else { const byte *_cbp; left.start.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) left.start.y = *cbp++; else { const byte *_cbp; left.start.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) left.end.x = *cbp++; else { const byte *_cbp; left.end.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) left.end.y = *cbp++; else { const byte *_cbp; left.end.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) right.start.x = *cbp++; else { const byte *_cbp; right.start.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) right.start.y = *cbp++; else { const byte *_cbp; right.start.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) right.end.x = *cbp++; else { const byte *_cbp; right.end.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) right.end.y = *cbp++; else { const byte *_cbp; right.end.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                do { if ( *cbp < 0x80 ) options = *cbp++; else { const byte *_cbp; options = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                if (!(options & 4)) {
                                    do { if ( *cbp < 0x80 ) ybot = *cbp++; else { const byte *_cbp; ybot = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    do { if ( *cbp < 0x80 ) ytop = *cbp++; else { const byte *_cbp; ytop = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                } else
                                    ytop = ybot = 0;
                                swap_axes = options & 1;
                                wh = swap_axes ? tdev->width : tdev->height;
                                x0f = ((fixed)(swap_axes ? y0 : x0)<<8);
                                y0f = ((fixed)(swap_axes ? x0 : y0)<<8);
                                left.start.x -= x0f;
                                left.start.y -= y0f;
                                left.end.x -= x0f;
                                left.end.y -= y0f;
                                right.start.x -= x0f;
                                right.start.y -= y0f;
                                right.end.x -= x0f;
                                right.end.y -= y0f;
                                if (options & 2) {
                                    int num_components = tdev->color_info.num_components;
                                    frac31 c[4][(8 * 8)], *cc[4];
                                    byte colors_mask, i, j, m = 1;
                                    gs_fill_attributes fa;
                                    gs_fixed_rect clip;
                                    fixed hh = ((fixed)(swap_axes ? target->width : target->height)<<8);

                                    if (cbuf.end - cbp < 5 * (((sizeof(frac31)) * 8 + 6) / 7)) {
                                        code = top_up_cbuf(&cbuf, &cbp);
                                        if (code < 0)
                                            return code;
                                    }
                                    do { if ( *cbp < 0x80 ) clip.p.x = *cbp++; else { const byte *_cbp; clip.p.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    do { if ( *cbp < 0x80 ) clip.p.y = *cbp++; else { const byte *_cbp; clip.p.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    do { if ( *cbp < 0x80 ) clip.q.x = *cbp++; else { const byte *_cbp; clip.q.x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    do { if ( *cbp < 0x80 ) clip.q.y = *cbp++; else { const byte *_cbp; clip.q.y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    clip.p.x -= x0f;
                                    clip.p.y -= y0f;
                                    clip.q.x -= x0f;
                                    clip.q.y -= y0f;
                                    if (clip.p.y < 0)
                                        clip.p.y = 0;
                                    if (clip.q.y > hh)
                                        clip.q.y = hh;
                                    fa.clip = &clip;
                                    fa.swap_axes = swap_axes;
                                    fa.ht = ((void*)0);
                                    fa.lop = (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0));
                                    fa.ystart = ybot - y0f;
                                    fa.yend = ytop - y0f;
                                    do { if ( *cbp < 0x80 ) colors_mask = *cbp++; else { const byte *_cbp; colors_mask = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
                                    for (i = 0; i < 4; i++, m <<= 1) {
                                        if (colors_mask & m) {
                                            if (cbuf.end - cbp < num_components * (((sizeof(frac31)) * 8 + 6) / 7)) {
                                                code = top_up_cbuf(&cbuf, &cbp);
                                                if (code < 0)
                                                    return code;
                                            }
                                            cc[i] = c[i];
                                            for (j = 0; j < num_components; j++)
                                                do { if ( !(*cbp & 1) ) c[i][j] = (*cbp++) << 24; else { const byte *_cbp; c[i][j] = cmd_get_frac31(cbp, &_cbp); cbp = _cbp; } } while (0);
                                        } else
                                            cc[i] = ((void*)0);
                                    }
                                    if (options & 4) {

                                        code = ((ttdev)->procs.fill_linear_color_triangle)(ttdev, &fa,
                                                        &left.start, &left.end, &right.start,
                                                        cc[0], cc[1], cc[2]);



                                        if (code == 0) {


                                            if (pfs.dev == ((void*)0))
                                                code = gx_init_patch_fill_state_for_clist(tdev, &pfs, mem);
                                            if (code >= 0) {
                                                pfs.dev = ttdev;
                                                pfs.rect = clip;
                                                fa.pfs = &pfs;
                                                code = gx_fill_triangle_small(ttdev, &fa,
                                                            &left.start, &left.end, &right.start,
                                                            cc[0], cc[1], cc[2]);
                                            }
                                        }
                                    } else {
                                        code = ((ttdev)->procs.fill_linear_color_trapezoid)(ttdev, &fa,
                                                        &left.start, &left.end, &right.start, &right.end,
                                                        cc[0], cc[1], cc[2], cc[3]);
                                        if (code == 0) {






                                            code = ((-28));
                                        }
                                    }
                                } else
                                    code = gx_default_fill_trapezoid(ttdev, &left, &right,
                                        (((ybot - y0f) > (((1L << 8) >> 1))) ? (ybot - y0f) : (((1L << 8) >> 1))),
                                        (((ytop - y0f) < (((fixed)(wh)<<8))) ? (ytop - y0f) : (((fixed)(wh)<<8))), swap_axes,
                                        &dev_color, imager_state.log_op);
                            }
                           break;
                        default:
                            goto bad_op;
                    }
                    if (ppath != &path)
                        gx_path_free(ppath, "clist_render_band");
                }
                if (in_path) {
                    state.rect.x = ((int)((ppos.x) >> (8)));
                    state.rect.y = ((int)((ppos.y) >> (8)));
                    in_path = ((bool)0);
                }
                gx_path_free(&path, "clist_render_band");
                (void)gx_path_init_local_shared(&path, ((void*)0), mem);
                if (code < 0)
                    goto out;
                continue;
            default:
              bad_op:(emprintf_program_ident(mem, gs_program_name(), gs_revision_number()), mlprintf_file_and_line(mem, "./base/gxclrast.c", 2099), errprintf(mem,"Bad op %02x band y0 = %d file pos %""l" "d"" buf pos %d/%d\n", op, y0, stell(s), (int)(cbp - cbuf.data), (int)(cbuf.end - cbuf.data)));

                {
                    const byte *pp;

                    for (pp = cbuf.data; pp < cbuf.end; pp += 10) {
                        (dmprintf_file_and_line(mem,"./base/gxclrast.c", 2104), errprintf(mem,"%4d:", (int)(pp - cbuf.data)));
                        errprintf(mem," %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n", pp[0], pp[1], pp[2], pp[3], pp[4], pp[5], pp[6], pp[7], pp[8], pp[9]);


                    }
                }
                code = ((-100));
                goto out;
        }
        do { } while (0);


        switch (op >> 4) {
            case cmd_op_fill_rect >> 4:
                if (state.rect.width == 0 && state.rect.height == 0 &&
                    state.rect.x == 0 && state.rect.y == 0) {


                    code = (((tdev)->procs.fillpage) == ((void*)0) ? 0 :
                            (*((tdev)->procs.fillpage))(tdev, &imager_state,
                                                        &dev_color));
                    break;
                }
            case cmd_op_fill_rect_short >> 4:
            case cmd_op_fill_rect_tiny >> 4:
                if (!state.lop_enabled) {
                    code = (*((tdev)->procs.fill_rectangle))
                        (tdev, state.rect.x - x0, state.rect.y - y0,
                         state.rect.width, state.rect.height,
                         state.colors[1]);
                    break;
                }
                source = ((void*)0);
                data_x = 0;
                raster = 0;
                colors[0] = colors[1] = state.colors[1];
                log_op = state.lop;
                pcolor = colors;
         do_rop:if (plane_height == 0) {
                    code = (*((tdev)->procs.strip_copy_rop))
                                (tdev, source, data_x, raster, 0L,
                                 pcolor, &state_tile,
                                 (state.tile_colors[0] == ((gx_color_index)(~0)) &&
                                  state.tile_colors[1] == ((gx_color_index)(~0)) ?
                                  ((void*)0) : state.tile_colors),
                                 state.rect.x - x0, state.rect.y - y0,
                                 state.rect.width - data_x, state.rect.height,
                                 tile_phase.x, tile_phase.y, log_op);
                } else {
                    code = (*((tdev)->procs.strip_copy_rop2))
                                (tdev, source, data_x, raster, 0L,
                                 pcolor, &state_tile,
                                 (state.tile_colors[0] == ((gx_color_index)(~0)) &&
                                  state.tile_colors[1] == ((gx_color_index)(~0)) ?
                                  ((void*)0) : state.tile_colors),
                                 state.rect.x - x0, state.rect.y - y0,
                                 state.rect.width - data_x, state.rect.height,
                                 tile_phase.x, tile_phase.y, log_op,
                                 plane_height);
                     plane_height = 0;
                }
                data_x = 0;
                break;
            case cmd_op_tile_rect >> 4:
                if (state.rect.width == 0 && state.rect.height == 0 &&
                    state.rect.x == 0 && state.rect.y == 0) {
                    code = (*((tdev)->procs.fillpage))(tdev, &imager_state, &dev_color);
                    break;
                }
            case cmd_op_tile_rect_short >> 4:
            case cmd_op_tile_rect_tiny >> 4:

                code = (*((tdev)->procs.strip_tile_rectangle))
                    (tdev, &state_tile,
                     state.rect.x - x0, state.rect.y - y0,
                     state.rect.width, state.rect.height,
                     state.tile_colors[0], state.tile_colors[1],
                     tile_phase.x, tile_phase.y);
                break;
            case cmd_op_copy_mono_planes >> 4:
                if (state.lop_enabled) {
                    pcolor = state.colors;
                    log_op = state.lop;
                    goto do_rop;
                }
                if ((op & 8) || pcpath != ((void*)0)) {



                    code = gx_image_fill_masked
                        (tdev, source, data_x, raster, 0L,
                         state.rect.x - x0, state.rect.y - y0,
                         state.rect.width - data_x, state.rect.height,
                         &dev_color, 1, imager_state.log_op, pcpath);
                } else {
                    if (plane_height == 0) {
                        code = (*((tdev)->procs.copy_mono))
                             (tdev, source, data_x, raster, 0L,
                              state.rect.x - x0, state.rect.y - y0,
                              state.rect.width - data_x, state.rect.height,
                              state.colors[0], state.colors[1]);
                    } else {
                        code = (*((tdev)->procs.copy_planes))
                             (tdev, source, data_x, raster, 0L,
                              state.rect.x - x0, state.rect.y - y0,
                              state.rect.width - data_x, state.rect.height,
                              plane_height);
                    }
                }
                plane_height = 0;
                data_x = 0;
                break;
            case cmd_op_copy_color_alpha >> 4:
                if (state.color_is_alpha) {

                    if (state.color_is_devn) {
                        code = (*((tdev)->procs.copy_alpha_hl_color))
                            (tdev, source, data_x, raster, 0L,
                             state.rect.x - x0, state.rect.y - y0,
                             state.rect.width - data_x, state.rect.height,
                             &dev_color, depth);
                    } else {
                        code = (*((tdev)->procs.copy_alpha))
                            (tdev, source, data_x, raster, 0L,
                             state.rect.x - x0, state.rect.y - y0,
                             state.rect.width - data_x, state.rect.height,
                             state.colors[1], depth);
                    }
                } else {
                    if (state.lop_enabled) {
                        pcolor = ((void*)0);
                        log_op = state.lop;
                        goto do_rop;
                    }
                    code = (*((tdev)->procs.copy_color))
                        (tdev, source, data_x, raster, 0L,
                         state.rect.x - x0, state.rect.y - y0,
                         state.rect.width - data_x, state.rect.height);
                }
                data_x = 0;
                break;
            default:
                goto bad_op;
        }
    }

  out:
    if (ht_buff.pbuff != 0) {
        ((mem)->procs.free_object(mem, ht_buff.pbuff, "clist_playback_band(ht_buff)"));
        ht_buff.pbuff = 0;
        ht_buff.pcurr = 0;
    }
    ht_buff.ht_size = 0;
    ht_buff.read_size = 0;

    if (pcomp_last != ((void*)0)) {
        int code1 = drop_compositor_queue(&pcomp_first, &pcomp_last, ((void*)0), mem, x0, y0, &imager_state);

        if (code == 0)
            code = code1;
    }
    rc_decrement_cs(pcs, "clist_playback_band");
    gx_cpath_free(&clip_path, "clist_render_band exit");
    gx_path_free(&path, "clist_render_band exit");
    if (imager_state.pattern_cache != ((void*)0)) {
        gx_pattern_cache_free(imager_state.pattern_cache);
        imager_state.pattern_cache = ((void*)0);
    }


    gp_monitor_enter(&(cdev->icc_cache_cl->lock)->native);
    gs_imager_state_release(&imager_state);
    gp_monitor_leave(&(cdev->icc_cache_cl->lock)->native);
    ((mem)->procs.free_object(mem, data_bits, "clist_playback_band(data_bits)"));
    if (target != orig_target) {
        if (target->rc.ref_count != 1) {






            do { if (target) { do { do { } while (0); (target)->rc.ref_count += (-1); } while (0); if (!(target)->rc.ref_count) { do { do { } while (0); (target)->rc.free((target)->rc.memory, (void *)(target), "gxclrast(target compositor)"); } while (0); (target) = 0; } else do { } while (0); } } while (0);
        } else {

            if (target->is_open)
                ((target)->procs.close_device)(target);
            ((target->memory)->procs.free_object(target->memory, target, "gxclrast discard compositor"));
        }
        target = orig_target;
    }
    if (code < 0) {
        if (pfs.dev != ((void*)0))
            term_patch_fill_state(&pfs);
        return (code);
    }

    if ((playback_action != playback_action_setup &&
        (cbp < cbuf.end || !(((s)->cursor.r.ptr >= (s)->cursor.r.limit) && (s)->end_status == ((int)(-1)))) && (op != cmd_opv_end_page) )
        )
        goto in;
    if (pfs.dev != ((void*)0))
        term_patch_fill_state(&pfs);
    ((mem)->procs.free_object(mem, cbuf_storage, "clist_playback_band(cbuf_storage)"));
    return code;
}
# 2321 "./base/gxclrast.c"
static int
read_set_tile_size(command_buf_t *pcb, tile_slot *bits, bool for_pattern)
{
    const byte *cbp = pcb->ptr;
    uint rep_width, rep_height;
    uint pdepth;
    byte bd = *cbp++;

    bits->head.depth = (((bd) & 8) == 0 ? ((bd) & 0x7)+1 : ((bd) & 0x7 ? ((((bd) & 7) << 3) + 8) : 12));
    if (for_pattern)
        do { if ( *cbp < 0x80 ) bits->id = *cbp++; else { const byte *_cbp; bits->id = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    do { if ( *cbp < 0x80 ) rep_width = *cbp++; else { const byte *_cbp; rep_width = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    do { if ( *cbp < 0x80 ) rep_height = *cbp++; else { const byte *_cbp; rep_height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    if (bd & 0x20) {
        do { if ( *cbp < 0x80 ) bits->x_reps = *cbp++; else { const byte *_cbp; bits->x_reps = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
        bits->width = rep_width * bits->x_reps;
    } else {
        bits->x_reps = 1;
        bits->width = rep_width;
    }
    if (bd & 0x40) {
        do { if ( *cbp < 0x80 ) bits->y_reps = *cbp++; else { const byte *_cbp; bits->y_reps = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
        bits->height = rep_height * bits->y_reps;
    } else {
        bits->y_reps = 1;
        bits->height = rep_height;
    }
    if (bd & 0x80)
        do { if ( *cbp < 0x80 ) bits->rep_shift = *cbp++; else { const byte *_cbp; bits->rep_shift = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    else
        bits->rep_shift = 0;
    if (bd & 0x10)
        bits->num_planes = *cbp++;
    else
        bits->num_planes = 1;
    do { } while (0);



    bits->shift =
        (bits->rep_shift == 0 ? 0 :
         (bits->rep_shift * (bits->height / rep_height)) % rep_width);
    pdepth = bits->head.depth;
    if (bits->num_planes != 1)
        pdepth /= bits->num_planes;
    bits->raster = ((uint)((((bits->width * pdepth) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3));
    pcb->ptr = cbp;
    return 0;
}

static int
read_set_bits(command_buf_t *pcb, tile_slot *bits, int compress,
              gx_clist_state *pcls, gx_strip_bitmap *tile, tile_slot **pslot,
              gx_device_clist_reader *cdev, gs_memory_t *mem)
{
    const byte *cbp = pcb->ptr;
    uint rep_width = bits->width / bits->x_reps;
    uint rep_height = bits->height / bits->y_reps;
    uint index;
    ulong offset;
    uint width_bits;
    uint width_bytes;
    uint raster;
    uint bytes;
    byte *data;
    tile_slot *slot;
    uint depth = bits->head.depth;

    if (bits->num_planes != 1)
        depth /= bits->num_planes;
    width_bits = rep_width * depth;

    bytes = clist_bitmap_bytes(width_bits, rep_height * bits->num_planes,
                               compress |
                               (rep_width < bits->width ?
                                0x200 : 0) |
                               0x100,
                               &width_bytes,
                               (uint *)&raster);

    do { if ( *cbp < 0x80 ) index = *cbp++; else { const byte *_cbp; index = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    do { if ( *cbp < 0x80 ) offset = *cbp++; else { const byte *_cbp; offset = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    do { } while (0);
    pcls->tile_index = index;
    cdev->tile_table[pcls->tile_index].offset = offset;
    slot = (tile_slot *)(cdev->chunk.data + offset);
    *pslot = slot;
    *slot = *bits;
    tile->data = data = (byte *)(slot + 1);



    if (compress == 3) {
        cbp = cmd_read_data(pcb, data, 1, cbp);
        if (width_bytes > 0 && rep_height > 0)
            memset(data+1, *data, width_bytes * rep_height - 1);
    } else if (compress) {




        stream_cursor_read r;
        stream_cursor_write w;




        uint cleft = pcb->end - cbp;

        if (cleft < bytes && !pcb->end_status) {
            uint nread = 4096 - cleft;
# 2444 "./base/gxclrast.c"
            memmove(pcb->data, cbp, cleft);
            pcb->end_status = sgets(pcb->s, pcb->data + cleft, nread, &nread);
            set_cb_end(pcb, pcb->data + cleft + nread);
            cbp = pcb->data;
        }
        r.ptr = cbp - 1;
        r.limit = pcb->end - 1;
        w.ptr = data - 1;
        w.limit = w.ptr + bytes;
        switch (compress) {
        case 1:
            {
                stream_RLD_state sstate;

                clist_rld_init(&sstate);
                (*s_RLD_template.process)
                    ((stream_state *)&sstate, &r, &w, ((bool)1));
            }
            break;
        case 2:
            {
                stream_CFD_state sstate;

                clist_cfd_init(&sstate,
                               width_bytes << 3 ,
                               rep_height, mem);
                (*s_CFD_template.process)
                    ((stream_state *)&sstate, &r, &w, ((bool)1));
                (*s_CFD_template.release)
                    ((stream_state *)&sstate);
            }
            break;
        default:
            return ((-28));
        }
        cbp = r.ptr + 1;
    } else if (rep_height * bits->num_planes > 1 && width_bytes != bits->raster) {
        cbp = cmd_read_short_bits(pcb, data, bytes,
                                  width_bytes, rep_height * bits->num_planes,
                                  bits->raster, cbp);
    } else {
        cbp = cmd_read_data(pcb, data, bytes, cbp);
    }
    if (bits->width > rep_width)
        bits_replicate_horizontally(data,
                                    rep_width * depth, rep_height * bits->num_planes,
                                    bits->raster,
                                    bits->width * depth,
                                    bits->raster);
    if (bits->height > rep_height)
        bits_replicate_vertically(data,
                                  rep_height, bits->raster,
                                  bits->height);




    pcb->ptr = cbp;
    return 0;
}


static int
read_alloc_ht_buff(ht_buff_t * pht_buff, uint ht_size, gs_memory_t * mem)
{

    if (pht_buff->pbuff != 0) {
        ((mem)->procs.free_object(mem, pht_buff->pbuff, "read_alloc_ht_buff"));
        pht_buff->pbuff = 0;
    }





    if (ht_size > (4096 - 32)) {
        pht_buff->pbuff = (*(mem)->procs.alloc_bytes)(mem, ht_size, "read_alloc_ht_buff");
        if (pht_buff->pbuff == 0)
            return ((-25));
    }
    pht_buff->ht_size = ht_size;
    pht_buff->read_size = 0;
    pht_buff->pcurr = pht_buff->pbuff;
    return 0;
}


static int
read_ht_segment(
    ht_buff_t * pht_buff,
    command_buf_t * pcb,
    gs_imager_state * pis,
    gx_device * dev,
    gs_memory_t * mem )
{
    const byte * cbp = pcb->ptr;
    const byte * pbuff = 0;
    uint ht_size = pht_buff->ht_size, seg_size;
    int code = 0;


    do { if (((seg_size) = *(cbp)) >= (1U << 7)) { uint tmp_w; (cbp) = enc_u_get_uint(&tmp_w, (cbp)); (seg_size) = tmp_w; } else ++(cbp); } while (0);
    if (pcb->warn_limit - cbp < (int)seg_size) {
        code = top_up_cbuf(pcb, &cbp);
        if (code < 0)
            return code;
        if (pcb->end - cbp < (int)seg_size) {
            (emprintf_program_ident(mem, gs_program_name(), gs_revision_number()), errprintf(mem, " *** ht segment size doesn't fit in buffer ***\n"));
            return ((-1));
        }
    }

    if (pht_buff->pbuff == 0) {

        if (seg_size != ht_size)
            return ((-1));
        pbuff = cbp;
    } else {
        if (seg_size + pht_buff->read_size > pht_buff->ht_size)
            return ((-1));
        memcpy(pht_buff->pcurr, cbp, seg_size);
        pht_buff->pcurr += seg_size;
        if ((pht_buff->read_size += seg_size) == ht_size)
            pbuff = pht_buff->pbuff;
    }


    if (pbuff != 0) {
        code = gx_ht_read_and_install(pis, dev, pbuff, ht_size, mem);


        if (pht_buff->pbuff != 0) {
            ((mem)->procs.free_object(mem, pht_buff->pbuff, "read_alloc_ht_buff"));
            pht_buff->pbuff = 0;
            pht_buff->pcurr = 0;
        }
        pht_buff->ht_size = 0;
        pht_buff->read_size = 0;
    }


    pcb->ptr = cbp + seg_size;

    return code;
}

static int
read_set_misc2(command_buf_t *pcb, gs_imager_state *pis, segment_notes *pnotes)
{
    const byte *cbp = pcb->ptr;
    uint mask, cb;

    do { if ( *cbp < 0x80 ) mask = *cbp++; else { const byte *_cbp; mask = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    if (mask & (1<<0)) {
        cb = *cbp++;
        pis->line_params.start_cap = (gs_line_cap)((cb >> 3) & 7);
        pis->line_params.join = (gs_line_join)(cb & 7);
        do { } while (0);

        cb = *cbp++;
        pis->line_params.end_cap = (gs_line_cap)((cb >> 3) & 7);
        pis->line_params.dash_cap = (gs_line_cap)(cb & 7);
        do { } while (0);

    }
    if (mask & (1<<1)) {
        cb = *cbp++;
        pis->line_params.curve_join = ((cb >> 2) & 7) - 1;
        pis->accurate_curves = (cb & 2) != 0;
        pis->stroke_adjust = cb & 1;
        do { } while (0);


    }
    if (mask & (1<<2)) {
        cbp = cmd_copy_value(&pis->flatness, sizeof(pis->flatness), cbp);
        do { } while (0);
    }
    if (mask & (1<<3)) {
        float width;

        cbp = cmd_copy_value(&width, sizeof(width), cbp);
        do { } while (0);
        ((&pis->line_params)->half_width = fabs(width) / 2);
    }
    if (mask & (1<<4)) {
        float limit;

        cbp = cmd_copy_value(&limit, sizeof(limit), cbp);
        do { } while (0);
        gx_set_miter_limit(&pis->line_params, limit);
    }
    if (mask & (1<<5)) {
        cb = *cbp++;
        pis->blend_mode = cb >> 3;
        pis->text_knockout = (cb & 4) != 0;

        pis->overprint_mode = (cb >> 1) & 1;
        pis->effective_overprint_mode = pis->overprint_mode;
        pis->overprint = cb & 1;
        cb = *cbp++;
        pis->renderingintent = cb;
        do { } while (0);


    }
    if (mask & (1<<6)) {
        cb = *cbp++;
        *pnotes = (segment_notes)(cb & 0x3f);
        do { } while (0);
    }
    if (mask & (1<<7)) {
        cbp = cmd_copy_value(&pis->opacity.alpha, sizeof(pis->opacity.alpha), cbp);
        do { } while (0);
    }
    if (mask & (1<<8)) {
        cbp = cmd_copy_value(&pis->shape.alpha, sizeof(pis->shape.alpha), cbp);
        do { } while (0);
    }
    if (mask & (1<<9)) {
        cbp = cmd_copy_value(&pis->alpha, sizeof(pis->alpha), cbp);
        do { } while (0);
    }
    pcb->ptr = cbp;
    return 0;
}

static int
read_set_color_space(command_buf_t *pcb, gs_imager_state *pis,
                     gs_color_space **ppcs, gx_device_clist_reader *cdev,
                     gs_memory_t *mem)
{
    const byte *cbp = pcb->ptr;
    byte b = *cbp++;
    int index = b >> 4;
    gs_color_space *pcs;
    int code = 0;
    cmm_profile_t *picc_profile;
    clist_icc_color_t icc_information;

    do { } while (0);






    memcpy(&icc_information, cbp, sizeof(clist_icc_color_t));
    cbp = cbp + sizeof(clist_icc_color_t);
    switch (index) {
    case gs_color_space_index_DeviceGray:
        pcs = gs_cspace_new_DeviceGray(mem);
        break;
    case gs_color_space_index_DeviceRGB:
        pcs = gs_cspace_new_DeviceRGB(mem);
        break;
    case gs_color_space_index_DeviceCMYK:
        pcs = gs_cspace_new_DeviceCMYK(mem);
        break;
    case gs_color_space_index_ICC:

        code = gs_cspace_build_ICC(&pcs, ((void*)0), mem);

        picc_profile = gsicc_profile_new(((void*)0), cdev->memory, ((void*)0), 0);
        if (picc_profile == ((void*)0))
            return gs_throw_imp(__func__, "./base/gxclrast.c", 2709, 1, -1, "Failed to find ICC profile during clist read");
        picc_profile->num_comps = icc_information.icc_num_components;
        picc_profile->hashcode = icc_information.icc_hash;
        picc_profile->hash_is_valid = ((bool)1);
        picc_profile->islab = icc_information.is_lab;
        picc_profile->default_match = icc_information.default_match;
        picc_profile->data_cs = icc_information.data_cs;




        picc_profile->dev = (gx_device*) cdev;

        code = gsicc_set_gscs_profile(pcs, picc_profile, mem);

        do { if (picc_profile) { do { do { } while (0); (picc_profile)->rc.ref_count += (-1); } while (0); if (!(picc_profile)->rc.ref_count) { do { do { } while (0); (picc_profile)->rc.free((picc_profile)->rc.memory, (void *)(picc_profile), "read_set_color_space"); } while (0); (picc_profile) = 0; } else do { } while (0); } } while (0);
        break;
    default:
        code = ((-15));
        goto out;
    }

    if (b & 8) {
        bool use_proc = (b & 4) != 0;
        int hival;
        int num_values;
        byte *data;
        uint data_size;
        gs_color_space *pcs_indexed;

        pcs_indexed = gs_cspace_alloc(mem, &gs_color_space_type_Indexed);
        if (pcs_indexed == 0) {
            rc_decrement_cs(pcs, "read_set_color_space");
            code = ((-25));
            goto out;
        }
        pcs_indexed->base_space = pcs;
        pcs = pcs_indexed;
        pcs->params.indexed.use_proc = 0;
        pcs->params.indexed.lookup.table.data = 0;
        pcs->params.indexed.lookup.table.size = 0;
        do { if ( *cbp < 0x80 ) hival = *cbp++; else { const byte *_cbp; hival = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
        pcs->params.indexed.n_comps = gs_color_space_num_components(pcs->base_space);
        num_values = (hival + 1) * pcs->params.indexed.n_comps;
        if (use_proc) {
            gs_indexed_map *map;

            code = alloc_indexed_map(&map, num_values, mem, "indexed map");
            if (code < 0) {
                rc_decrement_cs(pcs, "read_set_color_space");
                goto out;
            }
            map->proc.lookup_index = lookup_indexed_map;
            pcs->params.indexed.lookup.map = map;
            data = (byte *)map->values;
            data_size = num_values * sizeof(map->values[0]);
        } else {
            byte *table = (*(mem)->procs.alloc_string)(mem, num_values, "color_space indexed table");

            if (table == 0) {
                code = ((-25));
                rc_decrement_cs(pcs, "read_set_color_space");
                goto out;
            }
            pcs->params.indexed.lookup.table.data = table;
            pcs->params.indexed.lookup.table.size = num_values;
            data = table;
            data_size = num_values;
        }
        cbp = cmd_read_data(pcb, data, data_size, cbp);
        pcs->params.indexed.hival = hival;
        pcs->params.indexed.use_proc = use_proc;
    }


    rc_decrement_only_cs(*ppcs, "read_set_color_space");
    *ppcs = pcs;
out:
    pcb->ptr = cbp;
    return code;
}

static int
read_begin_image(command_buf_t *pcb, gs_image_common_t *pic,
                 gs_color_space *pcs)
{
    uint index = *(pcb->ptr)++;
    const gx_image_type_t *image_type = gx_image_type_table[index];
    stream s;
    int code;


    code = top_up_cbuf(pcb, &pcb->ptr);
    if (code < 0)
        return code;
    s_init(&s, ((void*)0));
    sread_string(&s, pcb->ptr, pcb->end - pcb->ptr);
    code = image_type->sget(pic, &s, pcs);
    pcb->ptr = ((&s)->cursor.r.ptr + 1);
    return code;
}

static int
read_put_params(command_buf_t *pcb, gs_imager_state *pis,
                gx_device_clist_reader *cdev, gs_memory_t *mem)
{
    const byte *cbp = pcb->ptr;
    gs_c_param_list param_list;
    uint cleft;
    uint rleft;
    bool alloc_data_on_heap = ((bool)0);
    byte *param_buf;
    uint param_length;
    int code;

    cbp = cmd_copy_value(&param_length, sizeof(param_length), cbp);
    do { } while (0);
    if (param_length == 0) {
        code = 1;
        goto out;
    }



    code = top_up_cbuf(pcb, &cbp);
    if (code < 0)
        return code;
    if (pcb->end - cbp >= param_length) {
        param_buf = (byte *)cbp;
        cbp += param_length;
    } else {

        param_buf = (*(mem)->procs.alloc_bytes)(mem, param_length, "clist put_params");

        if (param_buf == 0) {
            code = ((-25));
            goto out;
        }
        alloc_data_on_heap = ((bool)1);
        cleft = pcb->end - cbp;
        rleft = param_length - cleft;
        memmove(param_buf, cbp, cleft);
        pcb->end_status = sgets(pcb->s, param_buf + cleft, rleft, &rleft);
        cbp = pcb->end;
    }
# 2864 "./base/gxclrast.c"
    gs_c_param_list_write(&param_list, mem);
    code = gs_param_list_unserialize
        ( (gs_param_list *)&param_list, param_buf );
    if (code >= 0 && code != param_length)
        code = (-1);
    if (code >= 0) {
        gs_c_param_list_read(&param_list);
        code = gs_imager_putdeviceparams(pis, (gx_device *)cdev,
                                         (gs_param_list *)&param_list);
    }
    gs_c_param_list_release(&param_list);
    if (alloc_data_on_heap)
        ((mem)->procs.free_object(mem, param_buf, "clist put_params"));

out:
    pcb->ptr = cbp;
    return code;
}
# 2900 "./base/gxclrast.c"
const gs_composite_type_t * gs_find_compositor(int comp_id);

static int
read_create_compositor(
    command_buf_t *pcb, gs_memory_t *mem, gs_composite_t **ppcomp)
{
    const byte * cbp = pcb->ptr;
    int comp_id = 0, code = 0;
    const gs_composite_type_t * pcomp_type = 0;


    if (pcb->end - cbp < (( 4 + 1 + sizeof(float) * 6 + sizeof(((gs_pdf14trans_params_t *)0)->subtype) + sizeof(((gs_pdf14trans_params_t *)0)->group_color_numcomps) + 4 + sizeof(((gs_pdf14trans_params_t *)0)->bbox) + sizeof(((gs_pdf14trans_params_t *)0)->mask_id) + sizeof(((gs_pdf14trans_params_t *)0)->Background) + sizeof(float)*4 + sizeof(((gs_pdf14trans_params_t *)0)->GrayBackground) + sizeof(int64_t)) + sizeof(((gs_pdf14trans_params_t *)0)->transfer_fn)) + sizeof(comp_id)) {
        code = top_up_cbuf(pcb, &cbp);
        if (code < 0)
            return code;
    }


    comp_id = *cbp++;
    if ((pcomp_type = gs_find_compositor(comp_id)) == 0)
        return ((-1));


    code = pcomp_type->procs.read(ppcomp, cbp, pcb->end - cbp, mem);


    if ( code > (( 4 + 1 + sizeof(float) * 6 + sizeof(((gs_pdf14trans_params_t *)0)->subtype) + sizeof(((gs_pdf14trans_params_t *)0)->group_color_numcomps) + 4 + sizeof(((gs_pdf14trans_params_t *)0)->bbox) + sizeof(((gs_pdf14trans_params_t *)0)->mask_id) + sizeof(((gs_pdf14trans_params_t *)0)->Background) + sizeof(float)*4 + sizeof(((gs_pdf14trans_params_t *)0)->GrayBackground) + sizeof(int64_t)) + sizeof(((gs_pdf14trans_params_t *)0)->transfer_fn)) )
        return ((-15));

    if (code > 0)
        cbp += code;
    pcb->ptr = cbp;
    return code;
}

static int apply_create_compositor(gx_device_clist_reader *cdev, gs_imager_state *pis,
                                   gs_memory_t *mem, gs_composite_t *pcomp,
                                   int x0, int y0, gx_device **ptarget)
{
    gx_device *tdev = *ptarget;
    int code;

    code = pcomp->type->procs.adjust_ctm(pcomp, x0, y0, pis);
    if (code < 0)
        return code;




    code = ((tdev)->procs.create_compositor)(tdev, &tdev, pcomp, pis, mem, (gx_device*) cdev);
    if (code >= 0 && tdev != *ptarget) {
# 2960 "./base/gxclrast.c"
        if (tdev->rc.ref_count == 1)
            *ptarget = tdev;
    }
    if (code < 0)
        return code;


    code = pcomp->type->procs.clist_compositor_read_update(pcomp,
                                        (gx_device *)cdev, tdev, pis, mem);
    if (code < 0)
        return code;


    ((mem)->procs.free_object(mem, pcomp, "read_create_compositor"));

    return code;
}
# 2987 "./base/gxclrast.c"
static const byte *
cmd_read_short_bits(command_buf_t *pcb, byte *data, int tot_bytes,
                    int width_bytes, int height, uint raster, const byte *cbp)
{



    cbp = cmd_read_data(pcb, data, tot_bytes, cbp);


    if (width_bytes < raster) {
        const byte *pdata = data + width_bytes * height;
        byte *udata = data + height * raster;

        while (--height > 0) {
            udata -= raster, pdata -= width_bytes;
            switch (width_bytes) {
                default:
                    memmove(udata, pdata, width_bytes);
                    break;
                case 6:
                    udata[5] = pdata[5];
                case 5:
                    udata[4] = pdata[4];
                case 4:
                    udata[3] = pdata[3];
                case 3:
                    udata[2] = pdata[2];
                case 2:
                    udata[1] = pdata[1];
                case 1:
                    udata[0] = pdata[0];
                case 0:;
            }
        }
    }
    return cbp;
}


static const byte *
cmd_read_rect(int op, gx_cmd_rect * prect, const byte * cbp)
{
    do { if ( *cbp < 0x80 ) prect->x = *cbp++; else { const byte *_cbp; prect->x = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    if (op & 0xf)
        prect->y += ((op >> 2) & 3) - 2;
    else {
        do { if ( *cbp < 0x80 ) prect->y = *cbp++; else { const byte *_cbp; prect->y = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    }
    do { if ( *cbp < 0x80 ) prect->width = *cbp++; else { const byte *_cbp; prect->width = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    if (op & 0xf)
        prect->height += (op & 3) - 2;
    else {
        do { if ( *cbp < 0x80 ) prect->height = *cbp++; else { const byte *_cbp; prect->height = cmd_get_w(cbp, &_cbp); cbp = _cbp; } } while (0);
    }
    return cbp;
}
# 3056 "./base/gxclrast.c"
static int
cmd_select_map(cmd_map_index map_index, cmd_map_contents cont,
               gs_imager_state * pis, int ** pcomp_num, frac ** pmdata,
               uint * pcount, gs_memory_t * mem)
{
    gx_transfer_map *map;
    gx_transfer_map **pmap;
    const char *cname;

    *pcomp_num = ((void*)0);
    switch (map_index) {
        case cmd_map_transfer:
            do { } while (0);
            do { if ( (pis->set_transfer.gray) == 0 || (pis->set_transfer.gray)->rc.ref_count > 1 || (pis->set_transfer.gray)->rc.memory != (mem) ) { gx_transfer_map *new; do { if ( ((new) = (gx_transfer_map *)(*(mem)->procs.alloc_struct)(mem, &st_transfer_map, "cmd_select_map(default_transfer)")) == 0 ) { return ((-25)); } else { do { (new)->rc.ref_count = 1; (new)->rc.memory = mem; (new)->rc.free = rc_free_struct_only; do { } while (0); } while (0); } } while (0); if ( pis->set_transfer.gray ) do { do { } while (0); (pis->set_transfer.gray)->rc.ref_count += (-1); } while (0); (pis->set_transfer.gray) = new; } } while (0);


            map = pis->set_transfer.gray;

            do { if (pis->set_transfer.red) { do { do { } while (0); (pis->set_transfer.red)->rc.ref_count += (-1); } while (0); if (!(pis->set_transfer.red)->rc.ref_count) { do { do { } while (0); (pis->set_transfer.red)->rc.free((pis->set_transfer.red)->rc.memory, (void *)(pis->set_transfer.red), "cmd_select_map(red)"); } while (0); (pis->set_transfer.red) = 0; } else do { } while (0); } } while (0);
            pis->set_transfer.red = ((void*)0);
            pis->set_transfer.red_component_num = -1;
            do { if (pis->set_transfer.green) { do { do { } while (0); (pis->set_transfer.green)->rc.ref_count += (-1); } while (0); if (!(pis->set_transfer.green)->rc.ref_count) { do { do { } while (0); (pis->set_transfer.green)->rc.free((pis->set_transfer.green)->rc.memory, (void *)(pis->set_transfer.green), "cmd_select_map(green)"); } while (0); (pis->set_transfer.green) = 0; } else do { } while (0); } } while (0);
            pis->set_transfer.green = ((void*)0);
            pis->set_transfer.green_component_num = -1;
            do { if (pis->set_transfer.blue) { do { do { } while (0); (pis->set_transfer.blue)->rc.ref_count += (-1); } while (0); if (!(pis->set_transfer.blue)->rc.ref_count) { do { do { } while (0); (pis->set_transfer.blue)->rc.free((pis->set_transfer.blue)->rc.memory, (void *)(pis->set_transfer.blue), "cmd_select_map(blue)"); } while (0); (pis->set_transfer.blue) = 0; } else do { } while (0); } } while (0);
            pis->set_transfer.blue = ((void*)0);
            pis->set_transfer.blue_component_num = -1;
            goto transfer2;
        case cmd_map_transfer_0:
            pmap = &pis->set_transfer.red;
            *pcomp_num = &pis->set_transfer.red_component_num;
            goto transfer1;
        case cmd_map_transfer_1:
            pmap = &pis->set_transfer.green;
            *pcomp_num = &pis->set_transfer.green_component_num;
            goto transfer1;
        case cmd_map_transfer_2:
            pmap = &pis->set_transfer.blue;
            *pcomp_num = &pis->set_transfer.blue_component_num;
            goto transfer1;
        case cmd_map_transfer_3:
            pmap = &pis->set_transfer.gray;
            *pcomp_num = &pis->set_transfer.gray_component_num;
transfer1: do { } while (0);
            do { if ( (*pmap) == 0 || (*pmap)->rc.ref_count > 1 || (*pmap)->rc.memory != (mem) ) { gx_transfer_map *new; do { if ( ((new) = (gx_transfer_map *)(*(mem)->procs.alloc_struct)(mem, &st_transfer_map, "cmd_select_map(transfer)")) == 0 ) { return ((-25)); } else { do { (new)->rc.ref_count = 1; (new)->rc.memory = mem; (new)->rc.free = rc_free_struct_only; do { } while (0); } while (0); } } while (0); if ( *pmap ) do { do { } while (0); (*pmap)->rc.ref_count += (-1); } while (0); (*pmap) = new; } } while (0);

            map = *pmap;

transfer2: if (cont != cmd_map_other) {
                gx_set_identity_transfer(map);
                *pmdata = 0;
                *pcount = 0;
                return 0;
            }
            break;
        case cmd_map_black_generation:
            do { } while (0);
            pmap = &pis->black_generation;
            cname = "cmd_select_map(black generation)";
            goto alloc;
        case cmd_map_undercolor_removal:
            do { } while (0);
            pmap = &pis->undercolor_removal;
            cname = "cmd_select_map(undercolor removal)";
alloc: if (cont == cmd_map_none) {
                do { if (*pmap) { do { do { } while (0); (*pmap)->rc.ref_count += (-1); } while (0); if (!(*pmap)->rc.ref_count) { do { do { } while (0); (*pmap)->rc.free((*pmap)->rc.memory, (void *)(*pmap), cname); } while (0); (*pmap) = 0; } else do { } while (0); } } while (0);
                *pmap = 0;
                *pmdata = 0;
                *pcount = 0;
                return 0;
            }
            do { if ( (*pmap) == 0 || (*pmap)->rc.ref_count > 1 || (*pmap)->rc.memory != (mem) ) { gx_transfer_map *new; do { if ( ((new) = (gx_transfer_map *)(*(mem)->procs.alloc_struct)(mem, &st_transfer_map, cname)) == 0 ) { return ((-25)); } else { do { (new)->rc.ref_count = 1; (new)->rc.memory = mem; (new)->rc.free = rc_free_struct_only; do { } while (0); } while (0); } } while (0); if ( *pmap ) do { do { } while (0); (*pmap)->rc.ref_count += (-1); } while (0); (*pmap) = new; } } while (0);

            map = *pmap;
            if (cont == cmd_map_identity) {
                gx_set_identity_transfer(map);
                *pmdata = 0;
                *pcount = 0;
                return 0;
            }
            break;
        default:
            *pmdata = 0;
            return 0;
    }
    map->proc = gs_mapped_transfer;
    *pmdata = map->values;
    *pcount = sizeof(map->values);
    return 0;
}


static int
cmd_create_dev_ht(gx_device_halftone **ppdht, gs_memory_t *mem)
{
    gx_device_halftone *pdht = *ppdht;

    if (pdht == 0) {
        rc_header rc;

        do { if ( ((pdht) = (gx_device_halftone *)(*(mem)->procs.alloc_struct)(mem, &st_device_halftone, "cmd_create_dev_ht")) == 0 ) { return ((-25)); } else { do { (pdht)->rc.ref_count = 1; (pdht)->rc.memory = mem; (pdht)->rc.free = rc_free_struct_only; do { } while (0); } while (0); } } while (0);


        rc = pdht->rc;
        memset(pdht, 0, sizeof(*pdht));
        pdht->rc = rc;
        *ppdht = pdht;
    }
    return 0;
}


static int
cmd_resize_halftone(gx_device_halftone **ppdht, uint num_comp,
                    gs_memory_t * mem)
{
    int code = cmd_create_dev_ht(ppdht, mem);
    gx_device_halftone *pdht = *ppdht;

    if (code < 0)
        return code;
    if (num_comp != pdht->num_comp) {
        gx_ht_order_component *pcomp;





        if (num_comp < pdht->num_comp) {
            uint i;


            for (i = pdht->num_comp; i-- > num_comp;)
                if (pdht->components[i].corder.bit_data != pdht->order.bit_data)
                    gx_ht_order_release(&pdht->components[i].corder, mem, ((bool)1));
            if (num_comp == 0) {
                ((mem)->procs.free_object(mem, pdht->components, "cmd_resize_halftone"));
                pcomp = 0;
            } else {
                pcomp = ((mem)->procs.resize_object(mem, pdht->components, num_comp, "cmd_resize_halftone"));

                if (pcomp == 0) {
                    pdht->num_comp = num_comp;
                    return ((-25));
                }
            }
        } else {

            if (pdht->num_comp == 0)
                pcomp = (gx_ht_order_component *)(*(mem)->procs.alloc_struct_array)(mem, num_comp, &st_ht_order_component_element, "cmd_resize_halftone");



            else
                pcomp = ((mem)->procs.resize_object(mem, pdht->components, num_comp, "cmd_resize_halftone"));

            if (pcomp == 0)
                return ((-25));
            memset(&pcomp[pdht->num_comp], 0,
                   sizeof(*pcomp) * (num_comp - pdht->num_comp));
        }
        pdht->num_comp = num_comp;
        pdht->components = pcomp;
    }
    return 0;
}




static int
clist_decode_segment(gx_path * ppath, int op, fixed vs[6],
                 gs_fixed_point * ppos, int x0, int y0, segment_notes notes)
{
    fixed px = ppos->x - ((fixed)(x0)<<8);
    fixed py = ppos->y - ((fixed)(y0)<<8);
    int code;
# 3241 "./base/gxclrast.c"
    switch (op) {
        case cmd_opv_rmoveto:
            code = gx_path_add_point(ppath, px += vs[0], py += vs[1]);
            break;
        case cmd_opv_rlineto:
            code = gx_path_add_line_notes(ppath, px += vs[0], py += vs[1], notes);
            break;
        case cmd_opv_rgapto:
            code = gx_path_add_gap_notes(ppath, px += vs[0], py += vs[1], notes);
            break;
        case cmd_opv_hlineto:
            code = gx_path_add_line_notes(ppath, px += vs[0], py, notes);
            break;
        case cmd_opv_vlineto:
            code = gx_path_add_line_notes(ppath, px, py += vs[0], notes);
            break;
        case cmd_opv_rmlineto:
            if ((code = gx_path_add_point(ppath, px += vs[0], py += vs[1])) < 0)
                break;
            code = gx_path_add_line_notes(ppath, px += vs[2], py += vs[3], notes);
            break;
        case cmd_opv_rm2lineto:
            if ((code = gx_path_add_point(ppath, px += vs[0], py += vs[1])) < 0 ||
                (code = gx_path_add_line_notes(ppath, px += vs[2], py += vs[3],
                                               notes)) < 0
                )
                break;
            code = gx_path_add_line_notes(ppath, px += vs[4], py += vs[5], notes);
            break;
        case cmd_opv_rm3lineto:
            if ((code = gx_path_add_point(ppath, px += vs[0], py += vs[1])) < 0 ||
                (code = gx_path_add_line_notes(ppath, px += vs[2], py += vs[3],
                                               notes)) < 0 ||
                (code = gx_path_add_line_notes(ppath, px += vs[4], py += vs[5],
                                               notes)) < 0
                )
                break;
            code = gx_path_add_line_notes(ppath, px -= vs[2], py -= vs[3], notes);
            break;
        case cmd_opv_rrcurveto:
rrc: vs[4] += (vs[2] += vs[0]);
            vs[5] += (vs[3] += vs[1]);
curve: code = gx_path_add_curve_notes(ppath, px + vs[0], py + vs[1],
                                           px + vs[2], py + vs[3],
                                           px + vs[4], py + vs[5], notes);
            px += vs[4], py += vs[5];
            break;
        case cmd_opv_hvcurveto:
hvc: vs[5] = vs[2] + vs[3], vs[3] = vs[2], vs[4] = vs[2] = vs[0] + vs[1], vs[1] = 0;
            goto curve;
        case cmd_opv_vhcurveto:
vhc: vs[4] = vs[1] + vs[3], vs[5] = vs[3] = vs[0] + vs[2], vs[2] = vs[1], vs[1] = vs[0], vs[0] = 0;
            goto curve;
        case cmd_opv_nrcurveto:
            vs[5] = vs[1] + vs[3], vs[4] = vs[0] + vs[2], vs[3] = vs[1], vs[2] = vs[0], vs[1] = vs[0] = 0;
            goto curve;
        case cmd_opv_rncurveto:
            vs[5] = vs[3] += vs[1], vs[4] = vs[2] += vs[0];
            goto curve;
        case cmd_opv_vqcurveto:
            if ((vs[0] ^ vs[1]) < 0)
                vs[2] = -vs[1], vs[3] = -vs[0];
            else
                vs[2] = vs[1], vs[3] = vs[0];
            goto vhc;
        case cmd_opv_hqcurveto:
            if ((vs[0] ^ vs[1]) < 0)
                vs[3] = -vs[0], vs[2] = vs[1], vs[1] = -vs[1];
            else
                vs[3] = vs[0], vs[2] = vs[1];
            goto hvc;
        case cmd_opv_scurveto:
            {
                fixed a = vs[0], b = vs[1];


                if (vs[0] == 0) {

                    vs[0] = vs[4] - vs[2], vs[1] = vs[3] - vs[5], vs[2] = vs[2] - a, vs[3] = b - vs[3], vs[4] = a, vs[5] = -b;
                } else {

                    vs[0] = vs[2] - vs[4], vs[1] = vs[5] - vs[3], vs[2] = a - vs[2], vs[3] = vs[3] - b, vs[4] = -a, vs[5] = b;
                }
            }
            goto rrc;
        case cmd_opv_closepath:
            code = gx_path_close_subpath_notes(ppath, sn_none);
            gx_path_current_point(ppath, (gs_fixed_point *) vs);
            px = vs[0], py = vs[1];
            break;
        default:
            return ((-15));
    }






    ppos->x = px + ((fixed)(x0)<<8);
    ppos->y = py + ((fixed)(y0)<<8);
    return code;
}
# 3352 "./base/gxclrast.c"
static int
clist_do_polyfill(gx_device *dev, gx_path *ppath,
                  const gx_drawing_color *pdcolor,
                  gs_logical_operation_t lop)
{
    const subpath *psub = ppath->segments->contents.subpath_first;
    const segment *pseg1;
    const segment *pseg2;
    int code;

    if (psub && (pseg1 = psub->next) != 0 && (pseg2 = pseg1->next) != 0) {
        fixed px = psub->pt.x, py = psub->pt.y;
        fixed ax = pseg1->pt.x - px, ay = pseg1->pt.y - py;
        fixed bx, by;




        int (*fill)(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);



        if (pseg2->next && !(px == pseg2->next->pt.x && py == pseg2->next->pt.y)) {

            fill = ((dev)->procs.fill_parallelogram);
            bx = pseg2->pt.x - pseg1->pt.x;
            by = pseg2->pt.y - pseg1->pt.y;
        } else {

            fill = ((dev)->procs.fill_triangle);
            bx = pseg2->pt.x - px;
            by = pseg2->pt.y - py;
        }
        code = fill(dev, px, py, ax, ay, bx, by, pdcolor, lop);
    } else
        code = 0;
    gx_path_new(ppath);
    return code;
}
