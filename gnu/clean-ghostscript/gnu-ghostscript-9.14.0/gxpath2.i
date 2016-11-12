# 1 "./base/gxpath2.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gxpath2.c" 2
# 18 "./base/gxpath2.c"
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
# 19 "./base/gxpath2.c" 2
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
# 20 "./base/gxpath2.c" 2

# 1 "./base/gspath.h" 1
# 23 "./base/gspath.h"
# 1 "./base/gspenum.h" 1
# 30 "./base/gspenum.h"
typedef struct gs_path_enum_s gs_path_enum;
# 24 "./base/gspath.h" 2
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







typedef struct gx_path_s gx_path;



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
# 22 "./base/gxpath2.c" 2
# 1 "./base/gsstruct.h" 1
# 23 "./base/gsstruct.h"
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
# 24 "./base/gsstruct.h" 2
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
# 23 "./base/gxpath2.c" 2
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
# 24 "./base/gxpath2.c" 2
# 1 "./base/gxarith.h" 1
# 27 "./base/gxarith.h"
int imod(int m, int n);


int igcd(int x, int y);





int idivmod(int a, int b, int m);




int ilog2(int n);
# 25 "./base/gxpath2.c" 2
# 1 "./base/gzpath.h" 1
# 23 "./base/gzpath.h"
# 1 "./base/gxpath.h" 1
# 23 "./base/gxpath.h"
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
# 24 "./base/gxpath.h" 2
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






typedef struct gx_clip_path_s gx_clip_path;



int gx_clip_to_rectangle(gs_state *, gs_fixed_rect *);
int gx_clip_to_path(gs_state *);
int gx_default_clip_box(const gs_state *, gs_fixed_rect *);
int gx_effective_clip_path(gs_state *, gx_clip_path **);
int gx_curr_bbox(gs_state * pgs, gs_rect *bbox, gs_bbox_comp_t comp_type);





typedef struct gx_clip_list_s gx_clip_list;





typedef struct gx_fill_params_s gx_fill_params;



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
# 25 "./base/gzpath.h" 2
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
# 26 "./base/gzpath.h" 2
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
# 26 "./base/gxpath2.c" 2


static const gc_ptr_element_t path_enum_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((gs_path_enum *)0)->pseg - (char *)((gs_path_enum *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((gs_path_enum *)0)->path - (char *)((gs_path_enum *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((gs_path_enum *)0)->copied_path - (char *)((gs_path_enum *)0) )) } }; static const gc_struct_data_t path_enum_reloc_ptrs = { (sizeof(path_enum_enum_ptrs) / sizeof((path_enum_enum_ptrs)[0])), 0, 0, path_enum_enum_ptrs }; const gs_memory_struct_type_t st_path_enum = { sizeof(gs_path_enum), "gs_path_enum", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &path_enum_reloc_ptrs };


int
gx_path_current_point(const gx_path * ppath, gs_fixed_point * ppt)
{
    if (!(((ppath)->state_flags & psf_position_valid) != 0))
        return ((-14));


    ppt->x = ppath->position.x, ppt->y = ppath->position.y;
    return 0;
}


int
gx_path_subpath_start_point(const gx_path * ppath, gs_fixed_point * ppt)
{
    const subpath *psub = ppath->segments->contents.subpath_current;

    if (!psub)
        return ((-14));
    *ppt = psub->pt;
    return 0;
}





int
gx_path_bbox(gx_path * ppath, gs_fixed_rect * pbox)
{
    if (ppath->bbox_accurate) {

        *pbox = ppath->bbox;
        return 0;
    }
    if (ppath->segments->contents.subpath_first == 0) {

        int code = gx_path_current_point(ppath, &pbox->p);

        if (code < 0) {




            pbox->p.x = pbox->p.y = 0;
        }
        pbox->q = pbox->p;
        return code;
    }


    if (ppath->box_last == ppath->segments->contents.subpath_current->last) {

        *pbox = ppath->bbox;
    } else {
        fixed px, py, qx, qy;
        const segment *pseg = ppath->box_last;

        if (pseg == 0) {
            pseg = (const segment *)ppath->segments->contents.subpath_first;
            px = qx = pseg->pt.x;
            py = qy = pseg->pt.y;
        } else {
            px = ppath->bbox.p.x, py = ppath->bbox.p.y;
            qx = ppath->bbox.q.x, qy = ppath->bbox.q.y;
        }
# 105 "./base/gxpath2.c"
        while ((pseg = pseg->next) != 0) {
            switch (pseg->type) {
                case s_curve:
                    if ((((const curve_segment *)pseg)->p1).x < px) px = (((const curve_segment *)pseg)->p1).x; else if ((((const curve_segment *)pseg)->p1).x > qx) qx = (((const curve_segment *)pseg)->p1).x; if ((((const curve_segment *)pseg)->p1).y < py) py = (((const curve_segment *)pseg)->p1).y; else if ((((const curve_segment *)pseg)->p1).y > qy) qy = (((const curve_segment *)pseg)->p1).y;
                    if ((((const curve_segment *)pseg)->p2).x < px) px = (((const curve_segment *)pseg)->p2).x; else if ((((const curve_segment *)pseg)->p2).x > qx) qx = (((const curve_segment *)pseg)->p2).x; if ((((const curve_segment *)pseg)->p2).y < py) py = (((const curve_segment *)pseg)->p2).y; else if ((((const curve_segment *)pseg)->p2).y > qy) qy = (((const curve_segment *)pseg)->p2).y;

                default:
                    if ((pseg->pt).x < px) px = (pseg->pt).x; else if ((pseg->pt).x > qx) qx = (pseg->pt).x; if ((pseg->pt).y < py) py = (pseg->pt).y; else if ((pseg->pt).y > qy) qy = (pseg->pt).y;
            }
        }




        (*pbox).p.x = px, (*pbox).p.y = py, (*pbox).q.x = qx, (*pbox).q.y = qy;;
        (ppath->bbox).p.x = px, (ppath->bbox).p.y = py, (ppath->bbox).q.x = qx, (ppath->bbox).q.y = qy;;


        ppath->box_last = ppath->segments->contents.subpath_current->last;
    }
    return 0;
}


int
gx_path_bbox_set(gx_path * ppath, gs_fixed_rect * pbox)
{
    if (ppath->bbox_set) {

        *pbox = ppath->bbox;
        return 0;
    } else
        return gx_path_bbox(ppath, pbox);
}



bool
gx_path_has_curves(const gx_path * ppath)
{
    return ((ppath)->curve_count != 0);
}





bool
gx_path_is_void(const gx_path * ppath)
{
    return ((ppath)->segments != 0 && (ppath)->segments->contents.subpath_first == 0);
}




bool
gx_path_is_null(const gx_path * ppath)
{
    return (((ppath)->segments != 0 && (ppath)->segments->contents.subpath_first == 0) && !(((ppath)->state_flags & psf_position_valid) != 0));
}
# 177 "./base/gxpath2.c"
gx_path_rectangular_type
gx_subpath_is_rectangular(const subpath * pseg0, gs_fixed_rect * pbox,
                          const subpath ** ppnext)
{
    const segment *pseg1, *pseg2, *pseg3, *pseg4;
    gx_path_rectangular_type type;

    if (pseg0->curve_count == 0 &&
        (pseg1 = pseg0->next) != 0 &&
        (pseg2 = pseg1->next) != 0 &&
        (pseg3 = pseg2->next) != 0
        ) {
        if ((pseg4 = pseg3->next) == 0 || pseg4->type == s_start)
            type = prt_open;
        else if (pseg4->type != s_line && pseg4->type != s_gap)
            type = prt_closed;
        else if (pseg4->pt.x != pseg0->pt.x ||
                 pseg4->pt.y != pseg0->pt.y
            )
            return prt_none;
        else if (pseg4->next == 0 || pseg4->next->type == s_start)
            type = prt_fake_closed;
        else if (pseg4->next->type != s_line && pseg4->next->type != s_gap)
            type = prt_closed;
        else
            return prt_none;
        {
            fixed x0 = pseg0->pt.x, y0 = pseg0->pt.y;
            fixed x2 = pseg2->pt.x, y2 = pseg2->pt.y;

            if ((x0 == pseg1->pt.x && pseg1->pt.y == y2 &&
                 x2 == pseg3->pt.x && pseg3->pt.y == y0) ||
                (x0 == pseg3->pt.x && pseg3->pt.y == y2 &&
                 x2 == pseg1->pt.x && pseg1->pt.y == y0)
                ) {
                if (x0 < x2)
                    pbox->p.x = x0, pbox->q.x = x2;
                else
                    pbox->p.x = x2, pbox->q.x = x0;
                if (y0 < y2)
                    pbox->p.y = y0, pbox->q.y = y2;
                else
                    pbox->p.y = y2, pbox->q.y = y0;
                while (pseg4 != 0 && pseg4->type != s_start)
                    pseg4 = pseg4->next;
                *ppnext = (const subpath *)pseg4;
                return type;
            }
        }
    }
    return prt_none;
}

gx_path_rectangular_type
gx_path_is_rectangular(const gx_path * ppath, gs_fixed_rect * pbox)
{
    const subpath *pnext;

    return
        (((ppath)->subpath_count) == 1 ?
         gx_subpath_is_rectangular(ppath->segments->contents.subpath_first, pbox, &pnext) :
         prt_none);
}



int
gx_path_translate(gx_path * ppath, fixed dx, fixed dy)
{
    segment *pseg;



    if (ppath->box_last != 0) {
        ppath->bbox.p.x += dx, ppath->bbox.p.y += dy;
        ppath->bbox.q.x += dx, ppath->bbox.q.y += dy;
    }
    if ((((ppath)->state_flags & psf_position_valid) != 0))
        ppath->position.x += dx, ppath->position.y += dy;
    for (pseg = (segment *) (ppath->segments->contents.subpath_first); pseg != 0;
         pseg = pseg->next
        )
        switch (pseg->type) {
            case s_curve:

                ((curve_segment *)pseg)->p1.x += dx, ((curve_segment *)pseg)->p1.y += dy;
                ((curve_segment *)pseg)->p2.x += dx, ((curve_segment *)pseg)->p2.y += dy;

            default:
                pseg->pt.x += dx, pseg->pt.y += dy;
        }

    return 0;
}






void
gx_point_scale_exp2(gs_fixed_point * pt, int sx, int sy)
{
    int v;

    if (sx > 0) {
        v = ((~(-1 << ((1 << 2) * 8 - 1))) - ((fixed)(1000)<<8)) >> sx;
        if (pt->x > v)
            pt->x = v;
        else if (pt->x < -v)
            pt->x = -v;
        pt->x <<= sx;
    } else
        pt->x >>= -sx;

    if (sy > 0) {
        v = ((~(-1 << ((1 << 2) * 8 - 1))) - ((fixed)(1000)<<8)) >> sy;
        if (pt->y > v)
            pt->y = v;
        else if (pt->y < -v)
            pt->y = -v;
        pt->y <<= sy;
    } else
        pt->y >>= -sy;
}
void
gx_rect_scale_exp2(gs_fixed_rect * pr, int sx, int sy)
{
    gx_point_scale_exp2(&pr->p, sx, sy);
    gx_point_scale_exp2(&pr->q, sx, sy);
}
int
gx_path_scale_exp2_shared(gx_path * ppath, int log2_scale_x, int log2_scale_y,
                          bool segments_shared)
{
    segment *pseg;

    gx_rect_scale_exp2(&ppath->bbox, log2_scale_x, log2_scale_y);

    gx_point_scale_exp2(&ppath->position, log2_scale_x, log2_scale_y);
    if (!segments_shared) {
        for (pseg = (segment *) (ppath->segments->contents.subpath_first); pseg != 0;
             pseg = pseg->next
             )
            switch (pseg->type) {
            case s_curve:
                gx_point_scale_exp2(&((curve_segment *)pseg)->p1, log2_scale_x, log2_scale_y);
                gx_point_scale_exp2(&((curve_segment *)pseg)->p2, log2_scale_x, log2_scale_y);
            default:
                gx_point_scale_exp2(&pseg->pt, log2_scale_x, log2_scale_y);
            }
    }

    return 0;
}
# 344 "./base/gxpath2.c"
int
gx_path_copy_reversed(const gx_path * ppath_old, gx_path * ppath)
{
    const subpath *psub = ppath_old->segments->contents.subpath_current;





 nsp:
    if (psub) {
        const segment *prev = psub->last;
        const segment *pseg;
        segment_notes notes =
            (prev == (const segment *)psub ? sn_none :
             psub->next->notes);
        segment_notes prev_notes;
        int code;

        if (!psub->is_closed) {
            code = gx_path_add_point(ppath, prev->pt.x, prev->pt.y);
            if (code < 0)
                return code;
        }







        do {
            pseg = prev;
            prev_notes = notes;
            prev = pseg->prev;
            notes = pseg->notes;
            prev_notes = (prev_notes & sn_not_first) |
                (notes & ~sn_not_first);
            switch (pseg->type) {
                case s_start:

                    if (psub->is_closed) {
                        code =
                            gx_path_close_subpath_notes(ppath, prev_notes);
                        if (code < 0)
                            return code;
                    }
                    do {
                        psub = (const subpath *)psub->prev;
                    } while (psub && psub->type != s_start);
                    goto nsp;
                case s_curve:
                    {
                        const curve_segment *pc =
                        (const curve_segment *)pseg;

                        code = gx_path_add_curve_notes(ppath,
                                                       pc->p2.x, pc->p2.y,
                                                       pc->p1.x, pc->p1.y,
                                        prev->pt.x, prev->pt.y, prev_notes);
                        break;
                    }
                case s_line:
                    code = gx_path_add_line_notes(ppath,
                                        prev->pt.x, prev->pt.y, prev_notes);
                    break;
                case s_gap:
                    code = gx_path_add_gap_notes(ppath,
                                        prev->pt.x, prev->pt.y, prev_notes);
                    break;
                case s_line_close:

                    code = gx_path_add_point(ppath, prev->pt.x,
                                             prev->pt.y);
                    break;
                default:
                    return ((-100));
            }
        } while (code >= 0);
        return code;
    }






    if (ppath_old->segments->contents.subpath_first == 0 &&
        (((ppath_old)->state_flags & ~psf_outside_range) == psf_last_moveto)
        ) {
        int code = gx_path_add_point(ppath, ppath_old->position.x,
                                     ppath_old->position.y);

        if (code < 0)
            return code;
    }




    return 0;
}

int
gx_path_append_reversed(const gx_path * ppath_old, gx_path * ppath)
{
    const subpath *psub = ppath_old->segments->contents.subpath_current;





 nsp:
    if (psub) {
        const segment *prev = psub->last;
        const segment *pseg;
        segment_notes notes =
            (prev == (const segment *)psub ? sn_none :
             psub->next->notes);
        segment_notes prev_notes;
        int code;

        if (!psub->is_closed) {
            code = gx_path_add_line_notes(ppath, prev->pt.x, prev->pt.y, sn_none);
            if (code < 0)
                return code;
        }







        do {
            pseg = prev;
            prev_notes = notes;
            prev = pseg->prev;
            notes = pseg->notes;
            prev_notes = (prev_notes & sn_not_first) |
                (notes & ~sn_not_first);
            switch (pseg->type) {
                case s_start:

                    if (psub->is_closed) {
                        code =
                            gx_path_close_subpath_notes(ppath, prev_notes);
                        if (code < 0)
                            return code;
                    }
                    do {
                        psub = (const subpath *)psub->prev;
                    } while (psub && psub->type != s_start);
                    goto nsp;
                case s_curve:
                    {
                        const curve_segment *pc =
                        (const curve_segment *)pseg;

                        code = gx_path_add_curve_notes(ppath,
                                                       pc->p2.x, pc->p2.y,
                                                       pc->p1.x, pc->p1.y,
                                        prev->pt.x, prev->pt.y, prev_notes);
                        break;
                    }
                case s_line:
                    code = gx_path_add_line_notes(ppath,
                                        prev->pt.x, prev->pt.y, prev_notes);
                    break;
                case s_gap:
                    code = gx_path_add_gap_notes(ppath,
                                        prev->pt.x, prev->pt.y, prev_notes);
                    break;
                case s_line_close:

                    code = gx_path_add_point(ppath, prev->pt.x,
                                             prev->pt.y);
                    break;
                default:
                    return ((-100));
            }
        } while (code >= 0);
        return code;
    }






    if (ppath_old->segments->contents.subpath_first == 0 &&
        (((ppath_old)->state_flags & ~psf_outside_range) == psf_last_moveto)
        ) {
        int code = gx_path_add_point(ppath, ppath_old->position.x,
                                     ppath_old->position.y);

        if (code < 0)
            return code;
    }




    return 0;
}




gs_path_enum *
gs_path_enum_alloc(gs_memory_t * mem, client_name_t cname)
{
    return (gs_path_enum *)(*(mem)->procs.alloc_struct)(mem, &st_path_enum, cname);
}


int
gx_path_enum_init(gs_path_enum * penum, const gx_path * ppath)
{
    penum->memory = 0;
    penum->path = ppath;
    penum->copied_path = 0;
    penum->pseg = (const segment *)ppath->segments->contents.subpath_first;
    penum->moveto_done = ((bool)0);
    penum->notes = sn_none;
    return 0;
}




int
gx_path_enum_next(gs_path_enum * penum, gs_fixed_point ppts[3])
{
    const segment *pseg = penum->pseg;

    if (pseg == 0) {

        const gx_path *ppath = penum->path;

        if ((((ppath)->state_flags & ~psf_outside_range) == psf_last_moveto) && !penum->moveto_done) {
            penum->moveto_done = ((bool)1);
            penum->notes = sn_none;
            ppts[0] = ppath->position;
            return 1;
        }
        return 0;
    }
    penum->pseg = pseg->next;
    penum->notes = pseg->notes;
    switch (pseg->type) {
        case s_start:
            ppts[0] = pseg->pt;
            return 1;
        case s_line:
            ppts[0] = pseg->pt;
            return 2;
        case s_gap:
            ppts[0] = pseg->pt;
            return 5;
        case s_line_close:
            ppts[0] = pseg->pt;
            return 4;
        case s_curve:

            ppts[0] = ((const curve_segment *)pseg)->p1;
            ppts[1] = ((const curve_segment *)pseg)->p2;
            ppts[2] = pseg->pt;
            return 3;

        default:
            (eprintf_program_ident(gs_program_name(), gs_revision_number()), lprintf_file_and_line("./base/gxpath2.c", 615), errprintf_nomem("bad type %x in gx_path_enum_next!\n", pseg->type));
            return ((-100));
    }
}


segment_notes
gx_path_enum_notes(const gs_path_enum * penum)
{
    return penum->notes;
}





bool
gx_path_enum_backup(gs_path_enum * penum)
{
    const segment *pseg = penum->pseg;

    if (pseg != 0) {
        if ((pseg = pseg->prev) == 0)
            return ((bool)0);
        penum->pseg = pseg;
        return ((bool)1);
    }


    {
        const gx_path *ppath = penum->path;

        if ((((ppath)->state_flags & ~psf_outside_range) == psf_last_moveto) && penum->moveto_done) {
            penum->moveto_done = ((bool)0);
            return ((bool)1);
        } {
            const subpath *psub = ppath->segments->contents.subpath_current;

            if (psub == 0)
                return ((bool)0);

            penum->pseg = psub->last;
            return ((bool)1);
        }
    }
}
