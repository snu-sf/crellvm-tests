# 1 "./base/gxhintn.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gxhintn.c" 2
# 19 "./base/gxhintn.c"
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
# 20 "./base/gxhintn.c" 2
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
# 21 "./base/gxhintn.c" 2
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
# 22 "./base/gxhintn.c" 2
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
# 23 "./base/gxhintn.c" 2
# 1 "./base/gxarith.h" 1
# 27 "./base/gxarith.h"
int imod(int m, int n);


int igcd(int x, int y);





int idivmod(int a, int b, int m);




int ilog2(int n);
# 24 "./base/gxhintn.c" 2

# 1 "./base/gxmatrix.h" 1
# 22 "./base/gxmatrix.h"
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
# 23 "./base/gxmatrix.h" 2
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
# 26 "./base/gxhintn.c" 2
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
# 1 "./base/gspenum.h" 1
# 30 "./base/gspenum.h"
typedef struct gs_path_enum_s gs_path_enum;
# 26 "./base/gxpath.h" 2
# 1 "./base/gsrect.h" 1
# 63 "./base/gsrect.h"
int int_rect_difference(gs_int_rect * outer, const gs_int_rect * inner,
                        gs_int_rect * diffs );
# 27 "./base/gxpath.h" 2








typedef struct gx_path_s gx_path;
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
# 27 "./base/gxhintn.c" 2
# 1 "./base/gxfont.h" 1
# 23 "./base/gxfont.h"
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
# 24 "./base/gxfont.h" 2
# 1 "./base/gsfont.h" 1
# 39 "./base/gsfont.h"
typedef struct gs_font_s gs_font;




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
# 22 "./base/gsgdata.h"
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
# 23 "./base/gsgdata.h" 2
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






typedef struct gs_text_enum_s gs_text_enum_t;




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
# 28 "./base/gxhintn.c" 2
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
# 29 "./base/gxhintn.c" 2
# 1 "./base/gxtype1.h" 1
# 22 "./base/gxtype1.h"
# 1 "./base/gscrypt1.h" 1
# 23 "./base/gscrypt1.h"
typedef ushort crypt_state;
int gs_type1_encrypt(byte * dest, const byte * src, uint len,
                     crypt_state * pstate);
int gs_type1_decrypt(byte * dest, const byte * src, uint len,
                     crypt_state * pstate);
# 23 "./base/gxtype1.h" 2


# 1 "./base/gxhintn.h" 1
# 22 "./base/gxhintn.h"
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
# 23 "./base/gxhintn.h" 2








typedef struct gs_type42_data_s gs_type42_data;
# 46 "./base/gxhintn.h"
typedef fixed t1_glyph_space_coord;
typedef int32_t t1_hinter_space_coord;
typedef int32_t int19;

enum t1_hint_type
{ hstem, vstem, dot
};

enum t1_pole_type
{ offcurve, oncurve, closepath, moveto
};

enum t1_zone_type
{ topzone, botzone
};

enum t1_align_type
{ unaligned, weak, aligned, topzn, botzn
};

typedef struct {
    double xx, xy, yx, yy;
} double_matrix;

typedef struct {
    int19 xx, xy, yx, yy;
    int32_t denominator;
    unsigned int bitshift;
} fraction_matrix;

typedef struct t1_pole_s
{ t1_glyph_space_coord gx,gy;
    t1_glyph_space_coord ax,ay;
    t1_hinter_space_coord ox,oy;
    enum t1_pole_type type;
    int contour_index;
    enum t1_align_type aligned_x, aligned_y;
    t1_glyph_space_coord boundary_length_x, boundary_length_y;
} t1_pole;

typedef struct t1_hint_s
{ enum t1_hint_type type;
    t1_glyph_space_coord g0, g1;
    t1_glyph_space_coord ag0, ag1;
    bool b0, b1;
    enum t1_align_type aligned0, aligned1;
    int q0, q1;
    unsigned int stem3_index;
    int range_index;
    int side_mask;
    short stem_snap_index0, stem_snap_index1;
    t1_glyph_space_coord boundary_length0, boundary_length1;
} t1_hint;

typedef struct t1_hint_range_s
{ short beg_pole, end_pole;
    int next;
} t1_hint_range;

typedef struct t1_hint_applying_s
{ int pole;
    int opposite;
    int next;
} t1_hint_applying;

typedef struct t1_zone_s
{ enum t1_zone_type type;
    t1_glyph_space_coord y, overshoot_y;
    t1_glyph_space_coord y_min, y_max;
} t1_zone;

typedef struct t1_hinter_s
{ fraction_matrix ctmf;
    fraction_matrix ctmi;
    unsigned int g2o_fraction_bits;
    unsigned long max_import_coord;
    int32_t g2o_fraction;
    t1_glyph_space_coord orig_gx, orig_gy;
    t1_glyph_space_coord subglyph_orig_gx, subglyph_orig_gy;
    fixed orig_dx, orig_dy;
    fixed orig_ox, orig_oy;
    t1_glyph_space_coord width_gx, width_gy;
    t1_glyph_space_coord cx, cy;
    t1_glyph_space_coord bx, by;
    uint log2_pixels_x, log2_pixels_y;
    int log2_subpixels_x, log2_subpixels_y;
    bool transposed;
    bool align_to_pixels;
    bool disable_hinting;
    bool pass_through;
    bool grid_fit_x, grid_fit_y;
    bool charpath_flag;
    bool path_opened;
    bool autohinting;
    bool fix_contour_sign;
    t1_glyph_space_coord blue_shift, blue_fuzz;
    t1_pole pole0[(100 + 10)], *pole;
    t1_hint hint0[30], *hint;
    t1_zone zone0[6], *zone;
    int contour0[10], *contour;
    int subglyph0[10], *subglyph;
    t1_glyph_space_coord stem_snap0[2][12 + 1];
    t1_glyph_space_coord *stem_snap[2];
    int stem_snap_vote0[12 + 1];
    int *stem_snap_vote;
    t1_hint_range hint_range0[30], *hint_range;
    t1_hint_applying hint_applying0[30 * 4], *hint_applying;
    int stem_snap_count[2], max_stem_snap_count[2];
    int stem_snap_vote_count, max_stem_snap_vote_count;
    int subglyph_count, max_subglyph_count;
    int contour_count, max_contour_count;
    int zone_count, max_zone_count;
    int pole_count, max_pole_count;
    int hint_count, max_hint_count;
    int hint_range_count, max_hint_range_count;
    int hint_applying_count, max_hint_applying_count;
    int primary_hint_count;
    int flex_count;
    int FontType;
    bool have_flex;
    bool ForceBold;
    bool keep_stem_width;
    bool suppress_overshoots;
    double BlueScale;
    double font_size;
    double resolution;
    double heigt_transform_coef;
    double width_transform_coef;
    double base_font_scale;
    int19 width_transform_coef_rat;
    int19 heigt_transform_coef_rat;
    int19 width_transform_coef_inv;
    int19 heigt_transform_coef_inv;
    int32_t pixel_o_x, pixel_o_y;
    t1_glyph_space_coord pixel_gw, pixel_gh;
    t1_glyph_space_coord overshoot_threshold;
    t1_glyph_space_coord ymin, ymax, ymid;
    gx_path *output_path;
    gs_memory_t *memory;
} t1_hinter;

void t1_hinter__init(t1_hinter * this, gx_path *output_path);
int t1_hinter__set_mapping(t1_hinter * this, gs_matrix_fixed * ctm,
                        gs_matrix * FontMatrix, gs_matrix * baseFontMatrix,
                        int log2_pixels_x, int log2_pixels_y,
                        int log2_subpixels_x, int log2_subpixels_y,
                        fixed origin_x, fixed origin_y, bool align_to_pixels);
int t1_hinter__set_font_data(t1_hinter * this, int FontType, gs_type1_data *pdata,
                        bool no_grid_fitting, bool is_resource);
int t1_hinter__set_font42_data(t1_hinter * this, int FontType, gs_type42_data *pdata,
                        bool no_grid_fitting);

int t1_hinter__sbw(t1_hinter * this, fixed sbx, fixed sby, fixed wx, fixed wy);
int t1_hinter__sbw_seac(t1_hinter * this, fixed sbx, fixed sby);
int t1_hinter__rmoveto(t1_hinter * this, fixed xx, fixed yy);
int t1_hinter__rlineto(t1_hinter *, fixed xx, fixed yy);
int t1_hinter__rcurveto(t1_hinter * this, fixed xx0, fixed yy0, fixed xx1, fixed yy1, fixed xx2, fixed yy2);
void t1_hinter__setcurrentpoint(t1_hinter * this, fixed xx, fixed yy);
int t1_hinter__closepath(t1_hinter * this);
int t1_hinter__end_subglyph(t1_hinter * this);

int t1_hinter__flex_beg(t1_hinter * this);
int t1_hinter__flex_end(t1_hinter * this, fixed flex_height);
int t1_hinter__flex_point(t1_hinter * this);

int t1_hinter__hint_mask(t1_hinter * this, byte *mask);
int t1_hinter__drop_hints(t1_hinter * this);
int t1_hinter__dotsection(t1_hinter * this);
int t1_hinter__hstem(t1_hinter * this, fixed x0, fixed x1);
int t1_hinter__vstem(t1_hinter * this, fixed y0, fixed y1);
int t1_hinter__overall_hstem(t1_hinter * this, fixed x0, fixed x1, int side_mask);
int t1_hinter__hstem3(t1_hinter * this, fixed x0, fixed y1, fixed x2, fixed y3, fixed x4, fixed y5);
int t1_hinter__vstem3(t1_hinter * this, fixed y0, fixed y1, fixed y2, fixed y3, fixed y4, fixed y5);

int t1_hinter__endglyph(t1_hinter * this);
int t1_hinter__is_x_fitting(t1_hinter * this);
void t1_hinter__fix_contour_signs(t1_hinter * this);
# 26 "./base/gxtype1.h" 2
# 37 "./base/gxtype1.h"
typedef struct pixel_scale_s {
    fixed unit;
    fixed half;
    int log2_unit;
} pixel_scale;
typedef struct point_scale_s {
    pixel_scale x, y;
} point_scale;
# 63 "./base/gxtype1.h"
typedef struct {
    const byte *ip;
    const byte *ip_end;
    crypt_state dstate;
    gs_glyph_data_t cs_data;

} ip_state_t;
# 88 "./base/gxtype1.h"
typedef struct segment_s segment;





struct gs_type1_state_s {
    t1_hinter h;

    gs_font_type1 *pfont;
    gs_imager_state *pis;
    gx_path *path;
    bool no_grid_fitting;
    int paint_type;
    void *callback_data;
    fixed_coeff fc;
    float flatness;
    point_scale scale;
    gs_log2_scale_point log2_subpixels;
    gs_fixed_point origin;

    fixed ostack[48];
    int os_count;
    ip_state_t ipstack[10 + 1];
    int ips_count;
    int init_done;

    bool sb_set;
    bool width_set;
    bool seac_flag;

    int num_hints;
    gs_fixed_point lsb;
    gs_fixed_point width;
    int seac_accent;
    fixed asb;
    gs_fixed_point compound_lsb;


    gs_fixed_point save_adxy;
    fixed asb_diff;



    gs_fixed_point adxy;



    fixed base_lsb;
    int flex_path_state_flags;

    gs_fixed_point origin_offset;

    int flex_count;
    int ignore_pops;


    gs_fixed_point vs_offset;


    fixed transient_array[32];

};

extern const gs_memory_struct_type_t st_gs_type1_state;







typedef fixed *cs_ptr;
# 243 "./base/gxtype1.h"
int gs_type1_check_float(crypt_state *state, bool encrypted, const byte **cip, cs_ptr csp, long lw);



void gs_type1_finish_init(gs_type1_state * pcis);

int gs_type1_sbw(gs_type1_state * pcis, fixed sbx, fixed sby,
                 fixed wx, fixed wy);


int gs_type1_blend(gs_type1_state *pcis, fixed *csp, int num_results);

int gs_type1_seac(gs_type1_state * pcis, const fixed * cstack,
                  fixed asb_diff, ip_state_t * ipsp);

int gs_type1_endchar(gs_type1_state * pcis);


void type1_cis_get_metrics(const gs_type1_state * pcis, double psbw[4]);
# 30 "./base/gxhintn.c" 2

# 1 "./base/gzpath.h" 1
# 25 "./base/gzpath.h"
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
# 61 "./base/gzpath.h"
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
# 32 "./base/gxhintn.c" 2

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
# 34 "./base/gxhintn.c" 2
# 135 "./base/gxhintn.c"
static const char *s_pole_array = "t1_hinter pole array";
static const char *s_zone_array = "t1_hinter zone array";
static const char *s_hint_array = "t1_hinter hint array";
static const char *s_contour_array = "t1_hinter contour array";
static const char *s_subglyph_array = "t1_hinter subglyph array";
static const char *s_hint_range_array = "t1_hinter hint_range array";
static const char *s_hint_applying_array = "t1_hinter hint_applying array";
static const char *s_stem_snap_array = "t1_hinter stem_snap array";
static const char *s_stem_snap_vote_array = "t1_hinter stem_snap_vote array";



typedef int32_t int24;


static const unsigned int split_bits = 12;
static const unsigned int max_coord_bits = 24;
static const unsigned int matrix_bits = 19;
static const unsigned int g2o_bitshift = 12;
static const int32_t FFFFF000 = ~(int32_t)0xFFF;



static __inline__ int32_t mul_shift(int24 a, int19 b, unsigned int s)
{

    return ( (int64_t)a * (int64_t)b ) >> s;






}


static __inline__ int32_t mul_shift_round(int24 a, int19 b, unsigned int s)
{

    return (( ( (int64_t)a * (int64_t)b ) >> (s - 1)) + 1) >> 1;






}

static __inline__ int32_t shift_rounded(int32_t v, unsigned int s)
{ return ((v >> (s - 1)) + 1) >> 1;
}

static __inline__ int32_t Max(int32_t a, int32_t b)
{ return a > b ? a : b;
}

static __inline__ int32_t Min(int32_t a, int32_t b)
{ return a < b ? a : b;
}

static __inline__ long rshift(long a, int b)
{ return b > 0 ? a << b : a >> -b;
}
static __inline__ ulong urshift(ulong a, int b)
{ return b > 0 ? a << b : a >> -b;
}


static __inline__ void double_matrix__set(double_matrix * self, const gs_matrix_fixed * m)
{ self->xx = m->xx;
    self->xy = m->xy;
    self->yx = m->yx;
    self->yy = m->yy;
}

static __inline__ int double_matrix__invert_to(const double_matrix * self, double_matrix * m)
{ double det = self->xx * self->yy - self->xy * self->yx;

    if (fabs(det) * 1000000 <= fabs(self->xx) + fabs(self->xy) + fabs(self->yx) + fabs(self->yy))
        return ((-15));
    m->xx = self->yy / det;
    m->xy = -self->xy / det;
    m->yx = -self->yx / det;
    m->yy = self->xx / det;
    return 0;
}

static void fraction_matrix__drop_bits(fraction_matrix * self, unsigned int bits)
{ self->xx = shift_rounded(self->xx, bits);
    self->xy = shift_rounded(self->xy, bits);
    self->yx = shift_rounded(self->yx, bits);
    self->yy = shift_rounded(self->yy, bits);
    self->denominator >>= bits;
    self->bitshift -= bits;
}

static void fraction_matrix__set(fraction_matrix * self, const double_matrix * pmat)
{ double axx = fabs(pmat->xx), axy = fabs(pmat->xy);
    double ayx = fabs(pmat->yx), ayy = fabs(pmat->yy);
    double scale = (((axx + axy) > (ayx + ayy)) ? (axx + axy) : (ayx + ayy));
    int matrix_exp, m;
    double unused = frexp(scale, &matrix_exp);

    self->bitshift = matrix_bits - matrix_exp;
    if (self->bitshift >= sizeof( self->denominator) * 8) {
        self->denominator = 0;
        self->xx = self->xy = self->yx = self->yy = 0;
    } else {
        self->denominator = 1 << self->bitshift;

        self->xx = (int32_t)(pmat->xx * self->denominator + 0.5);
        self->xy = (int32_t)(pmat->xy * self->denominator + 0.5);
        self->yx = (int32_t)(pmat->yx * self->denominator + 0.5);
        self->yy = (int32_t)(pmat->yy * self->denominator + 0.5);
        m = Max(Max(((self->xx) < 0 ? -(self->xx) : (self->xx)), ((self->xy) < 0 ? -(self->xy) : (self->xy))), Max(((self->yx) < 0 ? -(self->yx) : (self->yx)), ((self->yy) < 0 ? -(self->yy) : (self->yy))));
        unused = frexp(m, &matrix_exp);
        if (matrix_exp > matrix_bits)
            fraction_matrix__drop_bits(self, matrix_exp - matrix_bits);
    }
}

static __inline__ int fraction_matrix__to_double(const fraction_matrix * self, double_matrix * pmat)
{
    if (self->denominator == 0)
        return ((-15));
    pmat->xx = (double)self->xx / self->denominator;
    pmat->xy = (double)self->xy / self->denominator;
    pmat->yx = (double)self->yx / self->denominator;
    pmat->yy = (double)self->yy / self->denominator;
    return 0;
}

static int fraction_matrix__invert_to(const fraction_matrix * self, fraction_matrix * pmat)
{ double_matrix m, M;
    int code;

    code = fraction_matrix__to_double(self, &M);
    if (code < 0)
        return code;
    code = double_matrix__invert_to(&M, &m);
    if (code < 0)
        return code;
    fraction_matrix__set(pmat, &m);
    return 0;
}

static __inline__ int32_t fraction_matrix__transform_x(fraction_matrix *self, int24 x, int24 y, unsigned int s)
{ return mul_shift_round(x, self->xx, s) + mul_shift_round(y, self->yx, s);
}
static __inline__ int32_t fraction_matrix__transform_y(fraction_matrix *self, int24 x, int24 y, unsigned int s)
{ return mul_shift_round(x, self->xy, s) + mul_shift_round(y, self->yy, s);
}



static __inline__ int ranger_step_f(int i, int beg, int end)
{ return (i == end ? beg : i + 1);
}

static __inline__ int ranger_step_b(int i, int beg, int end)
{ return (i == beg ? end : i - 1);
}

static __inline__ fixed o2d(const t1_hinter *h, t1_hinter_space_coord v)
{
    int s = h->g2o_fraction_bits - 8;

    if (s >= 1)
        return ((v >> (h->g2o_fraction_bits - 8 - 1)) + 1) >> 1;
    else if (s == 0)
        return v;
    else
        return v << -s;
}

static __inline__ fixed d2o(const t1_hinter *h, t1_hinter_space_coord v)
{ int s = h->g2o_fraction_bits - 8;

    if (s >= 0)
        return v << s;
    else
        return v >> -s;
}

static __inline__ void g2o(t1_hinter * h, t1_glyph_space_coord gx, t1_glyph_space_coord gy, t1_hinter_space_coord *ox, t1_hinter_space_coord *oy)
{ *ox = fraction_matrix__transform_x(&h->ctmf, gx, gy, g2o_bitshift);
    *oy = fraction_matrix__transform_y(&h->ctmf, gx, gy, g2o_bitshift);
}

static __inline__ t1_hinter_space_coord g2o_dist(t1_glyph_space_coord gd, int19 coef)
{ return mul_shift(gd, coef, g2o_bitshift);
}

static __inline__ void g2d(t1_hinter * h, t1_glyph_space_coord gx, t1_glyph_space_coord gy, fixed *dx, fixed *dy)
{ *dx = fraction_matrix__transform_x(&h->ctmf, gx, gy, g2o_bitshift);
    *dy = fraction_matrix__transform_y(&h->ctmf, gx, gy, g2o_bitshift);
    *dx = o2d(h, *dx);
    *dy = o2d(h, *dy);
    *dx += h->orig_dx;
    *dy += h->orig_dy;
}

static __inline__ void o2g(t1_hinter * h, t1_hinter_space_coord ox, t1_hinter_space_coord oy, t1_glyph_space_coord *gx, t1_glyph_space_coord *gy)
{ *gx = fraction_matrix__transform_x(&h->ctmi, ox, oy, split_bits);
    *gy = fraction_matrix__transform_y(&h->ctmi, ox, oy, split_bits);
    *gx = shift_rounded(*gx, h->g2o_fraction_bits + h->ctmi.bitshift - 8 - split_bits);
    *gy = shift_rounded(*gy, h->g2o_fraction_bits + h->ctmi.bitshift - 8 - split_bits);
}

static __inline__ t1_glyph_space_coord o2g_dist(t1_hinter * h, t1_hinter_space_coord od, int19 coef)
{ return shift_rounded(mul_shift(od, coef, split_bits), h->g2o_fraction_bits + h->ctmi.bitshift - 8 - split_bits);
}

static __inline__ void o2g_float(t1_hinter * h, t1_hinter_space_coord ox, t1_hinter_space_coord oy, t1_glyph_space_coord *gx, t1_glyph_space_coord *gy)
{ *gx = (long)(((double)ox * h->ctmi.xx + (double)oy * h->ctmi.yx) * (1<<8) / h->g2o_fraction / h->ctmi.denominator);
    *gy = (long)(((double)ox * h->ctmi.xy + (double)oy * h->ctmi.yy) * (1<<8) / h->g2o_fraction / h->ctmi.denominator);
}



static void t1_hint__set_aligned_coord(t1_hint * self, t1_glyph_space_coord gc, t1_pole * pole, enum t1_align_type align, int quality)
{ t1_glyph_space_coord g = (self->type == hstem ? pole->gy : pole->gx);

    if (((self->g0 - g) < 0 ? -(self->g0 - g) : (self->g0 - g)) < ((self->g1 - g) < 0 ? -(self->g1 - g) : (self->g1 - g))) {
        if (self->aligned0 <= align && self->q0 > quality)
            self->ag0 = gc, self->aligned0 = align, self->q0 = quality;
    } else {
        if (self->aligned1 <= align && self->q1 > quality)
            self->ag1 = gc, self->aligned1 = align, self->q1 = quality;
    }
}



static void t1_hinter__paint_glyph(t1_hinter * self, bool aligned)
{
# 417 "./base/gxhintn.c"
}

static void t1_hinter__paint_raster_grid(t1_hinter * self)
{
# 470 "./base/gxhintn.c"
}



void t1_hinter__init(t1_hinter * self, gx_path *output_path)
{ self->max_import_coord = (1 << max_coord_bits);
    self->stem_snap_count[0] = self->stem_snap_count[1] = 0;
    self->stem_snap_vote_count = 0;
    self->zone_count = 0;
    self->pole_count = 0;
    self->hint_count = 0;
    self->contour_count = 0;
    self->subglyph_count = 0;
    self->hint_range_count = 0;
    self->flex_count = 0;
    self->have_flex = ((bool)0);

    self->max_subglyph_count = (((int)(sizeof(self->subglyph0))) / ((int)(sizeof((self->subglyph0)[0]))));
    self->max_contour_count = (((int)(sizeof(self->contour0))) / ((int)(sizeof((self->contour0)[0]))));
    self->max_zone_count = (((int)(sizeof(self->zone0))) / ((int)(sizeof((self->zone0)[0]))));
    self->max_pole_count = (((int)(sizeof(self->pole0))) / ((int)(sizeof((self->pole0)[0]))));
    self->max_hint_count = (((int)(sizeof(self->hint0))) / ((int)(sizeof((self->hint0)[0]))));
    self->max_hint_range_count = (((int)(sizeof(self->hint_range0))) / ((int)(sizeof((self->hint_range0)[0]))));
    self->max_hint_applying_count = (((int)(sizeof(self->hint_applying0))) / ((int)(sizeof((self->hint_applying0)[0]))));
    self->max_stem_snap_count[0] = (((int)(sizeof(self->stem_snap0[0]))) / ((int)(sizeof((self->stem_snap0[0])[0]))));
    self->max_stem_snap_count[1] = (((int)(sizeof(self->stem_snap0[1]))) / ((int)(sizeof((self->stem_snap0[1])[0]))));
    self->max_stem_snap_vote_count = (((int)(sizeof(self->stem_snap_vote0))) / ((int)(sizeof((self->stem_snap_vote0)[0]))));

    self->pole = self->pole0;
    self->hint = self->hint0;
    self->zone = self->zone0;
    self->contour = self->contour0;
    self->subglyph = self->subglyph0;
    self->hint_range = self->hint_range0;
    self->hint_applying = self->hint_applying0;
    self->stem_snap[0] = self->stem_snap0[0];
    self->stem_snap[1] = self->stem_snap0[1];
    self->stem_snap_vote = self->stem_snap_vote0;

    self->FontType = 1;
    self->ForceBold = ((bool)0);
    self->base_font_scale = 0;
    self->resolution = 0;
    self->heigt_transform_coef = self->width_transform_coef = 0;
    self->heigt_transform_coef_rat = self->width_transform_coef_rat = 0;
    self->heigt_transform_coef_inv = self->width_transform_coef_inv = 0;
    self->cx = self->cy = 0;
    self->contour[0] = 0;
    self->subglyph[0] = 0;
    self->keep_stem_width = ((bool)0);
    self->charpath_flag = ((bool)0);
    self->grid_fit_x = self->grid_fit_y = ((bool)1);
    self->output_path = output_path;
    self->memory = (output_path == 0 ? 0 : output_path->memory);
    self->disable_hinting = (self->memory == ((void*)0));
    self->pass_through = self->disable_hinting;
    self->autohinting = ((bool)0);
    self->fix_contour_sign = ((bool)0);

    self->stem_snap[0][0] = self->stem_snap[1][0] = 100;
}

static __inline__ void t1_hinter__free_arrays(t1_hinter * self)
{ if (self->pole != self->pole0)
        ((self->memory)->procs.free_object(self->memory, self->pole, s_pole_array));
    if (self->hint != self->hint0)
        ((self->memory)->procs.free_object(self->memory, self->hint, s_hint_array));
    if (self->zone != self->zone0)
        ((self->memory)->procs.free_object(self->memory, self->zone, s_zone_array));
    if (self->contour != self->contour0)
        ((self->memory)->procs.free_object(self->memory, self->contour, s_contour_array));
    if (self->subglyph != self->subglyph0)
        ((self->memory)->procs.free_object(self->memory, self->subglyph, s_subglyph_array));
    if (self->hint_range != self->hint_range0)
        ((self->memory)->procs.free_object(self->memory, self->hint_range, s_hint_range_array));
    if (self->hint_applying != self->hint_applying0)
        ((self->memory)->procs.free_object(self->memory, self->hint_applying, s_hint_applying_array));
    if (self->stem_snap[0] != self->stem_snap0[0])
        ((self->memory)->procs.free_object(self->memory, self->stem_snap[0], s_stem_snap_array));
    if (self->stem_snap[1] != self->stem_snap0[1])
        ((self->memory)->procs.free_object(self->memory, self->stem_snap[1], s_stem_snap_array));
    if (self->stem_snap_vote != self->stem_snap_vote0)
        ((self->memory)->procs.free_object(self->memory, self->stem_snap_vote, s_stem_snap_vote_array));
    self->pole = 0;
    self->hint = 0;
    self->zone = 0;
    self->contour = 0;
    self->hint_range = 0;
    self->hint_applying = 0;
    self->stem_snap[0] = self->stem_snap[1] = 0;
    self->stem_snap_vote = 0;
}

static __inline__ void t1_hinter__init_outline(t1_hinter * self)
{ self->contour_count = 0;
    self->pole_count = 0;
    self->contour[0] = 0;
    self->hint_count = 0;
    self->primary_hint_count = -1;
    self->suppress_overshoots = ((bool)0);
    self->path_opened = ((bool)0);
}

static void t1_hinter__compute_rat_transform_coef(t1_hinter * self)
{

    self->heigt_transform_coef_rat = (int19)(self->heigt_transform_coef * self->ctmf.denominator + 0.5);
    self->width_transform_coef_rat = (int19)(self->width_transform_coef * self->ctmf.denominator + 0.5);
    self->heigt_transform_coef_inv = (int19)(self->ctmi.denominator / self->heigt_transform_coef + 0.5);
    self->width_transform_coef_inv = (int19)(self->ctmi.denominator / self->width_transform_coef + 0.5);
}

static __inline__ void t1_hinter__adjust_matrix_precision(t1_hinter * self, fixed xx, fixed yy)
{ fixed x = ((xx) < 0 ? -(xx) : (xx)), y = ((yy) < 0 ? -(yy) : (yy));
    fixed c = (x > y ? x : y);

    while (c >= self->max_import_coord) {

        self->max_import_coord <<= 1;
        fraction_matrix__drop_bits(&self->ctmf, 1);
        fraction_matrix__drop_bits(&self->ctmi, 1);
        self->g2o_fraction_bits -= 1;
        self->g2o_fraction >>= 1;
        t1_hinter__compute_rat_transform_coef(self);
    }
    if (self->ctmf.denominator == 0) {

        self->ctmf.denominator = 1;
    }
}

static __inline__ void t1_hinter__set_origin(t1_hinter * self, fixed dx, fixed dy)
{
    fixed align_x = rshift((1L << 8), (self->align_to_pixels ? (int)self->log2_pixels_x : self->log2_subpixels_x));
    fixed align_y = rshift((1L << 8), (self->align_to_pixels ? (int)self->log2_pixels_y : self->log2_subpixels_y));

    self->orig_dx = (dx + align_x / 2) & ~(align_x - 1);
    self->orig_dy = (dy + align_y / 2) & ~(align_y - 1);
    t1_hinter__adjust_matrix_precision(self, self->orig_dx, self->orig_dy);
    self->orig_ox = d2o(self, self->orig_dx);
    self->orig_oy = d2o(self, self->orig_dy);
# 627 "./base/gxhintn.c"
}

int t1_hinter__set_mapping(t1_hinter * self, gs_matrix_fixed * ctm,
                    gs_matrix * FontMatrix, gs_matrix * baseFontMatrix,
                    int log2_pixels_x, int log2_pixels_y,
                    int log2_subpixels_x, int log2_subpixels_y,
                    fixed origin_x, fixed origin_y, bool align_to_pixels)
{ float axx = fabs(ctm->xx), axy = fabs(ctm->xy);
    float ayx = fabs(ctm->xx), ayy = fabs(ctm->xy);
    float scale = (((axx + axy) > (ayx + ayy)) ? (axx + axy) : (ayx + ayy));
    double_matrix CTM;
    int code;

    self->disable_hinting |= (scale < 1/1024. || scale > 4);
    self->pass_through |= self->disable_hinting;
    self->log2_pixels_x = log2_pixels_x;
    self->log2_pixels_y = log2_pixels_y;
    self->log2_subpixels_x = log2_subpixels_x;
    self->log2_subpixels_y = log2_subpixels_y;
    double_matrix__set(&CTM, ctm);
    fraction_matrix__set(&self->ctmf, &CTM);
    self->g2o_fraction_bits = self->ctmf.bitshift - g2o_bitshift + 8;
    if (self->g2o_fraction_bits > max_coord_bits) {
        fraction_matrix__drop_bits(&self->ctmf, self->g2o_fraction_bits - max_coord_bits);
        self->g2o_fraction_bits = max_coord_bits;
    }
    if (self->ctmf.denominator != 0) {
        code = fraction_matrix__invert_to(&self->ctmf, &self->ctmi);
        if (code == (-15))
            self->ctmf.denominator = 0;
        else if (code < 0)
            return code;
    }
    if (self->ctmf.denominator != 0) {
        self->g2o_fraction = 1 << self->g2o_fraction_bits;


        if (self->g2o_fraction == 0)
            return ((-13));
    }
    if (self->ctmf.denominator == 0 || self->ctmi.denominator == 0) {

        self->disable_hinting = ((bool)1);
        self->pass_through = ((bool)1);
        self->ctmf.denominator = 1;
    }
    self->transposed = (((self->ctmf.xy) < 0 ? -(self->ctmf.xy) : (self->ctmf.xy)) * 10 > ((self->ctmf.xx) < 0 ? -(self->ctmf.xx) : (self->ctmf.xx)));
    {



        double_matrix m;
        double vp, sp, div_x, div_y;

        code = fraction_matrix__to_double(&self->ctmf, &m);
        if (code < 0)
            return code;
        vp = ((m.xx * m.yy - m.yx * m.xy) < 0 ? -(m.xx * m.yy - m.yx * m.xy) : (m.xx * m.yy - m.yx * m.xy));
        sp = ((m.xx * m.yx + m.xy * m.yy) < 0 ? -(m.xx * m.yx + m.xy * m.yy) : (m.xx * m.yx + m.xy * m.yy));
        div_x = sqrt((double)(m.xx)*(m.xx)+(double)(m.yx)*(m.yx));
        div_y = sqrt((double)(m.xy)*(m.xy)+(double)(m.yy)*(m.yy));
        if (vp != 0 && div_x != 0 && div_y != 0) {
            if (!self->transposed) {
                self->heigt_transform_coef = vp / div_x;
                self->width_transform_coef = vp / div_y;
            } else {
                self->heigt_transform_coef = vp / div_y;
                self->width_transform_coef = vp / div_x;
            }
            t1_hinter__compute_rat_transform_coef(self);
            self->keep_stem_width = (sp <= vp / 3);
        }
    }
    {
        gs_point p0, p1, p2;
        double d0, d1, d2;

        gs_distance_transform(0, 1, baseFontMatrix, &p0);
        gs_distance_transform(0, 1, FontMatrix, &p1);
        gs_distance_transform(0, 1, (gs_matrix *)ctm, &p2);
        d0 = sqrt((double)(p0.x)*(p0.x)+(double)(p0.y)*(p0.y));
        d1 = sqrt((double)(p1.x)*(p1.x)+(double)(p1.y)*(p1.y));
        d2 = sqrt((double)(p2.x)*(p2.x)+(double)(p2.y)*(p2.y));
        self->base_font_scale = d0;
        self->font_size = floor(d1 / d0 * 10000 + 0.5) / 10000;
        self->resolution = floor(d2 / d1 * 10000000 + 0.5) / 10000000;
# 726 "./base/gxhintn.c"
    }
    if (1 ||
            self->resolution * self->font_size >= 2) {

        self->grid_fit_y = (((self->ctmf.xy) < 0 ? -(self->ctmf.xy) : (self->ctmf.xy)) * 10 < ((self->ctmf.xx) < 0 ? -(self->ctmf.xx) : (self->ctmf.xx)) ||
                            ((self->ctmf.xx) < 0 ? -(self->ctmf.xx) : (self->ctmf.xx)) * 10 < ((self->ctmf.xy) < 0 ? -(self->ctmf.xy) : (self->ctmf.xy)));
        self->grid_fit_x = (((self->ctmf.yx) < 0 ? -(self->ctmf.yx) : (self->ctmf.yx)) * 10 < ((self->ctmf.yy) < 0 ? -(self->ctmf.yy) : (self->ctmf.yy)) ||
                            ((self->ctmf.yy) < 0 ? -(self->ctmf.yy) : (self->ctmf.yy)) * 10 < ((self->ctmf.yx) < 0 ? -(self->ctmf.yx) : (self->ctmf.yx)));
    } else {

        self->grid_fit_x = self->grid_fit_y = ((bool)0);
    }
    self->align_to_pixels = align_to_pixels;
    t1_hinter__set_origin(self, origin_x, origin_y);
    self->pixel_o_x = rshift(self->g2o_fraction, (self->align_to_pixels ? (int)self->log2_pixels_x : self->log2_subpixels_x));
    self->pixel_o_y = rshift(self->g2o_fraction, (self->align_to_pixels ? (int)self->log2_pixels_y : self->log2_subpixels_y));
    self->pixel_gh = ((o2g_dist(self, self->pixel_o_x, self->heigt_transform_coef_inv)) < 0 ? -(o2g_dist(self, self->pixel_o_x, self->heigt_transform_coef_inv)) : (o2g_dist(self, self->pixel_o_x, self->heigt_transform_coef_inv)));
    self->pixel_gw = ((o2g_dist(self, self->pixel_o_y, self->width_transform_coef_inv)) < 0 ? -(o2g_dist(self, self->pixel_o_y, self->width_transform_coef_inv)) : (o2g_dist(self, self->pixel_o_y, self->width_transform_coef_inv)));
    return 0;
}

static void t1_hinter__make_zone(t1_hinter * self, t1_zone *zone, float * blues, enum t1_zone_type type, t1_glyph_space_coord blue_fuzz)
{ t1_glyph_space_coord d = 0;

    zone->type = type;
    zone->y = ((fixed)((blues[0] + d)*(float)(1<<8)));
    zone->overshoot_y = ((fixed)((blues[1] + d)*(float)(1<<8)));
    zone->y_min = (((zone->y) < (zone->overshoot_y)) ? (zone->y) : (zone->overshoot_y)) - blue_fuzz;
    zone->y_max = (((zone->y) > (zone->overshoot_y)) ? (zone->y) : (zone->overshoot_y)) + blue_fuzz;
    if (type == botzone ? zone->overshoot_y > zone->y : zone->overshoot_y < zone->y) {
        int v = zone->overshoot_y; zone->overshoot_y = zone->y; zone->y = v;
    }
    t1_hinter__adjust_matrix_precision(self, zone->y_min, zone->y_max);
}

static bool t1_hinter__realloc_array(gs_memory_t *mem, void **a, void *a0, int *max_count, int elem_size, int enhancement, const char *cname)
{
    void *aa = (*(mem)->procs.alloc_bytes)(mem, (*max_count + enhancement * 2) * elem_size, cname);

    if (aa == ((void*)0))
        return ((bool)1);
    memcpy(aa, *a, *max_count * elem_size);
    if (*a != a0)
        ((mem)->procs.free_object(mem, *a, cname));
    *a = aa;
    *max_count += enhancement * 2;
    return ((bool)0);
}

static int t1_hinter__set_alignment_zones(t1_hinter * self, float * blues, int count, enum t1_zone_type type, bool family)
{ int count2 = count / 2, i, j;

    if (!family) {

        if (count2 + self->zone_count >= self->max_zone_count)
            if(t1_hinter__realloc_array(self->memory, (void **)&self->zone, self->zone0, &self->max_zone_count,
                                        sizeof(self->zone0) / (((int)(sizeof(self->zone0))) / ((int)(sizeof((self->zone0)[0])))),
                                        (((6) > (count)) ? (6) : (count)), s_zone_array))
                return ((-25));
        for (i = 0; i < count2; i++)
            t1_hinter__make_zone(self, &self->zone[self->zone_count + i], blues + i + i, type, self->blue_fuzz);
        self->zone_count += count2;
    } else {

        t1_zone zone;
        for (i = 0; i < count2; i++) {
            t1_hinter__make_zone(self, &zone, blues + i, type, self->blue_fuzz);
            for (j = 0; j<self->zone_count; j++) {
                t1_zone *zone1 = &self->zone[j];
                if (((zone.y - zone1->y) < 0 ? -(zone.y - zone1->y) : (zone.y - zone1->y)) * self->heigt_transform_coef <= 1 &&
                    ((zone.overshoot_y - zone1->overshoot_y) < 0 ? -(zone.overshoot_y - zone1->overshoot_y) : (zone.overshoot_y - zone1->overshoot_y)) * self->heigt_transform_coef <= 1)
                    *zone1 = zone;
            }
        }
    }
    return 0;
}

static int t1_hinter__set_stem_snap(t1_hinter * self, float * value, int count, unsigned short hv)
{ int count0 = self->stem_snap_count[hv], i, j;
    t1_glyph_space_coord pixel_g = (!hv ? self->pixel_gh : self->pixel_gw);

    if (pixel_g == 0)
        return 0;
    if (count + count0 >= self->max_stem_snap_count[hv])
        if(t1_hinter__realloc_array(self->memory, (void **)&self->stem_snap[hv], self->stem_snap0[hv], &self->max_stem_snap_count[hv],
                                        sizeof(self->stem_snap0[0]) / (((int)(sizeof(self->stem_snap0[0]))) / ((int)(sizeof((self->stem_snap0[0])[0])))),
                                        (((12) > (count)) ? (12) : (count)), s_stem_snap_array))
            return ((-25));
    if (count + count0 >= self->max_stem_snap_vote_count)
        if(t1_hinter__realloc_array(self->memory, (void **)&self->stem_snap_vote, self->stem_snap_vote0, &self->max_stem_snap_vote_count,
                                        sizeof(self->stem_snap_vote0) / (((int)(sizeof(self->stem_snap_vote0))) / ((int)(sizeof((self->stem_snap_vote0)[0])))),
                                        (((12) > (count)) ? (12) : (count)), s_stem_snap_vote_array))
            return ((-25));
    if (count == 1 || (count > 0 && ((fixed)((value[count - 1] - value[0])*(float)(1<<8))) > pixel_g)) {
        for (i = 0; i < count; i++)
            self->stem_snap[hv][i] = ((fixed)((value[i])*(float)(1<<8)));
        self->stem_snap_count[hv] = count;
        for (i = 0; i < count; i++) {
            for (j = i + 1; j < count; j++)
                if (self->stem_snap[hv][i] > self->stem_snap[hv][j]) {
                    t1_glyph_space_coord v = self->stem_snap[hv][i];

                    self->stem_snap[hv][i] = self->stem_snap[hv][j];
                    self->stem_snap[hv][j] = v;
                }
        }
        for (i = 1, j = 0; i < count; i++) {
            if (self->stem_snap[hv][j] != self->stem_snap[hv][i]) {
                j++;
                self->stem_snap[hv][j] = self->stem_snap[hv][i];
            }
        }
        self->stem_snap_count[hv] = j + 1;
    }
    return 0;
# 860 "./base/gxhintn.c"
}

static void enable_draw_import(void)
{
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
    do { } while (0);
}

int t1_hinter__set_font_data(t1_hinter * self, int FontType, gs_type1_data *pdata, bool no_grid_fitting, bool is_resource)
{ int code;

    t1_hinter__init_outline(self);
    self->FontType = FontType;
    self->BlueScale = pdata->BlueScale;
    self->blue_shift = ((fixed)((pdata->BlueShift)*(float)(1<<8)));
    self->blue_fuzz = ((fixed)((pdata->BlueFuzz)*(float)(1<<8)));
    self->suppress_overshoots = (self->BlueScale > self->heigt_transform_coef / (1 << self->log2_pixels_y) - 0.00020417);
    self->overshoot_threshold = (self->heigt_transform_coef != 0 ? (t1_glyph_space_coord)(((1L << 8) >> 1) * (1 << self->log2_pixels_y) / self->heigt_transform_coef) : 0);
    self->ForceBold = pdata->ForceBold;
    self->disable_hinting |= no_grid_fitting;
    self->pass_through |= no_grid_fitting;
    self->charpath_flag = no_grid_fitting;
    self->fix_contour_sign = (!is_resource && self->memory != ((void*)0));
    if (self->fix_contour_sign)
        self->pass_through = ((bool)0);
    if (!0 && (0 || self->pass_through))
        enable_draw_import();
    if (self->pass_through)
        return 0;
    code = t1_hinter__set_alignment_zones(self, pdata->OtherBlues.values, pdata->OtherBlues.count, botzone, ((bool)0));
    if (code >= 0)
        code = t1_hinter__set_alignment_zones(self, pdata->BlueValues.values, (((2) < (pdata->BlueValues.count)) ? (2) : (pdata->BlueValues.count)), botzone, ((bool)0));
    if (code >= 0)
        code = t1_hinter__set_alignment_zones(self, pdata->BlueValues.values + 2, pdata->BlueValues.count - 2, topzone, ((bool)0));
    if (code >= 0)
        code = t1_hinter__set_alignment_zones(self, pdata->FamilyOtherBlues.values, pdata->FamilyOtherBlues.count, botzone, ((bool)1));
    if (code >= 0)
        code = t1_hinter__set_alignment_zones(self, pdata->FamilyBlues.values, (((2) < (pdata->FamilyBlues.count)) ? (2) : (pdata->FamilyBlues.count)), botzone, ((bool)1));
    if (code >= 0)
        code = t1_hinter__set_alignment_zones(self, pdata->FamilyBlues.values + 2, pdata->FamilyBlues.count - 2, topzone, ((bool)1));
    if (code >= 0)
        code = t1_hinter__set_stem_snap(self, pdata->StdHW.values, pdata->StdHW.count, 0);
    if (code >= 0)
        code = t1_hinter__set_stem_snap(self, pdata->StdVW.values, pdata->StdVW.count, 1);
    if (code >= 0)
        code = t1_hinter__set_stem_snap(self, pdata->StemSnapH.values, pdata->StemSnapH.count, 0);
    if (code >= 0)
        code = t1_hinter__set_stem_snap(self, pdata->StemSnapV.values, pdata->StemSnapV.count, 1);
    return code;
}

int t1_hinter__set_font42_data(t1_hinter * self, int FontType, gs_type42_data *pdata, bool no_grid_fitting)
{
    t1_hinter__init_outline(self);
    self->FontType = FontType;
    self->BlueScale = 0.039625;
    self->blue_shift = 7;
    self->blue_fuzz = 1;
    self->suppress_overshoots = (self->BlueScale > self->heigt_transform_coef / (1 << self->log2_pixels_y) - 0.00020417);
    self->overshoot_threshold = (self->heigt_transform_coef != 0 ? (t1_glyph_space_coord)(((1L << 8) >> 1) * (1 << self->log2_pixels_y) / self->heigt_transform_coef) : 0);
    self->ForceBold = ((bool)0);
    self->pass_through |= no_grid_fitting;
    self->charpath_flag = no_grid_fitting;
    self->autohinting = ((bool)1);
    if (!0 && (0 || self->pass_through))
        enable_draw_import();
    if (self->pass_through)
        return 0;

    return 0;
}

static __inline__ int t1_hinter__can_add_pole(t1_hinter * self, t1_pole **pole)
{ if (self->pole_count >= self->max_pole_count)
        if(t1_hinter__realloc_array(self->memory, (void **)&self->pole, self->pole0, &self->max_pole_count,
                                    sizeof(self->pole0) / (((int)(sizeof(self->pole0))) / ((int)(sizeof((self->pole0)[0])))), (100 + 10), s_pole_array))
            return ((-25));
    *pole = &self->pole[self->pole_count];
    return 0;
}

static __inline__ int t1_hinter__add_pole(t1_hinter * self, t1_glyph_space_coord xx, t1_glyph_space_coord yy, enum t1_pole_type type)
{ t1_pole *pole;
    int code = t1_hinter__can_add_pole(self, &pole);

    if (code < 0)
        return code;
    pole->gx = pole->ax = self->cx += xx;
    pole->gy = pole->ay = self->cy += yy;
    pole->ox = pole->oy = 0;
    pole->type = type;
    pole->contour_index = self->contour_count;
    pole->aligned_x = pole->aligned_y = unaligned;
    pole->boundary_length_x = pole->boundary_length_y = 0;
    self->pole_count++;
    return 0;
}

int t1_hinter__sbw(t1_hinter * self, fixed sbx, fixed sby, fixed wx, fixed wy)
{ self->cx = self->orig_gx = self->subglyph_orig_gx = sbx;
    self->cy = self->orig_gy = self->subglyph_orig_gy = sby;
    self->width_gx = wx;
    self->width_gy = wy;
    return 0;
}

int t1_hinter__sbw_seac(t1_hinter * self, fixed sbx, fixed sby)
{ t1_hinter__adjust_matrix_precision(self, sbx, sby);
    self->cx = self->subglyph_orig_gx = self->orig_gx + sbx;
    self->cy = self->subglyph_orig_gy = self->orig_gy + sby;
    return 0;
}

static bool t1_hinter__find_flex(t1_hinter * self, int k, int contour_beg, int contour_end,
                       t1_glyph_space_coord pixel_g, t1_glyph_space_coord threshold,
                       int i0, int i1, int N, int *j0, int *j1,
                       t1_glyph_space_coord *gm)
{
    int i, j, n = N - 5, m, l;
    t1_glyph_space_coord *p_gc = (!k ? &self->pole[0].gx : &self->pole[0].gy);
    t1_glyph_space_coord *p_gd = (!k ? &self->pole[0].gy : &self->pole[0].gx);
    int offset_gc = (char *)p_gc - (char *)&self->pole[0];
    int offset_gd = (char *)p_gd - (char *)&self->pole[0];
    t1_glyph_space_coord gc0, gc1, gd0, gd1, gcl, gdl, gcp = 0, gdp = 0, gcd, gcm = 0;

    for (i = i0; n; n--, i = i + 1) {
        if (i == contour_end)
            i = contour_beg;
        if (self->pole[i].type == offcurve)
            continue;
        gc0 = *(t1_glyph_space_coord *)((char *)(&self->pole[i]) + (offset_gc));
        gd0 = *(t1_glyph_space_coord *)((char *)(&self->pole[i]) + (offset_gd));
        for (j = i1, m = n; m; m--, j--) {
            if (j < contour_beg)
                j = contour_end - 1;
            if (self->pole[j].type == offcurve)
                continue;
            gc1 = *(t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc));
            gd1 = *(t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gd));
            if (((gd1 - gd0) < 0 ? -(gd1 - gd0) : (gd1 - gd0)) < pixel_g * 4)
                continue;
            if (gc0 == gc1) {

                bool gt = ((bool)0), lt = ((bool)0);
                double area = 0, area0;
                int pl = i;
                int dir = 0, prev_dir = 0, dir_change = 0;

                *gm = gc0;



                for (l = i; ; pl = l, gcp = gcl, gdp = gdl, prev_dir = dir, l++) {
                    if (l == contour_end)
                        l = contour_beg;
                    gcl = *(t1_glyph_space_coord *)((char *)(&self->pole[l]) + (offset_gc));
                    gdl = *(t1_glyph_space_coord *)((char *)(&self->pole[l]) + (offset_gd));
                    if (l != i) {
                        area += (double)(gcp - gc0) * (gdl - gdp) - (double)(gdp - gd0) * (gcl - gcp);
                        gcd = gcl - gc0;
                        gcd = ((gcd) < 0 ? -(gcd) : (gcd));
                        if (gcm < gcd) {
                            *gm = gcl;
                            gcm = gcd;
                        }
                        dir = (gcp < gcl ? 1 : gcp > gcl ? -1 : prev_dir);
                        if (dir * prev_dir < 0)
                            dir_change++;
                    }
                    if (l == j)
                        break;
                    if (gcl < gc0)
                        lt = ((bool)1);
                    if (gcl > gc0)
                        gt = ((bool)1);
                }
                if (dir_change > 1)
                    continue;
                if (gcm > threshold)
                    continue;
                area = ((area) < 0 ? -(area) : (area)) / 2;
                area0 = (double)(gd1 - gd0) * gcm;
                area0 = ((area0) < 0 ? -(area0) : (area0));
                if (area > area0 * 0.75)
                    continue;
                if (!lt || !gt) {
                    int ii = i - 1, jj = j + 1;
                    t1_glyph_space_coord gii, gjj;

                    if (ii < contour_beg)
                        ii = contour_end - 1;
                    if (jj == contour_end)
                        jj = contour_beg;
                    gii = *(t1_glyph_space_coord *)((char *)(&self->pole[ii]) + (offset_gc));
                    gjj = *(t1_glyph_space_coord *)((char *)(&self->pole[jj]) + (offset_gc));
                    if ((lt && gii <= gc0 && gjj <= gc0) ||
                        (gt && gii >= gc0 && gjj >= gc0)) {
                        *j0 = i;
                        *j1 = j;
                        return ((bool)1);
                    }
                }
            }
        }




        break;
    }
    return ((bool)0);
}

static void t1_hinter__compact_flex(t1_hinter * self, int contour_beg, int contour_end, int i0, int i1, int *pi)
{
    if (i0 > i1) {
        t1_hinter__compact_flex(self, contour_beg, contour_end, i0, contour_end, pi);
        t1_hinter__compact_flex(self, contour_beg, contour_end, contour_beg, i1, pi);
    } else if (i0 < i1) {
        int i, j;
        int s = i1 - i0 - 1;

        for (j = 0; j < self->hint_range_count; j++) {
            if (self->hint_range[j].beg_pole >= i1)
                self->hint_range[j].beg_pole -= s;
            else if (self->hint_range[j].beg_pole > i0)
                self->hint_range[j].beg_pole = i0;
            if (self->hint_range[j].end_pole >= i1)
                self->hint_range[j].end_pole -= s;
            else if (self->hint_range[j].end_pole > i0)
                self->hint_range[j].end_pole = i0;
        }
        if (0) {
            for (i = i0; i <= i1; i++)
                do { } while (0);
        }
        memmove(&self->pole[i0 + 1], &self->pole[i1], sizeof(*self->pole) * (self->pole_count - i1));
        self->contour[self->contour_count] -= s;
        self->pole_count -= s;
        if (*pi >= i1)
            *pi -= s;
        else if (i0 <= *pi)
            *pi = i0;
    }
}

static void t1_hinter__adjust_stem_hints_by_missed_flex(t1_hinter * self, t1_glyph_space_coord g0,
                                                         t1_glyph_space_coord gm, int k)
{
# 1125 "./base/gxhintn.c"
    t1_glyph_space_coord gg = g0;
    int i;

    if (gm < g0) {
        g0 ^= gm; gm ^= g0; g0 ^= gm;
    }
    for (i = 0; i < self->hint_count; i++)
        if (!k == (self->hint[i].type != hstem)) {
            t1_hint *hint = &self->hint[i];

            if (g0 <= hint->g0 && hint->g0 <= gm)
                hint->g0 = hint->ag0 = gg;
            if (g0 <= hint->g1 && hint->g1 <= gm)
                hint->g1 = hint->ag1 = gg;
        }
}

static void t1_hinter__fix_missed_flex(t1_hinter * self)
{
    int contour_beg, contour_end;
    int i, j, k, pj, n, j0, j1;

    if (self->contour_count == 0)
        return;
    contour_beg = self->contour[self->contour_count -1];
    contour_end = self->pole_count - 1;
    if (contour_beg + 8 >= contour_end)
        return;
    for (k = 0; k < 2; k++) {
        t1_glyph_space_coord *p_gc = (!k ? &self->pole[0].gx : &self->pole[0].gy);
        t1_glyph_space_coord *p_gd = (!k ? &self->pole[0].gy : &self->pole[0].gx);
        int offset_gc = (char *)p_gc - (char *)&self->pole[0];
        int offset_gd = (char *)p_gd - (char *)&self->pole[0];
        t1_glyph_space_coord pixel_g = (!k ? self->pixel_gw : self->pixel_gh);
        t1_glyph_space_coord threshold = pixel_g * 5 / 10;
        t1_glyph_space_coord gc0, gc1, gc, gcj, gd = 0, ge, gm;
        int dir = 0, prev_dir;
        bool wrapped = ((bool)0);

        gc = *(t1_glyph_space_coord *)((char *)(&self->pole[contour_beg]) + (offset_gc));
        gc0 = gc - threshold;
        gc1 = gc + threshold;

        for (i = contour_end; i > contour_beg; i--) {
            gcj = *(t1_glyph_space_coord *)((char *)(&self->pole[i]) + (offset_gc));
            if (self->pole[i].type == offcurve)
                continue;
            if (gcj < gc0 || gcj > gc1)
                break;
        }
        if (i == contour_end) {
            i = contour_beg;
            wrapped = ((bool)1);
        } else
            i++;

        for (;;i++) {
            prev_dir = 0;
            if (i == contour_end) {
                if (wrapped)
                    break;
                wrapped = ((bool)1);
                i = contour_beg;
            }
            gc = *(t1_glyph_space_coord *)((char *)(&self->pole[i]) + (offset_gc));
            ge = *(t1_glyph_space_coord *)((char *)(&self->pole[i]) + (offset_gd));
            gc0 = gc - threshold;
            gc1 = gc + threshold;
            for (pj = i, j = i + 1, n = 0; ; pj = j, j++, n++) {
                if (j == contour_end)
                    j = contour_beg;
                if (j == i)
                    break;
                if (self->pole[j].type == offcurve)
                    continue;
                gcj = *(t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc));
                if (gcj < gc0 || gcj > gc1)
                    break;
                gd = *(t1_glyph_space_coord *)((char *)(&self->pole[i]) + (offset_gd));
                dir = (gd > ge ? 1 : -1);
                if (dir * prev_dir < 0)
                    break;
                ge = gd;
                prev_dir = dir;
            }
            if (n < 6)
                continue;
            if (t1_hinter__find_flex(self, k, contour_beg, contour_end, pixel_g, threshold, i, pj, n, &j0, &j1, &gm)) {
                t1_hinter__compact_flex(self, contour_beg, contour_end, j0, j1, &i);
                t1_hinter__adjust_stem_hints_by_missed_flex(self, gc, gm, k);
                contour_end = self->pole_count - 1;
            }
        }
    }
}

int t1_hinter__rmoveto(t1_hinter * self, fixed xx, fixed yy)
{ int code;

    t1_hinter__adjust_matrix_precision(self, xx, yy);
    if (self->flex_count == 0) {
        if (self->pass_through) {
            t1_glyph_space_coord gx = self->cx += xx;
            t1_glyph_space_coord gy = self->cy += yy;
            fixed fx, fy;

            if (self->path_opened) {
                code = gx_path_close_subpath_notes(self->output_path, sn_none);
                if (code < 0)
                    return code;
                self->path_opened = ((bool)0);
            }
            g2d(self, gx, gy, &fx, &fy);
            code = gx_path_add_point(self->output_path, fx, fy);
            do { } while (0);
            do { } while (0);
            if (self->flex_count == 0) {
                self->bx = self->cx;
                self->by = self->cy;
            }
            return code;
        }
        if (self->pole_count > 0 && self->pole[self->pole_count - 1].type == moveto)
            self->pole_count--;
        if (self->pole_count > 0 && self->pole[self->pole_count - 1].type != closepath) {
            code = t1_hinter__closepath(self);
            if (code < 0)
                return code;
        }
        if (!self->have_flex)
            t1_hinter__fix_missed_flex(self);
    }
    code = t1_hinter__add_pole(self, xx, yy, moveto);
    if (self->flex_count == 0) {
        self->bx = self->cx;
        self->by = self->cy;
    }
    do { } while (0);
    do { } while (0);
    return code;
}

static __inline__ void t1_hinter__skip_degenerate_segnment(t1_hinter * self, int npoles)
{
    int contour_beg = self->contour[self->contour_count], i;

    if (contour_beg >= self->pole_count - npoles)
        return;
    for (i = self->pole_count - npoles - 1; i < self->pole_count - 1; i++)
        if (self->pole[i].ax != self->cx || self->pole[i].ay != self->cy)
            return;
    self->pole_count -= npoles;
}

int t1_hinter__rlineto(t1_hinter * self, fixed xx, fixed yy)
{
    t1_hinter__adjust_matrix_precision(self, xx, yy);
    if (self->pass_through) {
        t1_glyph_space_coord gx = self->cx += xx;
        t1_glyph_space_coord gy = self->cy += yy;
        fixed fx, fy;

        do { } while (0);
        self->path_opened = ((bool)1);
        g2d(self, gx, gy, &fx, &fy);
        return gx_path_add_line_notes(self->output_path, fx, fy, sn_none);
    } else {
        int code = t1_hinter__add_pole(self, xx, yy, oncurve);

        if (code < 0)
            return code;
        do { } while (0);
        t1_hinter__skip_degenerate_segnment(self, 1);
        return 0;
    }
}

int t1_hinter__rcurveto(t1_hinter * self, fixed xx0, fixed yy0, fixed xx1, fixed yy1, fixed xx2, fixed yy2)
{
    t1_hinter__adjust_matrix_precision(self, xx0, yy0);
    t1_hinter__adjust_matrix_precision(self, xx1, yy1);
    t1_hinter__adjust_matrix_precision(self, xx2, yy2);
    if (self->pass_through) {
        t1_glyph_space_coord gx0 = self->cx += xx0;
        t1_glyph_space_coord gy0 = self->cy += yy0;
        t1_glyph_space_coord gx1 = self->cx += xx1;
        t1_glyph_space_coord gy1 = self->cy += yy1;
        t1_glyph_space_coord gx2 = self->cx += xx2;
        t1_glyph_space_coord gy2 = self->cy += yy2;
        fixed fx0, fy0, fx1, fy1, fx2, fy2;

        do { } while (0);
        self->path_opened = ((bool)1);
        g2d(self, gx0, gy0, &fx0, &fy0);
        g2d(self, gx1, gy1, &fx1, &fy1);
        g2d(self, gx2, gy2, &fx2, &fy2);
        return gx_path_add_curve_notes(self->output_path, fx0, fy0, fx1, fy1, fx2, fy2, sn_none);
    } else {
        int code;

        code = t1_hinter__add_pole(self, xx0, yy0, offcurve);
        if (code < 0)
            return code;
        code = t1_hinter__add_pole(self, xx1, yy1, offcurve);
        if (code < 0)
            return code;
        code = t1_hinter__add_pole(self, xx2, yy2, oncurve);
        if (code < 0)
            return code;
        do { } while (0);


        t1_hinter__skip_degenerate_segnment(self, 3);
        return 0;
    }
}

void t1_hinter__setcurrentpoint(t1_hinter * self, fixed xx, fixed yy)
{
    t1_hinter__adjust_matrix_precision(self, xx, yy);
    if (self->FontType != 2) {



        self->cx = xx;
        self->cy = yy;
    } else if (self->cx != xx || self->cy != yy) {
# 1360 "./base/gxhintn.c"
        self->cx = xx;
        self->cy = yy;
    }
}

int t1_hinter__closepath(t1_hinter * self)
{ if (self->pass_through) {
        do { } while (0);
        self->path_opened = ((bool)0);
        return gx_path_close_subpath_notes(self->output_path, sn_none);
    } else {
        int contour_beg = self->contour[self->contour_count], code;

        if (contour_beg == self->pole_count)
            return 0;
        if (0 && (0 || self->pass_through)) {
            do { } while (0);
            do { } while (0);
            do { } while (0);
        }
        if (self->bx == self->cx && self->by == self->cy) {

            self->pole[self->pole_count - 1].type = closepath;
        } else {
            t1_glyph_space_coord cx = self->cx, cy = self->cy;

            self->cx = self->bx;
            self->cy = self->by;
            code = t1_hinter__add_pole(self, 0, 0, closepath);
            if (code < 0)
                return code;
            self->cx = cx;
            self->cy = cy;
        }
        self->contour_count++;
        if (self->contour_count >= self->max_contour_count)
            if(t1_hinter__realloc_array(self->memory, (void **)&self->contour, self->contour0, &self->max_contour_count,
                                        sizeof(self->contour0) / (((int)(sizeof(self->contour0))) / ((int)(sizeof((self->contour0)[0])))), 10, s_contour_array))
                return ((-25));
        self->contour[self->contour_count] = self->pole_count;
        return 0;
    }
}

int t1_hinter__end_subglyph(t1_hinter * self)
{
    if (self->pass_through)
        return 0;
    self->subglyph_count++;
    if (self->subglyph_count >= self->max_subglyph_count)
        if(t1_hinter__realloc_array(self->memory, (void **)&self->subglyph, self->subglyph0, &self->max_subglyph_count,
                                    sizeof(self->subglyph0) / (((int)(sizeof(self->subglyph0))) / ((int)(sizeof((self->subglyph0)[0])))), 3, s_subglyph_array))
            return ((-25));
    self->subglyph[self->subglyph_count] = self->contour_count;
    return 0;
}

static __inline__ int t1_hinter__can_add_hint(t1_hinter * self, t1_hint **hint)
{ if (self->hint_count >= self->max_hint_count)
        if(t1_hinter__realloc_array(self->memory, (void **)&self->hint, self->hint0, &self->max_hint_count,
                                    sizeof(self->hint0) / (((int)(sizeof(self->hint0))) / ((int)(sizeof((self->hint0)[0])))), 30, s_hint_array))
            return ((-25));
    *hint = &self->hint[self->hint_count];
    return 0;
}

int t1_hinter__flex_beg(t1_hinter * self)
{ if (self->flex_count != 0)
        return ((-10));
    self->flex_count++;
    self->have_flex = ((bool)1);
    if (self->pass_through)
        return t1_hinter__rmoveto(self, 0, 0);
    return 0;
}

int t1_hinter__flex_point(t1_hinter * self)
{ if (self->flex_count == 0)
        return ((-10));
    self->flex_count++;
    return 0;
}

int t1_hinter__flex_end(t1_hinter * self, fixed flex_height)
{ t1_pole *pole0, *pole1, *pole4;
    t1_hinter_space_coord ox, oy;
    const int32_t div_x = self->g2o_fraction << self->log2_pixels_x;
    const int32_t div_y = self->g2o_fraction << self->log2_pixels_y;

    if (self->flex_count != 8)
        return ((-10));

    pole0 = &self->pole[self->pole_count - 8];
    pole1 = &self->pole[self->pole_count - 7];
    pole4 = &self->pole[self->pole_count - 4];
    g2o(self, pole4->gx - pole1->gx, pole4->gy - pole1->gy, &ox, &oy);
    if (((ox) < 0 ? -(ox) : (ox)) > div_x * ((flex_height)*(1.0/(1<<8))) / 100 ||
        ((oy) < 0 ? -(oy) : (oy)) > div_y * ((flex_height)*(1.0/(1<<8))) / 100) {

        do { } while (0);
        do { } while (0);
        do { } while (0);
        if (self->pass_through) {
            fixed fx0, fy0, fx1, fy1, fx2, fy2;
            int code;

            g2d(self, pole0[2].gx, pole0[2].gy, &fx0, &fy0);
            g2d(self, pole0[3].gx, pole0[3].gy, &fx1, &fy1);
            g2d(self, pole0[4].gx, pole0[4].gy, &fx2, &fy2);
            code = gx_path_add_curve_notes(self->output_path, fx0, fy0, fx1, fy1, fx2, fy2, sn_none);
            if (code < 0)
                return code;
            g2d(self, pole0[5].gx, pole0[5].gy, &fx0, &fy0);
            g2d(self, pole0[6].gx, pole0[6].gy, &fx1, &fy1);
            g2d(self, pole0[7].gx, pole0[7].gy, &fx2, &fy2);
            self->flex_count = 0;
            self->pole_count = 0;
            return gx_path_add_curve_notes(self->output_path, fx0, fy0, fx1, fy1, fx2, fy2, sn_none);
        } else {
            memmove(pole1, pole1 + 1, (sizeof(self->pole0) / (((int)(sizeof(self->pole0))) / ((int)(sizeof((self->pole0)[0]))))) * 7);
            pole0[1].type = pole0[2].type = offcurve;
            pole0[3].type = oncurve;
            pole0[4].type = pole0[5].type = offcurve;
            pole0[6].type = oncurve;
            self->pole_count--;
        }
    } else {

        do { } while (0);
        do { } while (0);
        if (self->pass_through) {
            fixed fx, fy;

            g2d(self, pole0[7].gx, pole0[7].gy, &fx, &fy);
            self->flex_count = 0;
            self->pole_count = 0;
            return gx_path_add_line_notes(self->output_path, fx, fy, sn_none);
        } else {
            pole0[1] = pole0[7];
            pole0[1].type = oncurve;
            self->pole_count -= 6;
        }
    }
    self->flex_count = 0;
    return 0;
}

static __inline__ int t1_hinter__can_add_hint_range(t1_hinter * self, t1_hint_range **hint_range)
{ if (self->hint_range_count >= self->max_hint_range_count)
        if(t1_hinter__realloc_array(self->memory, (void **)&self->hint_range, self->hint_range0, &self->max_hint_range_count,
                                    sizeof(self->hint_range0) / (((int)(sizeof(self->hint_range0))) / ((int)(sizeof((self->hint_range0)[0])))), 30, s_hint_range_array))
            return ((-25));
    *hint_range = &self->hint_range[self->hint_range_count];
    return 0;
}

static __inline__ int t1_hinter__can_add_hint_applying(t1_hinter * self, t1_hint_applying **hint_applying)
{ if (self->hint_applying_count >= self->max_hint_applying_count)
        if(t1_hinter__realloc_array(self->memory, (void **)&self->hint_applying, self->hint_applying0, &self->max_hint_applying_count,
                                    sizeof(self->hint_applying0) / (((int)(sizeof(self->hint_applying0))) / ((int)(sizeof((self->hint_applying0)[0])))), 30, s_hint_applying_array))
            return ((-25));
    *hint_applying = &self->hint_applying[self->hint_applying_count];
    return 0;
}

int t1_hinter__hint_mask(t1_hinter * self, byte *mask)
{ int hint_count, i;

    if (self->disable_hinting)
        return 0;
    hint_count = self->hint_count;

    for(i = 0; i < hint_count; i++) {
        bool activate = (mask != ((void*)0) && (mask[i >> 3] & (0x80 >> (i & 7))) != 0);
        t1_hint *hint = &self->hint[i];

        if (activate) {
            if (hint->range_index != -1 &&
                (self->hint_range[hint->range_index].end_pole == -1 ||
                 self->hint_range[hint->range_index].end_pole == self->pole_count)) {

                self->hint_range[hint->range_index].end_pole = -1;
            } else {

                t1_hint_range *hint_range;
                int code = t1_hinter__can_add_hint_range(self, &hint_range);

                if (code < 0)
                   return code;
                hint_range->beg_pole = self->pole_count;
                hint_range->end_pole = -1;
                hint_range->next = hint->range_index;
                hint->range_index = self->hint_range_count;
                self->hint_range_count++;
            }
        } else {
            if (hint->range_index != -1 &&
                self->hint_range[hint->range_index].end_pole == -1) {

                self->hint_range[hint->range_index].end_pole = self->pole_count;
            } else
                do { } while (0);
        }
    }
    return 0;
}

int t1_hinter__drop_hints(t1_hinter * self)
{ if (self->disable_hinting)
        return 0;
    if (self->primary_hint_count == -1)
        self->primary_hint_count = self->hint_range_count;
    return t1_hinter__hint_mask(self, ((void*)0));
}

static __inline__ int t1_hinter__stem(t1_hinter * self, enum t1_hint_type type, unsigned short stem3_index
                                                  , fixed v0, fixed v1, int side_mask)
{ t1_hint *hint;
    t1_glyph_space_coord s = (type == hstem ? self->subglyph_orig_gy : self->subglyph_orig_gx);
    t1_glyph_space_coord g0 = s + v0;
    t1_glyph_space_coord g1 = s + v0 + v1;
    t1_hint_range *range;
int i, code;

    t1_hinter__adjust_matrix_precision(self, (side_mask & 1 ? g0 : g1), (side_mask & 2 ? g1 : g0));
    for (i = 0; i < self->hint_count; i++)
        if (self->hint[i].type == type &&
                self->hint[i].g0 == g0 && self->hint[i].g1 == g1 &&
                self->hint[i].side_mask == side_mask)
            break;
    if (i < self->hint_count)
        hint = &self->hint[i];
    else {
        code = t1_hinter__can_add_hint(self, &hint);
        if (code < 0)
            return code;
        hint->type = type;
        hint->g0 = hint->ag0 = g0;
        hint->g1 = hint->ag1 = g1;
        hint->aligned0 = hint->aligned1 = unaligned;
        hint->q0 = hint->q1 = (~(-1 << ((1 << 2) * 8 - 1)));
        hint->b0 = hint->b1 = ((bool)0);
        hint->stem3_index = stem3_index;
        hint->range_index = -1;
        hint->side_mask = side_mask;
        hint->stem_snap_index0 = hint->stem_snap_index1 = 0;
        hint->boundary_length0 = hint->boundary_length1 = 0;
    }
    code = t1_hinter__can_add_hint_range(self, &range);
    if (code < 0)
        return code;
    range->beg_pole = self->pole_count;
    range->end_pole = -1;
    range->next = hint->range_index;
    hint->range_index = range - self->hint_range;
    if (i >= self->hint_count)
        self->hint_count++;
    self->hint_range_count++;
    return 0;
}

int t1_hinter__dotsection(t1_hinter * self)
{ if (self->pole_count == 0 || self->pole[self->pole_count - 1].type != moveto)
        return 0;
    if (self->disable_hinting)
        return 0;
    return t1_hinter__stem(self, dot, 0, 0, 0, 0);
}

int t1_hinter__hstem(t1_hinter * self, fixed x0, fixed x1)
{ if (self->disable_hinting)
        return 0;
    return t1_hinter__stem(self, hstem, 0, x0, x1, 3);
}

int t1_hinter__overall_hstem(t1_hinter * self, fixed x0, fixed x1, int side_mask)
{
    if (self->disable_hinting)
        return 0;
    return t1_hinter__stem(self, hstem, 0, x0, x1, side_mask);
}

int t1_hinter__vstem(t1_hinter * self, fixed y0, fixed y1)
{ if (self->disable_hinting)
        return 0;
    return t1_hinter__stem(self, vstem, 0, y0, y1, 3);
}

int t1_hinter__hstem3(t1_hinter * self, fixed x0, fixed x1, fixed x2, fixed x3, fixed x4, fixed x5)
{ int code;

    if (self->disable_hinting)
        return 0;
    code = t1_hinter__stem(self, hstem, 1, x0, x1, 3);
    if (code < 0)
        return code;
    code = t1_hinter__stem(self, hstem, 2, x2, x3, 3);
    if (code < 0)
        return code;
    return t1_hinter__stem(self, hstem, 3, x4, x5, 3);
}

int t1_hinter__vstem3(t1_hinter * self, fixed y0, fixed y1, fixed y2, fixed y3, fixed y4, fixed y5)
{ int code;

    if (self->disable_hinting)
        return 0;
    code = t1_hinter__stem(self, vstem, 1, y0, y1, 3);
    if (code < 0)
        return code;
    code = t1_hinter__stem(self, vstem, 2, y2, y3, 3);
    if (code < 0)
        return code;
    return t1_hinter__stem(self, vstem, 3, y4, y5, 3);
}



int t1_hinter__is_x_fitting(t1_hinter * self)
{ return self->grid_fit_x;
}



static __inline__ int t1_hinter__segment_beg(t1_hinter * self, int pole_index)
{ int contour_index = self->pole[pole_index].contour_index;
    int beg_contour_pole = self->contour[contour_index];
    int end_contour_pole = self->contour[contour_index + 1] - 2;
    int prev = ranger_step_b(pole_index, beg_contour_pole, end_contour_pole);

    while (self->pole[prev].type == offcurve)
        prev = ranger_step_b(prev, beg_contour_pole, end_contour_pole);
    return prev;
}

static __inline__ int t1_hinter__segment_end(t1_hinter * self, int pole_index)
{ int contour_index = self->pole[pole_index].contour_index;
    int beg_contour_pole = self->contour[contour_index];
    int end_contour_pole = self->contour[contour_index + 1] - 2;
    int next = ranger_step_f(pole_index, beg_contour_pole, end_contour_pole);

    while (self->pole[next].type == offcurve)
        next = ranger_step_f(next, beg_contour_pole, end_contour_pole);
    return next;
}

static void t1_hinter__compute_y_span(t1_hinter * self)
{
    int n = self->pole_count - 1;
    int i;

    if (n > 1) {





        n--;
    } else if (n < 0) {
        return;
    }
    self->ymin = self->ymax = self->pole[0].gy;
    for (i = 1; i < n; i++) {
        if (self->ymin > self->pole[i].gy)
            self->ymin = self->pole[i].gy;
        if (self->ymax < self->pole[i].gy)
            self->ymax = self->pole[i].gy;
    }
    self->ymid = (self->ymax + self->ymin) / 2;
}

static void t1_hinter__simplify_representation(t1_hinter * self)
{ int i, j;
    int last_pole = self->pole_count - 1;
    int primary_hint_count = self->primary_hint_count;

    if (last_pole > 1 && self->pole[last_pole -1].type == closepath)
        last_pole -= 2;
    if (self->pole_count <= 1)
        return;



    if (!self->grid_fit_x || !self->grid_fit_y) {
        for (i = j = 0; i < self->hint_count; i++)
            if ((self->hint[i].type == vstem && !self->grid_fit_x) ||
                (self->hint[i].type == hstem && !self->grid_fit_y)) {
                if (i < primary_hint_count)
                    self->primary_hint_count--;
                continue;
            } else {
                if (i != j)
                    self->hint[j] = self->hint[i];
                j++;
            }
        self->hint_count = j;
    }
    for (i = 0; i < self->hint_range_count; i++) {
        t1_hint_range *hint_range = &self->hint_range[i];

        j = hint_range->beg_pole;
        if (self->pole[j].type == closepath)
            hint_range->beg_pole = ++j;
        else {
            if (self->pole[j].type == offcurve)
                hint_range->beg_pole = --j;
            if (self->pole[j].type == offcurve)
                hint_range->beg_pole = --j;
        }
        j = hint_range->end_pole;
        if (j == -1)
            hint_range->end_pole = j = last_pole;
        if (self->pole[j].type == offcurve)
            hint_range->end_pole = ++j;
        if (self->pole[j].type == offcurve)
            hint_range->end_pole = ++j;
    }




    for (i = 0; i <= self->contour_count; i++)
        if (self->pole[self->contour[i]].type == moveto)
            self->pole[self->contour[i]].type = oncurve;



    for (j = 0; j < self->hint_range_count; j++) {
        int beg_pole = self->hint_range[j].beg_pole;
        int contour_index = self->pole[beg_pole].contour_index;
        int contour_beg_pole = self->contour[contour_index];

        if (beg_pole > contour_beg_pole && beg_pole < last_pole)
            self->hint_range[j].beg_pole = t1_hinter__segment_beg(self, beg_pole);
    }
}

static __inline__ bool t1_hinter__is_small_angle(t1_hinter * self, int pole_index0, int pole_index1,
        long tan_x, long tan_y, int alpha, int alpha_div, int *quality)
{ long gx = self->pole[pole_index1].gx - self->pole[pole_index0].gx;
    long gy = self->pole[pole_index1].gy - self->pole[pole_index0].gy;
    long vp = mul_shift(gx, tan_y, 8) - mul_shift(gy, tan_x, 8);
    long sp = mul_shift(gx, tan_x, 8) + mul_shift(gy, tan_y, 8);
    long vp1 = ((vp) < 0 ? -(vp) : (vp)), sp1 = ((sp) < 0 ? -(sp) : (sp));

    if (gx == 0 && gy == 0) {
        *quality = (~(-1 << ((1 << 2) * 8 - 1)));
        return ((bool)0);
    }
    if (vp1 >= sp1) {
        *quality = (~(-1 << ((1 << 2) * 8 - 1)));
        return ((bool)0);
    }
    if (vp1 / alpha_div > sp1 / alpha) {
        *quality = (~(-1 << ((1 << 2) * 8 - 1)));
        return ((bool)0);
    }
    *quality = vp1 * 100 / sp1;
    return ((bool)1);
}

static __inline__ bool t1_hinter__is_conjugated(t1_hinter * self, int pole_index)
{ int prev = t1_hinter__segment_beg(self, pole_index);
    int next = t1_hinter__segment_end(self, pole_index);
    long gx0 = self->pole[prev].gx - self->pole[pole_index].gx;
    long gy0 = self->pole[prev].gy - self->pole[pole_index].gy;
    long gx1 = self->pole[next].gx - self->pole[pole_index].gx;
    long gy1 = self->pole[next].gy - self->pole[pole_index].gy;
    long vp = gx0 * gy1 - gy0 * gx1;
    long sp = gx0 * gy1 - gy0 * gx1;

    if (sp > 0)
        return ((bool)0);
    if (vp == 0)
        return ((bool)1);
    return ((vp) < 0 ? -(vp) : (vp)) < -sp / 1000;
}

static __inline__ bool t1_hinter__next_contour_pole(t1_hinter * self, int pole_index)
{ int contour_index = self->pole[pole_index].contour_index;
    int beg_contour_pole = self->contour[contour_index];
    int end_contour_pole = self->contour[contour_index + 1] - 2;

    return ranger_step_f(pole_index, beg_contour_pole, end_contour_pole);
}

static __inline__ bool t1_hinter__is_good_tangent(t1_hinter * self, int pole_index, long tan_x, long tan_y, int *quality)
{ int contour_index = self->pole[pole_index].contour_index;
    int beg_contour_pole = self->contour[contour_index];
    int end_contour_pole = self->contour[contour_index + 1] - 2, prev, next;
    int const alpha = 9, alpha_div = 10;
    int quality0, quality1;
    bool good0, good1;

    prev = ranger_step_b(pole_index, beg_contour_pole, end_contour_pole);
    good0 = t1_hinter__is_small_angle(self, prev, pole_index, tan_x, tan_y, alpha, alpha_div, &quality0);
    if (quality0 == 0) {
        *quality = 0;
        return ((bool)1);
    }
    next = ranger_step_f(pole_index, beg_contour_pole, end_contour_pole);
    good1 = t1_hinter__is_small_angle(self, next, pole_index, tan_x, tan_y, alpha, alpha_div, &quality1);
    *quality = (((quality0) < (quality1)) ? (quality0) : (quality1));
    return good0 || good1;
}

static void t1_hinter__compute_type1_stem_ranges(t1_hinter * self)
{ int j;
    int end_range_pole = self->pole_count - 3;
    int primary_hint_count = self->primary_hint_count;

    if (self->hint_count == 0)
        return;
    if (primary_hint_count == -1)
        primary_hint_count = self->hint_range_count;

    for(j = 0; j < primary_hint_count; j++) {
        self->hint_range[j].beg_pole = 0;
        self->hint_range[j].end_pole = end_range_pole;
    }




}

static void t1_hinter__compute_type2_stem_ranges(t1_hinter * self)
{ int i;

    for (i = 0; i < self->hint_range_count; i++)
        if (self->hint_range[i].end_pole == -1)
            self->hint_range[i].end_pole = self->pole_count - 2;
}

static bool t1_hinter__is_stem_boundary_near(t1_hinter * self, const t1_hint *hint,
                t1_glyph_space_coord g, int boundary)
{
    t1_glyph_space_coord const fuzz = self->blue_fuzz;

    return ((g - (boundary ? hint->g1 : hint->g0)) < 0 ? -(g - (boundary ? hint->g1 : hint->g0)) : (g - (boundary ? hint->g1 : hint->g0))) <= fuzz;
}

static int t1_hinter__is_stem_hint_applicable(t1_hinter * self, t1_hint *hint, int pole_index, int *quality)
{
    int k;

    if (hint->type == hstem
            && ((k = 1, t1_hinter__is_stem_boundary_near(self, hint, self->pole[pole_index].gy, 0)) ||
                (k = 2, t1_hinter__is_stem_boundary_near(self, hint, self->pole[pole_index].gy, 1)))
            && t1_hinter__is_good_tangent(self, pole_index, 1, 0, quality))
        return k;
    if (hint->type == vstem
            && ((k = 1, t1_hinter__is_stem_boundary_near(self, hint, self->pole[pole_index].gx, 0)) ||
                (k = 2, t1_hinter__is_stem_boundary_near(self, hint, self->pole[pole_index].gx, 1)))
            && t1_hinter__is_good_tangent(self, pole_index, 0, 1, quality))
        return k;
    return 0;
}

static t1_zone * t1_hinter__find_zone(t1_hinter * self, t1_glyph_space_coord pole_y, bool curve, bool convex, bool concave)
{ bool maybe_top = !curve || convex;
    bool maybe_bot = !curve || concave;
    int i;

    for (i = 0; i < self->zone_count; i++) {
        t1_zone *zone = &self->zone[i];
        if ((maybe_top && zone->type == topzone) || (maybe_bot && zone->type == botzone))
            if (zone->y_min <= pole_y && pole_y <= zone->y_max)
                return zone;
    }
    return ((void*)0);

}

static void t1_hinter__align_to_grid__general(t1_hinter * self, int32_t unit,
            t1_glyph_space_coord gx, t1_glyph_space_coord gy,
            t1_hinter_space_coord *pdx, t1_hinter_space_coord *pdy,
            bool align_to_pixels, bool absolute)
{
    long div_x = rshift(unit, (align_to_pixels ? (int)self->log2_pixels_x : self->log2_subpixels_x));
    long div_y = rshift(unit, (align_to_pixels ? (int)self->log2_pixels_y : self->log2_subpixels_y));
    t1_hinter_space_coord ox, oy, dx, dy;

    g2o(self, gx, gy, &ox, &oy);
    if (absolute) {
        ox += self->orig_ox;
        oy += self->orig_oy;
    }
    dx = ox % div_x;
    dy = oy % div_y;
    if (dx > div_x / 2 )
        dx = - div_x + dx;
    else if (dx < - div_x / 2)
        dx = div_x + dx;
    if (dy > div_y / 2)
        dy = - div_y + dy;
    else if (dy < - div_y / 2)
        dy = div_y + dy;
    *pdx = dx;
    *pdy = dy;
}

static void t1_hinter__align_to_grid__final(t1_hinter * self,
            t1_glyph_space_coord *x, t1_glyph_space_coord *y,
            t1_hinter_space_coord dx, t1_hinter_space_coord dy)
{
    t1_glyph_space_coord gxd, gyd;

    o2g(self, dx, dy, &gxd, &gyd);
    if (self->grid_fit_x) {
        *x -= gxd;
        *x = (*x + 7) & ~15;
    }
    if (self->grid_fit_y) {
        *y -= gyd;
        *y = (*y + 7) & ~15;
    }
}

static void t1_hinter__hint_stem_snap_range(t1_hinter * self,
                                        t1_glyph_space_coord w0, t1_glyph_space_coord w1, bool horiz,
                                        short *index0, short *index1)
{ int k = (horiz ? 0 : 1), i;
    bool index0_set = ((bool)0);

    *index0 = 0;
    *index1 = -1;
    for (i = 0; i < self->stem_snap_count[k]; i++) {
        if (w0 > self->stem_snap[k][i])
            continue;
        if (!index0_set) {
            index0_set = ((bool)1);
            *index0 = i;
        }
        if (w1 < self->stem_snap[k][i])
            break;
        *index1 = i;
    }
}

static void t1_hinter__align_to_grid(t1_hinter * self, int32_t unit,
            t1_glyph_space_coord *x, t1_glyph_space_coord *y, bool align_to_pixels)
{ if (unit > 0) {
        t1_hinter_space_coord dx, dy;

        t1_hinter__align_to_grid__general(self, unit, *x, *y, &dx, &dy, align_to_pixels, align_to_pixels);
        t1_hinter__align_to_grid__final(self, x, y, dx, dy);
    }
}

static void t1_hinter_compute_stem_snap_range_hv(t1_hinter * self, int hv)
{
    const enum t1_hint_type T[] = {hstem, vstem};
    int i, j;
    enum t1_hint_type t = T[hv];
    bool horiz = (t == hstem);
    t1_glyph_space_coord pixel_g = (horiz ? self->pixel_gh : self->pixel_gw);
    int stem_snap_count = self->stem_snap_count[hv];

    memset(self->stem_snap_vote, 0, stem_snap_count * sizeof(self->stem_snap_vote[0]));
    for (i = 0; i < self->hint_count; i++) {
        if (self->hint[i].type == t) {
            t1_glyph_space_coord gw = ((self->hint[i].g1 - self->hint[i].g0) < 0 ? -(self->hint[i].g1 - self->hint[i].g0) : (self->hint[i].g1 - self->hint[i].g0));

            t1_hinter__hint_stem_snap_range(self, gw - pixel_g + 1, gw + pixel_g - 1, horiz,
                &self->hint[i].stem_snap_index0, &self->hint[i].stem_snap_index1);
            for (j = self->hint[i].stem_snap_index0; j <= self->hint[i].stem_snap_index1; j++)
                self->stem_snap_vote[j]++;
        }
    }
    for (i = 0; i < self->hint_count; i++) {
        if (self->hint[i].type == t) {
            int m = 0, mj = -1, d, md = pixel_g * 2;
            t1_glyph_space_coord gw = ((self->hint[i].g1 - self->hint[i].g0) < 0 ? -(self->hint[i].g1 - self->hint[i].g0) : (self->hint[i].g1 - self->hint[i].g0));

            for (j = self->hint[i].stem_snap_index0; j <= self->hint[i].stem_snap_index1; j++) {
                if (m < self->stem_snap_vote[j]) {
                    m = self->stem_snap_vote[j];
                    mj = j;
                    md = ((gw - pixel_g / 5 - self->stem_snap[hv][mj]) < 0 ? -(gw - pixel_g / 5 - self->stem_snap[hv][mj]) : (gw - pixel_g / 5 - self->stem_snap[hv][mj]));
                } else {
                    d = ((gw - pixel_g / 5 - self->stem_snap[hv][j]) < 0 ? -(gw - pixel_g / 5 - self->stem_snap[hv][j]) : (gw - pixel_g / 5 - self->stem_snap[hv][j]));
                    if (md > d) {
                        md = d;
                        mj = j;
                    }
                }
            }
            self->hint[i].stem_snap_index0 = mj;
        }
    }
}

static void t1_hinter_compute_stem_snap_range(t1_hinter * self)
{
    if (self->stem_snap_count[0] > 1)
        t1_hinter_compute_stem_snap_range_hv(self, 0);
    if (self->stem_snap_count[1] > 1)
        t1_hinter_compute_stem_snap_range_hv(self, 1);
}

static void t1_hinter__align_stem_width(t1_hinter * self, t1_glyph_space_coord *pgw, const t1_hint *hint)
{
    bool horiz = (hint->type == hstem);
    t1_glyph_space_coord gw = *pgw;
    t1_glyph_space_coord pixel_g = (horiz ? self->pixel_gh : self->pixel_gw);
    t1_glyph_space_coord gwe;

    if (!self->keep_stem_width || pixel_g == 0)
        return;
    if (hint->stem_snap_index0 >= 0 && self->stem_snap_count[horiz ? 0 : 1] > 0) {
        t1_glyph_space_coord w0 = self->stem_snap[horiz ? 0 : 1][hint->stem_snap_index0];
        t1_glyph_space_coord thr0 = pixel_g * 70 / 100, thr1 = pixel_g * 35 / 100;

        if (gw - thr0 <= w0 && w0 <= gw + thr1)
            gw = w0;
    }
    gwe = gw % pixel_g;
    if (gw >= pixel_g && gwe < pixel_g / 2)
        gw -= gwe;
    else
        gw += pixel_g - gwe;
    *pgw = gw;
}

static void t1_hinter__align_stem_to_grid(t1_hinter * self, int32_t unit,
            t1_glyph_space_coord *x0, t1_glyph_space_coord *y0,
            t1_glyph_space_coord x1, t1_glyph_space_coord y1,
            bool align_to_pixels, const t1_hint *hint)
{

    if (unit > 0) {
        bool horiz = (hint->type == hstem);
        t1_glyph_space_coord gw = (horiz ? y1 - *y0 : x1 - *x0);
        t1_glyph_space_coord GW = ((gw) < 0 ? -(gw) : (gw)), GW0 = GW;
        bool positive = (gw >= 0);
        int19 cf = (horiz ? self->heigt_transform_coef_rat : self->width_transform_coef_rat);
        t1_hinter_space_coord dx0, dy0, dx1, dy1, dgw;

        t1_hinter__align_to_grid__general(self, unit, *x0, *y0, &dx0, &dy0, align_to_pixels, align_to_pixels);
        t1_hinter__align_to_grid__general(self, unit, x1, y1, &dx1, &dy1, align_to_pixels, align_to_pixels);
        t1_hinter__align_stem_width(self, &GW, hint);
        dgw = g2o_dist(GW - GW0, cf);
        if ((horiz ? (!self->transposed ? self->ctmf.yy : self->ctmf.xy)
                   : (!self->transposed ? self->ctmf.xx : self->ctmf.yx)) < 0)
            dgw = - dgw;
        if (horiz) {
            t1_hinter_space_coord ddy1 = (positive ? dy0 - dgw : dy0 + dgw);
            t1_hinter_space_coord ddy0 = (positive ? dy1 + dgw : dy1 - dgw);

            if (((dy0 + ddy1) < 0 ? -(dy0 + ddy1) : (dy0 + ddy1)) > ((dy1 + ddy0) < 0 ? -(dy1 + ddy0) : (dy1 + ddy0)))
                dy0 = ddy0;
        } else {
            t1_hinter_space_coord ddx1 = (positive ? dx0 - dgw : dx0 + dgw);
            t1_hinter_space_coord ddx0 = (positive ? dx1 + dgw : dx1 - dgw);

            if (((dx0 + ddx1) < 0 ? -(dx0 + ddx1) : (dx0 + ddx1)) > ((dx1 + ddx0) < 0 ? -(dx1 + ddx0) : (dx1 + ddx0)))
                dx0 = ddx0;
        }
        t1_hinter__align_to_grid__final(self, x0, y0, dx0, dy0);
    }
}
# 2144 "./base/gxhintn.c"
static enum t1_align_type t1_hinter__compute_aligned_coord(t1_hinter * self,
            t1_glyph_space_coord * gc, int segment_index, fixed t, const t1_hint *hint,
            enum t1_align_type align0)
{

    bool horiz = (hint->type == hstem);
    enum t1_align_type align = align0;
    t1_glyph_space_coord gx = self->pole[segment_index].gx, gx0;
    t1_glyph_space_coord gy = self->pole[segment_index].gy, gy0;
    t1_glyph_space_coord gc0 = (horiz ? gy : gx);
    bool align_by_stem =
                align0 == unaligned

                && hint->b0 && hint->b1;






    if (t) {
        int next = t1_hinter__segment_end(self, segment_index);
        t1_glyph_space_coord gx1 = self->pole[next].gx;
        t1_glyph_space_coord gy1 = self->pole[next].gy;

        gx = (gx + gx1) / 2;
        gy = (gy + gy1) / 2;
    }
    gx0 = gx;
    gy0 = gy;
    do { } while (0);
    if (horiz) {
        t1_pole * pole = &self->pole[segment_index];
        int contour_index = pole->contour_index;
        int beg_contour_pole = self->contour[contour_index];
        int end_contour_pole = self->contour[contour_index + 1] - 2;
        int prev1 = ranger_step_b(segment_index, beg_contour_pole, end_contour_pole);
        int prev2 = ranger_step_b(prev1 , beg_contour_pole, end_contour_pole);
        int next1 = ranger_step_f(segment_index, beg_contour_pole, end_contour_pole);
        int next2 = ranger_step_f(next1 , beg_contour_pole, end_contour_pole);
        bool forwd_horiz = (((self->pole[next1].gy - pole->gy) < 0 ? -(self->pole[next1].gy - pole->gy) : (self->pole[next1].gy - pole->gy)) <=
                (((self->blue_fuzz) > (((self->pole[next1].gx - pole->gx) < 0 ? -(self->pole[next1].gx - pole->gx) : (self->pole[next1].gx - pole->gx)) / 10)) ? (self->blue_fuzz) : (((self->pole[next1].gx - pole->gx) < 0 ? -(self->pole[next1].gx - pole->gx) : (self->pole[next1].gx - pole->gx)) / 10)));
        bool bckwd_horiz = (((self->pole[prev1].gy - pole->gy) < 0 ? -(self->pole[prev1].gy - pole->gy) : (self->pole[prev1].gy - pole->gy)) <=
                (((self->blue_fuzz) > (((self->pole[prev1].gx - pole->gx) < 0 ? -(self->pole[prev1].gx - pole->gx) : (self->pole[prev1].gx - pole->gx)) / 10)) ? (self->blue_fuzz) : (((self->pole[prev1].gx - pole->gx) < 0 ? -(self->pole[prev1].gx - pole->gx) : (self->pole[prev1].gx - pole->gx)) / 10)));
        bool maximum = (self->pole[next1].gy - pole->gy < 0 &&
                        self->pole[prev1].gy - pole->gy < 0);
        bool minimum = (self->pole[next1].gy - pole->gy > 0 &&
                        self->pole[prev1].gy - pole->gy > 0);

        if (forwd_horiz || bckwd_horiz || maximum || minimum) {
            bool forwd_curve = (self->pole[next1].type == offcurve);
            bool bckwd_curve = (self->pole[prev1].type == offcurve);
            bool curve = (bckwd_curve && forwd_curve);
            bool convex = (curve && self->pole[prev2].gy <= pole->gy &&
                                     self->pole[next2].gy <= pole->gy);
            bool concave = (curve && self->pole[prev2].gy >= pole->gy &&
                                     self->pole[next2].gy >= pole->gy);
            t1_zone *zone = t1_hinter__find_zone(self, pole->gy, curve || maximum || minimum,
                                                convex || maximum, concave || minimum);

            if (zone != ((void*)0) &&
                   (forwd_horiz || bckwd_horiz ||
                    (maximum && zone->type == topzone) ||
                    (minimum && zone->type == botzone))) {
                if (self->suppress_overshoots)



                        gy = zone->y;

                else {
                    t1_glyph_space_coord s = zone->y - pole->gy;
                    if (zone->type == topzone)
                        s = -s;
                    if (!curve && s < self->overshoot_threshold)
                        gy = zone->y;
                    else if (s > self->overshoot_threshold) {
                        t1_glyph_space_coord ss = self->overshoot_threshold * 2;

                        if (s < ss)
                            gy = (zone->type == topzone ? zone->y + ss : zone->y - ss);
                        else {



                        }
                    }
                }
                align = (zone->type == topzone ? topzn : botzn);
                align_by_stem = ((bool)0);
            }
        }
    }
    do { } while (0);
    if (align_by_stem) {
        t1_glyph_space_coord gx1, gy1;

        if (horiz) {
            bool b0 = t1_hinter__is_stem_boundary_near(self, hint, gy, 0);
            bool b1 = t1_hinter__is_stem_boundary_near(self, hint, gy, 1);

            gx1 = gx;
            if (b0 && !b1)
                gy1 = hint->g1, align_by_stem = ((bool)1);
            else if (!b0 && b1)
                gy1 = hint->g0, align_by_stem = ((bool)1);
            else
                gy1 = 0;
        } else {
            bool b0 = t1_hinter__is_stem_boundary_near(self, hint, gx, 0);
            bool b1 = t1_hinter__is_stem_boundary_near(self, hint, gx, 1);

            gy1 = gy;
            if (b0 && !b1)
                gx1 = hint->g1, align_by_stem = ((bool)1);
            else if (!b0 && b1)
                gx1 = hint->g0, align_by_stem = ((bool)1);
            else
                gx1 = 0;
        }
        if (align_by_stem)
            t1_hinter__align_stem_to_grid(self, self->g2o_fraction, &gx, &gy, gx1, gy1,
                    1 || self->align_to_pixels, hint);
    }
    if (!align_by_stem)
        t1_hinter__align_to_grid(self, self->g2o_fraction, &gx, &gy,
                            1 || self->align_to_pixels);
    do { } while (0);
    *gc = gc0 + (horiz ? gy - gy0 : gx - gx0);
    return (align == unaligned ? aligned : align);
}





static int t1_hinter__find_stem_middle(t1_hinter * self, fixed *t, int pole_index, bool horiz)
{

    if (1 == 2) {
        *t = 0;
        return pole_index;
    } else {







        int next = t1_hinter__next_contour_pole(self, pole_index);
        const int alpha = 10;
        int design_slant;
        bool curve = self->pole[next].type == offcurve;
        bool continuing = (horiz ? t1_hinter__is_small_angle(self, next, pole_index, 1, 0, alpha, 1, &design_slant)
                                 : t1_hinter__is_small_angle(self, next, pole_index, 0, 1, alpha, 1, &design_slant));

        if (!1 || design_slant == 0)
            *t = (!curve && continuing ? ((1L << 8) >> 1) : 0);
        else
            *t = 0;
        return pole_index;
    }
}

static int t1_hinter__skip_stem(t1_hinter * self, int pole_index, bool horiz)
{
    int i = pole_index;
    int next_pole = t1_hinter__next_contour_pole(self, i);
    int next_segm = t1_hinter__segment_end(self, i);
    long tan_x = (horiz ? 1 : 0);
    long tan_y = (horiz ? 0 : 1);
    int quality;

    while (t1_hinter__is_small_angle(self, i, next_pole, tan_x, tan_y, 1000, 1, &quality) &&
           t1_hinter__is_small_angle(self, i, next_segm, tan_x, tan_y, 1000, 1, &quality)) {
        i = t1_hinter__segment_end(self, i);
        if (i == pole_index) {

            break;
        }
        next_pole = t1_hinter__next_contour_pole(self, i);
        next_segm = t1_hinter__segment_end(self, i);
    }
    return i;
}

static void t1_hinter__mark_existing_stems(t1_hinter * self)
{
    int i, j, jj, k;

    for(i = 0; i < self->hint_count; i++)
        if (self->hint[i].type == vstem || self->hint[i].type == hstem)
            for (k = self->hint[i].range_index; k != -1; k = self->hint_range[k].next) {
                int beg_range_pole = self->hint_range[k].beg_pole;
                int end_range_pole = self->hint_range[k].end_pole;
                int quality;

                if (self->pole[beg_range_pole].type == closepath) {


                    beg_range_pole++;
                    if (beg_range_pole > end_range_pole)
                        continue;
                }
                for (j = beg_range_pole; j <= end_range_pole;) {
                    int k = t1_hinter__is_stem_hint_applicable(self, &self->hint[i], j, &quality);
                    if (k == 1)
                        self->hint[i].b0 = ((bool)1);
                    else if (k == 2)
                        self->hint[i].b1 = ((bool)1);
                    {
                        jj = j;
                        j = t1_hinter__segment_end(self, j);
                        if (j <= jj)
                            j = self->contour[self->pole[j].contour_index + 1];
                    }
                }
            }
}

static void t1_hinter__add_boundary_length(t1_hinter * self, t1_hint *hint,
                                            int pole_index0, int pole_index1)
{ const t1_pole *pole = &self->pole[pole_index0];
    int contour_index = pole->contour_index;
    int beg_contour_pole = self->contour[contour_index];
    int end_contour_pole = self->contour[contour_index + 1] - 2;
    int i0 = ranger_step_b(pole_index0, beg_contour_pole, end_contour_pole);
    int i1 = ranger_step_f(pole_index1, beg_contour_pole, end_contour_pole);
    t1_glyph_space_coord g = (hint->type == hstem ? pole->gy : pole->gx);

    if (self->pole[i0].type == oncurve)
        i0 = pole_index0;
    if (self->pole[i1].type == oncurve)
        i1 = pole_index1;
    *(((hint->g0 - g) < 0 ? -(hint->g0 - g) : (hint->g0 - g)) < ((hint->g1 - g) < 0 ? -(hint->g1 - g) : (hint->g1 - g)) ? &hint->boundary_length0 : &hint->boundary_length1)
        += (hint->type == hstem ? ((self->pole[i0].gx - self->pole[i1].gx) < 0 ? -(self->pole[i0].gx - self->pole[i1].gx) : (self->pole[i0].gx - self->pole[i1].gx))
                                : ((self->pole[i0].gy - self->pole[i1].gy) < 0 ? -(self->pole[i0].gy - self->pole[i1].gy) : (self->pole[i0].gy - self->pole[i1].gy)));
}

static void t1_hinter__align_stem_commands(t1_hinter * self)
{ int i, j, jj, k;

    for(i = 0; i < self->hint_count; i++) {
        self->hint[i].boundary_length0 = self->hint[i].boundary_length1 = 0;
        if (self->hint[i].type == vstem || self->hint[i].type == hstem)
            for (k = self->hint[i].range_index; k != -1; k = self->hint_range[k].next) {
                int beg_range_pole = self->hint_range[k].beg_pole;
                int end_range_pole = self->hint_range[k].end_pole;
                bool horiz = (self->hint[i].type == hstem);
                int quality = (~(-1 << ((1 << 2) * 8 - 1)));

                if (self->pole[beg_range_pole].type == closepath) {


                    beg_range_pole++;
                    if (beg_range_pole > end_range_pole)
                        continue;
                }
                for (j = beg_range_pole; j <= end_range_pole;) {
                    if (self->pole[j].type == closepath) {
                        j++;
                        continue;
                    }
                    if (t1_hinter__is_stem_hint_applicable(self, &self->hint[i], j, &quality)) {
                        fixed t;
                        int segment_index = t1_hinter__find_stem_middle(self, &t, j, horiz);
                        t1_glyph_space_coord gc;
                        enum t1_align_type align = unaligned;

                        if (self->hint[i].side_mask != 3) {

                            align = (self->hint[i].side_mask & 2 ? topzn : botzn);
                        } else if (self->autohinting && horiz) {
                            if (self->pole[segment_index].gy == self->hint[i].g0)
                                align = (self->hint[i].g0 > self->hint[i].g1 ? topzn : botzn);
                        }
                        align = t1_hinter__compute_aligned_coord(self, &gc,
                                    segment_index, t, &self->hint[i], align);
                        do { } while (0);


                        t1_hint__set_aligned_coord(&self->hint[i], gc, &self->pole[j], align, quality);
                        jj = j;
                        j = t1_hinter__skip_stem(self, j, horiz);
                        t1_hinter__add_boundary_length(self, &self->hint[i], jj, j);
                        if (j < jj) {
                            j = self->contour[self->pole[j].contour_index + 1];
                            continue;
                        }
                    }
                    {
                        jj = j;
                        j = t1_hinter__segment_end(self, j);
                        if (j <= jj)
                            j = self->contour[self->pole[j].contour_index + 1];
                    }
                }
            }
    }
}

static void t1_hinter__unfix_opposite_to_common(t1_hinter * self)
{
    int i, j, k, m, n;
    t1_glyph_space_coord d, md;
    t1_glyph_space_coord *p_ci, *p_cj, *p_agj, agm;
    enum t1_align_type *p_aj, *p_ai, *p_oi, *p_oj, am;

    for (k = 0; k < 2; k++) {


        for(i = 0; i < self->hint_count; i++) {
            if (self->hint[i].type == vstem || self->hint[i].type == hstem) {
                p_ai = (!k ? &self->hint[i].aligned0 : &self->hint[i].aligned1);
                p_oi = (!k ? &self->hint[i].aligned1 : &self->hint[i].aligned0);
                if (*p_ai > weak && *p_ai == *p_oi) {
                    p_ci = (!k ? &self->hint[i].g0 : &self->hint[i].g1);
                    md = ((self->hint[i].g1 - self->hint[i].g0) < 0 ? -(self->hint[i].g1 - self->hint[i].g0) : (self->hint[i].g1 - self->hint[i].g0));
                    m = i;
                    am = *p_ai;
                    agm = (!k ? self->hint[m].ag0 : self->hint[m].ag1);
                    n = 0;
                    for(j = 0; j < self->hint_count; j++) {
                        if (j != i && self->hint[i].type == self->hint[j].type) {
                            p_cj = (!k ? &self->hint[j].g0 : &self->hint[j].g1);
                            if (*p_ci == *p_cj) {
                                n++;
                                p_aj = (!k ? &self->hint[j].aligned0 : &self->hint[j].aligned1);
                                d = ((self->hint[j].g1 - self->hint[j].g0) < 0 ? -(self->hint[j].g1 - self->hint[j].g0) : (self->hint[j].g1 - self->hint[j].g0));
                                if (am < *p_aj) {
                                    md = d;
                                    m = j;
                                    am = *p_aj;
                                    agm = (!k ? self->hint[m].ag0 : self->hint[m].ag1);
                                } if (md < d) {
                                    md = d;
                                    m = j;
                                }
                            }
                        }
                    }
                    if (n) {
                        for(j = 0; j < self->hint_count; j++) {
                            p_cj = (!k ? &self->hint[j].g0 : &self->hint[j].g1);
                            if (*p_ci == *p_cj) {
                                p_aj = (!k ? &self->hint[j].aligned0 : &self->hint[j].aligned1);
                                p_oj = (!k ? &self->hint[j].aligned1 : &self->hint[j].aligned0);
                                p_agj = (!k ? &self->hint[j].ag0 : &self->hint[j].ag1);
                                *p_aj = am;
                                if (*p_oj == aligned)
                                    *p_oj = weak;
                                *p_agj = agm;
                            }
                        }
                    }
                }
            }
        }
    }
}

static void t1_hinter__compute_opposite_stem_coords(t1_hinter * self)
{ int i;

    for (i = 0; i < self->hint_count; i++)
        if ((self->hint[i].type == vstem || self->hint[i].type == hstem)) {
            t1_glyph_space_coord ag0 = self->hint[i].ag0;
            t1_glyph_space_coord ag1 = self->hint[i].ag1;
            enum t1_align_type aligned0 = self->hint[i].aligned0;
            enum t1_align_type aligned1 = self->hint[i].aligned1;
            t1_glyph_space_coord gw;

            gw = ((self->hint[i].g1 - self->hint[i].g0) < 0 ? -(self->hint[i].g1 - self->hint[i].g0) : (self->hint[i].g1 - self->hint[i].g0));
            t1_hinter__align_stem_width(self, &gw, &self->hint[i]);
            if (self->hint[i].g1 - self->hint[i].g0 < 0)
                gw = -gw;
            if (aligned0 > aligned1)
                ag1 = ag0 + gw;
            else if (aligned0 < aligned1)
                ag0 = ag1 - gw;
            else {
                t1_glyph_space_coord d0 = ((ag0 - self->hint[i].g0) < 0 ? -(ag0 - self->hint[i].g0) : (ag0 - self->hint[i].g0));
                t1_glyph_space_coord d1 = ((ag1 - self->hint[i].g1) < 0 ? -(ag1 - self->hint[i].g1) : (ag1 - self->hint[i].g1));

                if (aligned0 == topzn || aligned1 == topzn)
                    if (gw > 0)
                        ag0 = ag1 - gw;
                    else
                        ag1 = ag0 + gw;
                else if (aligned0 == botzn || aligned1 == botzn)
                    if (gw < 0)
                        ag0 = ag1 - gw;
                    else
                        ag1 = ag0 + gw;
                else if (self->hint[i].type == hstem &&
                        (((((self->hint[i].g0 - self->ymid) < 0 ? -(self->hint[i].g0 - self->ymid) : (self->hint[i].g0 - self->ymid))) < (((self->hint[i].g1 - self->ymid) < 0 ? -(self->hint[i].g1 - self->ymid) : (self->hint[i].g1 - self->ymid)))) ? (((self->hint[i].g0 - self->ymid) < 0 ? -(self->hint[i].g0 - self->ymid) : (self->hint[i].g0 - self->ymid))) : (((self->hint[i].g1 - self->ymid) < 0 ? -(self->hint[i].g1 - self->ymid) : (self->hint[i].g1 - self->ymid)))) >
                        (self->ymax - self->ymin) / 5) {
                    if ((self->hint[i].g1 + self->hint[i].g0) / 2 > self->ymid)
                        ag0 = ag1 - gw;
                    else
                        ag1 = ag0 + gw;
                } else {
                    if (d0 < d1)
                        ag1 = ag0 + gw;
                    else
                        ag0 = ag1 - gw;
                }
            }
            self->hint[i].ag0 = ag0;
            self->hint[i].ag1 = ag1;
        }
}

static int t1_hinter__store_hint_applying(t1_hinter * self, t1_hint *hint, int pole_index)
{
    t1_hint_applying *ha;
    int code = t1_hinter__can_add_hint_applying(self, &ha);

    if (code < 0)
        return code;
    ha->pole = pole_index;
    ha->opposite = -1;
    self->hint_applying_count++;
    return 0;
}

static int t1_hinter__align_stem_poles(t1_hinter * self)
{ int i, j, k;
    t1_glyph_space_coord const fuzz = self->blue_fuzz;
    int code = 0;

    for (i = 0; i < self->hint_count; i++)
        if (self->hint[i].type == vstem || self->hint[i].type == hstem) {
            t1_hint * hint = &self->hint[i];
            t1_glyph_space_coord ag0 = hint->ag0, ag1 = hint->ag1;
            bool horiz = (hint->type == hstem);


            self->hint_applying_count = 0;
            for (k = self->hint[i].range_index; k != -1; k = self->hint_range[k].next) {
                int beg_range_pole = self->hint_range[k].beg_pole;
                int end_range_pole = self->hint_range[k].end_pole;

                for (j = beg_range_pole; j <= end_range_pole; j++) {
                    t1_pole * pole = &self->pole[j];

                    if (pole->type != oncurve)
                        continue;
                    if (!horiz && ((pole->gx - hint->g0) < 0 ? -(pole->gx - hint->g0) : (pole->gx - hint->g0)) <= fuzz)
                        code = t1_hinter__store_hint_applying(self, hint, j);
                    else if (!horiz && ((pole->gx - hint->g1) < 0 ? -(pole->gx - hint->g1) : (pole->gx - hint->g1)) <= fuzz)
                        code = t1_hinter__store_hint_applying(self, hint, j);
                    else if ( horiz && ((pole->gy - hint->g0) < 0 ? -(pole->gy - hint->g0) : (pole->gy - hint->g0)) <= fuzz)
                        code = t1_hinter__store_hint_applying(self, hint, j);
                    else if ( horiz && ((pole->gy - hint->g1) < 0 ? -(pole->gy - hint->g1) : (pole->gy - hint->g1)) <= fuzz)
                        code = t1_hinter__store_hint_applying(self, hint, j);
                    if (code < 0)
                        return code;
                }
            }
            for (k = 0; k < self->hint_applying_count; k++) {
                t1_hint_applying *ha0 = &self->hint_applying[k];
                int pole_index0 = ha0->pole;
                t1_pole *pole0 = &self->pole[pole_index0];
                t1_glyph_space_coord g0 = (horiz ? pole0->gy : pole0->gx);
                t1_glyph_space_coord t0 = (horiz ? pole0->gx : pole0->gy);
                bool gt0 = ((hint->g0 - g0) < 0 ? -(hint->g0 - g0) : (hint->g0 - g0)) > ((hint->g1 - g0) < 0 ? -(hint->g1 - g0) : (hint->g1 - g0));
                t1_glyph_space_coord d, md = ((hint->g1 - hint->g0) < 0 ? -(hint->g1 - hint->g0) : (hint->g1 - hint->g0)) * 5 / 4;
                int mj = -1;

                for (j = 0; j < self->hint_applying_count; j++) {
                    t1_hint_applying *ha1 = &self->hint_applying[j];
                    int pole_index1 = ha1->pole;
                    t1_pole *pole1 = &self->pole[pole_index1];
                    t1_glyph_space_coord g1 = (horiz ? pole1->gy : pole1->gx);
                    t1_glyph_space_coord t1 = (horiz ? pole1->gx : pole1->gy);
                    bool gt1 = ((hint->g0 - g1) < 0 ? -(hint->g0 - g1) : (hint->g0 - g1)) > ((hint->g1 - g1) < 0 ? -(hint->g1 - g1) : (hint->g1 - g1));

                    if (gt0 != gt1) {
                        d = ((t1 - t0) < 0 ? -(t1 - t0) : (t1 - t0));
                        if (md > d) {
                            d = md;
                            mj = j;
                        }
                    }
                }
                if (mj != -1) {
                    ha0->opposite = mj;
                    self->hint_applying[mj].opposite = j;
                }
            }
            for (k = 0; k < self->hint_applying_count; k++) {
                t1_hint_applying *ha = &self->hint_applying[k];
                int pole_index = ha->pole;
                t1_pole *pole = &self->pole[pole_index];
                t1_glyph_space_coord g0 = (horiz ? pole->gy : pole->gx);
                bool gt0 = ((hint->g0 - g0) < 0 ? -(hint->g0 - g0) : (hint->g0 - g0)) > ((hint->g1 - g0) < 0 ? -(hint->g1 - g0) : (hint->g1 - g0));
                enum t1_align_type align = (!gt0 ? hint->aligned0 : hint->aligned1);
                t1_glyph_space_coord ag = (!gt0 ? ag0 : ag1);
                t1_glyph_space_coord bl = (!gt0 ? hint->boundary_length1 : hint->boundary_length0);

                if (ha->opposite == -1)
                    align = weak;
                if (!horiz) {
                    if (pole->aligned_x < align)
                        pole->ax = ag, pole->aligned_x = align, pole->boundary_length_x = bl;
                } else {
                    if (pole->aligned_y < align)
                        pole->ay = ag, pole->aligned_y = align, pole->boundary_length_y = bl;
                }
            }
        }
    return 0;
}

static t1_hint * t1_hinter__find_vstem_by_center(t1_hinter * self, t1_glyph_space_coord gx)
{
    int i;
    t1_hint * hint = ((void*)0);
    t1_glyph_space_coord dx = (1L << 8);

    for (i = 0; i < self->hint_count; i++)
        if (self->hint[i].type == vstem) {
            t1_glyph_space_coord d = ((gx - (self->hint[i].ag0 + self->hint[i].ag1) / 2) < 0 ? -(gx - (self->hint[i].ag0 + self->hint[i].ag1) / 2) : (gx - (self->hint[i].ag0 + self->hint[i].ag1) / 2));

            if (dx > d) {
                dx = d;
                hint = &self->hint[i];
            }
        }
    return hint;
}

static void t1_hinter__process_dotsection(t1_hinter * self, int beg_pole, int end_pole)
{


    int i;
    t1_glyph_space_coord min_gx = self->pole[beg_pole].gx, min_gy = self->pole[beg_pole].gy;
    t1_glyph_space_coord max_gx = min_gx, max_gy = min_gy;
    t1_glyph_space_coord center_gx, center_gy, center_agx, center_agy;
    t1_glyph_space_coord sx, sy;
    bool aligned_min_x = ((bool)0), aligned_min_y = ((bool)0), aligned_max_x = ((bool)0), aligned_max_y = ((bool)0);
    bool aligned_x, aligned_y;

    for (i = beg_pole + 1; i <= end_pole; i++) {
        t1_glyph_space_coord gx = self->pole[i].gx, gy = self->pole[i].gy;

        min_gx = (((min_gx) < (gx)) ? (min_gx) : (gx));
        min_gy = (((min_gy) < (gy)) ? (min_gy) : (gy));
        max_gx = (((max_gx) > (gx)) ? (max_gx) : (gx));
        max_gy = (((max_gy) > (gy)) ? (max_gy) : (gy));
    }
    for (i = beg_pole; i <= end_pole; i++) {
        if (self->pole[i].gx == min_gx)
            aligned_min_x |= self->pole[i].aligned_x;
        if (self->pole[i].gy == min_gy)
            aligned_min_y |= self->pole[i].aligned_y;
        if (self->pole[i].gx == max_gx)
            aligned_max_x |= self->pole[i].aligned_x;
        if (self->pole[i].gy == max_gy)
            aligned_max_y |= self->pole[i].aligned_y;
    }
    aligned_x = aligned_min_x && aligned_max_x;
    aligned_y = aligned_min_y && aligned_max_y;
    if (aligned_x && aligned_y)
        return;
    center_gx = center_agx = (min_gx + max_gx) / 2;
    center_gy = center_agy = (min_gy + max_gy) / 2;
    do { } while (0);
    if (!aligned_x) {

        t1_hint * hint = t1_hinter__find_vstem_by_center(self, center_gx);
        if (hint != ((void*)0)) {
            center_agx = (hint->ag0 + hint->ag1) / 2;
            aligned_x = ((bool)1);
        }
    }
    do { } while (0);
    t1_hinter__align_to_grid(self, self->g2o_fraction / 2, &center_agx, &center_agy,
                                1 || self->align_to_pixels);
    do { } while (0);
    sx = center_agx - center_gx;
    sy = center_agy - center_gy;
    if (aligned_x)
        sx = 0;
    if (aligned_y)
        sy = 0;

    for (i = beg_pole; i <= end_pole; i++) {
        self->pole[i].ax = self->pole[i].gx + sx;
        self->pole[i].ay = self->pole[i].gy + sy;
        self->pole[i].aligned_x |= !aligned_x;
        self->pole[i].aligned_y |= !aligned_y;
    }
}

static void t1_hinter__process_dotsections(t1_hinter * self)
{ int i;

    for(i = 0; i < self->hint_count; i++)
        if (self->hint[i].type == dot) {
            int pole_index = self->hint_range[self->hint[i].range_index].beg_pole;
            int contour_index = self->pole[pole_index].contour_index;
            int beg_pole = self->contour[contour_index];
            int end_pole = self->contour[contour_index + 1] - 2;

            t1_hinter__process_dotsection(self, beg_pole, end_pole);
        }
}

static void t1_hinter__interpolate_other_poles(t1_hinter * self)
{ int i, j, k;

    for (k = 0; k<2; k++) {
        t1_glyph_space_coord *p_gc = (!k ? &self->pole[0].gx : &self->pole[0].gy);
        t1_glyph_space_coord *p_wc = (!k ? &self->pole[0].gy : &self->pole[0].gx);
        t1_glyph_space_coord *p_ac = (!k ? &self->pole[0].ax : &self->pole[0].ay);
        t1_glyph_space_coord *p_bl = (!k ? &self->pole[0].boundary_length_x : &self->pole[0].boundary_length_y);
        enum t1_align_type *p_f = (!k ? &self->pole[0].aligned_x : &self->pole[0].aligned_y);
        int offset_gc = (char *)p_gc - (char *)&self->pole[0];
        int offset_wc = (char *)p_wc - (char *)&self->pole[0];
        int offset_ac = (char *)p_ac - (char *)&self->pole[0];
        int offset_bl = (char *)p_bl - (char *)&self->pole[0];
        int offset_f = (char *)p_f - (char *)&self->pole[0];

        for (i = 0; i < self->contour_count; i++) {
            int beg_contour_pole = self->contour[i];
            int end_contour_pole = self->contour[i + 1] - 2;
            int range_beg;

            for (j = beg_contour_pole; j <= end_contour_pole; j++)
                if (*(enum t1_align_type *)((char *)(&self->pole[j]) + (offset_f)))
                    break;
            if (j > end_contour_pole)
                continue;
            range_beg = j;
            do {
                int start_pole = j, stop_pole = -1;
                t1_glyph_space_coord min_a, max_a;
                t1_glyph_space_coord min_g, max_g, g0, g1, a0, a1;
                int min_i = start_pole, max_i = start_pole, cut_l, l;
                bool moved = ((bool)0);

                do {
                    int min_l = 0, max_l = 0, jp;
                    int min_w, max_w, w0;

                    g0 = *(t1_glyph_space_coord *)((char *)(&self->pole[start_pole]) + (offset_gc));
                    w0 = *(t1_glyph_space_coord *)((char *)(&self->pole[start_pole]) + (offset_wc));
                    a0 = *(t1_glyph_space_coord *)((char *)(&self->pole[start_pole]) + (offset_ac));
                    min_g = g0;
                    max_g = g0;
                    min_w = max_w = w0;
                    jp = start_pole;
                    for (j = ranger_step_f(start_pole, beg_contour_pole, end_contour_pole), l = 1;
                         j != start_pole;
                         j = ranger_step_f(j, beg_contour_pole, end_contour_pole), l++) {
                        t1_glyph_space_coord g = * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc));
                        t1_glyph_space_coord w = * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_wc));

                        if (min_g > g)
                            min_g = g, min_i = j, min_l = l;
                        if (max_g < g)
                            max_g = g, max_i = j, max_l = l;
                        if (min_w > w)
                            min_w = w;
                        if (max_w < w)
                            max_w = w;
                        if (*(enum t1_align_type *)((char *)(&self->pole[j]) + (offset_f)))
                            break;
                        if (j == stop_pole)
                            break;
                        jp = j;
                    }
                    stop_pole = j;
                    cut_l = l;
                    g1 = * (t1_glyph_space_coord *)((char *)(&self->pole[stop_pole]) + (offset_gc));
                    a1 = * (t1_glyph_space_coord *)((char *)(&self->pole[stop_pole]) + (offset_ac));

                    if (start_pole != stop_pole)
                        if (((g0 - g1) < 0 ? -(g0 - g1) : (g0 - g1)) >= ((a0 - a1) < 0 ? -(a0 - a1) : (a0 - a1)) / 10)
                            if (((max_g - min_g) < 0 ? -(max_g - min_g) : (max_g - min_g)) <= ((max_w - min_w) < 0 ? -(max_w - min_w) : (max_w - min_w)) / 4)
                                break;

                    if (min_i != start_pole && min_l < cut_l && min_g != g0 && min_g != g1)
                        stop_pole = min_i, cut_l = min_l;
                    if (max_i != start_pole && max_l < cut_l && max_g != g0 && max_g != g1)
                        stop_pole = max_i, cut_l = max_l;
                } while (cut_l < l);

                if (g0 < g1) {
                    min_g = g0;
                    max_g = g1;
                    min_a = a0;
                    max_a = a1;
                } else {
                    min_g = g1;
                    max_g = g0;
                    min_a = a1;
                    max_a = a0;
                }
                if (min_g == max_g && min_a != max_a) {

                    if (* (t1_glyph_space_coord *)((char *)(&self->pole[start_pole]) + (offset_bl)) <
                        * (t1_glyph_space_coord *)((char *)(&self->pole[stop_pole]) + (offset_bl)))
                        min_a = max_a = a1;
                    else
                        min_a = max_a = a0;
                }
                for (j = start_pole; ;
                     j = ranger_step_f(j, beg_contour_pole, end_contour_pole)) {
                    t1_glyph_space_coord g = * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc));

                    if (g <= min_g)
                        * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_ac)) =
                        * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc)) + (min_a - min_g);
                    else if (g >= max_g)
                        * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_ac)) =
                        * (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc)) + (max_a - max_g);
                    if(moved && j == stop_pole)
                        break;
                    moved = ((bool)1);
                }
                if (min_g < max_g) {
                    int24 div = max_g - min_g;
                    int24 mul = max_a - min_a;
# 2897 "./base/gxhintn.c"
                    int24 m0 = mul, d = div, q1, q2, r1, m1, u;

                    if (m0 >= (1 << 19) || d >= (1 << 19))
                        m0 >>= 5, d >>= 5;
                    q1 = m0 / d, r1 = m0 % d, m1 = r1 << 12;
                    q2 = m1 / d;
                    u = (q1 << 12) + q2;
                    for (j = ranger_step_f(start_pole, beg_contour_pole, end_contour_pole); j != stop_pole;
                         j = ranger_step_f(j, beg_contour_pole, end_contour_pole)) {
                        t1_glyph_space_coord g = *(t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_gc));

                        if (min_g < g && g < max_g) {
                            t1_glyph_space_coord *a = (t1_glyph_space_coord *)((char *)(&self->pole[j]) + (offset_ac));
                            t1_glyph_space_coord x = g - min_g;
                            t1_glyph_space_coord h = mul_shift(x, u, 12);


                            *a = min_a + h;
                        }
                    }
                }
                j = stop_pole;
            } while (j != range_beg);
        }
    }
}

static int t1_hinter__export(t1_hinter * self)
{ int i, j, code;
    fixed fx, fy;

    for(i = 0; ; i++) {
        int end_pole, beg_pole = self->contour[i];
        t1_pole *pole = & self->pole[beg_pole];

        g2d(self, pole->ax, pole->ay, &fx, &fy);
        code = gx_path_add_point(self->output_path, fx, fy);
        if (code < 0)
            return code;
        if (i >= self->contour_count)
            break;
        do { } while (0);
        do { } while (0);
        end_pole = self->contour[i + 1] - 2;
        for(j = beg_pole + 1; j <= end_pole; j++) {
            pole = & self->pole[j];
            g2d(self, pole->ax, pole->ay, &fx, &fy);
            if (pole->type == oncurve) {
                code = gx_path_add_line_notes(self->output_path, fx, fy, sn_none);
                if (code < 0)
                    return code;
                do { } while (0);
                do { } while (0);
            } else {
                int j1 = j + 1, j2 = (j + 2 > end_pole ? beg_pole : j + 2);
                fixed fx1, fy1, fx2, fy2;

                g2d(self, self->pole[j1].ax, self->pole[j1].ay, &fx1, &fy1);
                g2d(self, self->pole[j2].ax, self->pole[j2].ay, &fx2, &fy2);
                code = gx_path_add_curve_notes(self->output_path, fx, fy, fx1, fy1, fx2, fy2, sn_none);
                if (code < 0)
                    return code;
                do { } while (0);
                do { } while (0);
                j+=2;
            }
        }
        code = gx_path_close_subpath_notes(self->output_path, sn_none);
        if (code < 0)
            return code;
    }
    return 0;
}

static int t1_hinter__add_trailing_moveto(t1_hinter * self)
{ t1_glyph_space_coord gx = self->width_gx, gy = self->width_gy;
# 2987 "./base/gxhintn.c"
    return t1_hinter__rmoveto(self, gx - self->cx, gy - self->cy);
}

int t1_hinter__endglyph(t1_hinter * self)
{ int code = 0;

    if (!0) {
        do { } while (0);
        do { } while (0);
        do { } while (0);
        do { } while (0);
        if (!0 && !self->disable_hinting)
            do { } while (0);
    }
    if (0 && self->g2o_fraction != 0 && !self->disable_hinting)
        t1_hinter__paint_raster_grid(self);
    code = t1_hinter__add_trailing_moveto(self);
    if (code < 0)
        goto exit;
    code = t1_hinter__end_subglyph(self);
    if (code < 0)
        goto exit;
    t1_hinter__paint_glyph(self, ((bool)0));
    t1_hinter__adjust_matrix_precision(self, self->orig_gx, self->orig_gy);
    t1_hinter__compute_y_span(self);
    t1_hinter__simplify_representation(self);
    if (!self->disable_hinting && (self->grid_fit_x || self->grid_fit_y)) {
        if (self->FontType == 1)
            t1_hinter__compute_type1_stem_ranges(self);
        else
            t1_hinter__compute_type2_stem_ranges(self);
        t1_hinter__mark_existing_stems(self);
        t1_hinter_compute_stem_snap_range(self);
        t1_hinter__align_stem_commands(self);
        t1_hinter__unfix_opposite_to_common(self);
        t1_hinter__compute_opposite_stem_coords(self);

        code = t1_hinter__align_stem_poles(self);
        if (code < 0)
            goto exit;
        t1_hinter__process_dotsections(self);
        t1_hinter__interpolate_other_poles(self);
        t1_hinter__paint_glyph(self, ((bool)1));
    }
    if (self->pole_count) {
        if (self->fix_contour_sign) {
            t1_hinter__fix_contour_signs(self);
            t1_hinter__paint_glyph(self, ((bool)1));
        }
        if (0) {
            double_matrix m;

            fraction_matrix__to_double(&self->ctmi, &m);
            do { } while (0);
            do { } while (0);



        }
        code = t1_hinter__export(self);
    }
exit:
    t1_hinter__free_arrays(self);
    do { } while (0);
    return code;
}
