# 1 "./base/fapi_ft.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/fapi_ft.c" 2
# 23 "./base/fapi_ft.c"
# 1 "./base/stdio_.h" 1
# 26 "./base/stdio_.h"
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
# 27 "./base/stdio_.h" 2
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
# 24 "./base/fapi_ft.c" 2
# 1 "./base/malloc_.h" 1
# 27 "./base/malloc_.h"
# 1 "./base/memento.h" 1
# 140 "./base/memento.h"
# 1 "/usr/include/memory.h" 1 3 4
# 29 "/usr/include/memory.h" 3 4
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
# 30 "/usr/include/memory.h" 2 3 4
# 141 "./base/memento.h" 2
# 168 "./base/memento.h"
int Memento_checkBlock(void *);
int Memento_checkAllMemory(void);
int Memento_check(void);

int Memento_setParanoia(int);
int Memento_paranoidAt(int);
int Memento_breakAt(int);
void Memento_breakOnFree(void *a);
void Memento_breakOnRealloc(void *a);
int Memento_getBlockNum(void *);
int Memento_find(void *a);
void Memento_breakpoint(void);
int Memento_failAt(int);
int Memento_failThisEvent(void);
void Memento_listBlocks(void);
void Memento_listNewBlocks(void);
size_t Memento_setMax(size_t);
void Memento_stats(void);
void *Memento_label(void *, const char *);

void *Memento_malloc(size_t s);
void *Memento_realloc(void *, size_t s);
void Memento_free(void *);
void *Memento_calloc(size_t, size_t);
# 28 "./base/malloc_.h" 2
# 42 "./base/malloc_.h"
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
# 43 "./base/malloc_.h" 2
# 52 "./base/malloc_.h"
void *gs_realloc(void *, size_t, size_t);
# 25 "./base/fapi_ft.c" 2
# 1 "./base/write_t1.h" 1
# 26 "./base/write_t1.h"
# 1 "./base/gxfapi.h" 1
# 19 "./base/gxfapi.h"
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
# 20 "./base/gxfapi.h" 2
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
# 21 "./base/gxfapi.h" 2
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
# 22 "./base/gxfapi.h" 2
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
# 23 "./base/gxfapi.h" 2



typedef struct gs_font_base_s gs_font_base;




typedef struct gs_state_s gs_state;




typedef struct gs_text_enum_s gs_text_enum_t;




typedef struct gs_font_s gs_font;


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
# 27 "./base/write_t1.h" 2

long gs_fapi_serialize_type1_font(gs_fapi_font * a_fapi_font,
                                  unsigned char *a_buffer,
                                  long a_buffer_size);
long gs_fapi_serialize_type1_font_complete(gs_fapi_font * a_fapi_font,
                                           unsigned char *a_buffer,
                                           long a_buffer_size);
# 26 "./base/fapi_ft.c" 2
# 1 "./base/write_t2.h" 1
# 28 "./base/write_t2.h"
long gs_fapi_serialize_type2_font(gs_fapi_font * a_fapi_font,
                                  unsigned char *a_buffer,
                                  long a_buffer_size);
# 27 "./base/fapi_ft.c" 2
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
# 28 "./base/fapi_ft.c" 2
# 1 "./base/gserrors.h" 1
# 50 "./base/gserrors.h"
int gs_log_error(int, const char *, int);
# 88 "./base/gserrors.h"
const char *gs_errstr(int code);
# 189 "./base/gserrors.h"
int gs_throw_imp(const char *func, const char *file, int line,
        int op, int code, const char *fmt, ...) __attribute__((__format__ (__printf__, 6, 7)));
# 29 "./base/fapi_ft.c" 2

# 1 "./base/gsmalloc.h" 1
# 23 "./base/gsmalloc.h"
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
# 24 "./base/gsmalloc.h" 2


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
# 31 "./base/fapi_ft.c" 2
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
# 32 "./base/fapi_ft.c" 2
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
# 33 "./base/fapi_ft.c" 2
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
# 34 "./base/fapi_ft.c" 2
# 1 "./base/gsmchunk.h" 1
# 28 "./base/gsmchunk.h"
int gs_memory_chunk_wrap(gs_memory_t **wrapped,
                      gs_memory_t * target );


void gs_memory_chunk_release(gs_memory_t *cmem);




gs_memory_t *gs_memory_chunk_target(const gs_memory_t *cmem);
# 35 "./base/fapi_ft.c" 2

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
# 37 "./base/fapi_ft.c" 2


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
# 40 "./base/fapi_ft.c" 2





# 1 "/usr/include/ft2build.h" 1 3 4
# 56 "/usr/include/ft2build.h" 3 4
# 1 "/usr/include/freetype2/freetype/config/ftheader.h" 1 3 4
# 57 "/usr/include/ft2build.h" 2 3 4
# 46 "./base/fapi_ft.c" 2
# 1 "/usr/include/freetype2/freetype/freetype.h" 1
# 33 "/usr/include/freetype2/freetype/freetype.h"
# 1 "/usr/include/freetype2/freetype/config/ftconfig.h" 1



# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 5 "/usr/include/freetype2/freetype/config/ftconfig.h" 2




# 1 "/usr/include/freetype2/freetype/config/ftconfig-64.h" 1
# 42 "/usr/include/freetype2/freetype/config/ftconfig-64.h"
# 1 "/usr/include/freetype2/freetype/config/ftoption.h" 1
# 43 "/usr/include/freetype2/freetype/config/ftconfig-64.h" 2
# 1 "/usr/include/freetype2/freetype/config/ftstdlib.h" 1
# 36 "/usr/include/freetype2/freetype/config/ftstdlib.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
# 118 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 1 3
# 35 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 119 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 2 3
# 37 "/usr/include/freetype2/freetype/config/ftstdlib.h" 2
# 60 "/usr/include/freetype2/freetype/config/ftstdlib.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 1 3
# 37 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 3
# 1 "/usr/include/limits.h" 1 3 4
# 144 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 2 3 4
# 145 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 149 "/usr/include/limits.h" 2 3 4
# 38 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/limits.h" 2 3
# 61 "/usr/include/freetype2/freetype/config/ftstdlib.h" 2
# 155 "/usr/include/freetype2/freetype/config/ftstdlib.h"
# 1 "/usr/include/setjmp.h" 1 3 4
# 29 "/usr/include/setjmp.h" 3 4
# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 30 "/usr/include/setjmp.h" 2 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 31 "/usr/include/setjmp.h" 2 3 4



struct __jmp_buf_tag
  {




    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };




typedef struct __jmp_buf_tag jmp_buf[1];



extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));






extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));




extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
# 81 "/usr/include/setjmp.h" 3 4
extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));







extern void _longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));







typedef struct __jmp_buf_tag sigjmp_buf[1];
# 109 "/usr/include/setjmp.h" 3 4
extern void siglongjmp (sigjmp_buf __env, int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
# 156 "/usr/include/freetype2/freetype/config/ftstdlib.h" 2
# 44 "/usr/include/freetype2/freetype/config/ftconfig-64.h" 2
# 183 "/usr/include/freetype2/freetype/config/ftconfig-64.h"
  typedef signed short FT_Int16;
  typedef unsigned short FT_UInt16;



  typedef signed int FT_Int32;
  typedef unsigned int FT_UInt32;
# 204 "/usr/include/freetype2/freetype/config/ftconfig-64.h"
  typedef int FT_Fast;
  typedef unsigned int FT_UFast;
# 10 "/usr/include/freetype2/freetype/config/ftconfig.h" 2
# 34 "/usr/include/freetype2/freetype/freetype.h" 2
# 1 "/usr/include/freetype2/freetype/fterrors.h" 1
# 90 "/usr/include/freetype2/freetype/fterrors.h"
# 1 "/usr/include/freetype2/freetype/ftmoderr.h" 1
# 101 "/usr/include/freetype2/freetype/ftmoderr.h"
  enum {



  FT_Mod_Err_Base = 0,
  FT_Mod_Err_Autofit = 0,
  FT_Mod_Err_BDF = 0,
  FT_Mod_Err_Bzip2 = 0,
  FT_Mod_Err_Cache = 0,
  FT_Mod_Err_CFF = 0,
  FT_Mod_Err_CID = 0,
  FT_Mod_Err_Gzip = 0,
  FT_Mod_Err_LZW = 0,
  FT_Mod_Err_OTvalid = 0,
  FT_Mod_Err_PCF = 0,
  FT_Mod_Err_PFR = 0,
  FT_Mod_Err_PSaux = 0,
  FT_Mod_Err_PShinter = 0,
  FT_Mod_Err_PSnames = 0,
  FT_Mod_Err_Raster = 0,
  FT_Mod_Err_SFNT = 0,
  FT_Mod_Err_Smooth = 0,
  FT_Mod_Err_TrueType = 0,
  FT_Mod_Err_Type1 = 0,
  FT_Mod_Err_Type42 = 0,
  FT_Mod_Err_Winfonts = 0,



  FT_Mod_Err_Max };
# 91 "/usr/include/freetype2/freetype/fterrors.h" 2
# 162 "/usr/include/freetype2/freetype/fterrors.h"
  enum {





# 1 "/usr/include/freetype2/freetype/fterrdef.h" 1
# 34 "/usr/include/freetype2/freetype/fterrdef.h"
  FT_Err_Ok = 0x00,


  FT_Err_Cannot_Open_Resource = 0x01 + 0,

  FT_Err_Unknown_File_Format = 0x02 + 0,

  FT_Err_Invalid_File_Format = 0x03 + 0,

  FT_Err_Invalid_Version = 0x04 + 0,

  FT_Err_Lower_Module_Version = 0x05 + 0,

  FT_Err_Invalid_Argument = 0x06 + 0,

  FT_Err_Unimplemented_Feature = 0x07 + 0,

  FT_Err_Invalid_Table = 0x08 + 0,

  FT_Err_Invalid_Offset = 0x09 + 0,

  FT_Err_Array_Too_Large = 0x0A + 0,

  FT_Err_Missing_Module = 0x0B + 0,

  FT_Err_Missing_Property = 0x0C + 0,




  FT_Err_Invalid_Glyph_Index = 0x10 + 0,

  FT_Err_Invalid_Character_Code = 0x11 + 0,

  FT_Err_Invalid_Glyph_Format = 0x12 + 0,

  FT_Err_Cannot_Render_Glyph = 0x13 + 0,

  FT_Err_Invalid_Outline = 0x14 + 0,

  FT_Err_Invalid_Composite = 0x15 + 0,

  FT_Err_Too_Many_Hints = 0x16 + 0,

  FT_Err_Invalid_Pixel_Size = 0x17 + 0,




  FT_Err_Invalid_Handle = 0x20 + 0,

  FT_Err_Invalid_Library_Handle = 0x21 + 0,

  FT_Err_Invalid_Driver_Handle = 0x22 + 0,

  FT_Err_Invalid_Face_Handle = 0x23 + 0,

  FT_Err_Invalid_Size_Handle = 0x24 + 0,

  FT_Err_Invalid_Slot_Handle = 0x25 + 0,

  FT_Err_Invalid_CharMap_Handle = 0x26 + 0,

  FT_Err_Invalid_Cache_Handle = 0x27 + 0,

  FT_Err_Invalid_Stream_Handle = 0x28 + 0,




  FT_Err_Too_Many_Drivers = 0x30 + 0,

  FT_Err_Too_Many_Extensions = 0x31 + 0,




  FT_Err_Out_Of_Memory = 0x40 + 0,

  FT_Err_Unlisted_Object = 0x41 + 0,




  FT_Err_Cannot_Open_Stream = 0x51 + 0,

  FT_Err_Invalid_Stream_Seek = 0x52 + 0,

  FT_Err_Invalid_Stream_Skip = 0x53 + 0,

  FT_Err_Invalid_Stream_Read = 0x54 + 0,

  FT_Err_Invalid_Stream_Operation = 0x55 + 0,

  FT_Err_Invalid_Frame_Operation = 0x56 + 0,

  FT_Err_Nested_Frame_Access = 0x57 + 0,

  FT_Err_Invalid_Frame_Read = 0x58 + 0,




  FT_Err_Raster_Uninitialized = 0x60 + 0,

  FT_Err_Raster_Corrupted = 0x61 + 0,

  FT_Err_Raster_Overflow = 0x62 + 0,

  FT_Err_Raster_Negative_Height = 0x63 + 0,




  FT_Err_Too_Many_Caches = 0x70 + 0,




  FT_Err_Invalid_Opcode = 0x80 + 0,

  FT_Err_Too_Few_Arguments = 0x81 + 0,

  FT_Err_Stack_Overflow = 0x82 + 0,

  FT_Err_Code_Overflow = 0x83 + 0,

  FT_Err_Bad_Argument = 0x84 + 0,

  FT_Err_Divide_By_Zero = 0x85 + 0,

  FT_Err_Invalid_Reference = 0x86 + 0,

  FT_Err_Debug_OpCode = 0x87 + 0,

  FT_Err_ENDF_In_Exec_Stream = 0x88 + 0,

  FT_Err_Nested_DEFS = 0x89 + 0,

  FT_Err_Invalid_CodeRange = 0x8A + 0,

  FT_Err_Execution_Too_Long = 0x8B + 0,

  FT_Err_Too_Many_Function_Defs = 0x8C + 0,

  FT_Err_Too_Many_Instruction_Defs = 0x8D + 0,

  FT_Err_Table_Missing = 0x8E + 0,

  FT_Err_Horiz_Header_Missing = 0x8F + 0,

  FT_Err_Locations_Missing = 0x90 + 0,

  FT_Err_Name_Table_Missing = 0x91 + 0,

  FT_Err_CMap_Table_Missing = 0x92 + 0,

  FT_Err_Hmtx_Table_Missing = 0x93 + 0,

  FT_Err_Post_Table_Missing = 0x94 + 0,

  FT_Err_Invalid_Horiz_Metrics = 0x95 + 0,

  FT_Err_Invalid_CharMap_Format = 0x96 + 0,

  FT_Err_Invalid_PPem = 0x97 + 0,

  FT_Err_Invalid_Vert_Metrics = 0x98 + 0,

  FT_Err_Could_Not_Find_Context = 0x99 + 0,

  FT_Err_Invalid_Post_Table_Format = 0x9A + 0,

  FT_Err_Invalid_Post_Table = 0x9B + 0,




  FT_Err_Syntax_Error = 0xA0 + 0,

  FT_Err_Stack_Underflow = 0xA1 + 0,

  FT_Err_Ignore = 0xA2 + 0,

  FT_Err_No_Unicode_Glyph_Name = 0xA3 + 0,




  FT_Err_Missing_Startfont_Field = 0xB0 + 0,

  FT_Err_Missing_Font_Field = 0xB1 + 0,

  FT_Err_Missing_Size_Field = 0xB2 + 0,

  FT_Err_Missing_Fontboundingbox_Field = 0xB3 + 0,

  FT_Err_Missing_Chars_Field = 0xB4 + 0,

  FT_Err_Missing_Startchar_Field = 0xB5 + 0,

  FT_Err_Missing_Encoding_Field = 0xB6 + 0,

  FT_Err_Missing_Bbx_Field = 0xB7 + 0,

  FT_Err_Bbx_Too_Big = 0xB8 + 0,

  FT_Err_Corrupted_Font_Header = 0xB9 + 0,

  FT_Err_Corrupted_Font_Glyphs = 0xBA + 0,
# 168 "/usr/include/freetype2/freetype/fterrors.h" 2



  FT_Err_Max };
# 35 "/usr/include/freetype2/freetype/freetype.h" 2
# 1 "/usr/include/freetype2/freetype/fttypes.h" 1
# 25 "/usr/include/freetype2/freetype/fttypes.h"
# 1 "/usr/include/freetype2/freetype/ftsystem.h" 1
# 66 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef struct FT_MemoryRec_* FT_Memory;
# 88 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef void*
  (*FT_Alloc_Func)( FT_Memory memory,
                    long size );
# 109 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef void
  (*FT_Free_Func)( FT_Memory memory,
                   void* block );
# 142 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef void*
  (*FT_Realloc_Func)( FT_Memory memory,
                      long cur_size,
                      long new_size,
                      void* block );
# 171 "/usr/include/freetype2/freetype/ftsystem.h"
  struct FT_MemoryRec_
  {
    void* user;
    FT_Alloc_Func alloc;
    FT_Free_Func free;
    FT_Realloc_Func realloc;
  };
# 196 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef struct FT_StreamRec_* FT_Stream;
# 209 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef union FT_StreamDesc_
  {
    long value;
    void* pointer;

  } FT_StreamDesc;
# 247 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef unsigned long
  (*FT_Stream_IoFunc)( FT_Stream stream,
                       unsigned long offset,
                       unsigned char* buffer,
                       unsigned long count );
# 267 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef void
  (*FT_Stream_CloseFunc)( FT_Stream stream );
# 321 "/usr/include/freetype2/freetype/ftsystem.h"
  typedef struct FT_StreamRec_
  {
    unsigned char* base;
    unsigned long size;
    unsigned long pos;

    FT_StreamDesc descriptor;
    FT_StreamDesc pathname;
    FT_Stream_IoFunc read;
    FT_Stream_CloseFunc close;

    FT_Memory memory;
    unsigned char* cursor;
    unsigned char* limit;

  } FT_StreamRec;
# 26 "/usr/include/freetype2/freetype/fttypes.h" 2
# 1 "/usr/include/freetype2/freetype/ftimage.h" 1
# 59 "/usr/include/freetype2/freetype/ftimage.h"
  typedef signed long FT_Pos;
# 75 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Vector_
  {
    FT_Pos x;
    FT_Pos y;

  } FT_Vector;
# 116 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_BBox_
  {
    FT_Pos xMin, yMin;
    FT_Pos xMax, yMax;

  } FT_BBox;
# 172 "/usr/include/freetype2/freetype/ftimage.h"
  typedef enum FT_Pixel_Mode_
  {
    FT_PIXEL_MODE_NONE = 0,
    FT_PIXEL_MODE_MONO,
    FT_PIXEL_MODE_GRAY,
    FT_PIXEL_MODE_GRAY2,
    FT_PIXEL_MODE_GRAY4,
    FT_PIXEL_MODE_LCD,
    FT_PIXEL_MODE_LCD_V,

    FT_PIXEL_MODE_MAX

  } FT_Pixel_Mode;
# 310 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Bitmap_
  {
    int rows;
    int width;
    int pitch;
    unsigned char* buffer;
    short num_grays;
    char pixel_mode;
    char palette_mode;
    void* palette;

  } FT_Bitmap;
# 383 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Outline_
  {
    short n_contours;
    short n_points;

    FT_Vector* points;
    char* tags;
    short* contours;

    int flags;

  } FT_Outline;
# 555 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Outline_MoveToFunc)( const FT_Vector* to,
                            void* user );
# 582 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Outline_LineToFunc)( const FT_Vector* to,
                            void* user );
# 613 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Outline_ConicToFunc)( const FT_Vector* control,
                             const FT_Vector* to,
                             void* user );
# 645 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Outline_CubicToFunc)( const FT_Vector* control1,
                             const FT_Vector* control2,
                             const FT_Vector* to,
                             void* user );
# 691 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Outline_Funcs_
  {
    FT_Outline_MoveToFunc move_to;
    FT_Outline_LineToFunc line_to;
    FT_Outline_ConicToFunc conic_to;
    FT_Outline_CubicToFunc cubic_to;

    int shift;
    FT_Pos delta;

  } FT_Outline_Funcs;
# 778 "/usr/include/freetype2/freetype/ftimage.h"
  typedef enum FT_Glyph_Format_
  {
    FT_GLYPH_FORMAT_NONE = ( ( (unsigned long)0 << 24 ) | ( (unsigned long)0 << 16 ) | ( (unsigned long)0 << 8 ) | (unsigned long)0 ),

    FT_GLYPH_FORMAT_COMPOSITE = ( ( (unsigned long)'c' << 24 ) | ( (unsigned long)'o' << 16 ) | ( (unsigned long)'m' << 8 ) | (unsigned long)'p' ),
    FT_GLYPH_FORMAT_BITMAP = ( ( (unsigned long)'b' << 24 ) | ( (unsigned long)'i' << 16 ) | ( (unsigned long)'t' << 8 ) | (unsigned long)'s' ),
    FT_GLYPH_FORMAT_OUTLINE = ( ( (unsigned long)'o' << 24 ) | ( (unsigned long)'u' << 16 ) | ( (unsigned long)'t' << 8 ) | (unsigned long)'l' ),
    FT_GLYPH_FORMAT_PLOTTER = ( ( (unsigned long)'p' << 24 ) | ( (unsigned long)'l' << 16 ) | ( (unsigned long)'o' << 8 ) | (unsigned long)'t' )

  } FT_Glyph_Format;
# 862 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_RasterRec_* FT_Raster;
# 891 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Span_
  {
    short x;
    unsigned short len;
    unsigned char coverage;

  } FT_Span;
# 936 "/usr/include/freetype2/freetype/ftimage.h"
  typedef void
  (*FT_SpanFunc)( int y,
                  int count,
                  const FT_Span* spans,
                  void* user );
# 968 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Raster_BitTest_Func)( int y,
                             int x,
                             void* user );
# 996 "/usr/include/freetype2/freetype/ftimage.h"
  typedef void
  (*FT_Raster_BitSet_Func)( int y,
                            int x,
                            void* user );
# 1104 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Raster_Params_
  {
    const FT_Bitmap* target;
    const void* source;
    int flags;
    FT_SpanFunc gray_spans;
    FT_SpanFunc black_spans;
    FT_Raster_BitTest_Func bit_test;
    FT_Raster_BitSet_Func bit_set;
    void* user;
    FT_BBox clip_box;

  } FT_Raster_Params;
# 1143 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Raster_NewFunc)( void* memory,
                        FT_Raster* raster );
# 1161 "/usr/include/freetype2/freetype/ftimage.h"
  typedef void
  (*FT_Raster_DoneFunc)( FT_Raster raster );
# 1194 "/usr/include/freetype2/freetype/ftimage.h"
  typedef void
  (*FT_Raster_ResetFunc)( FT_Raster raster,
                          unsigned char* pool_base,
                          unsigned long pool_size );
# 1220 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Raster_SetModeFunc)( FT_Raster raster,
                            unsigned long mode,
                            void* args );
# 1262 "/usr/include/freetype2/freetype/ftimage.h"
  typedef int
  (*FT_Raster_RenderFunc)( FT_Raster raster,
                           const FT_Raster_Params* params );
# 1288 "/usr/include/freetype2/freetype/ftimage.h"
  typedef struct FT_Raster_Funcs_
  {
    FT_Glyph_Format glyph_format;
    FT_Raster_NewFunc raster_new;
    FT_Raster_ResetFunc raster_reset;
    FT_Raster_SetModeFunc raster_set_mode;
    FT_Raster_RenderFunc raster_render;
    FT_Raster_DoneFunc raster_done;

  } FT_Raster_Funcs;
# 27 "/usr/include/freetype2/freetype/fttypes.h" 2

# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 29 "/usr/include/freetype2/freetype/fttypes.h" 2
# 104 "/usr/include/freetype2/freetype/fttypes.h"
  typedef unsigned char FT_Bool;
# 116 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed short FT_FWord;
# 128 "/usr/include/freetype2/freetype/fttypes.h"
  typedef unsigned short FT_UFWord;
# 139 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed char FT_Char;
# 150 "/usr/include/freetype2/freetype/fttypes.h"
  typedef unsigned char FT_Byte;
# 161 "/usr/include/freetype2/freetype/fttypes.h"
  typedef const FT_Byte* FT_Bytes;
# 172 "/usr/include/freetype2/freetype/fttypes.h"
  typedef FT_UInt32 FT_Tag;
# 183 "/usr/include/freetype2/freetype/fttypes.h"
  typedef char FT_String;
# 194 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed short FT_Short;
# 205 "/usr/include/freetype2/freetype/fttypes.h"
  typedef unsigned short FT_UShort;
# 216 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed int FT_Int;
# 227 "/usr/include/freetype2/freetype/fttypes.h"
  typedef unsigned int FT_UInt;
# 238 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed long FT_Long;
# 249 "/usr/include/freetype2/freetype/fttypes.h"
  typedef unsigned long FT_ULong;
# 260 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed short FT_F2Dot14;
# 272 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed long FT_F26Dot6;
# 284 "/usr/include/freetype2/freetype/fttypes.h"
  typedef signed long FT_Fixed;
# 296 "/usr/include/freetype2/freetype/fttypes.h"
  typedef int FT_Error;
# 307 "/usr/include/freetype2/freetype/fttypes.h"
  typedef void* FT_Pointer;
# 320 "/usr/include/freetype2/freetype/fttypes.h"
  typedef size_t FT_Offset;
# 333 "/usr/include/freetype2/freetype/fttypes.h"
  typedef ptrdiff_t FT_PtrDist;
# 350 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_UnitVector_
  {
    FT_F2Dot14 x;
    FT_F2Dot14 y;

  } FT_UnitVector;
# 381 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_Matrix_
  {
    FT_Fixed xx, xy;
    FT_Fixed yx, yy;

  } FT_Matrix;
# 402 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_Data_
  {
    const FT_Byte* pointer;
    FT_Int length;

  } FT_Data;
# 424 "/usr/include/freetype2/freetype/fttypes.h"
  typedef void (*FT_Generic_Finalizer)(void* object);
# 455 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_Generic_
  {
    void* data;
    FT_Generic_Finalizer finalizer;

  } FT_Generic;
# 511 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_ListNodeRec_* FT_ListNode;
# 522 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_ListRec_* FT_List;
# 540 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_ListNodeRec_
  {
    FT_ListNode prev;
    FT_ListNode next;
    void* data;

  } FT_ListNodeRec;
# 563 "/usr/include/freetype2/freetype/fttypes.h"
  typedef struct FT_ListRec_
  {
    FT_ListNode head;
    FT_ListNode tail;

  } FT_ListRec;
# 36 "/usr/include/freetype2/freetype/freetype.h" 2
# 244 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Glyph_Metrics_
  {
    FT_Pos width;
    FT_Pos height;

    FT_Pos horiBearingX;
    FT_Pos horiBearingY;
    FT_Pos horiAdvance;

    FT_Pos vertBearingX;
    FT_Pos vertBearingY;
    FT_Pos vertAdvance;

  } FT_Glyph_Metrics;
# 298 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Bitmap_Size_
  {
    FT_Short height;
    FT_Short width;

    FT_Pos size;

    FT_Pos x_ppem;
    FT_Pos y_ppem;

  } FT_Bitmap_Size;
# 339 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_LibraryRec_ *FT_Library;
# 352 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_ModuleRec_* FT_Module;
# 364 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_DriverRec_* FT_Driver;
# 378 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_RendererRec_* FT_Renderer;
# 403 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_FaceRec_* FT_Face;
# 433 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_SizeRec_* FT_Size;
# 454 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_GlyphSlotRec_* FT_GlyphSlot;
# 486 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_CharMapRec_* FT_CharMap;
# 659 "/usr/include/freetype2/freetype/freetype.h"
  typedef enum FT_Encoding_
  {
    FT_ENCODING_NONE = ( ( (FT_UInt32)(0) << 24 ) | ( (FT_UInt32)(0) << 16 ) | ( (FT_UInt32)(0) << 8 ) | (FT_UInt32)(0) ),

    FT_ENCODING_MS_SYMBOL = ( ( (FT_UInt32)('s') << 24 ) | ( (FT_UInt32)('y') << 16 ) | ( (FT_UInt32)('m') << 8 ) | (FT_UInt32)('b') ),
    FT_ENCODING_UNICODE = ( ( (FT_UInt32)('u') << 24 ) | ( (FT_UInt32)('n') << 16 ) | ( (FT_UInt32)('i') << 8 ) | (FT_UInt32)('c') ),

    FT_ENCODING_SJIS = ( ( (FT_UInt32)('s') << 24 ) | ( (FT_UInt32)('j') << 16 ) | ( (FT_UInt32)('i') << 8 ) | (FT_UInt32)('s') ),
    FT_ENCODING_GB2312 = ( ( (FT_UInt32)('g') << 24 ) | ( (FT_UInt32)('b') << 16 ) | ( (FT_UInt32)(' ') << 8 ) | (FT_UInt32)(' ') ),
    FT_ENCODING_BIG5 = ( ( (FT_UInt32)('b') << 24 ) | ( (FT_UInt32)('i') << 16 ) | ( (FT_UInt32)('g') << 8 ) | (FT_UInt32)('5') ),
    FT_ENCODING_WANSUNG = ( ( (FT_UInt32)('w') << 24 ) | ( (FT_UInt32)('a') << 16 ) | ( (FT_UInt32)('n') << 8 ) | (FT_UInt32)('s') ),
    FT_ENCODING_JOHAB = ( ( (FT_UInt32)('j') << 24 ) | ( (FT_UInt32)('o') << 16 ) | ( (FT_UInt32)('h') << 8 ) | (FT_UInt32)('a') ),


    FT_ENCODING_MS_SJIS = FT_ENCODING_SJIS,
    FT_ENCODING_MS_GB2312 = FT_ENCODING_GB2312,
    FT_ENCODING_MS_BIG5 = FT_ENCODING_BIG5,
    FT_ENCODING_MS_WANSUNG = FT_ENCODING_WANSUNG,
    FT_ENCODING_MS_JOHAB = FT_ENCODING_JOHAB,

    FT_ENCODING_ADOBE_STANDARD = ( ( (FT_UInt32)('A') << 24 ) | ( (FT_UInt32)('D') << 16 ) | ( (FT_UInt32)('O') << 8 ) | (FT_UInt32)('B') ),
    FT_ENCODING_ADOBE_EXPERT = ( ( (FT_UInt32)('A') << 24 ) | ( (FT_UInt32)('D') << 16 ) | ( (FT_UInt32)('B') << 8 ) | (FT_UInt32)('E') ),
    FT_ENCODING_ADOBE_CUSTOM = ( ( (FT_UInt32)('A') << 24 ) | ( (FT_UInt32)('D') << 16 ) | ( (FT_UInt32)('B') << 8 ) | (FT_UInt32)('C') ),
    FT_ENCODING_ADOBE_LATIN_1 = ( ( (FT_UInt32)('l') << 24 ) | ( (FT_UInt32)('a') << 16 ) | ( (FT_UInt32)('t') << 8 ) | (FT_UInt32)('1') ),

    FT_ENCODING_OLD_LATIN_2 = ( ( (FT_UInt32)('l') << 24 ) | ( (FT_UInt32)('a') << 16 ) | ( (FT_UInt32)('t') << 8 ) | (FT_UInt32)('2') ),

    FT_ENCODING_APPLE_ROMAN = ( ( (FT_UInt32)('a') << 24 ) | ( (FT_UInt32)('r') << 16 ) | ( (FT_UInt32)('m') << 8 ) | (FT_UInt32)('n') )

  } FT_Encoding;
# 740 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_CharMapRec_
  {
    FT_Face face;
    FT_Encoding encoding;
    FT_UShort platform_id;
    FT_UShort encoding_id;

  } FT_CharMapRec;
# 771 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Face_InternalRec_* FT_Face_Internal;
# 916 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_FaceRec_
  {
    FT_Long num_faces;
    FT_Long face_index;

    FT_Long face_flags;
    FT_Long style_flags;

    FT_Long num_glyphs;

    FT_String* family_name;
    FT_String* style_name;

    FT_Int num_fixed_sizes;
    FT_Bitmap_Size* available_sizes;

    FT_Int num_charmaps;
    FT_CharMap* charmaps;

    FT_Generic generic;




    FT_BBox bbox;

    FT_UShort units_per_EM;
    FT_Short ascender;
    FT_Short descender;
    FT_Short height;

    FT_Short max_advance_width;
    FT_Short max_advance_height;

    FT_Short underline_position;
    FT_Short underline_thickness;

    FT_GlyphSlot glyph;
    FT_Size size;
    FT_CharMap charmap;



    FT_Driver driver;
    FT_Memory memory;
    FT_Stream stream;

    FT_ListRec sizes_list;

    FT_Generic autohint;
    void* extensions;

    FT_Face_Internal internal;



  } FT_FaceRec;
# 1306 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Size_InternalRec_* FT_Size_Internal;
# 1364 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Size_Metrics_
  {
    FT_UShort x_ppem;
    FT_UShort y_ppem;

    FT_Fixed x_scale;
    FT_Fixed y_scale;

    FT_Pos ascender;
    FT_Pos descender;
    FT_Pos height;
    FT_Pos max_advance;

  } FT_Size_Metrics;
# 1399 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_SizeRec_
  {
    FT_Face face;
    FT_Generic generic;
    FT_Size_Metrics metrics;
    FT_Size_Internal internal;

  } FT_SizeRec;
# 1425 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_SubGlyphRec_* FT_SubGlyph;
# 1437 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Slot_InternalRec_* FT_Slot_Internal;
# 1609 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_GlyphSlotRec_
  {
    FT_Library library;
    FT_Face face;
    FT_GlyphSlot next;
    FT_UInt reserved;
    FT_Generic generic;

    FT_Glyph_Metrics metrics;
    FT_Fixed linearHoriAdvance;
    FT_Fixed linearVertAdvance;
    FT_Vector advance;

    FT_Glyph_Format format;

    FT_Bitmap bitmap;
    FT_Int bitmap_left;
    FT_Int bitmap_top;

    FT_Outline outline;

    FT_UInt num_subglyphs;
    FT_SubGlyph subglyphs;

    void* control_data;
    long control_len;

    FT_Pos lsb_delta;
    FT_Pos rsb_delta;

    void* other;

    FT_Slot_Internal internal;

  } FT_GlyphSlotRec;
# 1678 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Init_FreeType( FT_Library *alibrary );
# 1697 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Done_FreeType( FT_Library library );
# 1767 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Parameter_
  {
    FT_ULong tag;
    FT_Pointer data;

  } FT_Parameter;
# 1833 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Open_Args_
  {
    FT_UInt flags;
    const FT_Byte* memory_base;
    FT_Long memory_size;
    FT_String* pathname;
    FT_Stream stream;
    FT_Module driver;
    FT_Int num_params;
    FT_Parameter* params;

  } FT_Open_Args;
# 1872 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_New_Face( FT_Library library,
               const char* filepathname,
               FT_Long face_index,
               FT_Face *aface );
# 1910 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_New_Memory_Face( FT_Library library,
                      const FT_Byte* file_base,
                      FT_Long file_size,
                      FT_Long face_index,
                      FT_Face *aface );
# 1970 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Open_Face( FT_Library library,
                const FT_Open_Args* args,
                FT_Long face_index,
                FT_Face *aface );
# 1994 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Attach_File( FT_Face face,
                  const char* filepathname );
# 2029 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Attach_Stream( FT_Face face,
                    FT_Open_Args* parameters );
# 2057 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Reference_Face( FT_Face face );
# 2080 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Done_Face( FT_Face face );
# 2102 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Select_Size( FT_Face face,
                  FT_Int strike_index );
# 2149 "/usr/include/freetype2/freetype/freetype.h"
  typedef enum FT_Size_Request_Type_
  {
    FT_SIZE_REQUEST_TYPE_NOMINAL,
    FT_SIZE_REQUEST_TYPE_REAL_DIM,
    FT_SIZE_REQUEST_TYPE_BBOX,
    FT_SIZE_REQUEST_TYPE_CELL,
    FT_SIZE_REQUEST_TYPE_SCALES,

    FT_SIZE_REQUEST_TYPE_MAX

  } FT_Size_Request_Type;
# 2189 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Size_RequestRec_
  {
    FT_Size_Request_Type type;
    FT_Long width;
    FT_Long height;
    FT_UInt horiResolution;
    FT_UInt vertResolution;

  } FT_Size_RequestRec;
# 2208 "/usr/include/freetype2/freetype/freetype.h"
  typedef struct FT_Size_RequestRec_ *FT_Size_Request;
# 2240 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Request_Size( FT_Face face,
                   FT_Size_Request req );
# 2281 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Set_Char_Size( FT_Face face,
                    FT_F26Dot6 char_width,
                    FT_F26Dot6 char_height,
                    FT_UInt horz_resolution,
                    FT_UInt vert_resolution );
# 2314 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Set_Pixel_Sizes( FT_Face face,
                      FT_UInt pixel_width,
                      FT_UInt pixel_height );
# 2356 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Load_Glyph( FT_Face face,
                 FT_UInt glyph_index,
                 FT_Int32 load_flags );
# 2391 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Load_Char( FT_Face face,
                FT_ULong char_code,
                FT_Int32 load_flags );
# 2683 "/usr/include/freetype2/freetype/freetype.h"
  extern void
  FT_Set_Transform( FT_Face face,
                    FT_Matrix* matrix,
                    FT_Vector* delta );
# 2744 "/usr/include/freetype2/freetype/freetype.h"
  typedef enum FT_Render_Mode_
  {
    FT_RENDER_MODE_NORMAL = 0,
    FT_RENDER_MODE_LIGHT,
    FT_RENDER_MODE_MONO,
    FT_RENDER_MODE_LCD,
    FT_RENDER_MODE_LCD_V,

    FT_RENDER_MODE_MAX

  } FT_Render_Mode;
# 2796 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Render_Glyph( FT_GlyphSlot slot,
                   FT_Render_Mode render_mode );
# 2820 "/usr/include/freetype2/freetype/freetype.h"
  typedef enum FT_Kerning_Mode_
  {
    FT_KERNING_DEFAULT = 0,
    FT_KERNING_UNFITTED,
    FT_KERNING_UNSCALED

  } FT_Kerning_Mode;
# 2898 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Get_Kerning( FT_Face face,
                  FT_UInt left_glyph,
                  FT_UInt right_glyph,
                  FT_UInt kern_mode,
                  FT_Vector *akerning );
# 2939 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Get_Track_Kerning( FT_Face face,
                        FT_Fixed point_size,
                        FT_Int degree,
                        FT_Fixed* akerning );
# 2986 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Get_Glyph_Name( FT_Face face,
                     FT_UInt glyph_index,
                     FT_Pointer buffer,
                     FT_UInt buffer_max );
# 3012 "/usr/include/freetype2/freetype/freetype.h"
  extern const char*
  FT_Get_Postscript_Name( FT_Face face );
# 3044 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Select_Charmap( FT_Face face,
                     FT_Encoding encoding );
# 3073 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Set_Charmap( FT_Face face,
                  FT_CharMap charmap );
# 3095 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Int
  FT_Get_Charmap_Index( FT_CharMap charmap );
# 3129 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UInt
  FT_Get_Char_Index( FT_Face face,
                     FT_ULong charcode );
# 3177 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_ULong
  FT_Get_First_Char( FT_Face face,
                     FT_UInt *agindex );
# 3211 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_ULong
  FT_Get_Next_Char( FT_Face face,
                    FT_ULong char_code,
                    FT_UInt *agindex );
# 3234 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UInt
  FT_Get_Name_Index( FT_Face face,
                     FT_String* glyph_name );
# 3310 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Error
  FT_Get_SubGlyph_Info( FT_GlyphSlot glyph,
                        FT_UInt sub_index,
                        FT_Int *p_index,
                        FT_UInt *p_flags,
                        FT_Int *p_arg1,
                        FT_Int *p_arg2,
                        FT_Matrix *p_transform );
# 3401 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UShort
  FT_Get_FSType_Flags( FT_Face face );
# 3487 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UInt
  FT_Face_GetCharVariantIndex( FT_Face face,
                               FT_ULong charcode,
                               FT_ULong variantSelector );
# 3523 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Int
  FT_Face_GetCharVariantIsDefault( FT_Face face,
                                   FT_ULong charcode,
                                   FT_ULong variantSelector );
# 3554 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UInt32*
  FT_Face_GetVariantSelectors( FT_Face face );
# 3587 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UInt32*
  FT_Face_GetVariantsOfChar( FT_Face face,
                             FT_ULong charcode );
# 3621 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_UInt32*
  FT_Face_GetCharsOfVariant( FT_Face face,
                             FT_ULong variantSelector );
# 3678 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Long
  FT_MulDiv( FT_Long a,
             FT_Long b,
             FT_Long c );
# 3729 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Long
  FT_MulFix( FT_Long a,
             FT_Long b );
# 3758 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Long
  FT_DivFix( FT_Long a,
             FT_Long b );
# 3777 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Fixed
  FT_RoundFix( FT_Fixed a );
# 3796 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Fixed
  FT_CeilFix( FT_Fixed a );
# 3815 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Fixed
  FT_FloorFix( FT_Fixed a );
# 3836 "/usr/include/freetype2/freetype/freetype.h"
  extern void
  FT_Vector_Transform( FT_Vector* vec,
                       const FT_Matrix* matrix );
# 3914 "/usr/include/freetype2/freetype/freetype.h"
  extern void
  FT_Library_Version( FT_Library library,
                      FT_Int *amajor,
                      FT_Int *aminor,
                      FT_Int *apatch );
# 3948 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Bool
  FT_Face_CheckTrueTypePatents( FT_Face face );
# 3978 "/usr/include/freetype2/freetype/freetype.h"
  extern FT_Bool
  FT_Face_SetUnpatentedHinting( FT_Face face,
                                FT_Bool value );
# 47 "./base/fapi_ft.c" 2
# 1 "/usr/include/freetype2/freetype/ftincrem.h" 1
# 84 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef struct FT_IncrementalRec_* FT_Incremental;
# 115 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef struct FT_Incremental_MetricsRec_
  {
    FT_Long bearing_x;
    FT_Long bearing_y;
    FT_Long advance;
    FT_Long advance_v;

  } FT_Incremental_MetricsRec;
# 134 "/usr/include/freetype2/freetype/ftincrem.h"
   typedef struct FT_Incremental_MetricsRec_* FT_Incremental_Metrics;
# 178 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef FT_Error
  (*FT_Incremental_GetGlyphDataFunc)( FT_Incremental incremental,
                                      FT_UInt glyph_index,
                                      FT_Data* adata );
# 203 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef void
  (*FT_Incremental_FreeGlyphDataFunc)( FT_Incremental incremental,
                                       FT_Data* data );
# 240 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef FT_Error
  (*FT_Incremental_GetGlyphMetricsFunc)
                      ( FT_Incremental incremental,
                        FT_UInt glyph_index,
                        FT_Bool vertical,
                        FT_Incremental_MetricsRec *ametrics );
# 269 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef struct FT_Incremental_FuncsRec_
  {
    FT_Incremental_GetGlyphDataFunc get_glyph_data;
    FT_Incremental_FreeGlyphDataFunc free_glyph_data;
    FT_Incremental_GetGlyphMetricsFunc get_glyph_metrics;

  } FT_Incremental_FuncsRec;
# 314 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef struct FT_Incremental_InterfaceRec_
  {
    const FT_Incremental_FuncsRec* funcs;
    FT_Incremental object;

  } FT_Incremental_InterfaceRec;
# 331 "/usr/include/freetype2/freetype/ftincrem.h"
  typedef FT_Incremental_InterfaceRec* FT_Incremental_Interface;
# 48 "./base/fapi_ft.c" 2
# 1 "/usr/include/freetype2/freetype/ftglyph.h" 1
# 69 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_Glyph_Class_ FT_Glyph_Class;
# 87 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_GlyphRec_* FT_Glyph;
# 108 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_GlyphRec_
  {
    FT_Library library;
    const FT_Glyph_Class* clazz;
    FT_Glyph_Format format;
    FT_Vector advance;

  } FT_GlyphRec;
# 127 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_BitmapGlyphRec_* FT_BitmapGlyph;
# 160 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_BitmapGlyphRec_
  {
    FT_GlyphRec root;
    FT_Int left;
    FT_Int top;
    FT_Bitmap bitmap;

  } FT_BitmapGlyphRec;
# 179 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_OutlineGlyphRec_* FT_OutlineGlyph;
# 208 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef struct FT_OutlineGlyphRec_
  {
    FT_GlyphRec root;
    FT_Outline outline;

  } FT_OutlineGlyphRec;
# 234 "/usr/include/freetype2/freetype/ftglyph.h"
  extern FT_Error
  FT_Get_Glyph( FT_GlyphSlot slot,
                FT_Glyph *aglyph );
# 258 "/usr/include/freetype2/freetype/ftglyph.h"
  extern FT_Error
  FT_Glyph_Copy( FT_Glyph source,
                 FT_Glyph *target );
# 287 "/usr/include/freetype2/freetype/ftglyph.h"
  extern FT_Error
  FT_Glyph_Transform( FT_Glyph glyph,
                      FT_Matrix* matrix,
                      FT_Vector* delta );
# 317 "/usr/include/freetype2/freetype/ftglyph.h"
  typedef enum FT_Glyph_BBox_Mode_
  {
    FT_GLYPH_BBOX_UNSCALED = 0,
    FT_GLYPH_BBOX_SUBPIXELS = 0,
    FT_GLYPH_BBOX_GRIDFIT = 1,
    FT_GLYPH_BBOX_TRUNCATE = 2,
    FT_GLYPH_BBOX_PIXELS = 3

  } FT_Glyph_BBox_Mode;
# 420 "/usr/include/freetype2/freetype/ftglyph.h"
  extern void
  FT_Glyph_Get_CBox( FT_Glyph glyph,
                     FT_UInt bbox_mode,
                     FT_BBox *acbox );
# 532 "/usr/include/freetype2/freetype/ftglyph.h"
  extern FT_Error
  FT_Glyph_To_Bitmap( FT_Glyph* the_glyph,
                      FT_Render_Mode render_mode,
                      FT_Vector* origin,
                      FT_Bool destroy );
# 550 "/usr/include/freetype2/freetype/ftglyph.h"
  extern void
  FT_Done_Glyph( FT_Glyph glyph );
# 583 "/usr/include/freetype2/freetype/ftglyph.h"
  extern void
  FT_Matrix_Multiply( const FT_Matrix* a,
                      FT_Matrix* b );
# 603 "/usr/include/freetype2/freetype/ftglyph.h"
  extern FT_Error
  FT_Matrix_Invert( FT_Matrix* matrix );
# 49 "./base/fapi_ft.c" 2

# 1 "/usr/include/freetype2/freetype/ftmodapi.h" 1
# 106 "/usr/include/freetype2/freetype/ftmodapi.h"
  typedef FT_Pointer FT_Module_Interface;
# 120 "/usr/include/freetype2/freetype/ftmodapi.h"
  typedef FT_Error
  (*FT_Module_Constructor)( FT_Module module );
# 135 "/usr/include/freetype2/freetype/ftmodapi.h"
  typedef void
  (*FT_Module_Destructor)( FT_Module module );
# 152 "/usr/include/freetype2/freetype/ftmodapi.h"
  typedef FT_Module_Interface
  (*FT_Module_Requester)( FT_Module module,
                          const char* name );
# 186 "/usr/include/freetype2/freetype/ftmodapi.h"
  typedef struct FT_Module_Class_
  {
    FT_ULong module_flags;
    FT_Long module_size;
    const FT_String* module_name;
    FT_Fixed module_version;
    FT_Fixed module_requires;

    const void* module_interface;

    FT_Module_Constructor module_init;
    FT_Module_Destructor module_done;
    FT_Module_Requester get_interface;

  } FT_Module_Class;
# 224 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_Error
  FT_Add_Module( FT_Library library,
                 const FT_Module_Class* clazz );
# 249 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_Module
  FT_Get_Module( FT_Library library,
                 const char* module_name );
# 274 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_Error
  FT_Remove_Module( FT_Library library,
                    FT_Module module );
# 332 "/usr/include/freetype2/freetype/ftmodapi.h"
  FT_Error
  FT_Property_Set( FT_Library library,
                   const FT_String* module_name,
                   const FT_String* property_name,
                   const void* value );
# 396 "/usr/include/freetype2/freetype/ftmodapi.h"
  FT_Error
  FT_Property_Get( FT_Library library,
                   const FT_String* module_name,
                   const FT_String* property_name,
                   void* value );
# 426 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_Error
  FT_Reference_Library( FT_Library library );
# 460 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_Error
  FT_New_Library( FT_Memory memory,
                  FT_Library *alibrary );
# 484 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_Error
  FT_Done_Library( FT_Library library );



  typedef void
  (*FT_DebugHook_Func)( void* arg );
# 520 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern void
  FT_Set_Debug_Hook( FT_Library library,
                     FT_UInt hook_index,
                     FT_DebugHook_Func debug_hook );
# 539 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern void
  FT_Add_Default_Modules( FT_Library library );
# 593 "/usr/include/freetype2/freetype/ftmodapi.h"
  typedef enum FT_TrueTypeEngineType_
  {
    FT_TRUETYPE_ENGINE_TYPE_NONE = 0,
    FT_TRUETYPE_ENGINE_TYPE_UNPATENTED,
    FT_TRUETYPE_ENGINE_TYPE_PATENTED

  } FT_TrueTypeEngineType;
# 622 "/usr/include/freetype2/freetype/ftmodapi.h"
  extern FT_TrueTypeEngineType
  FT_Get_TrueType_Engine_Type( FT_Library library );
# 51 "./base/fapi_ft.c" 2
# 1 "/usr/include/freetype2/freetype/fttrigon.h" 1
# 52 "/usr/include/freetype2/freetype/fttrigon.h"
  typedef FT_Fixed FT_Angle;
# 123 "/usr/include/freetype2/freetype/fttrigon.h"
  extern FT_Fixed
  FT_Sin( FT_Angle angle );
# 147 "/usr/include/freetype2/freetype/fttrigon.h"
  extern FT_Fixed
  FT_Cos( FT_Angle angle );
# 167 "/usr/include/freetype2/freetype/fttrigon.h"
  extern FT_Fixed
  FT_Tan( FT_Angle angle );
# 191 "/usr/include/freetype2/freetype/fttrigon.h"
  extern FT_Angle
  FT_Atan2( FT_Fixed x,
            FT_Fixed y );
# 216 "/usr/include/freetype2/freetype/fttrigon.h"
  extern FT_Angle
  FT_Angle_Diff( FT_Angle angle1,
                 FT_Angle angle2 );
# 243 "/usr/include/freetype2/freetype/fttrigon.h"
  extern void
  FT_Vector_Unit( FT_Vector* vec,
                  FT_Angle angle );
# 265 "/usr/include/freetype2/freetype/fttrigon.h"
  extern void
  FT_Vector_Rotate( FT_Vector* vec,
                    FT_Angle angle );
# 287 "/usr/include/freetype2/freetype/fttrigon.h"
  extern FT_Fixed
  FT_Vector_Length( FT_Vector* vec );
# 311 "/usr/include/freetype2/freetype/fttrigon.h"
  extern void
  FT_Vector_Polarize( FT_Vector* vec,
                      FT_Fixed *length,
                      FT_Angle *angle );
# 337 "/usr/include/freetype2/freetype/fttrigon.h"
  extern void
  FT_Vector_From_Polar( FT_Vector* vec,
                        FT_Fixed length,
                        FT_Angle angle );
# 52 "./base/fapi_ft.c" 2
# 1 "/usr/include/freetype2/freetype/ftbbox.h" 1
# 84 "/usr/include/freetype2/freetype/ftbbox.h"
  extern FT_Error
  FT_Outline_Get_BBox( FT_Outline* outline,
                       FT_BBox *abbox );
# 53 "./base/fapi_ft.c" 2
# 1 "/usr/include/freetype2/freetype/ftoutln.h" 1
# 108 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Decompose( FT_Outline* outline,
                        const FT_Outline_Funcs* func_interface,
                        void* user );
# 142 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_New( FT_Library library,
                  FT_UInt numPoints,
                  FT_Int numContours,
                  FT_Outline *anoutline );


  extern FT_Error
  FT_Outline_New_Internal( FT_Memory memory,
                           FT_UInt numPoints,
                           FT_Int numContours,
                           FT_Outline *anoutline );
# 180 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Done( FT_Library library,
                   FT_Outline* outline );


  extern FT_Error
  FT_Outline_Done_Internal( FT_Memory memory,
                            FT_Outline* outline );
# 204 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Check( FT_Outline* outline );
# 234 "/usr/include/freetype2/freetype/ftoutln.h"
  extern void
  FT_Outline_Get_CBox( const FT_Outline* outline,
                       FT_BBox *acbox );
# 255 "/usr/include/freetype2/freetype/ftoutln.h"
  extern void
  FT_Outline_Translate( const FT_Outline* outline,
                        FT_Pos xOffset,
                        FT_Pos yOffset );
# 280 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Copy( const FT_Outline* source,
                   FT_Outline *target );
# 304 "/usr/include/freetype2/freetype/ftoutln.h"
  extern void
  FT_Outline_Transform( const FT_Outline* outline,
                        const FT_Matrix* matrix );
# 349 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Embolden( FT_Outline* outline,
                       FT_Pos strength );
# 365 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_EmboldenXY( FT_Outline* outline,
                         FT_Pos xstrength,
                         FT_Pos ystrength );
# 390 "/usr/include/freetype2/freetype/ftoutln.h"
  extern void
  FT_Outline_Reverse( FT_Outline* outline );
# 425 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Get_Bitmap( FT_Library library,
                         FT_Outline* outline,
                         const FT_Bitmap *abitmap );
# 467 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Error
  FT_Outline_Render( FT_Library library,
                     FT_Outline* outline,
                     FT_Raster_Params* params );
# 508 "/usr/include/freetype2/freetype/ftoutln.h"
  typedef enum FT_Orientation_
  {
    FT_ORIENTATION_TRUETYPE = 0,
    FT_ORIENTATION_POSTSCRIPT = 1,
    FT_ORIENTATION_FILL_RIGHT = FT_ORIENTATION_TRUETYPE,
    FT_ORIENTATION_FILL_LEFT = FT_ORIENTATION_POSTSCRIPT,
    FT_ORIENTATION_NONE

  } FT_Orientation;
# 541 "/usr/include/freetype2/freetype/ftoutln.h"
  extern FT_Orientation
  FT_Outline_Get_Orientation( FT_Outline* outline );
# 54 "./base/fapi_ft.c" 2

# 1 "/usr/include/freetype2/freetype/ftbitmap.h" 1
# 64 "/usr/include/freetype2/freetype/ftbitmap.h"
  extern void
  FT_Bitmap_New( FT_Bitmap *abitmap );
# 87 "/usr/include/freetype2/freetype/ftbitmap.h"
  extern FT_Error
  FT_Bitmap_Copy( FT_Library library,
                  const FT_Bitmap *source,
                  FT_Bitmap *target);
# 125 "/usr/include/freetype2/freetype/ftbitmap.h"
  extern FT_Error
  FT_Bitmap_Embolden( FT_Library library,
                      FT_Bitmap* bitmap,
                      FT_Pos xStrength,
                      FT_Pos yStrength );
# 165 "/usr/include/freetype2/freetype/ftbitmap.h"
  extern FT_Error
  FT_Bitmap_Convert( FT_Library library,
                     const FT_Bitmap *source,
                     FT_Bitmap *target,
                     FT_Int alignment );
# 190 "/usr/include/freetype2/freetype/ftbitmap.h"
  extern FT_Error
  FT_GlyphSlot_Own_Bitmap( FT_GlyphSlot slot );
# 214 "/usr/include/freetype2/freetype/ftbitmap.h"
  extern FT_Error
  FT_Bitmap_Done( FT_Library library,
                  FT_Bitmap *bitmap );
# 56 "./base/fapi_ft.c" 2



typedef struct ff_server_s
{
    gs_fapi_server fapi_server;
    FT_Library freetype_library;
    FT_OutlineGlyph outline_glyph;
    FT_BitmapGlyph bitmap_glyph;
    gs_memory_t *mem;
    FT_Memory ftmemory;
    struct FT_MemoryRec_ ftmemory_rec;
} ff_server;



typedef struct ff_face_s
{
    FT_Face ft_face;


    FT_Matrix ft_transform;
    FT_F26Dot6 width, height;
    FT_UInt horz_res;
    FT_UInt vert_res;


    FT_Incremental_InterfaceRec *ft_inc_int;

    FT_Stream ftstrm;

    unsigned char *font_data;
    int font_data_len;
    bool data_owned;
    ff_server *server;
} ff_face;





typedef struct FT_IncrementalRec_
{
    gs_fapi_font *fapi_font;


    unsigned char *glyph_data;
    size_t glyph_data_length;
    bool glyph_data_in_use;

    FT_Incremental_MetricsRec glyph_metrics;
    unsigned long glyph_metrics_index;
    gs_fapi_metrics_type metrics_type;
} FT_IncrementalRec;

static void *
FF_alloc(FT_Memory memory, long size)
{
    gs_memory_t *mem = (gs_memory_t *) memory->user;

    return ((void *)(*(mem->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory, size, 1, "FF_alloc"));
}

static void *
    FF_realloc(FT_Memory memory, long cur_size, long new_size, void *block)
{
    gs_memory_t *mem = (gs_memory_t *) memory->user;
    void *tmp;

    if (cur_size == new_size) {
        return (block);
    }

    tmp = (void *)(*(mem->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory, new_size, 1, "FF_realloc");
    if (tmp && block) {
        memcpy(tmp, block, (((cur_size) < (new_size)) ? (cur_size) : (new_size)));

        ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, block, "FF_realloc"));
    }

    return (tmp);
}

static void
    FF_free(FT_Memory memory, void *block)
{
    gs_memory_t *mem = (gs_memory_t *) memory->user;

    ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, block, "FF_free"));
}






static FT_ULong
FF_stream_read(FT_Stream str, unsigned long offset, unsigned char *buffer,
               unsigned long count)
{
    stream *ps = (stream *) str->descriptor.pointer;
    unsigned int rlen = 0;
    int status = 0;

    if (spseek(ps, (gs_offset_t)((gs_offset_t)offset)) < 0)
        return (-1);

    if (count) {
        status = sgets(ps, buffer, count, &rlen);

        if (status < 0 && status != ((int)(-1)))
            return (-1);
    }
    return (rlen);
}

static void
FF_stream_close(FT_Stream str)
{
    stream *ps = (stream *) str->descriptor.pointer;

    (void)sclose(ps);
}

extern const uint file_default_buffer_size;

static int
FF_open_read_stream(gs_memory_t * mem, char *fname, FT_Stream * fts)
{
    int code = 0;
    gs_parsed_file_name_t pfn;
    stream *ps = (stream *)((void*)0);
    gs_offset_t length;
    FT_Stream ftstrm = ((void*)0);

    code = gs_parse_file_name(&pfn, (const char *)fname, strlen(fname), mem);
    if (code < 0) {
        goto error_out;
    }

    if (!pfn.fname) {
        code = (-22);
        goto error_out;
    }

    if (pfn.iodev == ((void*)0)) {
        pfn.iodev = (gs_getiodevice(mem,0));
    }

    if (pfn.iodev) {
        gx_io_device *const iodev = pfn.iodev;

        int (*open_file)(gx_io_device *iodev, const char *fname, uint namelen, const char *access, stream **ps, gs_memory_t *mem) = iodev->procs.open_file;

        if (open_file) {
            code = open_file(iodev, pfn.fname, pfn.len, "r", &ps, mem);
            if (code < 0) {
                goto error_out;
            }
        }
        else {
            code =
                file_open_stream(pfn.fname, pfn.len, "r",
                                 file_default_buffer_size, &ps, pfn.iodev,
                                 pfn.iodev->procs.gp_fopen, mem);
            if (code < 0) {
                goto error_out;
            }
        }
    }

    if ((code = savailable(ps, &length)) < 0) {
        goto error_out;
    }

    ftstrm = (void *)(*(mem->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory, sizeof(FT_StreamRec), 1, "FF_open_read_stream");
    if (!ftstrm) {
        code = (-25);
        goto error_out;
    }
    memset(ftstrm, 0x00, sizeof(FT_StreamRec));

    ftstrm->descriptor.pointer = ps;
    ftstrm->read = FF_stream_read;
    ftstrm->close = FF_stream_close;
    ftstrm->size = (long)length;
    *fts = ftstrm;

  error_out:
    if (code < 0) {
        if (ps)
            (void)sclose(ps);
        if (ftstrm)
            ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, ftstrm, "FF_open_read_stream"));
    }
    return (code);
}


static ff_face *
new_face(gs_fapi_server * a_server, FT_Face a_ft_face,
         FT_Incremental_InterfaceRec * a_ft_inc_int, FT_Stream ftstrm,
         unsigned char *a_font_data, int a_font_data_len, bool data_owned)
{
    ff_server *s = (ff_server *) a_server;

    ff_face *face = (ff_face *) FF_alloc(s->ftmemory, sizeof(ff_face));

    if (face) {
        face->ft_face = a_ft_face;
        face->ft_inc_int = a_ft_inc_int;
        face->font_data = a_font_data;
        face->font_data_len = a_font_data_len;
        face->data_owned = data_owned;
        face->ftstrm = ftstrm;
        face->server = a_server;
    }
    return face;
}

static void
delete_face(gs_fapi_server * a_server, ff_face * a_face)
{
    if (a_face) {
        ff_server *s = (ff_server *) a_server;
        if (a_face->ft_inc_int) {
            FT_Incremental a_info = a_face->ft_inc_int->object;

            if (a_info->glyph_data) {
                ((s->mem->non_gc_memory)->procs.free_object(s->mem->non_gc_memory, a_info->glyph_data, "delete_face"));
            }
            a_info->glyph_data = ((void*)0);
            a_info->glyph_data_length = 0;
        }
        FT_Done_Face(a_face->ft_face);

        FF_free(s->ftmemory, a_face->ft_inc_int);
        if (a_face->data_owned)
            FF_free(s->ftmemory, a_face->font_data);
        if (a_face->ftstrm) {
            FF_free(s->ftmemory, a_face->ftstrm);
        }
        FF_free(s->ftmemory, a_face);
    }
}

static FT_IncrementalRec *
new_inc_int_info(gs_fapi_server * a_server, gs_fapi_font * a_fapi_font)
{
    ff_server *s = (ff_server *) a_server;

    FT_IncrementalRec *info =
        (FT_IncrementalRec *) FF_alloc(s->ftmemory,
                                       sizeof(FT_IncrementalRec));
    if (info) {
        info->fapi_font = a_fapi_font;
        info->glyph_data = ((void*)0);
        info->glyph_data_length = 0;
        info->glyph_data_in_use = ((bool)0);
        info->glyph_metrics_index = 0xFFFFFFFF;
        info->metrics_type = gs_fapi_metrics_notdef;
    }
    return info;
}

static void
delete_inc_int_info(gs_fapi_server * a_server,
                    FT_IncrementalRec * a_inc_int_info)
{
    ff_server *s = (ff_server *) a_server;

    if (a_inc_int_info) {
        FF_free(s->ftmemory, a_inc_int_info->glyph_data);
        FF_free(s->ftmemory, a_inc_int_info);
    }
}

static FT_Error
get_fapi_glyph_data(FT_Incremental a_info, FT_UInt a_index, FT_Data * a_data)
{
    gs_fapi_font *ff = a_info->fapi_font;
    int length = 0;
    ff_face *face = (ff_face *) ff->server_font_data;
    gs_memory_t *mem = (gs_memory_t *) face->server->mem;


    ff->need_decrypt = ((bool)1);




    if (a_info->glyph_data_in_use) {
        unsigned char *buffer = ((void*)0);

        length = ff->get_glyph(ff, a_index, ((void*)0), 0);
        if (length == 65535)
            return FT_Err_Invalid_Glyph_Index;

        buffer = (void *)(*(mem->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory, length, 1, "get_fapi_glyph_data");
        if (!buffer)
            return FT_Err_Out_Of_Memory;

        length = ff->get_glyph(ff, a_index, buffer, length);
        if (length == 65535) {
            (((gs_memory_t *) mem->non_gc_memory)->procs.free_object((gs_memory_t *) mem->non_gc_memory, buffer, "get_fapi_glyph_data"));

            return FT_Err_Invalid_Glyph_Index;
        }
        a_data->pointer = buffer;
    }
    else {




        const void *saved_char_data = ff->char_data;


        length =
            ff->get_glyph(ff, a_index, a_info->glyph_data,
                          (ushort) a_info->glyph_data_length);
        if (length == -1) {
            ff->char_data = saved_char_data;
            return FT_Err_Unknown_File_Format;
        }


        if (length > a_info->glyph_data_length) {
            if (a_info->glyph_data) {
                (((gs_memory_t *) mem->non_gc_memory)->procs.free_object((gs_memory_t *) mem->non_gc_memory, a_info->glyph_data, "get_fapi_glyph_data"));

            }

            a_info->glyph_data =
                (void *)(*(mem->non_gc_memory)->procs.alloc_byte_array)(mem->non_gc_memory, length, 1, "get_fapi_glyph_data");

            if (!a_info->glyph_data) {
                a_info->glyph_data_length = 0;
                return FT_Err_Out_Of_Memory;
            }
            a_info->glyph_data_length = length;
            ff->char_data = saved_char_data;
            length = ff->get_glyph(ff, a_index, a_info->glyph_data, length);
            if (length == -1)
                return FT_Err_Unknown_File_Format;
        }


        a_data->pointer = a_info->glyph_data;

        a_info->glyph_data_in_use = ((bool)1);
    }

    a_data->length = length;
    return 0;
}

static void
free_fapi_glyph_data(FT_Incremental a_info, FT_Data * a_data)
{
    gs_fapi_font *ff = a_info->fapi_font;
    ff_face *face = (ff_face *) ff->server_font_data;
    gs_memory_t *mem = (gs_memory_t *) face->server->mem;

    if (a_data->pointer == (const FT_Byte *)a_info->glyph_data)
        a_info->glyph_data_in_use = ((bool)0);
    else
        ((mem->non_gc_memory)->procs.free_object(mem->non_gc_memory, (FT_Byte *) a_data->pointer, "free_fapi_glyph_data"));
}

static FT_Error
get_fapi_glyph_metrics(FT_Incremental a_info, FT_UInt a_glyph_index,
                       FT_Bool bVertical,
                       FT_Incremental_MetricsRec * a_metrics)
{




    if (bVertical && !a_info->fapi_font->is_type1)
        a_metrics->advance = 0;

    if (a_info->glyph_metrics_index == a_glyph_index) {
        switch (a_info->metrics_type) {
            case gs_fapi_metrics_add:
                a_metrics->advance += a_info->glyph_metrics.advance;
                break;
            case gs_fapi_metrics_replace_width:
                a_metrics->advance = a_info->glyph_metrics.advance;
                break;
            case gs_fapi_metrics_replace:
                *a_metrics = a_info->glyph_metrics;

                a_metrics->advance_v = 0;
                break;
            default:

                return FT_Err_Invalid_Argument;
        }
    }
    return 0;
}

static const FT_Incremental_FuncsRec TheFAPIIncrementalInterfaceFuncs = {
    get_fapi_glyph_data,
    free_fapi_glyph_data,
    get_fapi_glyph_metrics
};

static FT_Incremental_InterfaceRec *
new_inc_int(gs_fapi_server * a_server, gs_fapi_font * a_fapi_font)
{
    ff_server *s = (ff_server *) a_server;

    FT_Incremental_InterfaceRec *i =
        (FT_Incremental_InterfaceRec *) FF_alloc(s->ftmemory,
                                                 sizeof
                                                 (FT_Incremental_InterfaceRec));
    if (i) {
        i->object = (FT_Incremental) new_inc_int_info(a_server, a_fapi_font);
        i->funcs = &TheFAPIIncrementalInterfaceFuncs;
    }
    if (!i->object) {
        FF_free(s->ftmemory, i);
        i = ((void*)0);
    }
    return i;
}

static void
delete_inc_int(gs_fapi_server * a_server,
               FT_Incremental_InterfaceRec * a_inc_int)
{
    ff_server *s = (ff_server *) a_server;

    if (a_inc_int) {
        delete_inc_int_info(a_server, a_inc_int->object);
        FF_free(s->ftmemory, a_inc_int);
    }
}




static int
ft_to_gs_error(FT_Error a_error)
{
    if (a_error) {
        if (a_error == FT_Err_Out_Of_Memory)
            return (-25);
        else
            return (-1);
    }
    return 0;
}




static gs_fapi_retcode
load_glyph(gs_fapi_server * a_server, gs_fapi_font * a_fapi_font,
           const gs_fapi_char_ref * a_char_ref, gs_fapi_metrics * a_metrics,
           FT_Glyph * a_glyph, bool a_bitmap, int max_bitmap)
{
    ff_server *s = (ff_server *) a_server;
    FT_Error ft_error = 0;
    FT_Error ft_error_fb = 1;
    ff_face *face = (ff_face *) a_fapi_font->server_font_data;
    FT_Face ft_face = face->ft_face;
    int index = a_char_ref->char_codes[0];
    FT_Long w;
    FT_Long h;
    FT_Long fflags;
    FT_Int32 load_flags = 0;





    const void *saved_char_data = a_fapi_font->char_data;
    const int saved_char_data_len = a_fapi_font->char_data_len;

    if (s->bitmap_glyph) {
        FT_Bitmap_Done(s->freetype_library, &s->bitmap_glyph->bitmap);
        FF_free(s->ftmemory, s->bitmap_glyph);
        s->bitmap_glyph = ((void*)0);
    }
    if (s->outline_glyph) {
        FT_Outline_Done(s->freetype_library, &s->outline_glyph->outline);
        FF_free(s->ftmemory, s->outline_glyph);
        s->outline_glyph = ((void*)0);
    }

    if (!a_char_ref->is_glyph_index) {
        if (ft_face->num_charmaps)
            index = FT_Get_Char_Index(ft_face, index);
        else {
# 564 "./base/fapi_ft.c"
            if (a_fapi_font->is_type1)
                index = 0;
            else
                index = a_char_ref->char_codes[0];
        }
    }
    else {





        if (!a_fapi_font->is_cid && !face->ft_inc_int &&
            (index == 0 ||
            (a_char_ref->client_char_code != ((gs_char)~0L) &&
            FT_Get_Char_Index(ft_face, a_char_ref->client_char_code) <= 0))) {
            int tmp_ind;

            if ((tmp_ind = FT_Get_Char_Index(ft_face, 32)) > 0) {
                index = tmp_ind;
            }
        }
    }

    if (face->ft_inc_int)
        face->ft_inc_int->object->fapi_font = a_fapi_font;


    if (face->ft_inc_int
        && a_char_ref->metrics_type != gs_fapi_metrics_notdef) {
        FT_Incremental_MetricsRec *m =
            &face->ft_inc_int->object->glyph_metrics;
        m->bearing_x = a_char_ref->sb_x >> 16;
        m->bearing_y = a_char_ref->sb_y >> 16;
        m->advance = a_char_ref->aw_x >> 16;
        face->ft_inc_int->object->glyph_metrics_index = index;
        face->ft_inc_int->object->metrics_type = a_char_ref->metrics_type;
    }
    else if (face->ft_inc_int)

        face->ft_inc_int->object->glyph_metrics_index = 0xFFFFFFFF;


    if (!ft_error) {



        a_fapi_font->char_data = saved_char_data;
        if (!a_fapi_font->is_mtx_skipped && !a_fapi_font->is_type1) {




            if (a_server->grid_fit == 0) {
                load_flags = ( 1L << 1 ) | ( 1L << 15 );
            }
            else if (a_server->grid_fit == 2) {
                load_flags = ( 1L << 5 );
            }
            load_flags |= ( 1L << 12 ) | ( 1L << 3 ) | ( 1L << 13 );
        }
        else {


            load_flags |= ( 1L << 12 ) | ( 1L << 1 ) | ( 1L << 3 ) | ( 1L << 13 );
        }

        ft_error = FT_Load_Glyph(ft_face, index, load_flags);
        if (ft_error == FT_Err_Unknown_File_Format) {
            return index + 1;
        }
    }

    if (ft_error == FT_Err_Invalid_Argument
        || ft_error == FT_Err_Invalid_Reference
        || ft_error == FT_Err_Invalid_Glyph_Index
        || (ft_error >= FT_Err_Invalid_Opcode
            && ft_error <= FT_Err_Too_Many_Instruction_Defs)) {

        a_fapi_font->char_data = saved_char_data;


        fflags = ft_face->face_flags;
        ft_face->face_flags &= ~( 1L << 13 );
        load_flags |= ( 1L << 1 );
        ft_error = FT_Load_Glyph(ft_face, index, load_flags);

        ft_face->face_flags = fflags;
    }

    if (ft_error == FT_Err_Out_Of_Memory
        || ft_error == FT_Err_Array_Too_Large) {
        return ((-25));
    }


    if (ft_error) {
        gs_string notdef_str;

        notdef_str.data = (byte *)".notdef";
        notdef_str.size = 7;

        a_fapi_font->char_data = (void *)(&notdef_str);
        a_fapi_font->char_data_len = 0;


        fflags = ft_face->face_flags;
        ft_face->face_flags &= ~( 1L << 13 );

        ft_error_fb = FT_Load_Glyph(ft_face, 0, load_flags);

        ft_face->face_flags = fflags;

        a_fapi_font->char_data = saved_char_data;
        a_fapi_font->char_data_len = saved_char_data_len;
    }




    if ((!ft_error || !ft_error_fb) && a_metrics) {
        FT_Long hx;
        FT_Long hy;
        FT_Long vadv;




        hx = (FT_Long) (((double)ft_face->glyph->metrics.horiBearingX *
                         ft_face->units_per_EM * 72.0) /
                        ((double)face->width * face->horz_res));
        hy = (FT_Long) (((double)ft_face->glyph->metrics.horiBearingY *
                         ft_face->units_per_EM * 72.0) /
                        ((double)face->height * face->vert_res));

        w = (FT_Long) (((double)ft_face->glyph->metrics.width *
                        ft_face->units_per_EM * 72.0) / ((double)face->width *
                                                         face->horz_res));
        h = (FT_Long) (((double)ft_face->glyph->metrics.height *
                        ft_face->units_per_EM * 72.0) /
                       ((double)face->height * face->vert_res));






        if (a_fapi_font->is_type1
           || ((a_fapi_font->full_font_buf || a_fapi_font->font_file_path)
           && a_fapi_font->is_vertical && ( ft_face->face_flags & ( 1L << 5 ) ))) {

            vadv = ft_face->glyph->linearVertAdvance;
        }
        else {
            vadv = 0;
        }

        a_metrics->bbox_x0 = hx;
        a_metrics->bbox_y0 = hy - h;
        a_metrics->bbox_x1 = a_metrics->bbox_x0 + w;
        a_metrics->bbox_y1 = a_metrics->bbox_y0 + h;
        a_metrics->escapement = ft_face->glyph->linearHoriAdvance;
        a_metrics->v_escapement = vadv;
        a_metrics->em_x = ft_face->units_per_EM;
        a_metrics->em_y = ft_face->units_per_EM;
    }

    if ((!ft_error || !ft_error_fb)) {

        FT_BBox cbox;


        FT_Outline_Get_CBox(&ft_face->glyph->outline, &cbox);





        cbox.xMin = ((cbox.xMin) & ~63);
        cbox.yMin = ((cbox.yMin) & ~63);
        cbox.xMax = (((cbox.xMax) + 63) & ~63);
        cbox.yMax = (((cbox.yMax) + 63) & ~63);

        w = (FT_UInt) ((cbox.xMax - cbox.xMin) >> 6);
        h = (FT_UInt) ((cbox.yMax - cbox.yMin) >> 6);

        if (!a_fapi_font->metrics_only && a_bitmap == ((bool)1) && ft_face->glyph->format != FT_GLYPH_FORMAT_BITMAP
            && ft_face->glyph->format != FT_GLYPH_FORMAT_COMPOSITE) {
            if ((((uint)((((w) + ((1 << 3) * 8 - 1)) >> (3 + 3)) << 3)) * h) < max_bitmap) {
                FT_Render_Mode mode = FT_RENDER_MODE_MONO;

                ft_error = FT_Render_Glyph(ft_face->glyph, mode);
            }
            else {
                (*a_glyph) = ((void*)0);
                return ((-25));
            }
        }
    }

    if (!a_fapi_font->metrics_only) {
        if ((!ft_error || !ft_error_fb) && a_glyph) {
            ft_error = FT_Get_Glyph(ft_face->glyph, a_glyph);
        }
        else {
            if (ft_face->glyph->format == FT_GLYPH_FORMAT_BITMAP) {
                FT_BitmapGlyph bmg;

                ft_error = FT_Get_Glyph(ft_face->glyph, (FT_Glyph *) & bmg);
                if (!ft_error) {
                    FT_Bitmap_Done(s->freetype_library, &bmg->bitmap);
                    FF_free(s->ftmemory, bmg);
                }
            }
            else {
                FT_OutlineGlyph olg;

                ft_error = FT_Get_Glyph(ft_face->glyph, (FT_Glyph *) & olg);
                if (!ft_error) {
                    FT_Outline_Done(s->freetype_library, &olg->outline);
                    FF_free(s->ftmemory, olg);
                }
            }
        }
    }

    if (ft_error == FT_Err_Too_Many_Hints) {
# 803 "./base/fapi_ft.c"
        if (!ft_error_fb)
            ft_error = 0;
    }
    if (ft_error == FT_Err_Invalid_Argument) {
# 819 "./base/fapi_ft.c"
        if (!ft_error_fb)
            ft_error = 0;
    }
    if (ft_error == FT_Err_Too_Many_Function_Defs) {
# 835 "./base/fapi_ft.c"
        if (!ft_error_fb)
            ft_error = 0;
    }
    if (ft_error == FT_Err_Invalid_Glyph_Index) {
# 851 "./base/fapi_ft.c"
        if (!ft_error_fb)
            ft_error = 0;
    }
    return ft_to_gs_error(ft_error);
}






static gs_fapi_retcode
gs_fapi_ft_ensure_open(gs_fapi_server * a_server, const char * server_param,
            int server_param_size)
{
    ff_server *s = (ff_server *) a_server;

    if (!s->freetype_library) {
        FT_Error ft_error;




        s->ftmemory->user = s->mem;
        s->ftmemory->alloc = FF_alloc;
        s->ftmemory->free = FF_free;
        s->ftmemory->realloc = FF_realloc;

        ft_error = FT_New_Library(s->ftmemory, &s->freetype_library);
        if (ft_error) {
            ((s->mem->non_gc_memory)->procs.free_object(s->mem->non_gc_memory, s->ftmemory, "gs_fapi_ft_ensure_open"));
        }
        else {
            FT_Add_Default_Modules(s->freetype_library);
        }

        if (ft_error)
            return ft_to_gs_error(ft_error);
    }
    return 0;
}
# 927 "./base/fapi_ft.c"
static void
transform_decompose(FT_Matrix * a_transform, FT_UInt * xresp, FT_UInt * yresp,
                    FT_Fixed * a_x_scale, FT_Fixed * a_y_scale)
{
    double scalex, scaley, fact = 1.0;
    double factx = 1.0, facty = 1.0;
    FT_Matrix ftscale_mat;
    FT_UInt xres;
    FT_UInt yres;
    bool indep_scale;

    scalex = sqrt((double)((double)a_transform->xx)*((double)a_transform->xx)+(double)((double)a_transform->xy)*((double)a_transform->xy));
    scaley = sqrt((double)((double)a_transform->yx)*((double)a_transform->yx)+(double)((double)a_transform->yy)*((double)a_transform->yy));

    if (*xresp != *yresp) {






        bool use_x = ((bool)1);

        if (*xresp < *yresp) {
            use_x = ((bool)0);
        }

        ftscale_mat.xx =
            (int)(((double)(*xresp) /
                   ((double)(use_x ? (*xresp) : (*yresp)))) * 65536);
        ftscale_mat.xy = ftscale_mat.yx = 0;
        ftscale_mat.yy =
            (int)(((double)(*yresp) /
                   ((double)(use_x ? (*xresp) : (*yresp)))) * 65536);

        FT_Matrix_Multiply(&ftscale_mat, a_transform);

        xres = yres = (use_x ? (*xresp) : (*yresp));
    }
    else {

        xres = *xresp;
        yres = *yresp;
    }
# 980 "./base/fapi_ft.c"
    indep_scale = (((((int)scalex) / ((int)scaley)) > 512)
                   || ((((int)scaley) / ((int)scalex)) > 512));

    scalex *= 1.0 / 65536.0;
    scaley *= 1.0 / 65536.0;
# 1003 "./base/fapi_ft.c"
    if (indep_scale) {
        if (scaley < 10.0) {
            facty = 10.016 / scaley;
            scaley = scaley * facty;
        }
# 1017 "./base/fapi_ft.c"
        if (scaley * yres < 2268.0 / 64.0) {
            facty = (2400.0 / 64.0) / (yres * scaley);
            scaley *= facty;
        }
# 1029 "./base/fapi_ft.c"
        facty = 1.0;
        while (scaley * yres > 512.0 * 72 && yres > 0 && scaley > 0.0) {
            if (scaley < yres) {
                yres >>= 1;
                facty *= 2.0;
            }
            else {
                scaley /= 1.25;
            }
        }

        if (scalex < 10.0) {
            factx = 10.016 / scalex;
            scalex = scalex * factx;
        }


        if (scalex * xres < 2268.0 / 64.0) {
            factx = (2400.0 / 64.0) / (xres * scalex);
            scalex *= factx;
        }


        factx = 1.0;
        while (scalex * xres > 512.0 * 72.0 && xres > 0 && scalex > 0.0) {
            if (scalex < xres) {
                xres >>= 1;
                factx *= 2.0;
            }
            else {
                scalex /= 1.25;
            }
        }
    }
    else {




        if (scalex > scaley) {
            if (scaley < 10.0) {
                fact = 10.016 / scaley;
                scaley = scaley * fact;
                scalex = scalex * fact;
            }
# 1083 "./base/fapi_ft.c"
            if (scaley * yres < 2268.0 / 64.0) {
                fact = (2400.0 / 64.0) / (yres * scaley);
                scaley *= fact;
                scalex *= fact;
            }





            fact = 1.0;
            while (scalex * xres > 512.0 * 72 && xres > 0 && yres > 0
                   && (scalex > 0.0 && scaley > 0.0)) {
                if (scalex < xres) {
                    xres >>= 1;
                    yres >>= 1;
                    fact *= 2.0;
                }
                else {
                    scalex /= 1.25;
                    scaley /= 1.25;
                }
            }
        }
        else {
            if (scalex < 10.0) {
                fact = 10.016 / scalex;
                scalex = scalex * fact;
                scaley = scaley * fact;
            }


            if (scalex * xres < 2268.0 / 64.0) {
                fact = (2400.0 / 64.0) / (xres * scalex);
                scaley *= fact;
                scalex *= fact;
            }


            fact = 1.0;
            while (scaley * yres > 512.0 * 72.0 && (xres > 0 && yres > 0)
                   && (scalex > 0.0 && scaley > 0.0)) {
                if (scaley < yres) {
                    xres >>= 1;
                    yres >>= 1;
                    fact *= 2.0;
                }
                else {
                    scalex /= 1.25;
                    scaley /= 1.25;
                }
            }
        }
        factx = facty = fact;
    }
    ftscale_mat.xx = (FT_Fixed) ((65536.0 / scalex) * factx);
    ftscale_mat.xy = 0;
    ftscale_mat.yx = 0;
    ftscale_mat.yy = (FT_Fixed) ((65536.0 / scaley) * facty);

    FT_Matrix_Multiply(a_transform, &ftscale_mat);
    memcpy(a_transform, &ftscale_mat, sizeof(FT_Matrix));

    *xresp = xres;
    *yresp = yres;

    *a_x_scale = (FT_Fixed) (scalex * 64);
    *a_y_scale = (FT_Fixed) (scaley * 64);
}




static gs_fapi_retcode
gs_fapi_ft_get_scaled_font(gs_fapi_server * a_server, gs_fapi_font * a_font,
                const gs_fapi_font_scale * a_font_scale,
                const char *a_map, gs_fapi_descendant_code a_descendant_code)
{
    ff_server *s = (ff_server *) a_server;
    ff_face *face = (ff_face *) a_font->server_font_data;
    FT_Error ft_error = 0;
    int i, j;
    FT_CharMap cmap = ((void*)0);
    bool data_owned = ((bool)1);

    if (s->bitmap_glyph) {
        FT_Bitmap_Done(s->freetype_library, &s->bitmap_glyph->bitmap);
        FF_free(s->ftmemory, s->bitmap_glyph);
        s->bitmap_glyph = ((void*)0);
    }
    if (s->outline_glyph) {
        FT_Outline_Done(s->freetype_library, &s->outline_glyph->outline);
        FF_free(s->ftmemory, s->outline_glyph);
        s->outline_glyph = ((void*)0);
    }
# 1186 "./base/fapi_ft.c"
    if (a_font->is_cid && a_font->is_type1 && a_font->font_file_path == ((void*)0)
        && (a_descendant_code == gs_fapi_toplevel_begin
            || a_descendant_code == gs_fapi_toplevel_complete)) {

        return 0;
    }


    if (!face) {
        FT_Face ft_face = ((void*)0);
        FT_Parameter ft_param;
        FT_Incremental_InterfaceRec *ft_inc_int = ((void*)0);
        unsigned char *own_font_data = ((void*)0);
        int own_font_data_len = -1;
        FT_Stream ft_strm = ((void*)0);



        if (a_font->full_font_buf) {

            own_font_data =
                (void *)(*(((gs_memory_t *) (s->ftmemory->user))->non_gc_memory)->procs.alloc_byte_array)(((gs_memory_t *) (s->ftmemory->user))->non_gc_memory, a_font->full_font_buf_len, 1, "gs_fapi_ft_get_scaled_font - full font buf");


            if (!own_font_data) {
                return ((-25));
            }

            own_font_data_len = a_font->full_font_buf_len;
            memcpy(own_font_data, a_font->full_font_buf,
                   a_font->full_font_buf_len);

            ft_error =
                FT_New_Memory_Face(s->freetype_library,
                                   (const FT_Byte *)own_font_data,
                                   own_font_data_len, a_font->subfont,
                                   &ft_face);

            if (!ft_error && ft_face)
                ft_error = FT_Select_Charmap(ft_face, FT_ENCODING_UNICODE);

        }

        else if (a_font->font_file_path) {
            FT_Open_Args args;
            int code;

            memset(&args, 0x00, sizeof(args));

            if ((code =
                 FF_open_read_stream((gs_memory_t *) (s->ftmemory->user),
                                     (char *)a_font->font_file_path,
                                     &ft_strm)) < 0) {
                return (code);
            }

            args.flags = 0x2;
            args.stream = ft_strm;

            ft_error =
                FT_Open_Face(s->freetype_library, &args, a_font->subfont,
                             &ft_face);

            if (!ft_error && ft_face)
                ft_error = FT_Select_Charmap(ft_face, FT_ENCODING_UNICODE);
        }


        else {
            FT_Open_Args open_args;

            open_args.flags = 0x1;

            if (a_font->is_type1) {
                long length;
                int type =
                    a_font->get_word(a_font, gs_fapi_font_feature_FontType,
                                     0);


                a_font->need_decrypt = ((bool)1);





                if (type == 1)
                    length = gs_fapi_serialize_type1_font(a_font, ((void*)0), 0);
                else
                    length = gs_fapi_serialize_type2_font(a_font, ((void*)0), 0);
                open_args.memory_base = own_font_data =
                    FF_alloc(s->ftmemory, length);
                if (!open_args.memory_base)
                    return (-25);
                own_font_data_len = length;
                if (type == 1)
                    open_args.memory_size =
                        gs_fapi_serialize_type1_font(a_font, own_font_data,
                                                     length);
                else
                    open_args.memory_size =
                        gs_fapi_serialize_type2_font(a_font, own_font_data,
                                                     length);
                if (open_args.memory_size != length)
                    return ((-28));
                ft_inc_int = new_inc_int(a_server, a_font);
                if (!ft_inc_int) {
                    FF_free(s->ftmemory, own_font_data);
                    return (-25);
                }
            }


            else {

                open_args.memory_size =
                    a_font->get_long(a_font, gs_fapi_font_feature_TT_size, 0);
                if (open_args.memory_size == 0)
                    return (-10);


                open_args.memory_base = own_font_data =
                    FF_alloc(s->ftmemory, open_args.memory_size);
                if (!own_font_data)
                    return (-25);

                own_font_data_len = open_args.memory_size;

                if (a_font->
                    serialize_tt_font(a_font, own_font_data,
                                      open_args.memory_size))
                    return (-10);


                ft_inc_int = new_inc_int(a_server, a_font);
                if (!ft_inc_int) {
                    FF_free(s->ftmemory, own_font_data);
                    return (-25);
                }
            }

            if (ft_inc_int) {
                open_args.flags =
                    (FT_UInt) (open_args.flags | 0x10);
                ft_param.tag = (FT_Tag) ( ( (FT_ULong)'i' << 24 ) | ( (FT_ULong)'n' << 16 ) | ( (FT_ULong)'c' << 8 ) | (FT_ULong)'r' );
                ft_param.data = ft_inc_int;
                open_args.num_params = 1;
                open_args.params = &ft_param;
            }
            ft_error =
                FT_Open_Face(s->freetype_library, &open_args, a_font->subfont,
                             &ft_face);
        }

        if (ft_face) {
            face =
                new_face(a_server, ft_face, ft_inc_int, ft_strm,
                         own_font_data, own_font_data_len, data_owned);
            if (!face) {
                FF_free(s->ftmemory, own_font_data);
                FT_Done_Face(ft_face);
                delete_inc_int(a_server, ft_inc_int);
                return (-25);
            }
            a_font->server_font_data = face;
        }
        else
            a_font->server_font_data = ((void*)0);
    }





    if (face) {




        face->ft_transform.xx = a_font_scale->matrix[0];
        face->ft_transform.xy = a_font_scale->matrix[2];
        face->ft_transform.yx = a_font_scale->matrix[1];
        face->ft_transform.yy = a_font_scale->matrix[3];

        face->horz_res = a_font_scale->HWResolution[0] >> 16;
        face->vert_res = a_font_scale->HWResolution[1] >> 16;




        transform_decompose(&face->ft_transform, &face->horz_res,
                            &face->vert_res, &face->width, &face->height);

        ft_error = FT_Set_Char_Size(face->ft_face, face->width, face->height,
                                    face->horz_res, face->vert_res);

        if (ft_error) {






            return ft_to_gs_error(ft_error);
        }






        FT_Set_Transform(face->ft_face, &face->ft_transform, ((void*)0));

        for (i = 0; i < 10 && !cmap; i++) {
            if (a_font->ttf_cmap_req[i].platform_id > 0) {
                for (j = 0; j < face->ft_face->num_charmaps; j++) {
                    if (face->ft_face->charmaps[j]->platform_id == a_font->ttf_cmap_req[i].platform_id
                     && face->ft_face->charmaps[j]->encoding_id == a_font->ttf_cmap_req[i].encoding_id) {

                        cmap = face->ft_face->charmaps[j];
                        break;
                    }
                }
            }
            else {
                break;
            }
        }
        if (cmap) {
            (void)FT_Set_Charmap(face->ft_face, cmap);
        }
    }


    return a_font->server_font_data ? 0 : -1;
}







static gs_fapi_retcode
gs_fapi_ft_get_decodingID(gs_fapi_server * a_server, gs_fapi_font * a_font,
               const char **a_decoding_id)
{
    *a_decoding_id = "Unicode";
    return 0;
}




static gs_fapi_retcode
gs_fapi_ft_get_font_bbox(gs_fapi_server * a_server, gs_fapi_font * a_font, int a_box[4], int unitsPerEm[2])
{
    ff_face *face = (ff_face *) a_font->server_font_data;

    a_box[0] = face->ft_face->bbox.xMin;
    a_box[1] = face->ft_face->bbox.yMin;
    a_box[2] = face->ft_face->bbox.xMax;
    a_box[3] = face->ft_face->bbox.yMax;

    unitsPerEm[0] = unitsPerEm[1] = face->ft_face->units_per_EM;

    return 0;
}





static gs_fapi_retcode
gs_fapi_ft_get_font_proportional_feature(gs_fapi_server * a_server,
                              gs_fapi_font * a_font, bool * a_proportional)
{
    *a_proportional = ((bool)1);
    return 0;
}







static gs_fapi_retcode
gs_fapi_ft_can_retrieve_char_by_name(gs_fapi_server * a_server, gs_fapi_font * a_font,
                          gs_fapi_char_ref * a_char_ref, bool * a_result)
{
    ff_face *face = (ff_face *) a_font->server_font_data;
    char name[128];

    if (( face->ft_face->face_flags & ( 1L << 9 ) )
        && a_char_ref->char_name_length < sizeof(name)) {
        memcpy(name, a_char_ref->char_name, a_char_ref->char_name_length);
        name[a_char_ref->char_name_length] = 0;
        a_char_ref->char_codes[0] = FT_Get_Name_Index(face->ft_face, name);
        *a_result = a_char_ref->char_codes[0] != 0;
        if (*a_result)
            a_char_ref->is_glyph_index = ((bool)1);
    }
    else
        *a_result = ((bool)0);
    return 0;
}




static gs_fapi_retcode
gs_fapi_ft_can_replace_metrics(gs_fapi_server * a_server, gs_fapi_font * a_font,
                    gs_fapi_char_ref * a_char_ref, int *a_result)
{

    *a_result = 1;
    return 0;
}




static gs_fapi_retcode
gs_fapi_ft_get_char_width(gs_fapi_server * a_server, gs_fapi_font * a_font,
               gs_fapi_char_ref * a_char_ref, gs_fapi_metrics * a_metrics)
{
    ff_server *s = (ff_server *) a_server;

    return load_glyph(a_server, a_font, a_char_ref, a_metrics,
                      (FT_Glyph *) & s->outline_glyph,
                      ((bool)0), a_server->max_bitmap);
}

static gs_fapi_retcode
gs_fapi_ft_get_fontmatrix(gs_fapi_server * server, gs_matrix * m)
{
    m->xx = 1.0;
    m->xy = 0.0;
    m->yx = 0.0;
    m->yy = 1.0;
    m->tx = 0.0;
    m->ty = 0.0;
    return 0;
}






static gs_fapi_retcode
gs_fapi_ft_get_char_raster_metrics(gs_fapi_server * a_server, gs_fapi_font * a_font,
                        gs_fapi_char_ref * a_char_ref,
                        gs_fapi_metrics * a_metrics)
{
    ff_server *s = (ff_server *) a_server;
    gs_fapi_retcode error =
        load_glyph(a_server, a_font, a_char_ref, a_metrics,
                   (FT_Glyph *) & s->bitmap_glyph, ((bool)1),
                   a_server->max_bitmap);
    return error;
}




static gs_fapi_retcode
gs_fapi_ft_get_char_raster(gs_fapi_server * a_server, gs_fapi_raster * a_raster)
{
    ff_server *s = (ff_server *) a_server;

    if (!s->bitmap_glyph)
        return((-28));
    a_raster->p = s->bitmap_glyph->bitmap.buffer;
    a_raster->width = s->bitmap_glyph->bitmap.width;
    a_raster->height = s->bitmap_glyph->bitmap.rows;
    a_raster->line_step = s->bitmap_glyph->bitmap.pitch;
    a_raster->orig_x = s->bitmap_glyph->left * 16;
    a_raster->orig_y = s->bitmap_glyph->top * 16;
    a_raster->left_indent = a_raster->top_indent = a_raster->black_height =
        a_raster->black_width = 0;
    return 0;
}






static gs_fapi_retcode
gs_fapi_ft_get_char_outline_metrics(gs_fapi_server * a_server, gs_fapi_font * a_font,
                         gs_fapi_char_ref * a_char_ref,
                         gs_fapi_metrics * a_metrics)
{
    ff_server *s = (ff_server *) a_server;

    return load_glyph(a_server, a_font, a_char_ref, a_metrics,
                      (FT_Glyph *) & s->outline_glyph, ((bool)0),
                      a_server->max_bitmap);
}

typedef struct FF_path_info_s
{
    gs_fapi_path *path;
    int64_t x;
    int64_t y;
} FF_path_info;

static int
move_to(const FT_Vector * aTo, void *aObject)
{
    FF_path_info *p = (FF_path_info *) aObject;
# 1607 "./base/fapi_ft.c"
    p->x = ((int64_t) aTo->x) << 26;
    p->y = ((int64_t) aTo->y) << 26;

    return p->path->moveto(p->path, p->x, p->y) ? -1 : 0;
}

static int
line_to(const FT_Vector * aTo, void *aObject)
{
    FF_path_info *p = (FF_path_info *) aObject;


    p->x = ((int64_t) aTo->x) << 26;
    p->y = ((int64_t) aTo->y) << 26;

    return p->path->lineto(p->path, p->x, p->y) ? -1 : 0;
}

static int
conic_to(const FT_Vector * aControl, const FT_Vector * aTo, void *aObject)
{
    FF_path_info *p = (FF_path_info *) aObject;
    double x, y, Controlx, Controly;
    int64_t Control1x, Control1y, Control2x, Control2y;
    double sx, sy;
# 1649 "./base/fapi_ft.c"
    sx = (double) (p->x >> 32);
    sy = (double) (p->y >> 32);

    x = aTo->x / 64.0;
    p->x = ((int64_t) ((fixed)((x)*(float)(1<<8)))) << 24;
    y = aTo->y / 64.0;
    p->y = ((int64_t) ((fixed)((y)*(float)(1<<8)))) << 24;
    Controlx = aControl->x / 64.0;
    Controly = aControl->y / 64.0;

    Control1x = ((int64_t) ((fixed)(((sx + Controlx * 2) / 3)*(float)(1<<8)))) << 24;
    Control1y = ((int64_t) ((fixed)(((sy + Controly * 2) / 3)*(float)(1<<8)))) << 24;
    Control2x = ((int64_t) ((fixed)(((x + Controlx * 2) / 3)*(float)(1<<8)))) << 24;
    Control2y = ((int64_t) ((fixed)(((y + Controly * 2) / 3)*(float)(1<<8)))) << 24;

    return p->path->curveto(p->path, Control1x,
                            Control1y,
                            Control2x, Control2y, p->x, p->y) ? -1 : 0;
}

static int
cubic_to(const FT_Vector * aControl1, const FT_Vector * aControl2,
         const FT_Vector * aTo, void *aObject)
{
    FF_path_info *p = (FF_path_info *) aObject;
    int64_t Control1x, Control1y, Control2x, Control2y;


    p->x = ((int64_t) aTo->x) << 26;
    p->y = ((int64_t) aTo->y) << 26;

    Control1x = ((int64_t) aControl1->x) << 26;
    Control1y = ((int64_t) aControl1->y) << 26;
    Control2x = ((int64_t) aControl2->x) << 26;
    Control2y = ((int64_t) aControl2->y) << 26;
    return p->path->curveto(p->path, Control1x, Control1y, Control2x,
                            Control2y, p->x, p->y) ? -1 : 0;

    p->x = aTo->x;
    p->y = aTo->y;
    return p->path->curveto(p->path, aControl1->x, aControl1->y, aControl2->x,
                            aControl2->y, aTo->x, aTo->y) ? -1 : 0;
}

static const FT_Outline_Funcs TheFtOutlineFuncs = {
    move_to,
    line_to,
    conic_to,
    cubic_to,
    0,
    0
};




static gs_fapi_retcode
gs_fapi_ft_get_char_outline(gs_fapi_server * a_server, gs_fapi_path * a_path)
{
    ff_server *s = (ff_server *) a_server;
    FF_path_info p;
    FT_Error ft_error = 0;

    p.path = a_path;
    p.x = 0;
    p.y = 0;



    if (s->outline_glyph) {
        ft_error =
            FT_Outline_Decompose(&s->outline_glyph->outline, &TheFtOutlineFuncs,
                                 &p);
    }
    else {
        a_path->moveto(a_path, 0, 0);
    }

    if (a_path->gs_error == 0)
        a_path->closepath(a_path);
    return ft_to_gs_error(ft_error);
}

static gs_fapi_retcode
gs_fapi_ft_release_char_data(gs_fapi_server * a_server)
{
    ff_server *s = (ff_server *) a_server;

    if (s->outline_glyph) {
        FT_Outline_Done(s->freetype_library, &s->outline_glyph->outline);
        FF_free(s->ftmemory, s->outline_glyph);
    }

    if (s->bitmap_glyph) {
        FT_Bitmap_Done(s->freetype_library, &s->bitmap_glyph->bitmap);
        FF_free(s->ftmemory, s->bitmap_glyph);
    }

    s->outline_glyph = ((void*)0);
    s->bitmap_glyph = ((void*)0);
    return 0;
}

static gs_fapi_retcode
gs_fapi_ft_release_typeface(gs_fapi_server * a_server, void *a_server_font_data)
{
    ff_face *face = (ff_face *) a_server_font_data;

    delete_face(a_server, face);
    return 0;
}

static gs_fapi_retcode
gs_fapi_ft_check_cmap_for_GID(gs_fapi_server * server, uint * index)
{
    ff_face *face = (ff_face *) (server->ff.server_font_data);
    FT_Face ft_face = face->ft_face;

    *index = FT_Get_Char_Index(ft_face, *index);
    return 0;
}

static void gs_fapi_freetype_destroy(gs_fapi_server ** serv);

static const gs_fapi_server_descriptor freetypedescriptor = {
    (const char *)"FAPI",
    (const char *)"FreeType",
    gs_fapi_freetype_destroy
};

static const gs_fapi_server freetypeserver = {
    {&freetypedescriptor},
    ((void*)0),
    16,
    {0L},
    {0},
    0,
    ((bool)0),
    1,
    {1, 0, 0, 1, 0, 0},
    gs_fapi_ft_ensure_open,
    gs_fapi_ft_get_scaled_font,
    gs_fapi_ft_get_decodingID,
    gs_fapi_ft_get_font_bbox,
    gs_fapi_ft_get_font_proportional_feature,
    gs_fapi_ft_can_retrieve_char_by_name,
    gs_fapi_ft_can_replace_metrics,
    ((void*)0),
    gs_fapi_ft_get_fontmatrix,
    gs_fapi_ft_get_char_width,
    gs_fapi_ft_get_char_raster_metrics,
    gs_fapi_ft_get_char_raster,
    gs_fapi_ft_get_char_outline_metrics,
    gs_fapi_ft_get_char_outline,
    gs_fapi_ft_release_char_data,
    gs_fapi_ft_release_typeface,
    gs_fapi_ft_check_cmap_for_GID,
    ((void*)0)
};

int gs_fapi_ft_init(gs_memory_t * mem, gs_fapi_server ** server);

int
gs_fapi_ft_init(gs_memory_t * mem, gs_fapi_server ** server)
{
    ff_server *serv;
    int code = 0;
    gs_memory_t *cmem = ((void*)0);

    code = gs_memory_chunk_wrap(&(cmem), mem);
    if (code != 0) {
        return (code);
    }


    serv =
        (ff_server *) ((cmem)->procs.alloc_bytes_immovable(cmem, sizeof(ff_server), "gs_fapi_ft_init"));
    if (!serv) {
        return ((-25));
    }
    memset(serv, 0, sizeof(*serv));
    serv->mem = cmem;
    serv->fapi_server = freetypeserver;

    serv->ftmemory = (FT_Memory) (&(serv->ftmemory_rec));

    (*server) = (gs_fapi_server *) serv;
    return (0);
}


void
gs_fapi_freetype_destroy(gs_fapi_server ** serv)
{
    ff_server *server = (ff_server *) * serv;
    gs_memory_t *cmem = server->mem;

    FT_Done_Glyph(&server->outline_glyph->root);
    FT_Done_Glyph(&server->bitmap_glyph->root);





    FT_Done_Library(server->freetype_library);
    ((cmem->non_gc_memory)->procs.free_object(cmem->non_gc_memory, *serv, "gs_fapi_freetype_destroy: ff_server"));
    *serv = ((void*)0);
    gs_memory_chunk_release(cmem);
}
