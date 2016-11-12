# 1 "./base/gsfunc0.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gsfunc0.c" 2
# 18 "./base/gsfunc0.c"
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
# 19 "./base/gsfunc0.c" 2
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
# 20 "./base/gsfunc0.c" 2

# 1 "./base/gsfunc0.h" 1
# 22 "./base/gsfunc0.h"
# 1 "./base/gsfunc.h" 1
# 26 "./base/gsfunc.h"
typedef struct stream_s stream;
# 36 "./base/gsfunc.h"
typedef int gs_function_type_t;
# 52 "./base/gsfunc.h"
typedef struct gs_data_source_s gs_data_source_t;



typedef struct gs_param_list_s gs_param_list;



typedef struct gs_function_params_s {
    int m; const float *Domain; int n; const float *Range;
} gs_function_params_t;

typedef struct gs_function_s gs_function_t;


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
# 23 "./base/gsfunc0.h" 2
# 1 "./base/gsdsrc.h" 1
# 22 "./base/gsdsrc.h"
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
# 23 "./base/gsdsrc.h" 2
# 53 "./base/gsdsrc.h"
typedef enum {
    data_source_type_string,
    data_source_type_bytes,
    data_source_type_floats,
    data_source_type_stream
} gs_data_source_type_t;




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
# 24 "./base/gsfunc0.h" 2







typedef struct gs_function_Sd_params_s {
    int m; const float *Domain; int n; const float *Range;
    int Order;
    gs_data_source_t DataSource;
    int BitsPerSample;
    const float *Encode;
    const float *Decode;
    const int *Size;
    double *pole;
    int *array_step;
    int *stream_step;
    int array_size;
} gs_function_Sd_params_t;
# 52 "./base/gsfunc0.h"
int gs_function_Sd_init(gs_function_t ** ppfn,
                        const gs_function_Sd_params_t * params,
                        gs_memory_t * mem);


void gs_function_Sd_free_params(gs_function_Sd_params_t * params,
                                gs_memory_t * mem);
# 22 "./base/gsfunc0.c" 2
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
# 23 "./base/gsfunc0.c" 2
# 1 "./base/gxfarith.h" 1
# 22 "./base/gxfarith.h"
# 1 "./base/gxarith.h" 1
# 27 "./base/gxarith.h"
int imod(int m, int n);


int igcd(int x, int y);





int idivmod(int a, int b, int m);




int ilog2(int n);
# 23 "./base/gxfarith.h" 2






double gs_sin_degrees(double angle);
double gs_cos_degrees(double angle);
typedef struct gs_sincos_s {
    double sin, cos;
    bool orthogonal;
} gs_sincos_t;
void gs_sincos_degrees(double angle, gs_sincos_t * psincos);






int gs_atan2_degrees(double y, double x, double *pangle);
# 24 "./base/gsfunc0.c" 2
# 1 "./base/gxfunc.h" 1
# 28 "./base/gxfunc.h"
extern const gs_memory_struct_type_t st_function;







void fn_common_free_params(gs_function_params_t * params, gs_memory_t * mem);


void fn_common_free(gs_function_t * pfn, bool free_params, gs_memory_t * mem);


int fn_check_mnDR(const gs_function_params_t * params, int m, int n);


void gs_function_get_info_default(const gs_function_t *pfn, gs_function_info_t *pfi);




int fn_common_get_params(const gs_function_t *pfn, gs_param_list *plist);




void *fn_copy_values(const void *pvalues, int count, int size,
                     gs_memory_t *mem);





int fn_scale_pairs(const float **ppvalues, const float *pvalues, int npairs,
                   const gs_range_t *pranges, gs_memory_t *mem);





int fn_common_scale(gs_function_t *psfn, const gs_function_t *pfn,
                    const gs_range_t *pranges, gs_memory_t *mem);


int fn_common_serialize(const gs_function_t * pfn, stream *s);
# 25 "./base/gsfunc0.c" 2
# 1 "./base/stream.h" 1
# 23 "./base/stream.h"
# 1 "./base/scommon.h" 1
# 25 "./base/scommon.h"
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
# 26 "./base/scommon.h" 2
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





struct file_enum_s;
typedef struct file_enum_s file_enum;
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
# 1 "./base/srdline.h" 1
# 45 "./base/srdline.h"
extern int sreadline(stream *s_in, stream *s_out, void *readline_data, gs_const_string *prompt, gs_string *buf, gs_memory_t *bufmem, uint *pcount, bool *pin_eol, bool (*is_stdin)(const stream *));
# 26 "./base/stream.h" 2
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
# 26 "./base/gsfunc0.c" 2
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
# 27 "./base/gsfunc0.c" 2
# 37 "./base/gsfunc0.c"
typedef struct gs_function_Sd_s {
    gs_function_head_t head;
    gs_function_Sd_params_t params;
} gs_function_Sd_t;


static gs_ptr_type_t function_Sd_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static void function_Sd_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static const gs_memory_struct_type_t st_function_Sd = { sizeof(gs_function_Sd_t), "gs_function_Sd_t", 0, 0, function_Sd_enum_ptrs, function_Sd_reloc_ptrs, 0, 0 };
static
gs_ptr_type_t function_Sd_enum_ptrs(const gs_memory_t *mem, const void *vptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { const gs_function_Sd_t *pfn = vptr; switch ( index ) { default:
{
    index -= 6;
    if (index < 1)
        return (*(st_data_source).enum_ptrs)(mem, &pfn->params.DataSource, sizeof(pfn->params.DataSource), index, pep, &(st_data_source), gcst);

    return (*(st_function).enum_ptrs)(mem, vptr, size, index-(1), pep, &(st_function), gcst);
}
case 0: return (pep->ptr = (const void *)(((const gs_function_Sd_t *)vptr)->params.Encode), (&ptr_struct_procs)); case (0)+1: return (pep->ptr = (const void *)(((const gs_function_Sd_t *)vptr)->params.Decode), (&ptr_struct_procs)); case (0)+2: return (pep->ptr = (const void *)(((const gs_function_Sd_t *)vptr)->params.Size), (&ptr_struct_procs));
case 3: return (pep->ptr = (const void *)(((const gs_function_Sd_t *)vptr)->params.pole), (&ptr_struct_procs)); case (3)+1: return (pep->ptr = (const void *)(((const gs_function_Sd_t *)vptr)->params.array_step), (&ptr_struct_procs)); case (3)+2: return (pep->ptr = (const void *)(((const gs_function_Sd_t *)vptr)->params.stream_step), (&ptr_struct_procs));
} }
static
void function_Sd_reloc_ptrs(void *vptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { gs_function_Sd_t *pfn = vptr;
{
    (*(st_function).reloc_ptrs)(vptr, size, &(st_function), gcst);
    (*(st_data_source).reloc_ptrs)(&pfn->params.DataSource, sizeof(pfn->params.DataSource), &(st_data_source), gcst);

    (((gs_function_Sd_t *)vptr)->params.Encode = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_function_Sd_t *)vptr)->params.Encode), gcst))); (((gs_function_Sd_t *)vptr)->params.Decode = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_function_Sd_t *)vptr)->params.Decode), gcst))); (((gs_function_Sd_t *)vptr)->params.Size = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_function_Sd_t *)vptr)->params.Size), gcst)));
    (((gs_function_Sd_t *)vptr)->params.pole = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_function_Sd_t *)vptr)->params.pole), gcst))); (((gs_function_Sd_t *)vptr)->params.array_step = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_function_Sd_t *)vptr)->params.array_step), gcst))); (((gs_function_Sd_t *)vptr)->params.stream_step = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_function_Sd_t *)vptr)->params.stream_step), gcst)));
}
}
# 87 "./base/gsfunc0.c"
static int
fn_gets_1(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((1 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), ((offset & 7) + n + 7) >> 3, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = (*p >> (~offset & 7)) & 1;
        if (!(++offset & 7))
            p++;
    }
    return 0;
}
static int
fn_gets_2(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((2 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), (((offset & 7) >> 1) + n + 3) >> 2, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = (*p >> (6 - (offset & 7))) & 3;
        if (!((offset += 2) & 7))
            p++;
    }
    return 0;
}
static int
fn_gets_4(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((4 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), (((offset & 7) >> 2) + n + 1) >> 1, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = ((offset ^= 4) & 4 ? *p >> 4 : *p++ & 0xf);
    }
    return 0;
}
static int
fn_gets_8(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((8 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), n, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = *p++;
    }
    return 0;
}
static int
fn_gets_12(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((12 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), (((offset & 7) >> 2) + 3 * n + 1) >> 1, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        if (offset & 4)
            samples[i] = ((*p & 0xf) << 8) + p[1], p += 2;
        else
            samples[i] = (*p << 4) + (p[1] >> 4), p++;
        offset ^= 4;
    }
    return 0;
}
static int
fn_gets_16(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((16 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), n * 2, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = (*p << 8) + p[1];
        p += 2;
    }
    return 0;
}
static int
fn_gets_24(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((24 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), n * 3, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = (*p << 16) + (p[1] << 8) + p[2];
        p += 3;
    }
    return 0;
}
static int
fn_gets_32(const gs_function_Sd_t * pfn, ulong offset, uint * samples)
{
    int n = pfn->params.n; byte buf[(64) * ((32 + 7) >> 3)]; const byte *p; int i; do { int code_ = (*(&pfn->params.DataSource)->access)(&pfn->params.DataSource, (ulong)(offset >> 3), n * 4, buf, &p); if ( code_ < 0 ) return code_; } while (0);
    for (i = 0; i < n; ++i) {
        samples[i] = (*p << 24) + (p[1] << 16) + (p[2] << 8) + p[3];
        p += 4;
    }
    return 0;
}

static int (*const fn_get_samples[]) (const gs_function_Sd_t * pfn,
                                       ulong offset, uint * samples) =
{
    0, fn_gets_1, fn_gets_2, 0, fn_gets_4, 0, 0, 0,
        fn_gets_8, 0, 0, 0, fn_gets_12, 0, 0, 0,
        fn_gets_16, 0, 0, 0, 0, 0, 0, 0,
        fn_gets_24, 0, 0, 0, 0, 0, 0, 0,
        fn_gets_32
};
# 188 "./base/gsfunc0.c"
static double
interpolate_cubic(double x, double f0, double f1, double f2, double f3)
{







    const double xm1 = x - 1, m2x = 2 - x, m3x = 3 - x;
    const double c =
        ((-0.5) * ((x) * (x) * (x)) - 5 * (-0.5) * ((x) * (x)) + 8 * (-0.5) * x - 4 * (-0.5)) * f0 +
        (((-0.5)+2) * ((xm1) * (xm1) * (xm1)) - ((-0.5)+3) * ((xm1) * (xm1)) + 1) * f1 +
        (((-0.5)+2) * ((m2x) * (m2x) * (m2x)) - ((-0.5)+3) * ((m2x) * (m2x)) + 1) * f2 +
        ((-0.5) * ((m3x) * (m3x) * (m3x)) - 5 * (-0.5) * ((m3x) * (m3x)) + 8 * (-0.5) * m3x - 4 * (-0.5)) * f3;

    do { } while (0);

    return c;



}
# 221 "./base/gsfunc0.c"
static __inline__ double
interpolate_quadratic(double x, double f0, double f1, double f2)
{
    return interpolate_cubic(x + 1, f0, f0, f1, f2);
}


static void
fn_interpolate_cubic(const gs_function_Sd_t *pfn, const float *fparts,
                     const int *iparts, const ulong *factors,
                     float *samples, ulong offset, int m)
{
    int j;

top:
    if (m == 0) {
        uint sdata[(64)];

        (*fn_get_samples[pfn->params.BitsPerSample])(pfn, offset, sdata);
        for (j = pfn->params.n - 1; j >= 0; --j)
            samples[j] = (float)sdata[j];
    } else {
        float fpart = *fparts++;
        int ipart = *iparts++;
        ulong delta = *factors++;
        int size = pfn->params.Size[pfn->params.m - m];
        float samples1[(64)], samplesm1[(64)], samples2[(64)];

        --m;
        if (((fpart) == 0.0))
            goto top;
        fn_interpolate_cubic(pfn, fparts, iparts, factors, samples,
                             offset, m);
        fn_interpolate_cubic(pfn, fparts, iparts, factors, samples1,
                             offset + delta, m);





        if (size == 2) {

            for (j = pfn->params.n - 1; j >= 0; --j)
                samples[j] += (samples1[j] - samples[j]) * fpart;
            return;
        }
        if (ipart == 0) {

            fn_interpolate_cubic(pfn, fparts, iparts, factors,
                                 samples2, offset + delta * 2, m);
            for (j = pfn->params.n - 1; j >= 0; --j)
                samples[j] =
                    interpolate_quadratic(fpart, samples[j],
                                          samples1[j], samples2[j]);
            return;
        }

        fn_interpolate_cubic(pfn, fparts, iparts, factors, samplesm1,
                             offset - delta, m);
        if (ipart == size - 2) {

            for (j = pfn->params.n - 1; j >= 0; --j)
                samples[j] =
                    interpolate_quadratic(1 - fpart, samples1[j],
                                          samples[j], samplesm1[j]);
            return;
        }

        fn_interpolate_cubic(pfn, fparts, iparts, factors,
                             samples2, offset + delta * 2, m);
        for (j = pfn->params.n - 1; j >= 0; --j)
            samples[j] =
                interpolate_cubic(fpart + 1, samplesm1[j], samples[j],
                                  samples1[j], samples2[j]);
    }
}


static void
fn_interpolate_linear(const gs_function_Sd_t *pfn, const float *fparts,
                 const ulong *factors, float *samples, ulong offset, int m)
{
    int j;

top:
    if (m == 0) {
        uint sdata[(64)];

        (*fn_get_samples[pfn->params.BitsPerSample])(pfn, offset, sdata);
        for (j = pfn->params.n - 1; j >= 0; --j)
            samples[j] = (float)sdata[j];
    } else {
        float fpart = *fparts++;
        float samples1[(64)];

        if (((fpart) == 0.0)) {
            ++factors;
            --m;
            goto top;
        }
        fn_interpolate_linear(pfn, fparts, factors + 1, samples,
                              offset, m - 1);
        fn_interpolate_linear(pfn, fparts, factors + 1, samples1,
                              offset + *factors, m - 1);
        for (j = pfn->params.n - 1; j >= 0; --j)
            samples[j] += (samples1[j] - samples[j]) * fpart;
    }
}

static __inline__ double
fn_Sd_encode(const gs_function_Sd_t *pfn, int i, double sample)
{
    float d0, d1, r0, r1;
    double value;
    int bps = pfn->params.BitsPerSample;

    uint max_samp = (bps < (sizeof(uint) * 8)) ? ((1 << bps) - 1) : ((unsigned int)~0 + (unsigned int)0);

    if (pfn->params.Range)
        r0 = pfn->params.Range[2 * i], r1 = pfn->params.Range[2 * i + 1];
    else
        r0 = 0, r1 = (float)((1 << bps) - 1);
    if (pfn->params.Decode)
        d0 = pfn->params.Decode[2 * i], d1 = pfn->params.Decode[2 * i + 1];
    else
        d0 = r0, d1 = r1;

    value = sample * (d1 - d0) / max_samp + d0;
    if (value < r0)
        value = r0;
    else if (value > r1)
        value = r1;
    return value;
}



static int
fn_Sd_evaluate_general(const gs_function_t * pfn_common, const float *in, float *out)
{
    const gs_function_Sd_t *pfn = (const gs_function_Sd_t *)pfn_common;
    int bps = pfn->params.BitsPerSample;
    ulong offset = 0;
    int i;
    float encoded[(64)];
    int iparts[(64)];
    ulong factors[(64)];
    float samples[(64)];



    for (i = 0; i < pfn->params.m; ++i) {
        float d0 = pfn->params.Domain[2 * i],
            d1 = pfn->params.Domain[2 * i + 1];
        float arg = in[i], enc;

        if (arg < d0)
            arg = d0;
        else if (arg > d1)
            arg = d1;
        if (pfn->params.Encode) {
            float e0 = pfn->params.Encode[2 * i];
            float e1 = pfn->params.Encode[2 * i + 1];

            enc = (arg - d0) * (e1 - e0) / (d1 - d0) + e0;
            if (enc < 0)
                encoded[i] = 0;
            else if (enc >= pfn->params.Size[i] - 1)
                encoded[i] = (float)pfn->params.Size[i] - 1;
            else
                encoded[i] = enc;
        } else {


            encoded[i] = (arg - d0) * (pfn->params.Size[i] - 1) / (d1 - d0);
        }
    }



    {
        ulong factor = bps * pfn->params.n;

        for (i = 0; i < pfn->params.m; factor *= pfn->params.Size[i++]) {
            int ipart = (int)encoded[i];

            offset += (factors[i] = factor) * ipart;
            iparts[i] = ipart;
            encoded[i] -= ipart;
        }
    }
    if (pfn->params.Order == 3)
        fn_interpolate_cubic(pfn, encoded, iparts, factors, samples,
                             offset, pfn->params.m);
    else
        fn_interpolate_linear(pfn, encoded, factors, samples, offset,
                              pfn->params.m);



    for (i = 0; i < pfn->params.n; ++i)
        out[i] = (float)fn_Sd_encode(pfn, i, samples[i]);

    return 0;
}

static const double double_stub = 1e90;

static __inline__ void
fn_make_cubic_poles(double *p, double f0, double f1, double f2, double f3,
            const int pole_step_minor)
{

    const double a = -0.5;

    p[pole_step_minor * 1] = (a*f0 + 3*f1 - a*f2)/3.0;
    p[pole_step_minor * 2] = (-a*f1 + 3*f2 + a*f3)/3.0;
}

static void
fn_make_poles(double *p, const int pole_step, int power, int bias)
{
    const int pole_step_minor = pole_step / 3;
    switch(power) {
        case 1:

            p[pole_step_minor * 1] = (2 * p[pole_step * 0] + 1 * p[pole_step * 1]) / 3;
            p[pole_step_minor * 2] = (1 * p[pole_step * 0] + 2 * p[pole_step * 1]) / 3;
            break;
        case 2:


            fn_make_cubic_poles(p + pole_step * bias,
                    p[pole_step * 0], p[pole_step * bias],
                    p[pole_step * (1 + bias)], p[pole_step * 2],
                    pole_step_minor);
            break;
        case 3:

            fn_make_cubic_poles(p + pole_step * bias,
                    p[pole_step * 0], p[pole_step * 1], p[pole_step * 2], p[pole_step * 3],
                    pole_step_minor);
            break;
        default:
           do { } while (0);
    }
}







static int
fn_Sd_evaluate_cubic_cached_1d(const gs_function_Sd_t *pfn, const float *in, float *out)
{
    float d0 = pfn->params.Domain[2 * 0];
    float d1 = pfn->params.Domain[2 * 0 + 1];
    float x0 = in[0];
    const int pole_step_minor = pfn->params.n;
    const int pole_step = 3 * pole_step_minor;
    int i0;
    int ib, ie, i, k;
    double *p, t0, t1, tt;

    if (x0 < d0)
        x0 = d0;
    if (x0 > d1)
        x0 = d1;
    tt = (in[0] - d0) * (pfn->params.Size[0] - 1) / (d1 - d0);
    i0 = (int)floor(tt);
    ib = (((i0 - 1) > (0)) ? (i0 - 1) : (0));
    ie = (((pfn->params.Size[0]) < (i0 + 3)) ? (pfn->params.Size[0]) : (i0 + 3));
    for (i = ib; i < ie; i++) {
        if (pfn->params.pole[i * pole_step] == double_stub) {
            uint sdata[(64)];
            int bps = pfn->params.BitsPerSample;

            p = &pfn->params.pole[i * pole_step];
            fn_get_samples[pfn->params.BitsPerSample](pfn, i * bps * pfn->params.n, sdata);
            for (k = 0; k < pfn->params.n; k++, p++)
                *p = fn_Sd_encode(pfn, k, (double)sdata[k]);
        }
    }
    p = &pfn->params.pole[i0 * pole_step];
    t0 = tt - i0;
    if (t0 == 0) {
        for (k = 0; k < pfn->params.n; k++, p++)
            out[k] = *p;
    } else {
        if (p[1 * pole_step_minor] == double_stub) {
            for (k = 0; k < pfn->params.n; k++)
                fn_make_poles(&pfn->params.pole[ib * pole_step + k], pole_step,
                        ie - ib - 1, i0 - ib);
        }
        t1 = 1 - t0;
        for (k = 0; k < pfn->params.n; k++, p++) {
            double y = p[0 * pole_step_minor] * t1 * t1 * t1 +
                       p[1 * pole_step_minor] * t1 * t1 * t0 * 3 +
                       p[2 * pole_step_minor] * t1 * t0 * t0 * 3 +
                       p[3 * pole_step_minor] * t0 * t0 * t0;
            if (y < pfn->params.Range[0])
                y = pfn->params.Range[0];
            if (y > pfn->params.Range[1])
                y = pfn->params.Range[1];
            out[k] = y;
        }
    }
    return 0;
}

static __inline__ void
decode_argument(const gs_function_Sd_t *pfn, const float *in, double T[(64)], int I[(64)])
{
    int i;

    for (i = 0; i < pfn->params.m; i++) {
        float xi = in[i];
        float d0 = pfn->params.Domain[2 * i + 0];
        float d1 = pfn->params.Domain[2 * i + 1];
        double t;

        if (xi < d0)
            xi = d0;
        if (xi > d1)
            xi = d1;
        t = (xi - d0) * (pfn->params.Size[i] - 1) / (d1 - d0);
        I[i] = (int)floor(t);
        T[i] = t - I[i];
    }
}

static __inline__ void
index_span(const gs_function_Sd_t *pfn, int *I, double *T, int ii, int *Ii, int *ib, int *ie)
{
    *Ii = I[ii];
    if (T[ii] != 0) {
        *ib = (((*Ii - 1) > (0)) ? (*Ii - 1) : (0));
        *ie = (((pfn->params.Size[ii]) < (*Ii + 3)) ? (pfn->params.Size[ii]) : (*Ii + 3));
    } else {
        *ib = *Ii;
        *ie = *Ii + 1;
    }
}

static __inline__ int
load_vector_to(const gs_function_Sd_t *pfn, int s_offset, double *V)
{
    uint sdata[(64)];
    int k, code;

    code = fn_get_samples[pfn->params.BitsPerSample](pfn, s_offset, sdata);
    if (code < 0)
        return code;
    for (k = 0; k < pfn->params.n; k++)
        V[k] = fn_Sd_encode(pfn, k, (double)sdata[k]);
    return 0;
}

static __inline__ int
load_vector(const gs_function_Sd_t *pfn, int a_offset, int s_offset)
{
    if (*(pfn->params.pole + a_offset) == double_stub) {
        uint sdata[(64)];
        int k, code;

        code = fn_get_samples[pfn->params.BitsPerSample](pfn, s_offset, sdata);
        if (code < 0)
            return code;
        for (k = 0; k < pfn->params.n; k++)
            *(pfn->params.pole + a_offset + k) = fn_Sd_encode(pfn, k, (double)sdata[k]);
    }
    return 0;
}

static __inline__ void
interpolate_vector(const gs_function_Sd_t *pfn, int offset, int pole_step, int power, int bias)
{
    int k;

    for (k = 0; k < pfn->params.n; k++)
        fn_make_poles(pfn->params.pole + offset + k, pole_step, power, bias);
}

static __inline__ void
interpolate_tensors(const gs_function_Sd_t *pfn, int *I, double *T,
        int offset, int pole_step, int power, int bias, int ii)
{
    if (ii < 0)
        interpolate_vector(pfn, offset, pole_step, power, bias);
    else {
        int s = pfn->params.array_step[ii];
        int Ii = I[ii];

        if (T[ii] == 0) {
            interpolate_tensors(pfn, I, T, offset + Ii * s, pole_step, power, bias, ii - 1);
        } else {
            int l;

            for (l = 0; l < 4; l++)
                interpolate_tensors(pfn, I, T, offset + Ii * s + l * s / 3, pole_step, power, bias, ii - 1);
        }
    }
}

static __inline__ bool
is_tensor_done(const gs_function_Sd_t *pfn, int *I, double *T, int a_offset, int ii)
{

    int i, o = 0;

    for (i = ii; i >= 0; i--) {
        o += I[i] * pfn->params.array_step[i];
        if (T[i] != 0)
            o += pfn->params.array_step[i] / 3;
    }
    if (*(pfn->params.pole + a_offset + o) != double_stub)
        return ((bool)1);
    return ((bool)0);
}


static __inline__ int
make_interpolation_tensor(const gs_function_Sd_t *pfn, int *I, double *T,
                            int a_offset, int s_offset, int ii)
{
# 698 "./base/gsfunc0.c"
    int code;

    if (ii < 0) {
        if (0 || *(pfn->params.pole + a_offset) == double_stub) {
            code = load_vector(pfn, a_offset, s_offset);
            if (code < 0)
                return code;
        }
    } else {
        int Ii, ib, ie, i;
        int sa = pfn->params.array_step[ii];
        int ss = pfn->params.stream_step[ii];

        index_span(pfn, I, T, ii, &Ii, &ib, &ie);
        if (0 || !is_tensor_done(pfn, I, T, a_offset, ii)) {
            for (i = ib; i < ie; i++) {
                code = make_interpolation_tensor(pfn, I, T,
                                a_offset + i * sa, s_offset + i * ss, ii - 1);
                if (code < 0)
                    return code;
            }
            if (T[ii] != 0)
                interpolate_tensors(pfn, I, T, a_offset + ib * sa, sa, ie - ib - 1,
                                Ii - ib, ii - 1);
        }
    }
    return 0;
}


static __inline__ int
make_interpolation_nodes(const gs_function_Sd_t *pfn, double *T0, double *T1,
                            int *I, double *T,
                            int a_offset, int s_offset, int ii)
{
    int code;

    if (ii < 0) {
        if (0 || *(pfn->params.pole + a_offset) == double_stub) {
            code = load_vector(pfn, a_offset, s_offset);
            if (code < 0)
                return code;
        }
        if (pfn->params.Order == 3) {
            code = make_interpolation_tensor(pfn, I, T, 0, 0, pfn->params.m - 1);
        }
    } else {
        int i;
        int i0 = (int)floor(T0[ii]);
        int i1 = (int)ceil(T1[ii]);
        int sa = pfn->params.array_step[ii];
        int ss = pfn->params.stream_step[ii];

        if (i0 < 0 || i0 >= pfn->params.Size[ii])
            return ((-28));
        if (i1 < 0 || i1 >= pfn->params.Size[ii])
            return ((-28));
        I[ii] = i0;
        T[ii] = (i1 > i0 ? 1 : 0);
        for (i = i0; i <= i1; i++) {
            code = make_interpolation_nodes(pfn, T0, T1, I, T,
                            a_offset + i * sa, s_offset + i * ss, ii - 1);
            if (code < 0)
                return code;
        }
    }
    return 0;
}

static __inline__ int
evaluate_from_tenzor(const gs_function_Sd_t *pfn, int *I, double *T, int offset, int ii, double *y)
{
    int s = pfn->params.array_step[ii], k, l, code;

    if (ii < 0) {
        for (k = 0; k < pfn->params.n; k++)
            y[k] = *(pfn->params.pole + offset + k);
    } else if (T[ii] == 0) {
        return evaluate_from_tenzor(pfn, I, T, offset + s * I[ii], ii - 1, y);
    } else {
        double t0 = T[ii], t1 = 1 - t0;
        double p[4][(64)];

        for (l = 0; l < 4; l++) {
            code = evaluate_from_tenzor(pfn, I, T, offset + s * I[ii] + l * (s / 3), ii - 1, p[l]);
            if (code < 0)
                return code;
        }
        for (k = 0; k < pfn->params.n; k++)
            y[k] = p[0][k] * t1 * t1 * t1 +
                   p[1][k] * t1 * t1 * t0 * 3 +
                   p[2][k] * t1 * t0 * t0 * 3 +
           p[3][k] * t0 * t0 * t0;
    }
    return 0;
}




static int
fn_Sd_evaluate_multicubic_cached(const gs_function_Sd_t *pfn, const float *in, float *out)
{
    double T[(64)], y[(64)];
    int I[(64)], k, code;

    decode_argument(pfn, in, T, I);
    code = make_interpolation_tensor(pfn, I, T, 0, 0, pfn->params.m - 1);
    if (code < 0)
        return code;
    evaluate_from_tenzor(pfn, I, T, 0, pfn->params.m - 1, y);
    for (k = 0; k < pfn->params.n; k++) {
        double yk = y[k];

        if (yk < pfn->params.Range[k * 2 + 0])
            yk = pfn->params.Range[k * 2 + 0];
        if (yk > pfn->params.Range[k * 2 + 1])
            yk = pfn->params.Range[k * 2 + 1];
        out[k] = yk;
    }
    return 0;
}


static int
fn_Sd_evaluate(const gs_function_t * pfn_common, const float *in, float *out)
{
    const gs_function_Sd_t *pfn = (const gs_function_Sd_t *)pfn_common;
    int code;

    if (pfn->params.Order == 3) {
        if (1 || pfn->params.m > 1)
            code = fn_Sd_evaluate_multicubic_cached(pfn, in, out);
        else
            code = fn_Sd_evaluate_cubic_cached_1d(pfn, in, out);
# 846 "./base/gsfunc0.c"
    } else
        code = fn_Sd_evaluate_general(pfn_common, in, out);
    return code;
}


static __inline__ int
get_scaled_range(const gs_function_Sd_t *const pfn,
                   const float *lower, const float *upper,
                   int i, float *pw0, float *pw1)
{
    float d0 = pfn->params.Domain[i * 2 + 0], d1 = pfn->params.Domain[i * 2 + 1];
    float v0 = lower[i], v1 = upper[i];
    float e0, e1, w0, w1, w;
    const float small_noise = (float)1e-6;

    if (v0 < d0 || v0 > d1)
        return (-15);
    if (pfn->params.Encode)
        e0 = pfn->params.Encode[i * 2 + 0], e1 = pfn->params.Encode[i * 2 + 1];
    else
        e0 = 0, e1 = (float)pfn->params.Size[i] - 1;
    w0 = (v0 - d0) * (e1 - e0) / (d1 - d0) + e0;
    if (w0 < 0)
        w0 = 0;
    else if (w0 >= pfn->params.Size[i] - 1)
        w0 = (float)pfn->params.Size[i] - 1;
    w1 = (v1 - d0) * (e1 - e0) / (d1 - d0) + e0;
    if (w1 < 0)
        w1 = 0;
    else if (w1 >= pfn->params.Size[i] - 1)
        w1 = (float)pfn->params.Size[i] - 1;
    if (w0 > w1) {
        w = w0; w0 = w1; w1 = w;
    }
    if (floor(w0 + 1) - w0 < small_noise * ((e1 - e0) < 0 ? -(e1 - e0) : (e1 - e0)))
        w0 = (floor(w0) + 1);
    if (w1 - floor(w1) < small_noise * ((e1 - e0) < 0 ? -(e1 - e0) : (e1 - e0)))
        w1 = floor(w1);
    if (w0 > w1)
        w0 = w1;
    *pw0 = w0;
    *pw1 = w1;
    return 0;
}


static int
copy_poles(const gs_function_Sd_t *pfn, int *I, double *T0, double *T1, int a_offset,
                int ii, double *pole, int p_offset, int pole_step)
{
    int i, ei, sa, code;
    int order = pfn->params.Order;

    if (pole_step <= 0)
        return ((-13));
    ei = (T0[ii] == T1[ii] ? 1 : order + 1);
    sa = pfn->params.array_step[ii];
    if (ii == 0) {
        for (i = 0; i < ei; i++)
            *(pole + p_offset + i * pole_step) =
                    *(pfn->params.pole + a_offset + I[ii] * sa + i * (sa / order));
    } else {
        for (i = 0; i < ei; i++) {
            code = copy_poles(pfn, I, T0, T1, a_offset + I[ii] * sa + i * (sa / order), ii - 1,
                            pole, p_offset + i * pole_step, pole_step / 4);
            if (code < 0)
                return code;
        }
    }
    return 0;
}

static __inline__ void
subcurve(double *pole, int pole_step, double t0, double t1)
{

    double q0 = pole[pole_step * 0];
    double q1 = pole[pole_step * 1];
    double q2 = pole[pole_step * 2];
    double q3 = pole[pole_step * 3];
    double t01 = t0 - 1, t11 = t1 - 1;
    double small = 1e-13;



    pole[pole_step * 0] = t0*(t0*(q3*t0 - 3*q2*t01) + 3*q1*(t01) * (t01)) - q0*(t01) * (t01) * (t01);
    pole[pole_step * 1] = q1*t01*(-2*t0 - t1 + 3*t0*t1) + t0*(q2*t0 + 2*q2*t1 -
                            3*q2*t0*t1 + q3*t0*t1) - q0*t11*(t01) * (t01);
    pole[pole_step * 2] = t1*(2*q2*t0 + q2*t1 - 3*q2*t0*t1 + q3*t0*t1) +
                            q1*(-t0 - 2*t1 + 3*t0*t1)*t11 - q0*t01*(t11) * (t11);
    pole[pole_step * 3] = t1*(t1*(3*q2 - 3*q2*t1 + q3*t1) +
                            3*q1*(t11) * (t11)) - q0*(t11) * (t11) * (t11);


    if (((pole[pole_step * 1] - pole[pole_step * 0]) < 0 ? -(pole[pole_step * 1] - pole[pole_step * 0]) : (pole[pole_step * 1] - pole[pole_step * 0])) < small)
        pole[pole_step * 1] = pole[pole_step * 0];
    if (((pole[pole_step * 2] - pole[pole_step * 3]) < 0 ? -(pole[pole_step * 2] - pole[pole_step * 3]) : (pole[pole_step * 2] - pole[pole_step * 3])) < small)
        pole[pole_step * 2] = pole[pole_step * 3];
}

static __inline__ void
subline(double *pole, int pole_step, double t0, double t1)
{
    double q0 = pole[pole_step * 0];
    double q1 = pole[pole_step * 1];

    pole[pole_step * 0] = (1 - t0) * q0 + t0 * q1;
    pole[pole_step * 1] = (1 - t1) * q0 + t1 * q1;
}

static void
clamp_poles(double *T0, double *T1, int ii, int i, double * pole,
                int p_offset, int pole_step, int pole_step_i, int order)
{
    if (ii < 0) {
        if (order == 3)
            subcurve(pole + p_offset, pole_step_i, T0[i], T1[i]);
        else
            subline(pole + p_offset, pole_step_i, T0[i], T1[i]);
    } else if (i == ii) {
        clamp_poles(T0, T1, ii - 1, i, pole, p_offset, pole_step / 4, pole_step, order);
    } else {
        int j, ei = (T0[ii] == T1[ii] ? 1 : order + 1);

        for (j = 0; j < ei; j++)
            clamp_poles(T0, T1, ii - 1, i, pole, p_offset + j * pole_step,
                            pole_step / 4, pole_step_i, order);
    }
}

static __inline__ int
curve_monotonity(double *pole, int pole_step)
{
    double p0 = pole[pole_step * 0];
    double p1 = pole[pole_step * 1];
    double p2 = pole[pole_step * 2];
    double p3 = pole[pole_step * 3];

    if (p0 == p1 && ((p1 - p2) < 0 ? -(p1 - p2) : (p1 - p2)) < 1e-13 && p2 == p3)
        return 0;
    if (p0 <= p1 && p1 <= p2 && p2 <= p3)
        return 1;
    if (p0 >= p1 && p1 >= p2 && p2 >= p3)
        return 2;




    return 3;
}

static __inline__ int
line_monotonity(double *pole, int pole_step)
{
    double p0 = pole[pole_step * 0];
    double p1 = pole[pole_step * 1];

    if (p1 - p0 > 1e-13)
        return 1;
    if (p0 - p1 > 1e-13)
        return 2;
    return 0;
}

static int


tensor_dimension_monotonity(const double *T0, const double *T1, int ii, int i0, double *pole,
                int p_offset, int pole_step, int pole_step_i, int order)
{
    if (ii < 0) {
        if (order == 3)
            return curve_monotonity(pole + p_offset, pole_step_i);
        else
            return line_monotonity(pole + p_offset, pole_step_i);
    } else if (i0 == ii) {

        return tensor_dimension_monotonity(T0, T1, ii - 1, i0, pole, p_offset,
                            pole_step / 4, pole_step, order);
    } else {
        int j, ei = (T0[ii] == T1[ii] ? 1 : order + 1), m = 0, mm;

        for (j = 0; j < ei; j++) {
            mm = tensor_dimension_monotonity(T0, T1, ii - 1, i0, pole, p_offset + j * pole_step,
                            pole_step/ 4, pole_step_i, order);
            m |= mm << (j * 3);
            if (mm == 3) {


                break;
            }
        }
        return m;
    }
}

static __inline__ int
is_tensor_monotonic_by_dimension(const gs_function_Sd_t *pfn, int *I, double *T0, double *T1, int i0, int k,
                    uint *mask )


{
    double pole[4*4*4];

    int i, code, ii = pfn->params.m - 1;
    double TT0[3], TT1[3];

    *mask = 0;
    if (ii >= 3) {


        return ((-13));
    }
    code = copy_poles(pfn, I, T0, T1, k, ii, pole, 0, (((int)(sizeof(pole))) / ((int)(sizeof((pole)[0])))) / 4);
    if (code < 0)
        return code;
    for (i = ii; i >= 0; i--) {
        TT0[i] = 0;
        if (T0[i] != T1[i]) {
            if (T0[i] != 0 || T1[i] != 1)
                clamp_poles(T0, T1, ii, i, pole, 0, (((int)(sizeof(pole))) / ((int)(sizeof((pole)[0])))) / 4, -1, pfn->params.Order);
            TT1[i] = 1;
        } else
            TT1[i] = 0;
    }
    *mask = tensor_dimension_monotonity(TT0, TT1, ii, i0, pole, 0,
                        (((int)(sizeof(pole))) / ((int)(sizeof((pole)[0])))) / 4, -1, pfn->params.Order);
    return 0;
}

static int
is_lattice_monotonic_by_dimension(const gs_function_Sd_t *pfn, const double *T0, const double *T1,
        int *I, double *S0, double *S1, int ii, int i0, int k,
        uint *mask )

{
    if (ii == -1) {

        return is_tensor_monotonic_by_dimension(pfn, I, S0, S1, i0, k, mask);
    } else {
        int i1 = (ii > i0 ? ii : ii == 0 ? i0 : ii - 1);
        int j, code;
        int bi = (int)floor(T0[i1]);
        int ei = (int)floor(T1[i1]);
        uint m, mm, m1 = 0x49249249 & ((1 << ((pfn->params.Order + 1) * 3)) - 1);

        if (floor(T1[i1]) == T1[i1])
            ei --;
        m = 0;
        for (j = bi; j <= ei; j++) {

            I[i1] = j;
            S0[i1] = (((T0[i1] - j) > (0)) ? (T0[i1] - j) : (0));
            S1[i1] = (((T1[i1] - j) < (1)) ? (T1[i1] - j) : (1));
            code = is_lattice_monotonic_by_dimension(pfn, T0, T1, I, S0, S1, ii - 1, i0, k, &mm);
            if (code < 0)
                return code;
            m |= mm;
            if (m == m1)
                break;
        }
        if (ii == 0) {

            m = m & (m >> 1);
        }
        *mask = m;
        return 0;
    }
}

static __inline__ int
is_lattice_monotonic(const gs_function_Sd_t *pfn, const double *T0, const double *T1,
         int *I, double *S0, double *S1,
         int k, uint *mask )

{
    uint m, mm = 0;
    int i, code;

    for (i = 0; i < pfn->params.m; i++) {
        if (T0[i] != T1[i]) {
            code = is_lattice_monotonic_by_dimension(pfn, T0, T1, I, S0, S1, pfn->params.m - 1, i, k, &m);
            if (code < 0)
                return code;
            if (m)
                mm |= 1 << i;
        }
    }
    *mask = mm;
    return 0;
}

static int


fn_Sd_1arg_linear_monotonic_rec(const gs_function_Sd_t *const pfn, int i0, int i1,
                                const double *V0, const double *V1)
{
    if (i1 - i0 <= 1) {
        int code = 0, i;

        for (i = 0; i < pfn->params.n; i++) {
            if (V0[i] < V1[i])
                code |= 1 << (i * 3);
            else if (V0[i] > V1[i])
                code |= 2 << (i * 3);
        }
        return code;
    } else {
        double VV[8];
        int ii = (i0 + i1) / 2, code, cod1;

        code = load_vector_to(pfn, ii * pfn->params.n * pfn->params.BitsPerSample, VV);
        if (code < 0)
            return code;
        if (code & (code >> 1))
            return code;
        code = fn_Sd_1arg_linear_monotonic_rec(pfn, i0, ii, V0, VV);
        if (code < 0)
            return code;
        cod1 = fn_Sd_1arg_linear_monotonic_rec(pfn, ii, i1, VV, V1);
        if (cod1 < 0)
            return cod1;
        return code | cod1;
    }
}

static int
fn_Sd_1arg_linear_monotonic(const gs_function_Sd_t *const pfn, double T0, double T1,
                            uint *mask )
{
    int i0 = (int)floor(T0);
    int i1 = (int)ceil(T1), code;
    double V0[8], V1[8];

    if (i1 - i0 > 1) {
        code = load_vector_to(pfn, i0 * pfn->params.n * pfn->params.BitsPerSample, V0);
        if (code < 0)
            return code;
        code = load_vector_to(pfn, i1 * pfn->params.n * pfn->params.BitsPerSample, V1);
        if (code < 0)
            return code;
        code = fn_Sd_1arg_linear_monotonic_rec(pfn, i0, i1, V0, V1);
        if (code < 0)
            return code;
        if (code & (code >> 1)) {
            *mask = 1;
            return 0;
        }
    }
    *mask = 0;
    return 1;
}




static int
fn_Sd_is_monotonic_aux(const gs_function_Sd_t *const pfn,
                   const float *lower, const float *upper,
                   uint *mask )

{
    int i, code, ii = pfn->params.m - 1;
    int I[4];
    double T0[(((int)(sizeof(I))) / ((int)(sizeof((I)[0]))))], T1[(((int)(sizeof(I))) / ((int)(sizeof((I)[0]))))];
    double S0[(((int)(sizeof(I))) / ((int)(sizeof((I)[0]))))], S1[(((int)(sizeof(I))) / ((int)(sizeof((I)[0]))))];
    uint m, mm, m1;




    if (ii >= (((int)(sizeof(T0))) / ((int)(sizeof((T0)[0]))))) {


        return ((-13));
    }
    for (i = 0; i <= ii; i++) {
        float w0, w1;

        code = get_scaled_range(pfn, lower, upper, i, &w0, &w1);
        if (code < 0)
            return code;
        T0[i] = w0;
        T1[i] = w1;
    }
    if (pfn->params.m == 1 && pfn->params.Order == 1 && pfn->params.n <= 8) {
        code = fn_Sd_1arg_linear_monotonic(pfn, T0[0], T1[0], mask);

            return code;




    }
    m1 = (1 << pfn->params.m )- 1;
    code = make_interpolation_nodes(pfn, T0, T1, I, S0, 0, 0, ii);
    if (code < 0)
        return code;
    mm = 0;
    for (i = 0; i < pfn->params.n; i++) {
        code = is_lattice_monotonic(pfn, T0, T1, I, S0, S1, i, &m);
        if (code < 0)
            return code;
        mm |= m;
        if (mm == m1)
            break;
    }






    *mask = mm;
    return !mm;
}



static int
fn_Sd_is_monotonic(const gs_function_t * pfn_common,
                   const float *lower, const float *upper, uint *mask)
{
    const gs_function_Sd_t *const pfn =
        (const gs_function_Sd_t *)pfn_common;

    return fn_Sd_is_monotonic_aux(pfn, lower, upper, mask);
}


static void
fn_Sd_get_info(const gs_function_t *pfn_common, gs_function_info_t *pfi)
{
    const gs_function_Sd_t *const pfn =
        (const gs_function_Sd_t *)pfn_common;
    long size;
    int i;

    gs_function_get_info_default(pfn_common, pfi);
    pfi->DataSource = &pfn->params.DataSource;
    for (i = 0, size = 1; i < pfn->params.m; ++i)
        size *= pfn->params.Size[i];
    pfi->data_size =
        (size * pfn->params.n * pfn->params.BitsPerSample + 7) >> 3;
}


static int
fn_Sd_get_params(const gs_function_t *pfn_common, gs_param_list *plist)
{
    const gs_function_Sd_t *const pfn =
        (const gs_function_Sd_t *)pfn_common;
    int ecode = fn_common_get_params(pfn_common, plist);
    int code;

    if (pfn->params.Order != 1) {
        if ((code = param_write_int(plist, "Order", &pfn->params.Order)) < 0)
            ecode = code;
    }
    if ((code = param_write_int(plist, "BitsPerSample",
                                &pfn->params.BitsPerSample)) < 0)
        ecode = code;
    if (pfn->params.Encode) {
        if ((code = param_write_float_values(plist, "Encode",
                                             pfn->params.Encode,
                                             2 * pfn->params.m, ((bool)0))) < 0)
            ecode = code;
    }
    if (pfn->params.Decode) {
        if ((code = param_write_float_values(plist, "Decode",
                                             pfn->params.Decode,
                                             2 * pfn->params.n, ((bool)0))) < 0)
            ecode = code;
    }
    if (pfn->params.Size) {
        if ((code = param_write_int_values(plist, "Size", pfn->params.Size,
                                           pfn->params.m, ((bool)0))) < 0)
            ecode = code;
    }
    return ecode;
}


static int
fn_Sd_make_scaled(const gs_function_Sd_t *pfn, gs_function_Sd_t **ppsfn,
                  const gs_range_t *pranges, gs_memory_t *mem)
{
    gs_function_Sd_t *psfn =
        (gs_function_Sd_t *)(*(mem)->procs.alloc_struct)(mem, &st_function_Sd, "fn_Sd_make_scaled");

    int code;

    if (psfn == 0)
        return ((-25));
    psfn->params = pfn->params;
    psfn->params.Encode = 0;
    psfn->params.Decode = 0;
    psfn->params.Size =
        fn_copy_values(pfn->params.Size, pfn->params.m, sizeof(int), mem);
    if ((code = (psfn->params.Size == 0 ?
                 ((-25)) : 0)) < 0 ||
        (code = fn_common_scale((gs_function_t *)psfn,
                                (const gs_function_t *)pfn,
                                pranges, mem)) < 0 ||
        (code = fn_scale_pairs(&psfn->params.Encode, pfn->params.Encode,
                               pfn->params.m, ((void*)0), mem)) < 0 ||
        (code = fn_scale_pairs(&psfn->params.Decode, pfn->params.Decode,
                               pfn->params.n, pranges, mem)) < 0) {
        (((gs_function_t *)psfn)->head.procs.free((gs_function_t *)psfn, ((bool)1), mem));
    } else
        *ppsfn = psfn;
    return code;
}


void
gs_function_Sd_free_params(gs_function_Sd_params_t * params, gs_memory_t * mem)
{
    gs_free_const_object(mem, params->Size, "Size");
    gs_free_const_object(mem, params->Decode, "Decode");
    gs_free_const_object(mem, params->Encode, "Encode");
    fn_common_free_params((gs_function_params_t *) params, mem);
    ((mem)->procs.free_object(mem, params->pole, "gs_function_Sd_free_params"));
    ((mem)->procs.free_object(mem, params->array_step, "gs_function_Sd_free_params"));
    ((mem)->procs.free_object(mem, params->stream_step, "gs_function_Sd_free_params"));
}


static int serialize_array(const float *a, int half_size, stream *s)
{
    uint n;
    const float dummy[2] = {0, 0};
    int i, code;

    if (a != ((void*)0))
        return sputs(s, (const byte *)a, sizeof(a[0]) * half_size * 2, &n);
    for (i = 0; i < half_size; i++) {
        code = sputs(s, (const byte *)dummy, sizeof(dummy), &n);
        if (code < 0)
            return code;
    }
    return 0;
}


static int
gs_function_Sd_serialize(const gs_function_t * pfn, stream *s)
{
    uint n;
    const gs_function_Sd_params_t * p = (const gs_function_Sd_params_t *)&pfn->params;
    gs_function_info_t info;
    int code = fn_common_serialize(pfn, s);
    ulong pos;
    uint count;
    byte buf[100];
    const byte *ptr;

    if (code < 0)
        return code;
    code = sputs(s, (const byte *)&p->Order, sizeof(p->Order), &n);
    if (code < 0)
        return code;
    code = sputs(s, (const byte *)&p->BitsPerSample, sizeof(p->BitsPerSample), &n);
    if (code < 0)
        return code;
    code = serialize_array(p->Encode, p->m, s);
    if (code < 0)
        return code;
    code = serialize_array(p->Decode, p->n, s);
    if (code < 0)
        return code;
    ((pfn)->head.procs.get_info(pfn, &info));
    code = sputs(s, (const byte *)&info.data_size, sizeof(info.data_size), &n);
    if (code < 0)
        return code;
    for (pos = 0; pos < info.data_size; pos += count) {
        count = (((sizeof(buf)) < (info.data_size - pos)) ? (sizeof(buf)) : (info.data_size - pos));
        (*(info.DataSource)->access)(info.DataSource, (ulong)(pos), count, buf, &ptr);
        code = sputs(s, ptr, count, &n);
        if (code < 0)
            return code;
    }
    return 0;
}


int
gs_function_Sd_init(gs_function_t ** ppfn,
                  const gs_function_Sd_params_t * params, gs_memory_t * mem)
{
    static const gs_function_head_t function_Sd_head = {
        0,
        {
            (fn_evaluate_proc_t) fn_Sd_evaluate,
            (fn_is_monotonic_proc_t) fn_Sd_is_monotonic,
            (fn_get_info_proc_t) fn_Sd_get_info,
            (fn_get_params_proc_t) fn_Sd_get_params,
            (fn_make_scaled_proc_t) fn_Sd_make_scaled,
            (fn_free_params_proc_t) gs_function_Sd_free_params,
            fn_common_free,
            (fn_serialize_proc_t) gs_function_Sd_serialize,
        }
    };
    int code;
    int i;

    *ppfn = 0;
    code = fn_check_mnDR((const gs_function_params_t *)params,
                         params->m, params->n);
    if (code < 0)
        return code;
    if (params->m > (64))
        return ((-13));
    switch (params->Order) {
        case 0:
        case 1:
        case 3:
            break;
        default:
            return ((-15));
    }
    switch (params->BitsPerSample) {
        case 1:
        case 2:
        case 4:
        case 8:
        case 12:
        case 16:
        case 24:
        case 32:
            break;
        default:
            return ((-15));
    }
    for (i = 0; i < params->m; ++i)
        if (params->Size[i] <= 0)
            return ((-15));
    {
        gs_function_Sd_t *pfn =
            (gs_function_Sd_t *)(*(mem)->procs.alloc_struct)(mem, &st_function_Sd, "gs_function_Sd_init");

        int bps, sa, ss, i, order;

        if (pfn == 0)
            return ((-25));
        pfn->params = *params;
        if (params->Order == 0)
            pfn->params.Order = 1;
        pfn->params.pole = ((void*)0);
        pfn->params.array_step = ((void*)0);
        pfn->params.stream_step = ((void*)0);
        pfn->head = function_Sd_head;
        pfn->params.array_size = 0;
        if (pfn->params.m == 1 && pfn->params.Order == 1 && pfn->params.n <= 8 && !0) {

        } else {
            pfn->params.array_step = (int *)(*(mem)->procs.alloc_byte_array)(mem, (64), sizeof(int), "gs_function_Sd_init");

            pfn->params.stream_step = (int *)(*(mem)->procs.alloc_byte_array)(mem, (64), sizeof(int), "gs_function_Sd_init");

            if (pfn->params.array_step == ((void*)0) || pfn->params.stream_step == ((void*)0))
                return ((-25));
            bps = pfn->params.BitsPerSample;
            sa = pfn->params.n;
            ss = pfn->params.n * bps;
            order = pfn->params.Order;
            for (i = 0; i < pfn->params.m; i++) {
                pfn->params.array_step[i] = sa * order;
                sa = (pfn->params.Size[i] * order - (order - 1)) * sa;
                pfn->params.stream_step[i] = ss;
                ss = pfn->params.Size[i] * ss;
            }
            pfn->params.pole = (double *)(*(mem)->procs.alloc_byte_array)(mem, sa, sizeof(double), "gs_function_Sd_init");

            if (pfn->params.pole == ((void*)0))
                return ((-25));
            for (i = 0; i < sa; i++)
                pfn->params.pole[i] = double_stub;
            pfn->params.array_size = sa;
        }
        *ppfn = (gs_function_t *) pfn;
    }
    return 0;
}
