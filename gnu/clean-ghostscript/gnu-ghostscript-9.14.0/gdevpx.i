# 1 "./devices/vector/gdevpx.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./devices/vector/gdevpx.c" 2
# 18 "./devices/vector/gdevpx.c"
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
# 19 "./devices/vector/gdevpx.c" 2
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
# 20 "./devices/vector/gdevpx.c" 2
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
# 21 "./devices/vector/gdevpx.c" 2

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
# 23 "./devices/vector/gdevpx.c" 2
# 1 "./base/gsdcolor.h" 1
# 23 "./base/gsdcolor.h"
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
# 22 "./base/gxcindex.h"
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
# 23 "./base/gxcindex.h" 2
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
# 24 "./devices/vector/gdevpx.c" 2
# 1 "./base/gxiparam.h" 1
# 23 "./base/gxiparam.h"
# 1 "./base/gxdevcli.h" 1
# 24 "./base/gxdevcli.h"
# 1 "./base/gscompt.h" 1
# 41 "./base/gscompt.h"
typedef struct gs_composite_s gs_composite_t;






gs_id gs_composite_id(const gs_composite_t * pcte);
# 25 "./base/gxdevcli.h" 2

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
# 24 "./base/gxiparam.h" 2
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
# 25 "./devices/vector/gdevpx.c" 2

# 1 "./base/gxdevice.h" 1
# 24 "./base/gxdevice.h"
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
# 27 "./devices/vector/gdevpx.c" 2
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
# 28 "./devices/vector/gdevpx.c" 2
# 1 "./base/gdevvec.h" 1
# 25 "./base/gdevvec.h"
# 1 "./base/gdevbbox.h" 1
# 74 "./base/gdevbbox.h"
typedef struct gx_device_bbox_procs_s {



    bool (*init_box)(void *proc_data);



    void (*get_box)(const void *proc_data, gs_fixed_rect *pbox);



    void (*add_rect)(void *proc_data, fixed x0, fixed y0, fixed x1, fixed y1);



    bool (*in_rect)(const void *proc_data, const gs_fixed_rect *pbox);

} gx_device_bbox_procs_t;

bool bbox_default_init_box(void *proc_data);
void bbox_default_get_box(const void *proc_data, gs_fixed_rect *pbox);
void bbox_default_add_rect(void *proc_data, fixed x0, fixed y0, fixed x1, fixed y1);
bool bbox_default_in_rect(const void *proc_data, const gs_fixed_rect *pbox);
# 110 "./base/gdevbbox.h"
typedef struct gx_device_bbox_s gx_device_bbox;




struct gx_device_bbox_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; bool free_standing; bool forward_open_close; gx_device_bbox_procs_t box_procs; void *box_proc_data; bool white_is_opaque; gs_fixed_rect bbox; gx_color_index black, white; gx_color_index transparent;
};

extern const gs_memory_struct_type_t st_device_bbox;






void gx_device_bbox_init(gx_device_bbox * dev, gx_device * target, gs_memory_t *mem);


void gx_device_bbox_fwd_open_close(gx_device_bbox * dev,
                                   bool forward_open_close);


void gx_device_bbox_set_white_opaque(gx_device_bbox *dev,
                                     bool white_is_opaque);


void gx_device_bbox_bbox(gx_device_bbox * dev, gs_rect * pbbox);


void gx_device_bbox_release(gx_device_bbox *dev);
# 26 "./base/gdevvec.h" 2

# 1 "./base/gxistate.h" 1
# 29 "./base/gxistate.h"
# 1 "./base/gxline.h" 1
# 28 "./base/gxline.h"
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
# 28 "./base/gdevvec.h" 2
# 1 "./base/gxhldevc.h" 1
# 67 "./base/gxhldevc.h"
typedef struct gx_hl_saved_color_s {
    gs_id color_space_id;
    gs_id pattern_id;
    bool ccolor_valid;
    gs_client_color ccolor;
    gx_device_color_saved saved_dev_color;
} gx_hl_saved_color;




void gx_hld_saved_color_init(gx_hl_saved_color * psc);





const gs_state * gx_hld_get_gstate_ptr(const gs_imager_state * pis);
# 99 "./base/gxhldevc.h"
bool gx_hld_save_color(const gs_imager_state * pis,
        const gx_device_color * pdevc, gx_hl_saved_color * psc);






bool gx_hld_saved_color_equal(const gx_hl_saved_color * psc1,
                           const gx_hl_saved_color * psc2);




bool gx_hld_saved_color_same_cspace(const gx_hl_saved_color * psc1,
                           const gx_hl_saved_color * psc2);




bool
gx_hld_is_hl_color_available(const gs_imager_state * pis,
                const gx_device_color * pdevc);
# 130 "./base/gxhldevc.h"
typedef enum {
        non_pattern_color_space,
        pattern_color_space,
        use_process_color
} gx_hld_get_color_space_and_ccolor_status;
# 159 "./base/gxhldevc.h"
gx_hld_get_color_space_and_ccolor_status gx_hld_get_color_space_and_ccolor(
                const gs_imager_state * pis, const gx_device_color * pdevc,
                const gs_color_space ** ppcs, const gs_client_color ** ppcc);
# 170 "./base/gxhldevc.h"
int gx_hld_get_number_color_components(const gs_imager_state * pis);




typedef enum {
    valid_result = 1,
    invalid_color_info = 2,
    invalid_component_requested = 3
} gx_hld_get_color_component_status;
# 189 "./base/gxhldevc.h"
gx_hld_get_color_component_status gx_hld_get_color_component(
                const gs_imager_state * pis, const gx_device_color * pdevc,
                int comp_numi, float * output);
# 29 "./base/gdevvec.h" 2
# 1 "./base/stream.h" 1
# 23 "./base/stream.h"
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
# 35 "./base/gxiodev.h"
typedef struct gx_io_device_procs_s gx_io_device_procs;
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
# 30 "./base/gdevvec.h" 2
# 64 "./base/gdevvec.h"
typedef struct gx_device_vector_s gx_device_vector;
# 76 "./base/gdevvec.h"
typedef enum {
    gx_path_type_none = 0,




    gx_path_type_fill = 1,
    gx_path_type_stroke = 2,
    gx_path_type_clip = 4,
    gx_path_type_winding_number = 0,
    gx_path_type_even_odd = 8,
    gx_path_type_optimize = 16,
    gx_path_type_always_close = 32,
    gx_path_type_rule = gx_path_type_winding_number | gx_path_type_even_odd
} gx_path_type_t;
typedef enum {
    gx_rect_x_first,
    gx_rect_y_first
} gx_rect_direction_t;
typedef struct gx_device_vector_procs_s {

    int (*beginpage) (gx_device_vector * vdev);







    int (*setlinewidth) (gx_device_vector * vdev, double width);
    int (*setlinecap) (gx_device_vector * vdev, gs_line_cap cap);
    int (*setlinejoin) (gx_device_vector * vdev, gs_line_join join);
    int (*setmiterlimit) (gx_device_vector * vdev, double limit);
    int (*setdash) (gx_device_vector * vdev, const float *pattern,
                    uint count, double offset);
    int (*setflat) (gx_device_vector * vdev, double flatness);
    int (*setlogop) (gx_device_vector * vdev, gs_logical_operation_t lop,
                     gs_logical_operation_t diff);

    bool (*can_handle_hl_color) (gx_device_vector * vdev, const gs_imager_state * pis,
                         const gx_drawing_color * pdc);
    int (*setfillcolor) (gx_device_vector * vdev, const gs_imager_state * pis,
                         const gx_drawing_color * pdc);
    int (*setstrokecolor) (gx_device_vector * vdev, const gs_imager_state * pis,
                           const gx_drawing_color * pdc);


    int (*dopath) (gx_device_vector * vdev, const gx_path * ppath,
                   gx_path_type_t type, const gs_matrix *pmat);
    int (*dorect) (gx_device_vector * vdev, fixed x0, fixed y0, fixed x1,
                   fixed y1, gx_path_type_t type);
    int (*beginpath) (gx_device_vector * vdev, gx_path_type_t type);
    int (*moveto) (gx_device_vector * vdev, double x0, double y0,
                   double x, double y, gx_path_type_t type);
    int (*lineto) (gx_device_vector * vdev, double x0, double y0,
                   double x, double y, gx_path_type_t type);
    int (*curveto) (gx_device_vector * vdev, double x0, double y0,
                    double x1, double y1, double x2, double y2,
                    double x3, double y3, gx_path_type_t type);
    int (*closepath) (gx_device_vector * vdev, double x0, double y0,
                      double x_start, double y_start, gx_path_type_t type);
    int (*endpath) (gx_device_vector * vdev, gx_path_type_t type);
} gx_device_vector_procs;



int gdev_vector_setflat(gx_device_vector * vdev, double flatness);



int gdev_vector_dopath(gx_device_vector * vdev, const gx_path * ppath,
                       gx_path_type_t type, const gs_matrix *pmat);


int gdev_vector_dorect(gx_device_vector * vdev, fixed x0, fixed y0,
                       fixed x1, fixed y1, gx_path_type_t type);
# 210 "./base/gdevvec.h"
struct gx_device_vector_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gs_memory_t *v_memory; const gx_device_vector_procs *vec_procs; char fname[(4096 - 1) + 1]; FILE *file; stream *strm; byte *strmbuf; uint strmbuf_size; int open_options; gs_imager_state state; float *dash_pattern; uint dash_pattern_size; bool fill_used_process_color; bool stroke_used_process_color; gx_hl_saved_color saved_fill_color; gx_hl_saved_color saved_stroke_color; gs_id no_clip_path_id; gs_id clip_path_id; gx_path_type_t fill_options, stroke_options; gs_point scale; bool in_page; gx_device_bbox *bbox_device; gx_color_index black, white;
};



extern const gs_memory_struct_type_t st_device_vector;
# 227 "./base/gdevvec.h"
void gdev_vector_init(gx_device_vector * vdev);


void gdev_vector_reset(gx_device_vector * vdev);
# 241 "./base/gdevvec.h"
int gdev_vector_open_file_options(gx_device_vector * vdev,
                                  uint strmbuf_size, int open_options);







stream *gdev_vector_stream(gx_device_vector * vdev);



int gdev_vector_update_log_op(gx_device_vector * vdev,
                              gs_logical_operation_t lop);



int gdev_vector_update_fill_color(gx_device_vector * vdev,
                                  const gs_imager_state * pis,
                                  const gx_drawing_color * pdcolor);



int gdev_vector_prepare_fill(gx_device_vector * vdev,
                             const gs_imager_state * pis,
                             const gx_fill_params * params,
                             const gx_drawing_color * pdcolor);






int gdev_vector_prepare_stroke(gx_device_vector * vdev,
                               const gs_imager_state * pis,
                               const gx_stroke_params * params,
                               const gx_drawing_color * pdcolor,
                               double scale);







int gdev_vector_stroke_scaling(const gx_device_vector *vdev,
                               const gs_imager_state *pis,
                               double *pscale, gs_matrix *pmat);


typedef struct gdev_vector_dopath_state_s {

    gx_device_vector *vdev;
    gx_path_type_t type;
    bool first;
    gs_matrix scale_mat;

    gs_point start;
    gs_point prev;
} gdev_vector_dopath_state_t;
void gdev_vector_dopath_init(gdev_vector_dopath_state_t *state,
                             gx_device_vector *vdev,
                             gx_path_type_t type, const gs_matrix *pmat);


int gdev_vector_dopath_segment(gdev_vector_dopath_state_t *state, int pe_op,
                               gs_fixed_point vs[3]);





int gdev_vector_write_polygon(gx_device_vector * vdev,
                              const gs_fixed_point * points, uint count,
                              bool close, gx_path_type_t type);


int gdev_vector_write_rectangle(gx_device_vector * vdev,
                                fixed x0, fixed y0, fixed x1, fixed y1,
                                bool close, gx_rect_direction_t dir);



int gdev_vector_write_clip_path(gx_device_vector * vdev,
                                const gx_clip_path * pcpath);



int gdev_vector_update_clip_path(gx_device_vector * vdev,
                                 const gx_clip_path * pcpath);


int gdev_vector_close_file(gx_device_vector * vdev);
# 349 "./base/gdevvec.h"
typedef struct gdev_vector_image_enum_s {
    const gx_image_type_t *image_type; const gx_image_enum_procs_t *procs; gx_device *dev; gs_memory_t *memory; gs_id id; bool skipping; int num_planes; int plane_depths[((64) + 1)]; int plane_widths[((64) + 1)]; gx_image_enum_common_t *default_info; gx_image_enum_common_t *bbox_info; int width, height; int bits_per_pixel; uint bits_per_row; int y;
} gdev_vector_image_enum_t;

extern const gs_memory_struct_type_t st_vector_image_enum;
# 364 "./base/gdevvec.h"
int gdev_vector_begin_image(gx_device_vector * vdev,
                        const gs_imager_state * pis, const gs_image_t * pim,
                        gs_image_format_t format, const gs_int_rect * prect,
              const gx_drawing_color * pdcolor, const gx_clip_path * pcpath,
                    gs_memory_t * mem, const gx_image_enum_procs_t * pprocs,
                            gdev_vector_image_enum_t * pie);



int gdev_vector_end_image(gx_device_vector * vdev,
       gdev_vector_image_enum_t * pie, bool draw_last, gx_color_index pad);




int gdev_vector_put_params(gx_device *dev, gs_param_list *plist);
int gdev_vector_get_params(gx_device *dev, gs_param_list *plist);




int gdev_vector_fill_rectangle(gx_device *dev, int x, int y, int width, int height, gx_color_index color);

int gdev_vector_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);

int gdev_vector_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);


int gdev_vector_fill_trapezoid(gx_device *dev, const gs_fixed_edge *left, const gs_fixed_edge *right, fixed ybot, fixed ytop, bool swap_axes, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gdev_vector_fill_parallelogram(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
int gdev_vector_fill_triangle(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop);
# 29 "./devices/vector/gdevpx.c" 2
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
# 30 "./devices/vector/gdevpx.c" 2
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
# 31 "./devices/vector/gdevpx.c" 2
# 1 "./base/gdevpxat.h" 1
# 22 "./base/gdevpxat.h"
typedef enum {

    pxaPaletteDepth = 2,
    pxaColorSpace,
    pxaNullBrush,
    pxaNullPen,
    pxaPaletteData,

    pxaPatternSelectID = 8,
    pxaGrayLevel,
    pxaLightness,
    pxaRGBColor,
    pxaPatternOrigin,
    pxaNewDestinationSize,
    pxaPrimaryArray,
    pxaPrimaryDepth,
    pxaSaturation,
    pxaColorimetricColorSpace,
    pxaXYChromaticities,
    pxaWhiteReferencePoint,
    pxaCRGBMinMax,
    pxaGammaGain,

    pxaAllObjectTypes = 29,
    pxaTextObjects,
    pxaVectorObjects,
    pxaRasterObjects,
    pxaDeviceMatrix,
    pxaDitherMatrixDataType,
    pxaDitherOrigin,
    pxaMediaDestination,
    pxaMediaSize,
    pxaMediaSource,
    pxaMediaType,
    pxaOrientation,
    pxaPageAngle,
    pxaPageOrigin,
    pxaPageScale,
    pxaROP3,
    pxaTxMode,

    pxaCustomMediaSize = 47,
    pxaCustomMediaSizeUnits,
    pxaPageCopies,
    pxaDitherMatrixSize,
    pxaDitherMatrixDepth,
    pxaSimplexPageMode,
    pxaDuplexPageMode,
    pxaDuplexPageSide,

    pxaArcDirection = 65,
    pxaBoundingBox,
    pxaDashOffset,
    pxaEllipseDimension,
    pxaEndPoint,
    pxaFillMode,
    pxaLineCapStyle,
    pxaLineJoinStyle,
    pxaMiterLength,
    pxaLineDashStyle,
    pxaPenWidth,
    pxaPoint,
    pxaNumberOfPoints,
    pxaSolidLine,
    pxaStartPoint,
    pxaPointType,
    pxaControlPoint1,
    pxaControlPoint2,
    pxaClipRegion,
    pxaClipMode,

    pxaColorDepth = 98,
    pxaBlockHeight,
    pxaColorMapping,
    pxaCompressMode,
    pxaDestinationBox,
    pxaDestinationSize,
    pxaPatternPersistence,
    pxaPatternDefineID,

    pxaSourceHeight = 107,
    pxaSourceWidth,
    pxaStartLine,
    pxaPadBytesMultiple,
    pxaBlockByteLength,

    pxaNumberOfScanLines = 115,
    pxaPrintableArea = 116,

    pxaColorTreatment = 120,

    pxaCommentData = 129,
    pxaDataOrg,

    pxaMeasure = 134,

    pxaSourceType = 136,
    pxaUnitsPerMeasure,

    pxaStreamName = 139,
    pxaStreamDataLength,
    pxaPCLSelectFont = 141,

    pxaErrorReport = 143,

    pxaVUExtension = 145,
    pxaVUDataLength = 146,
    pxaVUAttr1 = 147,
    pxaVUAttr2,
    pxaVUAttr3,
    pxaVUAttr4,
    pxaVUAttr5,
    pxaVUAttr6,

    pxaCharAngle = 161,
    pxaCharCode,
    pxaCharDataSize,
    pxaCharScale,
    pxaCharShear,
    pxaCharSize,
    pxaFontHeaderLength,
    pxaFontName,
    pxaFontFormat,
    pxaSymbolSet,
    pxaTextData,
    pxaCharSubModeArray,
    pxaWritingMode,
    pxaXSpacingData = 175,
    pxaYSpacingData,
    pxaCharBoldValue,

    px_attribute_next

} px_attribute_t;
# 32 "./devices/vector/gdevpx.c" 2
# 1 "./base/gdevpxen.h" 1
# 22 "./base/gdevpxen.h"
typedef enum {
    eClockWise = 0,
    eCounterClockWise,
    pxeArcDirection_next
} pxeArcDirection_t;

typedef enum {
    eNoSubstitution = 0,
    eVerticalSubstitution,
    pxeCharSubModeArray_next
} pxeCharSubModeArray_t;

typedef enum {
    eNonZeroWinding = 0,
    eEvenOdd,
    pxeClipMode_next,
    pxeFillMode_next = pxeClipMode_next
} pxeClipMode_t;

typedef enum {
    eInterior = 0,
    eExterior,
    pxeClipRegion_next
} pxeClipRegion_t;

typedef enum {
    e1Bit = 0,
    e4Bit,
    e8Bit,
    pxeColorDepth_next
} pxeColorDepth_t;

typedef enum {
    eCRGB = 5,
    pxeColorimetricColorSpace_next
} pxeColorimetricColorSpace_t;

typedef enum {
    eDirectPixel = 0,
    eIndexedPixel,
    pxeColorMapping_next
} pxeColorMapping_t;

typedef enum {
    eNoColorSpace = 0,
    eGray,
    eRGB,
    eSRGB = 6,
    eGraySub = 7,
    pxeColorSpace_next
} pxeColorSpace_t;

typedef enum {
    eNoCompression = 0,
    eRLECompression,
    eJPEGCompression,
    eDeltaRowCompression,
    pxeCompressMode_next
} pxeCompressMode_t;

typedef enum {
    eBinaryHighByteFirst = 0,
    eBinaryLowByteFirst,
    pxeDataOrg_next
} pxeDataOrg_t;

typedef enum {
    eDefault = 0,
    pxeDataSource_next
} pxeDataSource_t;

typedef enum {
    eUByte = 0,
    eSByte,
    eUInt16,
    eSInt16,
    pxeDataType_next
} pxeDataType_t;

typedef enum {
    eDownloaded = -1,
    eDeviceBest = 0,
    pxeDitherMatrix_next
} pxeDitherMatrix_t;

typedef enum {
    eDuplexHorizontalBinding = 0,
    eDuplexVerticalBinding,
    pxeDuplexPageMode_next
} pxeDuplexPageMode_t;

typedef enum {
    eFrontMediaSide = 0,
    eBackMediaSide,
    pxeDuplexPageSide_next
} pxeDuplexPageSide_t;

typedef enum {

    eNoReporting = 0,
    eBackChannel,
    eErrorPage,
    eBackChAndErrPage,
    eNWBackChannel,
    eNWErrorPage,
    eNWBackChAndErrPage,
    pxeErrorReport_next
} pxeErrorReport_t;

typedef pxeClipMode_t pxeFillMode_t;

typedef enum {
    eButtCap = 0,
    eRoundCap,
    eSquareCap,
    eTriangleCap,
    pxeLineCap_next
} pxeLineCap_t;




typedef enum {
    eMiterJoin = 0,
    eRoundJoin,
    eBevelJoin,
    eNoJoin,
    pxeLineJoin_next
} pxeLineJoin_t;




typedef enum {
    eInch = 0,
    eMillimeter,
    eTenthsOfAMillimeter,
    pxeMeasure_next
} pxeMeasure_t;



typedef enum {
    eDefaultDestination = 0,
    eFaceDownBin,
    eFaceUpBin,
    eJobOffsetBin,
    pxeMediaDestination_next
} pxeMediaDestination_t;

typedef enum {
    eLetterPaper = 0,
    eLegalPaper,
    eA4Paper,
    eExecPaper,
    eLedgerPaper,
    eA3Paper,
    eCOM10Envelope,
    eMonarchEnvelope,
    eC5Envelope,
    eDLEnvelope,
    eJB4Paper,
    eJB5Paper,
    eB5Envelope,
    eB5Paper,
    eJPostcard,
    eJDoublePostcard,
    eA5Paper,
    eA6Paper,
    eJB6Paper,
    eJIS8K,
    eJIS16K,
    eJISExec,
    eDefaultPaperSize = 96,
    eB6JIS = 201,
    eC6Envelope = 202,
    e8Kai = 203,
    e16Kai = 204,
    e12x18 = 205,
    e13x19_2 = 212,
    e13x19 = 213,
    e12_6x19_2 = 214,
    e12_6x18_5 = 215,
    e13x18 = 216,
    eSRA3 = 217,
    eSRA4 = 218,
    e226x310 = 219,
    e310x432 = 220,
    eEngQuatro = 221,
    e11x14 = 222,
    e11x15 = 223,
    e10x14 = 224,
    pxeMediaSize_next
} pxeMediaSize_t;
# 269 "./base/gdevpxen.h"
typedef enum {
    eDefaultSource = 0,
    eAutoSelect,
    eManualFeed,
    eMultiPurposeTray,
    eUpperCassette,
    eLowerCassette,
    eEnvelopeTray,
    eThirdCassette,
    pxeMediaSource_next
} pxeMediaSource_t;


typedef enum {
    eDefaultType = 0,
    pxeMediaType_next
} pxeMediaType_t;

typedef enum {
    ePortraitOrientation = 0,
    eLandscapeOrientation,
    eReversePortrait,
    eReverseLandscape,
    eDefaultOrientation,
    pxeOrientation_next
} pxeOrientation_t;

typedef enum {
    eTempPattern = 0,
    ePagePattern,
    eSessionPattern,
    pxePatternPersistence_next
} pxePatternPersistence_t;

typedef enum {
    eSimplexFrontSide = 0,
    pxeSimplexPageMode_next
} pxeSimplexPageMode_t;

typedef enum {
    eOpaque = 0,
    eTransparent,
    pxeTxMode_next
} pxeTxMode_t;

typedef enum {
    eHorizontal = 0,
    eVertical,
    pxeWritingMode_next
} pxeWritingMode_t;



typedef enum {
    eDisableAH = 0,


    eEnableAH,
    pxeAdaptive_Halftoning_next
} pxeAdaptiveHalftone_t;

typedef enum {
    eHighLPI = 0,
    eMediumLPI,
    eLowLPI,
    pxeeHalftoneMethod_next
} pxeHalftoneMethod_t;

typedef enum {
    eDisableCT = 0,
    eMax,
    eNormal,
    eLight,
    pxeColorTrapping_next
} pxeColorTrapping_t;

typedef enum {
    eTonerBlack = 0,
    eProcessBlack,
    pxeNeutralAxis_next
} pxeNeutralAxis_t;

typedef enum {
    eNoTreatment = 0,
    eVivid,
    eScreenMatch,
    eText,
    eOutofGamut,
    eCIELabmatch1,
    eCIELabmatch2,
    pxeColorTreatment_next
} pxeColorTreatment;
# 33 "./devices/vector/gdevpx.c" 2
# 1 "./base/gdevpxop.h" 1
# 22 "./base/gdevpxop.h"
typedef enum {

    pxtNull = 0x00, pxt01, pxt02, pxt03,
    pxt04, pxt05, pxt06, pxt07,
    pxt08, pxtHT, pxtLF, pxtVT,
    pxtFF, pxtCR, pxt0e, pxt0f,

    pxt10, pxt11, pxt12, pxt13,
    pxt14, pxt15, pxt16, pxt17,
    pxt18, pxt19, pxt1a, pxt1b,
    pxt1c, pxt1d, pxt1e, pxt1f,

    pxtSpace, pxt21, pxt22, pxt23,
    pxt24, pxt25, pxt26, pxt_beginASCII,
    pxt_beginBinaryMSB, pxt_beginBinaryLSB, pxt2a, pxt2b,
    pxt2c, pxt2d, pxt2e, pxt2f,

    pxt30, pxt31, pxt32, pxt33,
    pxt34, pxt35, pxt36, pxt37,
    pxt38, pxt39, pxt3a, pxt3b,
    pxt3c, pxt3d, pxt3e, pxt3f,

    pxt40, pxtBeginSession, pxtEndSession, pxtBeginPage,
    pxtEndPage, pxt45, pxt46, pxtComment,
    pxtOpenDataSource, pxtCloseDataSource, pxt4a, pxt4b,
    pxt4c, pxt4d, pxt4e, pxtBeginFontHeader,

    pxtReadFontHeader, pxtEndFontHeader, pxtBeginChar, pxtReadChar,
    pxtEndChar, pxtRemoveFont, pxtSetCharAttributes , pxt57,
    pxt58, pxt59, pxt5a, pxtBeginStream,
    pxtReadStream, pxtEndStream, pxtExecStream, pxtRemoveStream ,

    pxtPopGS, pxtPushGS, pxtSetClipReplace, pxtSetBrushSource,
    pxtSetCharAngle, pxtSetCharScale, pxtSetCharShear, pxtSetClipIntersect,
    pxtSetClipRectangle, pxtSetClipToPage, pxtSetColorSpace, pxtSetCursor,
    pxtSetCursorRel, pxtSetHalftoneMethod, pxtSetFillMode, pxtSetFont,

    pxtSetLineDash, pxtSetLineCap, pxtSetLineJoin, pxtSetMiterLimit,
    pxtSetPageDefaultCTM, pxtSetPageOrigin, pxtSetPageRotation, pxtSetPageScale,
    pxtSetPaintTxMode, pxtSetPenSource, pxtSetPenWidth, pxtSetROP,
    pxtSetSourceTxMode, pxtSetCharBoldValue, pxt7e, pxtSetClipMode,

    pxtSetPathToClip, pxtSetCharSubMode, pxt82, pxt83,
    pxtCloseSubPath, pxtNewPath, pxtPaintPath, pxt87,
    pxt88, pxt89, pxt8a, pxt8b,
    pxt8c, pxt8d, pxt8e, pxt8f,

    pxt90, pxtArcPath, pxt92, pxtBezierPath,
    pxt94, pxtBezierRelPath, pxtChord, pxtChordPath,
    pxtEllipse, pxtEllipsePath, pxt9a, pxtLinePath,
    pxt9c, pxtLineRelPath, pxtPie, pxtPiePath,

    pxtRectangle, pxtRectanglePath, pxtRoundRectangle, pxtRoundRectanglePath,
    pxta4, pxta5, pxta6, pxta7,
    pxtText, pxtTextPath, pxtaa, pxtab,
    pxtac, pxtad, pxtae, pxtaf,

    pxtBeginImage, pxtReadImage, pxtEndImage, pxtBeginRastPattern,
    pxtReadRastPattern, pxtEndRastPattern, pxtBeginScan, pxtb7,
    pxtEndScan, pxtScanLineRel, pxtba, pxtbb,
    pxtbc, pxtbd, pxtbe, pxtPassThrough,

    pxt_ubyte, pxt_uint16, pxt_uint32, pxt_sint16,
    pxt_sint32, pxt_real32, pxtc6, pxtc7,
    pxt_ubyte_array, pxt_uint16_array, pxt_uint32_array, pxt_sint16_array,
    pxt_sint32_array, pxt_real32_array, pxtce, pxtcf,

    pxt_ubyte_xy, pxt_uint16_xy, pxt_uint32_xy, pxt_sint16_xy,
    pxt_sint32_xy, pxt_real32_xy, pxtd6, pxtd7,
    pxtd8, pxtd9, pxtda, pxtdb,
    pxtdc, pxtdd, pxtde, pxtdf,

    pxt_ubyte_box, pxt_uint16_box, pxt_uint32_box, pxt_sint16_box,
    pxt_sint32_box, pxt_real32_box, pxte6, pxte7,
    pxte8, pxte9, pxtea, pxteb,
    pxtec, pxted, pxtee, pxtef,

    pxtf0, pxtf1, pxtf2, pxtf3,
    pxtf4, pxtf5, pxtf6, pxtf7,
    pxt_attr_ubyte, pxt_attr_uint16, pxt_dataLength, pxt_dataLengthByte,
    pxtfc, pxtfd, pxtfe, pxtff
} px_tag_t;
# 34 "./devices/vector/gdevpx.c" 2
# 1 "./devices/gdevpxut.h" 1
# 26 "./devices/gdevpxut.h"
int px_write_file_header(stream *s, const gx_device *dev);


int px_write_page_header(stream *s, const gx_device *dev);


int px_write_select_media(stream *s, const gx_device *dev,
                          pxeMediaSize_t *pms,
                          byte *media_source,
                          int page, bool Duplex, bool Tumble,
                          int media_type_set, char *media_type);





int px_write_file_trailer(FILE *file);





void px_put_bytes(stream * s, const byte * data, uint count);





void px_put_a(stream * s, px_attribute_t a);
void px_put_ac(stream *s, px_attribute_t a, px_tag_t op);


void px_put_ub(stream * s, byte b);
void px_put_uba(stream *s, byte b, px_attribute_t a);




void px_put_s(stream * s, int i);


void px_put_us(stream * s, uint i);
void px_put_usa(stream *s, uint i, px_attribute_t a);
void px_put_u(stream * s, uint i);


void px_put_usp(stream * s, uint ix, uint iy);
void px_put_usq_fixed(stream * s, fixed x0, fixed y0, fixed x1, fixed y1);

void px_put_ss(stream * s, int i);
void px_put_ssp(stream * s, int ix, int iy);

void px_put_l(stream * s, ulong l);

void px_put_r(stream * s, double r);
void px_put_rl(stream * s, double r);
void px_put_rp(stream * s, double rx, double ry);
void px_put_rpa(stream * s, double rx, double ry, px_attribute_t a);

void px_put_ubaa(stream * s, const byte * data, uint count, px_attribute_t a);

void px_put_data_length(stream * s, uint num_bytes);
# 35 "./devices/vector/gdevpx.c" 2
# 1 "./base/gxlum.h" 1
# 36 "./devices/vector/gdevpx.c" 2
# 1 "./devices/gdevpcl.h" 1
# 51 "./devices/gdevpcl.h"
int gdev_pcl_paper_size(gx_device *);





int gdev_pcl_page_orientation(gx_device * dev);


gx_color_index gdev_pcl_3bit_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int gdev_pcl_3bit_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);


typedef ulong word;
int
    gdev_pcl_mode2compress(const word * row, const word * end_row, byte * compressed),
    gdev_pcl_mode2compress_padded(const word * row, const word * end_row, byte * compressed, bool pad),
    gdev_pcl_mode3compress(int bytecount, const byte * current, byte * previous, byte * compressed),
    gdev_pcl_mode9compress(int bytecount, const byte * current, const byte * previous, byte * compressed);
# 37 "./devices/vector/gdevpx.c" 2
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
# 38 "./devices/vector/gdevpx.c" 2
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
# 622 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;





extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 644 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __asm__ ("" "mkstemps64") __attribute__ ((__nonnull__ (1))) ;






extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
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
# 39 "./devices/vector/gdevpx.c" 2
# 52 "./devices/vector/gdevpx.c"
typedef enum {
    POINTS_NONE,
    POINTS_LINES,
    POINTS_CURVES
} point_type_t;
typedef struct gx_device_pclxl_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gs_memory_t *v_memory; const gx_device_vector_procs *vec_procs; char fname[(4096 - 1) + 1]; FILE *file; stream *strm; byte *strmbuf; uint strmbuf_size; int open_options; gs_imager_state state; float *dash_pattern; uint dash_pattern_size; bool fill_used_process_color; bool stroke_used_process_color; gx_hl_saved_color saved_fill_color; gx_hl_saved_color saved_stroke_color; gs_id no_clip_path_id; gs_id clip_path_id; gx_path_type_t fill_options, stroke_options; gs_point scale; bool in_page; gx_device_bbox *bbox_device; gx_color_index black, white;

    pxeMediaSize_t media_size;
    bool ManualFeed;
    bool ManualFeed_set;
    int MediaPosition_old;
    int MediaPosition;
    int MediaPosition_set;
    char MediaType_old[64];
    char MediaType[64];
    int MediaType_set;
    int page;
    bool Duplex;
    bool Tumble;
    gx_path_type_t fill_rule;
    gx_path_type_t clip_rule;
    pxeColorSpace_t color_space;
    struct pal_ {
        int size;
        byte data[256 * 3];
    } palette;
    struct pts_ {
        gs_int_point current;
        point_type_t type;
        int count;
        gs_int_point data[40];
    } points;
    struct ch_ {




        ushort table[400 * 3 / 2];
        struct cd_ {
            gs_id id;
            uint size;
        } data[400];
        int next_in;
        int next_out;
        int count;
        ulong used;
    } chars;
    bool font_set;
    int state_rotated;
    int CompressMode;
    bool scaled;
    double x_scale;
    double y_scale;
    bool pen_null;
    bool brush_null;
} gx_device_pclxl;

static gs_ptr_type_t device_pclxl_enum_ptrs(const gs_memory_t *mem, const void *vptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { return (*(st_device_vector).enum_ptrs)(mem, vptr, size, index-(0), pep, &(st_device_vector), gcst); } static void device_pclxl_reloc_ptrs(void *vptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { { (*(st_device_vector).reloc_ptrs)(vptr, size, &(st_device_vector), gcst); } } const gs_memory_struct_type_t st_device_pclxl = { sizeof(gx_device_pclxl), "gx_device_pclxl", 0, 0, device_pclxl_enum_ptrs, device_pclxl_reloc_ptrs, gx_device_finalize, 0 };
# 125 "./devices/vector/gdevpx.c"
static int pclxl_open_device(gx_device *dev);
static int pclxl_output_page(gx_device *dev, int num_copies, int flush);
static int pclxl_close_device(gx_device *dev);
static int pclxl_copy_mono(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
static int pclxl_copy_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
static int pclxl_fill_mask(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath);

static int pclxl_get_params(gx_device *dev, gs_param_list *plist);
static int pclxl_put_params(gx_device *dev, gs_param_list *plist);


static int pclxl_begin_image(gx_device *dev, const gs_imager_state *pis, const gs_image_t *pim, gs_image_format_t format, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
static int pclxl_strip_copy_rop(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop);
# 179 "./devices/vector/gdevpx.c"
const gx_device_pclxl gs_pxlmono_device = {
    sizeof(gx_device_pclxl), 0, "pxlmono", 0 , &st_device_pclxl, 0 , 0 , { 0 } , 0 , 0 , 0, {(8 > 8 ? 3 : 1) , (8 > 8 ? 3 : 1) , ( ((8 > 8 ? 3 : 1)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 8 , (((8 > 8 ? 3 : 1)) == 3 ? 0xff : ((8 > 8 ? 3 : 1)) - 1) , (8 > 1 ? 255 : 1) , (8 > 8 ? 255 : 0) , (8 > 1 ? 256 : 2) , (8 > 8 ? 256 : 1) , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((8 > 8 ? 3 : 1)) == 1 ? "DeviceGray" : (((8 > 8 ? 3 : 1)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, 85 * 600 / 10, 110 * 600 / 10, 0 , 0 , 0 , 0 , { (float)((((85 * 600 / 10) * 72.0 + 0.5) - 0.5) / (600)) , (float)((((110 * 600 / 10) * 72.0 + 0.5) - 0.5) / (600)) }, { 0, 0, 0, 0 } , 0 , { 600, 600 } , { 600, 600 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },
    { pclxl_open_device, ((void*)0), ((void*)0), pclxl_output_page, pclxl_close_device, gx_default_gray_map_rgb_color, gx_default_gray_map_color_rgb, gdev_vector_fill_rectangle, ((void*)0), pclxl_copy_mono, pclxl_copy_color, ((void*)0), ((void*)0), pclxl_get_params, pclxl_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_page_device_get_page_device, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_vector_fill_path, gdev_vector_stroke_path, pclxl_fill_mask, gdev_vector_fill_trapezoid, gdev_vector_fill_parallelogram, gdev_vector_fill_triangle, ((void*)0) , pclxl_begin_image, ((void*)0), ((void*)0), ((void*)0), pclxl_strip_copy_rop}
};

const gx_device_pclxl gs_pxlcolor_device = {
    sizeof(gx_device_pclxl), 0, "pxlcolor", 0 , &st_device_pclxl, 0 , 0 , { 0 } , 0 , 0 , 0, {(24 > 8 ? 3 : 1) , (24 > 8 ? 3 : 1) , ( ((24 > 8 ? 3 : 1)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 24 , (((24 > 8 ? 3 : 1)) == 3 ? 0xff : ((24 > 8 ? 3 : 1)) - 1) , (24 > 1 ? 255 : 1) , (24 > 8 ? 255 : 0) , (24 > 1 ? 256 : 2) , (24 > 8 ? 256 : 1) , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((24 > 8 ? 3 : 1)) == 1 ? "DeviceGray" : (((24 > 8 ? 3 : 1)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, 85 * 600 / 10, 110 * 600 / 10, 0 , 0 , 0 , 0 , { (float)((((85 * 600 / 10) * 72.0 + 0.5) - 0.5) / (600)) , (float)((((110 * 600 / 10) * 72.0 + 0.5) - 0.5) / (600)) }, { 0, 0, 0, 0 } , 0 , { 600, 600 } , { 600, 600 }, {0, 0}, {0, 0, 0, 0}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page },
    { pclxl_open_device, ((void*)0), ((void*)0), pclxl_output_page, pclxl_close_device, gx_default_rgb_map_rgb_color, gx_default_rgb_map_color_rgb, gdev_vector_fill_rectangle, ((void*)0), pclxl_copy_mono, pclxl_copy_color, ((void*)0), ((void*)0), pclxl_get_params, pclxl_put_params, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_page_device_get_page_device, ((void*)0), ((void*)0), ((void*)0), ((void*)0), gdev_vector_fill_path, gdev_vector_stroke_path, pclxl_fill_mask, gdev_vector_fill_trapezoid, gdev_vector_fill_parallelogram, gdev_vector_fill_triangle, ((void*)0) , pclxl_begin_image, ((void*)0), ((void*)0), ((void*)0), pclxl_strip_copy_rop}
};



static __inline__ stream *
pclxl_stream(gx_device_pclxl *xdev)
{
    return gdev_vector_stream((gx_device_vector *)xdev);
}


static void
pclxl_page_init(gx_device_pclxl * xdev)
{
    gdev_vector_init((gx_device_vector *)xdev);
    xdev->in_page = ((bool)0);
    xdev->fill_rule = gx_path_type_winding_number;
    xdev->clip_rule = gx_path_type_winding_number;
    xdev->color_space = eNoColorSpace;
    xdev->palette.size = 0;
    xdev->font_set = ((bool)0);
    xdev->state_rotated = 0;
    xdev->scaled = ((bool)0);
    xdev->x_scale = 1;
    xdev->y_scale = 1;
    xdev->pen_null = ((bool)0);
    xdev->brush_null = ((bool)0);
}





static void
pclxl_set_color_space(gx_device_pclxl * xdev, pxeColorSpace_t color_space)
{
    if (xdev->color_space != color_space) {
        stream *s = pclxl_stream(xdev);

        px_put_ub(s, (byte)color_space);
        px_put_ac(s, pxaColorSpace, pxtSetColorSpace);
        xdev->color_space = color_space;
        xdev->palette.size = 0;
    }
}
static void
pclxl_set_color_palette(gx_device_pclxl * xdev, pxeColorSpace_t color_space,
                        const byte * palette, uint palette_size)
{
    if (xdev->color_space != color_space ||
        xdev->palette.size != palette_size ||
        memcmp(xdev->palette.data, palette, palette_size)
        ) {
        stream *s = pclxl_stream(xdev);
        static const byte csp_[] = {
            pxt_attr_ubyte, (pxaColorSpace),
            pxt_ubyte, (byte)(e8Bit), pxt_attr_ubyte, (pxaPaletteDepth),
            pxt_ubyte_array
        };

        px_put_ub(s, (byte)color_space);
        px_put_bytes(s, csp_, sizeof(csp_));
        px_put_u(s, palette_size);
        px_put_bytes(s, palette, palette_size);
        px_put_ac(s, pxaPaletteData, pxtSetColorSpace);
        xdev->color_space = color_space;
        xdev->palette.size = palette_size;
        memcpy(xdev->palette.data, palette, palette_size);
    }
}







static int
pclxl_set_cached_nulls(gx_device_pclxl * xdev, px_attribute_t null_source, px_tag_t op)
{
    stream *s = pclxl_stream(xdev);
    if (op == pxtSetPenSource) {
        if (xdev->pen_null)
            return 0;
        else
            xdev->pen_null = ((bool)1);
    }
    if (op == pxtSetBrushSource) {
        if (xdev->brush_null)
            return 0;
        else
            xdev->brush_null = ((bool)1);
    }
    px_put_uba(s, 0, (byte)null_source);
    spputc(s, (byte)op);
    return 0;
}


static int
pclxl_set_color(gx_device_pclxl * xdev, const gx_drawing_color * pdc,
                px_attribute_t null_source, px_tag_t op)
{
    stream *s = pclxl_stream(xdev);

    if (((pdc)->type == gx_dc_type_pure)) {
        gx_color_index color = ((pdc)->colors.pure);

        if (op == pxtSetPenSource) xdev->pen_null = ((bool)0);
        if (op == pxtSetBrushSource) xdev->brush_null = ((bool)0);

        if (xdev->color_info.num_components == 1 || ((color) >> 8 == ((color) & 0xffff))) {
            pclxl_set_color_space(xdev, eGray);
            px_put_uba(s, (byte) color, pxaGrayLevel);
        } else {
            pclxl_set_color_space(xdev, eRGB);
            spputc(s, pxt_ubyte_array);
            px_put_ub(s, 3);
            spputc(s, (byte) (color >> 16));
            spputc(s, (byte) (color >> 8));
            spputc(s, (byte) color);
            px_put_a(s, pxaRGBColor);
        }
    } else if (((pdc)->type == gx_dc_type_null) || !((pdc)->type != gx_dc_type_none)) {
        if (op == pxtSetPenSource || op == pxtSetBrushSource)
            return pclxl_set_cached_nulls(xdev, null_source, op);
        else
            px_put_uba(s, 0, null_source);
    } else
        return ((-15));
    spputc(s, (byte)op);
    return 0;
}



static bool
pclxl_can_handle_color_space(const gs_color_space * pcs)
{
    gs_color_space_index index = gs_color_space_get_index(pcs);

    if (index == gs_color_space_index_Indexed) {
        if (pcs->params.indexed.use_proc)
            return ((bool)0);
        index =
            gs_color_space_get_index(gs_cspace_base_space(pcs));
    }
    else if (index == gs_color_space_index_ICC)
    {
        index = gsicc_get_default_type(pcs->cmm_icc_profile_data);
        return ((index < gs_color_space_index_DevicePixel) ? ((bool)1) : ((bool)0));
    }

    return !(index == gs_color_space_index_Separation ||
             index == gs_color_space_index_Pattern ||
             index == gs_color_space_index_ICC);
}


static void
pclxl_set_paints(gx_device_pclxl * xdev, gx_path_type_t type)
{
    stream *s = pclxl_stream(xdev);
    gx_path_type_t rule = type & gx_path_type_rule;

    if (!(type & gx_path_type_fill) &&
        (((&xdev->saved_fill_color.saved_dev_color)->type != gx_dc_type_none) ||
        !((&xdev->saved_fill_color.saved_dev_color)->type == gx_dc_type_null)
        )
        ) {
        pclxl_set_cached_nulls(xdev, pxaNullBrush, pxtSetBrushSource);
        ((&xdev->saved_fill_color.saved_dev_color)->type = gx_dc_type_null);
        if (rule != xdev->fill_rule) {
            px_put_ub(s, (byte)(rule == gx_path_type_even_odd ? eEvenOdd :
                       eNonZeroWinding));
            px_put_ac(s, pxaFillMode, pxtSetFillMode);
            xdev->fill_rule = rule;
        }
    }
    if (!(type & gx_path_type_stroke) &&
        (((&xdev->saved_stroke_color.saved_dev_color)->type != gx_dc_type_none) ||
        !((&xdev->saved_stroke_color.saved_dev_color)->type == gx_dc_type_null)
         )
        ) {
        pclxl_set_cached_nulls(xdev, pxaNullPen, pxtSetPenSource);
        ((&xdev->saved_stroke_color.saved_dev_color)->type = gx_dc_type_null);
    }
}

static void
pclxl_set_page_origin(stream *s, int x, int y)
{
    px_put_ssp(s, x, y);
    px_put_ac(s, pxaPageOrigin, pxtSetPageOrigin);
    return;
}

static void
pclxl_set_page_scale(gx_device_pclxl * xdev, double x_scale, double y_scale)
{
    stream *s = pclxl_stream(xdev);
    if (xdev->scaled) {
        xdev->x_scale = x_scale;
        xdev->y_scale = y_scale;
        px_put_rp(s, x_scale, y_scale);
        px_put_ac(s, pxaPageScale, pxtSetPageScale);
    }
    return;
}

static void
pclxl_unset_page_scale(gx_device_pclxl * xdev)
{
    stream *s = pclxl_stream(xdev);
    if (xdev->scaled) {
        px_put_rp(s, 1/xdev->x_scale, 1/xdev->y_scale);
        px_put_ac(s, pxaPageScale, pxtSetPageScale);
        xdev->scaled = ((bool)0);
        xdev->x_scale = 1;
        xdev->y_scale = 1;
    }
    return;
}


static int
pclxl_set_cursor(gx_device_pclxl * xdev, int x, int y)
{
    stream *s = pclxl_stream(xdev);
    double x_scale = 1;
    double y_scale = 1;




    if (abs(x) > 0x7FFF) {
        x_scale = ((double) abs(x))/0x7FFF;
        x = (x > 0 ? 0x7FFF : -0x7FFF);
        xdev->scaled = ((bool)1);
    }
    if (abs(y) > 0x7FFF) {
        y_scale = ((double) abs(y))/0x7FFF;
        y = (y > 0 ? 0x7FFF : -0x7FFF);
        xdev->scaled = ((bool)1);
    }
    pclxl_set_page_scale(xdev, x_scale, y_scale);
    px_put_ssp(s, x, y);
    px_put_ac(s, pxaPoint, pxtSetCursor);
    pclxl_unset_page_scale(xdev);
    return 0;
}




static void
px_put_np(stream * s, int count, pxeDataType_t dtype)
{
    px_put_uba(s, (byte)count, pxaNumberOfPoints);
    px_put_uba(s, (byte)dtype, pxaPointType);
}
static int
pclxl_flush_points(gx_device_pclxl * xdev)
{
    int count = xdev->points.count;

    if (count) {
        stream *s = pclxl_stream(xdev);
        px_tag_t op;
        int x = xdev->points.current.x, y = xdev->points.current.y;
        int uor = 0, sor = 0;
        pxeDataType_t data_type;
        int i, di;
        byte diffs[40 * 2];
        double x_scale = 1;
        double y_scale = 1;
        int temp_origin_x = 0, temp_origin_y = 0;
        int count_smalls = 0;

        if (xdev->points.type != POINTS_NONE) {
            for (i = 0; i < count; ++i) {
                if ((abs(xdev->points.data[i].x) > 0x7FFF) || (abs(xdev->points.data[i].y) > 0x7FFF))
                    xdev->scaled = ((bool)1);
                if ((abs(xdev->points.data[i].x) < 0x8000) && (abs(xdev->points.data[i].y) < 0x8000)) {
                    if ((temp_origin_x != xdev->points.data[i].x) || (temp_origin_y != xdev->points.data[i].y)) {
                        temp_origin_x = xdev->points.data[i].x;
                        temp_origin_y = xdev->points.data[i].y;
                        count_smalls++;
                    }
                }
            }
            if (xdev->scaled) {





                if (count_smalls) {
                    pclxl_set_page_origin(s, temp_origin_x, temp_origin_y);
                }
                for (i = 0; i < count; ++i) {
                    x_scale = (((((double) abs(xdev->points.data[i].x - temp_origin_x))/0x7FFF) > (x_scale)) ? (((double) abs(xdev->points.data[i].x - temp_origin_x))/0x7FFF) : (x_scale));
                    y_scale = (((((double) abs(xdev->points.data[i].y - temp_origin_y))/0x7FFF) > (y_scale)) ? (((double) abs(xdev->points.data[i].y - temp_origin_y))/0x7FFF) : (y_scale));
                }
                for (i = 0; i < count; ++i) {
                    xdev->points.data[i].x = (int)((xdev->points.data[i].x - temp_origin_x)/x_scale + 0.5);
                    xdev->points.data[i].y = (int)((xdev->points.data[i].y - temp_origin_y)/y_scale + 0.5);
                }
                x = (int)((x - temp_origin_x)/x_scale + 0.5);
                y = (int)((y - temp_origin_y)/y_scale + 0.5);
                pclxl_set_page_scale(xdev, x_scale, y_scale);
            } else {

                count_smalls = 0;
            }
        }
# 514 "./devices/vector/gdevpx.c"
        switch (xdev->points.type) {
            case POINTS_NONE:
                return 0;
            case POINTS_LINES:
                op = pxtLinePath;
                if (count < 3) {
                    for (i = 0; i < count; ++i) {
                        px_put_ssp(s, xdev->points.data[i].x,
                                xdev->points.data[i].y);
                        px_put_a(s, pxaEndPoint);
                        spputc(s, (byte)op);
                    }
                    pclxl_unset_page_scale(xdev);
                    if (count_smalls)
                        pclxl_set_page_origin(s, -temp_origin_x, -temp_origin_y);
                    goto zap;
                }

                for (i = di = 0; i < count; ++i, di += 2) {
                    int dx = xdev->points.data[i].x - x;
                    int dy = xdev->points.data[i].y - y;

                    diffs[di] = (byte) dx;
                    diffs[di + 1] = (byte) dy;
                    uor |= dx | dy;
                    sor |= (dx + 0x80) | (dy + 0x80);
                    x += dx, y += dy;
                }
                if (!(uor & ~0xff))
                    data_type = eUByte;
                else if (!(sor & ~0xff))
                    data_type = eSByte;
                else
                    break;
                op = pxtLineRelPath;

              useb:px_put_np(s, count, data_type);
                spputc(s, (byte)op);
                px_put_data_length(s, count * 2);
                px_put_bytes(s, diffs, count * 2);
                pclxl_unset_page_scale(xdev);
                if (count_smalls)
                    pclxl_set_page_origin(s, -temp_origin_x, -temp_origin_y);
                goto zap;
            case POINTS_CURVES:
                op = pxtBezierPath;

                for (i = di = 0; i < count; i += 3, di += 6) {
                    int dx1 = xdev->points.data[i].x - x;
                    int dy1 = xdev->points.data[i].y - y;
                    int dx2 = xdev->points.data[i + 1].x - x;
                    int dy2 = xdev->points.data[i + 1].y - y;
                    int dx = xdev->points.data[i + 2].x - x;
                    int dy = xdev->points.data[i + 2].y - y;

                    diffs[di] = (byte) dx1;
                    diffs[di + 1] = (byte) dy1;
                    diffs[di + 2] = (byte) dx2;
                    diffs[di + 3] = (byte) dy2;
                    diffs[di + 4] = (byte) dx;
                    diffs[di + 5] = (byte) dy;
                    uor |= dx1 | dy1 | dx2 | dy2 | dx | dy;
                    sor |= (dx1 + 0x80) | (dy1 + 0x80) |
                        (dx2 + 0x80) | (dy2 + 0x80) |
                        (dx + 0x80) | (dy + 0x80);
                    x += dx, y += dy;
                }
                if (!(uor & ~0xff))
                    data_type = eUByte;
                else if (!(sor & ~0xff))
                    data_type = eSByte;
                else
                    break;
                op = pxtBezierRelPath;
                goto useb;
            default:
                return ((-1));
        }
        px_put_np(s, count, eSInt16);
        spputc(s, (byte)op);
        px_put_data_length(s, count * 4);
        for (i = 0; i < count; ++i) {
            px_put_s(s, xdev->points.data[i].x);
            px_put_s(s, xdev->points.data[i].y);
        }
        pclxl_unset_page_scale(xdev);
        if (count_smalls)
            pclxl_set_page_origin(s, -temp_origin_x, -temp_origin_y);
      zap:xdev->points.type = POINTS_NONE;
        xdev->points.count = 0;
    }
    return 0;
}



static int pclxl_image_plane_data(gx_image_enum_common_t *info, const gx_image_plane_t *planes, int height, int *rows_used);
static int pclxl_image_end_image(gx_image_enum_common_t *info, bool draw_last);
static const gx_image_enum_procs_t pclxl_image_enum_procs = {
    pclxl_image_plane_data, pclxl_image_end_image
};


static void
pclxl_write_begin_image(gx_device_pclxl * xdev, uint width, uint height,
                        uint dest_width, uint dest_height)
{
    stream *s = pclxl_stream(xdev);

    px_put_usa(s, width, pxaSourceWidth);
    px_put_usa(s, height, pxaSourceHeight);
    px_put_usp(s, dest_width, dest_height);
    px_put_ac(s, pxaDestinationSize, pxtBeginImage);
}





static void
pclxl_write_image_data_RLE(gx_device_pclxl * xdev, const byte * base, int data_bit,
                       uint raster, uint width_bits, int y, int height)
{
    stream *s = pclxl_stream(xdev);
    uint width_bytes = (width_bits + 7) >> 3;
    uint num_bytes = ( (4) & ((4) - 1) ? ((width_bytes) + ((4) - 1)) / (4) * (4) : ((width_bytes) + ((4) - 1)) & -(4) ) * height;
    bool compress = num_bytes >= 8;
    int i;

    int offset = data_bit >> 3;
    const byte *data = base + offset;

    px_put_usa(s, y, pxaStartLine);
    px_put_usa(s, height, pxaBlockHeight);
    if (compress) {
        stream_RLE_state rlstate;
        stream_cursor_write w;
        stream_cursor_read r;
# 660 "./devices/vector/gdevpx.c"
        byte *buf = (*(xdev->v_memory)->procs.alloc_bytes)(xdev->v_memory, num_bytes, "pclxl_write_image_data");


        if (buf == 0)
            goto nc;
        ((&rlstate)->EndOfData = ((bool)1), (&rlstate)->record_size = 0);
        rlstate.EndOfData = ((bool)0);
        ((&rlstate)->record_left = ((&rlstate)->record_size == 0 ? ((&rlstate)->record_size = ((unsigned int)~0 + (unsigned int)0)) : (&rlstate)->record_size), (&rlstate)->copy_left = 0);
        w.ptr = buf - 1;
        w.limit = w.ptr + num_bytes;





        for (i = 0; i < height; ++i) {
            r.ptr = data + i * raster - 1;
            r.limit = r.ptr + width_bytes;
            if ((*s_RLE_template.process)
                ((stream_state *) & rlstate, &r, &w, ((bool)1)) != 0 ||
                r.ptr != r.limit
                )
                goto ncfree;
            r.ptr = (const byte *)"\000\000\000\000\000";
            r.limit = r.ptr + (-(int)width_bytes & 3);
            if ((*s_RLE_template.process)
                ((stream_state *) & rlstate, &r, &w, ((bool)1)) != 0 ||
                r.ptr != r.limit
                )
                goto ncfree;
        }
        r.ptr = r.limit;
        if ((*s_RLE_template.process)
            ((stream_state *) & rlstate, &r, &w, ((bool)1)) != 0
            )
            goto ncfree;
        {
            uint count = w.ptr + 1 - buf;

            px_put_ub(s, eRLECompression);
            px_put_ac(s, pxaCompressMode, pxtReadImage);
            px_put_data_length(s, count);
            px_put_bytes(s, buf, count);
        }
        ((xdev->v_memory)->procs.free_object(xdev->v_memory, buf, "pclxl_write_image_data"));
        return;
      ncfree:((xdev->v_memory)->procs.free_object(xdev->v_memory, buf, "pclxl_write_image_data"));
    }
 nc:

    px_put_ub(s, eNoCompression);
    px_put_ac(s, pxaCompressMode, pxtReadImage);
    px_put_data_length(s, num_bytes);
    for (i = 0; i < height; ++i) {
        px_put_bytes(s, data + i * raster, width_bytes);
        px_put_bytes(s, (const byte *)"\000\000\000\000", -(int)width_bytes & 3);
    }
}







static void
pclxl_write_image_data_DeltaRow(gx_device_pclxl * xdev, const byte * base, int data_bit,
                       uint raster, uint width_bits, int y, int height)
{
    stream *s = pclxl_stream(xdev);
    uint width_bytes = (width_bits + 7) >> 3;
    int worst_case_comp_size = width_bytes + (width_bytes / 8) + 1;
    byte *cdata = 0;
    byte *prow = 0;
    int i;
    int count;

    int offset = data_bit >> 3;
    const byte *data = base + offset;


    byte *buf = (*(xdev->v_memory)->procs.alloc_bytes)(xdev->v_memory, (worst_case_comp_size + 2)* height, "pclxl_write_image_data_DeltaRow(buf)");

    prow = (*(xdev->v_memory)->procs.alloc_bytes)(xdev->v_memory, width_bytes, "pclxl_write_image_data_DeltaRow(prow)");

    if ((buf == 0) || (prow == 0)) {
        pclxl_write_image_data_RLE(xdev, data, data_bit, raster, width_bits, y, height);
        return;
    }

    memset(prow, 0, width_bytes);
    cdata = buf;
    for (i = 0; i < height; i++) {
        int compressed_size = gdev_pcl_mode3compress(width_bytes, data + i * raster, prow, cdata + 2);

        *cdata = compressed_size & 0xff;
        *(cdata+1) = compressed_size >> 8;
        cdata += compressed_size + 2;
    }
    px_put_usa(s, y, pxaStartLine);
    px_put_usa(s, height, pxaBlockHeight);
    px_put_ub(s, eDeltaRowCompression);
    px_put_ac(s, pxaCompressMode, pxtReadImage);
    count = cdata - buf;
    px_put_data_length(s, count);
    px_put_bytes(s, buf, count);

    ((xdev->v_memory)->procs.free_object(xdev->v_memory, buf, "pclxl_write_image_data_DeltaRow(buf)"));
    ((xdev->v_memory)->procs.free_object(xdev->v_memory, prow, "pclxl_write_image_data_DeltaRow(prow)"));
    return;
}

static void
pclxl_write_image_data(gx_device_pclxl * xdev, const byte * data, int data_bit,
                       uint raster, uint width_bits, int y, int height)
{

    if (height < 2) {
        pclxl_write_image_data_RLE(xdev, data, data_bit, raster, width_bits, y, height);
        return;
    }

    switch(xdev->CompressMode){
    case eDeltaRowCompression:
        pclxl_write_image_data_DeltaRow(xdev, data, data_bit, raster, width_bits, y, height);
        break;
    case eRLECompression:
    default:
        pclxl_write_image_data_RLE(xdev, data, data_bit, raster, width_bits, y, height);
        break;
    }
}


static void
pclxl_write_end_image(gx_device_pclxl * xdev)
{
    spputc(xdev->strm, pxtEndImage);
}




static void
px_put_string(stream * s, const byte * data, uint len, bool wide)
{
    if (wide) {
        spputc(s, pxt_uint16_array);
        px_put_u(s, len);
        px_put_bytes(s, data, len * 2);
    } else {
        spputc(s, pxt_ubyte_array);
        px_put_u(s, len);
        px_put_bytes(s, data, len);
    }
}


static void
px_put_us_be(stream * s, uint i)
{
    spputc(s, (byte) (i >> 8));
    spputc(s, (byte) i);
}



static void
pclxl_define_bitmap_font(gx_device_pclxl * xdev)
{
    stream *s = pclxl_stream(xdev);
    static const byte bfh_[] = {
        pxt_attr_ubyte, (pxaFontName), pxt_ubyte, (byte)(0), pxt_attr_ubyte, (pxaFontFormat),
        pxtBeginFontHeader,
        pxt_uint16, (byte)(8 + 6 + 4 + 6), (byte)((8 + 6 + 4 + 6) >> 8), pxt_attr_ubyte, (pxaFontHeaderLength),
        pxtReadFontHeader,
        pxt_dataLengthByte, 8 + 6 + 4 + 6,
        0, 0, 0, 0,
        254, 0, (400 + 255) >> 8, 0,
        'B', 'R', 0, 0, 0, 4
    };
    static const byte efh_[] = {
        0xff, 0xff, 0, 0, 0, 0,
        pxtEndFontHeader
    };

    px_put_bytes(s, bfh_, sizeof(bfh_));
    px_put_us_be(s, (uint) (xdev->HWResolution[0] + 0.5));
    px_put_us_be(s, (uint) (xdev->HWResolution[1] + 0.5));
    px_put_bytes(s, efh_, sizeof(efh_));
}



static void
pclxl_set_font(gx_device_pclxl * xdev)
{
    stream *s = pclxl_stream(xdev);
    static const byte sf_[] = {
        pxt_attr_ubyte, (pxaFontName), pxt_ubyte, (byte)(1), pxt_attr_ubyte, (pxaCharSize), pxt_uint16, (byte)(0), (byte)((0) >> 8), pxt_attr_ubyte, (pxaSymbolSet),
        pxtSetFont
    };

    px_put_bytes(s, sf_, sizeof(sf_));
}



static void
pclxl_define_bitmap_char(gx_device_pclxl * xdev, uint ccode,
               const byte * data, uint raster, uint width_bits, uint height)
{
    stream *s = pclxl_stream(xdev);
    uint width_bytes = (width_bits + 7) >> 3;
    uint size = 10 + width_bytes * height;
    uint i;

    px_put_ac(s, pxaFontName, pxtBeginChar);
    px_put_u(s, ccode);
    px_put_a(s, pxaCharCode);
    if (size > 0xffff) {
        spputc(s, pxt_uint32);
        px_put_l(s, (ulong) size);
    } else
        px_put_us(s, size);
    px_put_ac(s, pxaCharDataSize, pxtReadChar);
    px_put_data_length(s, size);
    px_put_bytes(s, (const byte *)"\000\000\000\000\000\000", 6);
    px_put_us_be(s, width_bits);
    px_put_us_be(s, height);
    for (i = 0; i < height; ++i)
        px_put_bytes(s, data + i * raster, width_bytes);
    spputc(s, pxtEndChar);
}


static void
pclxl_write_font_name(gx_device_pclxl * xdev)
{
    stream *s = pclxl_stream(xdev);

    px_put_string(s, (const byte *)"@", 1, ((bool)0));
}



static int
pclxl_char_index(gx_device_pclxl * xdev, gs_id id)
{
    int i, i_empty = -1;
    uint ccode;

    for (i = (id * 247) % (sizeof(xdev->chars.table) / sizeof((xdev->chars.table)[0]));;
         i = (i == 0 ? (sizeof(xdev->chars.table) / sizeof((xdev->chars.table)[0])) : i) - 1
        ) {
        ccode = xdev->chars.table[i];
        if (ccode == 0)
            return (i_empty >= 0 ? i_empty : i);
        else if (ccode == 1) {
            if (i_empty < 0)
                i_empty = i;
            else if (i == i_empty)
                return i;
        } else if (xdev->chars.data[ccode].id == id)
            return i;
    }
}


static void
pclxl_remove_char(gx_device_pclxl * xdev, int index)
{
    uint ccode = xdev->chars.table[index];
    int i;

    if (ccode < 2)
        return;
    xdev->chars.count--;
    xdev->chars.used -= xdev->chars.data[ccode].size;
    xdev->chars.table[index] = 1;
    i = (index == 0 ? (sizeof(xdev->chars.table) / sizeof((xdev->chars.table)[0])) : index) - 1;
    if (xdev->chars.table[i] == 0) {


        for (i = index; xdev->chars.table[i] == 1;
             i = (i == (sizeof(xdev->chars.table) / sizeof((xdev->chars.table)[0])) - 1 ? 0 : i + 1)
            )
            xdev->chars.table[i] = 0;
    }
}




static int
pclxl_copy_text_char(gx_device_pclxl * xdev, const byte * data,
                     int raster, gx_bitmap_id id, int w, int h)
{
    uint width_bytes = (w + 7) >> 3;
    uint size = width_bytes * h;
    int index;
    uint ccode;
    stream *s = pclxl_stream(xdev);

    if (size > 5000)
        return -1;
    index = pclxl_char_index(xdev, id);
    if ((ccode = xdev->chars.table[index]) < 2) {

        while (xdev->chars.used + size > 500000 ||
               xdev->chars.count >= 400 - 2
            ) {
            ccode = xdev->chars.next_out;
            index = pclxl_char_index(xdev, xdev->chars.data[ccode].id);
            pclxl_remove_char(xdev, index);
            xdev->chars.next_out =
                (ccode == 400 - 1 ? 2 : ccode + 1);
        }
        index = pclxl_char_index(xdev, id);
        ccode = xdev->chars.next_in;
        xdev->chars.data[ccode].id = id;
        xdev->chars.data[ccode].size = size;
        xdev->chars.table[index] = ccode;
        xdev->chars.next_in =
            (ccode == 400 - 1 ? 2 : ccode + 1);
        if (!xdev->chars.count++) {

            pclxl_write_font_name(xdev);
            pclxl_define_bitmap_font(xdev);
        }
        xdev->chars.used += size;
        pclxl_write_font_name(xdev);
        pclxl_define_bitmap_char(xdev, ccode, data, raster, w, h);
    }
    if (!xdev->font_set) {
        pclxl_write_font_name(xdev);
        pclxl_set_font(xdev);
        xdev->font_set = ((bool)1);
    } {
        byte cc_bytes[2];

        cc_bytes[0] = (byte) ccode;
        cc_bytes[1] = ccode >> 8;
        px_put_string(s, cc_bytes, 1, cc_bytes[1] != 0);
    }
    px_put_ac(s, pxaTextData, pxtText);
    return 0;
}



static int
pclxl_beginpage(gx_device_vector * vdev)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;




    stream *s = vdev->strm;
    byte media_source = eAutoSelect;

    xdev->page ++;







    px_write_page_header(s, (const gx_device *)vdev);

    if (xdev->ManualFeed_set && xdev->ManualFeed)
        media_source = 2;
    else if (xdev->MediaPosition_set && xdev->MediaPosition >= 0 )
        media_source = xdev->MediaPosition;

    px_write_select_media(s, (const gx_device *)vdev, &xdev->media_size,
                          &media_source,
                          xdev->page, xdev->Duplex, xdev->Tumble,
                          xdev->MediaType_set, xdev->MediaType);

    spputc(s, pxtBeginPage);
    return 0;
}

static int
pclxl_setlinewidth(gx_device_vector * vdev, double width)
{
    stream *s = gdev_vector_stream(vdev);

    px_put_us(s, (uint) (width+0.5));
    px_put_ac(s, pxaPenWidth, pxtSetPenWidth);
    return 0;
}

static int
pclxl_setlinecap(gx_device_vector * vdev, gs_line_cap cap)
{
    stream *s = gdev_vector_stream(vdev);


    px_put_ub(s, (byte) cap);
    px_put_ac(s, pxaLineCapStyle, pxtSetLineCap);
    return 0;
}

static int
pclxl_setlinejoin(gx_device_vector * vdev, gs_line_join join)
{
    stream *s = gdev_vector_stream(vdev);

    if ((join < 0) || (join > 3)) {
        (emprintf_program_ident(vdev->memory, gs_program_name(), gs_revision_number()), errprintf(vdev->memory, "Igoring invalid linejoin enumerator %d\n", join));


        return 0;
    }

    px_put_ub(s, (byte) join);
    px_put_ac(s, pxaLineJoinStyle, pxtSetLineJoin);
    return 0;
}

static int
pclxl_setmiterlimit(gx_device_vector * vdev, double limit)
{
    stream *s = gdev_vector_stream(vdev);




    int i_limit = (int)(limit + 0.5);

    px_put_u(s, (((i_limit) > (1)) ? (i_limit) : (1)));
    px_put_ac(s, pxaMiterLength, pxtSetMiterLimit);
    return 0;
}

static int
pclxl_setdash(gx_device_vector * vdev, const float *pattern, uint count,
              double offset)
{
    stream *s = gdev_vector_stream(vdev);

    if (count == 0) {
        static const byte nac_[] = {
            pxt_ubyte, (byte)(0), pxt_attr_ubyte, (pxaSolidLine)
        };

        px_put_bytes(s, nac_, sizeof(nac_));
    } else if (count > 255)
        return ((-13));
    else {
        uint i;





        spputc(s, pxt_uint16_array);
        px_put_ub(s, (byte)count);
        for (i = 0; i < count; ++i)
            px_put_s(s, (uint)pattern[i]);
        px_put_a(s, pxaLineDashStyle);
        if (offset != 0)
            px_put_usa(s, (uint)offset, pxaDashOffset);
    }
    spputc(s, pxtSetLineDash);
    return 0;
}

static int
pclxl_setlogop(gx_device_vector * vdev, gs_logical_operation_t lop,
               gs_logical_operation_t diff)
{
    stream *s = gdev_vector_stream(vdev);

    if (diff & 0x100) {
        px_put_ub(s, (byte)(lop & 0x100 ? 1 : 0));
        px_put_ac(s, pxaTxMode, pxtSetSourceTxMode);
    }
    if (diff & 0x200) {
        px_put_ub(s, (byte)(lop & 0x200 ? 1 : 0));
        px_put_ac(s, pxaTxMode, pxtSetPaintTxMode);
    }
    if (((gs_rop3_t)((diff) & 0xff))) {
        px_put_ub(s, (byte)((gs_rop3_t)((lop) & 0xff)));
        px_put_ac(s, pxaROP3, pxtSetROP);
    }
    return 0;
}

static int
pclxl_can_handle_hl_color(gx_device_vector * vdev, const gs_imager_state * pis,
                   const gx_drawing_color * pdc)
{
    return ((bool)0);
}

static int
pclxl_setfillcolor(gx_device_vector * vdev, const gs_imager_state * pis,
                   const gx_drawing_color * pdc)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;

    return pclxl_set_color(xdev, pdc, pxaNullBrush, pxtSetBrushSource);
}

static int
pclxl_setstrokecolor(gx_device_vector * vdev, const gs_imager_state * pis,
                     const gx_drawing_color * pdc)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;

    return pclxl_set_color(xdev, pdc, pxaNullPen, pxtSetPenSource);
}

static int
pclxl_dorect(gx_device_vector * vdev, fixed x0, fixed y0, fixed x1,
             fixed y1, gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;
    stream *s = gdev_vector_stream(vdev);



    if ((x0 < 0 || x0 >= ((fixed)(0x10000)<<8)) || (y0 < 0 || y0 >= ((fixed)(0x10000)<<8)) ||
        (x1 < 0 || x1 >= ((fixed)(0x10000)<<8)) || (y1 < 0 || y1 >= ((fixed)(0x10000)<<8))
        )
        return ((-15));

    if (type & (gx_path_type_fill | gx_path_type_stroke)) {
        pclxl_set_paints(xdev, type);
        px_put_usq_fixed(s, x0, y0, x1, y1);
        px_put_ac(s, pxaBoundingBox, pxtRectangle);
    }
    if (type & gx_path_type_clip) {
        static const byte cr_[] = {
            pxt_attr_ubyte, (pxaBoundingBox),
            pxt_ubyte, (byte)(eInterior), pxt_attr_ubyte, (pxaClipRegion),
            pxtSetClipRectangle
        };

        px_put_usq_fixed(s, x0, y0, x1, y1);
        px_put_bytes(s, cr_, sizeof(cr_));
    }
    return 0;
}

static int
pclxl_beginpath(gx_device_vector * vdev, gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;
    stream *s = gdev_vector_stream(vdev);

    spputc(s, pxtNewPath);
    xdev->points.type = POINTS_NONE;
    xdev->points.count = 0;
    return 0;
}

static int
pclxl_moveto(gx_device_vector * vdev, double x0, double y0, double x, double y,
             gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;
    int code = pclxl_flush_points(xdev);

    if (code < 0)
        return code;
    return pclxl_set_cursor(xdev,
                            xdev->points.current.x = (int)(x+0.5),
                            xdev->points.current.y = (int)(y+0.5));
}

static int
pclxl_lineto(gx_device_vector * vdev, double x0, double y0, double x, double y,
             gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;

    if (xdev->points.type != POINTS_LINES ||
        xdev->points.count >= 40
        ) {
        if (xdev->points.type != POINTS_NONE) {
            int code = pclxl_flush_points(xdev);

            if (code < 0)
                return code;
        }
        xdev->points.current.x = (int)(x0+0.5);
        xdev->points.current.y = (int)(y0+0.5);
        xdev->points.type = POINTS_LINES;
    } {
        gs_int_point *ppt = &xdev->points.data[xdev->points.count++];

        ppt->x = (int)(x+0.5), ppt->y = (int)(y+0.5);
    }
    return 0;
}

static int
pclxl_curveto(gx_device_vector * vdev, double x0, double y0,
           double x1, double y1, double x2, double y2, double x3, double y3,
              gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;

    if (xdev->points.type != POINTS_CURVES ||
        xdev->points.count >= 40 - 2
        ) {
        if (xdev->points.type != POINTS_NONE) {
            int code = pclxl_flush_points(xdev);

            if (code < 0)
                return code;
        }
        xdev->points.current.x = (int)(x0+0.5);
        xdev->points.current.y = (int)(y0+0.5);
        xdev->points.type = POINTS_CURVES;
    }
    {
        gs_int_point *ppt = &xdev->points.data[xdev->points.count];

        ppt->x = (int)(x1+0.5), ppt->y = (int)(y1+0.5), ++ppt;
        ppt->x = (int)(x2+0.5), ppt->y = (int)(y2+0.5), ++ppt;
        ppt->x = (int)(x3+0.5), ppt->y = (int)(y3+0.5);
    }
    xdev->points.count += 3;
    return 0;
}

static int
pclxl_closepath(gx_device_vector * vdev, double x, double y,
                double x_start, double y_start, gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;
    stream *s = gdev_vector_stream(vdev);
    int code = pclxl_flush_points(xdev);

    if (code < 0)
        return code;
    spputc(s, pxtCloseSubPath);
    xdev->points.current.x = (int)(x_start+0.5);
    xdev->points.current.y = (int)(y_start+0.5);
    return 0;
}

static int
pclxl_endpath(gx_device_vector * vdev, gx_path_type_t type)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)vdev;
    stream *s = gdev_vector_stream(vdev);
    int code = pclxl_flush_points(xdev);
    gx_path_type_t rule = type & gx_path_type_rule;

    if (code < 0)
        return code;
    if (type & (gx_path_type_fill | gx_path_type_stroke)) {
        if (rule != xdev->fill_rule) {
            px_put_ub(s, (byte)(rule == gx_path_type_even_odd ? eEvenOdd :
                       eNonZeroWinding));
            px_put_ac(s, pxaFillMode, pxtSetFillMode);
            xdev->fill_rule = rule;
        }
        pclxl_set_paints(xdev, type);
        spputc(s, pxtPaintPath);
    }
    if (type & gx_path_type_clip) {
        static const byte scr_[] = {
            pxt_ubyte, (byte)(eInterior), pxt_attr_ubyte, (pxaClipRegion), pxtSetClipReplace
        };

        if (rule != xdev->clip_rule) {
            px_put_ub(s, (byte)(rule == gx_path_type_even_odd ? eEvenOdd :
                       eNonZeroWinding));
            px_put_ac(s, pxaClipMode, pxtSetClipMode);
            xdev->clip_rule = rule;
        }
        px_put_bytes(s, scr_, sizeof(scr_));
    }
    return 0;
}



static const gx_device_vector_procs pclxl_vector_procs = {

    pclxl_beginpage,

    pclxl_setlinewidth,
    pclxl_setlinecap,
    pclxl_setlinejoin,
    pclxl_setmiterlimit,
    pclxl_setdash,
    gdev_vector_setflat,
    pclxl_setlogop,

    pclxl_can_handle_hl_color,
    pclxl_setfillcolor,
    pclxl_setstrokecolor,

    gdev_vector_dopath,
    pclxl_dorect,
    pclxl_beginpath,
    pclxl_moveto,
    pclxl_lineto,
    pclxl_curveto,
    pclxl_closepath,
    pclxl_endpath
};






static int
pclxl_open_device(gx_device * dev)
{
    gx_device_vector *const vdev = (gx_device_vector *)dev;
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    int code;

    vdev->v_memory = dev->memory;
    vdev->vec_procs = &pclxl_vector_procs;
    code = gdev_vector_open_file_options(vdev, 512,
                                         2);
    if (code < 0)
        return code;

    pclxl_page_init(xdev);
    px_write_file_header(vdev->strm, dev);
    xdev->media_size = pxeMediaSize_next;
    memset(&xdev->chars, 0, sizeof(xdev->chars));
    xdev->chars.next_in = xdev->chars.next_out = 2;
    xdev->MediaPosition_set = ((bool)0);
    xdev->MediaType_set = ((bool)0);
    xdev->MediaPosition_old = eAutoSelect;
    xdev->MediaPosition = eAutoSelect;
    xdev->MediaType_old[0] = '\0';
    xdev->MediaType[0] = '\0';
    return 0;
}



static int
pclxl_output_page(gx_device * dev, int num_copies, int flush)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    stream *s;
    int code;


    if (!xdev->in_page)
        pclxl_beginpage((gx_device_vector *)dev);
    s = xdev->strm;
    px_put_usa(s, (uint)num_copies, pxaPageCopies);
    spputc(s, pxtEndPage);
    (*(s)->procs.flush)(s);
    pclxl_page_init(xdev);
    if (ferror(xdev->file))
        return ((-12));
    if ((code = gx_finish_output_page(dev, num_copies, flush)) < 0)
        return code;

    if (gx_outputfile_is_separate_pages(((gx_device_vector *)dev)->fname, dev->memory)) {
        if ((code = pclxl_close_device(dev)) < 0)
            return code;
        code = pclxl_open_device(dev);
    }
    return code;
}




static int
pclxl_close_device(gx_device * dev)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    FILE *file = xdev->file;

    if (xdev->strm != ((void*)0))
        (*(xdev->strm)->procs.flush)(xdev->strm);
    if (xdev->in_page)
        fputc(pxtEndPage, file);
    px_write_file_trailer(file);
    return gdev_vector_close_file((gx_device_vector *)dev);
}



static const byte eBit_values[] = {
    0, e1Bit, 0, 0, e4Bit, 0, 0, 0, e8Bit
};


static int
pclxl_copy_mono(gx_device * dev, const byte * data, int data_x, int raster,
                gx_bitmap_id id, int x, int y, int w, int h,
                gx_color_index zero, gx_color_index one)
{
    gx_device_vector *const vdev = (gx_device_vector *)dev;
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    int code;
    stream *s;
    gx_color_index color0 = zero, color1 = one;
    gx_color_index white = (1 << dev->color_info.depth) - 1;
    gx_color_index black = 0;
    gs_logical_operation_t lop;
    byte palette[2 * 3];
    int palette_size;
    pxeColorSpace_t color_space;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, data_x -= x, x = 0; if ( y < 0 ) h += y, data -= (int)(y * raster), id = 0L, y = 0; } if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); if ( h > (dev)->height - y ) h = (dev)->height - y; if ( w <= 0 || h <= 0 ) return 0; } while (0);
    code = gdev_vector_update_clip_path(vdev, ((void*)0));
    if (code < 0)
        return code;





    if ( ((data_x & 7) != 0) || (h == 1) || (w == 1) )
        return gx_default_copy_mono(dev, data, data_x, raster, id,
                                    x, y, w, h, zero, one);

    pclxl_set_cursor(xdev, x, y);
    if (id != 0L && zero == ((gx_color_index)(~0)) &&
        one != ((gx_color_index)(~0)) && data_x == 0
        ) {
        gx_drawing_color dcolor;

        code = gdev_vector_update_log_op(vdev, 0xf0|0x200);
        if (code < 0)
            return 0;

        ((&dcolor)->colors.pure = (one), (&dcolor)->type = gx_dc_type_pure); (&dcolor)->ccolor_valid = ((bool)0);
        pclxl_setfillcolor(vdev, ((void*)0), &dcolor);
        if (pclxl_copy_text_char(xdev, data, raster, id, w, h) >= 0)
            return 0;
    }
# 1530 "./devices/vector/gdevpx.c"
    if (zero == ((gx_color_index)(~0))) {
        if (one == ((gx_color_index)(~0)))
            return 0;
        if (one != white) {
            if (one == black) {
                lop = (0xcc & rop3_D);
            } else {
        lop = 0xcc | 0x100;
            }
            color0 = white;
        } else {
            lop = 0xcc | (rop3_D & ((0xcc) ^ rop3_1));
            color0 = black;
        }
    } else if (one == ((gx_color_index)(~0))) {
        if (zero != white) {
            if (zero == black) {
                lop = (0xcc & rop3_D);
            } else {
        lop = 0xcc | 0x100;
            }
            color1 = white;
        } else {
            lop = 0xcc | (rop3_D & ((0xcc) ^ rop3_1));
            color1 = black;
        }
    } else {
        lop = 0xcc;
    }

    if (dev->color_info.num_components == 1 ||
        (((color0) >> 8 == ((color0) & 0xffff)) && ((color1) >> 8 == ((color1) & 0xffff)))
        ) {
        palette[0] = (byte) color0;
        palette[1] = (byte) color1;
        palette_size = 2;
        color_space = eGray;
        do { } while (0);

    } else {
        palette[0] = (byte) (color0 >> 16);
        palette[1] = (byte) (color0 >> 8);
        palette[2] = (byte) color0;
        palette[3] = (byte) (color1 >> 16);
        palette[4] = (byte) (color1 >> 8);
        palette[5] = (byte) color1;
        palette_size = 6;
        color_space = eRGB;
    }
    code = gdev_vector_update_log_op(vdev, lop);
    if (code < 0)
        return 0;
    pclxl_set_color_palette(xdev, color_space, palette, palette_size);
    s = pclxl_stream(xdev);
    {
        static const byte mi_[] = {
            pxt_ubyte, (byte)(e1Bit), pxt_attr_ubyte, (pxaColorDepth),
            pxt_ubyte, (byte)(eIndexedPixel), pxt_attr_ubyte, (pxaColorMapping)
        };

        px_put_bytes(s, mi_, sizeof(mi_));
    }
    pclxl_write_begin_image(xdev, w, h, w, h);
    pclxl_write_image_data(xdev, data, data_x, raster, w, 0, h);
    pclxl_write_end_image(xdev);
    return 0;
}


static int
pclxl_copy_color(gx_device * dev,
                 const byte * base, int sourcex, int raster, gx_bitmap_id id,
                 int x, int y, int w, int h)
{
    gx_device_vector *const vdev = (gx_device_vector *)dev;
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    stream *s;
    uint source_bit;
    int code;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, sourcex -= x, x = 0; if ( y < 0 ) h += y, base -= (int)(y * raster), id = 0L, y = 0; } if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); if ( h > (dev)->height - y ) h = (dev)->height - y; if ( w <= 0 || h <= 0 ) return 0; } while (0);
    code = gdev_vector_update_clip_path(vdev, ((void*)0));
    if (code < 0)
        return code;

    source_bit = sourcex * dev->color_info.depth;


    if (dev->color_info.num_components == 3)
        pclxl_set_color_space(xdev, eRGB);
    else if (dev->color_info.num_components == 1)
        pclxl_set_color_space(xdev, eGray);
# 1635 "./devices/vector/gdevpx.c"
    if ( ((source_bit & 7) != 0) || (w == 1) || (h == 1) )
        return gx_default_copy_color(dev, base, sourcex, raster, id,
                                     x, y, w, h);
    code = gdev_vector_update_log_op(vdev, 0xcc);
    if(code < 0)
        return 0;
    pclxl_set_cursor(xdev, x, y);
    s = pclxl_stream(xdev);
    {
        static const byte ci_[] = {
            pxt_attr_ubyte, (pxaColorDepth),
            pxt_ubyte, (byte)(eDirectPixel), pxt_attr_ubyte, (pxaColorMapping)
        };

        px_put_ub(s, eBit_values[dev->color_info.depth /
                                 dev->color_info.num_components]);
        px_put_bytes(s, ci_, sizeof(ci_));
    }
    pclxl_write_begin_image(xdev, w, h, w, h);
    pclxl_write_image_data(xdev, base, source_bit, raster,
                           w * dev->color_info.depth, 0, h);
    pclxl_write_end_image(xdev);
    return 0;
}


static int
pclxl_fill_mask(gx_device * dev,
                const byte * data, int data_x, int raster, gx_bitmap_id id,
                int x, int y, int w, int h,
                const gx_drawing_color * pdcolor, int depth,
                gs_logical_operation_t lop, const gx_clip_path * pcpath)
{
    gx_device_vector *const vdev = (gx_device_vector *)dev;
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    int code;
    stream *s;
    gx_color_index foreground;

    do { do { if ( (x | y) < 0 ) { if ( x < 0 ) w += x, data_x -= x, x = 0; if ( y < 0 ) h += y, data -= (int)(y * raster), id = 0L, y = 0; } if ( w > (dev)->width - x ) w = (dev)->width - x; } while (0); if ( h > (dev)->height - y ) h = (dev)->height - y; if ( w <= 0 || h <= 0 ) return 0; } while (0);




    if ((data_x & 7) != 0 || !((pdcolor)->type == gx_dc_type_pure) || depth > 1 || (w == 1) || (h == 1) )
        return gx_default_fill_mask(dev, data, data_x, raster, id,
                                    x, y, w, h, pdcolor, depth,
                                    lop, pcpath);
    code = gdev_vector_update_clip_path(vdev, pcpath);
    foreground = ((pdcolor)->colors.pure);
    if (code < 0)
        return code;
    code = gdev_vector_update_fill_color(vdev, ((void*)0), pdcolor);
    if (code < 0)
        return 0;
    pclxl_set_cursor(xdev, x, y);
    if (id != 0L && data_x == 0) {
        code = gdev_vector_update_log_op(vdev, lop);
        if (code < 0)
            return 0;
        if (pclxl_copy_text_char(xdev, data, raster, id, w, h) >= 0)
            return 0;
    }



    if (foreground == (1 << dev->color_info.depth) - 1) {
      lop = ((0xcc) ^ rop3_1) | (rop3_D & 0xcc);
    }else if (foreground == 0) {
      lop = (0xcc & rop3_D);
    }else lop |= 0xcc | 0x100;

    code = gdev_vector_update_log_op(vdev,
                                     lop);
    if (code < 0)
        return 0;
    pclxl_set_color_palette(xdev, eGray, (const byte *)"\377\000", 2);
    s = pclxl_stream(xdev);
    {
        static const byte mi_[] = {
            pxt_ubyte, (byte)(e1Bit), pxt_attr_ubyte, (pxaColorDepth),
            pxt_ubyte, (byte)(eIndexedPixel), pxt_attr_ubyte, (pxaColorMapping)
        };

        px_put_bytes(s, mi_, sizeof(mi_));
    }
    pclxl_write_begin_image(xdev, w, h, w, h);
    pclxl_write_image_data(xdev, data, data_x, raster, w, 0, h);
    pclxl_write_end_image(xdev);
    return 0;
}


static int
pclxl_strip_copy_rop(gx_device * dev, const byte * sdata, int sourcex,
                     uint sraster, gx_bitmap_id id,
                     const gx_color_index * scolors,
                     const gx_strip_bitmap * textures,
                     const gx_color_index * tcolors,
                     int x, int y, int width, int height,
                     int phase_x, int phase_y, gs_logical_operation_t lop)
{


  if (!( ((((lop) << 1) ^ (lop)) & rop3_D) != 0 ))
    return gx_default_strip_copy_rop(dev, sdata, sourcex,
                                     sraster, id,
                                     scolors,
                                     textures,
                                     tcolors,
                                     x, y, width, height,
                                     phase_x, phase_y, lop);
  return 0;
}




typedef struct pclxl_image_enum_s {
    const gx_image_type_t *image_type; const gx_image_enum_procs_t *procs; gx_device *dev; gs_memory_t *memory; gs_id id; bool skipping; int num_planes; int plane_depths[((64) + 1)]; int plane_widths[((64) + 1)]; gx_image_enum_common_t *default_info; gx_image_enum_common_t *bbox_info; int width, height; int bits_per_pixel; uint bits_per_row; int y;
    gs_matrix mat;
    struct ir_ {
        byte *data;
        int num_rows;
        int first_y;
        uint raster;
    } rows;
    bool flipped;
} pclxl_image_enum_t;
static const gc_ptr_element_t pclxl_image_enum_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pclxl_image_enum_t *)0)->rows.data - (char *)((pclxl_image_enum_t *)0) )) } }; static const gc_struct_data_t pclxl_image_enum_reloc_ptrs = { (sizeof(pclxl_image_enum_enum_ptrs) / sizeof((pclxl_image_enum_enum_ptrs)[0])), 0, &st_vector_image_enum, pclxl_image_enum_enum_ptrs }; static const gs_memory_struct_type_t st_pclxl_image_enum = { sizeof(pclxl_image_enum_t), "pclxl_image_enum_t", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pclxl_image_enum_reloc_ptrs };





static int
pclxl_begin_image(gx_device * dev,
                  const gs_imager_state * pis, const gs_image_t * pim,
                  gs_image_format_t format, const gs_int_rect * prect,
                  const gx_drawing_color * pdcolor,
                  const gx_clip_path * pcpath, gs_memory_t * mem,
                  gx_image_enum_common_t ** pinfo)
{
    gx_device_vector *const vdev = (gx_device_vector *)dev;
    gx_device_pclxl *const xdev = (gx_device_pclxl *)dev;
    const gs_color_space *pcs = pim->ColorSpace;
    pclxl_image_enum_t *pie;
    byte *row_data;
    int num_rows;
    uint row_raster;




    int bits_per_pixel =
        (pim->ImageMask ? 1 :
         pim->BitsPerComponent * gs_color_space_num_components(pcs));
    gs_matrix mat;
    int code;





    gs_matrix_invert(&pim->ImageMatrix, &mat);
    gs_matrix_multiply(&mat, &(*(const gs_matrix *)&(pis)->ctm), &mat);




    if ((!((mat.xx * mat.yy != 0) && (mat.xy == 0) && (mat.yx == 0)) &&
         !((mat.xx == 0) && (mat.yy == 0) && (mat.xy * mat.yx != 0))) ||
        (pim->ImageMask ?
         (!((pdcolor)->type == gx_dc_type_pure) || pim->CombineWithColor) :
         (!pclxl_can_handle_color_space(pim->ColorSpace) ||
          (bits_per_pixel != 1 && bits_per_pixel != 4 &&
           bits_per_pixel != 8 && bits_per_pixel !=24))) ||
        format != gs_image_format_chunky || pim->Interpolate ||
        prect
        )
        goto use_default;
    row_raster = (bits_per_pixel * pim->Width + 7) >> 3;
    num_rows = 500000 / row_raster;
    if (num_rows > pim->Height)
        num_rows = pim->Height;
    if (num_rows <= 0)
        num_rows = 1;
    pie = (pclxl_image_enum_t *)(*(mem)->procs.alloc_struct)(mem, &st_pclxl_image_enum, "pclxl_begin_image");

    row_data = (*(mem)->procs.alloc_bytes)(mem, num_rows * row_raster, "pclxl_begin_image(rows)");

    if (pie == 0 || row_data == 0) {
        code = ((-25));
        goto fail;
    }
    code = gdev_vector_begin_image(vdev, pis, pim, format, prect,
                                   pdcolor, pcpath, mem,
                                   &pclxl_image_enum_procs,
                                   (gdev_vector_image_enum_t *)pie);
    if (code < 0)
        return code;


    pie->flipped = ((bool)0);
    if (mat.xx * mat.yy > 0) {
        if (mat.xx < 0) {
            stream *s = pclxl_stream(xdev);
            mat.xx = -mat.xx;
            mat.yy = -mat.yy;
            mat.tx = -mat.tx;
            mat.ty = -mat.ty;
            px_put_ss(s,180);
            xdev->state_rotated = 2;
            px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
        }

    } else if (mat.xx * mat.yy < 0) {
      pie->flipped = ((bool)1);
        if (mat.xx < 0) {
          stream *s = pclxl_stream(xdev);
            mat.xx = -mat.xx;
            mat.tx = -mat.tx;
            px_put_ss(s,+180);
            xdev->state_rotated = +2;
            px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
        } else {
            mat.yy = -mat.yy;
            mat.ty = -mat.ty;
        }
    } else if (mat.xy * mat.yx < 0) {

        float tmpf;
        stream *s = pclxl_stream(xdev);
        if(mat.xy > 0) {
            mat.xx = mat.xy;
            mat.yy = -mat.yx;
            tmpf = mat.tx;
            mat.tx = mat.ty;
            mat.ty = -tmpf;
            px_put_ss(s,-90);
            xdev->state_rotated = -1;
        } else {
            mat.xx = -mat.xy;
            mat.yy = mat.yx;
            tmpf = mat.tx;
            mat.tx = -mat.ty;
            mat.ty = tmpf;
            px_put_ss(s,+90);
            xdev->state_rotated = +1;
        }
        mat.xy = mat.yx = 0;
        px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
    } else if (mat.xy * mat.yx > 0) {
        float tmpf;
        stream *s = pclxl_stream(xdev);
        pie->flipped = ((bool)1);
        if(mat.xy > 0) {
            mat.xx = mat.xy;
            mat.yy = mat.yx;
            tmpf = mat.tx;
            mat.tx = mat.ty;
            mat.ty = tmpf;
            px_put_ss(s,-90);
            xdev->state_rotated = -1;
        } else {
            mat.xx = -mat.xy;
            mat.yy = -mat.yx;
            tmpf = mat.tx;
            mat.tx = -mat.ty;
            mat.ty = -tmpf;
            px_put_ss(s,+90);
            xdev->state_rotated = +1;
        }
        mat.xy = mat.yx = 0;
        px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
    }

    pie->mat = mat;
    pie->rows.data = row_data;
    pie->rows.num_rows = num_rows;
    pie->rows.first_y = 0;
    pie->rows.raster = row_raster;
    *pinfo = (gx_image_enum_common_t *) pie;
    {
        gs_logical_operation_t lop = pis->log_op;

        if (pim->ImageMask) {
            const byte *palette = (const byte *)
                (pim->Decode[0] ? "\377\000" : "\000\377");
            gx_color_index foreground = ((pdcolor)->colors.pure);

            code = gdev_vector_update_fill_color(vdev,
                                     ((void*)0),
                                     pdcolor);
            if (code < 0)
                goto fail;



            if (foreground == (1 << dev->color_info.depth) - 1) {
                lop = ((0xcc) ^ rop3_1) | (rop3_D & 0xcc);
            }else if (foreground == 0) {
                lop = (0xcc & rop3_D);
            }else lop |= 0xcc | 0x100;

            code = gdev_vector_update_log_op
                (vdev, lop);
            if (code < 0)
                goto fail;
            pclxl_set_color_palette(xdev, eGray, palette, 2);
        } else {
            if (bits_per_pixel == 24 ) {
                code = gdev_vector_update_log_op
                    (vdev, (pim->CombineWithColor ? lop : ( (((lop) & (rop3_1 - 0xf0)) << 4) | ((lop) & ~0xf0) )));
                if (code < 0)
                    goto fail;
                if (dev->color_info.num_components == 1) {
                    pclxl_set_color_space(xdev, eGray);
                } else {
                    pclxl_set_color_space(xdev, eRGB);
                }
            } else {
            int bpc = pim->BitsPerComponent;
            int num_components = pie->plane_depths[0] * pie->num_planes / bpc;
            int sample_max = (1 << bpc) - 1;
            byte palette[256 * 3];
            int i;

            code = gdev_vector_update_log_op
                (vdev, (pim->CombineWithColor ? lop : ( (((lop) & (rop3_1 - 0xf0)) << 4) | ((lop) & ~0xf0) )));
            if (code < 0)
                goto fail;
            for (i = 0; i < 1 << bits_per_pixel; ++i) {
                gs_client_color cc;
                gx_device_color devc;
                int cv = i, j;
                gx_color_index ci;

                for (j = num_components - 1; j >= 0; cv >>= bpc, --j)
                    cc.paint.values[j] = pim->Decode[j * 2] +
                        (cv & sample_max) *
                        (pim->Decode[j * 2 + 1] - pim->Decode[j * 2]) /
                        sample_max;
                (*pcs->type->remap_color)
                    (&cc, pcs, &devc, pis, dev, gs_color_select_source);
                if (!((&devc)->type == gx_dc_type_pure))
                    return ((-100));
                ci = ((&devc)->colors.pure);
                if (dev->color_info.num_components == 1) {
                    palette[i] = (byte)ci;
                } else {
                    byte *ppal = &palette[i * 3];

                    ppal[0] = (byte) (ci >> 16);
                    ppal[1] = (byte) (ci >> 8);
                    ppal[2] = (byte) ci;
                }
            }
            if (dev->color_info.num_components == 1)
                pclxl_set_color_palette(xdev, eGray, palette,
                                        1 << bits_per_pixel);
            else
                pclxl_set_color_palette(xdev, eRGB, palette,
                                        3 << bits_per_pixel);
            }
        }
    }
    return 0;
 fail:
    ((mem)->procs.free_object(mem, row_data, "pclxl_begin_image(rows)"));
    ((mem)->procs.free_object(mem, pie, "pclxl_begin_image"));
 use_default:
    if (dev->color_info.num_components == 1)
        pclxl_set_color_space(xdev, eGray);
    else
        pclxl_set_color_space(xdev, eRGB);
    return gx_default_begin_image(dev, pis, pim, format, prect,
                                  pdcolor, pcpath, mem, pinfo);
}


static int
image_transform_x(const pclxl_image_enum_t *pie, int sx)
{
    return (int)((pie->mat.tx + sx * pie->mat.xx + 0.5) /
                 ((const gx_device_pclxl *)pie->dev)->scale.x);
}
static int
image_transform_y(const pclxl_image_enum_t *pie, int sy)
{
    return (int)((pie->mat.ty + sy * pie->mat.yy + 0.5) /
                 ((const gx_device_pclxl *)pie->dev)->scale.y);
}

static int
pclxl_image_write_rows(pclxl_image_enum_t *pie)
{
    gx_device_pclxl *const xdev = (gx_device_pclxl *)pie->dev;
    stream *s = pclxl_stream(xdev);
    int y = pie->rows.first_y;
    int h = pie->y - y;
    int xo = image_transform_x(pie, 0);
    int yo = image_transform_y(pie, y);
    int dw = image_transform_x(pie, pie->width) - xo;
    int dh = image_transform_y(pie, y + h) - yo;
    int rows_raster=pie->rows.raster;
    int offset_lastflippedstrip = 0;

    if (pie->flipped) yo = -yo -dh;
    if (pie->flipped)
      offset_lastflippedstrip = pie->rows.raster * (pie->rows.num_rows - h);
    if (dw <= 0 || dh <= 0)
        return 0;
    pclxl_set_cursor(xdev, xo, yo);
    if (pie->bits_per_pixel==24) {
        static const byte ci_[] = {
            pxt_attr_ubyte, (pxaColorDepth),
            pxt_ubyte, (byte)(eDirectPixel), pxt_attr_ubyte, (pxaColorMapping)
        };

        px_put_ub(s, eBit_values[8]);
        px_put_bytes(s, ci_, sizeof(ci_));
        if (xdev->color_info.depth==8) {
          byte *in=pie->rows.data + offset_lastflippedstrip;
          byte *out=pie->rows.data + offset_lastflippedstrip;
          int i;
          int j;
          rows_raster/=3;
          for (j=0; j<h; j++) {
            for (i=0; i<rows_raster; i++) {
              *out = (byte)( ((*(in+0) * (ulong) 30) +
                              (*(in+1) * (ulong) 59) +
                              (*(in+2) * (ulong) 11) +
                              ((30 + 59 + 11) / 2)) / (30 + 59 + 11));
              in+=3;
              out++;
            }
          }
        }
    } else {
        static const byte ii_[] = {
            pxt_attr_ubyte, (pxaColorDepth),
            pxt_ubyte, (byte)(eIndexedPixel), pxt_attr_ubyte, (pxaColorMapping)
        };
        px_put_ub(s, eBit_values[pie->bits_per_pixel]);
        px_put_bytes(s, ii_, sizeof(ii_));
    }
    pclxl_write_begin_image(xdev, pie->width, h, dw, dh);
    pclxl_write_image_data(xdev, pie->rows.data + offset_lastflippedstrip, 0, rows_raster,
                           rows_raster << 3, 0, h);
    pclxl_write_end_image(xdev);
    return 0;
}


static int
pclxl_image_plane_data(gx_image_enum_common_t * info,
                       const gx_image_plane_t * planes, int height,
                       int *rows_used)
{
    pclxl_image_enum_t *pie = (pclxl_image_enum_t *) info;
    int data_bit = planes[0].data_x * info->plane_depths[0];
    int width_bits = pie->width * info->plane_depths[0];
    int i;


    if (width_bits != pie->bits_per_row || (data_bit & 7) != 0)
        return ((-15));
    if (height > pie->height - pie->y)
        height = pie->height - pie->y;
    for (i = 0; i < height; pie->y++, ++i) {
        if (pie->y - pie->rows.first_y == pie->rows.num_rows) {
            int code = pclxl_image_write_rows(pie);

            if (code < 0)
                return code;
            pie->rows.first_y = pie->y;
        }
        memcpy(pie->rows.data +
                 pie->rows.raster * (pie->flipped ? (pie->rows.num_rows - (pie->y - pie->rows.first_y) -1) :(pie->y - pie->rows.first_y)),
               planes[0].data + planes[0].raster * i + (data_bit >> 3),
               pie->rows.raster);
    }
    *rows_used = height;
    return pie->y >= pie->height;
}


static int
pclxl_image_end_image(gx_image_enum_common_t * info, bool draw_last)
{
    pclxl_image_enum_t *pie = (pclxl_image_enum_t *) info;
    int code = 0;


    if (pie->y > pie->rows.first_y && draw_last)
        code = pclxl_image_write_rows(pie);
    if (draw_last) {
        gx_device_pclxl *xdev = (gx_device_pclxl *)info->dev;
        stream *s = pclxl_stream(xdev);
        switch(xdev->state_rotated) {
        case 1:
            xdev->state_rotated = 0;
            px_put_ss(s,-90);
            px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
            break;
        case -1:
            xdev->state_rotated = 0;
            px_put_ss(s,+90);
            px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
            break;
        case 2:
            xdev->state_rotated = 0;
            px_put_ss(s,-180);
            px_put_ac(s, pxaPageAngle, pxtSetPageRotation);
            break;
        case 0:
        default:

            break;
        }
    }
    ((pie->memory)->procs.free_object(pie->memory, pie->rows.data, "pclxl_end_image(rows)"));
    gx_image_free_enum(&info);
    return code;
}





static int
pclxl_get_params(gx_device *dev,
                 gs_param_list *plist)
{
  gx_device_pclxl *xdev;
  int code;
  gs_param_string s;





  if ((code = gdev_vector_get_params(dev, plist)) < 0)
    return (code);





  xdev = (gx_device_pclxl *)dev;

  if ((code = param_write_bool(plist, "Duplex", &(xdev->Duplex))) < 0)
    return (code);

  if (xdev->MediaPosition_set)
    if ((code = param_write_int(plist, "MediaPosition",
                                &(xdev->MediaPosition))) < 0)
      return (code);

  if (xdev->MediaType_set) {
    if ((code = ((s).data = (const byte *)(xdev->MediaType), (s).size = strlen((const char *)(s).data), (s).persistent = ((bool)1))) < 0)
      return (code);
    if ((code = param_write_string(plist, "MediaType", &s)) < 0)
      return (code);
  }

  if ((code = param_write_bool(plist, "Tumble", &(xdev->Tumble))) < 0)
    return (code);

  if ((code = param_write_int(plist, "CompressMode",
                              &(xdev->CompressMode))) < 0)
    return (code);

  return (0);
}





static int
pclxl_put_params(gx_device *dev,
                 gs_param_list *plist)
{
  gx_device_pclxl *xdev;
  int code;
  int intval;
  bool boolval;
  gs_param_string stringval;





  xdev = (gx_device_pclxl *)dev;
# 2286 "./devices/vector/gdevpx.c"
  if ((code = param_read_bool(plist, "Duplex", &boolval)) < 0) { do { } while (0); if ((code = param_read_null(plist, "Duplex")) < 0) { do { } while (0); (*(plist)->procs->signal_error)(plist, "Duplex", code); return (code); } if (code == 0) xdev->Duplex = ((bool)0); } else if (code == 0) { do { } while (0); xdev->Duplex = (bool)boolval; }
  if (code == 0)
    if (xdev->Duplex) {
      do { } while (0);
      xdev->page = (xdev->page+1) & ~1 ;
    }
  if ((code = param_read_int(plist, "MediaPosition", &intval)) < 0) { do { } while (0); (*(plist)->procs->signal_error)(plist, "MediaPosition", code); return (code); } else if (code == 0) { do { } while (0); xdev->MediaPosition = (int)intval; }
  if (code == 0) {
    xdev->MediaPosition_set = ((bool)1);

    if (xdev->MediaPosition_old != xdev->MediaPosition) {
      do { } while (0);
      xdev->page = (xdev->page+1) & ~1 ;
      xdev->MediaPosition_old = xdev->MediaPosition;
    }
  }
  if ((code = param_read_string(plist, "MediaType", &stringval)) < 0) { do { } while (0); if ((code = param_read_null(plist, "MediaType")) < 0) { do { } while (0); (*(plist)->procs->signal_error)(plist, "MediaType", code); return (code); } if (code == 0) { do { } while (0); xdev->MediaType[0] = '\0'; } } else if (code == 0) { __builtin_strncpy (xdev->MediaType, (const char *)(stringval.data), stringval.size); xdev->MediaType[stringval.size] = '\0'; do { } while (0); }
  if (code == 0) {
    xdev->MediaType_set = ((bool)1);

    if (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (xdev->MediaType_old) && __builtin_constant_p (xdev->MediaType) && (__s1_len = strlen (xdev->MediaType_old), __s2_len = strlen (xdev->MediaType), (!((size_t)(const void *)((xdev->MediaType_old) + 1) - (size_t)(const void *)(xdev->MediaType_old) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((xdev->MediaType) + 1) - (size_t)(const void *)(xdev->MediaType) == 1) || __s2_len >= 4)) ? __builtin_strcmp (xdev->MediaType_old, xdev->MediaType) : (__builtin_constant_p (xdev->MediaType_old) && ((size_t)(const void *)((xdev->MediaType_old) + 1) - (size_t)(const void *)(xdev->MediaType_old) == 1) && (__s1_len = strlen (xdev->MediaType_old), __s1_len < 4) ? (__builtin_constant_p (xdev->MediaType) && ((size_t)(const void *)((xdev->MediaType) + 1) - (size_t)(const void *)(xdev->MediaType) == 1) ? __builtin_strcmp (xdev->MediaType_old, xdev->MediaType) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (xdev->MediaType); register int __result = (((const unsigned char *) (const char *) (xdev->MediaType_old))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (xdev->MediaType_old))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (xdev->MediaType_old))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (xdev->MediaType_old))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (xdev->MediaType) && ((size_t)(const void *)((xdev->MediaType) + 1) - (size_t)(const void *)(xdev->MediaType) == 1) && (__s2_len = strlen (xdev->MediaType), __s2_len < 4) ? (__builtin_constant_p (xdev->MediaType_old) && ((size_t)(const void *)((xdev->MediaType_old) + 1) - (size_t)(const void *)(xdev->MediaType_old) == 1) ? __builtin_strcmp (xdev->MediaType_old, xdev->MediaType) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (xdev->MediaType_old); register int __result = __s1[0] - ((const unsigned char *) (const char *) (xdev->MediaType))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (xdev->MediaType))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (xdev->MediaType))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (xdev->MediaType))[3]); } } __result; }))) : __builtin_strcmp (xdev->MediaType_old, xdev->MediaType)))); })) {
      do { } while (0);
      xdev->page = (xdev->page+1) & ~1 ;
      strcpy(xdev->MediaType_old, xdev->MediaType);
    }
  }
  if ((code = param_read_bool(plist, "Tumble", &boolval)) < 0) { do { } while (0); if ((code = param_read_null(plist, "Tumble")) < 0) { do { } while (0); (*(plist)->procs->signal_error)(plist, "Tumble", code); return (code); } if (code == 0) xdev->Tumble = ((bool)0); } else if (code == 0) { do { } while (0); xdev->Tumble = (bool)boolval; }
  if ((code = param_read_int(plist, "CompressMode", &intval)) < 0) { do { } while (0); (*(plist)->procs->signal_error)(plist, "CompressMode", code); return (code); } else if (code == 0) { do { } while (0); xdev->CompressMode = (int)intval; }





  if ((code = gdev_vector_put_params(dev, plist)) < 0)
    return (code);

  return (0);
}
