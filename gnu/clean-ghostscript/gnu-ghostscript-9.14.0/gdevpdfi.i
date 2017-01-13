# 1 "./devices/vector/gdevpdfi.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./devices/vector/gdevpdfi.c" 2
# 18 "./devices/vector/gdevpdfi.c"
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
# 19 "./devices/vector/gdevpdfi.c" 2
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
# 20 "./devices/vector/gdevpdfi.c" 2
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
# 21 "./devices/vector/gdevpdfi.c" 2

# 1 "./base/gsdevice.h" 1
# 24 "./base/gsdevice.h"
typedef struct gx_device_s gx_device;




typedef struct gx_device_memory_s gx_device_memory;




typedef struct gs_matrix_s gs_matrix;




typedef struct gs_param_list_s gs_param_list;




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
# 23 "./devices/vector/gdevpdfi.c" 2
# 1 "./base/gsflip.h" 1
# 31 "./base/gsflip.h"
extern int image_flip_planes(byte * buffer, const byte ** planes,
                             int offset, int nbytes,
                             int num_planes, int bits_per_sample);
# 24 "./devices/vector/gdevpdfi.c" 2
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
# 25 "./devices/vector/gdevpdfi.c" 2
# 1 "./base/gscolor2.h" 1
# 23 "./base/gscolor2.h"
# 1 "./base/gscindex.h" 1
# 22 "./base/gscindex.h"
# 1 "./base/gscspace.h" 1
# 23 "./base/gscspace.h"
# 1 "./base/gsiparam.h" 1
# 22 "./base/gsiparam.h"
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
# 23 "./base/gsiparam.h" 2
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




typedef struct stream_s stream;

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
# 25 "./base/gscspace.h" 2
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
# 23 "./base/gscindex.h" 2
# 1 "./base/gxfrac.h" 1
# 27 "./base/gxfrac.h"
typedef short frac;
typedef short signed_frac;
# 24 "./base/gscindex.h" 2
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




typedef struct gx_device_color_s gx_device_color;
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
# 26 "./devices/vector/gdevpdfi.c" 2
# 1 "./devices/vector/gdevpdfx.h" 1
# 22 "./devices/vector/gdevpdfx.h"
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
# 23 "./devices/vector/gdevpdfx.h" 2

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
# 1 "./base/gstparam.h" 1
# 28 "./base/gstparam.h"
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
# 25 "./devices/vector/gdevpdfx.h" 2
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
# 26 "./devices/vector/gdevpdfx.h" 2
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
# 27 "./devices/vector/gdevpdfx.h" 2
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
# 28 "./devices/vector/gdevpdfx.h" 2
# 1 "./base/spprint.h" 1
# 32 "./base/spprint.h"
int stream_write(stream * s, const void *ptr, uint count);


int stream_puts(stream * s, const char *str);
# 44 "./base/spprint.h"
const char *pprintg1(stream * s, const char *format, double v);
const char *pprintg2(stream * s, const char *format, double v1, double v2);
const char *pprintg3(stream * s, const char *format,
                     double v1, double v2, double v3);
const char *pprintg4(stream * s, const char *format,
                     double v1, double v2, double v3, double v4);
const char *pprintg6(stream * s, const char *format,
                     double v1, double v2, double v3, double v4,
                     double v5, double v6);







const char *pprintd1(stream * s, const char *format, int v);
const char *pprintd2(stream * s, const char *format, int v1, int v2);
const char *pprintd3(stream * s, const char *format,
                     int v1, int v2, int v3);
const char *pprintd4(stream * s, const char *format,
                     int v1, int v2, int v3, int v4);


const char *pprintld1(stream * s, const char *format, long v);
const char *pprintld2(stream * s, const char *format, long v1, long v2);
const char *pprintld3(stream * s, const char *format,
                      long v1, long v2, long v3);


const char *pprints1(stream * s, const char *format, const char *str);
const char *pprints2(stream * s, const char *format,
                     const char *str1, const char *str2);
const char *pprints3(stream * s, const char *format,
                     const char *str1, const char *str2, const char *str3);
# 29 "./devices/vector/gdevpdfx.h" 2
# 1 "./devices/vector/gdevpsdf.h" 1
# 27 "./devices/vector/gdevpsdf.h"
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
# 27 "./base/gdevvec.h" 2
# 1 "./base/gxistate.h" 1
# 30 "./base/gxistate.h"
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
# 28 "./devices/vector/gdevpsdf.h" 2

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
# 30 "./devices/vector/gdevpsdf.h" 2
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
# 31 "./devices/vector/gdevpsdf.h" 2
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
# 32 "./devices/vector/gdevpsdf.h" 2
# 1 "./base/spsdf.h" 1
# 36 "./base/spsdf.h"
void s_write_ps_string(stream * s, const byte * str, uint size, int print_ok);






int s_alloc_position_stream(stream ** ps, gs_memory_t * mem);





typedef struct param_printer_params_s {
    const char *prefix;
    const char *suffix;
    const char *item_prefix;
    const char *item_suffix;
    int print_ok;
} param_printer_params_t;




typedef struct printer_param_list_s {
    const gs_param_list_procs *procs; gs_memory_t *memory; bool persistent_keys;
    stream *strm;
    param_printer_params_t params;
    bool any;
} printer_param_list_t;






extern const param_printer_params_t param_printer_params_default;
int s_alloc_param_printer(gs_param_list ** pplist,
                          const param_printer_params_t * ppp, stream * s,
                          gs_memory_t * mem);
void s_free_param_printer(gs_param_list * plist);

int s_init_param_printer(printer_param_list_t *prlist,
                         const param_printer_params_t * ppp, stream * s);
void s_release_param_printer(printer_param_list_t *prlist);
# 33 "./devices/vector/gdevpsdf.h" 2

extern const stream_template s_DCTE_template;
# 45 "./devices/vector/gdevpsdf.h"
typedef struct psdf_image_params_s {
    gs_c_param_list *ACSDict;
    bool AntiAlias;
    bool AutoFilter;
    int Depth;
    gs_c_param_list *Dict;
    bool Downsample;
    float DownsampleThreshold;
    enum psdf_downsample_type {
        ds_Average,
        ds_Bicubic,
        ds_Subsample
    } DownsampleType;


    bool Encode;
    const char *Filter;
    int Resolution;
    const char *AutoFilterStrategy;
    const stream_template *filter_template;
} psdf_image_params;


typedef struct psdf_distiller_params_s {



    bool ASCII85EncodePages;
    enum psdf_auto_rotate_pages {
        arp_None,
        arp_All,
        arp_PageByPage
    } AutoRotatePages;


    enum psdf_binding {
        binding_Left,
        binding_Right
    } Binding;


    bool CompressPages;
    enum psdf_default_rendering_intent {
        ri_Default,
        ri_Perceptual,
        ri_Saturation,
        ri_RelativeColorimetric,
        ri_AbsoluteColorimetric
    } DefaultRenderingIntent;



    bool DetectBlends;
    bool DoThumbnails;
    long ImageMemory;
    bool LockDistillerParams;
    bool LZWEncodePages;
    int OPM;
    bool PreserveOPIComments;
    bool UseFlateCompression;



    gs_const_string CalCMYKProfile;
    gs_const_string CalGrayProfile;
    gs_const_string CalRGBProfile;
    gs_const_string sRGBProfile;
    enum psdf_color_conversion_strategy {
        ccs_LeaveColorUnchanged,
        ccs_UseDeviceDependentColor,
        ccs_UseDeviceIndependentColor,
        ccs_UseDeviceIndependentColorForImages,
        ccs_sRGB,
        ccs_CMYK,
        ccs_Gray,
        ccs_RGB,
        ccs_ByObjectType
    } ColorConversionStrategy;





    bool PreserveHalftoneInfo;
    bool PreserveOverprintSettings;
    enum psdf_transfer_function_info {
        tfi_Preserve,
        tfi_Apply,
        tfi_Remove
    } TransferFunctionInfo;


    enum psdf_ucr_and_bg_info {
        ucrbg_Preserve,
        ucrbg_Remove
    } UCRandBGInfo;





    psdf_image_params ColorImage;
    bool ConvertCMYKImagesToRGB;
    bool ConvertImagesToIndexed;



    psdf_image_params GrayImage;



    psdf_image_params MonoImage;



    gs_param_string_array AlwaysEmbed;
    gs_param_string_array NeverEmbed;
    enum psdf_cannot_embed_font_policy {
        cefp_OK,
        cefp_Warning,
        cefp_Error
    } CannotEmbedFontPolicy;


    bool EmbedAllFonts;
    int MaxSubsetPct;
    bool SubsetFonts;
    gs_param_string PSDocOptions;
    gs_param_string_array PSPageOptions;
} psdf_distiller_params;


extern const stream_template s_CFE_template;
extern const stream_template s_zlibE_template;
# 268 "./devices/vector/gdevpsdf.h"
typedef enum {
    psdf_version_level1 = 1000,
    psdf_version_level1_color = 1100,
    psdf_version_level2 = 2000,
    psdf_version_level2_with_TT = 2010,
    psdf_version_level2_plus = 2017,
    psdf_version_ll3 = 3010
} psdf_version;
# 288 "./devices/vector/gdevpsdf.h"
typedef struct gx_device_psdf_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gs_memory_t *v_memory; const gx_device_vector_procs *vec_procs; char fname[(4096 - 1) + 1]; FILE *file; stream *strm; byte *strmbuf; uint strmbuf_size; int open_options; gs_imager_state state; float *dash_pattern; uint dash_pattern_size; bool fill_used_process_color; bool stroke_used_process_color; gx_hl_saved_color saved_fill_color; gx_hl_saved_color saved_stroke_color; gs_id no_clip_path_id; gs_id clip_path_id; gx_path_type_t fill_options, stroke_options; gs_point scale; bool in_page; gx_device_bbox *bbox_device; gx_color_index black, white; psdf_version version; bool binary_ok; bool HaveCFF; bool HaveTrueTypes; bool HaveCIDSystem; double ParamCompatibilityLevel; psdf_distiller_params params;
} gx_device_psdf;
# 309 "./devices/vector/gdevpsdf.h"
extern const gs_memory_struct_type_t st_device_psdf;
# 333 "./devices/vector/gdevpsdf.h"
int gdev_psdf_get_params(gx_device *dev, gs_param_list *plist);
int gdev_psdf_put_params(gx_device *dev, gs_param_list *plist);




int psdf_setlinewidth(gx_device_vector * vdev, double width);
int psdf_setlinecap(gx_device_vector * vdev, gs_line_cap cap);
int psdf_setlinejoin(gx_device_vector * vdev, gs_line_join join);
int psdf_setmiterlimit(gx_device_vector * vdev, double limit);
int psdf_setdash(gx_device_vector * vdev, const float *pattern,
                 uint count, double offset);
int psdf_setflat(gx_device_vector * vdev, double flatness);
int psdf_setlogop(gx_device_vector * vdev, gs_logical_operation_t lop,
                  gs_logical_operation_t diff);



int psdf_dorect(gx_device_vector * vdev, fixed x0, fixed y0, fixed x1,
                fixed y1, gx_path_type_t type);
int psdf_beginpath(gx_device_vector * vdev, gx_path_type_t type);
int psdf_moveto(gx_device_vector * vdev, double x0, double y0,
                double x, double y, gx_path_type_t type);
int psdf_lineto(gx_device_vector * vdev, double x0, double y0,
                double x, double y, gx_path_type_t type);
int psdf_curveto(gx_device_vector * vdev, double x0, double y0,
                 double x1, double y1, double x2,
                 double y2, double x3, double y3, gx_path_type_t type);
int psdf_closepath(gx_device_vector * vdev, double x0, double y0,
                   double x_start, double y_start, gx_path_type_t type);




typedef struct psdf_binary_writer_s {
    gs_memory_t *memory;
    stream *target;
    stream *strm;
    gx_device_psdf *dev;





} psdf_binary_writer;
extern const gs_memory_struct_type_t st_psdf_binary_writer;







int psdf_begin_binary(gx_device_psdf * pdev, psdf_binary_writer * pbw);



int psdf_encode_binary(psdf_binary_writer * pbw,
                       const stream_template * template, stream_state * ss);



int psdf_CFE_binary(psdf_binary_writer * pbw, int w, int h, bool invert);







int psdf_DCT_filter(gs_param_list *plist ,
                    stream_state *st,
                    int Columns, int Rows, int Colors,
                    psdf_binary_writer *pbw );


bool psdf_is_converting_image_to_RGB(const gx_device_psdf * pdev,
                const gs_imager_state * pis, const gs_pixel_image_t * pim);





int psdf_setup_image_filters(gx_device_psdf *pdev, psdf_binary_writer *pbw,
                             gs_pixel_image_t *pim, const gs_matrix *pctm,
                             const gs_imager_state * pis, bool lossless,
                             bool in_line);

int new_setup_image_filters(gx_device_psdf *pdev, psdf_binary_writer *pbw,
                             gs_pixel_image_t *pim, const gs_matrix *pctm,
                             const gs_imager_state * pis, bool lossless,
                             bool in_line, bool colour_conversion);




int psdf_setup_lossless_filters(gx_device_psdf *pdev, psdf_binary_writer *pbw,
                                gs_pixel_image_t *pim, bool in_line);

int new_setup_lossless_filters(gx_device_psdf *pdev, psdf_binary_writer *pbw,
                                gs_pixel_image_t *pim, bool in_line, bool colour_conversion);


int new_resize_input(psdf_binary_writer *pbw, int width, int num_comps, int bpc_in, int bpc_out);


int psdf_end_binary(psdf_binary_writer * pbw);


int psdf_setup_compression_chooser(psdf_binary_writer *pbw,
                                   gx_device_psdf *pdev,
                                   int width, int height, int depth,
                                   int bits_per_sample);


int psdf_setup_image_to_mask_filter(psdf_binary_writer *pbw, gx_device_psdf *pdev,
            int width, int height, int depth, int bits_per_sample, uint *MaskColor);


int psdf_setup_image_colors_filter(psdf_binary_writer *pbw,
        gx_device_psdf *pdev, gs_pixel_image_t * pim,
        const gs_imager_state *pis);
# 471 "./devices/vector/gdevpsdf.h"
typedef struct psdf_set_color_commands_s {
    const char *setgray;
    const char *setrgbcolor;
    const char *setcmykcolor;
    const char *setcolorspace;
    const char *setcolor;
    const char *setcolorn;
} psdf_set_color_commands_t;

extern const psdf_set_color_commands_t
    psdf_set_fill_color_commands, psdf_set_stroke_color_commands;





gx_color_index psdf_adjust_color_index(gx_device_vector *vdev,
                                       gx_color_index color);


int psdf_set_color(gx_device_vector *vdev, const gx_drawing_color *pdc,
                   const psdf_set_color_commands_t *ppscc, bool UseOldColor);

double psdf_round(double v, int precision, int radix);


int psdf_get_bits(gx_device *dev, int y, byte *data, byte **actual_data);
int psdf_get_bits_rectangle(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread);


int psdf_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
# 30 "./devices/vector/gdevpdfx.h" 2
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
# 31 "./devices/vector/gdevpdfx.h" 2
# 1 "./base/sarc4.h" 1
# 30 "./base/sarc4.h"
struct stream_arcfour_state_s
{
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];
    unsigned int x, y;
    unsigned char S[256];
};



typedef struct stream_arcfour_state_s stream_arcfour_state;


int s_arcfour_set_key(stream_arcfour_state * state, const unsigned char *key,
                      int keylength);




extern const stream_template s_arcfour_template;




int s_arcfour_process_buffer(stream_arcfour_state *ss, byte *buf, int buf_size);
# 32 "./devices/vector/gdevpdfx.h" 2
# 58 "./devices/vector/gdevpdfx.h"
typedef enum {
    PDF_IN_NONE,
    PDF_IN_STREAM,
    PDF_IN_TEXT,
    PDF_IN_STRING
} pdf_context_t;







typedef struct cos_object_s cos_object_t;
typedef struct cos_stream_s cos_stream_t;
typedef struct cos_dict_s cos_dict_t;
typedef struct cos_array_s cos_array_t;
typedef struct cos_value_s cos_value_t;
typedef struct cos_object_procs_s cos_object_procs_t;
typedef const cos_object_procs_t *cos_type_t;




typedef struct pdf_text_state_s pdf_text_state_t;




typedef struct pdf_char_glyph_pairs_s pdf_char_glyph_pairs_t;




typedef enum {




    resourceColorSpace,
    resourceExtGState,
    resourcePattern,
    resourceShading,
    resourceXObject,
    resourceOther,



    resourceFont,



    resourceCharProc,
    resourceCIDFont,
    resourceCMap,
    resourceFontDescriptor,
    resourceGroup,
    resourceSoftMaskDict,
    resourceFunction,
    resourcePage,
    NUM_RESOURCE_TYPES,




    resourceEncoding,
    resourceCIDSystemInfo,
    resourceHalftone,
    resourceLength,
    resourceStream,
    resourceOutline,
    resourceArticle,
    resourceDests,
    resourceLabels,
    resourceThread,
    resourceCatalog,
    resourceEncrypt,
    resourcePagesTree,
    resourceMetadata,
    resourceICC,
    resourceAnnotation,
    resourceEmbeddedFiles,
    resourceFontFile,
    resourceNone



} pdf_resource_type_t;
# 190 "./devices/vector/gdevpdfx.h"
typedef struct pdf_resource_s pdf_resource_t;
struct pdf_resource_s {
    pdf_resource_t *next; pdf_resource_t *prev; gs_id rid; bool named; bool global; char rname[1 + (sizeof(long) * 8 / 3 + 1) + 1 ]; ulong where_used; cos_object_t *object;
};


extern const gs_memory_struct_type_t st_pdf_resource;
# 205 "./devices/vector/gdevpdfx.h"
typedef struct pdf_x_object_s pdf_x_object_t;
struct pdf_x_object_s {
    pdf_x_object_t *next; pdf_resource_t *prev; gs_id rid; bool named; bool global; char rname[1 + (sizeof(long) * 8 / 3 + 1) + 1 ]; ulong where_used; cos_object_t *object;
    int width, height;
    int data_height;
};






typedef enum {
    NoMarks = 0,
    ImageB = 1,
    ImageC = 2,
    ImageI = 4,
    Text = 8
} pdf_procset_t;




typedef struct pdf_char_proc_s pdf_char_proc_t;
typedef struct pdf_char_proc_ownership_s pdf_char_proc_ownership_t;
typedef struct pdf_font_s pdf_font_t;
typedef struct pdf_text_data_s pdf_text_data_t;




typedef struct pdf_outline_node_s {
    long id, parent_id, prev_id, first_id, last_id;
    int count;
    cos_dict_t *action;
} pdf_outline_node_t;
typedef struct pdf_outline_level_s {
    pdf_outline_node_t first;
    pdf_outline_node_t last;
    int left;
} pdf_outline_level_t;






typedef struct pdf_bead_s {
    long id, article_id, prev_id, next_id, page_id;
    gs_rect rect;
} pdf_bead_t;
typedef struct pdf_article_s pdf_article_t;
struct pdf_article_s {
    pdf_article_t *next;
    cos_dict_t *contents;
    pdf_bead_t first;
    pdf_bead_t last;
};
# 277 "./devices/vector/gdevpdfx.h"
typedef struct pdf_resource_list_s {
    pdf_resource_t *chains[16];
} pdf_resource_list_t;
# 288 "./devices/vector/gdevpdfx.h"
typedef struct pdf_stream_position_s {
    long length_id;
    gs_offset_t start_pos;
} pdf_stream_position_t;






typedef struct pdf_text_rotation_s {
    long counts[5];
    int Rotate;
} pdf_text_rotation_t;





typedef struct pdf_page_dsc_info_s {
    int orientation;
    int viewing_orientation;
    gs_rect bounding_box;
} pdf_page_dsc_info_t;






typedef struct pdf_page_s {
    cos_dict_t *Page;
    gs_point MediaBox;
    pdf_procset_t procsets;
    long contents_id;
    long resource_ids[resourceFont + 1];
    long group_id;
    cos_array_t *Annots;
    pdf_text_rotation_t text_rotation;
    pdf_page_dsc_info_t dsc_info;
    bool NumCopies_set;
    int NumCopies;
} pdf_page_t;
# 339 "./devices/vector/gdevpdfx.h"
typedef struct pdf_temp_file_s {
    char file_name[4096];
    FILE *file;
    stream *strm;
    byte *strm_buf;
    stream *save_strm;
} pdf_temp_file_t;



typedef struct gx_device_pdf_s gx_device_pdf;



typedef struct linearisation_record_s {
    int PageUsage;
    int NumPagesUsing;
    int *PageList;
    uint NewObjectNumber;
    gs_offset_t OriginalOffset;
    gs_offset_t LinearisedOffset;
    gs_offset_t Length;
} pdf_linearisation_record_t;






typedef struct page_hint_stream_header_s {
    unsigned int LeastObjectsPerPage;

    unsigned int MostObjectsPerPage;
    unsigned short ObjectNumBits;
    unsigned int LeastPageLength;
    unsigned int MostPageLength;
    unsigned short PageLengthNumBits;
    unsigned int LeastPageOffset;
    unsigned int MostPageOffset;
    unsigned short PageOffsetNumBits;
    unsigned int LeastContentLength;
    unsigned int MostContentLength;
    unsigned short ContentLengthNumBits;
    unsigned int MostSharedObjects;
    unsigned int LargestSharedObject;
    unsigned short SharedObjectNumBits;
} page_hint_stream_header_t;

typedef struct page_hint_stream_s {
    unsigned int NumUniqueObjects;
    unsigned int PageLength;
    unsigned int NumSharedObjects;
    unsigned int *SharedObjectRef;

    gs_offset_t ContentOffset;
    gs_offset_t ContentLength;
} page_hint_stream_t;

typedef struct shared_hint_stream_header_s {
    unsigned int FirstSharedObject;
    gs_offset_t FirstObjectOffset;
    unsigned int FirstPageEntries;
    unsigned int NumSharedObjects;

    unsigned int LeastObjectLength;
    unsigned int MostObjectLength;
    unsigned short LengthNumBits;
} shared_hint_stream_header_t;

typedef struct share_hint_stream_s {
    unsigned int ObjectNumber;
    gs_offset_t ObjectOffset;
    unsigned int ObjectLength;



} shared_hint_stream_t;

typedef struct pdf_linearisation_s {
    FILE *sfile;
    pdf_temp_file_t Lin_File;
    char HintBuffer[256];
    unsigned char HintBits;
    unsigned char HintByte;
    long Catalog_id;
    long Info_id;
    long Pages_id;
    long NumPage1Resources;
    long NumPart1StructureResources;
    long NumSharedResources;
    long NumUniquePageResources;
    long NumPart9Resources;
    long NumNonPageResources;
    long LastResource;
    long MainFileEnd;
    gs_offset_t *Offsets;
    gs_offset_t xref;
    gs_offset_t FirstxrefOffset;
    gs_offset_t FirsttrailerOffset;
    gs_offset_t LDictOffset;
    gs_offset_t FileLength;
    gs_offset_t T;
    gs_offset_t E;
    page_hint_stream_header_t PageHintHeader;
    int NumPageHints;
    page_hint_stream_t *PageHints;
    shared_hint_stream_header_t SharedHintHeader;
    int NumSharedHints;
    shared_hint_stream_t *SharedHints;
} pdf_linearisation_t;
# 461 "./devices/vector/gdevpdfx.h"
typedef struct pdf_font_cache_elem_s pdf_font_cache_elem_t;
struct pdf_font_cache_elem_s {
    pdf_font_cache_elem_t *next;
    gs_id font_id;
    int num_chars;
    int num_widths;
    struct pdf_font_resource_s *pdfont;
    byte *glyph_usage;
    double *real_widths;
    gx_device_pdf *pdev;
};
# 484 "./devices/vector/gdevpdfx.h"
typedef struct pdf_viewer_state_s {
    int transfer_not_identity;
    gs_id transfer_ids[4];
    float opacity_alpha;
    float shape_alpha;
    gs_blend_mode_t blend_mode;
    gs_id halftone_id;
    gs_id black_generation_id;
    gs_id undercolor_removal_id;
    int overprint_mode;
    float smoothness;
    float flatness;
    bool text_knockout;
    bool fill_overprint;
    bool stroke_overprint;
    bool stroke_adjust;
    bool fill_used_process_color;
    bool stroke_used_process_color;
    gx_hl_saved_color saved_fill_color;
    gx_hl_saved_color saved_stroke_color;
    gx_line_params line_params;
    float *dash_pattern;
    uint dash_pattern_size;
    gs_id soft_mask_id;
} pdf_viewer_state;





typedef struct pdf_substream_save_s {
    pdf_context_t context;
    pdf_text_state_t *text_state;
    gx_path *clip_path;
    gs_id clip_path_id;
    int vgstack_bottom;
    stream *strm;
    cos_dict_t *substream_Resources;
    pdf_procset_t procsets;
    bool skip_colors;
    pdf_resource_t *font3;
    pdf_resource_t *accumulating_substream_resource;
    bool charproc_just_accumulated;
    bool accumulating_a_global_object;
    pdf_resource_t *pres_soft_mask_dict;
    gs_const_string objname;
    int last_charpath_op;
} pdf_substream_save;
# 543 "./devices/vector/gdevpdfx.h"
typedef enum {
    pdf_compress_none,
    pdf_compress_LZW,
    pdf_compress_Flate
} pdf_compression_type;


struct gx_device_pdf_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gs_memory_t *v_memory; const gx_device_vector_procs *vec_procs; char fname[(4096 - 1) + 1]; FILE *file; stream *strm; byte *strmbuf; uint strmbuf_size; int open_options; gs_imager_state state; float *dash_pattern; uint dash_pattern_size; bool fill_used_process_color; bool stroke_used_process_color; gx_hl_saved_color saved_fill_color; gx_hl_saved_color saved_stroke_color; gs_id no_clip_path_id; gs_id clip_path_id; gx_path_type_t fill_options, stroke_options; gs_point scale; bool in_page; gx_device_bbox *bbox_device; gx_color_index black, white; psdf_version version; bool binary_ok; bool HaveCFF; bool HaveTrueTypes; bool HaveCIDSystem; double ParamCompatibilityLevel; psdf_distiller_params params;
    bool is_ps2write;

    double CompatibilityLevel;
    int EndPage;
    int StartPage;
    bool Optimize;
    bool ParseDSCCommentsForDocInfo;
    bool ParseDSCComments;
    bool EmitDSCWarnings;
    bool CreateJobTicket;
    bool PreserveEPSInfo;
    bool AutoPositionEPSFiles;
    bool PreserveCopyPage;
    bool UsePrologue;
    int OffOptimizations;


    gs_param_float_array PDFXTrimBoxToMediaBoxOffset;
    gs_param_float_array PDFXBleedBoxToTrimBoxOffset;
    bool PDFXSetBleedBoxToMediaBox;

    bool ReAssignCharacters;
    bool ReEncodeCharacters;
    long FirstObjectNumber;
    bool CompressFonts;
    bool PrintStatistics;
    gs_param_string DocumentUUID;
    gs_param_string InstanceUUID;
    int DocumentTimeSeq;
    bool ForOPDFRead;
    bool Eps2Write;
    bool CompressEntireFile;
    bool ResourcesBeforeUsage;
    bool HavePDFWidths;
    bool HaveStrokeColor;
    bool ProduceDSC;
    bool HaveTransparency;
    bool PatternImagemask;

    bool PDFX;
    int PDFA;
    bool AbortPDFAX;
    long MaxClipPathSize;

    long MaxShadingBitmapSize;


    long MaxInlineImageSize;
    gs_param_int_array DSCEncodingToUnicode;

    gs_param_string OwnerPassword;
    gs_param_string UserPassword;
    uint KeyLength;
    uint Permissions;
    uint EncryptionR;
    gs_param_string NoEncrypt;
    bool EncryptMetadata;

    bool ComputeDocumentDigest;

    byte EncryptionO[32];
    byte EncryptionU[32];
    byte EncryptionKey[16];
    uint EncryptionV;

    bool is_EPS;
    int AccumulatingBBox;
    gs_rect BBox;
    pdf_page_dsc_info_t doc_dsc_info;
    pdf_page_dsc_info_t page_dsc_info;

    bool fill_overprint, stroke_overprint;
    bool remap_fill_color, remap_stroke_color;
    int overprint_mode;
    gs_id halftone_id;
    gs_id transfer_ids[4];
    int transfer_not_identity;
    gs_id black_generation_id, undercolor_removal_id;

    pdf_compression_type compression;
    pdf_compression_type compression_at_page_start;
# 645 "./devices/vector/gdevpdfx.h"
    pdf_temp_file_t xref;




    pdf_temp_file_t asides;







    pdf_temp_file_t streams;





    pdf_temp_file_t pictures;

    long next_id;


    cos_dict_t *Catalog;
    cos_dict_t *Info;
    cos_dict_t *Pages;

    long outlines_id;
    int next_page;
    int max_referred_page;
    long contents_id;
    pdf_context_t context;
    long contents_length_id;
    gs_offset_t contents_pos;
    pdf_procset_t procsets;
    pdf_text_data_t *text;
    pdf_text_rotation_t text_rotation;

    pdf_page_t *pages;
    int num_pages;
    ulong used_mask;
    pdf_resource_list_t resources[NUM_RESOURCE_TYPES];

    pdf_resource_t *cs_Patterns[5];
    pdf_resource_t *Identity_ToUnicode_CMaps[2];
    pdf_resource_t *last_resource;
    pdf_resource_t *OneByteIdentityH;
    gs_id IdentityCIDSystemInfo_id;
    pdf_outline_level_t *outline_levels;
    int outline_depth;
    int max_outline_depth;
    int closed_outline_depth;
    int outlines_open;
    pdf_article_t *articles;
    cos_dict_t *Dests;
    cos_dict_t *EmbeddedFiles;
    byte fileID[16];

    long uuid_time[2];





    cos_dict_t *global_named_objects;



    cos_dict_t *local_named_objects;





    cos_array_t *NI_stack;






    cos_array_t *Namespace_stack;
    pdf_font_cache_elem_t *font_cache;




    gs_point char_width;




    gx_path *clip_path;



    cos_array_t *PageLabels;
    int PageLabels_current_page;
    cos_dict_t *PageLabels_current_label;
# 753 "./devices/vector/gdevpdfx.h"
    gs_text_enum_t *pte;



    pdf_viewer_state *vgstack;
    int vgstack_size;
    int vgstack_depth;
    int vgstack_bottom;
    pdf_viewer_state vg_initial;
    bool vg_initial_set;


    int sbstack_size;
    int sbstack_depth;
    pdf_substream_save *sbstack;
# 776 "./devices/vector/gdevpdfx.h"
    int FormDepth;




    int HighLevelForm;







    int PatternDepth;
    gs_matrix AccumulatedPatternMatrix;


    cos_dict_t *substream_Resources;
    gs_color_space_index pcm_color_info_index;
    bool skip_colors;
    bool AR4_save_bug;
    pdf_resource_t *font3;
    pdf_resource_t *accumulating_substream_resource;
    gs_matrix_fixed charproc_ctm;
    bool accumulating_charproc;
    gs_rect charproc_BBox;
    bool charproc_just_accumulated;


    bool PS_accumulator;

    bool accumulating_a_global_object;




    const pdf_char_glyph_pairs_t *cgp;



    int substituted_pattern_count;
    int substituted_pattern_drop_page;




    gs_id image_mask_id;
    bool image_mask_is_SMask;
    bool image_mask_skip;
    uint image_with_SMask;



    gs_matrix converting_image_matrix;
    double image_mask_scale;

    pdf_resource_t *pres_soft_mask_dict;

    gs_const_string objname;
    int OPDFRead_procset_length;
    void *find_resource_param;
    int last_charpath_op;
    bool type3charpath;
    bool SetPageSize;
    bool RotatePages;
    bool FitPages;
    bool CenterPages;
    bool DoNumCopies;
    bool PreserveSeparation;
    bool PreserveDeviceN;
    int PDFACompatibilityPolicy;
    bool DetectDuplicateImages;
    bool AllowIncrementalCFF;
    bool WantsToUnicode;
    bool AllowPSRepeatFunctions;
    bool IsDistiller;
    bool PreserveSMask;
    bool PreserveTrMode;
    bool NoT3CCITT;




    bool UseOldColor;


    bool Linearise;


    int FirstPage;
    int LastPage;
    pdf_linearisation_record_t
        *ResourceUsage;





    int ResourceUsageSize;
    bool InOutputPage;





};
# 924 "./devices/vector/gdevpdfx.h"
int gdev_pdf_copy_mono(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
int gdev_pdf_copy_color(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
int gdev_pdf_fill_mask(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath);
int gdev_pdf_strip_tile_rectangle(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y);

extern const gx_device_vector_procs pdf_vector_procs;
int gdev_pdf_fill_rectangle(gx_device *dev, int x, int y, int width, int height, gx_color_index color);
int gdev_pdf_fill_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gdev_pdf_stroke_path(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);
int gdev_pdf_fillpage(gx_device *dev, gs_imager_state * pis, gx_device_color *pdevc);

int gdev_pdf_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);

int gdev_pdf_get_params(gx_device *dev, gs_param_list *plist);
int gdev_pdf_put_params(gx_device *dev, gs_param_list *plist);

int gdev_pdf_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);
int gdev_pdf_fill_rectangle_hl_color(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath);

int gdev_pdf_include_color_space(gx_device *dev, gs_color_space *cspace, const byte *res_name, int name_length);

int gdev_pdf_create_compositor(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev);
int gdev_pdf_begin_transparency_group(gx_device *dev, const gs_transparency_group_params_t *ptgp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem);
int gdev_pdf_end_transparency_group(gx_device *dev, gs_imager_state *pis);
int gdev_pdf_begin_transparency_mask(gx_device *dev, const gx_transparency_mask_params_t *ptmp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem);
int gdev_pdf_end_transparency_mask(gx_device *dev, gs_imager_state *pis);
int gdev_pdf_dev_spec_op(gx_device *dev, int op, void *data, int datasize);






void pdf_initialize_ids(gx_device_pdf * pdev);


void pdf_set_process_color_model(gx_device_pdf * pdev, int index);


void pdf_reset_text(gx_device_pdf *pdev);






int ps2write_dsc_header(gx_device_pdf * pdev, int pages);


int pdfwrite_pdf_open_document(gx_device_pdf * pdev);




long pdf_obj_forward_ref(gx_device_pdf * pdev);


long pdf_obj_ref(gx_device_pdf * pdev);


gs_offset_t pdf_stell(gx_device_pdf * pdev);


long pdf_open_obj(gx_device_pdf * pdev, long id, pdf_resource_type_t type);
long pdf_begin_obj(gx_device_pdf * pdev, pdf_resource_type_t type);


int pdf_end_obj(gx_device_pdf * pdev, pdf_resource_type_t type);





int pdf_open_contents(gx_device_pdf * pdev, pdf_context_t context);


int pdf_close_contents(gx_device_pdf * pdev, bool last);



extern const char *const pdf_resource_type_names[];
extern const gs_memory_struct_type_t *const pdf_resource_type_structs[];


int pdf_record_usage(gx_device_pdf *const pdev, long resource_id, int page_num);
int pdf_record_usage_by_parent(gx_device_pdf *const pdev, long resource_id, long parent);
# 1020 "./devices/vector/gdevpdfx.h"
long pdf_open_separate(gx_device_pdf * pdev, long id, pdf_resource_type_t type);
long pdf_begin_separate(gx_device_pdf * pdev, pdf_resource_type_t type);


void pdf_reserve_object_id(gx_device_pdf * pdev, pdf_resource_t *ppres, long id);


int pdf_alloc_aside(gx_device_pdf * pdev, pdf_resource_t ** plist,
                const gs_memory_struct_type_t * pst, pdf_resource_t **ppres,
                long id);

int pdf_begin_aside(gx_device_pdf * pdev, pdf_resource_t **plist,
                    const gs_memory_struct_type_t * pst,
                    pdf_resource_t **ppres, pdf_resource_type_t type);


int pdf_begin_resource(gx_device_pdf * pdev, pdf_resource_type_t rtype,
                       gs_id rid, pdf_resource_t **ppres);


int pdf_begin_resource_body(gx_device_pdf * pdev, pdf_resource_type_t rtype,
                            gs_id rid, pdf_resource_t **ppres);


int pdf_alloc_resource(gx_device_pdf * pdev, pdf_resource_type_t rtype,
                       gs_id rid, pdf_resource_t **ppres, long id);


int pdf_find_same_resource(gx_device_pdf * pdev,
        pdf_resource_type_t rtype, pdf_resource_t **ppres,
        int (*eq)(gx_device_pdf * pdev, pdf_resource_t *pres0, pdf_resource_t *pres1));


pdf_resource_t *pdf_find_resource_by_resource_id(gx_device_pdf * pdev,
                                                pdf_resource_type_t rtype, gs_id id);


pdf_resource_t *pdf_find_resource_by_gs_id(gx_device_pdf * pdev,
                                           pdf_resource_type_t rtype,
                                           gs_id rid);

void pdf_drop_resources(gx_device_pdf * pdev, pdf_resource_type_t rtype,
        int (*cond)(gx_device_pdf * pdev, pdf_resource_t *pres));


void pdf_print_resource_statistics(gx_device_pdf * pdev);


int pdf_cancel_resource(gx_device_pdf * pdev, pdf_resource_t *pres,
        pdf_resource_type_t rtype);


void pdf_forget_resource(gx_device_pdf * pdev, pdf_resource_t *pres1,
        pdf_resource_type_t rtype);


int pdf_substitute_resource(gx_device_pdf *pdev, pdf_resource_t **ppres,
            pdf_resource_type_t rtype,
            int (*eq)(gx_device_pdf *pdev, pdf_resource_t *pres0, pdf_resource_t *pres1),
            bool write);


long pdf_resource_id(const pdf_resource_t *pres);


int pdf_end_separate(gx_device_pdf * pdev, pdf_resource_type_t type);


int pdf_end_aside(gx_device_pdf * pdev, pdf_resource_type_t type);


int pdf_end_resource(gx_device_pdf * pdev, pdf_resource_type_t type);




int pdf_write_resource_objects(gx_device_pdf *pdev, pdf_resource_type_t rtype);






void pdf_reverse_resource_chain(gx_device_pdf *pdev, pdf_resource_type_t rtype);




int pdf_free_resource_objects(gx_device_pdf *pdev, pdf_resource_type_t rtype);





int pdf_store_page_resources(gx_device_pdf *pdev, pdf_page_t *page, bool clear_usage);


void pdf_copy_data(stream *s, FILE *file, gs_offset_t count, stream_arcfour_state *ss);
void pdf_copy_data_safe(stream *s, FILE *file, gs_offset_t position, long count);


int pdf_begin_encrypt(gx_device_pdf * pdev, stream **s, gs_id object_id);

void pdf_end_encrypt(gx_device_pdf * pdev);

int pdf_encrypt_init(const gx_device_pdf * pdev, gs_id object_id, stream_arcfour_state *psarc4);





long pdf_page_id(gx_device_pdf * pdev, int page_num);


pdf_page_t *pdf_current_page(gx_device_pdf *pdev);


cos_dict_t *pdf_current_page_dict(gx_device_pdf *pdev);


int pdf_open_page(gx_device_pdf * pdev, pdf_context_t context);


int pdf_unclip(gx_device_pdf * pdev);


int pdf_write_saved_string(gx_device_pdf * pdev, gs_string * pstr);




int pdf_remember_clip_path(gx_device_pdf * pdev, const gx_clip_path * pcpath);


bool pdf_must_put_clip_path(gx_device_pdf * pdev, const gx_clip_path * pcpath);


int pdf_put_clip_path(gx_device_pdf * pdev, const gx_clip_path * pcpath);



typedef struct pdf_lcvd_s {
    gx_device_memory mdev;
    gx_device_memory *mask;
    gx_device_pdf *pdev;
    int (*std_copy_color)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
    int (*std_fill_rectangle)(gx_device *dev, int x, int y, int width, int height, gx_color_index color);
    int (*std_close_device)(gx_device *dev);
    void (*std_get_clipping_box)(gx_device *dev, gs_fixed_rect *pbox);
    bool mask_is_empty;
    bool path_is_empty;
    bool mask_is_clean;
    bool write_matrix;
    bool has_background;
    gs_matrix m;
    gs_point path_offset;
} pdf_lcvd_t;







int pdf_setup_masked_image_converter(gx_device_pdf *pdev, gs_memory_t *mem, const gs_matrix *m, pdf_lcvd_t **pcvd,
                                 bool need_mask, int x, int y, int w, int h, bool write_on_close);
int pdf_dump_converted_image(gx_device_pdf *pdev, pdf_lcvd_t *cvd);
void pdf_remove_masked_image_converter(gx_device_pdf *pdev, pdf_lcvd_t *cvd, bool need_mask);





void pdf_store_default_Producer(char buf[200]);


typedef struct pdf_filter_names_s {
    const char *ASCII85Decode;
    const char *ASCIIHexDecode;
    const char *CCITTFaxDecode;
    const char *DCTDecode;
    const char *DecodeParms;
    const char *Filter;
    const char *FlateDecode;
    const char *LZWDecode;
    const char *RunLengthDecode;
    const char *JBIG2Decode;
    const char *JPXDecode;
} pdf_filter_names_t;
# 1217 "./devices/vector/gdevpdfx.h"
void pdf_put_matrix(gx_device_pdf *pdev, const char *before,
                    const gs_matrix *pmat, const char *after);


typedef int (*pdf_put_name_chars_proc_t)(stream *, const byte *, uint);
pdf_put_name_chars_proc_t
    pdf_put_name_chars_proc(const gx_device_pdf *pdev);
int pdf_put_name_chars(const gx_device_pdf *pdev, const byte *nstr,
                        uint size);
int pdf_put_name(const gx_device_pdf *pdev, const byte *nstr, uint size);


int pdf_put_string(const gx_device_pdf *pdev, const byte *str, uint size);


int pdf_write_value(const gx_device_pdf *pdev, const byte *vstr, uint size, gs_id object_id);


int pdf_put_filters(cos_dict_t *pcd, gx_device_pdf *pdev, stream *s,
                    const pdf_filter_names_t *pfn);


typedef struct pdf_data_writer_s {
    psdf_binary_writer binary;
    gs_offset_t start;
    gs_offset_t length_pos;
    pdf_resource_t *pres;
    gx_device_pdf *pdev;
    long length_id;
    bool encrypted;
} pdf_data_writer_t;
# 1257 "./devices/vector/gdevpdfx.h"
int pdf_begin_data_stream(gx_device_pdf *pdev, pdf_data_writer_t *pdw,
                          int options, gs_id object_id);
int pdf_append_data_stream_filters(gx_device_pdf *pdev, pdf_data_writer_t *pdw,
                      int orig_options, gs_id object_id);

int pdf_begin_data(gx_device_pdf *pdev, pdf_data_writer_t *pdw);


int pdf_end_data(pdf_data_writer_t *pdw);
# 1283 "./devices/vector/gdevpdfx.h"
int pdf_function(gx_device_pdf *pdev, const gs_function_t *pfn,
                 cos_value_t *pvalue);
int pdf_function_scaled(gx_device_pdf *pdev, const gs_function_t *pfn,
                        const gs_range_t *pranges, cos_value_t *pvalue);


int pdf_write_function(gx_device_pdf *pdev, const gs_function_t *pfn,
                       long *pid);




int pdf_write_font_bbox(gx_device_pdf *pdev, const gs_int_rect *pbox);
int pdf_write_font_bbox_float(gx_device_pdf *pdev, const gs_rect *pbox);
# 1309 "./devices/vector/gdevpdfx.h"
bool pdf_key_eq(const gs_param_string * pcs, const char *str);


int pdfmark_scan_int(const gs_param_string * pstr, int *pvalue);


int pdfmark_process(gx_device_pdf * pdev, const gs_param_string_array * pma);


int pdfmark_close_outline(gx_device_pdf * pdev);


int pdfmark_end_pagelabels(gx_device_pdf * pdev);


int pdfmark_write_article(gx_device_pdf * pdev, const pdf_article_t * part);




bool pdf_objname_is_valid(const byte *data, uint size);





int pdf_find_named(gx_device_pdf * pdev, const gs_param_string * pname,
                   cos_object_t **ppco);





int pdf_create_named(gx_device_pdf *pdev, const gs_param_string *pname,
                     cos_type_t cotype, cos_object_t **ppco, long id);
int pdf_create_named_dict(gx_device_pdf *pdev, const gs_param_string *pname,
                          cos_dict_t **ppcd, long id);







int pdf_refer_named(gx_device_pdf *pdev, const gs_param_string *pname,
                    cos_object_t **ppco);
# 1363 "./devices/vector/gdevpdfx.h"
int pdf_make_named(gx_device_pdf * pdev, const gs_param_string * pname,
                   cos_type_t cotype, cos_object_t **ppco, bool assign_id);
int pdf_make_named_dict(gx_device_pdf * pdev, const gs_param_string * pname,
                        cos_dict_t **ppcd, bool assign_id);






int pdf_get_named(gx_device_pdf * pdev, const gs_param_string * pname,
                  cos_type_t cotype, cos_object_t **ppco);





int pdf_push_namespace(gx_device_pdf *pdev);





int pdf_pop_namespace(gx_device_pdf *pdev);







int pdf_scan_token(const byte **pscan, const byte * end, const byte **ptoken);





int pdf_scan_token_composite(const byte **pscan, const byte * end,
                             const byte **ptoken);


int pdf_replace_names(gx_device_pdf *pdev, const gs_param_string *from,
                      gs_param_string *to);







int write_font_resources(gx_device_pdf *pdev, pdf_resource_list_t *prlist);





pdf_text_data_t *pdf_text_data_alloc(gs_memory_t *mem);
void pdf_set_text_state_default(pdf_text_state_t *pts);
void pdf_text_state_copy(pdf_text_state_t *pts_to, pdf_text_state_t *pts_from);
void pdf_reset_text_page(pdf_text_data_t *ptd);
void pdf_reset_text_state(pdf_text_data_t *ptd);
void pdf_close_text_page(gx_device_pdf *pdev);
int pdf_get_stoted_text_size(pdf_text_state_t *state);



int pdf_char_image_y_offset(const gx_device_pdf *pdev, int x, int y, int h);


int pdf_begin_char_proc(gx_device_pdf * pdev, int w, int h, int x_width,
                        int y_offset, int x_offset, gs_id id, pdf_char_proc_t **ppcp,
                        pdf_stream_position_t * ppos);


int pdf_end_char_proc(gx_device_pdf * pdev, pdf_stream_position_t * ppos);


int pdf_do_char_image(gx_device_pdf * pdev, const pdf_char_proc_t * pcp,
                      const gs_matrix * pimat);


int pdf_start_charproc_accum(gx_device_pdf *pdev);

int pdf_set_charproc_attrs(gx_device_pdf *pdev, gs_font *font, double *pw, int narg,
                gs_text_cache_control_t control, gs_char ch, bool scale_100);

int pdf_end_charproc_accum(gx_device_pdf *pdev, gs_font *font, const pdf_char_glyph_pairs_t *cgp,
                       gs_glyph glyph, gs_char output_char_code, const gs_const_string *gnstr);

int pdf_open_aside(gx_device_pdf *pdev, pdf_resource_type_t rtype,
        gs_id id, pdf_resource_t **ppres, bool reserve_object_id, int options);


int pdf_close_aside(gx_device_pdf *pdev);


int pdf_enter_substream(gx_device_pdf *pdev, pdf_resource_type_t rtype,
                gs_id id, pdf_resource_t **ppres, bool reserve_object_id, bool compress);


int pdf_exit_substream(gx_device_pdf *pdev);

int pdf_add_procsets(cos_dict_t *pcd, pdf_procset_t procsets);

int pdf_add_resource(gx_device_pdf *pdev, cos_dict_t *pcd, const char *key, pdf_resource_t *pres);



int pdf_from_stream_to_text(gx_device_pdf *pdev);
int pdf_from_string_to_text(gx_device_pdf *pdev);
void pdf_close_text_contents(gx_device_pdf *pdev);
# 27 "./devices/vector/gdevpdfi.c" 2
# 1 "./devices/vector/gdevpdfg.h" 1
# 26 "./devices/vector/gdevpdfg.h"
typedef struct pdf_base_font_s pdf_base_font_t;
# 37 "./devices/vector/gdevpdfg.h"
typedef struct pdf_color_space_names_s {
    const char *DeviceCMYK;
    const char *DeviceGray;
    const char *DeviceRGB;
    const char *Indexed;
} pdf_color_space_names_t;




extern const pdf_color_space_names_t
    pdf_color_space_names,
    pdf_color_space_names_short;
# 61 "./devices/vector/gdevpdfg.h"
typedef struct pdf_color_space_s pdf_color_space_t;
struct pdf_color_space_s {
    pdf_color_space_t *next; pdf_resource_t *prev; gs_id rid; bool named; bool global; char rname[1 + (sizeof(long) * 8 / 3 + 1) + 1 ]; ulong where_used; cos_object_t *object;
    const gs_range_t *ranges;
    uint serialized_size;
    byte *serialized;
};
# 78 "./devices/vector/gdevpdfg.h"
int pdf_cspace_init_Device(gs_memory_t *mem, gs_color_space **ppcs, int num_components);




int pdf_convert_ICC(gx_device_pdf *pdev,
                const gs_color_space *pcs, cos_value_t *pvalue,
                const pdf_color_space_names_t *pcsn);
# 98 "./devices/vector/gdevpdfg.h"
int pdf_color_space_named(gx_device_pdf *pdev, cos_value_t *pvalue,
                    const gs_range_t **ppranges,
                    const gs_color_space *pcs,
                    const pdf_color_space_names_t *pcsn,
                    bool by_name, const byte *res_name, int name_length, bool keepICC);

int free_color_space(gx_device_pdf *pdev, pdf_resource_t *pres);
int pdf_indexed_color_space(gx_device_pdf *pdev, cos_value_t *pvalue,
                        const gs_color_space *pcs, cos_array_t *pca, cos_value_t *cos_base);

int convert_separation_alternate(gx_device_pdf * pdev, const gs_imager_state * pis, const gs_color_space *pcs,
                        const gx_drawing_color *pdc, bool *used_process_color,
                        const psdf_set_color_commands_t *ppscc, gs_client_color *pcc, cos_value_t *pvalue, bool by_name);
int convert_DeviceN_alternate(gx_device_pdf * pdev, const gs_imager_state * pis, const gs_color_space *pcs,
                        const gx_drawing_color *pdc, bool *used_process_color,
                        const psdf_set_color_commands_t *ppscc, gs_client_color *pcc, cos_value_t *pvalue, bool by_name);

int pdf_cs_Pattern_colored(gx_device_pdf *pdev, cos_value_t *pvalue);
int pdf_cs_Pattern_uncolored(gx_device_pdf *pdev, cos_value_t *pvalue);
int pdf_cs_Pattern_uncolored_hl(gx_device_pdf *pdev,
        const gs_color_space *pcs, cos_value_t *pvalue);


void pdf_color_space_procsets(gx_device_pdf *pdev,
                              const gs_color_space *pcs);




void pdf_viewer_state_from_imager_state(gx_device_pdf * pdev,
        const gs_imager_state *pis, const gx_device_color *pdevc);


void pdf_prepare_initial_viewer_state(gx_device_pdf * pdev, const gs_imager_state *pis);


void pdf_reset_graphics(gx_device_pdf *pdev);


void pdf_set_initial_color(gx_device_pdf * pdev, gx_hl_saved_color *saved_fill_color,
                    gx_hl_saved_color *saved_stroke_color,
                    bool *fill_used_process_color, bool *stroke_used_process_color);

void rescale_cie_color(gs_range_t *ranges, int num_colorants,
                    const gs_client_color *src, gs_client_color *des);

int pdf_reset_color(gx_device_pdf * pdev, const gs_imager_state * pis,
                const gx_drawing_color *pdc, gx_hl_saved_color * psc,
                bool *used_process_color,
                const psdf_set_color_commands_t *ppscc);

int pdf_set_pure_color(gx_device_pdf * pdev, gx_color_index color,
                   gx_hl_saved_color * psc,
                   bool *used_process_color,
                   const psdf_set_color_commands_t *ppscc);
int pdf_set_drawing_color(gx_device_pdf * pdev, const gs_imager_state * pis,
                      const gx_drawing_color *pdc,
                      gx_hl_saved_color * psc,
                      bool *used_process_color,
                      const psdf_set_color_commands_t *ppscc);




int pdf_try_prepare_fill(gx_device_pdf *pdev, const gs_imager_state *pis);
int pdf_prepare_drawing(gx_device_pdf *pdev, const gs_imager_state *pis, pdf_resource_t **ppres);
int pdf_prepare_fill(gx_device_pdf *pdev, const gs_imager_state *pis);
int pdf_prepare_stroke(gx_device_pdf *pdev, const gs_imager_state *pis);
int pdf_prepare_image(gx_device_pdf *pdev, const gs_imager_state *pis);
int pdf_prepare_imagemask(gx_device_pdf *pdev, const gs_imager_state *pis,
                          const gx_drawing_color *pdcolor);
int pdf_save_viewer_state(gx_device_pdf *pdev, stream *s);
int pdf_restore_viewer_state(gx_device_pdf *pdev, stream *s);
int pdf_end_gstate(gx_device_pdf *pdev, pdf_resource_t *pres);




int pdf_string_to_cos_name(gx_device_pdf *pdev, const byte *str, uint len,
                       cos_value_t *pvalue);



typedef struct pdf_pattern_s pdf_pattern_t;
struct pdf_pattern_s {
    pdf_pattern_t *next; pdf_resource_t *prev; gs_id rid; bool named; bool global; char rname[1 + (sizeof(long) * 8 / 3 + 1) + 1 ]; ulong where_used; cos_object_t *object;
    pdf_pattern_t *substitute;
};






pdf_resource_t *pdf_substitute_pattern(pdf_resource_t *pres);







typedef struct pdf_image_names_s {
    pdf_color_space_names_t color_spaces;
    pdf_filter_names_t filter_names;
    const char *BitsPerComponent;
    const char *ColorSpace;
    const char *Decode;
    const char *Height;
    const char *ImageMask;
    const char *Interpolate;
    const char *Width;
} pdf_image_names_t;





extern const pdf_image_names_t pdf_image_names_full, pdf_image_names_short;




int pdf_put_image_values(cos_dict_t *pcd, gx_device_pdf *pdev,
                         const gs_pixel_image_t *pic,
                         const pdf_image_names_t *pin,
                         const cos_value_t *pcsvalue);



int pdf_put_image_filters(cos_dict_t *pcd, gx_device_pdf *pdev,
                          const psdf_binary_writer * pbw,
                          const pdf_image_names_t *pin);
# 239 "./devices/vector/gdevpdfg.h"
void pdf_make_bitmap_matrix(gs_matrix * pmat, int x, int y, int w, int h,
                            int h_actual);


void pdf_put_image_matrix(gx_device_pdf * pdev, const gs_matrix * pmat,
                          double y_scale);


int pdf_do_image_by_id(gx_device_pdf * pdev, double scale,
             const gs_matrix * pimat, bool in_contents, gs_id id);
int pdf_do_image(gx_device_pdf * pdev, const pdf_resource_t * pres,
                 const gs_matrix * pimat, bool in_contents);




typedef struct pdf_image_writer_s {
    psdf_binary_writer binary[4];
    int alt_writer_count;
    const pdf_image_names_t *pin;
    pdf_resource_t *pres;
    int height;
    cos_stream_t *data;
    const char *end_string;
    cos_dict_t *named;
    pdf_resource_t *pres_mask;
} pdf_image_writer;
extern const gs_memory_struct_type_t st_pdf_image_writer;






void pdf_image_writer_init(pdf_image_writer * piw);






int pdf_begin_write_image(gx_device_pdf * pdev, pdf_image_writer * piw,
                          gx_bitmap_id id, int w, int h,
                          cos_dict_t *pnamed, bool in_line);


int pdf_begin_image_data(gx_device_pdf * pdev, pdf_image_writer * piw,
                         const gs_pixel_image_t * pim,
                         const cos_value_t *pcsvalue,
                         int alt_writer_index);


int pdf_copy_mask_bits(stream *s, const byte *base, int sourcex,
                       int raster, int w, int h, byte invert);


int pdf_copy_color_bits(stream *s, const byte *base, int sourcex,
                        int raster, int w, int h, int bytes_per_pixel);


int
pdf_complete_image_data(gx_device_pdf *pdev, pdf_image_writer *piw, int data_h,
                        int width, int bits_per_pixel);


int pdf_end_image_binary(gx_device_pdf *pdev, pdf_image_writer *piw,
                         int data_h);





int pdf_end_write_image(gx_device_pdf * pdev, pdf_image_writer * piw);




int pdf_make_alt_stream(gx_device_pdf * pdev, psdf_binary_writer * piw);




int pdf_choose_compression(pdf_image_writer * piw, bool end_binary);


int pdf_register_charproc_resource(gx_device_pdf *pdev, gs_id id, pdf_resource_type_t type);




int pdf_store_pattern1_params(gx_device_pdf *pdev, pdf_resource_t *pres,
                        gs_pattern1_instance_t *pinst);


int pdf_put_colored_pattern(gx_device_pdf *pdev, const gx_drawing_color *pdc,
                        const gs_color_space *pcs,
                        const psdf_set_color_commands_t *ppscc,
                        bool have_pattern_streams, pdf_resource_t **ppres);


int pdf_put_uncolored_pattern(gx_device_pdf *pdev, const gx_drawing_color *pdc,
                          const gs_color_space *pcs,
                          const psdf_set_color_commands_t *ppscc,
                          bool have_pattern_streams, pdf_resource_t **ppres);


int pdf_put_pattern2(gx_device_pdf *pdev, const gx_drawing_color *pdc,
                 const psdf_set_color_commands_t *ppscc,
                 pdf_resource_t **ppres);





int pdf_copy_color_data(gx_device_pdf * pdev, const byte * base, int sourcex,
                    int raster, gx_bitmap_id id, int x, int y, int w, int h,
                    gs_image_t *pim, pdf_image_writer *piw,
                    int for_pattern);






int pdf_document_metadata(gx_device_pdf *pdev);
int pdf_get_docinfo_item(gx_device_pdf *pdev, const char *key, char *buf, int buf_length);
# 28 "./devices/vector/gdevpdfi.c" 2
# 1 "./devices/vector/gdevpdfo.h" 1
# 39 "./devices/vector/gdevpdfo.h"
# 1 "./base/smd5.h" 1
# 23 "./base/smd5.h"
# 1 "./base/md5.h" 1
# 63 "./base/md5.h"
typedef unsigned char gs_md5_byte_t;
typedef unsigned int gs_md5_word_t;


typedef struct gs_md5_state_s {
    gs_md5_word_t count[2];
    gs_md5_word_t abcd[4];
    gs_md5_byte_t buf[64];
} gs_md5_state_t;







void gs_md5_init(gs_md5_state_t *pms);


void gs_md5_append(gs_md5_state_t *pms, const gs_md5_byte_t *data, int nbytes);


void gs_md5_finish(gs_md5_state_t *pms, gs_md5_byte_t digest[16]);
# 24 "./base/smd5.h" 2





typedef struct stream_MD5E_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];
    gs_md5_state_t md5;
} stream_MD5E_state;




extern const stream_template s_MD5E_template;

stream *s_MD5E_make_stream(gs_memory_t *mem, byte *digest, int digest_size);






stream *s_MD5C_make_stream(gs_memory_t *mem, stream *strm);

int s_MD5C_get_digest(stream *s, byte *buf, int buf_length);
# 40 "./devices/vector/gdevpdfo.h" 2
# 62 "./devices/vector/gdevpdfo.h"
typedef struct cos_element_s cos_element_t;
typedef struct cos_stream_piece_s cos_stream_piece_t;





            struct cos_object_procs_s {



        void (*release)(cos_object_t *pco, client_name_t cname);



        int (*write)(const cos_object_t *pco, gx_device_pdf *pdev, gs_id object_id);



        int (*equal)(const cos_object_t *pco0, const cos_object_t *pco1, gx_device_pdf *pdev);



        int (*hash)(const cos_object_t *pco0, gs_md5_state_t *md5, gs_md5_byte_t *hash, gx_device_pdf *pdev);

} ;
# 132 "./devices/vector/gdevpdfo.h"
struct cos_object_s { const cos_object_procs_t *cos_procs; long id; cos_element_t *elements; cos_stream_piece_t *pieces; gx_device_pdf *pdev; pdf_resource_t *pres; byte is_open; byte is_graphics; byte written; long length; stream *input_strm; gs_md5_state_t md5; int md5_valid; byte hash[16]; int stream_md5_valid; byte stream_hash[16]; };




extern const cos_object_procs_t cos_generic_procs;


extern const cos_object_procs_t cos_reference_procs;
# 155 "./devices/vector/gdevpdfo.h"
typedef enum {
    COS_VALUE_SCALAR = 0,
    COS_VALUE_CONST,
    COS_VALUE_OBJECT,
    COS_VALUE_RESOURCE
} cos_value_type_t;
struct cos_value_s {
    cos_value_type_t value_type;
    union vc_ {
        gs_string chars;
        cos_object_t *object;
    } contents;
};
# 180 "./devices/vector/gdevpdfo.h"
typedef struct cos_array_element_s cos_array_element_t;
struct cos_array_s { const cos_object_procs_t *cos_procs; long id; cos_array_element_t *elements; cos_stream_piece_t *pieces; gx_device_pdf *pdev; pdf_resource_t *pres; byte is_open; byte is_graphics; byte written; long length; stream *input_strm; gs_md5_state_t md5; int md5_valid; byte hash[16]; int stream_md5_valid; byte stream_hash[16]; };
extern const cos_object_procs_t cos_array_procs;


typedef struct cos_dict_element_s cos_dict_element_t;
struct cos_dict_s { const cos_object_procs_t *cos_procs; long id; cos_dict_element_t *elements; cos_stream_piece_t *pieces; gx_device_pdf *pdev; pdf_resource_t *pres; byte is_open; byte is_graphics; byte written; long length; stream *input_strm; gs_md5_state_t md5; int md5_valid; byte hash[16]; int stream_md5_valid; byte stream_hash[16]; };
extern const cos_object_procs_t cos_dict_procs;


struct cos_stream_s { const cos_object_procs_t *cos_procs; long id; cos_dict_element_t *elements; cos_stream_piece_t *pieces; gx_device_pdf *pdev; pdf_resource_t *pres; byte is_open; byte is_graphics; byte written; long length; stream *input_strm; gs_md5_state_t md5; int md5_valid; byte hash[16]; int stream_md5_valid; byte stream_hash[16]; };
extern const cos_object_procs_t cos_stream_procs;
# 203 "./devices/vector/gdevpdfo.h"
cos_object_t *cos_object_alloc(gx_device_pdf *, client_name_t);
cos_array_t *cos_array_alloc(gx_device_pdf *, client_name_t);
cos_array_t *cos_array_from_floats(gx_device_pdf *, const float *, uint,
                                   client_name_t);
cos_dict_t *cos_dict_alloc(gx_device_pdf *, client_name_t);
cos_stream_t *cos_stream_alloc(gx_device_pdf *, client_name_t);


cos_object_t *cos_reference_alloc(gx_device_pdf *, client_name_t);


gs_memory_t *cos_object_memory(const cos_object_t *);



int cos_become(cos_object_t *, cos_type_t);


void cos_release(cos_object_t *pco, client_name_t cname);

int cos_write(const cos_object_t *pco, gx_device_pdf *pdev, gs_id object_id);
int cos_write_dict_as_ordered_array(cos_object_t *pco, gx_device_pdf *pdev, pdf_resource_type_t type);



const cos_value_t *cos_string_value(cos_value_t *, const byte *, uint);
const cos_value_t *cos_c_string_value(cos_value_t *, const char *);
const cos_value_t *cos_object_value(cos_value_t *, cos_object_t *);


const cos_value_t *cos_resource_value(cos_value_t *, cos_object_t *);
# 246 "./devices/vector/gdevpdfo.h"
int cos_array_put(cos_array_t *, long, const cos_value_t *);
int cos_array_put_no_copy(cos_array_t *, long, const cos_value_t *);
int cos_array_add(cos_array_t *, const cos_value_t *);
int cos_array_add_no_copy(cos_array_t *, const cos_value_t *);
int cos_array_add_c_string(cos_array_t *, const char *);
int cos_array_add_int(cos_array_t *, int);
int cos_array_add_real(cos_array_t *, double);
int cos_array_add_object(cos_array_t *, cos_object_t *);

int cos_array_unadd(cos_array_t *, cos_value_t *);

int cos_dict_put(cos_dict_t *, const byte *, uint, const cos_value_t *);
int cos_dict_put_no_copy(cos_dict_t *, const byte *, uint,
                         const cos_value_t *);
int cos_dict_put_c_key(cos_dict_t *, const char *, const cos_value_t *);
int cos_dict_put_c_key_string(cos_dict_t *, const char *, const byte *, uint);
int cos_dict_put_c_key_int(cos_dict_t *, const char *, int);
int cos_dict_put_c_key_bool(cos_dict_t *pcd, const char *key, bool value);
int cos_dict_put_c_key_real(cos_dict_t *, const char *, double);
int cos_dict_put_c_key_floats(cos_dict_t *, const char *, const float *, uint);
int cos_dict_put_c_key_object(cos_dict_t *, const char *, cos_object_t *);
int cos_dict_put_string(cos_dict_t *, const byte *, uint, const byte *, uint);
int cos_dict_put_string_copy(cos_dict_t *pcd, const char *key, const char *value);
int cos_dict_put_c_strings(cos_dict_t *, const char *, const char *);

int cos_dict_move_all(cos_dict_t *, cos_dict_t *);

int cos_stream_add(cos_stream_t *, uint);
int cos_stream_add_bytes(cos_stream_t *, const byte *, uint);
int cos_stream_add_stream_contents(cos_stream_t *, stream *);
int cos_stream_release_pieces(cos_stream_t *pcs);
cos_dict_t *cos_stream_dict(cos_stream_t *);


int cos_dict_delete_c_key(cos_dict_t *pcd, const char *key);
# 295 "./devices/vector/gdevpdfo.h"
const cos_array_element_t *
    cos_array_element_first(const cos_array_t *);
const cos_array_element_t *
    cos_array_element_next(const cos_array_element_t *, long *,
                           const cos_value_t **);


const cos_value_t *cos_dict_find(const cos_dict_t *, const byte *, uint);
const cos_value_t *cos_dict_find_c_key(const cos_dict_t *, const char *);

int cos_dict_forall(const cos_dict_t *pcd, void *client_data,
        int (*proc)(void *client_data, const byte *key_data, uint key_size, const cos_value_t *v));


typedef struct cos_param_list_writer_s {
    const gs_param_list_procs *procs; gs_memory_t *memory; bool persistent_keys;
    cos_dict_t *pcd;
    int print_ok;
} cos_param_list_writer_t;
int cos_param_list_writer_init(cos_param_list_writer_t *, cos_dict_t *,
                               int print_ok);



stream *cos_write_stream_alloc(cos_stream_t *pcs, gx_device_pdf *pdev,
                               client_name_t cname);


cos_stream_t * cos_stream_from_pipeline(stream *s);

stream * cos_write_stream_from_pipeline(stream *s);


int cos_value_write(const cos_value_t *, gx_device_pdf *);


int cos_dict_elements_write(const cos_dict_t *, gx_device_pdf *);
int cos_stream_elements_write(const cos_stream_t *, gx_device_pdf *);
int cos_stream_contents_write(const cos_stream_t *, gx_device_pdf *);


long cos_stream_length(const cos_stream_t *pcs);



int cos_dict_objects_write(const cos_dict_t *, gx_device_pdf *);
int cos_dict_objects_delete(cos_dict_t *);


int cos_write_object(cos_object_t *pco, gx_device_pdf *pdev, pdf_resource_type_t type);



void cos_value_free(const cos_value_t *, const cos_object_t *, client_name_t);


void cos_free(cos_object_t *pco, client_name_t cname);
# 29 "./devices/vector/gdevpdfi.c" 2

# 1 "./base/gximage3.h" 1
# 22 "./base/gximage3.h"
# 1 "./base/gsiparm3.h" 1
# 36 "./base/gsiparm3.h"
typedef enum {
    interleave_chunky = 1,
    interleave_scan_lines = 2,
    interleave_separate_source = 3
} gs_image3_interleave_type_t;
typedef struct gs_image3_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;
    int InterleaveType;
    gs_data_image_t MaskDict;
} gs_image3_t;
# 54 "./base/gsiparm3.h"
void gs_image3_t_init(gs_image3_t * pim, gs_color_space * color_space,
                      gs_image3_interleave_type_t interleave_type);
# 23 "./base/gximage3.h" 2
# 39 "./base/gximage3.h"
typedef int (*image3_make_mid_proc_t)(gx_device **pmidev, gx_device *dev, int width, int height, gs_memory_t *mem);
# 60 "./base/gximage3.h"
typedef int (*image3_make_mcde_proc_t)( gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pic, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *mem, gx_image_enum_common_t **pinfo, gx_device **pmcdev, gx_device *midev, gx_image_enum_common_t *pminfo, const gs_int_point *origin);





int gx_begin_image3_generic(gx_device * dev,
                            const gs_imager_state *pis,
                            const gs_matrix *pmat,
                            const gs_image_common_t *pic,
                            const gs_int_rect *prect,
                            const gx_drawing_color *pdcolor,
                            const gx_clip_path *pcpath, gs_memory_t *mem,
                            int (*make_mid)(gx_device **pmidev, gx_device *dev, int width, int height, gs_memory_t *mem),
                            int (*make_mcde)( gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pic, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *mem, gx_image_enum_common_t **pinfo, gx_device **pmcdev, gx_device *midev, gx_image_enum_common_t *pminfo, const gs_int_point *origin),
                            gx_image_enum_common_t **pinfo);
# 31 "./devices/vector/gdevpdfi.c" 2
# 1 "./base/gximag3x.h" 1
# 22 "./base/gximag3x.h"
# 1 "./base/gsipar3x.h" 1
# 44 "./base/gsipar3x.h"
typedef struct gs_image3x_mask_s {
    int InterleaveType;
    float Matte[(64)];
    bool has_Matte;





    gs_data_image_t MaskDict;
} gs_image3x_mask_t;
typedef struct gs_image3x_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;
    gs_image3x_mask_t Opacity, Shape;
} gs_image3x_t;
# 68 "./base/gsipar3x.h"
void gs_image3x_t_init(gs_image3x_t *pim, gs_color_space *color_space);
# 23 "./base/gximag3x.h" 2
# 39 "./base/gximag3x.h"
typedef int (*image3x_make_mid_proc_t)(gx_device **pmidev, gx_device *dev, int width, int height, int depth, gs_memory_t *mem);
# 61 "./base/gximag3x.h"
typedef int (*image3x_make_mcde_proc_t)( gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pic, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *mem, gx_image_enum_common_t **pinfo, gx_device **pmcdev, gx_device *midev[2], gx_image_enum_common_t *pminfo[2], const gs_int_point origin[2], const gs_image3x_t *pim);





int gx_begin_image3x_generic(gx_device * dev,
                             const gs_imager_state *pis,
                             const gs_matrix *pmat,
                             const gs_image_common_t *pic,
                             const gs_int_rect *prect,
                             const gx_drawing_color *pdcolor,
                             const gx_clip_path *pcpath, gs_memory_t *mem,
                             int (*make_mid)(gx_device **pmidev, gx_device *dev, int width, int height, int depth, gs_memory_t *mem),
                             int (*make_mcde)( gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pic, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *mem, gx_image_enum_common_t **pinfo, gx_device **pmcdev, gx_device *midev[2], gx_image_enum_common_t *pminfo[2], const gs_int_point origin[2], const gs_image3x_t *pim),
                             gx_image_enum_common_t **pinfo);
# 32 "./devices/vector/gdevpdfi.c" 2
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
# 33 "./devices/vector/gdevpdfi.c" 2
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
# 34 "./devices/vector/gdevpdfi.c" 2
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
# 35 "./devices/vector/gdevpdfi.c" 2
# 1 "./base/gxcolor2.h" 1
# 29 "./base/gxcolor2.h"
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
# 36 "./devices/vector/gdevpdfi.c" 2

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
# 38 "./devices/vector/gdevpdfi.c" 2
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
# 39 "./devices/vector/gdevpdfi.c" 2
# 1 "./base/gsform1.h" 1
# 19 "./base/gsform1.h"
typedef struct gs_form_template_s {
    gs_rect BBox;
    gs_matrix form_matrix;
    gs_matrix CTM;
    gx_clip_path * pcpath;
} gs_form_template_t;
# 40 "./devices/vector/gdevpdfi.c" 2
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
# 41 "./devices/vector/gdevpdfi.c" 2


static int pdf_image_plane_data(gx_image_enum_common_t *info, const gx_image_plane_t *planes, int height, int *rows_used);
static int pdf_image_end_image(gx_image_enum_common_t *info, bool draw_last);
static int pdf_image_end_image_object(gx_image_enum_common_t *info, bool draw_last);
static int pdf_image_end_image_object2(gx_image_enum_common_t *info, bool draw_last);
static int pdf_image_end_image_cvd(gx_image_enum_common_t *info, bool draw_last);
static int pdf_image3_make_mid(gx_device **pmidev, gx_device *dev, int width, int height, gs_memory_t *mem);
static int pdf_image3_make_mcde( gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pic, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *mem, gx_image_enum_common_t **pinfo, gx_device **pmcdev, gx_device *midev, gx_image_enum_common_t *pminfo, const gs_int_point *origin);
static int pdf_image3x_make_mid(gx_device **pmidev, gx_device *dev, int width, int height, int depth, gs_memory_t *mem);
static int pdf_image3x_make_mcde( gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pic, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *mem, gx_image_enum_common_t **pinfo, gx_device **pmcdev, gx_device *midev[2], gx_image_enum_common_t *pminfo[2], const gs_int_point origin[2], const gs_image3x_t *pim);

static const gx_image_enum_procs_t pdf_image_enum_procs = {
    pdf_image_plane_data,
    pdf_image_end_image
};
static const gx_image_enum_procs_t pdf_image_object_enum_procs = {
    pdf_image_plane_data,
    pdf_image_end_image_object
};
static const gx_image_enum_procs_t pdf_image_object_enum_procs2 = {
    pdf_image_plane_data,
    pdf_image_end_image_object2
};
static const gx_image_enum_procs_t pdf_image_cvd_enum_procs = {
    gx_image1_plane_data,
    pdf_image_end_image_cvd,
    gx_image1_flush
};




typedef struct pdf_image_enum_s {
    const gx_image_type_t *image_type; const gx_image_enum_procs_t *procs; gx_device *dev; gs_memory_t *memory; gs_id id; bool skipping; int num_planes; int plane_depths[((64) + 1)]; int plane_widths[((64) + 1)];
    int width;
    int bits_per_pixel;
    int rows_left;
    pdf_image_writer writer;
    gs_matrix mat;
} pdf_image_enum;
static gs_ptr_type_t pdf_image_enum_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static void pdf_image_enum_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static const gs_memory_struct_type_t st_pdf_image_enum = { sizeof(pdf_image_enum), "pdf_image_enum", 0, 0, pdf_image_enum_enum_ptrs, pdf_image_enum_reloc_ptrs, 0, 0 };


static gs_ptr_type_t pdf_image_enum_enum_ptrs(const gs_memory_t *mem, const void *vptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { const pdf_image_enum *pie = vptr; switch ( index ) { default:
    if (index < (3 * 4 + 4)) {
        gs_ptr_type_t ret =
            (*(st_pdf_image_writer).enum_ptrs)(mem, &pie->writer, sizeof(pie->writer), index, pep, &(st_pdf_image_writer), gcst);


        if (ret == 0)
            return (pep->ptr = (const void *)(0), (&ptr_struct_procs));
        return ret;
    }
    return (*(st_gx_image_enum_common).enum_ptrs)(mem, vptr, size, index-((3 * 4 + 4)), pep, &(st_gx_image_enum_common), gcst);

} }
static void pdf_image_enum_reloc_ptrs(void *vptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { pdf_image_enum *pie = vptr;
{
    (*(st_pdf_image_writer).reloc_ptrs)(&pie->writer, sizeof(pie->writer), &(st_pdf_image_writer), gcst);
    (*(st_gx_image_enum_common).reloc_ptrs)(vptr, size, &(st_gx_image_enum_common), gcst);
}
}





static bool
can_write_image_in_line(const gx_device_pdf *pdev, const gs_image_t *pim)
{
    return ((bool)1);
}
# 123 "./devices/vector/gdevpdfi.c"
static int
color_is_black_or_white(gx_device *dev, const gx_drawing_color *pdcolor)
{
    return (!((pdcolor)->type == (&gx_dc_type_data_pure)) ? -1 :
            ((pdcolor)->colors.pure) == gx_device_black(dev) ? 0 :
            ((pdcolor)->colors.pure) == gx_device_white(dev) ? 1 : -1);
}
static int
pdf_convert_image4_to_image1(gx_device_pdf *pdev,
                             const gs_imager_state *pis,
                             const gx_drawing_color *pbcolor,
                             const gs_image4_t *pim4, gs_image_t *pim1,
                             gx_drawing_color *pdcolor)
{
    if (pim4->BitsPerComponent == 1 &&
        pim4->ColorSpace->type->num_components(pim4->ColorSpace) == 1 &&
        (pim4->MaskColor_is_range ?
         pim4->MaskColor[0] | pim4->MaskColor[1] :
         pim4->MaskColor[0]) <= 1
        ) {
        gx_device *const dev = (gx_device *)pdev;
        const gs_color_space *pcs = pim4->ColorSpace;
        bool write_1s = !pim4->MaskColor[0];
        gs_client_color cc;
        int code;







        cc.paint.values[0] = pim4->Decode[(int)write_1s];
        cc.pattern = 0;
        code = pcs->type->remap_color(&cc, pcs, pdcolor, pis, dev,
                                      gs_color_select_texture);
        if (code < 0)
            return code;
# 169 "./devices/vector/gdevpdfi.c"
        {
            gs_logical_operation_t lop = pis->log_op;
            int black_or_white = color_is_black_or_white(dev, pdcolor);

            switch (black_or_white) {
            case 0: lop = (( (((lop) & (rop3_1 - 0xcc)) << 2) | ((lop) & ~0xcc) ) & ~0x100); break;
            case 1: lop = (lop & 0x100 ? rop3_D : ( (((lop) & 0xcc) >> 2) | ((lop) & ~(rop3_1 - 0xcc)) )); break;
            default: do { } while (0);
            }
            if (pim4->CombineWithColor)
                switch (color_is_black_or_white(dev, pbcolor)) {
                case 0: lop = (( (((lop) & (rop3_1 - 0xf0)) << 4) | ((lop) & ~0xf0) ) & ~0x200); break;
                case 1: lop = (lop & 0x200 ? rop3_D : ( (((lop) & 0xf0) >> 4) | ((lop) & ~(rop3_1 - 0xf0)) )); break;
                default: do { } while (0);
                }
            else
                lop = (( (((lop) & (rop3_1 - 0xf0)) << 4) | ((lop) & ~0xf0) ) & ~0x200);
            switch (((gs_rop3_t)((lop) & 0xff))) {
            case rop3_0:
                if (black_or_white != 0)
                    return -1;
                break;
            case rop3_1:
                if (black_or_white != 1)
                    return -1;
                break;
            case 0xcc:
                break;
            default:
                return -1;
            }
            if ((lop & 0x100) && black_or_white == 1)
                return -1;
        }



        gs_image_t_init_mask_adjust(pim1, write_1s, ((bool)0));

        pim1->ImageMatrix = pim4->ImageMatrix;
        pim1->Width = pim4->Width;
        pim1->Height = pim4->Height;
        pim1->BitsPerComponent = 1;

        pim1->Interpolate = pim4->Interpolate;
        pim1->format = gs_image_format_chunky;

        return 0;
    }
    return -1;
}

static int
pdf_begin_image_data_decoded(gx_device_pdf *pdev, int num_components, const gs_range_t *pranges, int i,
                             gs_pixel_image_t *pi, cos_value_t *cs_value, pdf_image_enum *pie)
{

    if (pranges) {

        const gs_range_t *pr = pranges;
        float *decode = pi->Decode;
        int j;

        for (j = 0; j < num_components; ++j, ++pr, decode += 2) {
            double vmin = decode[0], vmax = decode[1];
            double base = pr->rmin, factor = pr->rmax - base;

            decode[1] = (vmax - vmin) / factor + (vmin - base);
            decode[0] = vmin - base;
        }
    }
    return pdf_begin_image_data(pdev, &pie->writer, pi, cs_value, i);
}

static int
make_device_color_space(gx_device_pdf *pdev,
                        gs_color_space_index output_cspace_index,
                        gs_color_space **ppcs)
{
    gs_color_space *cs;
    gs_memory_t *mem = pdev->v_memory;

    switch (output_cspace_index) {
        case gs_color_space_index_DeviceGray:
            cs = gs_cspace_new_DeviceGray(mem);
            break;
        case gs_color_space_index_DeviceRGB:
            cs = gs_cspace_new_DeviceRGB(mem);
            break;
        case gs_color_space_index_DeviceCMYK:
            cs = gs_cspace_new_DeviceCMYK(mem);
            break;
        default:




            (emprintf_program_ident(mem, gs_program_name(), gs_revision_number()), errprintf(mem, "Unsupported ProcessColorModel"));
            return ((-21));
    }
    if (cs == ((void*)0))
        return ((-25));
    *ppcs = cs;
    return 0;
}

static bool
check_image_color_space(gs_pixel_image_t * pim, gs_color_space_index index)
{
    if (pim->ColorSpace->type->index == index)
        return ((bool)1);
    if (pim->ColorSpace->type->index == gs_color_space_index_Indexed)
        if (pim->ColorSpace->base_space->type->index == index)
            return ((bool)1);
    return ((bool)0);
}






typedef enum {
    PDF_IMAGE_DEFAULT,
    PDF_IMAGE_TYPE3_MASK,
    PDF_IMAGE_TYPE3_DATA
} pdf_typed_image_context_t;






typedef union image_union_s {
    gs_pixel_image_t pixel;
    gs_image1_t type1;
    gs_image3_t type3;
    gs_image3x_t type3x;
    gs_image4_t type4;
} image_union_t;

static int pdf_begin_typed_image(gx_device_pdf *pdev,
    const gs_imager_state * pis, const gs_matrix *pmat,
    const gs_image_common_t *pic, const gs_int_rect * prect,
    const gx_drawing_color * pdcolor, const gx_clip_path * pcpath,
    gs_memory_t * mem, gx_image_enum_common_t ** pinfo,
    pdf_typed_image_context_t context);

static int
pdf_begin_typed_image_impl(gx_device_pdf *pdev, const gs_imager_state * pis,
                      const gs_matrix *pmat, const gs_image_common_t *pic,
                      const gs_int_rect * prect,
                      const gx_drawing_color * pdcolor,
                      const gx_clip_path * pcpath, gs_memory_t * mem,
                      gx_image_enum_common_t ** pinfo,
                      pdf_typed_image_context_t context,
                      image_union_t *image)
{
    cos_dict_t *pnamed = 0;
    const gs_pixel_image_t *pim;
    int code, i;
    pdf_image_enum *pie;
    gs_image_format_t format;
    const gs_color_space *pcs;
    cos_value_t cs_value;
    int num_components;
    bool is_mask = ((bool)0), in_line = ((bool)0);
    gs_int_rect rect;
    int width, height;
    const gs_range_t *pranges = 0;
    const pdf_color_space_names_t *names;
    bool convert_to_process_colors = ((bool)0);
    gs_color_space *pcs_device = ((void*)0);
    gs_color_space *pcs_orig = ((void*)0);
    int BPC_orig = 1, BPC_device = 8;
    pdf_lcvd_t *cvd = ((void*)0);
    bool force_lossless = ((bool)0);





    {
        cos_value_t ni_value;

        if (cos_array_unadd(pdev->NI_stack, &ni_value) >= 0)
            pnamed = (cos_dict_t *)ni_value.contents.object;
    }




    pdev->image_mask_id = 0L;


    switch (pic->type->index) {
    case 1: {
        const gs_image_t *pim1 = (const gs_image_t *)pic;

        if (pim1->Alpha != gs_image_alpha_none)
            goto nyi;
        is_mask = pim1->ImageMask;
        if (is_mask) {

            if (!(gx_dc_is_pattern1_color(pdcolor)))
                if (pim1->BitsPerComponent != 1 ||
                    !((pim1->Decode[0] == 0.0 && pim1->Decode[1] == 1.0) ||
                      (pim1->Decode[0] == 1.0 && pim1->Decode[1] == 0.0))
                    )
                    goto nyi;
        }


         in_line = context == PDF_IMAGE_DEFAULT &&
            can_write_image_in_line(pdev, pim1);

        image[0].type1 = *pim1;
        break;
    }
    case 3: {
        const gs_image3_t *pim3 = (const gs_image3_t *)pic;
        gs_image3_t pim3a;
        const gs_image_common_t *pic1 = pic;
        gs_matrix m, mi;
        const gs_matrix *pmat1 = pmat;

        pdev->image_mask_is_SMask = ((bool)0);
        if (pdev->CompatibilityLevel < 1.2)
            goto nyi;
        if (prect && !(prect->p.x == 0 && prect->p.y == 0 &&
                       prect->q.x == pim3->Width &&
                       prect->q.y == pim3->Height))
            goto nyi;
        if (pdev->CompatibilityLevel < 1.3 && !pdev->PatternImagemask) {
            if (pdf_must_put_clip_path(pdev, pcpath))
                code = pdf_unclip(pdev);
            else
                code = pdf_open_page(pdev, PDF_IN_STREAM);
            if (code < 0)
                return code;
            code = pdf_put_clip_path(pdev, pcpath);
            if (code < 0)
                return code;
            gs_make_identity(&m);
            pmat1 = &m;
            m.tx = floor(pis->ctm.tx + 0.5);
            m.ty = floor(pis->ctm.ty + 0.5);
            pim3a = *pim3;
            gs_matrix_invert(&pim3a.ImageMatrix, &mi);
            gs_make_identity(&pim3a.ImageMatrix);
            if (pim3a.Width < pim3a.MaskDict.Width && pim3a.Width > 0) {
                int sx = (pim3a.MaskDict.Width + pim3a.Width - 1) / pim3a.Width;

                gs_matrix_scale(&mi, 1.0 / sx, 1, &mi);
                gs_matrix_scale(&pim3a.ImageMatrix, 1.0 / sx, 1, &pim3a.ImageMatrix);
            }
            if (pim3a.Height < pim3a.MaskDict.Height && pim3a.Height > 0) {
                int sy = (pim3a.MaskDict.Height + pim3a.Height - 1) / pim3a.Height;

                gs_matrix_scale(&mi, 1, 1.0 / sy, &mi);
                gs_matrix_scale(&pim3a.ImageMatrix, 1, 1.0 / sy, &pim3a.ImageMatrix);
            }
            gs_matrix_multiply(&mi, &pim3a.MaskDict.ImageMatrix, &pim3a.MaskDict.ImageMatrix);
            pic1 = (gs_image_common_t *)&pim3a;

            gs_matrix_multiply(&mi, &(*(const gs_matrix *)&(pis)->ctm), &pdev->converting_image_matrix);
        }




        return gx_begin_image3_generic((gx_device *)pdev, pis, pmat1, pic1,
                                       prect, pdcolor, pcpath, mem,
                                       pdf_image3_make_mid,
                                       pdf_image3_make_mcde, pinfo);
    }
    case 103: {

        const gs_image3x_t *pim3x = (const gs_image3x_t *)pic;

        if (pdev->CompatibilityLevel < 1.4)
            goto nyi;
        if (prect && !(prect->p.x == 0 && prect->p.y == 0 &&
                       prect->q.x == pim3x->Width &&
                       prect->q.y == pim3x->Height))
            goto nyi;
        pdev->image_mask_is_SMask = ((bool)1);
        return gx_begin_image3x_generic((gx_device *)pdev, pis, pmat, pic,
                                        prect, pdcolor, pcpath, mem,
                                        pdf_image3x_make_mid,
                                        pdf_image3x_make_mcde, pinfo);
    }
    case 4: {

        gx_drawing_color icolor;

        pdev->image_mask_is_SMask = ((bool)0);
        if (pdf_convert_image4_to_image1(pdev, pis, pdcolor,
                                         (const gs_image4_t *)pic,
                                         &image[0].type1, &icolor) >= 0) {
            gs_state *pgs = (gs_state *)gx_hld_get_gstate_ptr(pis);

            if (pgs == ((void*)0))
                return ((-28));


            if (pnamed)
                cos_array_add_object(pdev->NI_stack, ((cos_object_t *)&((pnamed)->cos_procs)));


            code = gs_gsave(pgs);
            if (code < 0)
                return code;

            code = gs_setcolorspace(pgs, ((const gs_image4_t *)pic)->ColorSpace);
            if (code < 0)
                return code;
            code = pdf_begin_typed_image(pdev, pis, pmat,
                                         (gs_image_common_t *)&image[0].type1,
                                         prect, &icolor, pcpath, mem,
                                         pinfo, context);
            if (code < 0)
                return code;
            return gs_grestore(pgs);
        }

        if (pdev->CompatibilityLevel < 1.2 || pdev->params.ColorConversionStrategy != ccs_LeaveColorUnchanged)
            goto nyi;
        if (pdev->CompatibilityLevel < 1.3 && !pdev->PatternImagemask) {
            gs_matrix m, m1, mi;
            gs_image4_t pi4 = *(const gs_image4_t *)pic;

            if (pdf_must_put_clip_path(pdev, pcpath))
                code = pdf_unclip(pdev);
            else
                code = pdf_open_page(pdev, PDF_IN_STREAM);
            if (code < 0)
                return code;
            code = pdf_put_clip_path(pdev, pcpath);
            if (code < 0)
                return code;
            gs_make_identity(&m1);
            gs_matrix_invert(&pic->ImageMatrix, &mi);
            gs_matrix_multiply(&mi, &(*(const gs_matrix *)&(pis)->ctm), &m);
            code = pdf_setup_masked_image_converter(pdev, mem, &m, &cvd,
                                 ((bool)1), 0, 0, pi4.Width, pi4.Height, ((bool)0));
            if (code < 0)
                return code;
            cvd->mdev.is_open = ((bool)1);
            cvd->mask->is_open = ((bool)1);
            cvd->mask_is_empty = ((bool)0);
            code = (*((cvd->mask)->procs.fill_rectangle))((gx_device *)cvd->mask,
                        0, 0, cvd->mask->width, cvd->mask->height, (gx_color_index)0);
            if (code < 0)
                return code;
            gx_device_retain((gx_device *)cvd, ((bool)1));
            gx_device_retain((gx_device *)cvd->mask, ((bool)1));
            gs_make_identity(&pi4.ImageMatrix);
            code = gx_default_begin_typed_image((gx_device *)cvd,
                pis, &m1, (gs_image_common_t *)&pi4, prect, pdcolor, ((void*)0), mem, pinfo);
            if (code < 0)
                return code;
            (*pinfo)->procs = &pdf_image_cvd_enum_procs;
            return 0;
        }
        image[0].type4 = *(const gs_image4_t *)pic;
        break;
    }
    default:
        goto nyi;
    }
    pim = (const gs_pixel_image_t *)pic;
    format = pim->format;
    switch (format) {
    case gs_image_format_chunky:
    case gs_image_format_component_planar:
        break;
    default:
        goto nyi;
    }

    if (pim->Width == 0 || pim->Height == 0)
        goto nyi;

    switch (pim->BitsPerComponent) {
        case 1:
        case 2:
        case 4:
        case 8:
            break;
        case 12:
        case 16:
            goto nyi;
        default:
            return ((-15));
    }
    pcs = pim->ColorSpace;
    num_components = (is_mask ? 1 : gs_color_space_num_components(pcs));

    if (pdf_must_put_clip_path(pdev, pcpath))
        code = pdf_unclip(pdev);
    else
        code = pdf_open_page(pdev, PDF_IN_STREAM);
    if (code < 0)
        return code;
    if (context == PDF_IMAGE_TYPE3_MASK) {






        pcs = gs_cspace_new_DeviceGray(pdev->memory);
    } else if (is_mask)
        code = pdf_prepare_imagemask(pdev, pis, pdcolor);
    else
        code = pdf_prepare_image(pdev, pis);
    if (code < 0)
        goto nyi;
    if (prect)
        rect = *prect;
    else {
        rect.p.x = rect.p.y = 0;
        rect.q.x = pim->Width, rect.q.y = pim->Height;
    }
    pie = (pdf_image_enum *)(*(mem)->procs.alloc_struct)(mem, &st_pdf_image_enum, "pdf_begin_image");

    if (pie == 0)
        return ((-25));
    memset(pie, 0, sizeof(*pie));
    *pinfo = (gx_image_enum_common_t *) pie;
    gx_image_enum_common_init(*pinfo, (const gs_data_image_t *) pim,
                    ((pdev->CompatibilityLevel >= 1.3) ?
                            (context == PDF_IMAGE_TYPE3_MASK ?
                            &pdf_image_object_enum_procs :
                            &pdf_image_enum_procs) :
                            context == PDF_IMAGE_TYPE3_MASK ?
                            &pdf_image_object_enum_procs :
                            context == PDF_IMAGE_TYPE3_DATA ?
                            &pdf_image_object_enum_procs2 :
                            &pdf_image_enum_procs),
                        (gx_device *)pdev, num_components, format);
    pie->memory = mem;
    width = rect.q.x - rect.p.x;
    pie->width = width;
    height = rect.q.y - rect.p.y;
    pie->bits_per_pixel =
        pim->BitsPerComponent * num_components / pie->num_planes;
    pie->rows_left = height;
    if (pnamed != 0)
        in_line = ((bool)0);
    else {
        double nbytes = (double)(((ulong) pie->width * pie->bits_per_pixel + 7) >> 3) *
            pie->num_planes * pie->rows_left;

        in_line &= (nbytes < pdev->MaxInlineImageSize);
    }
    if (rect.p.x != 0 || rect.p.y != 0 ||
        rect.q.x != pim->Width || rect.q.y != pim->Height ||
        (is_mask && pim->CombineWithColor)

        ) {
        ((mem)->procs.free_object(mem, pie, "pdf_begin_image"));
        goto nyi;
    }
    if (pmat == 0)
        pmat = &(*(const gs_matrix *)&(pis)->ctm);
    {
        gs_matrix mat;
        gs_matrix bmat;
        int code;

        pdf_make_bitmap_matrix(&bmat, -rect.p.x, -rect.p.y,
                               pim->Width, pim->Height, height);
        if ((code = gs_matrix_invert(&pim->ImageMatrix, &mat)) < 0 ||
            (code = gs_matrix_multiply(&bmat, &mat, &mat)) < 0 ||
            (code = gs_matrix_multiply(&mat, pmat, &pie->mat)) < 0
            ) {
            ((mem)->procs.free_object(mem, pie, "pdf_begin_image"));
            return code;
        }

        if (pie->mat.xx * pie->mat.yy == pie->mat.xy * pie->mat.yx) {
            ((mem)->procs.free_object(mem, pie, "pdf_begin_image"));
            goto nyi;
        }
    }
    code = pdf_put_clip_path(pdev, pcpath);
    if (code < 0)
        return code;
    pdf_image_writer_init(&pie->writer);
    pie->writer.alt_writer_count = (in_line ||
                                    (pim->Width <= 64 && pim->Height <= 64)
                                    ? 1 : 2);
    if ((image[0].pixel.ColorSpace != ((void*)0) &&
        image[0].pixel.ColorSpace->type->index == gs_color_space_index_Indexed
        && pdev->params.ColorImage.DownsampleType != ds_Subsample) ||
        pdev->transfer_not_identity)
        force_lossless = ((bool)1);

    image[1] = image[0];
    names = (in_line ? &pdf_color_space_names_short : &pdf_color_space_names);
    if (!is_mask) {
        if (psdf_is_converting_image_to_RGB((gx_device_psdf *)pdev, pis, pim)) {




            cos_c_string_value(&cs_value, names->DeviceRGB);
        } else {

            if (pcs->cmm_icc_profile_data != ((void*)0) &&
                pcs->cmm_icc_profile_data->islab) {
                    gscms_set_icc_range((cmm_profile_t **)&(pcs->cmm_icc_profile_data));
            }
            code = pdf_convert_ICC(pdev, pcs, &cs_value, names);
            if (code == 0) {
                code = pdf_color_space_named(pdev, &cs_value, &pranges, pcs, names,
                                         in_line, ((void*)0), 0, ((bool)0));
            }
            if (pcs->cmm_icc_profile_data != ((void*)0) &&
                pcs->cmm_icc_profile_data->islab) {
                gsicc_setrange_lab(pcs->cmm_icc_profile_data);
            }
            if (code < 0)
                convert_to_process_colors = ((bool)1);
        }
    }
    if (image[0].pixel.ColorSpace != ((void*)0) && !(context == PDF_IMAGE_TYPE3_MASK)) {



        if ((pdev->params.ColorConversionStrategy == ccs_Gray &&
             !check_image_color_space(&image[0].pixel, gs_color_space_index_DeviceGray)) ||
            (pdev->params.ColorConversionStrategy == ccs_sRGB &&
             !psdf_is_converting_image_to_RGB((const gx_device_psdf *)pdev, pis, &image[0].pixel) &&
             !check_image_color_space(&image[0].pixel, gs_color_space_index_DeviceGray) &&
             !check_image_color_space(&image[0].pixel, gs_color_space_index_DeviceRGB)) ||
            (pdev->params.ColorConversionStrategy == ccs_CMYK &&
             !check_image_color_space(&image[0].pixel, gs_color_space_index_DeviceGray) &&
             !check_image_color_space(&image[0].pixel, gs_color_space_index_DeviceCMYK))) {




            if ((pdev->params.ColorConversionStrategy == ccs_CMYK &&
                 __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->color_info.cm_name) && __builtin_constant_p ("DeviceCMYK") && (__s1_len = strlen (pdev->color_info.cm_name), __s2_len = strlen ("DeviceCMYK"), (!((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("DeviceCMYK") + 1) - (size_t)(const void *)("DeviceCMYK") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceCMYK") : (__builtin_constant_p (pdev->color_info.cm_name) && ((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) && (__s1_len = strlen (pdev->color_info.cm_name), __s1_len < 4) ? (__builtin_constant_p ("DeviceCMYK") && ((size_t)(const void *)(("DeviceCMYK") + 1) - (size_t)(const void *)("DeviceCMYK") == 1) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceCMYK") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("DeviceCMYK"); register int __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("DeviceCMYK") && ((size_t)(const void *)(("DeviceCMYK") + 1) - (size_t)(const void *)("DeviceCMYK") == 1) && (__s2_len = strlen ("DeviceCMYK"), __s2_len < 4) ? (__builtin_constant_p (pdev->color_info.cm_name) && ((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceCMYK") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->color_info.cm_name); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("DeviceCMYK"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("DeviceCMYK"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("DeviceCMYK"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("DeviceCMYK"))[3]); } } __result; }))) : __builtin_strcmp (pdev->color_info.cm_name, "DeviceCMYK")))); })) ||
                (pdev->params.ColorConversionStrategy == ccs_sRGB &&
                 __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->color_info.cm_name) && __builtin_constant_p ("DeviceRGB") && (__s1_len = strlen (pdev->color_info.cm_name), __s2_len = strlen ("DeviceRGB"), (!((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("DeviceRGB") + 1) - (size_t)(const void *)("DeviceRGB") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceRGB") : (__builtin_constant_p (pdev->color_info.cm_name) && ((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) && (__s1_len = strlen (pdev->color_info.cm_name), __s1_len < 4) ? (__builtin_constant_p ("DeviceRGB") && ((size_t)(const void *)(("DeviceRGB") + 1) - (size_t)(const void *)("DeviceRGB") == 1) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceRGB") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("DeviceRGB"); register int __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("DeviceRGB") && ((size_t)(const void *)(("DeviceRGB") + 1) - (size_t)(const void *)("DeviceRGB") == 1) && (__s2_len = strlen ("DeviceRGB"), __s2_len < 4) ? (__builtin_constant_p (pdev->color_info.cm_name) && ((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceRGB") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->color_info.cm_name); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("DeviceRGB"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("DeviceRGB"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("DeviceRGB"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("DeviceRGB"))[3]); } } __result; }))) : __builtin_strcmp (pdev->color_info.cm_name, "DeviceRGB")))); })) ||
                (pdev->params.ColorConversionStrategy == ccs_Gray &&
                 __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pdev->color_info.cm_name) && __builtin_constant_p ("DeviceGray") && (__s1_len = strlen (pdev->color_info.cm_name), __s2_len = strlen ("DeviceGray"), (!((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("DeviceGray") + 1) - (size_t)(const void *)("DeviceGray") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceGray") : (__builtin_constant_p (pdev->color_info.cm_name) && ((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) && (__s1_len = strlen (pdev->color_info.cm_name), __s1_len < 4) ? (__builtin_constant_p ("DeviceGray") && ((size_t)(const void *)(("DeviceGray") + 1) - (size_t)(const void *)("DeviceGray") == 1) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceGray") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("DeviceGray"); register int __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pdev->color_info.cm_name))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("DeviceGray") && ((size_t)(const void *)(("DeviceGray") + 1) - (size_t)(const void *)("DeviceGray") == 1) && (__s2_len = strlen ("DeviceGray"), __s2_len < 4) ? (__builtin_constant_p (pdev->color_info.cm_name) && ((size_t)(const void *)((pdev->color_info.cm_name) + 1) - (size_t)(const void *)(pdev->color_info.cm_name) == 1) ? __builtin_strcmp (pdev->color_info.cm_name, "DeviceGray") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pdev->color_info.cm_name); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("DeviceGray"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("DeviceGray"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("DeviceGray"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("DeviceGray"))[3]); } } __result; }))) : __builtin_strcmp (pdev->color_info.cm_name, "DeviceGray")))); }))) {
                (emprintf_program_ident(pdev->memory, gs_program_name(), gs_revision_number()), errprintf(pdev->memory, "ColorConversionStrategy isn't " "compatible to ProcessColorModel."));

                return ((-15));
            }
            convert_to_process_colors = ((bool)1);
        }
    }
    if (convert_to_process_colors) {
        const char *sname;

        switch (pdev->pcm_color_info_index) {
            case gs_color_space_index_DeviceGray: sname = names->DeviceGray; break;
            case gs_color_space_index_DeviceRGB: sname = names->DeviceRGB; break;
            case gs_color_space_index_DeviceCMYK: sname = names->DeviceCMYK; break;
            default:
                (emprintf_program_ident(pdev->memory, gs_program_name(), gs_revision_number()), errprintf(pdev->memory, "Unsupported ProcessColorModel."));
                return ((-21));
        }
        cos_c_string_value(&cs_value, sname);
        pcs_orig = image[0].pixel.ColorSpace;
        BPC_orig = image[0].pixel.BitsPerComponent;
        code = make_device_color_space(pdev, pdev->pcm_color_info_index, &pcs_device);
        if (code < 0)
            goto fail;
        image[0].pixel.ColorSpace = pcs_device;
        image[0].pixel.BitsPerComponent = BPC_device = 8;
    }
    pdev->ParamCompatibilityLevel = pdev->CompatibilityLevel;
# 761 "./devices/vector/gdevpdfi.c"
    rc_increment_cs(image[0].pixel.ColorSpace);
    code = pdf_begin_write_image(pdev, &pie->writer, 0L, width,
                    height, pnamed, in_line);
    if (code < 0)
        goto fail;
    if (pie->writer.alt_writer_count == 1)
        code = psdf_setup_lossless_filters((gx_device_psdf *) pdev,
                                             &pie->writer.binary[0],
                                             &image[0].pixel, in_line);
    else {
        if (force_lossless) {
# 781 "./devices/vector/gdevpdfi.c"
            int saved_downsample = pdev->params.ColorImage.DownsampleType;

            pdev->params.ColorImage.DownsampleType = ds_Subsample;
            code = psdf_setup_image_filters((gx_device_psdf *) pdev,
                                          &pie->writer.binary[0], &image[0].pixel,
                                          pmat, pis, ((bool)1), in_line);
            pdev->params.ColorImage.DownsampleType = saved_downsample;
        } else {
            if (!convert_to_process_colors)
            code = psdf_setup_image_filters((gx_device_psdf *) pdev,
                                          &pie->writer.binary[0], &image[0].pixel,
                                          pmat, pis, ((bool)1), in_line);
        }
    }
    if (code < 0) {
        if (image[0].pixel.ColorSpace == pim->ColorSpace)
            rc_decrement_only_cs(pim->ColorSpace, "psdf_setup_image_filters");
        goto fail;
    }

    if (convert_to_process_colors) {
        image[0].pixel.ColorSpace = pcs_orig;
        image[0].pixel.BitsPerComponent = BPC_orig;
        code = psdf_setup_image_colors_filter(&pie->writer.binary[0],
                    (gx_device_psdf *)pdev, &image[0].pixel, pis);
        if (code < 0)
            goto fail;
        image[0].pixel.ColorSpace = pcs_device;
        image[0].pixel.BitsPerComponent = BPC_device;
    }


    rc_increment_cs(image[1].pixel.ColorSpace);
    if (pie->writer.alt_writer_count > 1) {
        code = pdf_make_alt_stream(pdev, &pie->writer.binary[1]);
        if (code)
            goto fail;
        if (convert_to_process_colors) {
            image[1].pixel.ColorSpace = pcs_device;
            image[1].pixel.BitsPerComponent = BPC_device;
        }
        code = psdf_setup_image_filters((gx_device_psdf *) pdev,
                                  &pie->writer.binary[1], &image[1].pixel,
                                  pmat, pis, force_lossless, in_line);
        if (code == (-15)) {

            for (i=1;i < pie->writer.alt_writer_count; i++) {
                stream *s = pie->writer.binary[i].strm;
                cos_stream_t *pcos = cos_stream_from_pipeline(pie->writer.binary[i].strm);
                s_close_filters(&s, ((void*)0));
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, s, "compressed image stream"));
                pcos->cos_procs->release((cos_object_t *)pcos, "pdf_begin_typed_image_impl");
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, pcos, "compressed image cos_stream"));
            }

            pie->writer.alt_writer_count = 1;
            memset(pie->writer.binary + 1, 0, sizeof(pie->writer.binary[1]));
            memset(pie->writer.binary + 2, 0, sizeof(pie->writer.binary[1]));
        } else if (code) {
            if (image[1].pixel.ColorSpace == pim->ColorSpace)
                rc_decrement_only_cs(pim->ColorSpace, "psdf_setup_image_filters");
            goto fail;
        }
        else if (convert_to_process_colors) {
            int Width = image[1].pixel.Width;
            int Height = image[1].pixel.Height;
            image[1].pixel.ColorSpace = pcs_orig;
            image[1].pixel.BitsPerComponent = BPC_orig;
            image[1].pixel.Width = image[0].pixel.Width;
            image[1].pixel.Height = image[0].pixel.Height;
            code = psdf_setup_image_colors_filter(&pie->writer.binary[1],
                    (gx_device_psdf *)pdev, &image[1].pixel, pis);
            if (code < 0) {
                if (image[1].pixel.ColorSpace == pim->ColorSpace)
                    rc_decrement_only_cs(pim->ColorSpace, "psdf_setup_image_filters");
                goto fail;
            }
            image[1].pixel.Width = Width;
            image[1].pixel.Height = Height;
            image[1].pixel.ColorSpace = pcs_device;
            image[1].pixel.BitsPerComponent = BPC_device;
        }
    }
    if (image[1].pixel.ColorSpace == pim->ColorSpace)
        rc_decrement_only_cs(pim->ColorSpace, "psdf_setup_image_filters");

    for (i = 0; i < pie->writer.alt_writer_count; i++) {
        code = pdf_begin_image_data_decoded(pdev, num_components, pranges, i,
                             &image[i].pixel, &cs_value, pie);
        if (code < 0)
            goto fail;
    }
    if (pie->writer.alt_writer_count == 2) {
        psdf_setup_compression_chooser(&pie->writer.binary[2],
             (gx_device_psdf *)pdev, pim->Width, pim->Height,
             num_components, pim->BitsPerComponent);
        pie->writer.alt_writer_count = 3;
    }
    if (pic->type->index == 4 && pdev->CompatibilityLevel < 1.3) {
        int i;


        i = pie->writer.alt_writer_count;
        gs_image_t_init_mask_adjust((gs_image_t *)&image[i].type1, ((bool)1), ((bool)0));
        image[i].type1.Width = image[0].pixel.Width;
        image[i].type1.Height = image[0].pixel.Height;

        code = pdf_begin_write_image(pdev, &pie->writer, 0L, width,
                    height, ((void*)0), ((bool)0));
        if (code)
            goto fail;
        code = psdf_setup_image_filters((gx_device_psdf *) pdev,
                                  &pie->writer.binary[i], &image[i].pixel,
                                  pmat, pis, force_lossless, in_line);
        if (code < 0)
            goto fail;
        psdf_setup_image_to_mask_filter(&pie->writer.binary[i],
             (gx_device_psdf *)pdev, pim->Width, pim->Height,
             num_components, pim->BitsPerComponent, image[i].type4.MaskColor);
        code = pdf_begin_image_data_decoded(pdev, num_components, pranges, i,
                             &image[i].pixel, &cs_value, pie);
        if (code < 0)
            goto fail;
        ++pie->writer.alt_writer_count;
# 913 "./devices/vector/gdevpdfi.c"
    }
    return 0;
 fail:


 nyi:
    return gx_default_begin_typed_image
        ((gx_device *)pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
        pinfo);
}

static int
old_pdf_begin_typed_image(gx_device_pdf *pdev, const gs_imager_state * pis,
                      const gs_matrix *pmat, const gs_image_common_t *pic,
                      const gs_int_rect * prect,
                      const gx_drawing_color * pdcolor,
                      const gx_clip_path * pcpath, gs_memory_t * mem,
                      gx_image_enum_common_t ** pinfo,
                      pdf_typed_image_context_t context)
{
  int code;
  image_union_t *image = (image_union_t *)(void *)(*(mem->non_gc_memory->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory->non_gc_memory, 4, sizeof(image_union_t), "pdf_begin_typed_image(image)");

  if (image == 0)
      return ((-25));
  code = pdf_begin_typed_image_impl(pdev, pis, pmat, pic, prect,
         pdcolor, pcpath, mem, pinfo, context, image);
  ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

  return code;
}

static int setup_type1_image(gx_device_pdf *pdev, const gs_image_common_t *pic,
                             const gx_drawing_color * pdcolor, image_union_t *image,
                             pdf_typed_image_context_t context)
{
    const gs_image_t *pim1 = (const gs_image_t *)pic;

    if (pim1->Alpha != gs_image_alpha_none)
        return -1;
    if (pim1->ImageMask) {

        if (!(gx_dc_is_pattern1_color(pdcolor)))
            if (pim1->BitsPerComponent != 1 ||
                !((pim1->Decode[0] == 0.0 && pim1->Decode[1] == 1.0) ||
                  (pim1->Decode[0] == 1.0 && pim1->Decode[1] == 0.0))
                )
                return -1;
    }
    image[0].type1 = *pim1;

    return (context == PDF_IMAGE_DEFAULT &&
        can_write_image_in_line(pdev, pim1));
}

static int setup_type3_image(gx_device_pdf *pdev, const gs_imager_state * pis,
                      const gs_matrix *pmat, const gs_image_common_t *pic,
                      const gs_int_rect * prect,
                      const gx_drawing_color * pdcolor,
                      const gx_clip_path * pcpath, gs_memory_t * mem,
                      gx_image_enum_common_t ** pinfo,
                      image_union_t *image)
{
    const gs_image3_t *pim3 = (const gs_image3_t *)pic;
    gs_image3_t pim3a;
    const gs_image_common_t *pic1 = pic;
    gs_matrix m, mi;
    const gs_matrix *pmat1 = pmat;
    int code;

    if (pdev->CompatibilityLevel < 1.3 && !pdev->PatternImagemask) {
        if (pdf_must_put_clip_path(pdev, pcpath))
            code = pdf_unclip(pdev);
        else
            code = pdf_open_page(pdev, PDF_IN_STREAM);
        if (code < 0)
            return code;
        code = pdf_put_clip_path(pdev, pcpath);
        if (code < 0)
            return code;
        gs_make_identity(&m);
        pmat1 = &m;
        m.tx = floor(pis->ctm.tx + 0.5);
        m.ty = floor(pis->ctm.ty + 0.5);
        pim3a = *pim3;
        gs_matrix_invert(&pim3a.ImageMatrix, &mi);
        gs_make_identity(&pim3a.ImageMatrix);
        if (pim3a.Width < pim3a.MaskDict.Width && pim3a.Width > 0) {
            int sx = (pim3a.MaskDict.Width + pim3a.Width - 1) / pim3a.Width;

            gs_matrix_scale(&mi, 1.0 / sx, 1, &mi);
            gs_matrix_scale(&pim3a.ImageMatrix, 1.0 / sx, 1, &pim3a.ImageMatrix);
        }
        if (pim3a.Height < pim3a.MaskDict.Height && pim3a.Height > 0) {
            int sy = (pim3a.MaskDict.Height + pim3a.Height - 1) / pim3a.Height;

            gs_matrix_scale(&mi, 1, 1.0 / sy, &mi);
            gs_matrix_scale(&pim3a.ImageMatrix, 1, 1.0 / sy, &pim3a.ImageMatrix);
        }
        gs_matrix_multiply(&mi, &pim3a.MaskDict.ImageMatrix, &pim3a.MaskDict.ImageMatrix);
        pic1 = (gs_image_common_t *)&pim3a;

        gs_matrix_multiply(&mi, &(*(const gs_matrix *)&(pis)->ctm), &pdev->converting_image_matrix);
    }




    return gx_begin_image3_generic((gx_device *)pdev, pis, pmat1, pic1,
                                   prect, pdcolor, pcpath, mem,
                                   pdf_image3_make_mid,
                                   pdf_image3_make_mcde, pinfo);
}

static int convert_type4_image(gx_device_pdf *pdev, const gs_imager_state * pis,
                      const gs_matrix *pmat, const gs_image_common_t *pic,
                      const gs_int_rect * prect,
                      const gx_drawing_color * pdcolor,
                      const gx_clip_path * pcpath, gs_memory_t * mem,
                      gx_image_enum_common_t ** pinfo,
                      pdf_typed_image_context_t context, image_union_t *image,
                      cos_dict_t *pnamed)
{

    gx_drawing_color icolor;
    int code;

    pdev->image_mask_is_SMask = ((bool)0);
    if (pdf_convert_image4_to_image1(pdev, pis, pdcolor,
                                     (const gs_image4_t *)pic,
                                     &image[0].type1, &icolor) >= 0) {
        gs_state *pgs = (gs_state *)gx_hld_get_gstate_ptr(pis);

        if (pgs == ((void*)0))
            return ((-28));


        if (pnamed)
            cos_array_add_object(pdev->NI_stack, ((cos_object_t *)&((pnamed)->cos_procs)));


        code = gs_gsave(pgs);
        if (code < 0)
            return code;

        code = gs_setcolorspace(pgs, ((const gs_image4_t *)pic)->ColorSpace);
        if (code < 0)
            return code;
        code = pdf_begin_typed_image(pdev, pis, pmat,
                                     (gs_image_common_t *)&image[0].type1,
                                     prect, &icolor, pcpath, mem,
                                     pinfo, context);
        if (code < 0)
            return code;
        return gs_grestore(pgs);
    }
    return 1;
}

static int convert_type4_to_masked_image(gx_device_pdf *pdev, const gs_imager_state * pis,
                      const gs_image_common_t *pic,
                      const gs_int_rect * prect,
                      const gx_drawing_color * pdcolor,
                      const gx_clip_path * pcpath, gs_memory_t * mem,
                      gx_image_enum_common_t ** pinfo)
{
        gs_matrix m, m1, mi;
        gs_image4_t pi4 = *(const gs_image4_t *)pic;
        int code;
        pdf_lcvd_t *cvd = ((void*)0);

        if (pdf_must_put_clip_path(pdev, pcpath))
            code = pdf_unclip(pdev);
        else
            code = pdf_open_page(pdev, PDF_IN_STREAM);
        if (code < 0)
            return code;
        code = pdf_put_clip_path(pdev, pcpath);
        if (code < 0)
            return code;
        gs_make_identity(&m1);
        gs_matrix_invert(&pic->ImageMatrix, &mi);
        gs_matrix_multiply(&mi, &(*(const gs_matrix *)&(pis)->ctm), &m);
        code = pdf_setup_masked_image_converter(pdev, mem, &m, &cvd,
                             ((bool)1), 0, 0, pi4.Width, pi4.Height, ((bool)0));
        if (code < 0)
            return code;
        cvd->mdev.is_open = ((bool)1);
        cvd->mask->is_open = ((bool)1);
        cvd->mask_is_empty = ((bool)0);
        code = (*((cvd->mask)->procs.fill_rectangle))((gx_device *)cvd->mask,
                    0, 0, cvd->mask->width, cvd->mask->height, (gx_color_index)0);
        if (code < 0)
            return code;
        gx_device_retain((gx_device *)cvd, ((bool)1));
        gx_device_retain((gx_device *)cvd->mask, ((bool)1));
        gs_make_identity(&pi4.ImageMatrix);
        code = gx_default_begin_typed_image((gx_device *)cvd,
            pis, &m1, (gs_image_common_t *)&pi4, prect, pdcolor, ((void*)0), mem, pinfo);
        if (code < 0)
            return code;
        (*pinfo)->procs = &pdf_image_cvd_enum_procs;
        return 0;
}

static int setup_image_process_colorspace(gx_device_pdf *pdev, image_union_t *image, gs_color_space **pcs_orig,
                                          const char *sname, cos_value_t *cs_value)
{
    int code;
    gs_color_space *pcs_device = ((void*)0);

    cos_c_string_value(cs_value, sname);
    *pcs_orig = image->pixel.ColorSpace;
    code = make_device_color_space(pdev, pdev->pcm_color_info_index, &pcs_device);
    if (code < 0)
        return code;
    image->pixel.ColorSpace = pcs_device;
    return 0;
}







static int setup_image_colorspace(gx_device_pdf *pdev, image_union_t *image, const gs_color_space *pcs, gs_color_space **pcs_orig,
                                  const pdf_color_space_names_t *names, cos_value_t *cs_value)
{
    int code=0;
    gs_color_space_index csi;
    gs_color_space_index csi2;
    const gs_color_space *pcs2 = pcs;

    csi = csi2 = gs_color_space_get_index(pcs);
    if (csi == gs_color_space_index_ICC) {
        csi2 = gsicc_get_default_type(pcs->cmm_icc_profile_data);
    }


    if (pdev->CompatibilityLevel <= 1.2) {


        if (csi2 == gs_color_space_index_Indexed) {
            pcs2 = pcs->base_space;
            csi2 = gs_color_space_get_index(pcs2);
        }

        switch (csi2) {
            case gs_color_space_index_DeviceGray:
                if (pdev->params.ColorConversionStrategy == ccs_LeaveColorUnchanged ||
                    pdev->params.ColorConversionStrategy == ccs_Gray) {
                    return 0;
                }
                else {
                    code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceGray, cs_value);
                    if (code < 0)
                        return code;
                    return 1;
                }
                break;
            case gs_color_space_index_DeviceRGB:
                if (pdev->params.ColorConversionStrategy == ccs_LeaveColorUnchanged ||
                    pdev->params.ColorConversionStrategy == ccs_RGB)
                    return 0;
                else {
                    code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceRGB, cs_value);
                    if (code < 0)
                        return code;
                    return 1;
                }
                break;
            case gs_color_space_index_DeviceCMYK:
                if ((pdev->params.ColorConversionStrategy == ccs_LeaveColorUnchanged ||
                    pdev->params.ColorConversionStrategy == ccs_CMYK) && !pdev->params.ConvertCMYKImagesToRGB)
                    return 0;
                else {
                    code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceCMYK, cs_value);
                    if (code < 0)
                        return code;
                    return 1;
                }
                break;
            case gs_color_space_index_CIEA:
            case gs_color_space_index_CIEABC:
            case gs_color_space_index_CIEDEF:
            case gs_color_space_index_CIEDEFG:
            case gs_color_space_index_Separation:
                if (pdev->ForOPDFRead) {
                    switch (pdev->params.ColorConversionStrategy) {
                        case ccs_ByObjectType:

                        case ccs_UseDeviceDependentColor:

                        case ccs_UseDeviceIndependentColorForImages:

                        case ccs_LeaveColorUnchanged:
                            if (csi2 == gs_color_space_index_Separation)
                                return 0;

                        default:
                            switch (pdev->pcm_color_info_index) {
                                case gs_color_space_index_DeviceGray:
                                    code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceGray, cs_value);
                                    break;
                                case gs_color_space_index_DeviceRGB:
                                    code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceRGB, cs_value);
                                    break;
                                case gs_color_space_index_DeviceCMYK:
                                    code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceCMYK, cs_value);
                                    break;
                                default:
                                    (emprintf_program_ident(pdev->memory, gs_program_name(), gs_revision_number()), errprintf(pdev->memory, "Unsupported ProcessColorModel."));
                                    return ((-21));
                            }
                            if (code < 0)
                                return code;
                            return 1;
                            break;
                    }
                }
                else
                    return 1;
                break;

            case gs_color_space_index_ICC:







                csi2 = gsicc_get_default_type(pcs2->cmm_icc_profile_data);

                switch (csi2) {
                    case gs_color_space_index_DeviceGray:
                        if (pdev->params.ColorConversionStrategy == ccs_Gray ||
                            pdev->params.ColorConversionStrategy == ccs_LeaveColorUnchanged)
                            return 0;
                        break;
                    case gs_color_space_index_DeviceRGB:
                        if (pdev->params.ColorConversionStrategy == ccs_RGB ||
                            pdev->params.ColorConversionStrategy == ccs_LeaveColorUnchanged)
                            return 0;
                        break;
                    case gs_color_space_index_DeviceCMYK:
                        if (pdev->params.ColorConversionStrategy == ccs_CMYK ||
                            pdev->params.ColorConversionStrategy == ccs_LeaveColorUnchanged)
                            return 0;
                        break;
                    default:
                        break;
                }

            case gs_color_space_index_DeviceN:
            case gs_color_space_index_DevicePixel:
            case gs_color_space_index_Indexed:
                switch (pdev->pcm_color_info_index) {
                    case gs_color_space_index_DeviceGray:
                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceGray, cs_value);
                        break;
                    case gs_color_space_index_DeviceRGB:
                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceRGB, cs_value);
                        break;
                    case gs_color_space_index_DeviceCMYK:
                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceCMYK, cs_value);
                        break;
                    default:
                        (emprintf_program_ident(pdev->memory, gs_program_name(), gs_revision_number()), errprintf(pdev->memory, "Unsupported ProcessColorModel."));
                        return ((-21));
                }
                if (code < 0)
                    return code;
                return 1;
                break;
            default:
                return (((-15)));
                break;
        }
    } else {
        switch(pdev->params.ColorConversionStrategy) {
            case ccs_ByObjectType:

            case ccs_UseDeviceDependentColor:

            case ccs_UseDeviceIndependentColorForImages:

            case ccs_LeaveColorUnchanged:
                return 0;
                break;
            case ccs_UseDeviceIndependentColor:
                return 2;
                break;
            case ccs_CMYK:
                switch(csi2) {
                    case gs_color_space_index_DeviceGray:
                    case gs_color_space_index_DeviceCMYK:
                        return 0;
                        break;
                    case gs_color_space_index_Separation:
                        pcs2 = pcs;
                        while (pcs2->base_space)
                            pcs2 = pcs2->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        if (csi == gs_color_space_index_DeviceCMYK)
                            return 0;
                        else
                            return 3;
                        break;
                    case gs_color_space_index_DeviceN:
                        pcs2 = pcs;
                        while (pcs2->base_space)
                            pcs2 = pcs2->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        if (csi == gs_color_space_index_DeviceCMYK)
                            return 0;
                        else
                            return 4;
                        break;
                    case gs_color_space_index_Indexed:
                        pcs2 = pcs->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        switch(csi) {
                            case gs_color_space_index_DeviceGray:
                            case gs_color_space_index_DeviceCMYK:
                                return 0;
                                break;
                            case gs_color_space_index_Separation:
                                pcs2 = pcs;
                                while (pcs2->base_space)
                                    pcs2 = pcs2->base_space;
                                csi = gs_color_space_get_index(pcs2);
                                if (csi == gs_color_space_index_ICC)
                                    csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                                if (csi == gs_color_space_index_DeviceCMYK)
                                    return 0;
                                else
                                    return 3;
                                break;
                            case gs_color_space_index_DeviceN:
                                pcs2 = pcs;
                                while (pcs2->base_space)
                                    pcs2 = pcs2->base_space;
                                csi = gs_color_space_get_index(pcs2);
                                if (csi == gs_color_space_index_ICC)
                                    csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                                if (csi == gs_color_space_index_DeviceCMYK)
                                    return 0;
                                else
                                    return 4;
                                break;
                            default:
                                switch (pdev->pcm_color_info_index) {
                                    case gs_color_space_index_DeviceGray:
                                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceGray, cs_value);
                                        break;
                                    case gs_color_space_index_DeviceRGB:
                                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceRGB, cs_value);
                                        break;
                                    case gs_color_space_index_DeviceCMYK:
                                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceCMYK, cs_value);
                                        break;
                                    default:
                                        (emprintf_program_ident(pdev->memory, gs_program_name(), gs_revision_number()), errprintf(pdev->memory, "Unsupported ProcessColorModel."));
                                        return ((-21));
                                }
                                if (code < 0)
                                    return code;
                                return 1;
                                break;
                        }
                        break;
                    default:
                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceCMYK, cs_value);
                        if (code < 0)
                            return code;
                        return 1;
                        break;
                }
                break;
            case ccs_Gray:
                switch(csi2) {
                    case gs_color_space_index_DeviceGray:
                        return 0;
                        break;
                    case gs_color_space_index_Separation:
                        pcs2 = pcs;
                        while (pcs2->base_space)
                            pcs2 = pcs2->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        if (csi == gs_color_space_index_DeviceGray)
                            return 0;
                        else
                            return 3;
                        break;
                    case gs_color_space_index_DeviceN:
                        pcs2 = pcs;
                        while (pcs2->base_space)
                            pcs2 = pcs2->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        if (csi == gs_color_space_index_DeviceGray)
                            return 0;
                        else
                            return 4;
                        break;
                    case gs_color_space_index_Indexed:
                        pcs2 = pcs->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        switch(csi) {
                            case gs_color_space_index_DeviceGray:
                                return 0;
                                break;
                            case gs_color_space_index_Separation:
                                pcs2 = pcs;
                                while (pcs2->base_space)
                                    pcs2 = pcs2->base_space;
                                csi = gs_color_space_get_index(pcs2);
                                if (csi == gs_color_space_index_ICC)
                                    csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                                if (csi == gs_color_space_index_DeviceGray)
                                    return 0;
                                else
                                    return 3;
                                break;
                            case gs_color_space_index_DeviceN:
                                pcs2 = pcs;
                                while (pcs2->base_space)
                                    pcs2 = pcs2->base_space;
                                csi = gs_color_space_get_index(pcs2);
                                if (csi == gs_color_space_index_ICC)
                                    csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                                if (csi == gs_color_space_index_DeviceGray)
                                    return 0;
                                else
                                    return 4;
                                break;
                            default:
                                code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceGray, cs_value);
                                if (code < 0)
                                    return code;
                                return 1;
                                break;
                        }
                        break;
                    default:
                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceGray, cs_value);
                        if (code < 0)
                            return code;
                        return 1;
                        break;
                }
                break;
            case ccs_sRGB:
            case ccs_RGB:
                switch(csi2) {
                    case gs_color_space_index_DeviceGray:
                    case gs_color_space_index_DeviceRGB:
                        return 0;
                        break;
                    case gs_color_space_index_Separation:
                        pcs2 = pcs;
                        while (pcs2->base_space)
                            pcs2 = pcs2->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        if (csi == gs_color_space_index_DeviceRGB)
                            return 0;
                        else
                            return 3;
                        break;
                    case gs_color_space_index_DeviceN:
                        pcs2 = pcs;
                        while (pcs2->base_space)
                            pcs2 = pcs2->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        if (csi == gs_color_space_index_DeviceRGB)
                            return 0;
                        else
                            return 4;
                        break;
                    case gs_color_space_index_Indexed:
                        pcs2 = pcs->base_space;
                        csi = gs_color_space_get_index(pcs2);
                        if (csi == gs_color_space_index_ICC)
                            csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                        switch(csi) {
                            case gs_color_space_index_DeviceGray:
                            case gs_color_space_index_DeviceRGB:
                                return 0;
                                break;
                            case gs_color_space_index_Separation:
                                pcs2 = pcs;
                                while (pcs2->base_space)
                                    pcs2 = pcs2->base_space;
                                csi = gs_color_space_get_index(pcs2);
                                if (csi == gs_color_space_index_ICC)
                                    csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                                if (csi == gs_color_space_index_DeviceRGB)
                                    return 0;
                                else
                                    return 3;
                                break;
                            case gs_color_space_index_DeviceN:
                                pcs2 = pcs;
                                while (pcs2->base_space)
                                    pcs2 = pcs2->base_space;
                                csi = gs_color_space_get_index(pcs2);
                                if (csi == gs_color_space_index_ICC)
                                    csi = gsicc_get_default_type(pcs2->cmm_icc_profile_data);
                                if (csi == gs_color_space_index_DeviceRGB)
                                    return 0;
                                else
                                    return 4;
                                break;
                            default:
                                code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceRGB, cs_value);
                                if (code < 0)
                                    return code;
                                return 1;
                                break;
                        }
                        break;
                    default:
                        code = setup_image_process_colorspace(pdev, image, pcs_orig, names->DeviceRGB, cs_value);
                        if (code < 0)
                            return code;
                        return 1;
                        break;
                }
                break;
            default:
                break;
        }
    }
    return 0;
}

static int
new_pdf_begin_typed_image(gx_device_pdf *pdev, const gs_imager_state * pis,
                      const gs_matrix *pmat, const gs_image_common_t *pic,
                      const gs_int_rect * prect,
                      const gx_drawing_color * pdcolor,
                      const gx_clip_path * pcpath, gs_memory_t * mem,
                      gx_image_enum_common_t ** pinfo,
                      pdf_typed_image_context_t context)
{
    int code, i;
    unsigned int use_fallback = 0, in_line = 0, is_mask = 0,
        force_lossless = 0, convert_to_process_colors = 0, reduce_bits = 0;
    int width, height;
    cos_dict_t *pnamed = 0;
    image_union_t *image;
    const gs_pixel_image_t *pim;
    gs_int_rect rect;
    gs_image_format_t format;
    const gs_color_space *pcs;
    int num_components;
    pdf_image_enum *pie;
    const pdf_color_space_names_t *names;
    gs_color_space *pcs_orig = ((void*)0);
    gs_color_space *pcs_device = ((void*)0);
    cos_value_t cs_value;
    const gs_range_t *pranges = 0;

    image = (image_union_t *)(void *)(*(mem->non_gc_memory->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory->non_gc_memory, 4, sizeof(image_union_t), "pdf_begin_typed_image(image)");

    if (image == 0)
        return ((-25));





    {
        cos_value_t ni_value;

        if (cos_array_unadd(pdev->NI_stack, &ni_value) >= 0)
            pnamed = (cos_dict_t *)ni_value.contents.object;
    }




    pdev->image_mask_id = 0L;


    switch (pic->type->index) {
    case 1:
        is_mask = ((const gs_image_t *)pic)->ImageMask;
        code = setup_type1_image(pdev, pic, pdcolor, image, context);
        if (code < 0) {
            use_fallback = 1;
        }
        else
            in_line = code;
        break;

    case 3:
        pdev->image_mask_is_SMask = ((bool)0);
        if (pdev->CompatibilityLevel < 1.2 ||
            (prect && !(prect->p.x == 0 && prect->p.y == 0 &&
                   prect->q.x == ((const gs_image3_t *)pic)->Width &&
                   prect->q.y == ((const gs_image3_t *)pic)->Height))) {
            ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

            return (gx_default_begin_typed_image((gx_device *)pdev, pis, pmat, pic, prect, pdcolor,
                pcpath, mem, pinfo));
        }
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        return (setup_type3_image(pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem, pinfo, image));
        break;

    case 103:
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        if (pdev->CompatibilityLevel < 1.4 ||
            (prect && !(prect->p.x == 0 && prect->p.y == 0 &&
                       prect->q.x == ((const gs_image3x_t *)pic)->Width &&
                       prect->q.y == ((const gs_image3x_t *)pic)->Height))) {
            return (gx_default_begin_typed_image((gx_device *)pdev, pis, pmat, pic, prect, pdcolor,
                pcpath, mem, pinfo));
        }
        pdev->image_mask_is_SMask = ((bool)1);
        return gx_begin_image3x_generic((gx_device *)pdev, pis, pmat, pic,
                                        prect, pdcolor, pcpath, mem,
                                        pdf_image3x_make_mid,
                                        pdf_image3x_make_mcde, pinfo);
        break;

    case 4:
        code = convert_type4_image(pdev, pis, pmat, pic, prect, pdcolor,
                      pcpath, mem, pinfo, context, image, pnamed);
        if (code < 0) {
            use_fallback = 1;
        }
        if (code == 0) {
            ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

            return code;
        }

        if (pdev->CompatibilityLevel < 1.2) {
            use_fallback = 1;
        }
        if (pdev->CompatibilityLevel < 1.3 && !pdev->PatternImagemask) {
            ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

            return (convert_type4_to_masked_image(pdev, pis, pic, prect, pdcolor,
                      pcpath, mem,pinfo));
        }
        image[0].type4 = *(const gs_image4_t *)pic;
        break;

    default:
        use_fallback = 1;
        break;
    }

    pim = (const gs_pixel_image_t *)pic;
    format = pim->format;
    switch (format) {
    case gs_image_format_chunky:
    case gs_image_format_component_planar:
        break;
    default:
        use_fallback = 1;
    }

    if (pim->Width == 0 || pim->Height == 0)
        use_fallback = 1;

    switch (pim->BitsPerComponent) {
        case 1:
        case 2:
        case 4:
        case 8:
            break;
        case 12:
        case 16:
            use_fallback = 1;

            break;
        default:
            ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

            return ((-15));
    }
    if (prect)
        rect = *prect;
    else {
        rect.p.x = rect.p.y = 0;
        rect.q.x = pim->Width, rect.q.y = pim->Height;
    }
    if (rect.p.x != 0 || rect.p.y != 0 ||
        rect.q.x != pim->Width || rect.q.y != pim->Height ||
        (is_mask && pim->CombineWithColor))
        use_fallback = 1;

    if (pdev->Eps2Write) {
        gs_rect sbox, dbox, *Box;
        gs_point corners[4];
        gs_fixed_rect ibox;
        gs_matrix * pmat1 = (gs_matrix *)pmat;
        gs_matrix mat;

        if (!pdev->accumulating_charproc)
            Box = &pdev->BBox;
        else
            Box = &pdev->charproc_BBox;
        if (pmat1 == 0)
            pmat1 = (gs_matrix *)&(*(const gs_matrix *)&(pis)->ctm);
        if ((code = gs_matrix_invert(&pic->ImageMatrix, &mat)) < 0 ||
            (code = gs_matrix_multiply(&mat, pmat1, &mat)) < 0)
            return code;
        sbox.p.x = rect.p.x;
        sbox.p.y = rect.p.y;
        sbox.q.x = rect.q.x;
        sbox.q.y = rect.q.y;
        gs_bbox_transform_only(&sbox, &mat, corners);
        gs_points_bbox(corners, &dbox);
        ibox.p.x = ((fixed)((dbox.p.x)*(float)(1<<8)));
        ibox.p.y = ((fixed)((dbox.p.y)*(float)(1<<8)));
        ibox.q.x = ((fixed)((dbox.q.x)*(float)(1<<8)));
        ibox.q.y = ((fixed)((dbox.q.y)*(float)(1<<8)));
        if (pcpath != ((void*)0) &&
            !gx_cpath_includes_rectangle(pcpath, ibox.p.x, ibox.p.y,
            ibox.q.x, ibox.q.y)
            ) {


            gx_device_clip cdev;
            gx_drawing_color devc;

            fixed x0 = ((fixed)((corners[0].x)*(float)(1<<8))), y0 = ((fixed)((corners[0].y)*(float)(1<<8)));
            fixed bx2 = ((fixed)((corners[2].x)*(float)(1<<8))) - x0, by2 = ((fixed)((corners[2].y)*(float)(1<<8))) - y0;

            pdev->AccumulatingBBox++;
            gx_make_clip_device_on_stack(&cdev, pcpath, (gx_device *)pdev);
            ((&devc)->colors.pure = (gx_device_black((gx_device *)pdev)), (&devc)->type = (&gx_dc_type_data_pure)); (&devc)->ccolor_valid = ((bool)0);
            gx_default_fill_triangle((gx_device *) & cdev, x0, y0,
                ((fixed)((corners[1].x)*(float)(1<<8))) - x0,
                ((fixed)((corners[1].y)*(float)(1<<8))) - y0,
                bx2, by2, &devc, (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0)));
            gx_default_fill_triangle((gx_device *) & cdev, x0, y0,
                ((fixed)((corners[3].x)*(float)(1<<8))) - x0,
                ((fixed)((corners[3].y)*(float)(1<<8))) - y0,
                bx2, by2, &devc, (rop3_default | (((bool)0) ? 0x100 : 0) | (((bool)0) ? 0x200 : 0)));
            pdev->AccumulatingBBox--;
        } else {

            float x0, y0, x1, y1;
            x0 = ((ibox.p.x)*(1.0/(1<<8))) / (pdev->HWResolution[0] / 72.0);
            y0 = ((ibox.p.y)*(1.0/(1<<8))) / (pdev->HWResolution[1] / 72.0);
            x1 = ((ibox.q.x)*(1.0/(1<<8))) / (pdev->HWResolution[0] / 72.0);
            y1 = ((ibox.q.y)*(1.0/(1<<8))) / (pdev->HWResolution[1] / 72.0);
            if (Box->p.x > x0)
                Box->p.x = x0;
            if (Box->p.y > y0)
                Box->p.y = y0;
            if (Box->q.x < x1)
                Box->q.x = x1;
            if (Box->q.y < y1)
                Box->q.y = y1;
        }
    }

    if (use_fallback) {
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        return gx_default_begin_typed_image
            ((gx_device *)pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
            pinfo);
    }

    pcs = pim->ColorSpace;
    num_components = (is_mask ? 1 : gs_color_space_num_components(pcs));

    if (pdf_must_put_clip_path(pdev, pcpath))
        code = pdf_unclip(pdev);
    else
        code = pdf_open_page(pdev, PDF_IN_STREAM);
    if (code < 0) {
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        return gx_default_begin_typed_image
            ((gx_device *)pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
            pinfo);
    }

    if (context == PDF_IMAGE_TYPE3_MASK) {






        pcs = gs_cspace_new_DeviceGray(pdev->memory);
    } else if (is_mask)
        code = pdf_prepare_imagemask(pdev, pis, pdcolor);
    else
        code = pdf_prepare_image(pdev, pis);
    if (code < 0) {
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        return gx_default_begin_typed_image
            ((gx_device *)pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
            pinfo);
    }

    pie = (pdf_image_enum *)(*(mem)->procs.alloc_struct)(mem, &st_pdf_image_enum, "pdf_begin_image");

    if (pie == 0) {
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        return ((-25));
    }
    memset(pie, 0, sizeof(*pie));
    *pinfo = (gx_image_enum_common_t *) pie;
    gx_image_enum_common_init(*pinfo, (const gs_data_image_t *) pim,
                    ((pdev->CompatibilityLevel >= 1.3) ?
                            (context == PDF_IMAGE_TYPE3_MASK ?
                            &pdf_image_object_enum_procs :
                            &pdf_image_enum_procs) :
                            context == PDF_IMAGE_TYPE3_MASK ?
                            &pdf_image_object_enum_procs :
                            context == PDF_IMAGE_TYPE3_DATA ?
                            &pdf_image_object_enum_procs2 :
                            &pdf_image_enum_procs),
                        (gx_device *)pdev, num_components, format);
    pie->memory = mem;
    width = rect.q.x - rect.p.x;
    pie->width = width;
    height = rect.q.y - rect.p.y;
    pie->bits_per_pixel =
        (reduce_bits ? reduce_bits : pim->BitsPerComponent) * num_components / pie->num_planes;
    pie->rows_left = height;
    if (pnamed != 0)
        in_line = ((bool)0);
    else {
        double nbytes = (double)(((ulong) pie->width * pie->bits_per_pixel + 7) >> 3) *
            pie->num_planes * pie->rows_left;

        in_line &= (nbytes < pdev->MaxInlineImageSize);
    }

    if (pmat == 0)
        pmat = &(*(const gs_matrix *)&(pis)->ctm);
    {
        gs_matrix mat;
        gs_matrix bmat;
        int code;

        pdf_make_bitmap_matrix(&bmat, -rect.p.x, -rect.p.y,
                               pim->Width, pim->Height, height);
        if ((code = gs_matrix_invert(&pim->ImageMatrix, &mat)) < 0 ||
            (code = gs_matrix_multiply(&bmat, &mat, &mat)) < 0 ||
            (code = gs_matrix_multiply(&mat, pmat, &pie->mat)) < 0
            ) {
            ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

            ((mem)->procs.free_object(mem, pie, "pdf_begin_image"));
            return code;
        }

        if (pie->mat.xx * pie->mat.yy == pie->mat.xy * pie->mat.yx)
            goto fail_and_fallback;
    }

    code = pdf_put_clip_path(pdev, pcpath);
    if (code < 0) {
        ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

        ((mem)->procs.free_object(mem, pie, "pdf_begin_image"));
        return code;
    }
    pdf_image_writer_init(&pie->writer);
# 1914 "./devices/vector/gdevpdfi.c"
    pie->writer.alt_writer_count = (in_line ||
                                    (pim->Width <= 64 && pim->Height <= 64)
                                    ? 1 : 2);
    if ((image[0].pixel.ColorSpace != ((void*)0) &&
        image[0].pixel.ColorSpace->type->index == gs_color_space_index_Indexed
        && pdev->params.ColorImage.DownsampleType != ds_Subsample) ||
        pdev->transfer_not_identity)
        force_lossless = ((bool)1);

    names = (in_line ? &pdf_color_space_names_short : &pdf_color_space_names);


    if (!is_mask) {
        if (image[0].pixel.ColorSpace != ((void*)0) && !(context == PDF_IMAGE_TYPE3_MASK))
            convert_to_process_colors = setup_image_colorspace(pdev, &image[0], pcs, &pcs_orig, names, &cs_value);
        if (convert_to_process_colors == 4) {
            code = convert_DeviceN_alternate(pdev, pis, pcs, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &cs_value, in_line);
            if (code < 0)
                goto fail_and_fallback;
        }
        if (convert_to_process_colors == 3) {
            code = convert_separation_alternate(pdev, pis, pcs, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &cs_value, in_line);
            if (code < 0)
                goto fail_and_fallback;
        }
        if (convert_to_process_colors == 1) {
            code = make_device_color_space(pdev, pdev->pcm_color_info_index, &pcs_device);
            if (code < 0)
                goto fail_and_fallback;
            image[0].pixel.ColorSpace = pcs_device;
            code = pdf_color_space_named(pdev, &cs_value, &pranges, pcs_device, names,
                                     in_line, ((void*)0), 0, ((bool)0));
            if (code < 0)
                goto fail_and_fallback;
        } else {
            if (convert_to_process_colors == 2) {
                convert_to_process_colors = 0;
                code = pdf_color_space_named(pdev, &cs_value, &pranges, pcs, names,
                                     in_line, ((void*)0), 0, ((bool)1));
                if (code < 0)
                    goto fail_and_fallback;
            } else {
                convert_to_process_colors = 0;
                code = pdf_color_space_named(pdev, &cs_value, &pranges, pcs, names,
                                     in_line, ((void*)0), 0, ((bool)0));
                if (code < 0)
                    goto fail_and_fallback;
            }
        }
    }

    image[1] = image[0];

    pdev->ParamCompatibilityLevel = pdev->CompatibilityLevel;

    code = pdf_begin_write_image(pdev, &pie->writer, 0L, width,
                    height, pnamed, in_line);
    if (code < 0)
        goto fail_and_fallback;
# 1985 "./devices/vector/gdevpdfi.c"
    if (in_line) {
        code = new_setup_lossless_filters((gx_device_psdf *) pdev,
                                             &pie->writer.binary[0],
                                             &image[0].pixel, in_line, convert_to_process_colors);
    } else {
        if (force_lossless) {
# 2000 "./devices/vector/gdevpdfi.c"
            int saved_downsample = pdev->params.ColorImage.DownsampleType;

            pdev->params.ColorImage.DownsampleType = ds_Subsample;
            code = new_setup_image_filters((gx_device_psdf *) pdev,
                                          &pie->writer.binary[0], &image[0].pixel,
                                          pmat, pis, ((bool)1), in_line, convert_to_process_colors);
            pdev->params.ColorImage.DownsampleType = saved_downsample;
        } else {
            code = new_setup_image_filters((gx_device_psdf *) pdev,
                                          &pie->writer.binary[0], &image[0].pixel,
                                          pmat, pis, ((bool)1), in_line, convert_to_process_colors);
        }
    }

    if (code < 0)
        goto fail_and_fallback;

    if (convert_to_process_colors) {
        image[0].pixel.ColorSpace = pcs_orig;
        code = psdf_setup_image_colors_filter(&pie->writer.binary[0],
                    (gx_device_psdf *)pdev, &image[0].pixel, pis);
        if (code < 0)
            goto fail_and_fallback;
        image[0].pixel.ColorSpace = pcs_device;
    }

    if (reduce_bits) {
        code = new_resize_input(&pie->writer.binary[0], pim->Width, gs_color_space_num_components(pim->ColorSpace), reduce_bits, 8);
        if (code < 0)
            goto fail_and_fallback;
    }

    if (pie->writer.alt_writer_count > 1) {
        code = pdf_make_alt_stream(pdev, &pie->writer.binary[1]);
        if (code) {
            goto fail_and_fallback;
        }
        code = new_setup_image_filters((gx_device_psdf *) pdev,
                                  &pie->writer.binary[1], &image[1].pixel,
                                  pmat, pis, force_lossless, in_line, convert_to_process_colors);
        if (code == (-15)) {

            for (i=1;i < pie->writer.alt_writer_count; i++) {
                stream *s = pie->writer.binary[i].strm;
                cos_stream_t *pcos = cos_stream_from_pipeline(pie->writer.binary[i].strm);
                s_close_filters(&s, ((void*)0));
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, s, "compressed image stream"));
                pcos->cos_procs->release((cos_object_t *)pcos, "pdf_begin_typed_image_impl");
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, pcos, "compressed image cos_stream"));
            }

            pie->writer.alt_writer_count = 1;
            memset(pie->writer.binary + 1, 0, sizeof(pie->writer.binary[1]));
            memset(pie->writer.binary + 2, 0, sizeof(pie->writer.binary[1]));
        } else if (code) {
            goto fail_and_fallback;
        } else if (convert_to_process_colors) {
            image[1].pixel.ColorSpace = pcs_orig;
            code = psdf_setup_image_colors_filter(&pie->writer.binary[1],
                    (gx_device_psdf *)pdev, &image[1].pixel, pis);
            if (code < 0) {
                goto fail_and_fallback;
            }
            image[1].pixel.ColorSpace = pcs_device;
        }
        if (reduce_bits) {
            code = new_resize_input(&pie->writer.binary[0], pim->Width, gs_color_space_num_components(pim->ColorSpace), reduce_bits, 8);
            if (code < 0)
                goto fail_and_fallback;
        }
    }

    for (i = 0; i < pie->writer.alt_writer_count; i++) {
        code = pdf_begin_image_data_decoded(pdev, num_components, pranges, i,
                             &image[i].pixel, &cs_value, pie);
        if (code < 0)
            goto fail_and_fallback;
    }
    if (pie->writer.alt_writer_count == 2) {
        psdf_setup_compression_chooser(&pie->writer.binary[2],
             (gx_device_psdf *)pdev, pim->Width, pim->Height,
             num_components, pim->BitsPerComponent);
        pie->writer.alt_writer_count = 3;
    }
    if (pic->type->index == 4 && pdev->CompatibilityLevel < 1.3) {
        int i;


        i = pie->writer.alt_writer_count;
        gs_image_t_init_mask_adjust((gs_image_t *)&image[i].type1, ((bool)1), ((bool)0));
        image[i].type1.Width = image[0].pixel.Width;
        image[i].type1.Height = image[0].pixel.Height;

        code = pdf_begin_write_image(pdev, &pie->writer, 0L, width,
                    height, ((void*)0), ((bool)0));
        if (code)
            goto fail_and_fallback;
        code = psdf_setup_image_filters((gx_device_psdf *) pdev,
                                  &pie->writer.binary[i], &image[i].pixel,
                                  pmat, pis, force_lossless, in_line);
        if (code < 0)
            goto fail_and_fallback;
        psdf_setup_image_to_mask_filter(&pie->writer.binary[i],
             (gx_device_psdf *)pdev, pim->Width, pim->Height,
             num_components, pim->BitsPerComponent, image[i].type4.MaskColor);
        code = pdf_begin_image_data_decoded(pdev, num_components, pranges, i,
                             &image[i].pixel, &cs_value, pie);
        if (code < 0)
            goto fail_and_fallback;
        ++pie->writer.alt_writer_count;
    }

    ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

    return 0;

fail_and_fallback:
    ((mem->non_gc_memory->non_gc_memory)->procs.free_object(mem->non_gc_memory->non_gc_memory, image, "pdf_begin_typed_image(image)"));

    ((mem)->procs.free_object(mem, pie, "pdf_begin_image"));
    return gx_default_begin_typed_image
        ((gx_device *)pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
        pinfo);
}

static int pdf_begin_typed_image(gx_device_pdf *pdev,
    const gs_imager_state * pis, const gs_matrix *pmat,
    const gs_image_common_t *pic, const gs_int_rect * prect,
    const gx_drawing_color * pdcolor, const gx_clip_path * pcpath,
    gs_memory_t * mem, gx_image_enum_common_t ** pinfo,
    pdf_typed_image_context_t context)
{
    if (!pdev->UseOldColor) {
    return new_pdf_begin_typed_image(pdev, pis, pmat, pic, prect,
                                 pdcolor, pcpath, mem, pinfo,
                                 context);
    } else {
    return old_pdf_begin_typed_image(pdev, pis, pmat, pic, prect,
                                 pdcolor, pcpath, mem, pinfo,
                                 context);
    }
}

int
gdev_pdf_begin_typed_image(gx_device * dev, const gs_imager_state * pis,
                           const gs_matrix *pmat, const gs_image_common_t *pic,
                           const gs_int_rect * prect,
                           const gx_drawing_color * pdcolor,
                           const gx_clip_path * pcpath, gs_memory_t * mem,
                           gx_image_enum_common_t ** pinfo)
{
    return pdf_begin_typed_image((gx_device_pdf *)dev, pis, pmat, pic, prect,
                                 pdcolor, pcpath, mem, pinfo,
                                 PDF_IMAGE_DEFAULT);
}




static int
pdf_image_plane_data_alt(gx_image_enum_common_t * info,
                     const gx_image_plane_t * planes, int height,
                     int *rows_used, int alt_writer_index)
{
    pdf_image_enum *pie = (pdf_image_enum *) info;
    int h = height;
    int y;

    uint width_bits = pie->width * pie->plane_depths[0];

    uint bcount = (width_bits + 7) >> 3;
    uint ignore;
    int nplanes = pie->num_planes;
    int status = 0;

    if (h > pie->rows_left)
        h = pie->rows_left;
    for (y = 0; y < h; ++y) {
        if (nplanes > 1) {
# 2188 "./devices/vector/gdevpdfi.c"
            int pi;
            uint count = bcount;
            uint offset = 0;

            const byte *bit_planes[((64) + 1)];
            int block_bytes = (((200) > (3 * ((64) + 1))) ? (200) : (3 * ((64) + 1))) / (3 * nplanes) * 3;
            byte row[(((200) > (3 * ((64) + 1))) ? (200) : (3 * ((64) + 1)))];

            for (pi = 0; pi < nplanes; ++pi)
                bit_planes[pi] = planes[pi].data + planes[pi].raster * y;
            while (count) {
                uint flip_count;
                uint flipped_count;

                if (count >= block_bytes) {
                    flip_count = block_bytes;
                    flipped_count = block_bytes * nplanes;
                } else {
                    flip_count = count;
                    flipped_count =
                        (width_bits % (block_bytes * 8) * nplanes + 7) >> 3;
                }
                image_flip_planes(row, bit_planes, offset, flip_count,
                                  nplanes, pie->plane_depths[0]);
                status = sputs(pie->writer.binary[alt_writer_index].strm, row,
                               flipped_count, &ignore);
                if (status < 0)
                    break;
                offset += flip_count;
                count -= flip_count;
            }
        } else {
            status = sputs(pie->writer.binary[alt_writer_index].strm,
                           planes[0].data + planes[0].raster * y, bcount,
                           &ignore);
        }
        if (status < 0)
            break;
    }
    *rows_used = h;
    if (status < 0)
        return ((-12));
    return !pie->rows_left;

}

static int
pdf_image_plane_data(gx_image_enum_common_t * info,
                     const gx_image_plane_t * planes, int height,
                     int *rows_used)
{
    pdf_image_enum *pie = (pdf_image_enum *) info;
    int i;

    for (i = 0; i < pie->writer.alt_writer_count; i++) {
        int code = pdf_image_plane_data_alt(info, planes, height, rows_used, i);
        if (code)
            return code;
    }
    pie->rows_left -= *rows_used;
    if (pie->writer.alt_writer_count > 2)
        pdf_choose_compression(&pie->writer, ((bool)0));

    return !pie->rows_left;
}

static int
use_image_as_pattern(gx_device_pdf *pdev, pdf_resource_t *pres1,
                     const gs_matrix *pmat, gs_id id)
{
    gs_imager_state s;
    gs_pattern1_instance_t inst;
    cos_value_t v;
    const pdf_resource_t *pres;
    int code;

    memset(&s, 0, sizeof(s));
    s.ctm.xx = pmat->xx;
    s.ctm.xy = pmat->xy;
    s.ctm.yx = pmat->yx;
    s.ctm.yy = pmat->yy;
    s.ctm.tx = pmat->tx;
    s.ctm.ty = pmat->ty;
    memset(&inst, 0, sizeof(inst));
    inst.saved = (gs_state *)&s;
    inst.templat.PaintType = 1;
    inst.templat.TilingType = 1;
    inst.templat.BBox.p.x = inst.templat.BBox.p.y = 0;
    inst.templat.BBox.q.x = 1;
    inst.templat.BBox.q.y = 1;
    inst.templat.XStep = 2;
    inst.templat.YStep = 2;
    code = (*((pdev)->procs.dev_spec_op))((gx_device *)pdev,
        gxdso_pattern_start_accum, &inst, id);
    if (code >= 0)
        pprintld1(pdev->strm, "/R%ld Do\n", pdf_resource_id(pres1));
    pres = pdev->accumulating_substream_resource;
    if (code >= 0)
        code = pdf_add_resource(pdev, pdev->substream_Resources, "/XObject", pres1);
    if (code >= 0)
        code = (*((pdev)->procs.dev_spec_op))((gx_device *)pdev,
            gxdso_pattern_finish_accum, &inst, id);
    if (code >= 0)
        code = (*((pdev)->procs.dev_spec_op))((gx_device *)pdev,
            gxdso_pattern_load, &inst, id);
    if (code >= 0) {
        stream_puts(pdev->strm, "q ");
        code = pdf_cs_Pattern_colored(pdev, &v);
    }
    if (code >= 0) {
        cos_value_write(&v, pdev);
        pprintld1(pdev->strm, " cs /R%ld scn ", pdf_resource_id(pres));
    }
    if (code >= 0) {





        gs_matrix m = pdev->converting_image_matrix;

        m.tx = pmat->tx;
        m.ty = pmat->ty;
        code = pdf_do_image_by_id(pdev, pdev->image_mask_scale,
             &m, ((bool)1), pdev->image_mask_id);
        stream_puts(pdev->strm, "Q\n");
    }
    return code;
}

typedef enum {
    USE_AS_MASK,
    USE_AS_IMAGE,
    USE_AS_PATTERN
} pdf_image_usage_t;


static int
pdf_end_and_do_image(gx_device_pdf *pdev, pdf_image_writer *piw,
                     const gs_matrix *mat, gs_id ps_bitmap_id, pdf_image_usage_t do_image)
{
    int code = pdf_end_write_image(pdev, piw);
    pdf_resource_t *pres = piw->pres;

    switch (code) {
    default:
        return code;
    case 1:
        code = 0;
        break;
    case 0:
        if (do_image == USE_AS_IMAGE) {
            if (pdev->image_mask_id != 0L) {
                char buf[20];

                gs_sprintf(buf, "%ld 0 R", pdev->image_mask_id);
                code = cos_dict_put_string_copy((cos_dict_t *)pres->object,
                        pdev->image_mask_is_SMask ? "/SMask" : "/Mask", buf);
                if (code < 0)
                    return code;
            }
            if (pdev->image_mask_skip)
                code = 0;
            else
                code = pdf_do_image(pdev, pres, mat, ((bool)1));
        } else if (do_image == USE_AS_MASK) {



            const pdf_x_object_t *const pxo = (const pdf_x_object_t *)pres;

            pdev->image_mask_scale = (double)pxo->data_height / pxo->height;
            pdev->image_mask_id = pdf_resource_id(pres);
            pdev->converting_image_matrix = *mat;
        } else if (do_image == USE_AS_PATTERN)
            code = use_image_as_pattern(pdev, pres, mat, ps_bitmap_id);
    }
    return code;
}


static int
pdf_image_end_image_data(gx_image_enum_common_t * info, bool draw_last,
                         pdf_image_usage_t do_image)
{
    gx_device_pdf *pdev = (gx_device_pdf *)info->dev;
    pdf_image_enum *pie = (pdf_image_enum *)info;
    int height = pie->writer.height;
    int data_height = height - pie->rows_left;
    int code = 0;

    if (pie->writer.pres)
        ((pdf_x_object_t *)pie->writer.pres)->data_height = data_height;
    else if (data_height > 0)
        pdf_put_image_matrix(pdev, &pie->mat, (double)data_height / height);
    if (data_height > 0) {
        code = pdf_complete_image_data(pdev, &pie->writer, data_height,
                        pie->width, pie->bits_per_pixel);
        if (code < 0)
            return code;
        code = pdf_end_image_binary(pdev, &pie->writer, data_height);

        if (code < 0)
            return code;
        if (pie->writer.alt_writer_count == 2) {


            pdf_image_writer writer = pie->writer;

            writer.binary[0] = pie->writer.binary[1];
            writer.pres = pie->writer.pres_mask;
            writer.alt_writer_count = 1;
            memset(&pie->writer.binary[1], 0, sizeof(pie->writer.binary[1]));
            pie->writer.alt_writer_count--;
            pie->writer.pres_mask = 0;
            code = pdf_end_image_binary(pdev, &writer, data_height);
            if (code < 0)
                return code;
            code = pdf_end_and_do_image(pdev, &writer, &pie->mat, info->id, USE_AS_MASK);
            if (code < 0)
                return code;
            code = pdf_end_and_do_image(pdev, &pie->writer, &pie->mat, info->id, USE_AS_PATTERN);
        } else
            code = pdf_end_and_do_image(pdev, &pie->writer, &pie->mat, info->id, do_image);
        pie->writer.alt_writer_count--;
    }
    gx_image_free_enum(&info);
    return code;
}


static int
pdf_image_end_image(gx_image_enum_common_t * info, bool draw_last)
{
    return pdf_image_end_image_data(info, draw_last, USE_AS_IMAGE);
}


static int
pdf_image_end_image_cvd(gx_image_enum_common_t * info, bool draw_last)
{ pdf_lcvd_t *cvd = (pdf_lcvd_t *)info->dev;
    int code = pdf_dump_converted_image(cvd->pdev, cvd);
    int code1 = gx_image1_end_image(info, draw_last);
    int code2 = gs_closedevice((gx_device *)cvd->mask);
    int code3 = gs_closedevice((gx_device *)cvd);

    ((cvd->mask->memory)->procs.free_object(cvd->mask->memory, (gx_device *)cvd->mask, "pdf_image_end_image_cvd"));
    ((cvd->mdev.memory)->procs.free_object(cvd->mdev.memory, (gx_device *)cvd, "pdf_image_end_image_cvd"));
    return code < 0 ? code : code1 < 0 ? code1 : code2 < 0 ? code2 : code3;
}






static int
pdf_make_mxd(gx_device **pmxdev, gx_device *tdev, gs_memory_t *mem)
{
    gx_device *fdev;
    int code = gs_copydevice(&fdev, (const gx_device *)&gs_null_device, mem);

    if (code < 0)
        return code;
    gx_device_set_target((gx_device_forward *)fdev, tdev);
    *pmxdev = fdev;
    return 0;
}


static int
pdf_image_end_image_object(gx_image_enum_common_t * info, bool draw_last)
{
    return pdf_image_end_image_data(info, draw_last, USE_AS_MASK);
}

static int
pdf_image_end_image_object2(gx_image_enum_common_t * info, bool draw_last)
{
    return pdf_image_end_image_data(info, draw_last, USE_AS_PATTERN);
}




static int pdf_mid_begin_typed_image(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo);
static int
pdf_image3_make_mid(gx_device **pmidev, gx_device *dev, int width, int height,
                    gs_memory_t *mem)
{
    gx_device_pdf *pdev = (gx_device_pdf *)dev;

    if (pdev->CompatibilityLevel < 1.3 && !pdev->PatternImagemask) {
        gs_matrix m;
        pdf_lcvd_t *cvd = ((void*)0);
        int code;

        gs_make_identity(&m);
        code = pdf_setup_masked_image_converter(pdev, mem, &m, &cvd,
                                        ((bool)1), 0, 0, width, height, ((bool)1));
        if (code < 0)
            return code;
        cvd->mask->target = (gx_device *)cvd;

        cvd->mask_is_empty = ((bool)0);
        *pmidev = (gx_device *)cvd->mask;
        return 0;
    } else {
        int code = pdf_make_mxd(pmidev, dev, mem);

        if (code < 0)
            return code;
        ((*pmidev)->procs.begin_typed_image = (pdf_mid_begin_typed_image));
        return 0;
    }
}
static int
pdf_mid_begin_typed_image(gx_device * dev, const gs_imager_state * pis,
                          const gs_matrix *pmat, const gs_image_common_t *pic,
                          const gs_int_rect * prect,
                          const gx_drawing_color * pdcolor,
                          const gx_clip_path * pcpath, gs_memory_t * mem,
                          gx_image_enum_common_t ** pinfo)
{

    gx_device_pdf *const pdev = (gx_device_pdf *)
        ((gx_device_null *)dev)->target;
    return pdf_begin_typed_image
        (pdev, pis, pmat, pic, prect, pdcolor, pcpath, mem, pinfo,
         PDF_IMAGE_TYPE3_MASK);
}


static int
pdf_image3_make_mcde(gx_device *dev, const gs_imager_state *pis,
                     const gs_matrix *pmat, const gs_image_common_t *pic,
                     const gs_int_rect *prect, const gx_drawing_color *pdcolor,
                     const gx_clip_path *pcpath, gs_memory_t *mem,
                     gx_image_enum_common_t **pinfo,
                     gx_device **pmcdev, gx_device *midev,
                     gx_image_enum_common_t *pminfo,
                     const gs_int_point *origin)
{
    int code;
    gx_device_pdf *pdev = (gx_device_pdf *)dev;

    if (pdev->CompatibilityLevel < 1.3 && !pdev->PatternImagemask) {

        pdf_lcvd_t *cvd = (pdf_lcvd_t *)((gx_device_memory *)midev)->target;

        ((gx_device_memory *)midev)->target = ((void*)0);
        cvd->m = pdev->converting_image_matrix;
        cvd->mdev.mapped_x = origin->x;
        cvd->mdev.mapped_y = origin->y;
        *pmcdev = (gx_device *)&cvd->mdev;
        code = gx_default_begin_typed_image
            ((gx_device *)&cvd->mdev, pis, pmat, pic, prect, pdcolor, ((void*)0), mem,
            pinfo);
        if (code < 0)
            return code;
    } else {
        code = pdf_make_mxd(pmcdev, midev, mem);
        if (code < 0)
            return code;
        code = pdf_begin_typed_image
            ((gx_device_pdf *)dev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
            pinfo, PDF_IMAGE_TYPE3_DATA);
        if (code < 0)
            return code;
    }



    return 0;
}




static int
pdf_image3x_make_mid(gx_device **pmidev, gx_device *dev, int width, int height,
                     int depth, gs_memory_t *mem)
{
    int code = pdf_make_mxd(pmidev, dev, mem);

    if (code < 0)
        return code;
    ((*pmidev)->procs.begin_typed_image = (pdf_mid_begin_typed_image));
    return 0;
}


static int
pdf_image3x_make_mcde(gx_device *dev, const gs_imager_state *pis,
                      const gs_matrix *pmat, const gs_image_common_t *pic,
                      const gs_int_rect *prect,
                      const gx_drawing_color *pdcolor,
                      const gx_clip_path *pcpath, gs_memory_t *mem,
                      gx_image_enum_common_t **pinfo,
                      gx_device **pmcdev, gx_device *midev[2],
                      gx_image_enum_common_t *pminfo[2],
                      const gs_int_point origin[2],
                      const gs_image3x_t *pim)
{
    int code;
    pdf_image_enum *pmie;
    int i;
    const gs_image3x_mask_t *pixm;

    if (midev[0]) {
        if (midev[1])
            return ((-15));
        i = 0, pixm = &pim->Opacity;
    } else if (midev[1])
        i = 1, pixm = &pim->Shape;
    else
        return ((-15));
    code = pdf_make_mxd(pmcdev, midev[i], mem);
    if (code < 0)
        return code;
    code = pdf_begin_typed_image
        ((gx_device_pdf *)dev, pis, pmat, pic, prect, pdcolor, pcpath, mem,
         pinfo, PDF_IMAGE_TYPE3_DATA);
    if (code < 0)
        return code;
    if ((*pinfo)->procs != &pdf_image_enum_procs) {

        gx_image_end(*pinfo, ((bool)0));
        ((mem)->procs.free_object(mem, *pmcdev, "pdf_image3x_make_mcde"));
        return ((-15));
    }
    pmie = (pdf_image_enum *)pminfo[i];




    if (pixm->has_Matte) {
        int num_components =
            gs_color_space_num_components(pim->ColorSpace);

        code = cos_dict_put_c_key_floats(
                                (cos_dict_t *)pmie->writer.pres->object,
                                "/Matte", pixm->Matte,
                                num_components);
        if (code < 0)
            return code;
    }




    return 0;
}

pdf_resource_t *pdf_substitute_pattern(pdf_resource_t *pres)
{
    pdf_pattern_t *ppat = (pdf_pattern_t *)pres;

    return (pdf_resource_t *)(ppat->substitute != 0 ? ppat->substitute : ppat);
}

static int
check_unsubstituted2(gx_device_pdf * pdev, pdf_resource_t *pres0, pdf_resource_t *pres1)
{
    pdf_pattern_t *ppat0 = (pdf_pattern_t *)pres0;
    pdf_pattern_t *ppat1 = (pdf_pattern_t *)pres1;

    return (ppat0->substitute == ((void*)0) && ppat1->substitute == ((void*)0));
}

static int
check_unsubstituted1(gx_device_pdf * pdev, pdf_resource_t *pres0)
{
    pdf_pattern_t *ppat = (pdf_pattern_t *)pres0;

    return ppat->substitute != ((void*)0);
}





int
gdev_pdf_dev_spec_op(gx_device *pdev1, int dev_spec_op, void *data, int size)
{
    gx_device_pdf *pdev = (gx_device_pdf *)pdev1;
    int code=0;
    pdf_resource_t *pres, *pres1;
    gx_bitmap_id id = (gx_bitmap_id)size;
    gs_pattern1_instance_t *pinst = (gs_pattern1_instance_t *)data;

    switch (dev_spec_op) {
        case gxdso_pattern_can_accum:
            return 1;
        case gxdso_form_begin:
            if (pdev->HighLevelForm == 0 && pdev->PatternDepth == 0) {
                gs_form_template_t *tmplate = (gs_form_template_t *)data;
                float arry[6];
                cos_dict_t *pcd = ((void*)0), *pcd_Resources = ((void*)0);


                code = pdfwrite_pdf_open_document(pdev);
                if (code < 0)
                    return code;
                code = pdf_open_contents(pdev, PDF_IN_STREAM);
                if (code < 0)
                    return code;

                code = pdf_put_clip_path(pdev, tmplate->pcpath);
                if (code < 0)
                    return code;




                pprintg6(pdev->strm, "q %g %g %g %g %g %g cm\n", tmplate->CTM.xx, tmplate->CTM.xy,
                         tmplate->CTM.yx, tmplate->CTM.yy, tmplate->CTM.tx, tmplate->CTM.ty);


                code = pdf_enter_substream(pdev, resourceXObject, id, &pres, ((bool)0),
                        pdev->CompressFonts );
                if (code < 0)
                    return code;
                pcd = cos_stream_dict((cos_stream_t *)pres->object);
                pcd_Resources = cos_dict_alloc(pdev, "pdf_pattern(Resources)");
                if (pcd == ((void*)0) || pcd_Resources == ((void*)0))
                    return ((-25));
                code = cos_dict_put_c_strings(pcd, "/Type", "/XObject");
                if (code >= 0)
                    code = cos_dict_put_c_strings(pcd, "/Subtype", "/Form");
                if (code >= 0)
                    code = cos_dict_put_c_strings(pcd, "/FormType", "1");
                if (code >= 0)
                    code = cos_dict_put_c_key_object(pcd, "/Resources", ((cos_object_t *)&((pcd_Resources)->cos_procs)));
                arry[0] = tmplate->BBox.p.x;
                arry[1] = tmplate->BBox.p.y;
                arry[2] = tmplate->BBox.q.x;
                arry[3] = tmplate->BBox.q.y;
                if (code >= 0)
                    code = cos_dict_put_c_key_floats(pcd, "/BBox", arry, 4);
                if (code < 0)
                    return code;

                arry[0] = tmplate->form_matrix.xx;
                arry[1] = tmplate->form_matrix.xy;
                arry[2] = tmplate->form_matrix.yx;
                arry[3] = tmplate->form_matrix.yy;
                arry[4] = tmplate->form_matrix.tx;
                arry[5] = tmplate->form_matrix.ty;
                code = cos_dict_put_c_key_floats(pcd, "/Matrix", arry, 6);
                pprintg2(pdev->strm, "%g 0 0 %g 0 0 cm\n",
                         72.0 / pdev->HWResolution[0], 72.0 / pdev->HWResolution[1]);






                tmplate->CTM.xx = pdev->HWResolution[0] / 72;
                tmplate->CTM.xy = 0.0;
                tmplate->CTM.yx = 0.0;
                tmplate->CTM.yy = pdev->HWResolution[0] / 72;
                tmplate->CTM.tx = 0.0;
                tmplate->CTM.ty = 0.0;

                pdev->substream_Resources = pcd_Resources;
                pres->rid = id;
                if (code >= 0)
                    pdev->HighLevelForm++;
                return 1;
            }
            return code;
        case gxdso_form_end:

            if (pdev->HighLevelForm == 1 && pdev->PatternDepth == 0) {
                code = pdf_add_procsets(pdev->substream_Resources, pdev->procsets);
                if (code < 0)
                    return code;
                pres = pres1 = pdev->accumulating_substream_resource;
                code = pdf_exit_substream(pdev);
                if (code < 0)
                    return code;
                code = pdf_find_same_resource(pdev, resourceXObject, &pres, check_unsubstituted2);
                if (code < 0)
                    return code;
                if (code > 0) {
                    code = pdf_cancel_resource(pdev, pres1, resourceXObject);
                    if (code < 0)
                        return code;
                    pres->where_used |= pdev->used_mask;
                } else if (pres->object->id < 0)
                    pdf_reserve_object_id(pdev, pres, 0);
                pprintld1(pdev->strm, "/R%ld Do Q\n", pdf_resource_id(pres));
                pdev->HighLevelForm--;
            }
            return 0;
        case gxdso_pattern_start_accum:
            code = pdf_enter_substream(pdev, resourcePattern, id, &pres, ((bool)0),
                    pdev->CompressFonts );
            if (code < 0)
                return code;
            pres->rid = id;
            code = pdf_store_pattern1_params(pdev, pres, pinst);
            if (code < 0)
                return code;

            pprintg2(pdev->strm, "%g 0 0 %g 0 0 cm\n",
                     72.0 / pdev->HWResolution[0], 72.0 / pdev->HWResolution[1]);
            pdev->PatternDepth++;
            return 1;
        case gxdso_pattern_finish_accum:
            code = pdf_add_procsets(pdev->substream_Resources, pdev->procsets);
            if (code < 0)
                return code;
            pres = pres1 = pdev->accumulating_substream_resource;
            code = pdf_exit_substream(pdev);
            if (code < 0)
                return code;
            if (pdev->substituted_pattern_count > 300 &&
                    pdev->substituted_pattern_drop_page != pdev->next_page) {
                pdf_drop_resources(pdev, resourcePattern, check_unsubstituted1);
                pdev->substituted_pattern_count = 0;
                pdev->substituted_pattern_drop_page = pdev->next_page;
            }
            code = pdf_find_same_resource(pdev, resourcePattern, &pres, check_unsubstituted2);
            if (code < 0)
                return code;
            if (code > 0) {
                pdf_pattern_t *ppat = (pdf_pattern_t *)pres1;

                code = pdf_cancel_resource(pdev, pres1, resourcePattern);
                if (code < 0)
                    return code;

                ppat->substitute = (pdf_pattern_t *)pres;
                pres->where_used |= pdev->used_mask;
                pdev->substituted_pattern_count++;
            } else if (pres->object->id < 0)
                pdf_reserve_object_id(pdev, pres, 0);
            pdev->PatternDepth--;
            return 1;
        case gxdso_pattern_load:
            pres = pdf_find_resource_by_gs_id(pdev, resourcePattern, id);
            if (pres == 0)
                return (-21);
            pres = pdf_substitute_pattern(pres);
            pres->where_used |= pdev->used_mask;
            code = pdf_add_resource(pdev, pdev->substream_Resources, "/Pattern", pres);
            if (code < 0)
                return code;
            return 1;
        case gxdso_pattern_shading_area:
            return 0;
        case gxdso_pattern_is_cpath_accum:
            return 0;
        case gxdso_pattern_shfill_doesnt_need_path:
            return 0;
        case gxdso_pattern_handles_clip_path:






            return 0;
        case gxdso_supports_hlcolor:




            return 1;
        case gxdso_needs_invariant_palette:



            return 1;
    }
    return gx_default_dev_spec_op(pdev1, dev_spec_op, data, size);
}
