# 1 "./base/mkromfs.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/mkromfs.c" 2
# 72 "./base/mkromfs.c"
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
# 73 "./base/mkromfs.c" 2
# 1 "./base/stdint_.h" 1
# 25 "./base/stdint_.h"
# 1 "./base/std.h" 1
# 25 "./base/std.h"
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
# 26 "./base/stdint_.h" 2
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
# 74 "./base/mkromfs.c" 2
# 1 "./base/time_.h" 1
# 30 "./base/time_.h"
# 1 "./obj/gconfig_.h" 1
# 31 "./base/time_.h" 2






# 1 "/usr/include/sys/time.h" 1 3 4
# 26 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 27 "/usr/include/sys/time.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 29 "/usr/include/sys/time.h" 2 3 4
# 56 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 72 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ ));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ ));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ ));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ ));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));
# 38 "./base/time_.h" 2








# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 133 "/usr/include/time.h" 3 4
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};
# 161 "/usr/include/time.h" 3 4
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 189 "/usr/include/time.h" 3 4
extern clock_t clock (void) __attribute__ ((__nothrow__ ));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
# 221 "/usr/include/time.h" 3 4
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
# 222 "/usr/include/time.h" 2 3 4

extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));
# 239 "/usr/include/time.h" 3 4
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ ));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ ));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ ));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ ));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 47 "./base/time_.h" 2
# 82 "./base/time_.h"
# 1 "/usr/include/sys/times.h" 1 3 4
# 34 "/usr/include/sys/times.h" 3 4
struct tms
  {
    clock_t tms_utime;
    clock_t tms_stime;

    clock_t tms_cutime;
    clock_t tms_cstime;
  };






extern clock_t times (struct tms *__buffer) __attribute__ ((__nothrow__ ));
# 83 "./base/time_.h" 2
# 75 "./base/mkromfs.c" 2
# 1 "./base/gsiorom.h" 1
# 76 "./base/mkromfs.c" 2
# 1 "./base/gsmemret.h" 1
# 22 "./base/gsmemret.h"
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
# 23 "./base/gsmemret.h" 2







typedef struct gs_memory_retrying_s gs_memory_retrying_t;




typedef enum {
    RECOVER_STATUS_NO_RETRY,
    RECOVER_STATUS_RETRY_OK
} gs_memory_recover_status_t;
typedef gs_memory_recover_status_t (*gs_memory_recover_proc_t)
     (gs_memory_retrying_t *rmem, void *proc_data);

struct gs_memory_retrying_s {
    gs_memory_t *stable_memory; gs_memory_procs_t procs; gs_lib_ctx_t *gs_lib_ctx; gs_memory_t *non_gc_memory; gs_memory_t *thread_safe_memory;
    gs_memory_t *target;
    gs_memory_recover_proc_t recover_proc;
    void *recover_proc_data;
};




int gs_memory_retrying_init(
                            gs_memory_retrying_t * rmem,
                            gs_memory_t * target
                            );



void gs_memory_retrying_release(gs_memory_retrying_t *rmem);


void gs_memory_retrying_set_recover(gs_memory_retrying_t *rmem,
                                    gs_memory_recover_proc_t recover_proc,
                                    void *recover_proc_data);


gs_memory_t * gs_memory_retrying_target(const gs_memory_retrying_t *rmem);
# 77 "./base/mkromfs.c" 2
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
# 78 "./base/mkromfs.c" 2
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
# 79 "./base/mkromfs.c" 2
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
# 80 "./base/mkromfs.c" 2

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
# 465 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
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
# 82 "./base/mkromfs.c" 2
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
# 162 "/usr/include/string.h" 3 4
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
# 1301 "/usr/include/bits/string2.h" 3 4
extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 1320 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 634 "/usr/include/string.h" 2 3 4
# 83 "./base/mkromfs.c" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 47 "/usr/include/ctype.h" 3 4
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 80 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 111 "/usr/include/ctype.h" 3 4
extern int isalnum (int) __attribute__ ((__nothrow__ ));
extern int isalpha (int) __attribute__ ((__nothrow__ ));
extern int iscntrl (int) __attribute__ ((__nothrow__ ));
extern int isdigit (int) __attribute__ ((__nothrow__ ));
extern int islower (int) __attribute__ ((__nothrow__ ));
extern int isgraph (int) __attribute__ ((__nothrow__ ));
extern int isprint (int) __attribute__ ((__nothrow__ ));
extern int ispunct (int) __attribute__ ((__nothrow__ ));
extern int isspace (int) __attribute__ ((__nothrow__ ));
extern int isupper (int) __attribute__ ((__nothrow__ ));
extern int isxdigit (int) __attribute__ ((__nothrow__ ));



extern int tolower (int __c) __attribute__ ((__nothrow__ ));


extern int toupper (int __c) __attribute__ ((__nothrow__ ));
# 137 "/usr/include/ctype.h" 3 4
extern int isblank (int) __attribute__ ((__nothrow__ ));
# 151 "/usr/include/ctype.h" 3 4
extern int isascii (int __c) __attribute__ ((__nothrow__ ));



extern int toascii (int __c) __attribute__ ((__nothrow__ ));



extern int _toupper (int) __attribute__ ((__nothrow__ ));
extern int _tolower (int) __attribute__ ((__nothrow__ ));
# 215 "/usr/include/ctype.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) tolower (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_tolower_loc ())[__c] : __c;
}

extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) toupper (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_toupper_loc ())[__c] : __c;
}
# 272 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__ ));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__ ));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__ ));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ ));
# 84 "./base/mkromfs.c" 2
# 1 "/usr/include/memory.h" 1 3 4
# 85 "./base/mkromfs.c" 2

# 1 "/usr/include/zlib.h" 1 3 4
# 34 "/usr/include/zlib.h" 3 4
# 1 "/usr/include/zconf.h" 1 3 4
# 365 "/usr/include/zconf.h" 3 4
typedef unsigned char Byte;

typedef unsigned int uInt;
typedef unsigned long uLong;





   typedef Byte Bytef;

typedef char charf;
typedef int intf;
typedef uInt uIntf;
typedef uLong uLongf;


   typedef void const *voidpc;
   typedef void *voidpf;
   typedef void *voidp;
# 409 "/usr/include/zconf.h" 3 4
   typedef unsigned z_crc_t;
# 447 "/usr/include/zconf.h" 3 4
# 1 "/usr/include/unistd.h" 1 3 4
# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 22 "/usr/include/bits/environments.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;
# 274 "/usr/include/unistd.h" 3 4
typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 304 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
# 337 "/usr/include/unistd.h" 3 4
extern __off64_t lseek (int __fd, __off64_t __offset, int __whence) __asm__ ("" "lseek64") __attribute__ ((__nothrow__ ));







extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__ ));






extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 388 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pread64") ;


extern ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pwrite64") ;
# 404 "/usr/include/unistd.h" 3 4
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;


extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) ;







extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ ));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ ));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ )) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ )) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ )) ;
# 525 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));
# 543 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 598 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ )) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));






# 1 "/usr/include/bits/confname.h" 1 3 4
# 25 "/usr/include/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ ));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ ));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ ));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ ));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ ));




extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ ));
# 646 "/usr/include/unistd.h" 3 4
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ ));
# 672 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ ));
# 689 "/usr/include/unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__ ));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ ));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ ));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ ));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ )) ;
# 722 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
# 778 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ ));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ ));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ ));





extern int ttyslot (void) __attribute__ ((__nothrow__ ));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ ));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ ));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 893 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 58 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 72 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 151 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ ));
# 894 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ )) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ ));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ ));



extern char *getusershell (void) __attribute__ ((__nothrow__ ));
extern void endusershell (void) __attribute__ ((__nothrow__ ));
extern void setusershell (void) __attribute__ ((__nothrow__ ));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ )) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 991 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ ));





extern int getpagesize (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ ));
# 1019 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off64_t __length) __asm__ ("" "truncate64") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;







extern int truncate64 (const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1041 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off64_t __length) __asm__ ("" "ftruncate64") __attribute__ ((__nothrow__ )) ;






extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__ )) ;
# 1059 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ )) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ ));
# 1080 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
# 1106 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off64_t __len) __asm__ ("" "lockf64") ;






extern int lockf64 (int __fd, int __cmd, __off64_t __len) ;
# 1134 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 448 "/usr/include/zconf.h" 2 3 4
# 35 "/usr/include/zlib.h" 2 3 4
# 80 "/usr/include/zlib.h" 3 4
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);

struct internal_state;

typedef struct z_stream_s {
            Bytef *next_in;
    uInt avail_in;
    uLong total_in;

    Bytef *next_out;
    uInt avail_out;
    uLong total_out;

            char *msg;
    struct internal_state *state;

    alloc_func zalloc;
    free_func zfree;
    voidpf opaque;

    int data_type;
    uLong adler;
    uLong reserved;
} z_stream;

typedef z_stream *z_streamp;





typedef struct gz_header_s {
    int text;
    uLong time;
    int xflags;
    int os;
    Bytef *extra;
    uInt extra_len;
    uInt extra_max;
    Bytef *name;
    uInt name_max;
    Bytef *comment;
    uInt comm_max;
    int hcrc;
    int done;

} gz_header;

typedef gz_header *gz_headerp;
# 216 "/usr/include/zlib.h" 3 4
extern const char * zlibVersion (void);
# 246 "/usr/include/zlib.h" 3 4
extern int deflate (z_streamp strm, int flush);
# 353 "/usr/include/zlib.h" 3 4
extern int deflateEnd (z_streamp strm);
# 392 "/usr/include/zlib.h" 3 4
extern int inflate (z_streamp strm, int flush);
# 508 "/usr/include/zlib.h" 3 4
extern int inflateEnd (z_streamp strm);
# 587 "/usr/include/zlib.h" 3 4
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
# 631 "/usr/include/zlib.h" 3 4
extern int deflateCopy (z_streamp dest, z_streamp source);
# 649 "/usr/include/zlib.h" 3 4
extern int deflateReset (z_streamp strm);
# 660 "/usr/include/zlib.h" 3 4
extern int deflateParams (z_streamp strm, int level, int strategy);
# 681 "/usr/include/zlib.h" 3 4
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain);
# 698 "/usr/include/zlib.h" 3 4
extern uLong deflateBound (z_streamp strm, uLong sourceLen);
# 713 "/usr/include/zlib.h" 3 4
extern int deflatePending (z_streamp strm, unsigned *pending, int *bits);
# 728 "/usr/include/zlib.h" 3 4
extern int deflatePrime (z_streamp strm, int bits, int value);
# 745 "/usr/include/zlib.h" 3 4
extern int deflateSetHeader (z_streamp strm, gz_headerp head);
# 819 "/usr/include/zlib.h" 3 4
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
# 842 "/usr/include/zlib.h" 3 4
extern int inflateSync (z_streamp strm);
# 861 "/usr/include/zlib.h" 3 4
extern int inflateCopy (z_streamp dest, z_streamp source);
# 877 "/usr/include/zlib.h" 3 4
extern int inflateReset (z_streamp strm);
# 887 "/usr/include/zlib.h" 3 4
extern int inflateReset2 (z_streamp strm, int windowBits);
# 899 "/usr/include/zlib.h" 3 4
extern int inflatePrime (z_streamp strm, int bits, int value);
# 920 "/usr/include/zlib.h" 3 4
extern long inflateMark (z_streamp strm);
# 948 "/usr/include/zlib.h" 3 4
extern int inflateGetHeader (z_streamp strm, gz_headerp head);
# 1010 "/usr/include/zlib.h" 3 4
typedef unsigned (*in_func) (void *, unsigned char * *);
typedef int (*out_func) (void *, unsigned char *, unsigned);

extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc);
# 1082 "/usr/include/zlib.h" 3 4
extern int inflateBackEnd (z_streamp strm);







extern uLong zlibCompileFlags (void);
# 1143 "/usr/include/zlib.h" 3 4
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
# 1157 "/usr/include/zlib.h" 3 4
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level);
# 1173 "/usr/include/zlib.h" 3 4
extern uLong compressBound (uLong sourceLen);






extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
# 1207 "/usr/include/zlib.h" 3 4
typedef struct gzFile_s *gzFile;
# 1247 "/usr/include/zlib.h" 3 4
extern gzFile gzdopen (int fd, const char *mode);
# 1270 "/usr/include/zlib.h" 3 4
extern int gzbuffer (gzFile file, unsigned size);
# 1287 "/usr/include/zlib.h" 3 4
extern int gzsetparams (gzFile file, int level, int strategy);
# 1296 "/usr/include/zlib.h" 3 4
extern int gzread (gzFile file, voidp buf, unsigned len);
# 1324 "/usr/include/zlib.h" 3 4
extern int gzwrite (gzFile file, voidpc buf, unsigned len);







extern int gzprintf (gzFile file, const char *format, ...);
# 1347 "/usr/include/zlib.h" 3 4
extern int gzputs (gzFile file, const char *s);







extern char * gzgets (gzFile file, char *buf, int len);
# 1368 "/usr/include/zlib.h" 3 4
extern int gzputc (gzFile file, int c);





extern int gzgetc (gzFile file);
# 1383 "/usr/include/zlib.h" 3 4
extern int gzungetc (int c, gzFile file);
# 1395 "/usr/include/zlib.h" 3 4
extern int gzflush (gzFile file, int flush);
# 1430 "/usr/include/zlib.h" 3 4
extern int gzrewind (gzFile file);
# 1458 "/usr/include/zlib.h" 3 4
extern int gzeof (gzFile file);
# 1473 "/usr/include/zlib.h" 3 4
extern int gzdirect (gzFile file);
# 1494 "/usr/include/zlib.h" 3 4
extern int gzclose (gzFile file);
# 1507 "/usr/include/zlib.h" 3 4
extern int gzclose_r (gzFile file);
extern int gzclose_w (gzFile file);
# 1519 "/usr/include/zlib.h" 3 4
extern const char * gzerror (gzFile file, int *errnum);
# 1535 "/usr/include/zlib.h" 3 4
extern void gzclearerr (gzFile file);
# 1552 "/usr/include/zlib.h" 3 4
extern uLong adler32 (uLong adler, const Bytef *buf, uInt len);
# 1583 "/usr/include/zlib.h" 3 4
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
# 1616 "/usr/include/zlib.h" 3 4
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size);

extern int inflateInit_ (z_streamp strm, const char *version, int stream_size);

extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size);



extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size);

extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size);
# 1653 "/usr/include/zlib.h" 3 4
struct gzFile_s {
    unsigned have;
    unsigned char *next;
    off64_t pos;
};
extern int gzgetc_ (gzFile file);
# 1675 "/usr/include/zlib.h" 3 4
   extern gzFile gzopen64 (const char *, const char *);
   extern off64_t gzseek64 (gzFile, off64_t, int);
   extern off64_t gztell64 (gzFile);
   extern off64_t gzoffset64 (gzFile);
   extern uLong adler32_combine64 (uLong, uLong, off64_t);
   extern uLong crc32_combine64 (uLong, uLong, off64_t);
# 1725 "/usr/include/zlib.h" 3 4
    struct internal_state {int dummy;};



extern const char * zError (int);
extern int inflateSyncPoint (z_streamp);
extern const z_crc_t * get_crc_table (void);
extern int inflateUndermine (z_streamp, int);
extern int inflateResetKeep (z_streamp);
extern int deflateResetKeep (z_streamp);
# 87 "./base/mkromfs.c" 2
# 106 "./base/mkromfs.c"
typedef struct romfs_inode_s {
    unsigned long disc_length;
    unsigned long length;
    char *name;
    unsigned long *data_lengths;

    unsigned char **data;
} romfs_inode;

typedef struct Xlist_element_s {
        void *next;
        char *path;
    } Xlist_element;
# 127 "./base/mkromfs.c"
static const char msg_truncated[] = "\n*** Previous line has been truncated.\n";

int outprintf(const gs_memory_t *mem, const char *fmt, ...)
{
    int count;
    char buf[1024];
    va_list args;

    __builtin_va_start(args, fmt);
    count = vsnprintf(buf, sizeof(buf), fmt, args);
    if (count >= sizeof(buf) || count < 0) {
        fwrite(buf, 1, sizeof(buf) - 1, stdout);
        fwrite(msg_truncated, 1, sizeof(msg_truncated) - 1, stdout);
    } else {
        fwrite(buf, 1, count, stdout);
    }
    __builtin_va_end(args);
    return count;
}


int errprintf_nomem(const char *fmt, ...)
{
    int count;
    char buf[1024];
    va_list args;

    __builtin_va_start(args, fmt);
    count = vsnprintf(buf, sizeof(buf), fmt, args);
    if (count >= sizeof(buf) || count < 0) {
        fwrite(buf, 1, sizeof(buf) - 1, stderr);
        fwrite(msg_truncated, 1, sizeof(msg_truncated) - 1, stderr);
    } else {
        fwrite(buf, 1, count, stderr);
    }
    __builtin_va_end(args);
    return count;
}


int errprintf(const gs_memory_t *mem, const char *fmt, ...)
{
    int count;
    char buf[1024];
    va_list args;

    __builtin_va_start(args, fmt);
    count = vsnprintf(buf, sizeof(buf), fmt, args);
    if (count >= sizeof(buf) || count < 0) {
        fwrite(buf, 1, sizeof(buf) - 1, stderr);
        fwrite(msg_truncated, 1, sizeof(msg_truncated) - 1, stderr);
    } else {
        fwrite(buf, 1, count, stderr);
    }
    __builtin_va_end(args);
    return count;
}




void
lprintf_file_and_line(const char *file, int line)
{
    errprintf_nomem("%s(%d): ", file, line);
}
# 201 "./base/mkromfs.c"
void
eprintf_program_ident(const char *program_name,
                      long revision_number)
{
    if (program_name) {
        errprintf_nomem((revision_number ? "%s " : "%s"), program_name);
        if (revision_number) {
            int fpart = revision_number % 100;

            errprintf_nomem("%d.%02d", (int)(revision_number / 100), fpart);
        }
        errprintf_nomem(": ");
    }
}
void
lprintf_file_only(FILE * f, const char *file)
{
    errprintf_nomem("%s(?): ", file);
}


void
emprintf_program_ident(const gs_memory_t *mem,
                       const char *program_name,
                       long revision_number)
{
    if (program_name) {
        errprintf(mem, (revision_number ? "%s " : "%s"), program_name);
        if (revision_number) {
            int fpart = revision_number % 100;

            errprintf(mem, "%d.%02d", (int)(revision_number / 100), fpart);
        }
        errprintf(mem, ": ");
    }
}





byte *minimal_alloc_bytes(gs_memory_t * mem, uint size, client_name_t cname);
byte *minimal_alloc_byte_array(gs_memory_t * mem, uint num_elements,
                             uint elt_size, client_name_t cname);
void *minimal_alloc_struct(gs_memory_t * mem, gs_memory_type_ptr_t pstype,
               client_name_t cname);
void minimal_free_object(gs_memory_t * mem, void * data, client_name_t cname);
void minimal_free_string(gs_memory_t * mem, byte * data, uint nbytes, client_name_t cname);

byte *
minimal_alloc_bytes(gs_memory_t * mem, uint size, client_name_t cname)
{
    return malloc(size);
}

byte *
minimal_alloc_byte_array(gs_memory_t * mem, uint num_elements,
                             uint elt_size, client_name_t cname)
{
    return malloc(num_elements * elt_size);
}

void *
minimal_alloc_struct(gs_memory_t * mem, gs_memory_type_ptr_t pstype,
               client_name_t cname)
{
    return malloc(pstype->ssize);
}

void
minimal_free_object(gs_memory_t * mem, void * data, client_name_t cname)
{
    free(data);
    return;
}

void
minimal_free_string(gs_memory_t * mem, byte * data, uint nbytes, client_name_t cname)
{
    free(data);
    return;
}

void basic_enum_ptrs(void);
void basic_reloc_ptrs(void);

void basic_enum_ptrs() {
    printf("basic_enum_ptrs is only called by a GC. Abort.\n");
    exit(1);
}

void basic_reloc_ptrs() {
    printf("basic_reloc_ptrs is only called by a GC. Abort.\n");
    exit(1);
}

const gs_malloc_memory_t minimal_memory = {
    (gs_memory_t *)&minimal_memory,
    { minimal_alloc_bytes,
      ((void*)0),
      minimal_free_object,
      ((void*)0),
      ((void*)0),
      ((void*)0),
      ((void*)0),
      minimal_alloc_bytes,
      minimal_alloc_struct,
      minimal_alloc_struct,
      minimal_alloc_byte_array,
      minimal_alloc_byte_array,
      ((void*)0),
      ((void*)0),
      ((void*)0),
      ((void*)0),
      minimal_alloc_bytes,
      minimal_alloc_bytes,
      ((void*)0),
      minimal_free_string,
      ((void*)0),
      ((void*)0),
      ((void*)0)
    },
    ((void*)0),
    ((void*)0),
    ((void*)0),
    0,
    0,
    0,
    0
};

void put_uint32(FILE *out, const unsigned int q);
void put_bytes_padded(FILE *out, unsigned char *p, unsigned int len);
void inode_clear(romfs_inode* node);
void inode_write(FILE *out, romfs_inode *node, int compression, int inode_count, int*totlen);
void process_path(char *path, const char *os_prefix, const char *rom_prefix,
                  Xlist_element *Xlist_head, int compression,
                  int compaction, int *inode_count, int *totlen, FILE *out);
int process_initfile(char *initfile, char *gconfig_h, const char *os_prefix,
                     const char *rom_prefix,
                     int compression, int *inode_count, int *totlen, FILE *out);
FILE *prefix_open(const char *os_prefix, const char *inname);
void prefix_add(const char *prefix, const char *filename, char *prefixed_path);


void put_uint32(FILE *out, const unsigned int q)
{



    fprintf (out, "0x%02x%02x%02x%02x,", q & 0xff, (q>>8) & 0xff, (q>>16) & 0xff, (q>>24) & 0xff);

}


void put_bytes_padded(FILE *out, unsigned char *p, unsigned int len)
{
    int i, j=0;
    union {
        uint32_t w;
        struct {
            unsigned char c1;
            unsigned char c2;
            unsigned char c3;
            unsigned char c4;
        } c;
    } w2c;

    for (i=0; i<(len/4); i++) {
        j = i*4;
        w2c.c.c1 = p[j++];
        w2c.c.c2 = p[j++];
        w2c.c.c3 = p[j++];
        w2c.c.c4 = p[j++];
        fprintf(out, "0x%08x,", w2c.w);
        if ((i & 7) == 7)
            fprintf(out, "\n\t");
    }
    w2c.w = 0;
    switch (len - j) {
      case 3:
        w2c.c.c3 = p[j+2];
      case 2:
        w2c.c.c2 = p[j+1];
      case 1:
        w2c.c.c1 = p[j];
        fprintf(out, "0x%08x,", w2c.w);
      default: ;
    }
    fprintf(out, "\n\t");
}


void inode_clear(romfs_inode* node)
{
    int i, blocks;

    if (node) {
        blocks = (node->disc_length+16384 -1)/16384;
        if (node->data) {
            for (i = 0; i < blocks; i++) {
                if (node->data[i]) free(node->data[i]);
            }
            free(node->data);
        }
        if (node->data_lengths) free(node->data_lengths);
    }
}


void
inode_write(FILE *out, romfs_inode *node, int compression, int inode_count, int *totlen)
{
    int i, offset;
    int blocks = (node->length+16384 -1)/16384;
    int namelen = strlen(node->name) + 1;
    int clen = 0;


    fprintf(out,"    static uint32_t node_%d[] = {\n\t", inode_count);

    put_uint32(out, node->length | (compression ? 0x80000000 : 0));
    fprintf(out, "\t/* compression_flag_bit + file length */\n\t");


    offset = 4 + (8*blocks) + ((namelen+3) & ~3);
    *totlen += offset;
    for (i = 0; i < blocks; i++) {
        put_uint32(out, node->data_lengths[i]);
        put_uint32(out, offset);
        offset += (node->data_lengths[i]+3) & ~3;
        fprintf(out, "\t/* data_block_length, offset to data_block */\n\t");
    }

    fprintf(out, "\t/* file name '%s' */\n\t", node->name);
    put_bytes_padded(out, (unsigned char *)node->name, namelen);


    for (i = 0; i < blocks; i++) {
        put_bytes_padded(out, node->data[i], node->data_lengths[i]);
        clen += node->data_lengths[i];
        *totlen += (node->data_lengths[i]+3) & ~3;
    }
    fprintf(out, "\t0 };\t/* end-of-node */\n");

    printf("node '%s' len=%ld", node->name, node->length);
    printf(" %ld blocks", blocks);
    if (compression) {
        printf(", compressed size=%ld", clen);
    }
    printf("\n");
}

void
prefix_add(const char *prefix, const char *filename, char *prefixed_path)
{
    prefixed_path[0] = 0;
    strcat(prefixed_path, prefix);
    strcat(prefixed_path, filename);
# 470 "./base/mkromfs.c"
}


typedef enum {
    PSC_BufferIn = 0,
    PSC_InComment,
    PSC_InString,
    PSC_InHexString,
    PSC_BufferOut,
    PSC_BufferCopy,
} psc_state;

typedef int (psc_getc)(void *);
typedef void (psc_ungetc)(int, void *);
typedef int (psc_feof)(void *);

typedef struct {
    psc_state state;
    int inpos;
    int inmax;
    int outpos;
    int outend;
    int outmax;
    int buffercopy;
    int wasascii;
    char *bufferin;
    char *bufferout;
    psc_getc *pgetc;
    psc_ungetc *unpgetc;
    psc_feof *peof;
    void *file;
    int names;
    int binary;
    int noescape;
    int escaping;
    int paren;
    int firstnum;
} pscompstate;

static void pscompact_start(pscompstate *psc, psc_getc *myfgetc, psc_ungetc *myungetc, psc_feof *myfeof, void *myfile, int names, int binary, int firstnum)
{
    psc->state = PSC_BufferIn;
    psc->bufferin = malloc(80);
    psc->bufferout = malloc(80);
    if ((psc->bufferin == ((void*)0)) || (psc->bufferout == ((void*)0))) {
        fprintf(stderr, "Malloc failed in ps compaction\n");
        exit(1);
    }
    psc->inmax = 80;
    psc->outmax = 80;
    psc->inpos = 0;
    psc->wasascii = 0;
    psc->pgetc = myfgetc;
    psc->unpgetc = myungetc;
    psc->peof = myfeof;
    psc->file = myfile;
    psc->names = names;
    psc->binary = binary;
    psc->noescape = 0;
    psc->escaping = 0;
    psc->paren = 0;
    psc->firstnum = firstnum;
}

static void pscompact_end(pscompstate *psc)
{
    free(psc->bufferin);
    free(psc->bufferout);
}

static void pscompact_copy(pscompstate *psc, int c, int n)
{
    psc->bufferout[0] = c;
    psc->outend = 1;
    psc->outpos = 0;
    psc->buffercopy = n;
    if (n == 0)
        psc->state = PSC_BufferOut;
    else
        psc->state = PSC_BufferCopy;
}

static void pscompact_copy2(pscompstate *psc, int c1, int c2, int n)
{
    psc->bufferout[0] = c1;
    psc->bufferout[1] = c2;
    psc->outend = 2;
    psc->outpos = 0;
    psc->buffercopy = n;
    if (n == 0)
        psc->state = PSC_BufferOut;
    else
        psc->state = PSC_BufferCopy;
}

static void pscompact_copy3(pscompstate *psc, int c1, int c2, int c3, int n)
{
    psc->bufferout[0] = c1;
    psc->bufferout[1] = c2;
    psc->bufferout[2] = c3;
    psc->outend = 3;
    psc->outpos = 0;
    psc->buffercopy = n;
    if (n == 0)
        psc->state = PSC_BufferOut;
    else
        psc->state = PSC_BufferCopy;
}

static void pscompact_buffer(pscompstate *psc, int c)
{
    if (psc->inpos == psc->inmax) {
        psc->inmax *= 2;
        psc->bufferin = realloc(psc->bufferin, psc->inmax * 2);
        if (psc->bufferin == ((void*)0)) {
            fprintf(stderr, "Realloc failed in pscompaction\n");
            exit(1);
        }
    }
    psc->bufferin[psc->inpos++] = c;
}

static void pscompact_bufferatstart(pscompstate *psc, int c)
{
    if (psc->inpos == psc->inmax) {
        psc->inmax *= 2;
        psc->bufferin = realloc(psc->bufferin, psc->inmax * 2);
        if (psc->bufferin == ((void*)0)) {
            fprintf(stderr, "Realloc failed in pscompaction\n");
            exit(1);
        }
    }
    memmove(psc->bufferin+1, psc->bufferin, psc->inpos);
    psc->inpos++;
    psc->bufferin[0] = c;
}

static void pscompact_copyinout(pscompstate *psc)
{
    if (psc->outmax < psc->inpos) {
        psc->outmax = psc->inmax;
        psc->bufferout = realloc(psc->bufferout, psc->outmax);
        if (psc->bufferout == ((void*)0)) {
            fprintf(stderr, "Realloc failed in pscompaction\n");
            exit(1);
        }
    }
    memcpy(psc->bufferout, psc->bufferin, psc->inpos);
    psc->outpos = 0;
    psc->outend = psc->inpos;
    psc->state = PSC_BufferOut;
    psc->inpos = 0;
}

static void pscompact_copyinout_bin(pscompstate *psc)
{
    pscompact_copyinout(psc);
    psc->noescape = 1;
}

static void pscompact_hex2ascii(pscompstate *psc)
{
    int i = 0;
    int o = 0;

    while (i < psc->inpos) {
        int v = 0;

        if ((psc->bufferin[i] >= '0') && (psc->bufferin[i] <= '9')) {
            v = (psc->bufferin[i] - '0')<<4;
        } else if ((psc->bufferin[i] >= 'a') && (psc->bufferin[i] <= 'f')) {
            v = (psc->bufferin[i] - 'a' + 10)<<4;
        } else if ((psc->bufferin[i] >= 'A') && (psc->bufferin[i] <= 'F')) {
            v = (psc->bufferin[i] - 'A' + 10)<<4;
        } else {
            fprintf(stderr, "Malformed hexstring in pscompaction!\n");
            exit(1);
        }
        i++;

        if (i == psc->inpos) {

        } else if ((psc->bufferin[i] >= '0') && (psc->bufferin[i] <= '9')) {
            v += psc->bufferin[i] - '0';
        } else if ((psc->bufferin[i] >= 'a') && (psc->bufferin[i] <= 'f')) {
            v += psc->bufferin[i] - 'a' + 10;
        } else if ((psc->bufferin[i] >= 'A') && (psc->bufferin[i] <= 'F')) {
            v += psc->bufferin[i] - 'A' + 10;
        } else {
            fprintf(stderr, "Malformed hexstring in pscompaction!\n");
            exit(1);
        }
        i++;
        psc->bufferin[o++] = v;
    }
    psc->inpos = o;
}

static const char *pscompact_names[] =
{
  "abs",
  "add",
  "aload",
  "anchorsearch",
  "and",
  "arc",
  "arcn",
  "arct",
  "arcto",
  "array",
  "ashow",
  "astore",
  "awidthshow",
  "begin",
  "bind",
  "bitshift",
  "ceiling",
  "charpath",
  "clear",
  "cleartomark",
  "clip",
  "clippath",
  "closepath",
  "concat",
  "concatmatrix",
  "copy",
  "count",
  "counttomark",
  "currentcmykcolor",
  "currentdash",
  "currentdict",
  "currentfile",
  "currentfont",
  "currentgray",
  "currentgstate",
  "currenthsbcolor",
  "currentlinecap",
  "currentlinejoin",
  "currentlinewidth",
  "currentmatrix",
  "currentpoint",
  "currentrgbcolor",
  "currentshared",
  "curveto",
  "cvi",
  "cvlit",
  "cvn",
  "cvr",
  "cvrs",
  "cvs",
  "cvx",
  "def",
  "defineusername",
  "dict",
  "div",
  "dtransform",
  "dup",
  "end",
  "eoclip",
  "eofill",
  "eoviewclip",
  "eq",
  "exch",
  "exec",
  "exit",
  "file",
  "fill",
  "findfont",
  "flattenpath",
  "floor",
  "flush",
  "flushfile",
  "for",
  "forall",
  "ge",
  "get",
  "getinterval",
  "grestore",
  "gsave",
  "gstate",
  "gt",
  "identmatrix",
  "idiv",
  "idtransform",
  "if",
  "ifelse",
  "image",
  "imagemask",
  "index",
  "ineofill",
  "infill",
  "initviewclip",
  "inueofill",
  "inufill",
  "invertmatrix",
  "itransform",
  "known",
  "le",
  "length",
  "lineto",
  "load",
  "loop",
  "lt",
  "makefont",
  "matrix",
  "maxlength",
  "mod",
  "moveto",
  "mul",
  "ne",
  "neg",
  "newpath",
  "not",
  "null",
  "or",
  "pathbbox",
  "pathforall",
  "pop",
  "print",
  "printobject",
  "put",
  "putinterval",
  "rcurveto",
  "read",
  "readhexstring",
  "readline",
  "readstring",
  "rectclip",
  "rectfill",
  "rectstroke",
  "rectviewclip",
  "repeat",
  "restore",
  "rlineto",
  "rmoveto",
  "roll",
  "rotate",
  "round",
  "save",
  "scale",
  "scalefont",
  "search",
  "selectfont",
  "setbbox",
  "setcachedevice",
  "setcachedevice2",
  "setcharwidth",
  "setcmykcolor",
  "setdash",
  "setfont",
  "setgray",
  "setgstate",
  "sethsbcolor",
  "setlinecap",
  "setlinejoin",
  "setlinewidth",
  "setmatrix",
  "setrgbcolor",
  "setshared",
  "shareddict",
  "show",
  "showpage",
  "stop",
  "stopped",
  "store",
  "string",
  "stringwidth",
  "stroke",
  "strokepath",
  "sub",
  "systemdict",
  "token",
  "transform",
  "translate",
  "truncate",
  "type",
  "uappend",
  "ucache",
  "ueofill",
  "ufill",
  "undef",
  "upath",
  "userdict",
  "ustroke",
  "viewclip",
  "viewclippath",
  "where",
  "widthshow",
  "write",
  "writehexstring",
  "writeobject",
  "writestring",
  "wtranslation",
  "xor",
  "xshow",
  "xyshow",
  "yshow",
  "FontDirectory",
  "SharedFontDirectory",
  "Courier%",
  "Courier-Bold",
  "Courier-BoldOblique",
  "Courier-Oblique",
  "Helvetica",
  "Helvetica-Bold",
  "Helvetica-BoldOblique",
  "Helvetica-Oblique",
  "Symbol",
  "Times-Bold",
  "Times-BoldItalic",
  "Times-Italic",
  "Times-Roman",
  "execuserobject",
  "currentcolor",
  "currentcolorspace",
  "currentglobal",
  "execform",
  "filter",
  "findresource",
  "globaldict",
  "makepattern",
  "setcolor",
  "setcolorspace",
  "setglobal",
  "setpagedevice",
  "setpattern"
};

static int pscompact_isname(pscompstate *psc, int *i)
{
    int off = 0;
    int n;

    if (psc->bufferin[0] == '/')
        off = 1;
    for (n = 0; n < sizeof(pscompact_names)/sizeof(char *); n++) {
        if ((__extension__ (__builtin_constant_p (psc->inpos-off) && ((__builtin_constant_p (pscompact_names[n]) && strlen (pscompact_names[n]) < ((size_t) (psc->inpos-off))) || (__builtin_constant_p (&psc->bufferin[off]) && strlen (&psc->bufferin[off]) < ((size_t) (psc->inpos-off)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pscompact_names[n]) && __builtin_constant_p (&psc->bufferin[off]) && (__s1_len = strlen (pscompact_names[n]), __s2_len = strlen (&psc->bufferin[off]), (!((size_t)(const void *)((pscompact_names[n]) + 1) - (size_t)(const void *)(pscompact_names[n]) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((&psc->bufferin[off]) + 1) - (size_t)(const void *)(&psc->bufferin[off]) == 1) || __s2_len >= 4)) ? __builtin_strcmp (pscompact_names[n], &psc->bufferin[off]) : (__builtin_constant_p (pscompact_names[n]) && ((size_t)(const void *)((pscompact_names[n]) + 1) - (size_t)(const void *)(pscompact_names[n]) == 1) && (__s1_len = strlen (pscompact_names[n]), __s1_len < 4) ? (__builtin_constant_p (&psc->bufferin[off]) && ((size_t)(const void *)((&psc->bufferin[off]) + 1) - (size_t)(const void *)(&psc->bufferin[off]) == 1) ? __builtin_strcmp (pscompact_names[n], &psc->bufferin[off]) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (&psc->bufferin[off]); register int __result = (((const unsigned char *) (const char *) (pscompact_names[n]))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pscompact_names[n]))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pscompact_names[n]))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pscompact_names[n]))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (&psc->bufferin[off]) && ((size_t)(const void *)((&psc->bufferin[off]) + 1) - (size_t)(const void *)(&psc->bufferin[off]) == 1) && (__s2_len = strlen (&psc->bufferin[off]), __s2_len < 4) ? (__builtin_constant_p (pscompact_names[n]) && ((size_t)(const void *)((pscompact_names[n]) + 1) - (size_t)(const void *)(pscompact_names[n]) == 1) ? __builtin_strcmp (pscompact_names[n], &psc->bufferin[off]) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pscompact_names[n]); register int __result = __s1[0] - ((const unsigned char *) (const char *) (&psc->bufferin[off]))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (&psc->bufferin[off]))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (&psc->bufferin[off]))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (&psc->bufferin[off]))[3]); } } __result; }))) : __builtin_strcmp (pscompact_names[n], &psc->bufferin[off])))); }) : strncmp (pscompact_names[n], &psc->bufferin[off], psc->inpos-off))) == 0) {

            if (off)
                *i = -1-n;
            else
                *i = n;
            return 1;
        }
    }
    return 0;
}

static int pscompact_isint(pscompstate *psc, int *i)
{
    int pos = 0;

    if ((psc->bufferin[0] == '+') || (psc->bufferin[0] == '-')) {
        pos = 1;
    }
    if (pos >= psc->inpos)
        return 0;
    if ((psc->inpos > pos+3) &&
        ((__extension__ (__builtin_constant_p (3) && ((__builtin_constant_p (&psc->bufferin[pos]) && strlen (&psc->bufferin[pos]) < ((size_t) (3))) || (__builtin_constant_p ("16#") && strlen ("16#") < ((size_t) (3)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (&psc->bufferin[pos]) && __builtin_constant_p ("16#") && (__s1_len = strlen (&psc->bufferin[pos]), __s2_len = strlen ("16#"), (!((size_t)(const void *)((&psc->bufferin[pos]) + 1) - (size_t)(const void *)(&psc->bufferin[pos]) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("16#") + 1) - (size_t)(const void *)("16#") == 1) || __s2_len >= 4)) ? __builtin_strcmp (&psc->bufferin[pos], "16#") : (__builtin_constant_p (&psc->bufferin[pos]) && ((size_t)(const void *)((&psc->bufferin[pos]) + 1) - (size_t)(const void *)(&psc->bufferin[pos]) == 1) && (__s1_len = strlen (&psc->bufferin[pos]), __s1_len < 4) ? (__builtin_constant_p ("16#") && ((size_t)(const void *)(("16#") + 1) - (size_t)(const void *)("16#") == 1) ? __builtin_strcmp (&psc->bufferin[pos], "16#") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("16#"); register int __result = (((const unsigned char *) (const char *) (&psc->bufferin[pos]))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (&psc->bufferin[pos]))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (&psc->bufferin[pos]))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (&psc->bufferin[pos]))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("16#") && ((size_t)(const void *)(("16#") + 1) - (size_t)(const void *)("16#") == 1) && (__s2_len = strlen ("16#"), __s2_len < 4) ? (__builtin_constant_p (&psc->bufferin[pos]) && ((size_t)(const void *)((&psc->bufferin[pos]) + 1) - (size_t)(const void *)(&psc->bufferin[pos]) == 1) ? __builtin_strcmp (&psc->bufferin[pos], "16#") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (&psc->bufferin[pos]); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("16#"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("16#"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("16#"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("16#"))[3]); } } __result; }))) : __builtin_strcmp (&psc->bufferin[pos], "16#")))); }) : strncmp (&psc->bufferin[pos], "16#", 3))) == 0)) {

        int v = 0;
        pos += 3;
        while (pos < psc->inpos) {
            if ((psc->bufferin[pos] >= '0') && (psc->bufferin[pos] <= '9'))
                v = v*16 + psc->bufferin[pos] - '0';
            else if ((psc->bufferin[pos] >= 'a') && (psc->bufferin[pos] <= 'f'))
                v = v*16 + psc->bufferin[pos] - 'a' + 10;
            else if ((psc->bufferin[pos] >= 'A') && (psc->bufferin[pos] <= 'F'))
                v = v*16 + psc->bufferin[pos] - 'A' + 10;
            else
                return 0;
            pos++;
        }
        if (psc->bufferin[0] == '-')
            v = -v;
        *i = v;
        return 1;
    }

    do {
        if ((psc->bufferin[pos] < '0') || (psc->bufferin[pos] > '9'))
            return 0;
        pos++;
    } while (pos < psc->inpos);

    if (psc->inpos == psc->inmax) {
        psc->inmax *= 2;
        psc->bufferin = realloc(psc->bufferin, psc->inmax);
    }
    psc->bufferin[psc->inpos] = 0;
    *i = atoi(psc->bufferin);
    return 1;
}

static int pscompact_isfloat(pscompstate *psc, float *f)
{
    int pos = 0;
    int point = 0;

    if ((psc->bufferin[0] == '+') || (psc->bufferin[0] == '-')) {
        pos = 1;
    }
    if (pos >= psc->inpos)
        return 0;
    do {
        if ((psc->bufferin[pos] >= '0') && (psc->bufferin[pos] <= '9')) {

        } else if ((psc->bufferin[pos] == '.') && (point == 0)) {

            point = 1;
        } else {

            return 0;
        }
        pos++;
    } while (pos < psc->inpos);

    if (psc->inpos == psc->inmax) {
        psc->inmax *= 2;
        psc->bufferin = realloc(psc->bufferin, psc->inmax);
    }
    psc->bufferin[psc->inpos] = 0;
    *f = atof(psc->bufferin);
    return 1;
}

static unsigned long pscompact_getcompactedblock(pscompstate *psc, unsigned char *ubuf, unsigned long ulen)
{
    unsigned char *out;
    int c;

    if (ulen == 0)
        return 0;
    out = ubuf;
    do {
        switch (psc->state) {
            case PSC_BufferIn:
                c = psc->pgetc(psc->file);
                if ((c <= 32) || (c == (-1))) {

                    if (psc->inpos == 0) {

                        break;
                    }
                } else if (c == '(') {

                    if (psc->inpos == 0) {

                        psc->state = PSC_InString;
                        psc->paren = 1;
                        break;
                    }
                } else if (c == '>') {

                    if (psc->inpos == 0) {

                        *out++ = c;
                        break;
                    }
                } else if ((c == '{') || (c == '}') ||
                           (c == '[') || (c == ']')) {

                    if (psc->inpos == 0) {

                        *out++ = c;
                        psc->wasascii = 0;
                        break;
                    }
                } else if ((c >= 128) && (c <= 131)) {
                    fprintf(stderr, "Can't compact files with binary object sequences in!");
                    exit(1);
                } else if ((c == 132) || (c == 133) || (c == 138) || (c == 139) || (c == 140)) {

                    if (psc->inpos == 0) {
                        pscompact_copy(psc, c, 4);
                        break;
                    }
                } else if ((c == 134) || (c == 135)) {

                    if (psc->inpos == 0) {
                        pscompact_copy(psc, c, 2);
                        break;
                    }
                } else if ((c == 136) || (c == 141) || (c == 145) ||
                           (c == 146) || (c == 147) || (c == 148)) {

                    if (psc->inpos == 0) {
                        pscompact_copy(psc, c, 1);
                        break;
                    }
                } else if (c == 137) {

                    if (psc->inpos == 0) {
                        int r = psc->pgetc(psc->file);
                        if (r & 32) {
                            pscompact_copy2(psc, c, r, 2);
                        } else {
                            pscompact_copy2(psc, c, r, 4);
                        }
                        break;
                    }
                } else if (c == 142) {

                    if (psc->inpos == 0) {
                        int n = psc->pgetc(psc->file);
                        pscompact_copy2(psc, c, n, n);
                        break;
                    }
                } else if (c == 143) {

                    if (psc->inpos == 0) {
                        int n1 = psc->pgetc(psc->file);
                        int n2 = psc->pgetc(psc->file);
                        pscompact_copy3(psc, c, n1, n2, (n1<<8) + n2);
                        break;
                    }
                } else if (c == 144) {

                    if (psc->inpos == 0) {
                        int n1 = psc->pgetc(psc->file);
                        int n2 = psc->pgetc(psc->file);
                        pscompact_copy3(psc, c, n1, n2, n1 + (n2<<8));
                        break;
                    }
                } else if ((c >= 149) && (c <= 159)) {
                    fprintf(stderr, "Can't compact files with binary postscript byte %d in!", c);
                    exit(1);
                } else if (c == '%') {
                    if (psc->inpos == 0) {
                        psc->state = PSC_InComment;
                        break;
                    }
                } else if (c == '<') {
                    if (psc->inpos == 0) {
                        psc->state = PSC_InHexString;
                        break;
                    }
                } else if ((c == '/') &&
                           (psc->inpos > 0) &&
                           (psc->bufferin[psc->inpos-1] != '/')) {


                } else {

                    pscompact_buffer(psc, c);
                    break;
                }


                if (c > 32) {

                    psc->unpgetc(c, psc->file);
                }
                if (psc->binary) {
                    int i;
                    float f;

                    if (pscompact_isint(psc, &i)) {
                        if (psc->firstnum) {

                            psc->firstnum = 0;
                        } else if ((i >= -128) && (i <= 127)) {

                            psc->bufferout[0] = 136;
                            psc->bufferout[1] = i & 255;
                            psc->inpos = 0;
                            psc->outend = 2;
                            psc->wasascii = 0;
                            psc->noescape = 1;
                            psc->state = PSC_BufferOut;
                            break;
                        } else if ((i >= -0x8000) && (i <= 0x7FFF)) {

                            psc->bufferout[0] = 135;
                            psc->bufferout[1] = i & 255;
                            psc->bufferout[2] = (i>>8) & 255;
                            psc->inpos = 0;
                            psc->outpos = 0;
                            psc->outend = 3;
                            psc->wasascii = 0;
                            psc->noescape = 1;
                            psc->state = PSC_BufferOut;
                            break;
                        } else {

                            psc->bufferout[0] = 133;
                            psc->bufferout[1] = i & 255;
                            psc->bufferout[2] = (i>>8) & 255;
                            psc->bufferout[3] = (i>>16) & 255;
                            psc->bufferout[4] = (i>>24) & 255;
                            psc->inpos = 0;
                            psc->outpos = 0;
                            psc->outend = 5;
                            psc->wasascii = 0;
                            psc->noescape = 1;
                            psc->state = PSC_BufferOut;
                            break;
                        }
                    } else if ((sizeof(float) == 4) && pscompact_isfloat(psc, &f)) {

                        union {
                            float f;
                            unsigned char c[4];
                        } fc;
                        fc.f = 1.0;
                        if ((fc.c[0] == 0) && (fc.c[1] == 0) &&
                            (fc.c[2] == 0x80) && (fc.c[3] == 0x3f)) {
                            fc.f = f;
                            psc->bufferout[0] = 139;
                            psc->bufferout[1] = (char)fc.c[0];
                            psc->bufferout[2] = (char)fc.c[1];
                            psc->bufferout[3] = (char)fc.c[2];
                            psc->bufferout[4] = (char)fc.c[3];
                            psc->inpos = 0;
                            psc->outpos = 0;
                            psc->outend = 5;
                            psc->wasascii = 0;
                            psc->noescape = 1;
                            psc->state = PSC_BufferOut;
                            break;
                        } else if ((fc.c[0] == 0x3f) && (fc.c[1] == 0x80) &&
                                   (fc.c[2] == 0) && (fc.c[3] == 0)) {
                            fc.f = f;
                            psc->bufferout[0] = 139;
                            psc->bufferout[1] = (char)fc.c[3];
                            psc->bufferout[2] = (char)fc.c[2];
                            psc->bufferout[3] = (char)fc.c[1];
                            psc->bufferout[4] = (char)fc.c[0];
                            psc->inpos = 0;
                            psc->outpos = 0;
                            psc->outend = 5;
                            psc->wasascii = 0;
                            psc->noescape = 1;
                            psc->state = PSC_BufferOut;
                            break;
                        }
                    }
                    if ((psc->inpos == 4) &&
                        ((__extension__ (__builtin_constant_p (4) && ((__builtin_constant_p (psc->bufferin) && strlen (psc->bufferin) < ((size_t) (4))) || (__builtin_constant_p ("true") && strlen ("true") < ((size_t) (4)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psc->bufferin) && __builtin_constant_p ("true") && (__s1_len = strlen (psc->bufferin), __s2_len = strlen ("true"), (!((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("true") + 1) - (size_t)(const void *)("true") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psc->bufferin, "true") : (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) && (__s1_len = strlen (psc->bufferin), __s1_len < 4) ? (__builtin_constant_p ("true") && ((size_t)(const void *)(("true") + 1) - (size_t)(const void *)("true") == 1) ? __builtin_strcmp (psc->bufferin, "true") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("true"); register int __result = (((const unsigned char *) (const char *) (psc->bufferin))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psc->bufferin))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("true") && ((size_t)(const void *)(("true") + 1) - (size_t)(const void *)("true") == 1) && (__s2_len = strlen ("true"), __s2_len < 4) ? (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) ? __builtin_strcmp (psc->bufferin, "true") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psc->bufferin); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("true"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("true"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("true"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("true"))[3]); } } __result; }))) : __builtin_strcmp (psc->bufferin, "true")))); }) : strncmp (psc->bufferin, "true", 4))) == 0)) {

                        psc->bufferout[0] = 141;
                        psc->bufferout[1] = 1;
                        psc->inpos = 0;
                        psc->outpos = 0;
                        psc->outend = 2;
                        psc->wasascii = 0;
                        psc->noescape = 1;
                        psc->state = PSC_BufferOut;
                        break;
                    }
                    if ((psc->inpos == 5) &&
                        ((__extension__ (__builtin_constant_p (5) && ((__builtin_constant_p (psc->bufferin) && strlen (psc->bufferin) < ((size_t) (5))) || (__builtin_constant_p ("false") && strlen ("false") < ((size_t) (5)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psc->bufferin) && __builtin_constant_p ("false") && (__s1_len = strlen (psc->bufferin), __s2_len = strlen ("false"), (!((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("false") + 1) - (size_t)(const void *)("false") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psc->bufferin, "false") : (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) && (__s1_len = strlen (psc->bufferin), __s1_len < 4) ? (__builtin_constant_p ("false") && ((size_t)(const void *)(("false") + 1) - (size_t)(const void *)("false") == 1) ? __builtin_strcmp (psc->bufferin, "false") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("false"); register int __result = (((const unsigned char *) (const char *) (psc->bufferin))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psc->bufferin))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("false") && ((size_t)(const void *)(("false") + 1) - (size_t)(const void *)("false") == 1) && (__s2_len = strlen ("false"), __s2_len < 4) ? (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) ? __builtin_strcmp (psc->bufferin, "false") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psc->bufferin); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("false"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("false"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("false"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("false"))[3]); } } __result; }))) : __builtin_strcmp (psc->bufferin, "false")))); }) : strncmp (psc->bufferin, "false", 5))) == 0)) {

                        psc->bufferout[0] = 141;
                        psc->bufferout[1] = 0;
                        psc->inpos = 0;
                        psc->outpos = 0;
                        psc->outend = 2;
                        psc->wasascii = 0;
                        psc->noescape = 1;
                        psc->state = PSC_BufferOut;
                        break;
                    }
                    if (psc->binary && psc->names && pscompact_isname(psc, &i)) {

                        if (i >= 0) {

                            psc->bufferout[0] = 146;
                            psc->bufferout[1] = i;
                        } else {

                            psc->bufferout[0] = 145;
                            psc->bufferout[1] = 1-i;
                        }
                        psc->inpos = 0;
                        psc->outpos = 0;
                        psc->outend = 2;
                        psc->wasascii = 0;
                        psc->noescape = 1;
                        psc->state = PSC_BufferOut;
                        break;
                    }
                }
                if ((psc->wasascii) && (psc->bufferin[0]!='/'))
                    *out++ = 32;
                pscompact_copyinout(psc);
                psc->wasascii = 1;
                break;
            case PSC_BufferOut:
            {
                unsigned char c = psc->bufferout[psc->outpos++];
                if (psc->noescape) {
                } else if ((c == 10) && (psc->outpos < psc->outend)) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = 'n';
                        psc->escaping = 0;
                    }
                } else if (c == 9) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = 't';
                        psc->escaping = 0;
                    }
                } else if (c == 8) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = 'b';
                        psc->escaping = 0;
                    }
                } else if (c == 12) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = 'f';
                        psc->escaping = 0;
                    }
                } else if (c == 13) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = 'r';
                        psc->escaping = 0;
                    }
                } else if (c == '\\') {
                    if (!psc->escaping) {
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        psc->escaping = 0;
                    }
                } else if ((c == ')') && (psc->outpos < psc->outend)) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = ')';
                        psc->escaping = 0;
                    }
                } else if ((c == '(') && (psc->outpos > 1)) {
                    if (!psc->escaping) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else {
                        c = '(';
                        psc->escaping = 0;
                    }
                } else if (((c < 32) && (c != 10)) || (c >= 128)) {
                    if (psc->escaping == 0) {
                        c = '\\';
                        psc->outpos--;
                        psc->escaping = 1;
                    } else if (psc->escaping == 1) {
                        c = '0' + ((c >> 6)&3);
                        psc->outpos--;
                        psc->escaping = 2;
                    } else if (psc->escaping == 2) {
                        c = '0' + ((c >> 3)&7);
                        psc->outpos--;
                        psc->escaping = 3;
                    } else if (psc->escaping == 3) {
                        c = '0' + (c&7);
                        psc->escaping = 0;
                    }
                }
                *out++ = c;
                if (psc->outpos == psc->outend) {
                    psc->outpos = 0;
                    psc->outend = 0;
                    psc->noescape = 0;
                    psc->state = PSC_BufferIn;
                }
                break;
            }
            case PSC_BufferCopy:
                if (psc->outpos < psc->outend) {
                    *out++ = psc->bufferout[psc->outpos++];
                    break;
                }
                *out++ = psc->pgetc(psc->file);
                psc->buffercopy--;
                if (psc->buffercopy == 0) {
                    psc->outpos = 0;
                    psc->outend = 0;
                    psc->state = PSC_BufferIn;
                }
                break;
            case PSC_InString:
                c = psc->pgetc(psc->file);
                if ((c == ')') && (--psc->paren == 0)) {
                    psc->wasascii = 0;
                    if (psc->binary) {

                        if (psc->inpos < 256) {
                            pscompact_bufferatstart(psc, psc->inpos);
                            pscompact_bufferatstart(psc, 142);
                            pscompact_copyinout_bin(psc);
                            break;
                        } else if (psc->inpos < 65536) {
                            pscompact_bufferatstart(psc, psc->inpos>>8);
                            pscompact_bufferatstart(psc, psc->inpos & 255);
                            pscompact_bufferatstart(psc, 144);
                            pscompact_copyinout_bin(psc);
                            break;
                        }
                    }


                    pscompact_bufferatstart(psc, '(');
                    pscompact_buffer(psc, ')');
                    pscompact_copyinout(psc);
                    break;
                } else if (c == '\\') {
                    c = psc->pgetc(psc->file);
                    if (c == 10)
                        break;
                    else if (c == 'b')
                        c = 8;
                    else if (c == 't')
                        c = 9;
                    else if (c == 'n')
                        c = 10;
                    else if (c == 'f')
                        c = 12;
                    else if (c == 'r')
                        c = 13;
                    else if ((c >= '0') && (c <= '7')) {
                        int d;
                        c = (c - '0');
                        d = psc->pgetc(psc->file);
                        if ((d >= '0') && (d <= '7')) {
                            c = (c<<3) + (d-'0');
                            d = psc->pgetc(psc->file);
                            if ((d >= '0') && (d <= '7')) {
                                c = (c<<3) + (d-'0');
                            } else {
                                psc->unpgetc(d, psc->file);
                            }
                        } else {
                            psc->unpgetc(d, psc->file);
                        }
                        c &= 0xFF;
                    }
                } else if (c == '(') {
                    psc->paren++;
                }
                pscompact_buffer(psc, c);
                break;
            case PSC_InComment:

                c = psc->pgetc(psc->file);
                if ((c == 13) || (c == 10)) {
                    if ((psc->inpos >= 3) &&
                        ((__extension__ (__builtin_constant_p (3) && ((__builtin_constant_p (psc->bufferin) && strlen (psc->bufferin) < ((size_t) (3))) || (__builtin_constant_p ("END") && strlen ("END") < ((size_t) (3)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psc->bufferin) && __builtin_constant_p ("END") && (__s1_len = strlen (psc->bufferin), __s2_len = strlen ("END"), (!((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("END") + 1) - (size_t)(const void *)("END") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psc->bufferin, "END") : (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) && (__s1_len = strlen (psc->bufferin), __s1_len < 4) ? (__builtin_constant_p ("END") && ((size_t)(const void *)(("END") + 1) - (size_t)(const void *)("END") == 1) ? __builtin_strcmp (psc->bufferin, "END") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("END"); register int __result = (((const unsigned char *) (const char *) (psc->bufferin))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psc->bufferin))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("END") && ((size_t)(const void *)(("END") + 1) - (size_t)(const void *)("END") == 1) && (__s2_len = strlen ("END"), __s2_len < 4) ? (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) ? __builtin_strcmp (psc->bufferin, "END") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psc->bufferin); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("END"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("END"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("END"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("END"))[3]); } } __result; }))) : __builtin_strcmp (psc->bufferin, "END")))); }) : strncmp (psc->bufferin, "END", 3))) == 0)) {

                        pscompact_bufferatstart(psc, '%');
                        pscompact_buffer(psc, 10);
                        pscompact_copyinout(psc);
                        break;
                    }
                    if ((psc->inpos >= 7) &&
                        ((__extension__ (__builtin_constant_p (7) && ((__builtin_constant_p (psc->bufferin) && strlen (psc->bufferin) < ((size_t) (7))) || (__builtin_constant_p ("NAMESOK") && strlen ("NAMESOK") < ((size_t) (7)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psc->bufferin) && __builtin_constant_p ("NAMESOK") && (__s1_len = strlen (psc->bufferin), __s2_len = strlen ("NAMESOK"), (!((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("NAMESOK") + 1) - (size_t)(const void *)("NAMESOK") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psc->bufferin, "NAMESOK") : (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) && (__s1_len = strlen (psc->bufferin), __s1_len < 4) ? (__builtin_constant_p ("NAMESOK") && ((size_t)(const void *)(("NAMESOK") + 1) - (size_t)(const void *)("NAMESOK") == 1) ? __builtin_strcmp (psc->bufferin, "NAMESOK") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("NAMESOK"); register int __result = (((const unsigned char *) (const char *) (psc->bufferin))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psc->bufferin))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("NAMESOK") && ((size_t)(const void *)(("NAMESOK") + 1) - (size_t)(const void *)("NAMESOK") == 1) && (__s2_len = strlen ("NAMESOK"), __s2_len < 4) ? (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) ? __builtin_strcmp (psc->bufferin, "NAMESOK") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psc->bufferin); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("NAMESOK"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("NAMESOK"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("NAMESOK"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("NAMESOK"))[3]); } } __result; }))) : __builtin_strcmp (psc->bufferin, "NAMESOK")))); }) : strncmp (psc->bufferin, "NAMESOK", 7))) == 0)) {
                        psc->names = 1;
                        pscompact_bufferatstart(psc, '%');
                        pscompact_buffer(psc, 10);
                        pscompact_copyinout(psc);
                        break;
                    }
                    if ((psc->inpos >= 8) &&
                        ((__extension__ (__builtin_constant_p (8) && ((__builtin_constant_p (psc->bufferin) && strlen (psc->bufferin) < ((size_t) (8))) || (__builtin_constant_p ("BINARYOK") && strlen ("BINARYOK") < ((size_t) (8)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psc->bufferin) && __builtin_constant_p ("BINARYOK") && (__s1_len = strlen (psc->bufferin), __s2_len = strlen ("BINARYOK"), (!((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("BINARYOK") + 1) - (size_t)(const void *)("BINARYOK") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psc->bufferin, "BINARYOK") : (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) && (__s1_len = strlen (psc->bufferin), __s1_len < 4) ? (__builtin_constant_p ("BINARYOK") && ((size_t)(const void *)(("BINARYOK") + 1) - (size_t)(const void *)("BINARYOK") == 1) ? __builtin_strcmp (psc->bufferin, "BINARYOK") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("BINARYOK"); register int __result = (((const unsigned char *) (const char *) (psc->bufferin))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psc->bufferin))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psc->bufferin))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("BINARYOK") && ((size_t)(const void *)(("BINARYOK") + 1) - (size_t)(const void *)("BINARYOK") == 1) && (__s2_len = strlen ("BINARYOK"), __s2_len < 4) ? (__builtin_constant_p (psc->bufferin) && ((size_t)(const void *)((psc->bufferin) + 1) - (size_t)(const void *)(psc->bufferin) == 1) ? __builtin_strcmp (psc->bufferin, "BINARYOK") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psc->bufferin); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("BINARYOK"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("BINARYOK"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("BINARYOK"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("BINARYOK"))[3]); } } __result; }))) : __builtin_strcmp (psc->bufferin, "BINARYOK")))); }) : strncmp (psc->bufferin, "BINARYOK", 8))) == 0)) {
                        psc->binary = 1;
                        pscompact_bufferatstart(psc, '%');
                        pscompact_buffer(psc, 10);
                        pscompact_copyinout(psc);
                        break;
                    }

                    psc->inpos = 0;
                    psc->state = PSC_BufferIn;
                    break;
                }
                pscompact_buffer(psc, c);
                break;
            case PSC_InHexString:
                c = psc->pgetc(psc->file);
                if (c == '<') {

                    pscompact_copy2(psc, '<', '<', 0);
                    break;
                } else if (c == '~') {

                    fprintf(stderr, "ASCII85 encoded strings unsupported in pscompaction\n");
                    exit(1);
                } else if (c == '>') {
                    psc->wasascii = 0;
                    if (psc->binary) {
                        pscompact_hex2ascii(psc);
                        if (psc->inpos < 256) {
                            pscompact_bufferatstart(psc, psc->inpos);
                            pscompact_bufferatstart(psc, 142);
                            pscompact_copyinout_bin(psc);
                        } else if (psc->inpos < 65536) {
                            pscompact_bufferatstart(psc, psc->inpos>>8);
                            pscompact_bufferatstart(psc, psc->inpos & 255);
                            pscompact_bufferatstart(psc, 144);
                            pscompact_copyinout_bin(psc);
                        } else {
                            fprintf(stderr, "HexString more than 64K in pscompaction\n");
                            exit(1);
                        }
                        break;
                    }


                    pscompact_bufferatstart(psc, '<');
                    pscompact_buffer(psc, '>');
                    pscompact_copyinout(psc);
                    break;
                } else if (c <= 32) {

                    break;
                } else if (((c >= 'A') && (c <= 'Z')) ||
                           ((c >= 'a') && (c <= 'z')) ||
                           ((c >= '0') && (c <= '9'))) {
                    pscompact_buffer(psc, c);
                } else {
                    fprintf(stderr, "Unexpected char when parsing hexstring in pscompaction\n");
                    exit(1);
                }
                break;
        }
    } while ((out-ubuf != ulen) && (!psc->peof(psc->file)));
    return out-ubuf;
}




void process_path(char *path, const char *os_prefix, const char *rom_prefix,
                  Xlist_element *Xlist_head, int compression,
                  int compaction, int *inode_count, int *totlen, FILE *out)
{
    int namelen, excluded, save_count=*inode_count;
    Xlist_element *Xlist_scan;
    char *prefixed_path;
    char *found_path, *rom_filename;
    file_enum *pfenum;
    int ret, block, blocks;
    romfs_inode *node;
    unsigned char *ubuf, *cbuf;
    unsigned long ulen, clen;
    FILE *in;
    unsigned long psc_len;
    pscompstate psc = { 0 };

    prefixed_path = malloc(1024);
    found_path = malloc(1024);
    rom_filename = malloc(1024);
    ubuf = malloc(16384);
    cbuf = malloc(((int)((16384) * 1.001) + 12));
    if (ubuf == ((void*)0) || cbuf == ((void*)0) || prefixed_path == ((void*)0) ||
                found_path == ((void*)0) || rom_filename == ((void*)0)) {
        printf("malloc fail in process_path\n");
        exit(1);
    }
    prefix_add(os_prefix, path, prefixed_path);
    prefix_add(rom_prefix, "", rom_filename);
    strcpy(rom_filename, rom_prefix);


    pfenum = gp_enumerate_files_init(prefixed_path, strlen(prefixed_path),
                        (gs_memory_t *)&minimal_memory);
    if (pfenum == ((void*)0)) {
        printf("gp_enumerate_files_init failed.\n");
        exit(1);
    }
    while ((namelen=gp_enumerate_files_next(pfenum, found_path, 1024)) >= 0) {
        excluded = 0;
        found_path[namelen] = 0;

        for (Xlist_scan = Xlist_head; Xlist_scan != ((void*)0); Xlist_scan = Xlist_scan->next) {
            if (strlen(found_path) >= strlen(Xlist_scan->path)) {
                if (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (Xlist_scan->path) && __builtin_constant_p (found_path+strlen(found_path)-strlen(Xlist_scan->path)) && (__s1_len = strlen (Xlist_scan->path), __s2_len = strlen (found_path+strlen(found_path)-strlen(Xlist_scan->path)), (!((size_t)(const void *)((Xlist_scan->path) + 1) - (size_t)(const void *)(Xlist_scan->path) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((found_path+strlen(found_path)-strlen(Xlist_scan->path)) + 1) - (size_t)(const void *)(found_path+strlen(found_path)-strlen(Xlist_scan->path)) == 1) || __s2_len >= 4)) ? __builtin_strcmp (Xlist_scan->path, found_path+strlen(found_path)-strlen(Xlist_scan->path)) : (__builtin_constant_p (Xlist_scan->path) && ((size_t)(const void *)((Xlist_scan->path) + 1) - (size_t)(const void *)(Xlist_scan->path) == 1) && (__s1_len = strlen (Xlist_scan->path), __s1_len < 4) ? (__builtin_constant_p (found_path+strlen(found_path)-strlen(Xlist_scan->path)) && ((size_t)(const void *)((found_path+strlen(found_path)-strlen(Xlist_scan->path)) + 1) - (size_t)(const void *)(found_path+strlen(found_path)-strlen(Xlist_scan->path)) == 1) ? __builtin_strcmp (Xlist_scan->path, found_path+strlen(found_path)-strlen(Xlist_scan->path)) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (found_path+strlen(found_path)-strlen(Xlist_scan->path)); register int __result = (((const unsigned char *) (const char *) (Xlist_scan->path))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (Xlist_scan->path))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (Xlist_scan->path))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (Xlist_scan->path))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (found_path+strlen(found_path)-strlen(Xlist_scan->path)) && ((size_t)(const void *)((found_path+strlen(found_path)-strlen(Xlist_scan->path)) + 1) - (size_t)(const void *)(found_path+strlen(found_path)-strlen(Xlist_scan->path)) == 1) && (__s2_len = strlen (found_path+strlen(found_path)-strlen(Xlist_scan->path)), __s2_len < 4) ? (__builtin_constant_p (Xlist_scan->path) && ((size_t)(const void *)((Xlist_scan->path) + 1) - (size_t)(const void *)(Xlist_scan->path) == 1) ? __builtin_strcmp (Xlist_scan->path, found_path+strlen(found_path)-strlen(Xlist_scan->path)) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (Xlist_scan->path); register int __result = __s1[0] - ((const unsigned char *) (const char *) (found_path+strlen(found_path)-strlen(Xlist_scan->path)))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (found_path+strlen(found_path)-strlen(Xlist_scan->path)))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (found_path+strlen(found_path)-strlen(Xlist_scan->path)))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (found_path+strlen(found_path)-strlen(Xlist_scan->path)))[3]); } } __result; }))) : __builtin_strcmp (Xlist_scan->path, found_path+strlen(found_path)-strlen(Xlist_scan->path))))); }) == 0) {
                    excluded = 1;
                    break;
                }
            }
        }
        if (excluded)
            continue;


        node = calloc(1, sizeof(romfs_inode));

        in = fopen(found_path, "rb");
        if (in == ((void*)0)) {
            printf("unable to open file for processing: %s\n", found_path);
            continue;
        }



        rom_filename[strlen(rom_prefix)] = 0;
        strcat(rom_filename, found_path + strlen(os_prefix));
        node->name = rom_filename;
        fseek(in, 0, 2);
        node->disc_length = node->length = ftell(in);
        blocks = (node->length+16384 -1) / 16384 + 1;
        node->data_lengths = calloc(blocks, sizeof(*node->data_lengths));
        node->data = calloc(blocks, sizeof(*node->data));
        fclose(in);
        in = fopen(found_path, "rb");
        ulen = strlen(found_path);
        block = 0;
        psc_len = 0;
        if (compaction)
            pscompact_start(&psc, (psc_getc*)&fgetc, (psc_ungetc*)&ungetc, (psc_feof*)&feof, in, 1, 0, 0);
        while (!feof(in)) {
            if (compaction)
                ulen = pscompact_getcompactedblock(&psc, ubuf, 16384);
            else
                ulen = fread(ubuf, 1, 16384, in);
            psc_len += ulen;
            if (!ulen) break;
            clen = ((int)((16384) * 1.001) + 12);
            if (compression) {

                ret = compress(cbuf, &clen, ubuf, ulen);
                if (ret != 0) {
                    printf("error compressing data block!\n");
                    exit(1);
                }
            } else {
                memcpy(cbuf, ubuf, ulen);
                clen = ulen;
            }
            node->data_lengths[block] = clen;
            node->data[block] = malloc(clen);
            memcpy(node->data[block], cbuf, clen);
            block++;
        }
        fclose(in);
        if (compaction) {


            pscompact_end(&psc);
            node->length = psc_len;
        }

        inode_write(out, node, compression, *inode_count, totlen);

        inode_clear(node);
        free(node);
        (*inode_count)++;
    }
    free(cbuf);
    free(ubuf);
    free(found_path);
    free(prefixed_path);
    if (save_count == *inode_count) {
        printf("warning: no files found from path '%s%s'\n", os_prefix, path);
    }
}
# 1667 "./base/mkromfs.c"
void merge_to_ps(const char *os_prefix, const char *inname, FILE * in, FILE * config);
int write_init(char *);
bool rl(FILE * in, char *str, int len);
void wsc(const byte *str, int len);
void ws(const byte *str, int len);
void wl(const char *str);
char *doit(char *line, bool intact);
void hex_string_to_binary(FILE *in);
void flush_buf(char *buf);
void mergefile(const char *os_prefix, const char *inname, FILE * in, FILE * config,
               bool intact);
void flush_line_buf(int len);

typedef struct in_block_s in_block_t;
struct in_block_s {
    struct in_block_s *next;
    unsigned char data[16384];
};




char linebuf[1024 * 2];
in_block_t *in_block_head = ((void*)0);
in_block_t *in_block_tail = ((void*)0);
unsigned char *curr_block_p, *curr_block_end;

typedef struct {
    in_block_t *block;
    int pos;
    int eof;
} in_block_file;

static int ib_getc(in_block_file *ibf) {
    if ((ibf->block == in_block_tail) &&
        (ibf->pos == curr_block_p - in_block_tail->data)) {
        ibf->eof = 1;
        return -1;
    }
    if (ibf->pos == 16384) {
        ibf->block = ibf->block->next;
        ibf->pos = 0;
    }
    return ibf->block->data[ibf->pos++];
}

static void ib_ungetc(int c, in_block_file *ibf)
{
    ibf->pos--;
}

static int ib_feof(in_block_file *ibf)
{
    return ibf->eof;
}

int
process_initfile(char *initfile, char *gconfig_h, const char *os_prefix,
                 const char *rom_prefix, int compression, int *inode_count,
                 int *totlen, FILE *out)
{
    int ret, block, blocks;
    romfs_inode *node;
    unsigned char *ubuf, *cbuf;
    char *prefixed_path, *rom_filename;
    unsigned long clen;
    FILE *in;
    FILE *config;
    in_block_t *in_block = ((void*)0);
    int compaction = 1;

    ubuf = malloc(16384);
    cbuf = malloc(((int)((16384) * 1.001) + 12));
    prefixed_path = malloc(1024);
    rom_filename = malloc(1024);
    if (ubuf == ((void*)0) || cbuf == ((void*)0) || prefixed_path == ((void*)0) ||
        rom_filename == ((void*)0)) {
        printf("malloc fail in process_initfile\n");

        return -1;
    }

    prefix_add(os_prefix, initfile, prefixed_path);
    prefix_add(rom_prefix, initfile, rom_filename);

    in = fopen(prefixed_path, "r");
    if (in == 0) {
        printf("cannot open initfile at: %s\n", prefixed_path);
        return -1;
    }
    config = fopen(gconfig_h, "r");
    if (config == 0) {
        printf("Cannot open gconfig file %s\n", gconfig_h);
        fclose(in);
        return -1;
    }
    memset(linebuf, 0, sizeof(linebuf));
    node = calloc(1, sizeof(romfs_inode));
    node->name = rom_filename;

    merge_to_ps(os_prefix, initfile, in, config);

    fclose(in);
    fclose(config);


    if (compaction)
    {
        in_block_t *comp_block_head;
        in_block_t *comp_block;
        pscompstate psc;
        in_block_file ibf;
        int ulen;

        ibf.block = in_block_head;
        ibf.pos = 0;
        ibf.eof = 0;

        comp_block = malloc(sizeof(*comp_block));
        comp_block_head = comp_block;
        pscompact_start(&psc, (psc_getc*)&ib_getc, (psc_ungetc*)&ib_ungetc, (psc_feof*)&ib_feof, &ibf, 0, 0, 1);
        do {
            ulen = pscompact_getcompactedblock(&psc, comp_block->data, 16384);
            comp_block->next = ((void*)0);
            if (ulen == 16384) {
                comp_block->next = malloc(sizeof(*comp_block));
                comp_block = comp_block->next;
            }
        } while (ulen == 16384);
        pscompact_end(&psc);
        while (in_block_head != ((void*)0)) {
            in_block = in_block_head->next;
            free(in_block_head);
            in_block_head = in_block;
        }
        in_block_head = comp_block_head;
        in_block_tail = comp_block;
        curr_block_p = in_block_tail->data + ulen;
    }

    node->length = 0;
    in_block = in_block_head;
    while (in_block != ((void*)0)) {
        node->length +=
            in_block != in_block_tail ? 16384 : curr_block_p - in_block->data;
        in_block = in_block->next;
    }
    node->disc_length = node->length;

    blocks = (node->length+16384 -1) / 16384 + 1;
    node->data_lengths = calloc(blocks, sizeof(*node->data_lengths));
    node->data = calloc(blocks, sizeof(*node->data));
    block = 0;

    in_block = in_block_head;
    while (in_block != ((void*)0)) {
        int block_len =
                in_block != in_block_tail ? 16384 : curr_block_p - in_block->data;

        clen = ((int)((16384) * 1.001) + 12);
        if (compression) {

            ret = compress(cbuf, &clen, in_block->data, block_len);
            if (ret != 0) {
                printf("error compressing data block!\n");
                exit(1);
            }
        } else {
            memcpy(cbuf, in_block->data, block_len);
            clen = block_len;
        }
        node->data_lengths[block] = clen;
        node->data[block] = malloc(clen);
        memcpy(node->data[block], cbuf, clen);
        block++;
        in_block = in_block->next;
    }


    inode_write(out, node, compression, *inode_count, totlen);

    inode_clear(node);
    free(node);
    (*inode_count)++;

    free(cbuf);
    free(ubuf);
    free(prefixed_path);
    free(rom_filename);
    return 0;
}

void
flush_line_buf(int len) {
    int remaining_len = len;
    int move_len;
    int line_offset = 0;

    if (len > 1024) {
        printf("*** warning, flush_line called with len (%d) > LINE_SIZE (%d)\n",
                len, 1024);
        return;
    }

    if (in_block_tail == ((void*)0)) {
        in_block_head = in_block_tail = calloc(1, sizeof(in_block_t));
        in_block_tail->next = ((void*)0);
        curr_block_p = in_block_head->data;
        curr_block_end = curr_block_p + 16384;
    }

    do {
        move_len = (((remaining_len) < (curr_block_end - curr_block_p)) ? (remaining_len) : (curr_block_end - curr_block_p));
        memcpy(curr_block_p, linebuf + line_offset, move_len);
        curr_block_p += move_len;
        line_offset += move_len;
        if (curr_block_p == curr_block_end) {

            in_block_tail->next = calloc(1, sizeof(in_block_t));
            in_block_tail = in_block_tail->next;
            in_block_tail->next = ((void*)0);
            curr_block_p = in_block_tail->data;
            curr_block_end = curr_block_p + 16384;
        }
        remaining_len = (((0) > (remaining_len - move_len)) ? (0) : (remaining_len - move_len));
    } while (remaining_len > 0);


    memset(linebuf, 0, sizeof(linebuf));
}


bool
rl(FILE * in, char *str, int len)
{





    int i = 0, c = _IO_getc (in);

    if (c < 0)
        return ((bool)0);
    while (i < len - 1) {
        if (c < 0 || c == 10)
            break;
        if (c == 13) {
            c = _IO_getc (in);
            if (c != 10 && c >= 0)
                ungetc(c, in);
            break;
        }
        str[i++] = c;
        c = _IO_getc (in);
    }
    str[i] = 0;
    return ((bool)1);
}


void
wsc(const byte *str, int len)
{
    int n = 0;
    int i;

    if (len >= 1024)
        exit(1);

    for (i = 0; i < len; ++i) {
        int c = str[i];

        sprintf(linebuf,
                (c < 32 || c >= 127 ? "%d," :
                 c == '\'' || c == '\\' ? "'\\%c'," : "'%c',"),
                c);
        flush_line_buf(strlen(linebuf));
        if (++n == 15) {
            linebuf[0] = '\n';
            flush_line_buf(1);
            n = 0;
        }
    }
    if (n != 0) {
        flush_line_buf(strlen(linebuf));
        linebuf[0] = '\n';
        flush_line_buf(1);
    }
}
void
ws(const byte *str, int len)
{
    if (len >= 1024)
        exit(1);

    memcpy(linebuf, str, len);
    flush_line_buf(len);
}

void
wl(const char *str)
{
    ws((const byte *)str, strlen(str));
    ws((const byte *)"\n", 1);
}






char *
doit(char *line, bool intact)
{
    char *str = line;
    char *from;
    char *to;
    int in_string = 0;

    if (intact)
        return str;
    while (*str == ' ' || *str == '\t')
        ++str;
    if (*str == 0)
        return ((void*)0);
    if (!(__extension__ (__builtin_constant_p (4) && ((__builtin_constant_p (str) && strlen (str) < ((size_t) (4))) || (__builtin_constant_p ("%END") && strlen ("%END") < ((size_t) (4)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (str) && __builtin_constant_p ("%END") && (__s1_len = strlen (str), __s2_len = strlen ("%END"), (!((size_t)(const void *)((str) + 1) - (size_t)(const void *)(str) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("%END") + 1) - (size_t)(const void *)("%END") == 1) || __s2_len >= 4)) ? __builtin_strcmp (str, "%END") : (__builtin_constant_p (str) && ((size_t)(const void *)((str) + 1) - (size_t)(const void *)(str) == 1) && (__s1_len = strlen (str), __s1_len < 4) ? (__builtin_constant_p ("%END") && ((size_t)(const void *)(("%END") + 1) - (size_t)(const void *)("%END") == 1) ? __builtin_strcmp (str, "%END") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("%END"); register int __result = (((const unsigned char *) (const char *) (str))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (str))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (str))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (str))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("%END") && ((size_t)(const void *)(("%END") + 1) - (size_t)(const void *)("%END") == 1) && (__s2_len = strlen ("%END"), __s2_len < 4) ? (__builtin_constant_p (str) && ((size_t)(const void *)((str) + 1) - (size_t)(const void *)(str) == 1) ? __builtin_strcmp (str, "%END") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (str); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("%END"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("%END"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("%END"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("%END"))[3]); } } __result; }))) : __builtin_strcmp (str, "%END")))); }) : strncmp (str, "%END", 4))))
        return str;
    if (str[0] == '%')
        return ((void*)0);







    for (to = from = str; (*to = *from) != 0; ++from, ++to) {
        switch (*from) {
            case '%':
                if (!in_string)
                    break;
                continue;
            case ' ':
            case '\t':
                if (to > str && !in_string && (__extension__ (__builtin_constant_p (to[-1]) && !__builtin_constant_p (" \t>[]{})") && (to[-1]) == '\0' ? (char *) __rawmemchr (" \t>[]{})", to[-1]) : __builtin_strchr (" \t>[]{})", to[-1]))))
                    --to;
                continue;
            case '(':
            case '<':
            case '/':
            case '[':
            case ']':
            case '{':
            case '}':
                if (to > str && !in_string && (__extension__ (__builtin_constant_p (to[-1]) && !__builtin_constant_p (" \t") && (to[-1]) == '\0' ? (char *) __rawmemchr (" \t", to[-1]) : __builtin_strchr (" \t", to[-1]))))
                    *--to = *from;
                if (*from == '(')
                    ++in_string;
                continue;
            case ')':
                --in_string;
                continue;
            case '\\':
                if (from[1] == '\\' || from[1] == '(' || from[1] == ')')
                    *++to = *++from;
                continue;
            default:
                continue;
        }
        break;
    }

    while (to > str && (to[-1] == ' ' || to[-1] == '\t'))
        --to;
    *to = 0;
    return str;
}


void
hex_string_to_binary(FILE *in)
{

    byte *strbuf = (byte *)malloc(0xffff);
    byte *q = strbuf;
    int c;
    bool which = ((bool)0);
    int len;
    byte prefix[3];

    if (strbuf == 0) {
        printf("Unable to allocate string token buffer.\n");
        exit(1);
    }
    while ((c = _IO_getc (in)) >= 0) {
        if (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISxdigit)) {
            c -= (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit) ? '0' : ((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISlower) ? 'a' : 'A');
            if ((which = !which)) {
                if (q == strbuf + 0xffff) {
                    printf("Can't handle string token > %d bytes.\n",
                            0xffff);
                    exit(1);
                }
                *q++ = c << 4;
            } else
                q[-1] += c;
        } else if (((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISspace))
            continue;
        else if (c == '>')
            break;
        else
            printf("Unknown character in ASCIIHex string: %c\n", c);
    }
    len = q - strbuf;
    if (len <= 255) {
        prefix[0] = 142;
        prefix[1] = (byte)len;
        ws(prefix, 2);
    } else {
        prefix[0] = 143;
        prefix[1] = (byte)(len >> 8);
        prefix[2] = (byte)len;
        ws(prefix, 3);
    }
    ws(strbuf, len);
    free((char *)strbuf);

}


void
flush_buf(char *buf)
{
    if (buf[0] != 0) {
        wl(buf);
        buf[0] = 0;
    }
}

FILE *
prefix_open(const char *os_prefix, const char *filename)
{
    char *prefixed_path;
    FILE *filep;

    prefixed_path = malloc(1024);
    if (prefixed_path == ((void*)0)) {
        printf("malloc problem in prefix_open\n");
        return ((void*)0);
    }
    prefix_add(os_prefix, filename, prefixed_path);
    printf("including: '%s'\n", prefixed_path);
    filep = fopen(prefixed_path, "rb");
    free(prefixed_path);
    return filep;
}

void
mergefile(const char *os_prefix, const char *inname, FILE * in, FILE * config,
          bool intact)
{
    char line[1024 + 1];
    char buf[1024 + 1];
    char *str;
    int level = 1;
    bool first = ((bool)1);

    buf[0] = 0;
    while (rl(in, line, 1024)) {
        char psname[1024 + 1];
        int nlines;

        if (!(__extension__ (__builtin_constant_p (10) && ((__builtin_constant_p (line) && strlen (line) < ((size_t) (10))) || (__builtin_constant_p ("%% Replace") && strlen ("%% Replace") < ((size_t) (10)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (line) && __builtin_constant_p ("%% Replace") && (__s1_len = strlen (line), __s2_len = strlen ("%% Replace"), (!((size_t)(const void *)((line) + 1) - (size_t)(const void *)(line) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("%% Replace") + 1) - (size_t)(const void *)("%% Replace") == 1) || __s2_len >= 4)) ? __builtin_strcmp (line, "%% Replace") : (__builtin_constant_p (line) && ((size_t)(const void *)((line) + 1) - (size_t)(const void *)(line) == 1) && (__s1_len = strlen (line), __s1_len < 4) ? (__builtin_constant_p ("%% Replace") && ((size_t)(const void *)(("%% Replace") + 1) - (size_t)(const void *)("%% Replace") == 1) ? __builtin_strcmp (line, "%% Replace") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("%% Replace"); register int __result = (((const unsigned char *) (const char *) (line))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (line))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (line))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (line))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("%% Replace") && ((size_t)(const void *)(("%% Replace") + 1) - (size_t)(const void *)("%% Replace") == 1) && (__s2_len = strlen ("%% Replace"), __s2_len < 4) ? (__builtin_constant_p (line) && ((size_t)(const void *)((line) + 1) - (size_t)(const void *)(line) == 1) ? __builtin_strcmp (line, "%% Replace") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (line); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("%% Replace"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("%% Replace"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("%% Replace"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("%% Replace"))[3]); } } __result; }))) : __builtin_strcmp (line, "%% Replace")))); }) : strncmp (line, "%% Replace", 10))) &&
            sscanf(line + 11, "%d %s", &nlines, psname) == 2
            ) {
            bool do_intact = (line[10] == '%');

            flush_buf(buf);
            while (nlines-- > 0)
                rl(in, line, 1024);
            if (psname[0] == '(') {
                FILE *ps;

                psname[strlen(psname) - 1] = 0;
                ps = prefix_open(os_prefix, psname + 1);
                if (ps == 0) {
                    fprintf(stderr, "Failed to open '%s' - aborting\n", psname+1);
                    exit(1);
                }
                mergefile(os_prefix, psname + 1, ps, config, intact || do_intact);
            } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psname) && __builtin_constant_p ("INITFILES") && (__s1_len = strlen (psname), __s2_len = strlen ("INITFILES"), (!((size_t)(const void *)((psname) + 1) - (size_t)(const void *)(psname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("INITFILES") + 1) - (size_t)(const void *)("INITFILES") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psname, "INITFILES") : (__builtin_constant_p (psname) && ((size_t)(const void *)((psname) + 1) - (size_t)(const void *)(psname) == 1) && (__s1_len = strlen (psname), __s1_len < 4) ? (__builtin_constant_p ("INITFILES") && ((size_t)(const void *)(("INITFILES") + 1) - (size_t)(const void *)("INITFILES") == 1) ? __builtin_strcmp (psname, "INITFILES") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("INITFILES"); register int __result = (((const unsigned char *) (const char *) (psname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("INITFILES") && ((size_t)(const void *)(("INITFILES") + 1) - (size_t)(const void *)("INITFILES") == 1) && (__s2_len = strlen ("INITFILES"), __s2_len < 4) ? (__builtin_constant_p (psname) && ((size_t)(const void *)((psname) + 1) - (size_t)(const void *)(psname) == 1) ? __builtin_strcmp (psname, "INITFILES") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("INITFILES"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("INITFILES"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("INITFILES"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("INITFILES"))[3]); } } __result; }))) : __builtin_strcmp (psname, "INITFILES")))); })) {




                rewind(config);
                while (rl(config, psname, 1024))
                    if (!(__extension__ (__builtin_constant_p (9) && ((__builtin_constant_p (psname) && strlen (psname) < ((size_t) (9))) || (__builtin_constant_p ("psfile_(\"") && strlen ("psfile_(\"") < ((size_t) (9)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (psname) && __builtin_constant_p ("psfile_(\"") && (__s1_len = strlen (psname), __s2_len = strlen ("psfile_(\""), (!((size_t)(const void *)((psname) + 1) - (size_t)(const void *)(psname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("psfile_(\"") + 1) - (size_t)(const void *)("psfile_(\"") == 1) || __s2_len >= 4)) ? __builtin_strcmp (psname, "psfile_(\"") : (__builtin_constant_p (psname) && ((size_t)(const void *)((psname) + 1) - (size_t)(const void *)(psname) == 1) && (__s1_len = strlen (psname), __s1_len < 4) ? (__builtin_constant_p ("psfile_(\"") && ((size_t)(const void *)(("psfile_(\"") + 1) - (size_t)(const void *)("psfile_(\"") == 1) ? __builtin_strcmp (psname, "psfile_(\"") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("psfile_(\""); register int __result = (((const unsigned char *) (const char *) (psname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (psname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (psname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (psname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("psfile_(\"") && ((size_t)(const void *)(("psfile_(\"") + 1) - (size_t)(const void *)("psfile_(\"") == 1) && (__s2_len = strlen ("psfile_(\""), __s2_len < 4) ? (__builtin_constant_p (psname) && ((size_t)(const void *)((psname) + 1) - (size_t)(const void *)(psname) == 1) ? __builtin_strcmp (psname, "psfile_(\"") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (psname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("psfile_(\""))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("psfile_(\""))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("psfile_(\""))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("psfile_(\""))[3]); } } __result; }))) : __builtin_strcmp (psname, "psfile_(\"")))); }) : strncmp (psname, "psfile_(\"", 9)))) {
                        FILE *ps;
                        char *quote = (__extension__ (__builtin_constant_p ('"') && !__builtin_constant_p (psname + 9) && ('"') == '\0' ? (char *) __rawmemchr (psname + 9, '"') : __builtin_strchr (psname + 9, '"')));

                        *quote = 0;
                        ps = prefix_open(os_prefix, psname + 9);
                        if (ps == 0)
                            exit(1);
                        mergefile(os_prefix, psname + 9, ps, config, ((bool)0));
                    }
            } else {
                printf("Unknown %%%% Replace %d %s\n",
                        nlines, psname);
                exit(1);
            }
        } else if (!__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (line) && __builtin_constant_p ("currentfile closefile") && (__s1_len = strlen (line), __s2_len = strlen ("currentfile closefile"), (!((size_t)(const void *)((line) + 1) - (size_t)(const void *)(line) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("currentfile closefile") + 1) - (size_t)(const void *)("currentfile closefile") == 1) || __s2_len >= 4)) ? __builtin_strcmp (line, "currentfile closefile") : (__builtin_constant_p (line) && ((size_t)(const void *)((line) + 1) - (size_t)(const void *)(line) == 1) && (__s1_len = strlen (line), __s1_len < 4) ? (__builtin_constant_p ("currentfile closefile") && ((size_t)(const void *)(("currentfile closefile") + 1) - (size_t)(const void *)("currentfile closefile") == 1) ? __builtin_strcmp (line, "currentfile closefile") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("currentfile closefile"); register int __result = (((const unsigned char *) (const char *) (line))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (line))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (line))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (line))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("currentfile closefile") && ((size_t)(const void *)(("currentfile closefile") + 1) - (size_t)(const void *)("currentfile closefile") == 1) && (__s2_len = strlen ("currentfile closefile"), __s2_len < 4) ? (__builtin_constant_p (line) && ((size_t)(const void *)((line) + 1) - (size_t)(const void *)(line) == 1) ? __builtin_strcmp (line, "currentfile closefile") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (line); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("currentfile closefile"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("currentfile closefile"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("currentfile closefile"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("currentfile closefile"))[3]); } } __result; }))) : __builtin_strcmp (line, "currentfile closefile")))); })) {

            break;
        } else {
            int len;

            str = doit(line, intact);
            if (str == 0)
                continue;
            len = strlen(str);
            if (first && len >= 2 && str[len - 2] == '<' &&
                (str[len - 1] == '<' || str[len - 1] == '~')
                ) {
                wl("currentobjectformat 1 setobjectformat\n");
                level = 2;
            }
            if (level > 1 && len > 0 && str[len - 1] == '<' &&
                (len < 2 || str[len - 2] != '<')
                ) {

                flush_buf(buf);
                str[len - 1] = 0;
                wl(str);
                hex_string_to_binary(in);
                continue;
            }
            if (buf[0] != '%' &&
                strlen(buf) + len < 1024 &&
                ((__extension__ (__builtin_constant_p (str[0]) && !__builtin_constant_p ("(/[]{}") && (str[0]) == '\0' ? (char *) __rawmemchr ("(/[]{}", str[0]) : __builtin_strchr ("(/[]{}", str[0]))) ||
                 (buf[0] != 0 && (__extension__ (__builtin_constant_p (buf[strlen(buf) - 1]) && !__builtin_constant_p (")[]{}") && (buf[strlen(buf) - 1]) == '\0' ? (char *) __rawmemchr (")[]{}", buf[strlen(buf) - 1]) : __builtin_strchr (")[]{}", buf[strlen(buf) - 1])))))
                )
                strcat(buf, str);
            else {
                flush_buf(buf);
                strcpy(buf, str);
            }
            first = ((bool)0);
        }
    }
    flush_buf(buf);
    if (level > 1)
        wl("setobjectformat");
}


void
merge_to_ps(const char *os_prefix, const char *inname, FILE * in, FILE * config)
{
    char line[1024 + 1];

    while ((rl(in, line, 1024), line[0])) {
        sprintf(linebuf, "%s", line );
        wl(linebuf);
    }
    mergefile(os_prefix, inname, in, config, ((bool)0));
}

int
main(int argc, char *argv[])
{
    int i;
    int inode_count = 0, totlen = 0;
    FILE *out;
    const char *outfilename = "obj/gsromfs.c";
    const char *os_prefix = "";
    const char *rom_prefix = "";
    char *initfile, *gconfig_h;
    int atarg = 1;
    int compression = 1;
    int compaction = 0;
    Xlist_element *Xlist_scan, *Xlist_head = ((void*)0);

    if (argc < 2) {
        printf("\n"
                "       Usage: mkromfs [-o outputfile] [options ...] paths\n"
                "           options and paths can be interspersed and are processed in order\n"
                "           options:\n"
                "               -o outputfile   default: obj/gsromfs.c if this option present, must be first.\n"
                "               -P prefix       use prefix to find path. prefix not included in %%rom%%\n"
                "               -X path         exclude the path from further processing.\n"
                "                         Note: The tail of any path encountered will be tested so .svn on the -X\n"
                "                               list will exclude that path in all subsequent paths enumerated.\n"
                "\n"
                "               -d romprefix    directory in %%rom file system (just a prefix string on filename)\n"
                "               -c              compression on\n"
                "               -b              compression off (binary).\n"
                "               -C              postscript 'compaction' on\n"
                "               -B              postscript 'compaction' off\n"
                "               -g initfile gconfig_h \n"
                "                       special handling to read the 'gs_init.ps' file (from\n"
                "                       the current -P prefix path), and read the gconfig.h for\n"
                "                       psfile_ entries and combines them into a whitespace\n"
                "                       optimized and no comments form and writes this 'gs_init.ps'\n"
                "                       to the current -d destination path. This is a space and\n"
                "                       startup performance improvement, so also this should be\n"
                "                       BEFORE other stuff in the %%rom%% list of files (currently\n"
                "                       we do a sequential search in the %%rom%% directory).\n"
                "\n"
                "                       For performance reasons, it is best to turn off compression\n"
                "                       for the init file. Less frequently accessed files, if they\n"
                "                       are large should still be compressed.\n"
                "\n"
            );
        exit(1);
    }

    printf("compression will use %d byte blocksize (zlib output buffer %d bytes)\n",
        16384, ((int)((16384) * 1.001) + 12));

    if (argc > 3 && argv[1][0] == '-' && argv[1][1] == 'o') {

        outfilename = argv[2];
        atarg += 2;
    }
    printf("   writing romfs data to '%s'\n", outfilename);
    out = fopen(outfilename, "w");

    fprintf(out,"\t/* Generated data for %%rom%% device, see mkromfs.c */\n");



    fprintf(out,"\t/* this code assumes a little endian target platform */\n");

    fprintf(out,"\n#include \"stdint_.h\"\n");
    fprintf(out,"\n#include \"time_.h\"\n\n");
    fprintf(out,"    time_t gs_romfs_buildtime = %ld;\n\n", time(((void*)0)));


    for (; atarg < argc; atarg++) {
        if (argv[atarg][0] == '-') {

            switch (argv[atarg][1]) {
              case 'b':
                compression = 0;
                break;
              case 'c':
                compression = 1;
                break;
              case 'B':
                compaction = 0;
                break;
              case 'C':
                compaction = 1;
                break;
              case 'd':
                if (++atarg == argc) {
                    printf("   option %s missing required argument\n", argv[atarg-1]);
                    exit(1);
                }
                rom_prefix = argv[atarg];
                break;
              case 'g':
                if ((++atarg) + 1 == argc) {
                    printf("   option %s missing required arguments\n", argv[atarg-1]);
                    exit(1);
                }
                initfile = argv[atarg++];
                gconfig_h = argv[atarg];
                process_initfile(initfile, gconfig_h, os_prefix, rom_prefix, compression,
                                &inode_count, &totlen, out);
                break;
              case 'P':
                if (++atarg == argc) {
                    printf("   option %s missing required argument\n", argv[atarg-1]);
                    exit(1);
                }
                os_prefix = argv[atarg];
                break;
              case 'X':
                if (++atarg == argc) {
                    printf("   option %s missing required argument\n", argv[atarg-1]);
                    exit(1);
                }
                Xlist_scan = malloc(sizeof(Xlist_element));
                if (Xlist_scan == ((void*)0)) {
                    exit(1);
                }
                Xlist_scan->next = Xlist_head;
                Xlist_head = Xlist_scan;
                Xlist_head->path = argv[atarg];
                break;
              default:
                printf("  unknown option: %s \n", argv[atarg]);
            }
            continue;
        }

        process_path(argv[atarg], os_prefix, rom_prefix, Xlist_head,
                    compression, compaction, &inode_count, &totlen, out);

    }

    fprintf(out, "    uint32_t *gs_romfs[] = {\n");
    for (i=0; i<inode_count; i++)
        fprintf(out, "\tnode_%d,\n", i);
    fprintf(out, "\t0 };\n");

    fclose(out);

    printf("Total %%rom%% structure size is %d bytes.\n", totlen);

    return 0;
}
