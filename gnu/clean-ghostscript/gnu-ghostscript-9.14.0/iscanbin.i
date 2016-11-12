# 1 "./psi/iscanbin.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./psi/iscanbin.c" 2
# 18 "./psi/iscanbin.c"
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
# 19 "./psi/iscanbin.c" 2
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
# 20 "./psi/iscanbin.c" 2
# 1 "./psi/ghost.h" 1
# 22 "./psi/ghost.h"
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
# 23 "./psi/ghost.h" 2
# 1 "./psi/iref.h" 1
# 22 "./psi/iref.h"
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
# 23 "./psi/iref.h" 2
# 34 "./psi/iref.h"
typedef struct ref_s ref;







typedef ushort ref_packed;
# 76 "./psi/iref.h"
typedef int64_t ps_int;
typedef uint64_t ps_uint;
typedef int ps_int32;
typedef uint ps_uint32;
# 109 "./psi/iref.h"
typedef enum {
# 125 "./psi/iref.h"
    t__invalid,
    t_boolean,
    t_dictionary,
    t_file,







    t_array,




    t_mixedarray,
    t_shortarray,
    t_unused_array_,
# 165 "./psi/iref.h"
    t_struct,
    t_astruct,




    t_fontID,
    t_integer,
    t_mark,




    t_name,
    t_null,





    t_operator,
    t_real,
    t_save,

    t_string,
# 200 "./psi/iref.h"
    t_device,
    t_oparray,

    t_next_index
} ref_type;
# 222 "./psi/iref.h"
extern const byte ref_type_properties[1 << 6];
# 365 "./psi/iref.h"
typedef struct ref_attr_print_mask_s {
    ushort mask;
    ushort value;
    char print;
} ref_attr_print_mask_t;
# 390 "./psi/iref.h"
typedef struct dict_s dict;
typedef struct name_s name;



typedef struct stream_s stream;



typedef struct gx_device_s gx_device;



typedef struct obj_header_s obj_header_t;
# 413 "./psi/iref.h"
typedef struct gs_context_state_s i_ctx_t;

typedef int (*op_proc_t)(i_ctx_t *i_ctx_p);
# 428 "./psi/iref.h"
struct tas_s {

    ushort type_attrs;
    ushort _pad;
    uint32_t rsize;
};
struct ref_s {

    struct tas_s tas;

    union v {
        ps_int intval;
        ushort boolval;
        float realval;
        ulong saveid;
        byte *bytes;
        const byte *const_bytes;
        ref *refs;
        const ref *const_refs;
        name *pname;
        const name *const_pname;
        dict *pdict;
        const dict *const_pdict;





        const ref_packed *packed;
        ref_packed *writable_packed;
        op_proc_t opproc;
        struct stream_s *pfile;
        struct gx_device_s *pdevice;
        obj_header_t *pstruct;
        uint64_t dummy;
    } value;
};
# 24 "./psi/ghost.h" 2
# 21 "./psi/iscanbin.c" 2
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
# 22 "./psi/iscanbin.c" 2
# 1 "./base/gxalloc.h" 1
# 25 "./base/gxalloc.h"
typedef struct gs_ref_memory_s gs_ref_memory_t;



# 1 "./base/gsalloc.h" 1
# 32 "./base/gsalloc.h"
typedef struct gs_memory_gc_status_s {

    long vm_threshold;
    long max_vm;
    int *psignal;

    int signal_value;
    bool enabled;

    long requested;
} gs_memory_gc_status_t;
void gs_memory_gc_status(const gs_ref_memory_t *, gs_memory_gc_status_t *);
void gs_memory_set_gc_status(gs_ref_memory_t *, const gs_memory_gc_status_t *);
void gs_memory_set_vm_threshold(gs_ref_memory_t * mem, long val);
void gs_memory_set_vm_reclaim(gs_ref_memory_t * mem, bool enabled);







gs_ref_memory_t *ialloc_alloc_state(gs_memory_t *, uint);





void ialloc_free_state(gs_ref_memory_t *);






int ialloc_add_chunk(gs_ref_memory_t *, ulong, client_name_t);




void ialloc_gc_prepare(gs_ref_memory_t *);


void ialloc_reset(gs_ref_memory_t *);


void ialloc_reset_free(gs_ref_memory_t *);


void ialloc_set_limit(gs_ref_memory_t *);


void ialloc_consolidate_free(gs_ref_memory_t *);
# 29 "./base/gxalloc.h" 2
# 1 "./base/gxobj.h" 1
# 22 "./base/gxobj.h"
# 1 "./base/gxbitmap.h" 1
# 23 "./base/gxbitmap.h"
# 1 "./base/gsbitmap.h" 1
# 22 "./base/gsbitmap.h"
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
# 23 "./base/gsbitmap.h" 2
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
# 23 "./base/gxobj.h" 2
# 34 "./base/gxobj.h"
  typedef gs_id hdr_id_t;

  extern hdr_id_t hdr_id;
# 111 "./base/gxobj.h"
typedef struct obj_header_data_s {
    union _f {
        struct _h {
            unsigned alone:1, pad:((1 << 2) * 8 - 1);
        } h;
        struct _m {
            unsigned _:1, smark:((1 << 2) * 8 - 1);
        } m;
        struct _b {
            unsigned _:1, back:((1 << 2) * 8 - 1);
        } b;
    } f;
    uint size;
    union _t {
        gs_memory_type_ptr_t type;
        size_t reloc;
    } t;





    hdr_id_t hdr_id;

} obj_header_data_t;
# 170 "./base/gxobj.h"
struct obj_header_s {
    union _d {
        obj_header_data_t o;
        byte _pad[( (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) & ((((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) - 1) ? ((sizeof(obj_header_data_t)) + ((((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) - 1)) / (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) * (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) : ((sizeof(obj_header_data_t)) + ((((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) - 1)) & -(((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) )];
    }
    d;
};
# 204 "./base/gxobj.h"
typedef struct chunk_head_s {
    byte *dest;



    obj_header_t free;


} chunk_head_t;
# 30 "./base/gxalloc.h" 2
# 80 "./base/gxalloc.h"
typedef uint string_mark_unit;
# 89 "./base/gxalloc.h"
typedef uint string_reloc_offset;
# 130 "./base/gxalloc.h"
typedef struct chunk_s chunk_t;
struct chunk_s {
    chunk_head_t *chead;




    byte *cbase;
    byte *int_freed_top;



    byte *cbot;

    obj_header_t *rcur;
    byte *rtop;
    byte *ctop;

    byte *climit;
    byte *cend;
    chunk_t *cprev;
    chunk_t *cnext;
    chunk_t *outer;

    uint inner_count;

    bool has_refs;
# 169 "./base/gxalloc.h"
    uint *sfree1;





    uint sfree;

    byte *odest;
    byte *smark;
    uint smark_size;
    byte *sbase;
    string_reloc_offset *sreloc;
    byte *sdest;
    byte *rescan_bot;

    byte *rescan_top;
};


extern const gs_memory_struct_type_t st_chunk;
# 236 "./base/gxalloc.h"
void alloc_init_chunk(chunk_t *, byte *, byte *, bool, chunk_t *);


void alloc_init_free_strings(chunk_t *);
# 251 "./base/gxalloc.h"
typedef struct chunk_locator_s {
    const gs_ref_memory_t *memory;
    chunk_t *cp;
} chunk_locator_t;
bool chunk_locate_ptr(const void *, chunk_locator_t *);







void alloc_close_chunk(gs_ref_memory_t * mem);


void alloc_open_chunk(gs_ref_memory_t * mem);



void alloc_link_chunk(chunk_t *, gs_ref_memory_t *);
void alloc_unlink_chunk(chunk_t *, gs_ref_memory_t *);


void alloc_free_chunk(chunk_t *, gs_ref_memory_t *);
# 293 "./base/gxalloc.h"
struct alloc_save_s;
struct alloc_change_s;
# 332 "./base/gxalloc.h"
struct gs_ref_memory_s {

    gs_memory_t *stable_memory; gs_memory_procs_t procs; gs_lib_ctx_t *gs_lib_ctx; gs_memory_t *non_gc_memory; gs_memory_t *thread_safe_memory;
    uint chunk_size;
    uint large_size;


    uint space;





    gs_memory_gc_status_t gc_status;

    bool is_controlled;

    ulong limit;

    chunk_t *cfirst;
    chunk_t *clast;
    chunk_t cc;
    chunk_t *pcc;
    chunk_locator_t cfreed;
    ulong allocated;

    ulong gc_allocated;

    struct lost_ {

        ulong objects;
        ulong refs;
        ulong strings;
    } lost;




    int save_level;
    uint new_mask;
    uint test_mask;
    stream *streams;
    ref *names_array;

    gs_gc_root_t *roots;

    int num_contexts;
    struct alloc_change_s *changes;
    struct alloc_change_s *scan_limit;
    struct alloc_save_s *saved;
    long total_scanned;
    long total_scanned_after_compacting;
    struct alloc_save_s *reloc_saved;
    gs_memory_status_t previous_status;

    uint largest_free_size;

    obj_header_t *freelists[(((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) + 1)];
};



extern const gs_memory_struct_type_t st_ref_memory;







extern const gs_memory_procs_t gs_ref_memory_procs;
# 23 "./psi/iscanbin.c" 2
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
# 33 "./base/gxiodev.h"
typedef struct gx_io_device_s gx_io_device;

typedef struct gx_io_device_procs_s gx_io_device_procs;





struct file_enum_s;
typedef struct file_enum_s file_enum;





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
# 24 "./psi/iscanbin.c" 2
# 1 "./base/strimpl.h" 1
# 25 "./base/strimpl.h"
# 1 "./base/gsstruct.h" 1
# 93 "./base/gsstruct.h"
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
# 26 "./base/strimpl.h" 2
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
# 25 "./psi/iscanbin.c" 2
# 1 "./base/sfilter.h" 1
# 39 "./base/sfilter.h"
typedef struct stream_exE_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    ushort cstate;
} stream_exE_state;



extern const stream_template s_exE_template;


typedef struct stream_PFBD_state_s stream_PFBD_state;
typedef struct stream_exD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    ushort cstate;
    int binary;
    int lenIV;
    stream_PFBD_state *pfb_state;

    bool keep_spaces;

    int odd;
    long hex_left;

    int skip;
    bool is_leading_space;
} stream_exD_state;




extern const stream_template s_exD_template;



             struct stream_PFBD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    int binary_to_hex;

    int record_type;
    ulong record_left;
} ;



extern const stream_template s_PFBD_template;


typedef struct stream_SFD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    long count;
    gs_const_string eod;
    long skip_count;

    uint match;
    uint copy_count;
    uint copy_ptr;
} stream_SFD_state;



extern const stream_template s_SFD_template;
# 26 "./psi/iscanbin.c" 2
# 1 "./psi/ierrors.h" 1
# 36 "./psi/ierrors.h"
extern const char *const gs_error_names[];
# 27 "./psi/iscanbin.c" 2
# 1 "./psi/ialloc.h" 1
# 22 "./psi/ialloc.h"
# 1 "./psi/imemory.h" 1
# 22 "./psi/imemory.h"
# 1 "./psi/ivmspace.h" 1
# 23 "./psi/ivmspace.h"
# 1 "./base/gsgc.h" 1
# 37 "./base/gsgc.h"
typedef enum {
    i_vm_foreign = 0,
    i_vm_system,
    i_vm_global,
    i_vm_local,
    i_vm_max = i_vm_local
} i_vm_space;
# 65 "./base/gsgc.h"
typedef struct vm_spaces_s vm_spaces;






struct vm_spaces_s {
    void (*vm_reclaim)(vm_spaces *pspaces, bool global);
    union {
        gs_ref_memory_t *indexed[4 ];
        struct _ssn {
            gs_ref_memory_t *foreign;
            gs_ref_memory_t *system;
            gs_ref_memory_t *global;
            gs_ref_memory_t *local;
        } named;
    } memories;
};
# 24 "./psi/ivmspace.h" 2
# 34 "./psi/ivmspace.h"
typedef enum {
    avm_foreign = (i_vm_foreign << 2),
    avm_system = (i_vm_system << 2),
    avm_global = (i_vm_global << 2),
    avm_local = (i_vm_local << 2),
    avm_max = avm_local
} avm_space;
# 23 "./psi/imemory.h" 2
# 40 "./psi/imemory.h"
int gs_alloc_ref_array(gs_ref_memory_t * mem, ref * paref,
                       uint attrs, uint num_refs, client_name_t cname);





int gs_resize_ref_array(gs_ref_memory_t * mem, ref * paref,
                        uint new_num_refs, client_name_t cname);



void gs_free_ref_array(gs_ref_memory_t * mem, ref * paref,
                       client_name_t cname);



int gs_alloc_string_ref(gs_ref_memory_t * mem, ref * psref,
                        uint attrs, uint nbytes, client_name_t cname);




int gs_register_ref_root(gs_memory_t *mem, gs_gc_root_t *root,
                         void **pp, client_name_t cname);
# 82 "./psi/imemory.h"
typedef struct gs_dual_memory_s gs_dual_memory_t;

struct gs_dual_memory_s {
    gs_ref_memory_t *current;
    vm_spaces spaces;
    uint current_space;

    int (*reclaim) (gs_dual_memory_t *, int);

    uint test_mask;
    uint new_mask;
};
# 23 "./psi/ialloc.h" 2
# 63 "./psi/ialloc.h"
int ialloc_init(gs_dual_memory_t *, gs_memory_t *, uint, bool);




void ialloc_reset_requested(gs_dual_memory_t *);


void ialloc_validate_spaces(const gs_dual_memory_t *);



void ivalidate_clean_spaces(i_ctx_t *i_ctx_p);
# 84 "./psi/ialloc.h"
uint imemory_space(const gs_ref_memory_t *);


void ialloc_set_space(gs_dual_memory_t *, uint);


uint imemory_new_mask(const gs_ref_memory_t *);


int imemory_save_level(const gs_ref_memory_t *);
# 28 "./psi/iscanbin.c" 2
# 1 "./psi/iddict.h" 1
# 22 "./psi/iddict.h"
# 1 "./psi/idict.h" 1
# 22 "./psi/idict.h"
# 1 "./psi/iddstack.h" 1
# 24 "./psi/iddstack.h"
typedef struct dict_stack_s dict_stack_t;







void dstack_set_top(dict_stack_t *);


bool dstack_dict_is_permanent(const dict_stack_t *, const ref *);
# 23 "./psi/idict.h" 2








struct dict_s {
    ref values;
    ref keys;
    ref count;

    ref maxlength;
    ref memory;



};




extern const uint dict_max_size;







extern bool dict_auto_expand;
# 63 "./psi/idict.h"
int dict_alloc(gs_ref_memory_t *, uint maxlength, ref * pdref);
# 92 "./psi/idict.h"
int dict_find(const ref * pdref, const ref * key, ref ** ppvalue);





int dict_find_string(const ref * pdref, const char *kstr, ref ** ppvalue);
# 118 "./psi/idict.h"
int dict_put(ref * pdref, const ref * key, const ref * pvalue,
             dict_stack_t *pds);




int dict_put_string(ref * pdref, const char *kstr, const ref * pvalue,
                    dict_stack_t *pds);






int dict_undef(ref * pdref, const ref * key, dict_stack_t *pds);




uint dict_length(const ref * pdref);




uint dict_maxlength(const ref * pdref);





uint dict_max_index(const ref * pdref);







int dict_copy_entries(const ref * dfrom, ref * dto, bool new_only,
                      dict_stack_t *pds);
# 166 "./psi/idict.h"
int dict_resize(ref * pdref, uint newmaxlength, dict_stack_t *pds);





int dict_grow(ref * pdref, dict_stack_t *pds);





int dict_unpack(ref * pdref, dict_stack_t *pds);





int dict_first(const ref * pdref);
# 193 "./psi/idict.h"
int dict_next(const ref * pdref, int index, ref * eltp);







int dict_value_index(const ref * pdref, const ref * pvalue);






int dict_index_entry(const ref * pdref, int index, ref * eltp);
# 246 "./psi/idict.h"
uint dict_round_size_small(uint rsize);
uint dict_round_size_large(uint rsize);
# 23 "./psi/iddict.h" 2
# 1 "./psi/icstate.h" 1
# 24 "./psi/icstate.h"
# 1 "./psi/idsdata.h" 1
# 22 "./psi/idsdata.h"
# 1 "./psi/isdata.h" 1
# 49 "./psi/isdata.h"
typedef ref *s_ptr;
typedef const ref *const_s_ptr;
# 64 "./psi/isdata.h"
typedef struct ref_stack_s ref_stack_t;







typedef struct ref_stack_params_s ref_stack_params_t;
struct ref_stack_s {

    s_ptr p;

    s_ptr bot;
    s_ptr top;

    ref current;
    uint extension_size;
    uint extension_used;

    ref max_stack;
    uint requested;

    uint margin;

    uint body_size;

    ref_stack_params_t *params;
    gs_ref_memory_t *memory;
};
# 23 "./psi/idsdata.h" 2






struct dict_stack_s {

    ref_stack_t stack;
# 41 "./psi/idsdata.h"
    uint min_size;

    int userdict_index;
# 54 "./psi/idsdata.h"
    int def_space;
# 63 "./psi/idsdata.h"
    const ref_packed *top_keys;
    uint top_npairs;
    ref *top_values;




    ref system_dict;

};
# 25 "./psi/icstate.h" 2
# 1 "./psi/iesdata.h" 1
# 25 "./psi/iesdata.h"
typedef struct exec_stack_s {

    ref_stack_t stack;
# 39 "./psi/iesdata.h"
    ref *current_file;

} exec_stack_t;
# 26 "./psi/icstate.h" 2
# 1 "./psi/iosdata.h" 1
# 26 "./psi/iosdata.h"
typedef struct op_stack_s {

    ref_stack_t stack;

} op_stack_t;
# 27 "./psi/icstate.h" 2

# 1 "./psi/opdef.h" 1
# 46 "./psi/opdef.h"
typedef struct {
    const char *oname;
    op_proc_t proc;
} op_def;
# 71 "./psi/opdef.h"
extern const op_def *const op_defs_all[];
# 92 "./psi/opdef.h"
ushort op_find_index(const ref *);
# 104 "./psi/opdef.h"
extern const uint op_def_count;
# 120 "./psi/opdef.h"
typedef struct op_array_table_s {
    ref table;
    ushort *nx_table;
    uint count;
    uint base_index;
    uint attrs;
} op_array_table;





op_array_table *
get_op_array(const gs_memory_t *, int);

op_array_table *
get_global_op_array(const gs_memory_t *);

op_array_table *
get_local_op_array(const gs_memory_t *);






void op_index_ref(const gs_memory_t *,uint, ref *);
# 29 "./psi/icstate.h" 2








typedef struct gs_context_state_s gs_context_state_t;




typedef struct gs_file_path_s *gs_file_path_ptr;


struct gs_context_state_s {
    gs_state *pgs;
    gs_dual_memory_t memory;
    int language_level;
    ref array_packing;
    ref binary_object_format;
    long nv_page_count;

    long rand_state;
    long usertime_total;

    bool keep_usertime;
    int in_superexec;

    ref error_object;
    ref userparams;
    int scanner_options;
    bool LockFilePermissions;
    bool starting_arg_file;
    bool RenderTTNotdef;
    gs_file_path_ptr lib_path;
    ref stdio[3];
    stream *invalid_file_stream;
    op_array_table op_array_table_global;
    op_array_table op_array_table_local;
    int (*time_slice_proc)(i_ctx_t **);
    int time_slice_ticks;
    int (*reschedule_proc)(i_ctx_t **);


    dict_stack_t dict_stack;
    exec_stack_t exec_stack;
    op_stack_t op_stack;
    struct i_plugin_holder_s *plugin_list;
};
extern const long rand_state_initial;
# 24 "./psi/iddict.h" 2
# 29 "./psi/iscanbin.c" 2
# 1 "./psi/dstack.h" 1
# 22 "./psi/dstack.h"
# 1 "./psi/idstack.h" 1
# 24 "./psi/idstack.h"
# 1 "./psi/istack.h" 1
# 51 "./psi/istack.h"
typedef struct ref_stack_block_s {
    ref next;
    ref used;

} ref_stack_block;
# 65 "./psi/istack.h"
int ref_stack_init(ref_stack_t *pstack, const ref *pblock_array,
                   uint bot_guard, uint top_guard,
                   const ref *pguard_value, gs_ref_memory_t *mem,
                   ref_stack_params_t *params);


void ref_stack_allow_expansion(ref_stack_t *pstack, bool expand);


void ref_stack_set_error_codes(ref_stack_t *pstack, int underflow_error,
                               int overflow_error);





int ref_stack_set_max_count(ref_stack_t *pstack, long nmax);





int ref_stack_set_margin(ref_stack_t *pstack, uint margin);


uint ref_stack_count(const ref_stack_t *pstack);
# 103 "./psi/istack.h"
ref *ref_stack_index(const ref_stack_t *pstack, long index);





uint ref_stack_counttomark(const ref_stack_t *pstack);





int ref_stack_store_check(const ref_stack_t *pstack, ref *parray,
                          uint count, uint skip);
# 128 "./psi/istack.h"
int ref_stack_store(const ref_stack_t *pstack, ref *parray, uint count,
                    uint skip, int age, bool check,
                    gs_dual_memory_t *idmem, client_name_t cname);





void ref_stack_pop(ref_stack_t *pstack, uint count);






int ref_stack_pop_block(ref_stack_t *pstack);






int ref_stack_extend(ref_stack_t *pstack, uint request);







int ref_stack_push(ref_stack_t *pstack, uint count);
# 171 "./psi/istack.h"
typedef struct ref_stack_enum_s {
    ref_stack_block *block;
    ref *ptr;
    uint size;
} ref_stack_enum_t;
void ref_stack_enum_begin(ref_stack_enum_t *prse, const ref_stack_t *pstack);
bool ref_stack_enum_next(ref_stack_enum_t *prse);


void ref_stack_cleanup(ref_stack_t *pstack);






void ref_stack_release(ref_stack_t *pstack);




void ref_stack_free(ref_stack_t *pstack);
# 25 "./psi/idstack.h" 2


typedef s_ptr ds_ptr;
typedef const_s_ptr const_ds_ptr;


void dstack_gc_cleanup(dict_stack_t *);







ref *dstack_find_name_by_index(dict_stack_t *, uint);
# 23 "./psi/dstack.h" 2
# 30 "./psi/iscanbin.c" 2
# 1 "./psi/ostack.h" 1
# 22 "./psi/ostack.h"
# 1 "./psi/iostack.h" 1
# 26 "./psi/iostack.h"
typedef s_ptr os_ptr;
typedef const_s_ptr const_os_ptr;
# 23 "./psi/ostack.h" 2
# 31 "./psi/iscanbin.c" 2
# 1 "./psi/iname.h" 1
# 22 "./psi/iname.h"
# 1 "./psi/inames.h" 1
# 32 "./psi/inames.h"
typedef struct name_table_s name_table;


typedef uint name_index_t;



extern const uint name_max_string;
# 49 "./psi/inames.h"
name_table *names_init(ulong size, gs_ref_memory_t *imem);


gs_memory_t *names_memory(const name_table * nt);
# 66 "./psi/inames.h"
int names_ref(name_table * nt, const byte * ptr, uint size, ref * pnref,
              int enterflag);
void names_string_ref(const name_table * nt, const ref * pnref, ref * psref);




int names_enter_string(name_table * nt, const char *str, ref * pnref);





int names_from_string(name_table * nt, const ref * psref, ref * pnref);






void names_invalidate_value_cache(name_table * nt, const ref * pnref);


name_index_t names_index(const name_table * nt, const ref * pnref);
name *names_index_ptr(const name_table * nt, name_index_t nidx);
void names_index_ref(const name_table * nt, name_index_t nidx, ref * pnref);




name_index_t names_next_valid_index(name_table * nt, name_index_t nidx);



bool names_mark_index(name_table * nt, name_index_t nidx);



void *
    names_ref_sub_table(name_table * nt, const ref * pnref);
void *
    names_index_sub_table(name_table * nt, name_index_t nidx);
void *
    names_index_string_sub_table(name_table * nt, name_index_t nidx);
# 23 "./psi/iname.h" 2
# 32 "./psi/iscanbin.c" 2
# 1 "./psi/iscan.h" 1
# 23 "./psi/iscan.h"
# 1 "./base/sa85x.h" 1
# 23 "./base/sa85x.h"
# 1 "./base/sa85d.h" 1
# 24 "./base/sa85d.h"
typedef struct stream_A85D_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];
    int odd;
    ulong word;
    bool pdf_rules;
    bool require_eod;
} stream_A85D_state;
# 45 "./base/sa85d.h"
extern const stream_template s_A85D_template;
# 24 "./base/sa85x.h" 2


typedef struct stream_A85E_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    int count;
    int last_char;
} stream_A85E_state;






extern const stream_template s_A85E_template;
# 24 "./psi/iscan.h" 2
# 1 "./base/sstring.h" 1
# 23 "./base/sstring.h"
typedef struct stream_AXE_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    bool EndOfData;

    int count;
} stream_AXE_state;






extern const stream_template s_AXE_template;


typedef struct stream_AXD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];
    int odd;
} stream_AXD_state;






extern const stream_template s_AXD_template;


typedef struct stream_PSSD_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    bool from_string;

    int depth;
} stream_PSSD_state;






int s_PSSD_init(stream_state * st);






extern const stream_template s_PSSD_template;



extern const stream_template s_PSSE_template;
# 25 "./psi/iscan.h" 2
# 1 "./psi/inamestr.h" 1
# 22 "./psi/inamestr.h"
# 1 "./psi/inameidx.h" 1
# 23 "./psi/inamestr.h" 2
# 68 "./psi/inamestr.h"
typedef struct name_string_s {

    unsigned next_index:16 + 4;
    unsigned foreign_string:1;
    unsigned mark:1;


    unsigned string_size:(14 - 4);
    const byte *string_bytes;
} name_string_t;






typedef struct name_string_sub_table_s {
    name_string_t strings[(1 << (8 + (4 >= 2)))];
} name_string_sub_table_t;
# 26 "./psi/iscan.h" 2
# 42 "./psi/iscan.h"
typedef struct scanner_state_s scanner_state;
# 53 "./psi/iscan.h"
typedef struct dynamic_area_s {
    byte *base;
    byte *next;
    byte *limit;
    bool is_dynamic;
    byte buf[((1 << (14 - 4)) - 1)];
    gs_memory_t *memory;
} dynamic_area;


typedef dynamic_area *da_ptr;


typedef struct scan_binary_state_s {
    int num_format;
    int (*cont)(i_ctx_t *, ref *, scanner_state *);
    ref bin_array;
    uint index;
    uint max_array_index;
    uint min_string_index;
    uint top_size;
    uint size;
    int token_type;
    ulong lsize;
} scan_binary_state;


struct scanner_state_s {
    ref s_file;
    uint s_pstack;

    uint s_pdepth;

    int s_options;
    enum {
        scanning_none,
        scanning_binary,
        scanning_comment,
        scanning_name,
        scanning_string
    } s_scan_type;
    dynamic_area s_da;
    union sss_ {
        scan_binary_state binary;
        struct sns_ {
            int s_name_type;
            bool s_try_number;

        } s_name;
        stream_state st;
        stream_A85D_state a85d;
        stream_AXD_state axd;
        stream_PSSD_state pssd;
    } s_ss;

    struct se_ {
        ref object;
        bool is_name;

        char string[120 +1];
    } s_error;




};


typedef struct scanner_state_dynamic_s {
    scanner_state state;
    gs_memory_t *mem;
} scanner_state_dynamic;


extern const gs_memory_struct_type_t st_scanner_state_dynamic;
# 149 "./psi/iscan.h"
void gs_scanner_init_options(scanner_state *sstate, const ref *fop,
                             int options);


void gs_scanner_init_stream_options(scanner_state *sstate, stream *s,
                                    int options);
# 167 "./psi/iscan.h"
int gs_scan_token(i_ctx_t *i_ctx_p, ref * pref, scanner_state * pstate);





int gs_scan_string_token_options(i_ctx_t *i_ctx_p, ref * pstr, ref * pref,
                                 int options);







int gs_scanner_error_object(i_ctx_t *i_ctx_p, const scanner_state *pstate,
                            ref *pseo);






int gs_scan_handle_refill(i_ctx_t *i_ctx_p, scanner_state * pstate,
                          bool save, op_proc_t cont);





extern int (*gs_scan_dsc_proc) (const byte *, uint);







extern int (*gs_scan_comment_proc) (const byte *, uint);
# 33 "./psi/iscanbin.c" 2
# 1 "./psi/iscanbin.h" 1
# 31 "./psi/iscanbin.h"
int scan_binary_token(i_ctx_t *i_ctx_p, ref *pref, scanner_state *pstate);
# 34 "./psi/iscanbin.c" 2
# 1 "./psi/iutil.h" 1
# 27 "./psi/iutil.h"
void refcpy_to_new(ref * to, const ref * from, uint size,
                   gs_dual_memory_t *dmem);
int refcpy_to_old(ref * aref, uint index, const ref * from, uint size,
                  gs_dual_memory_t *dmem, client_name_t cname);





void refset_null_new(ref * to, uint size, uint new_mask);



bool obj_eq(const gs_memory_t *mem, const ref *, const ref *);



bool obj_ident_eq(const gs_memory_t *mem, const ref *, const ref *);






int obj_string_data(const gs_memory_t *mem, const ref *op, const byte **pchars, uint *plen);
# 66 "./psi/iutil.h"
int obj_cvp(const ref * op, byte *str, uint len, uint * prlen,
        int full_print, uint start_pos, const gs_memory_t *mem, bool restart);
# 82 "./psi/iutil.h"
int obj_cvs(const gs_memory_t *mem, const ref * op, byte * str, uint len, uint * prlen,
            const byte ** pchars);


int array_get(const gs_memory_t *mem, const ref *, long, ref *);





void packed_get(const gs_memory_t *mem, const ref_packed *, ref *);




int refs_check_space(const ref * refs, uint size, uint space);




int string_to_ref(const char *, ref *, gs_ref_memory_t *, client_name_t);



char *ref_to_string(const ref *, gs_memory_t *, client_name_t);




int num_params(const ref *, int, double *);


int float_params(const ref *, int, float *);


int process_float_array(const gs_memory_t *mem, const ref *, int, float *);



int real_param(const ref *, double *);


int float_param(const ref *, float *);


int int_param(const ref *, int, int *);



int make_reals(ref *, const double *, int);
int make_floats(ref *, const float *, int);




typedef struct gs_matrix_s gs_matrix;



int read_matrix(const gs_memory_t *mem, const ref *, gs_matrix *);




int write_matrix_in(ref *op, const gs_matrix *pmat, gs_dual_memory_t *dmem,
                    gs_ref_memory_t *imem);
# 35 "./psi/iscanbin.c" 2

# 1 "./psi/store.h" 1
# 23 "./psi/store.h"
# 1 "./psi/idosave.h" 1
# 27 "./psi/idosave.h"
typedef struct alloc_change_s alloc_change_t;
struct alloc_change_s {
    alloc_change_t *next;
    ref_packed *where;
    ref contents;



    short offset;
};
# 51 "./psi/idosave.h"
int alloc_save_change(gs_dual_memory_t *dmem, const ref *pcont,
                      ref_packed *ptr, client_name_t cname);
int alloc_save_change_in(gs_ref_memory_t *mem, const ref *pcont,
                         ref_packed *ptr, client_name_t cname);

void alloc_save_remove(gs_ref_memory_t *mem, ref_packed *obj, client_name_t cname);

int alloc_save_change_alloc(gs_ref_memory_t *mem, client_name_t cname, alloc_change_t **pcp);
# 24 "./psi/store.h" 2
# 37 "./psi/iscanbin.c" 2
# 1 "./psi/btoken.h" 1
# 31 "./psi/btoken.h"
int create_names_array(ref **ppnames, gs_memory_t *mem,
                       client_name_t cname);


int encode_binary_token(i_ctx_t *i_ctx_p, const ref *obj, ps_int *ref_offset,
                        ps_int *char_offset, byte *str);
# 38 "./psi/iscanbin.c" 2
# 1 "./psi/ibnum.h" 1
# 59 "./psi/ibnum.h"
extern const byte enc_num_bytes[];
# 69 "./psi/ibnum.h"
int num_array_format(const ref *);
uint num_array_size(const ref *, int);
int num_array_get(const gs_memory_t *mem, const ref *, int, uint, ref *);


int sdecode_number(const byte *, int, ref *);
int sdecodeshort(const byte *, int);
uint sdecodeushort(const byte *, int);
int sdecodeint32(const byte *, int);
int sdecode_float(const byte *, int, float *);
# 39 "./psi/iscanbin.c" 2


typedef enum {
    BT_SEQ = 128,
    BT_SEQ_IEEE_MSB = 128,
    BT_SEQ_IEEE_LSB = 129,
    BT_SEQ_NATIVE_MSB = 130,
    BT_SEQ_NATIVE_LSB = 131,

    BT_INT32_MSB = 132,
    BT_INT32_LSB = 133,
    BT_INT16_MSB = 134,
    BT_INT16_LSB = 135,
    BT_INT8 = 136,
    BT_FIXED = 137,
    BT_FLOAT_IEEE_MSB = 138,
    BT_FLOAT_IEEE_LSB = 139,
    BT_FLOAT_NATIVE = 140,
    BT_BOOLEAN = 141,
    BT_STRING_256 = 142,
    BT_STRING_64K_MSB = 143,
    BT_STRING_64K_LSB = 144,
    BT_LITNAME_SYSTEM = 145,
    BT_EXECNAME_SYSTEM = 146,
    BT_LITNAME_USER = 147,
    BT_EXECNAME_USER = 148,
    BT_NUM_ARRAY = 149
} bin_token_type_t;






static const byte bin_token_bytes[(159 - 128 + 1)] =
{
    4, 4, 4, 4, 5, 5, 3, 3, 2, 2, 5, 5, 5,
    2, 2, 3, 3, 2, 2, 2, 2, 4,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};


static const byte bin_token_num_formats[(159 - 128 + 1)] =
{
    0 + 48,
    128 + 48,


    0 + 48,
    128 + 48,




    0 + 0,
    128 + 0,
    0 + 32,
    128 + 32,
    0,
    0,
    0 + 48,
    128 + 48,
    (48 + 1),
    0,
    0,
    0,
    128

};


typedef enum {
    BS_TYPE_NULL = 0,
    BS_TYPE_INTEGER = 1,
    BS_TYPE_REAL = 2,
    BS_TYPE_NAME = 3,
    BS_TYPE_BOOLEAN = 4,
    BS_TYPE_STRING = 5,
    BS_TYPE_EVAL_NAME = 6,
    BS_TYPE_ARRAY = 9,
    BS_TYPE_MARK = 10,
# 131 "./psi/iscanbin.c"
    BS_TYPE_DICTIONARY = 15
} bin_seq_type_t;





static int scan_bos(i_ctx_t *, ref *, scanner_state *);
static void scan_bos_error(scanner_state *, const char *);
static int scan_bin_scalar(i_ctx_t *, ref *, scanner_state *);
static int scan_bin_get_name(scanner_state *, const gs_memory_t *mem, const ref *, int, ref *, const char *);
static int scan_bin_num_array_continue(i_ctx_t *, ref *, scanner_state *);
static int scan_bin_string_continue(i_ctx_t *, ref *, scanner_state *);
static int scan_bos_continue(i_ctx_t *, ref *, scanner_state *);
static byte *scan_bos_resize(i_ctx_t *, scanner_state *, uint, uint);
static int scan_bos_string_continue(i_ctx_t *, ref *, scanner_state *);




int
scan_binary_token(i_ctx_t *i_ctx_p, ref *pref, scanner_state *pstate)
{
    stream *const s = pstate->s_file.value.pfile;
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    register const byte *p; const byte *rlimit;
    int btype, code;
    uint wanted;

    p = (s)->cursor.r.ptr, rlimit = (s)->cursor.r.limit;
    pbs->token_type = btype = *p;
    wanted = bin_token_bytes[btype - 128] - 1;
    if (rlimit - p < wanted) {
        (s)->cursor.r.ptr = p - 1;
        pstate->s_scan_type = scanning_none;
        code = 3;
    } else {
        pbs->num_format = bin_token_num_formats[btype - 128];
        if ((((btype) & ~3) == BT_SEQ))
            code = scan_bos(i_ctx_p, pref, pstate);
        else
            code = scan_bin_scalar(i_ctx_p, pref, pstate);
    }
    if (code == 3 && s->end_status == ((int)(-1)))
        code = ((-18));
    if (code < 0 && pstate->s_error.string[0] == 0)
        snprintf(pstate->s_error.string, sizeof(pstate->s_error.string),
                 "binary token, type=%d", btype);
    return code;
}


static int
scan_bos(i_ctx_t *i_ctx_p, ref *pref, scanner_state *pstate)
{
    stream *const s = pstate->s_file.value.pfile;
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    register const byte *p; const byte *rlimit;
    int num_format = pbs->num_format;
    int code;

    p = (s)->cursor.r.ptr, rlimit = (s)->cursor.r.limit;
    {
        uint rcnt = rlimit - p;
        uint top_size = p[1];
        uint hsize, size;

        if (top_size == 0) {

            uint lsize;

            if (rcnt < 7) {
                (s)->cursor.r.ptr = p - 1;
                pstate->s_scan_type = scanning_none;
                return 3;
            }
            pbs->top_size = top_size = sdecodeushort(p + 2, num_format);
            pbs->lsize = lsize = sdecodeint32(p + 4, num_format);
            if ((size = lsize) != lsize) {
                scan_bos_error(pstate, "bin obj seq length too large");
                return ((-13));
            }
            hsize = 8;
        } else {


            pbs->top_size = top_size;
            pbs->lsize = size = sdecodeushort(p + 2, num_format);
            hsize = 4;
        }
        if (size < hsize || (size - hsize) >> 3 < top_size) {
            scan_bos_error(pstate, "sequence too short");
            return ((-18));
        }
        {


          const unsigned char *q, *rend = p + hsize + top_size*8;

          if (rend > rlimit)
              rend = rlimit;
          for (q = p + hsize + 1; q < rend; q += 8) {
             int c = q[-1] & 0x7f;
             if (c > 10 && c != BS_TYPE_DICTIONARY) {
                scan_bos_error(pstate, "invalid object type");
                return ((-18));
             }
             if (*q != 0) {
                scan_bos_error(pstate, "non-zero unused field");
                return ((-18));
             }
          }
        }







        code = gs_alloc_ref_array(((i_ctx_p->memory).current), &pbs->bin_array, (0x10 + 0x20 +0x40) + 0x80, size / 8, "binary object sequence(objects)");


        if (code < 0)
            return code;
        p += hsize - 1;
        size -= hsize;
        (s)->cursor.r.ptr = p;
        pbs->max_array_index = pbs->top_size = top_size;
        pbs->min_string_index = pbs->size = size;
        pbs->index = 0;
        pstate->s_da.is_dynamic = ((bool)0);
        pstate->s_da.base = pstate->s_da.next =
            pstate->s_da.limit = pstate->s_da.buf;
        code = scan_bos_continue(i_ctx_p, pref, pstate);
        if (code == 3 || code < 0) {

            uint index = pbs->index;

            refset_null_new(pbs->bin_array.value.refs + index, ((&pbs->bin_array)->tas.rsize) - index, ((&(i_ctx_p->memory))->new_mask));

        }
        return code;
    }
}


static void
scan_bos_error(scanner_state *pstate, const char *msg)
{
    snprintf(pstate->s_error.string, sizeof(pstate->s_error.string),
             "bin obj seq, type=%d, elements=%u, size=%lu, %s",
             pstate->s_ss.binary.token_type,
             pstate->s_ss.binary.top_size,
             pstate->s_ss.binary.lsize, msg);
}


static int
scan_bin_scalar(i_ctx_t *i_ctx_p, ref *pref, scanner_state *pstate)
{
    stream *const s = pstate->s_file.value.pfile;
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    register const byte *p; const byte *rlimit;
    int num_format = pbs->num_format, code;
    uint wanted, arg;

    p = (s)->cursor.r.ptr, rlimit = (s)->cursor.r.limit;
    wanted = bin_token_bytes[*p - 128] - 1;
    switch (*p) {
        case BT_INT8:
            ((pref)->value.intval = ((p[1] ^ 128) - 128), ((pref)->tas.type_attrs = ((t_integer) << 8) + (0)) );
            (s)->cursor.r.ptr = p + 1;
            return 0;
        case BT_FIXED:
            num_format = p[1];
            if (!(((num_format) & 127) <= 49))
                return ((-18));
            wanted = 1 + (enc_num_bytes[(num_format) >> 4]);
            if (rlimit - p < wanted) {
                (s)->cursor.r.ptr = p - 1;
                pstate->s_scan_type = scanning_none;
                return 3;
            }
            code = sdecode_number(p + 2, num_format, pref);
            goto rnum;
        case BT_INT32_MSB:
        case BT_INT32_LSB:
        case BT_INT16_MSB:
        case BT_INT16_LSB:
        case BT_FLOAT_IEEE_MSB:
        case BT_FLOAT_IEEE_LSB:
        case BT_FLOAT_NATIVE:
            code = sdecode_number(p + 1, num_format, pref);
          rnum:
            switch (code) {
                case t_integer:
                case t_real:
                    ((pref)->tas.type_attrs = (code) << 8);
                    break;
                case t_null:
                    return ((-18));
                default:
                    return code;
            }
            (s)->cursor.r.ptr = p + wanted;
            return 0;
        case BT_BOOLEAN:
            arg = p[1];
            if (arg & ~1)
                return ((-18));
            ((pref)->value.boolval = (arg), ((pref)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
            (s)->cursor.r.ptr = p + 1;
            return 0;
        case BT_STRING_256:
            arg = *++p;
            goto str;
        case BT_STRING_64K_MSB:
        case BT_STRING_64K_LSB:
            arg = sdecodeushort(p + 1, num_format);
            p += 2;
          str:
            if (s->foreign && rlimit - p >= arg) {






                (s)->cursor.r.ptr = p;
                ((pref)->value.const_bytes = (((s)->cursor.r.ptr + 1)), ((pref)->tas.type_attrs = ((t_string) << 8) + ((0x10 + 0x20 +0x40) | avm_foreign)), ((pref)->tas.rsize = (arg)));
                ((s)->cursor.r.ptr += (arg), 0);
                return 0;
            } else {
                byte *str = (*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_string)(((gs_memory_t *)((i_ctx_p->memory).current)), arg, "string token");

                if (str == 0)
                    return ((-25));
                (s)->cursor.r.ptr = p;
                pstate->s_da.base = pstate->s_da.next = str;
                pstate->s_da.limit = str + arg;
                code = scan_bin_string_continue(i_ctx_p, pref, pstate);
                if (code == 3 || code < 0) {
                    pstate->s_da.is_dynamic = ((bool)1);
                    (((&pbs->bin_array)->tas.type_attrs = ((t_null) << 8) + (0)) );
                    pbs->cont = scan_bin_string_continue;
                }
                return code;
            }
        case BT_LITNAME_SYSTEM:
            code = scan_bin_get_name(pstate, ((gs_memory_t *)((i_ctx_p->memory).current)), ((i_ctx_p->memory).spaces.memories.named.global->names_array), p[1],
                                     pref, "system");
            goto lname;
        case BT_EXECNAME_SYSTEM:
            code = scan_bin_get_name(pstate, ((gs_memory_t *)((i_ctx_p->memory).current)), ((i_ctx_p->memory).spaces.memories.named.global->names_array), p[1],
                                     pref, "system");
            goto xname;
        case BT_LITNAME_USER:
            code = scan_bin_get_name(pstate, ((gs_memory_t *)((i_ctx_p->memory).current)), ((i_ctx_p->memory).spaces.memories.named.local->names_array), p[1],
                                     pref, "user");
          lname:
            if (code < 0)
                return code;
            (s)->cursor.r.ptr = p + 1;
            return 0;
        case BT_EXECNAME_USER:
            code = scan_bin_get_name(pstate, ((gs_memory_t *)((i_ctx_p->memory).current)), ((i_ctx_p->memory).spaces.memories.named.local->names_array), p[1],
                                     pref, "user");
          xname:
            if (code < 0)
                return code;
            ((pref)->tas.type_attrs |= (0x80));
            (s)->cursor.r.ptr = p + 1;
            return 0;
        case BT_NUM_ARRAY:
            num_format = p[1];
            if (!(((num_format) & 127) <= 49))
                return ((-18));
            arg = sdecodeushort(p + 2, num_format);
            code = gs_alloc_ref_array(((i_ctx_p->memory).current), &pbs->bin_array, (0x10 + 0x20 +0x40), arg, "number array token");

            if (code < 0)
                return code;
            pbs->num_format = num_format;
            pbs->index = 0;
            p += 3;
            (s)->cursor.r.ptr = p;
            code = scan_bin_num_array_continue(i_ctx_p, pref, pstate);
            if (code == 3 || code < 0) {

                refset_null_new(pbs->bin_array.value.refs + pbs->index, arg - pbs->index, ((&(i_ctx_p->memory))->new_mask));

                pbs->cont = scan_bin_num_array_continue;
            }
            return code;
    }
    return ((-18));
}


static int
scan_bin_get_name(scanner_state *pstate, const gs_memory_t *mem,
                  const ref *pnames , int index, ref *pref,
                  const char *usstring)
{

    if (pnames == 0 || array_get(mem, pnames, (long)index, pref) < 0 ||
        !((((const byte *)&((pref)->tas.type_attrs))[1]) == (t_name))) {
        snprintf(pstate->s_error.string,
                 sizeof(pstate->s_error.string),
                 "%s%d", usstring, index);
        pstate->s_error.is_name = ((bool)1);
        return ((-21));
    }
    return 0;
}


static int
scan_bin_string_continue(i_ctx_t *i_ctx_p, ref * pref, scanner_state * pstate)
{
    stream *const s = pstate->s_file.value.pfile;
    byte *q = pstate->s_da.next;
    uint wanted = pstate->s_da.limit - q;
    uint rcnt;





    sgets(s, q, wanted, &rcnt);
    if (rcnt == wanted) {

        ((pref)->value.bytes = (pstate->s_da.base), ((pref)->tas.type_attrs = ((t_string) << 8) + ((0x10 + 0x20 +0x40) | (((&(i_ctx_p->memory)))->current_space))), ((pref)->tas.rsize = (pstate->s_da.limit - pstate->s_da.base)));


        return 0;
    }
    pstate->s_da.next = q + rcnt;
    pstate->s_scan_type = scanning_binary;
    return 3;
}


static int
scan_bin_num_array_continue(i_ctx_t *i_ctx_p, ref * pref,
                            scanner_state * pstate)
{
    stream *const s = pstate->s_file.value.pfile;
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    uint index = pbs->index;
    ref *np = pbs->bin_array.value.refs + index;
    uint wanted = (enc_num_bytes[(pbs->num_format) >> 4]);

    for (; index < ((&pbs->bin_array)->tas.rsize); index++, np++) {
        int code;

        if (((s)->cursor.r.limit - (s)->cursor.r.ptr) < wanted) {
            pbs->index = index;
            pstate->s_scan_type = scanning_binary;
            return 3;
        }
        code = sdecode_number(((s)->cursor.r.ptr + 1), pbs->num_format, np);
        switch (code) {
            case t_integer:
            case t_real:
                ((np)->tas.type_attrs = (code) << 8);
                ((s)->cursor.r.ptr += (wanted), 0);
                break;
            case t_null:
                scan_bos_error(pstate, "bad number format");
                return ((-18));
            default:
                return code;
        }
    }
    *pref = pbs->bin_array;
    return 0;
}
# 520 "./psi/iscanbin.c"
static int
scan_bos_continue(i_ctx_t *i_ctx_p, ref * pref, scanner_state * pstate)
{
    stream *const s = pstate->s_file.value.pfile;
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    register const byte *p; const byte *rlimit;
    uint max_array_index = pbs->max_array_index;
    uint min_string_index = pbs->min_string_index;
    int num_format = pbs->num_format;
    uint index = pbs->index;
    uint size = pbs->size;
    ref *abase = pbs->bin_array.value.refs;
    int code;

    pbs->cont = scan_bos_continue;
    p = (s)->cursor.r.ptr, rlimit = (s)->cursor.r.limit;
    for (; index < max_array_index; p += ((uint)8), index++) {
        ref *op = abase + index;
        uint osize;
        int value, atype, attrs;

        (s)->cursor.r.ptr = p;
        if (rlimit - p < ((uint)8)) {
            pbs->index = index;
            pbs->max_array_index = max_array_index;
            pbs->min_string_index = min_string_index;
            pstate->s_scan_type = scanning_binary;
            return 3;
        }
        if (p[2] != 0) {
            scan_bos_error(pstate, "non-zero unused field");
            return ((-18));
        }
        attrs = (p[1] & 128 ? 0x80 : 0);




        osize = sdecodeushort(p + 3, num_format);
        value = sdecodeint32(p + 5, num_format);
        switch (p[1] & 0x7f) {
            case BS_TYPE_NULL:
                if (osize | value) {
                    scan_bos_error(pstate, "non-zero unused field");
                    return ((-18));
                }
                (((op)->tas.type_attrs = ((t_null) << 8) + (0)) );
                break;
            case BS_TYPE_INTEGER:
                if (osize) {
                    scan_bos_error(pstate, "non-zero unused field");
                    return ((-18));
                }
                ((op)->value.intval = (value), ((op)->tas.type_attrs = ((t_integer) << 8) + (0)) );
                break;
            case BS_TYPE_REAL:{
                    float vreal;

                    if (osize != 0) {
                        if (osize > 31) {
                            scan_bos_error(pstate, "invalid number format");
                            return ((-18));
                        }

                        vreal = (float)ldexp((double)value, -(int)osize);
                    } else {
                        code = sdecode_float(p + 5, num_format, &vreal);
                        if (code < 0) {
                            scan_bos_error(pstate, "invalid real number");
                            return code;
                        }
                    }
                    ((op)->value.realval = (vreal), ((op)->tas.type_attrs = ((t_real) << 8) + (0)) );
                    break;
                }
            case BS_TYPE_BOOLEAN:
                if (osize) {
                    scan_bos_error(pstate, "non-zero unused field");
                    return ((-18));
                }
                ((op)->value.boolval = (value != 0), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
                break;
            case BS_TYPE_STRING:
                attrs |= (0x10 + 0x20 +0x40);
              str:
                if (osize == 0) {


                    ((op)->value.bytes = ((byte *)((void*)0)), ((op)->tas.type_attrs = ((t_string) << 8) + (attrs)), ((op)->tas.rsize = (0)));
                    break;
                }
                if (value < max_array_index * ((uint)8) ||
                    value + osize > size
                    ) {
                    scan_bos_error(pstate, "invalid string offset");
                    return ((-18));
                }
                if (value < min_string_index) {

                    uint str_size = size - value;
                    byte *sbase;

                    if (pstate->s_da.is_dynamic)
                        sbase = scan_bos_resize(i_ctx_p, pstate, str_size,
                                                index);
                    else
                        sbase = (*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_string)(((gs_memory_t *)((i_ctx_p->memory).current)), str_size, "bos strings");

                    if (sbase == 0)
                        return ((-25));
                    pstate->s_da.is_dynamic = ((bool)1);
                    pstate->s_da.base = pstate->s_da.next = sbase;
                    pstate->s_da.limit = sbase + str_size;
                    min_string_index = value;
                }
                ((op)->value.bytes = (pstate->s_da.base + (value - min_string_index)), ((op)->tas.type_attrs = ((t_string) << 8) + (attrs | (((&(i_ctx_p->memory)))->current_space))), ((op)->tas.rsize = (osize)));


                break;
            case BS_TYPE_EVAL_NAME:
                attrs |= (0x20 + 0x40);

            case BS_TYPE_NAME:
                switch (osize) {
                    case 0:
                        code = scan_bin_get_name(pstate, ((gs_memory_t *)((i_ctx_p->memory).current)),
                                                 ((i_ctx_p->memory).spaces.memories.named.local->names_array), value, op,
                                                 "user");
                        goto usn;
                    case 0xffff:
                        code = scan_bin_get_name(pstate, ((gs_memory_t *)((i_ctx_p->memory).current)),
                                                 ((i_ctx_p->memory).spaces.memories.named.global->names_array), value, op,
                                                 "system");
                      usn:
                        if (code < 0)
                            return code;
                        ((op)->tas.type_attrs |= (attrs));
                        break;
                    default:
                        goto str;
                }
                break;
            case BS_TYPE_ARRAY:
                atype = t_array;
              arr:
                if (value + osize > min_string_index ||
                    value & (((uint)8) - 1)
                    ) {
                    scan_bos_error(pstate, "bad array offset");
                    return ((-18));
                }
                {
                    uint aindex = value / ((uint)8);

                    max_array_index =
                        (((max_array_index) > (aindex + osize)) ? (max_array_index) : (aindex + osize));
                    ((op)->value.refs = (abase + aindex), ((op)->tas.type_attrs = ((atype) << 8) + ((attrs | (0x10 + 0x20 +0x40) | (((&(i_ctx_p->memory)))->current_space))|((&(i_ctx_p->memory))->new_mask))), ((op)->tas.rsize = (osize)));


                }
                break;
            case BS_TYPE_DICTIONARY:
                if ((osize & 1) != 0 && osize != 1)
                    return ((-18));
                atype = t_mixedarray;
                goto arr;
            case BS_TYPE_MARK:
                if (osize | value) {
                    scan_bos_error(pstate, "non-zero unused field");
                    return ((-18));
                }
                (((op)->tas.type_attrs = ((t_mark) << 8) + (0)) );
                break;
            default:
                scan_bos_error(pstate, "invalid object type");
                return ((-18));
        }
    }
    (s)->cursor.r.ptr = p;


    pbs->index = max_array_index;
    gs_resize_ref_array(((i_ctx_p->memory).current), &pbs->bin_array, max_array_index, "binary object sequence(objects)");

    code = scan_bos_string_continue(i_ctx_p, pref, pstate);
    if (code == 3)
        pbs->cont = scan_bos_string_continue;
    return code;
}



static byte *
scan_bos_resize(i_ctx_t *i_ctx_p, scanner_state * pstate, uint new_size,
                uint index)
{
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    uint old_size = ((uint)((&pstate->s_da)->limit - (&pstate->s_da)->base));
    byte *old_base = pstate->s_da.base;
    byte *new_base = (*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.resize_string)(((gs_memory_t *)((i_ctx_p->memory).current)), old_base, old_size, new_size, "scan_bos_resize");

    byte *relocated_base = new_base + (new_size - old_size);
    uint i;
    ref *aptr = pbs->bin_array.value.refs;

    if (new_base == 0)
        return 0;


    if (relocated_base != old_base)
        for (i = index; i != 0; i--, aptr++)
            if (((((const byte *)&((aptr)->tas.type_attrs))[1]) == (t_string)) && ((aptr)->tas.rsize) != 0)
                aptr->value.bytes =
                    aptr->value.bytes - old_base + relocated_base;
    return new_base;
}


static int
scan_bos_string_continue(i_ctx_t *i_ctx_p, ref * pref,
                         scanner_state * pstate)
{
    scan_binary_state *const pbs = &pstate->s_ss.binary;
    ref rstr;
    ref *op;
    int code = scan_bin_string_continue(i_ctx_p, &rstr, pstate);
    uint space = (((&(i_ctx_p->memory)))->current_space);
    bool rescan = ((bool)0);
    uint i;

    if (code != 0)
        return code;



    for (op = pbs->bin_array.value.refs, i = ((&pbs->bin_array)->tas.rsize);
         i != 0; i--, op++
         )
        switch ((((const byte *)&((op)->tas.type_attrs))[1])) {
            case t_string:
                if ((((op)->tas.type_attrs) & (0x10)))
                    break;

                {
                    uint attrs = ((op)->tas.type_attrs) & (0x20 | 0x80);

                    code = names_ref(((gs_memory_t *)((i_ctx_p->memory).current))->gs_lib_ctx->gs_name_table, op->value.bytes, ((op)->tas.rsize), op, 1);
                    if (code < 0)
                        return code;
                    ((op)->tas.type_attrs |= (attrs));
                }

            case t_name:
                if ((((op)->tas.type_attrs) & (0x20))) {
                    ref *defp = dstack_find_name_by_index(&(i_ctx_p->dict_stack), names_index(((gs_memory_t *)((i_ctx_p->memory).current))->gs_lib_ctx->gs_name_table, op));

                    if (defp == 0)
                        return ((-21));
                    if ( (avm_space)(((defp)->tas.type_attrs) & (((1 << 2) - 1) << 2)) > (space) ) return ((-7));
                    (*(op) = *(defp));
                }
                break;
            case t_mixedarray:
                rescan = ((bool)1);
        }



    if (rescan) {
        rescan = ((bool)0);
        for (op = pbs->bin_array.value.refs, i = ((&pbs->bin_array)->tas.rsize);
             i != 0; i--, op++
             )
            switch ((((const byte *)&((op)->tas.type_attrs))[1])) {
            case t_mixedarray:
                {
                    uint count = ((op)->tas.rsize);
                    ref rdict;

                    if (count == 1) {

                        if (op->value.refs < op)
                            (*(&rdict) = *(op->value.refs));
                        else {
                            rescan = ((bool)1);
                            continue;
                        }
                    } else {
                        code = dict_alloc(((i_ctx_p->memory).current), count >> 1, &rdict);
                        if (code < 0)
                            return code;
                        while (count) {
                            count -= 2;
                            code = dict_put(&rdict, &op->value.refs[count], &op->value.refs[count + 1], &(i_ctx_p->dict_stack));


                            if (code < 0)
                                return code;
                        }
                    }
                    ((&rdict)->tas.type_attrs |= ((0x10 + 0x20 +0x40)));
                    ((&rdict)->tas.type_attrs = ((&rdict)->tas.type_attrs & ~(0x80)) | ((op)->tas.type_attrs & (0x80)));
                    (*(op) = *(&rdict));
                }
                break;
            }
    }



    if (rescan)
        for (op = pbs->bin_array.value.refs, i = ((&pbs->bin_array)->tas.rsize);
             i != 0; i--, op++
            )
            if (((((const byte *)&((op)->tas.type_attrs))[1]) == (t_mixedarray))) {
                const ref *piref = op->value.const_refs;
                ref rdict;

                if (((((const byte *)&((piref)->tas.type_attrs))[1]) == (t_mixedarray)))
                    return ((-18));
                (*(&rdict) = *(piref));
                ((&rdict)->tas.type_attrs = ((&rdict)->tas.type_attrs & ~(0x80)) | ((op)->tas.type_attrs & (0x80)));
                (*(op) = *(&rdict));
            }

    (*(pref) = *(&pbs->bin_array));
    ((pref)->tas.rsize = (pbs->top_size));
    return 1;
}
# 857 "./psi/iscanbin.c"
int
encode_binary_token(i_ctx_t *i_ctx_p, const ref *obj, ps_int *ref_offset,
                    ps_int *char_offset, byte *str)
{
    bin_seq_type_t type;
    uint size = 0;
    int format = (int)(i_ctx_p->binary_object_format).value.intval;
    ps_int value = 0;
    ref nstr;

    switch ((((const byte *)&((obj)->tas.type_attrs))[1])) {
        case t_null:
            type = BS_TYPE_NULL;
            break;
        case t_mark:
            type = BS_TYPE_MARK;
            break;
        case t_integer:
            type = BS_TYPE_INTEGER;
            value = obj->value.intval;
            break;
        case t_real:
            type = BS_TYPE_REAL;
            if (sizeof(obj->value.realval) != sizeof(int)) {

                return ((-15));
            }
            value = *(const ps_int *)&obj->value.realval;






            break;
        case t_boolean:
            type = BS_TYPE_BOOLEAN;
            value = obj->value.boolval;
            break;
        case t_array:
            type = BS_TYPE_ARRAY;
            size = ((obj)->tas.rsize);
            goto aod;
        case t_dictionary:
            type = BS_TYPE_DICTIONARY;
            size = dict_length(obj) << 1;
          aod:value = *ref_offset;
            *ref_offset += size * ((uint)8);
            break;
        case t_string:
            type = BS_TYPE_STRING;
nos:
            size = ((obj)->tas.rsize);
            value = *char_offset;
            *char_offset += size;
            break;
        case t_name:
            type = BS_TYPE_NAME;
            names_string_ref(((gs_memory_t *)((i_ctx_p->memory).current))->gs_lib_ctx->gs_name_table, obj, &nstr);
            ((&nstr)->tas.type_attrs = ((&nstr)->tas.type_attrs & ~(0x80)) | ((obj)->tas.type_attrs & (0x80)));
            obj = &nstr;
            goto nos;
        default:
            return ((-15));
    }
    {
        byte s0 = (byte) size, s1 = (byte) (size >> 8);
        byte v0 = (byte) value, v1 = (byte) (value >> 8),
            v2 = (byte) (value >> 16), v3 = (byte) (value >> 24);

        if (format & 1) {

            str[2] = s1, str[3] = s0;
            str[4] = v3, str[5] = v2, str[6] = v1, str[7] = v0;
        } else {

            str[2] = s0, str[3] = s1;
            str[4] = v0, str[5] = v1, str[6] = v2, str[7] = v3;
        }
    }
    if ((((obj)->tas.type_attrs) & (0x80)))
        type += 128;
    str[0] = (byte) type;
    return 0;
}
