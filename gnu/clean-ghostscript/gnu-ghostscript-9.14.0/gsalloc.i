# 1 "./base/gsalloc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gsalloc.c" 2
# 18 "./base/gsalloc.c"
# 1 "./base/gx.h" 1
# 22 "./base/gx.h"
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
# 19 "./base/gsalloc.c" 2
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
# 20 "./base/gsalloc.c" 2

# 1 "./base/gsexit.h" 1
# 26 "./base/gsexit.h"
int gs_to_exit(const gs_memory_t *mem, int exit_status);




int gs_to_exit_with_code(const gs_memory_t *mem, int exit_status, int code);





void gs_abort(const gs_memory_t *mem);
# 22 "./base/gsalloc.c" 2
# 1 "./base/gsmdebug.h" 1
# 23 "./base/gsmdebug.h"
# 1 "./base/valgrind.h" 1
# 24 "./base/gsmdebug.h" 2


extern const byte
       gs_alloc_fill_alloc,
       gs_alloc_fill_block,
       gs_alloc_fill_collected,
       gs_alloc_fill_deleted,
       gs_alloc_fill_free;






extern void gs_alloc_memset(void *, int , ulong);
# 23 "./base/gsalloc.c" 2
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
# 24 "./base/gsalloc.c" 2
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




typedef struct stream_s stream;
# 310 "./base/gxalloc.h"
typedef struct ref_s ref;
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
# 25 "./base/gsalloc.c" 2
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
# 26 "./base/gsalloc.c" 2
# 1 "./base/malloc_.h" 1
# 27 "./base/malloc_.h"
# 1 "./base/memento.h" 1
# 140 "./base/memento.h"
# 1 "/usr/include/memory.h" 1 3 4
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
# 27 "./base/gsalloc.c" 2


gs_id hdr_id = 0;
# 99 "./base/gsalloc.c"
static gs_ptr_type_t ref_memory_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); static void ref_memory_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst); const gs_memory_struct_type_t st_ref_memory = { sizeof(gs_ref_memory_t), "gs_ref_memory", 0, 0, ref_memory_enum_ptrs, ref_memory_reloc_ptrs, 0, 0 };
static
gs_ptr_type_t ref_memory_enum_ptrs(const gs_memory_t *mem, const void *vptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { switch ( index ) { default: return 0;
case 0: return (pep->ptr = (const void *)(((const gs_ref_memory_t *)vptr)->streams), (&ptr_struct_procs)); case (0)+1: return (pep->ptr = (const void *)(((const gs_ref_memory_t *)vptr)->names_array), (&ptr_struct_procs)); case (0)+2: return (pep->ptr = (const void *)(((const gs_ref_memory_t *)vptr)->changes), (&ptr_struct_procs));
case 3: return (pep->ptr = (const void *)(((const gs_ref_memory_t *)vptr)->saved), (&ptr_struct_procs));
case 4: return (pep->ptr = (const void *)(((const gs_ref_memory_t *)vptr)->scan_limit), (&ptr_struct_procs));
} }
static void ref_memory_reloc_ptrs(void *vptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst) { gs_ref_memory_t *mptr = vptr;
{
    (((gs_ref_memory_t *)vptr)->streams = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_ref_memory_t *)vptr)->streams), gcst)));
    (((gs_ref_memory_t *)vptr)->names_array = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_ref_memory_t *)vptr)->names_array), gcst)));
    (((gs_ref_memory_t *)vptr)->changes = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_ref_memory_t *)vptr)->changes), gcst)));
    (((gs_ref_memory_t *)vptr)->scan_limit = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(((gs_ref_memory_t *)vptr)->scan_limit), gcst)));

    mptr->reloc_saved = (((*(const gc_procs_common_t **)(gcst))->reloc_struct_ptr)((const void *)(mptr->saved), gcst));
}
}





typedef enum {
    ALLOC_IMMOVABLE = 1,
    ALLOC_DIRECT = 2
} alloc_flags_t;


static void remove_range_from_freelist(gs_ref_memory_t *mem, void* bottom, void* top);
static obj_header_t *large_freelist_alloc(gs_ref_memory_t *mem, uint size);
static obj_header_t *scavenge_low_free(gs_ref_memory_t *mem, unsigned request_size);
static ulong compute_free_objects(gs_ref_memory_t *);
static obj_header_t *alloc_obj(gs_ref_memory_t *, ulong, gs_memory_type_ptr_t, alloc_flags_t, client_name_t);
static void consolidate_chunk_free(chunk_t *cp, gs_ref_memory_t *mem);
static void trim_obj(gs_ref_memory_t *mem, obj_header_t *obj, uint size, chunk_t *cp);
static chunk_t *alloc_acquire_chunk(gs_ref_memory_t *, ulong, bool, client_name_t);
static chunk_t *alloc_add_chunk(gs_ref_memory_t *, ulong, client_name_t);
void alloc_close_chunk(gs_ref_memory_t *);






static byte *i_alloc_bytes_immovable(gs_memory_t *mem, uint nbytes, client_name_t cname);
static void *i_resize_object(gs_memory_t *mem, void *obj, uint new_num_elements, client_name_t cname);
static void i_free_object(gs_memory_t *mem, void *data, client_name_t cname);
static gs_memory_t *i_stable(gs_memory_t *mem);
static void i_status(gs_memory_t *mem, gs_memory_status_t *status);
static void i_free_all(gs_memory_t *mem, uint free_mask, client_name_t cname);
static void i_consolidate_free(gs_memory_t *mem);


static byte *i_alloc_bytes(gs_memory_t *mem, uint nbytes, client_name_t cname);
static void *i_alloc_struct(gs_memory_t *mem, gs_memory_type_ptr_t pstype, client_name_t cname);
static void *i_alloc_struct_immovable(gs_memory_t *mem, gs_memory_type_ptr_t pstype, client_name_t cname);
static byte *i_alloc_byte_array(gs_memory_t *mem, uint num_elements, uint elt_size, client_name_t cname);
static byte *i_alloc_byte_array_immovable(gs_memory_t *mem, uint num_elements, uint elt_size, client_name_t cname);
static void *i_alloc_struct_array(gs_memory_t *mem, uint num_elements, gs_memory_type_ptr_t pstype, client_name_t cname);
static void *i_alloc_struct_array_immovable(gs_memory_t *mem, uint num_elements, gs_memory_type_ptr_t pstype, client_name_t cname);
static uint i_object_size(gs_memory_t *mem, const void *obj);
static gs_memory_type_ptr_t i_object_type(const gs_memory_t *mem, const void *obj);
static byte *i_alloc_string(gs_memory_t *mem, uint nbytes, client_name_t cname);
static byte *i_alloc_string_immovable(gs_memory_t *mem, uint nbytes, client_name_t cname);
static byte *i_resize_string(gs_memory_t *mem, byte *data, uint old_num, uint new_num, client_name_t cname);
static void i_free_string(gs_memory_t *mem, byte *data, uint nbytes, client_name_t cname);
static int i_register_root(gs_memory_t *mem, gs_gc_root_t *root, gs_ptr_type_t ptype, void **pp, client_name_t cname);
static void i_unregister_root(gs_memory_t *mem, gs_gc_root_t *root, client_name_t cname);
static void i_enable_free(gs_memory_t *mem, bool enable);


const gs_memory_procs_t gs_ref_memory_procs =
{

    i_alloc_bytes_immovable,
    i_resize_object,
    i_free_object,
    i_stable,
    i_status,
    i_free_all,
    i_consolidate_free,

    i_alloc_bytes,
    i_alloc_struct,
    i_alloc_struct_immovable,
    i_alloc_byte_array,
    i_alloc_byte_array_immovable,
    i_alloc_struct_array,
    i_alloc_struct_array_immovable,
    i_object_size,
    i_object_type,
    i_alloc_string,
    i_alloc_string_immovable,
    i_resize_string,
    i_free_string,
    i_register_root,
    i_unregister_root,
    i_enable_free
};





static void *ialloc_solo(gs_memory_t *, gs_memory_type_ptr_t,
                          chunk_t **);
gs_ref_memory_t *
ialloc_alloc_state(gs_memory_t * parent, uint chunk_size)
{
    chunk_t *cp;
    gs_ref_memory_t *iimem = ialloc_solo(parent, &st_ref_memory, &cp);

    if (iimem == 0)
        return 0;
    iimem->stable_memory = (gs_memory_t *)iimem;
    iimem->procs = gs_ref_memory_procs;
    iimem->gs_lib_ctx = parent->gs_lib_ctx;
    iimem->non_gc_memory = parent;
    iimem->thread_safe_memory = parent->thread_safe_memory;
    iimem->chunk_size = chunk_size;



    iimem->large_size = ((chunk_size / 4) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) + 1;

    iimem->is_controlled = ((bool)0);
    iimem->gc_status.vm_threshold = chunk_size * 3L;
    iimem->gc_status.max_vm = 0x7fffffff;
    iimem->gc_status.psignal = ((void*)0);
    iimem->gc_status.signal_value = 0;
    iimem->gc_status.enabled = ((bool)0);
    iimem->gc_status.requested = 0;
    iimem->gc_allocated = 0;
    iimem->previous_status.allocated = 0;
    iimem->previous_status.used = 0;
    ialloc_reset(iimem);
    iimem->cfirst = iimem->clast = cp;
    ialloc_set_limit(iimem);
    iimem->cc.cbot = iimem->cc.ctop = 0;
    iimem->pcc = 0;
    iimem->save_level = 0;
    iimem->new_mask = 0;
    iimem->test_mask = ~0;
    iimem->streams = 0;
    iimem->names_array = 0;
    iimem->roots = 0;
    iimem->num_contexts = 0;
    iimem->saved = 0;
    return iimem;
}


static void *
ialloc_solo(gs_memory_t * parent, gs_memory_type_ptr_t pstype,
            chunk_t ** pcp)
{




    chunk_t *cp =
        gs_raw_alloc_struct_immovable(parent, &st_chunk,
                                      "ialloc_solo(chunk)");
    uint csize =
        ( (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) & ((((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) - 1) ? ((sizeof(chunk_head_t) + sizeof(obj_header_t) + pstype->ssize) + ((((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) - 1)) / (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) * (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) : ((sizeof(chunk_head_t) + sizeof(obj_header_t) + pstype->ssize) + ((((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) - 1)) & -(((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) );


    byte *cdata = ((parent)->procs.alloc_bytes_immovable(parent, csize, "ialloc_solo"));
    obj_header_t *obj = (obj_header_t *) (cdata + sizeof(chunk_head_t));

    if (cp == 0 || cdata == 0) {
        ((parent)->procs.free_object(parent, cp, "ialloc_solo(allocation failure)"));
        ((parent)->procs.free_object(parent, cdata, "ialloc_solo(allocation failure)"));
        return 0;
    }
    alloc_init_chunk(cp, cdata, cdata + csize, ((bool)0), (chunk_t *) ((void*)0));
    cp->cbot = cp->ctop;
    cp->cprev = cp->cnext = 0;

    obj->d.o.f.h.pad = 0;
    obj->d.o.f.h.alone = 1;
    obj->d.o.size = pstype->ssize;
    obj->d.o.t.type = pstype;
    *pcp = cp;
    return (void *)(obj + 1);
}

void
ialloc_free_state(gs_ref_memory_t *iimem)
{
    chunk_t *cp;
    gs_memory_t *mem;
    if (iimem == ((void*)0))
        return;
    cp = iimem->cfirst;
    mem = iimem->non_gc_memory;
    if (cp == ((void*)0))
        return;
    ((mem)->procs.free_object(mem, cp->chead, "ialloc_solo(allocation failure)"));
    ((mem)->procs.free_object(mem, cp, "ialloc_solo(allocation failure)"));
}






int
ialloc_add_chunk(gs_ref_memory_t *imem, ulong space, client_name_t cname)
{
    chunk_t *cp;


    imem->is_controlled = ((bool)0);
    imem->large_size = imem->chunk_size;
    imem->limit = (~(-1L << ((1 << 3) * 8 - 1)));
    imem->gc_status.max_vm = (~(-1L << ((1 << 3) * 8 - 1)));


    cp = alloc_add_chunk(imem, space, cname);







    imem->procs.alloc_bytes_immovable = imem->procs.alloc_bytes;
    imem->procs.alloc_struct_immovable = imem->procs.alloc_struct;
    imem->procs.alloc_byte_array_immovable = imem->procs.alloc_byte_array;
    imem->procs.alloc_struct_array_immovable = imem->procs.alloc_struct_array;
    imem->procs.alloc_string_immovable = imem->procs.alloc_string;


    imem->is_controlled = ((bool)1);
    imem->limit = 0;

    return (cp ? 0 : ((-25)));
}



void
ialloc_gc_prepare(gs_ref_memory_t * mem)
{



    while (mem->streams != 0) {
        stream *s = mem->streams;

        mem->streams = s->next;
        s->prev = s->next = 0;
    }
}


void
ialloc_reset(gs_ref_memory_t * mem)
{
    mem->cfirst = 0;
    mem->clast = 0;
    mem->cc.rcur = 0;
    mem->cc.rtop = 0;
    mem->cc.has_refs = ((bool)0);
    mem->allocated = 0;
    mem->changes = 0;
    mem->scan_limit = 0;
    mem->total_scanned = 0;
    mem->total_scanned_after_compacting = 0;
    ialloc_reset_free(mem);
}


void
ialloc_reset_free(gs_ref_memory_t * mem)
{
    int i;
    obj_header_t **p;

    mem->lost.objects = 0;
    mem->lost.refs = 0;
    mem->lost.strings = 0;
    mem->cfreed.cp = 0;
    for (i = 0, p = &mem->freelists[0]; i < (((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) + 1); i++, p++)
        *p = 0;
    mem->largest_free_size = 0;
}
# 398 "./base/gsalloc.c"
void
ialloc_set_limit(register gs_ref_memory_t * mem)
{





    ulong max_allocated =
    (mem->gc_status.max_vm > mem->previous_status.allocated ?
     mem->gc_status.max_vm - mem->previous_status.allocated :
     0);

    if (mem->gc_status.enabled) {
        ulong limit = mem->gc_allocated + mem->gc_status.vm_threshold;

        if (limit < mem->previous_status.allocated)
            mem->limit = 0;
        else {
            limit -= mem->previous_status.allocated;
            mem->limit = (((limit) < (max_allocated)) ? (limit) : (max_allocated));
        }
    } else
        mem->limit = (((max_allocated) < (mem->gc_allocated + 8000000)) ? (max_allocated) : (mem->gc_allocated + 8000000));
    do { } while (0);






}






static void
i_free_all(gs_memory_t * mem, uint free_mask, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    chunk_t *cp;

    if (free_mask & 1) {
        chunk_t *csucc;





        for (cp = imem->clast; cp != 0; cp = csucc) {
            csucc = cp->cprev;
            if (cp->cbase + sizeof(obj_header_t) != (byte *)mem)
                alloc_free_chunk(cp, imem);
        }
    }
    if (free_mask & 4) {

        for (cp = imem->clast; cp != 0; cp = cp->cprev)
            if (cp->cbase + sizeof(obj_header_t) == (byte *)mem) {
                alloc_free_chunk(cp, imem);
                break;
            }
    }
}




static uint
i_object_size(gs_memory_t * mem, const void *obj)
{
    return (((const obj_header_t *)obj - 1)->d.o.size);
}


static gs_memory_type_ptr_t
i_object_type(const gs_memory_t * mem, const void *obj)
{
    return ((const obj_header_t *)obj - 1)->d.o.t.type;
}


void
gs_memory_gc_status(const gs_ref_memory_t * mem, gs_memory_gc_status_t * pstat)
{
    *pstat = mem->gc_status;
}


void
gs_memory_set_gc_status(gs_ref_memory_t * mem, const gs_memory_gc_status_t * pstat)
{
    mem->gc_status = *pstat;
    ialloc_set_limit(mem);
}


void
gs_memory_set_vm_threshold(gs_ref_memory_t * mem, long val)
{
    gs_memory_gc_status_t stat;
    gs_ref_memory_t * stable = (gs_ref_memory_t *)mem->stable_memory;

    gs_memory_gc_status(mem, &stat);
    stat.vm_threshold = val;
    gs_memory_set_gc_status(mem, &stat);
    gs_memory_gc_status(stable, &stat);
    stat.vm_threshold = val;
    gs_memory_set_gc_status(stable, &stat);
}


void
gs_memory_set_vm_reclaim(gs_ref_memory_t * mem, bool enabled)
{
    gs_memory_gc_status_t stat;
    gs_ref_memory_t * stable = (gs_ref_memory_t *)mem->stable_memory;

    gs_memory_gc_status(mem, &stat);
    stat.enabled = enabled;
    gs_memory_set_gc_status(mem, &stat);
    gs_memory_gc_status(stable, &stat);
    stat.enabled = enabled;
    gs_memory_set_gc_status(stable, &stat);
}
# 573 "./base/gsalloc.c"
static byte *
i_alloc_bytes(gs_memory_t * mem, uint size, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *obj;
    obj_header_t **pfl;






    if ( size <= 800 && *(pfl = &imem->freelists[(size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) >> 3]) != 0 ) { obj = *pfl; *pfl = *(obj_header_t **)obj; obj[-1].d.o.size = size; obj[-1].d.o.t.type = &st_bytes; ; do { do { } while (0); } while (0);
        do { } while (0);
    } else if (size > 800 && (obj = large_freelist_alloc(imem, size)) != 0) { obj[-1].d.o.t.type = &st_bytes; ; do { do { } while (0); } while (0);
        do { } while (0);
    } else if ( (imem->cc.ctop - (byte *)(obj = (obj_header_t *)imem->cc.cbot)) >= size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + sizeof(obj_header_t) * 2) && size < imem->large_size ) { imem->cc.cbot = (byte *)obj + (size_t)((((size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)); obj->d.o.f.h.pad = 0; obj->d.o.f.h.alone = 0; obj->d.o.size = size; obj->d.o.t.type = &st_bytes; obj++; ; do { do { } while (0); } while (0);
        do { } while (0);
    } else
    {
        obj = alloc_obj(imem, size, &st_bytes, 0, cname);
        if (obj == 0)
            return 0;
        do { } while (0);
    }



    return (byte *) obj;
}
static byte *
i_alloc_bytes_immovable(gs_memory_t * mem, uint size, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *obj;






    obj = alloc_obj(imem, size, &st_bytes,
                    ALLOC_IMMOVABLE | ALLOC_DIRECT, cname);
    if (obj == 0)
        return 0;
    do { } while (0);
    return (byte *) obj;
}
static void *
i_alloc_struct(gs_memory_t * mem, gs_memory_type_ptr_t pstype,
               client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    uint size = pstype->ssize;
    obj_header_t *obj;
    obj_header_t **pfl;






    do { } while (0);
    if ( size <= 800 && *(pfl = &imem->freelists[(size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) >> 3]) != 0 ) { obj = *pfl; *pfl = *(obj_header_t **)obj; obj[-1].d.o.size = size; obj[-1].d.o.t.type = pstype; ; do { do { } while (0); } while (0);
        do { } while (0);
    } else if (size > 800 && (obj = large_freelist_alloc(imem, size)) != 0) { obj[-1].d.o.t.type = pstype; ; do { do { } while (0); } while (0);
        do { } while (0);
    } else if ( (imem->cc.ctop - (byte *)(obj = (obj_header_t *)imem->cc.cbot)) >= size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + sizeof(obj_header_t) * 2) && size < imem->large_size ) { imem->cc.cbot = (byte *)obj + (size_t)((((size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)); obj->d.o.f.h.pad = 0; obj->d.o.f.h.alone = 0; obj->d.o.size = size; obj->d.o.t.type = pstype; obj++; ; do { do { } while (0); } while (0);
        do { } while (0);
    } else
    {
        obj = alloc_obj(imem, size, pstype, 0, cname);
        if (obj == 0)
            return 0;
        do { } while (0);
    }



    return obj;
}
static void *
i_alloc_struct_immovable(gs_memory_t * mem, gs_memory_type_ptr_t pstype,
                         client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    uint size = pstype->ssize;
    obj_header_t *obj;






    do { } while (0);
    obj = alloc_obj(imem, size, pstype, ALLOC_IMMOVABLE | ALLOC_DIRECT, cname);
    do { } while (0);
    return obj;
}
static byte *
i_alloc_byte_array(gs_memory_t * mem, uint num_elements, uint elt_size,
                   client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *obj;






    obj = alloc_obj(imem, (ulong) num_elements * elt_size,
                    &st_bytes, ALLOC_DIRECT, cname);

    do { } while (0);



    return (byte *) obj;
}
static byte *
i_alloc_byte_array_immovable(gs_memory_t * mem, uint num_elements,
                             uint elt_size, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *obj;






    obj = alloc_obj(imem, (ulong) num_elements * elt_size,
                    &st_bytes, ALLOC_IMMOVABLE | ALLOC_DIRECT,
                    cname);

    do { } while (0);



    return (byte *) obj;
}
static void *
i_alloc_struct_array(gs_memory_t * mem, uint num_elements,
                     gs_memory_type_ptr_t pstype, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *obj;






    do { } while (0);







    obj = alloc_obj(imem,
                    (ulong) num_elements * pstype->ssize,
                    pstype, ALLOC_DIRECT, cname);
    do { } while (0);




    return (char *)obj;
}
static void *
i_alloc_struct_array_immovable(gs_memory_t * mem, uint num_elements,
                           gs_memory_type_ptr_t pstype, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *obj;






    do { } while (0);
    obj = alloc_obj(imem,
                    (ulong) num_elements * pstype->ssize,
                    pstype, ALLOC_IMMOVABLE | ALLOC_DIRECT, cname);
    do { } while (0);




    return (char *)obj;
}
static void *
i_resize_object(gs_memory_t * mem, void *obj, uint new_num_elements,
                client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *pp = (obj_header_t *) obj - 1;
    gs_memory_type_ptr_t pstype = pp->d.o.t.type;
    ulong old_size = ((pp)->d.o.size);
    ulong new_size = (ulong) pstype->ssize * new_num_elements;
    ulong old_size_rounded = (size_t)(((old_size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    ulong new_size_rounded = (size_t)(((new_size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    void *new_obj = ((void*)0);






    if (old_size_rounded == new_size_rounded) {
        pp->d.o.size = new_size;
        new_obj = obj;
    } else
        if ((byte *)obj + old_size_rounded == imem->cc.cbot &&
            imem->cc.ctop - (byte *)obj >= new_size_rounded ) {
            imem->cc.cbot = (byte *)obj + new_size_rounded;
            pp->d.o.size = new_size;
            new_obj = obj;
        } else
            if (new_size_rounded + sizeof(obj_header_t) <= old_size_rounded) {
                trim_obj(imem, obj, new_size, (chunk_t *)0);
                new_obj = obj;
            }
    if (new_obj) {
        do { } while (0);






        return new_obj;
    }

    new_obj = (void *)(*(mem)->procs.alloc_struct_array)(mem, new_num_elements, pstype, cname);

    if (new_obj == 0)
        return 0;
    memcpy(new_obj, obj, (((old_size) < (new_size)) ? (old_size) : (new_size)));
    ((mem)->procs.free_object(mem, obj, cname));
    return new_obj;
}
static void
i_free_object(gs_memory_t * mem, void *ptr, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    obj_header_t *pp;
    gs_memory_type_ptr_t pstype;
    gs_memory_struct_type_t saved_stype;

    void (*finalize)(const gs_memory_t *cmem, void *ptr);
    uint size, rounded_size;

    if (ptr == 0)
        return;
    pp = (obj_header_t *) ptr - 1;
    pstype = pp->d.o.t.type;
# 872 "./base/gsalloc.c"
    size = ((pp)->d.o.size);
    rounded_size = (size_t)(((size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    finalize = pstype->finalize;
    if (finalize != 0) {




        if (gs_debug['a'] || gs_debug['A'])
            saved_stype = *pstype;

        do { } while (0);


        (*finalize) (mem, ptr);

        if (gs_debug['a'] || gs_debug['A'])
            pstype = &saved_stype;
    }
    if ((byte *) ptr + rounded_size == imem->cc.cbot) {
        do { } while (0);
        do { do { } while (0); } while (0);
        imem->cc.cbot = (byte *) pp;


        if ((byte *)pp <= imem->cc.int_freed_top) {
            consolidate_chunk_free(&(imem->cc), imem);
        }
        return;
    }
    if (pp->d.o.f.h.alone) {





        chunk_locator_t cl;
# 922 "./base/gsalloc.c"
        cl.memory = imem;
        cl.cp = 0;
        if (chunk_locate_ptr(ptr, &cl)) {
            if (!imem->is_controlled)
                alloc_free_chunk(cl.cp, imem);
            return;
        }

    }
    if (rounded_size >= sizeof(obj_header_t *)) {





        imem->cfreed.memory = imem;
        if ((((&imem->cfreed)->cp != 0 && ((((ptr_ord_t)((const byte *)(ptr)) >= (ptr_ord_t)(((&imem->cfreed)->cp)->cbase)) && ((ptr_ord_t)((const byte *)(ptr)) < (ptr_ord_t)(((&imem->cfreed)->cp)->cend))) && !(((&imem->cfreed)->cp)->inner_count != 0 && (((ptr_ord_t)((const byte *)(ptr)) >= (ptr_ord_t)(((&imem->cfreed)->cp)->cbot)) && ((ptr_ord_t)((const byte *)(ptr)) < (ptr_ord_t)(((&imem->cfreed)->cp)->ctop)))))) || chunk_locate_ptr(ptr, &imem->cfreed))) {
            obj_header_t **pfl;

            if (size > 800) {
                pfl = &imem->freelists[((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1)];
                if (rounded_size > imem->largest_free_size)
                    imem->largest_free_size = rounded_size;
            } else {
                pfl = &imem->freelists[(size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) >>
                                      3];
            }





            if (imem->cfreed.cp->chead == imem->cc.chead) {
                if ((byte *)pp >= imem->cc.int_freed_top) {
                    imem->cc.int_freed_top = (byte *)ptr + rounded_size;
                }
            }
            else {
                if ((byte *)pp >= imem->cfreed.cp->int_freed_top) {
                    imem->cfreed.cp->int_freed_top = (byte *)ptr + rounded_size;
                }
            }
            pp->d.o.t.type = &st_free;
            ((pp)->d.o.f.m.smark = (((uint)1 << ((1 << 2) * 8 - 1)) - 1));
            do { do { } while (0); } while (0);
            *(obj_header_t **) ptr = *pfl;
            *pfl = (obj_header_t *) ptr;
            do { } while (0);

            return;
        }

    } else {
        pp->d.o.t.type = &st_free;
        do { do { } while (0); } while (0);
    }
    do { } while (0);
    imem->lost.objects += (size_t)((((size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
}
static byte *
i_alloc_string(gs_memory_t * mem, uint nbytes, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    byte *str;





    chunk_t *cp_orig = imem->pcc;

    nbytes += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));





    if (cp_orig == 0) {

        cp_orig = imem->pcc = imem->cfirst;
        alloc_open_chunk(imem);
    }
top:
    if (imem->cc.ctop - imem->cc.cbot > nbytes) {
        do { } while (0);


        str = imem->cc.ctop -= nbytes;
        do { do { } while (0); } while (0);
        str += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
                          ;
        return str;
    }

    {
        chunk_t *cp = imem->cc.cnext;

        alloc_close_chunk(imem);
        if (cp == 0)
            cp = imem->cfirst;
        imem->pcc = cp;
        alloc_open_chunk(imem);
        if (cp != cp_orig)
            goto top;
    }
    if (nbytes > ((((unsigned int)~0 + (unsigned int)0) - sizeof(chunk_head_t)) / ((1 << (2 + 4)) + ((1 << (2 + 4)) / 8) + sizeof(string_reloc_offset))) *
        (1 << (2 + 4))
        ) {
        return 0;
    }
    if (nbytes >= imem->large_size) {
        return i_alloc_string_immovable(mem, nbytes, cname);
    } else {
        chunk_t *cp =
            alloc_acquire_chunk(imem, (ulong) imem->chunk_size, ((bool)1), "chunk");

        if (cp == 0)
            return 0;
        alloc_close_chunk(imem);
        imem->pcc = cp;
        imem->cc = *imem->pcc;
        do { do { } while (0); } while (0);

        goto top;
    }
}
static byte *
i_alloc_string_immovable(gs_memory_t * mem, uint nbytes, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    byte *str;
    uint asize;
    chunk_t *cp;

    nbytes += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));






    asize = (((nbytes) + ((1 << (2 + 4)) - 1)) / (1 << (2 + 4)) * ((1 << (2 + 4)) + ((1 << (2 + 4)) / 8) + sizeof(string_reloc_offset))) + sizeof(chunk_head_t);
    cp = alloc_acquire_chunk(imem, (ulong) asize, ((bool)1),
                                      "large string chunk");

    if (cp == 0)
        return 0;
    str = cp->ctop = cp->climit - nbytes;
    do { } while (0);


    do { do { } while (0); } while (0);
    str += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
                      ;

    return str;
}

static byte *
i_resize_string(gs_memory_t * mem, byte * data, uint old_num, uint new_num,
                client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    byte *ptr;

    if (old_num == new_num)
        return data;

    data -= (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
    old_num += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
    new_num += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));

    if ( data == imem->cc.ctop &&
        (new_num < old_num ||
         imem->cc.ctop - imem->cc.cbot > new_num - old_num)
        ) {
        ptr = data + old_num - new_num;
        do { } while (0);




        imem->cc.ctop = ptr;
        memmove(ptr, data, (((old_num) < (new_num)) ? (old_num) : (new_num)));







        ptr += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
                          ;
    } else
        if (new_num < old_num) {

            ptr = data;
            imem->lost.strings += old_num - new_num;
            do { do { } while (0); } while (0);

            do { } while (0);


            ptr += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
                              ;
        } else {
            data += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
            old_num -= (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
            new_num -= (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));

            ptr = (*(mem)->procs.alloc_string)(mem, new_num, cname);
            if (ptr == 0)
                return 0;
            memcpy(ptr, data, (((old_num) < (new_num)) ? (old_num) : (new_num)));
            (*(mem)->procs.free_string)(mem, data, old_num, cname);
        }

    return ptr;
}

static void
i_free_string(gs_memory_t * mem, byte * data, uint nbytes,
              client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;

    if (data) {
        data -= (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
        nbytes += (sizeof(obj_header_t) - ((int) ( (char *)&((obj_header_t *)0)->d.o.hdr_id - (char *)((obj_header_t *)0) )));
        if (data == imem->cc.ctop) {
            do { } while (0);


            imem->cc.ctop += nbytes;
        } else {
            do { } while (0);


            imem->lost.strings += nbytes;
        }
        do { do { } while (0); } while (0);
    }
}

static gs_memory_t *
i_stable(gs_memory_t *mem)
{
    return mem->stable_memory;
}

static void
i_status(gs_memory_t * mem, gs_memory_status_t * pstat)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    ulong unused = imem->lost.refs + imem->lost.strings;
    ulong inner = 0;

    alloc_close_chunk(imem);



    {
        const chunk_t *cp = imem->cfirst;

        while (cp != 0) {
            unused += cp->ctop - cp->cbot;
            if (cp->outer)
                inner += cp->cend - (byte *) cp->chead;
            cp = cp->cnext;
        }
    }
    unused += compute_free_objects(imem);
    pstat->used = imem->allocated + inner - unused +
        imem->previous_status.used;
    pstat->allocated = imem->allocated +
        imem->previous_status.allocated;
    pstat->is_thread_safe = ((bool)0);
}

static void
i_enable_free(gs_memory_t * mem, bool enable)
{
    if (enable)
        mem->procs.free_object = i_free_object,
            mem->procs.free_string = i_free_string;
    else
        mem->procs.free_object = gs_ignore_free_object,
            mem->procs.free_string = gs_ignore_free_string;
}




static ulong
compute_free_objects(gs_ref_memory_t * mem)
{
    ulong unused = mem->lost.objects;
    int i;


    for (i = 0; i < (((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) + 1); i++) {
        const obj_header_t *pfree;

        for (pfree = mem->freelists[i]; pfree != 0;
             pfree = *(const obj_header_t * const *)pfree
            )
            unused += (size_t)(((pfree[-1].d.o.size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    }
    return unused;
}


static obj_header_t *
large_freelist_alloc(gs_ref_memory_t *mem, uint size)
{


    uint aligned_size = (size_t)(((size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    uint aligned_min_size = aligned_size + sizeof(obj_header_t);
    uint aligned_max_size =
        aligned_min_size + (size_t)(((aligned_min_size / 8) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    obj_header_t *best_fit = 0;
    obj_header_t **best_fit_prev = ((void*)0);
    uint best_fit_size = ((unsigned int)~0 + (unsigned int)0);
    obj_header_t *pfree;
    obj_header_t **ppfprev = &mem->freelists[((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1)];
    uint largest_size = 0;

    if (aligned_size > mem->largest_free_size)
        return 0;

    while ((pfree = *ppfprev) != 0) {
        uint free_size = (size_t)(((pfree[-1].d.o.size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));

        if (free_size == aligned_size ||
            (free_size >= aligned_min_size && free_size < best_fit_size)
            ) {
            best_fit = pfree;
            best_fit_prev = ppfprev;
            best_fit_size = pfree[-1].d.o.size;
            if (best_fit_size <= aligned_max_size)
                break;
        }
        ppfprev = (obj_header_t **) pfree;
        if (free_size > largest_size)
            largest_size = free_size;
    }
    if (best_fit == 0) {





        mem->largest_free_size = largest_size;
        return 0;
    }


    *best_fit_prev = *(obj_header_t **)best_fit;
    trim_obj(mem, best_fit, aligned_size, (chunk_t *)0);


    best_fit[-1].d.o.size = size;

    return best_fit;
}


static obj_header_t *
alloc_obj(gs_ref_memory_t *mem, ulong lsize, gs_memory_type_ptr_t pstype,
          alloc_flags_t flags, client_name_t cname)
{
    obj_header_t *ptr;

    if (lsize >= mem->large_size || (flags & ALLOC_IMMOVABLE)) {




        ulong asize =
            ((lsize + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) +
            sizeof(obj_header_t);
        chunk_t *cp =
            alloc_acquire_chunk(mem, asize + sizeof(chunk_head_t), ((bool)0),
                                "large object chunk");

        if (

            asize > ((unsigned int)~0 + (unsigned int)0)



            )
            return 0;
        if (cp == 0)
            return 0;
        ptr = (obj_header_t *) cp->cbot;
        cp->cbot += asize;
        ptr->d.o.f.h.pad = 0;
        ptr->d.o.f.h.alone = 1;
        ptr->d.o.size = lsize;
    } else {




        chunk_t *cp_orig = mem->pcc;
        uint asize = (size_t)(((((uint) lsize) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
        bool allocate_success = ((bool)0);

        if (lsize > 800 && (flags & ALLOC_DIRECT)) {

            if ((ptr = large_freelist_alloc(mem, lsize)) != 0) {
                --ptr;
                goto done;
            }
        }

        if (cp_orig == 0) {

            cp_orig = mem->pcc = mem->cfirst;
            alloc_open_chunk(mem);
        }





        do {
            if (((&mem->cc)->ctop - (byte *) (ptr = (obj_header_t *) (&mem->cc)->cbot) > asize + sizeof(obj_header_t))) {
                allocate_success = ((bool)1);
                break;
            } else if (mem->is_controlled) {

                (((gs_memory_t *)mem)->procs.consolidate_free((gs_memory_t *)mem));
                if (((&mem->cc)->ctop - (byte *) (ptr = (obj_header_t *) (&mem->cc)->cbot) > asize + sizeof(obj_header_t))) {
                    allocate_success = ((bool)1);
                    break;
                }
            }

            {
                chunk_t *cp = mem->cc.cnext;

                alloc_close_chunk(mem);
                if (cp == 0)
                    cp = mem->cfirst;
                mem->pcc = cp;
                alloc_open_chunk(mem);
            }
        } while (mem->pcc != cp_orig);
# 1402 "./base/gsalloc.c"
        if (!allocate_success) {

            chunk_t *cp =
                alloc_add_chunk(mem, (ulong)mem->chunk_size, "chunk");

            if (cp) {

                ptr = (obj_header_t *)cp->cbot;
                allocate_success = ((bool)1);
            }
        }







        if (allocate_success)
            mem->cc.cbot = (byte *) ptr + asize;
        else if (!mem->is_controlled ||
                 (ptr = scavenge_low_free(mem, (uint)lsize)) == 0)
            return 0;
        ptr->d.o.f.h.pad = 0;
        ptr->d.o.f.h.alone = 0;
        ptr->d.o.size = (uint) lsize;
    }
done:
    ptr->d.o.t.type = pstype;



    ptr++;
                      ;
    do { do { } while (0); } while (0);
    return ptr;
}






static void
consolidate_chunk_free(chunk_t *cp, gs_ref_memory_t *mem)
{
    obj_header_t *begin_free = 0;

    cp->int_freed_top = cp->cbase;
    { obj_header_t *pre = (obj_header_t *)((cp)->cbase); obj_header_t *end = (obj_header_t *)((cp)->cbot); uint size; for ( ; pre < end; pre = (obj_header_t *)((char *)pre + (size_t)((((size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1))) ) {
    size = ((pre)->d.o.size); {
        if (pre->d.o.t.type == &st_free) {
            if (begin_free == 0)
                begin_free = pre;
        } else {
            if (begin_free)
                cp->int_freed_top = (byte *)pre;
            begin_free = 0;
        }
    } } }
    if (begin_free) {


        remove_range_from_freelist(mem, begin_free, cp->cbot);
        do { } while (0);



        cp->cbot = (byte *) begin_free;
    }
}


void
ialloc_consolidate_free(gs_ref_memory_t *mem)
{
    chunk_t *cp;
    chunk_t *cprev;

    alloc_close_chunk(mem);


    for (cp = mem->clast; cp != 0; cp = cprev) {
        cprev = cp->cprev;
        consolidate_chunk_free(cp, mem);
        if (cp->cbot == cp->cbase && cp->ctop == cp->climit) {

            chunk_t *cnext = cp->cnext;

            if (!mem->is_controlled) {
                alloc_free_chunk(cp, mem);
                if (mem->pcc == cp)
                    mem->pcc =
                        (cnext == 0 ? cprev : cprev == 0 ? cnext :
                         cprev->cbot - cprev->ctop >
                         cnext->cbot - cnext->ctop ? cprev :
                         cnext);
            }
        }
    }
    alloc_open_chunk(mem);
}
static void
i_consolidate_free(gs_memory_t *mem)
{
    ialloc_consolidate_free((gs_ref_memory_t *)mem);
}


static obj_header_t *
scavenge_low_free(gs_ref_memory_t *mem, unsigned request_size)
{

    obj_header_t *found_pre = 0;


    obj_header_t *begin_free = 0;
    uint found_free;
    uint request_size_rounded = (size_t)((((request_size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    uint need_free = request_size_rounded + sizeof(obj_header_t);
    chunk_t *cp;

    for (cp = mem->cfirst; cp != 0; cp = cp->cnext) {
        begin_free = 0;
        found_free = 0;
        { obj_header_t *pre = (obj_header_t *)((cp)->cbase); obj_header_t *end = (obj_header_t *)((cp)->cbot); uint size; for ( ; pre < end; pre = (obj_header_t *)((char *)pre + (size_t)((((size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1))) ) {
        size = ((pre)->d.o.size); {
            if (pre->d.o.t.type == &st_free) {
                if (begin_free == 0) {
                    found_free = 0;
                    begin_free = pre;
                }
                found_free += (size_t)((((((pre)->d.o.size)) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
                if (begin_free != 0 && found_free >= need_free)
                    break;
            } else
                begin_free = 0;
        } } }


        if (begin_free != 0 && found_free >= need_free) {


            remove_range_from_freelist(mem, (char*)begin_free,
                                       (char*)begin_free + found_free);


            found_pre = begin_free;
            found_pre->d.o.t.type = &st_free;
            found_pre->d.o.size = found_free - sizeof(obj_header_t);


            trim_obj(mem, found_pre + 1, request_size, cp);
        }
    }
    return found_pre;
}


static void
remove_range_from_freelist(gs_ref_memory_t *mem, void* bottom, void* top)
{
    int num_free[(((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) + 1)];
    int smallest = (((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) + 1), largest = -1;
    const obj_header_t *cur;
    uint size;
    int i;
    uint removed = 0;






    for (cur = bottom; cur != top;
         cur = (const obj_header_t *)
             ((const byte *)cur + (size_t)((((size) + sizeof(obj_header_t)) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)))
        ) {
        size = cur->d.o.size;
        i = (size > 800 ? ((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) :
             (size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) >> 3);
        if (i < smallest) {




            if (i == 0)
                continue;
            if (smallest < (((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1) + 1))
                memset(&num_free[i], 0, (smallest - i) * sizeof(int));
            else
                num_free[i] = 0;
            smallest = i;
        }
        if (i > largest) {
            if (largest >= 0)
                memset(&num_free[largest + 1], 0, (i - largest) * sizeof(int));
            largest = i;
        }
        num_free[i]++;
    }







    for (i = smallest; i <= largest; i++) {
        int count = num_free[i];
        obj_header_t *pfree;
        obj_header_t **ppfprev;

        if (!count)
            continue;
        ppfprev = &mem->freelists[i];
        for (;;) {
            pfree = *ppfprev;
            if (((ptr_ord_t)(pfree) >= (ptr_ord_t)(bottom)) && ((ptr_ord_t)(pfree) < (ptr_ord_t)(top))) {

                *ppfprev = *(obj_header_t **) pfree;
                removed += (size_t)(((pfree[-1].d.o.size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
                if (!--count)
                    break;
            } else
                ppfprev = (obj_header_t **) pfree;
        }
    }
    mem->lost.objects -= (char*)top - (char*)bottom - removed;
}


static void
trim_obj(gs_ref_memory_t *mem, obj_header_t *obj, uint size, chunk_t *cp)


{
    uint rounded_size = (size_t)(((size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    obj_header_t *pre_obj = obj - 1;
    obj_header_t *excess_pre = (obj_header_t*)((char*)obj + rounded_size);
    uint old_rounded_size = (size_t)(((pre_obj->d.o.size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));
    uint excess_size = old_rounded_size - rounded_size - sizeof(obj_header_t);


    pre_obj->d.o.size = size;
    if (old_rounded_size == rounded_size)
        return;




    if (pre_obj->d.o.f.h.alone) {
        if (!cp) {
            mem->cfreed.memory = mem;
            if ((((&mem->cfreed)->cp != 0 && ((((ptr_ord_t)((const byte *)(obj)) >= (ptr_ord_t)(((&mem->cfreed)->cp)->cbase)) && ((ptr_ord_t)((const byte *)(obj)) < (ptr_ord_t)(((&mem->cfreed)->cp)->cend))) && !(((&mem->cfreed)->cp)->inner_count != 0 && (((ptr_ord_t)((const byte *)(obj)) >= (ptr_ord_t)(((&mem->cfreed)->cp)->cbot)) && ((ptr_ord_t)((const byte *)(obj)) < (ptr_ord_t)(((&mem->cfreed)->cp)->ctop)))))) || chunk_locate_ptr(obj, &mem->cfreed))) {
                cp = mem->cfreed.cp;
            }
        }
        if (cp) {







                {
                    cp->cbot = (byte *)excess_pre;
                    return;
                }
        }




        pre_obj->d.o.f.h.pad = 0;
        pre_obj->d.o.f.h.alone = 0;
    }

    excess_pre->d.o.t.type = &st_free;
    excess_pre->d.o.size = excess_size;
    excess_pre->d.o.f.h.pad = 0;
    excess_pre->d.o.f.h.alone = 0;
    if (excess_size >= ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)) {

        obj_header_t **pfl;

        if ((byte *)excess_pre >= mem->cc.int_freed_top)
            mem->cc.int_freed_top = (byte *)excess_pre + excess_size;
        if (excess_size <= 800)
            pfl = &mem->freelists[(excess_size + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) >>
                                 3];
        else {
            uint rounded_size = (size_t)(((excess_size) + (((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1)-1)) & -((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1));

            pfl = &mem->freelists[((800 + ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) - 1) / ((((((8 - 1) | (8 - 1) | (8 - 1)) + 1) - 1) | ((1 << 3) - 1) | ((1 << 1) - 1)) + 1) + 1)];
            if (rounded_size > mem->largest_free_size)
                mem->largest_free_size = rounded_size;
        }
        *(obj_header_t **) (excess_pre + 1) = *pfl;
        *pfl = excess_pre + 1;
        mem->cfreed.memory = mem;
    } else {

        mem->lost.objects += excess_size + sizeof(obj_header_t);
    }
}




static int
i_register_root(gs_memory_t * mem, gs_gc_root_t * rp, gs_ptr_type_t ptype,
                void **up, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;

    if (rp == ((void*)0)) {
        rp = gs_raw_alloc_struct_immovable(imem->non_gc_memory, &st_gc_root_t,
                                           "i_register_root");
        if (rp == 0)
            return ((-25));
        rp->free_on_unregister = ((bool)1);
    } else
        rp->free_on_unregister = ((bool)0);
    do { } while (0);

    rp->ptype = ptype;
    rp->p = up;
    rp->next = imem->roots;
    imem->roots = rp;
    return 0;
}


static void
i_unregister_root(gs_memory_t * mem, gs_gc_root_t * rp, client_name_t cname)
{
    gs_ref_memory_t * const imem = (gs_ref_memory_t *)mem;
    gs_gc_root_t **rpp = &imem->roots;

    do { } while (0);

    while (*rpp != rp)
        rpp = &(*rpp)->next;
    *rpp = (*rpp)->next;
    if (rp->free_on_unregister)
        ((imem->non_gc_memory)->procs.free_object(imem->non_gc_memory, rp, "i_unregister_root"));
}



static const gc_ptr_element_t chunk_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((chunk_t *)0)->cprev - (char *)((chunk_t *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((chunk_t *)0)->cnext - (char *)((chunk_t *)0) )) } }; static const gc_struct_data_t chunk_reloc_ptrs = { (sizeof(chunk_enum_ptrs) / sizeof((chunk_enum_ptrs)[0])), 0, 0, chunk_enum_ptrs }; const gs_memory_struct_type_t st_chunk = { sizeof(chunk_t), "chunk_t", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &chunk_reloc_ptrs };



void
alloc_link_chunk(chunk_t * cp, gs_ref_memory_t * imem)
{
    byte *cdata = cp->cbase;
    chunk_t *icp;
    chunk_t *prev;






    if (imem->clast && ((ptr_ord_t)(cdata) >= (ptr_ord_t)(imem->clast->ctop)))
        icp = 0;
    else
        for (icp = imem->cfirst; icp != 0 && ((ptr_ord_t)(cdata) >= (ptr_ord_t)(icp->ctop));
             icp = icp->cnext
            );
    cp->cnext = icp;
    if (icp == 0) {
        prev = imem->clast;
        imem->clast = cp;
    } else {
        prev = icp->cprev;
        icp->cprev = cp;
    }
    cp->cprev = prev;
    if (prev == 0)
        imem->cfirst = cp;
    else
        prev->cnext = cp;
    if (imem->pcc != 0) {
        imem->cc.cnext = imem->pcc->cnext;
        imem->cc.cprev = imem->pcc->cprev;
    }
}


static chunk_t *
alloc_add_chunk(gs_ref_memory_t * mem, ulong csize, client_name_t cname)
{
    chunk_t *cp = alloc_acquire_chunk(mem, csize, ((bool)1), cname);

    if (cp) {
        alloc_close_chunk(mem);
        mem->pcc = cp;
        mem->cc = *mem->pcc;
        do { do { } while (0); } while (0);

    }
    return cp;
}





static chunk_t *
alloc_acquire_chunk(gs_ref_memory_t * mem, ulong csize, bool has_strings,
                    client_name_t cname)
{
    gs_memory_t *parent = mem->non_gc_memory;
    chunk_t *cp;
    byte *cdata;



    if (csize != (uint) csize)
        return 0;

    cp = gs_raw_alloc_struct_immovable(parent, &st_chunk, cname);

    if( mem->gc_status.psignal != 0) {

        if ((ulong) (mem->allocated) >= mem->limit) {
            mem->gc_status.requested += csize;
            if (mem->limit >= mem->gc_status.max_vm) {
                ((parent)->procs.free_object(parent, cp, cname));
                return 0;
            }
            do { } while (0);



            *mem->gc_status.psignal = mem->gc_status.signal_value;
        }
    }
    cdata = ((parent)->procs.alloc_bytes_immovable(parent, csize, cname));
    if (cp == 0 || cdata == 0) {
        ((parent)->procs.free_object(parent, cdata, cname));
        ((parent)->procs.free_object(parent, cp, cname));
        mem->gc_status.requested = csize;
        return 0;
    }
    alloc_init_chunk(cp, cdata, cdata + csize, has_strings, (chunk_t *) 0);
    alloc_link_chunk(cp, mem);
    mem->allocated += st_chunk.ssize + csize;
    return cp;
}




void
alloc_init_chunk(chunk_t * cp, byte * bot, byte * top, bool has_strings,
                 chunk_t * outer)
{
    byte *cdata = bot;

    if (outer != 0)
        outer->inner_count++;
    cp->chead = (chunk_head_t *) cdata;
    cdata += sizeof(chunk_head_t);
    cp->cbot = cp->cbase = cp->int_freed_top = cdata;
    cp->cend = top;
    cp->rcur = 0;
    cp->rtop = 0;
    cp->outer = outer;
    cp->inner_count = 0;
    cp->has_refs = ((bool)0);
    cp->sbase = cdata;
    if (has_strings && top - cdata >= ((1 << (2 + 4)) + ((1 << (2 + 4)) / 8) + sizeof(string_reloc_offset)) + sizeof(long) - 1) {




        uint nquanta = ((top - cdata) / ((1 << (2 + 4)) + ((1 << (2 + 4)) / 8) + sizeof(string_reloc_offset)));

        cp->climit = cdata + nquanta * (1 << (2 + 4));
        cp->smark = cp->climit;
        cp->smark_size = ((nquanta) * ((1 << (2 + 4)) / 8));
        cp->sreloc =
            (string_reloc_offset *) (cp->smark + cp->smark_size);
        cp->sfree1 = (uint *) cp->sreloc;
    } else {

        cp->climit = cp->cend;
        cp->sfree1 = 0;
        cp->smark = 0;
        cp->smark_size = 0;
        cp->sreloc = 0;
    }
    cp->ctop = cp->climit;
    alloc_init_free_strings(cp);
}


void
alloc_init_free_strings(chunk_t * cp)
{
    if (cp->sfree1)
        memset(cp->sfree1, 0, (((cp->climit - ((byte *)(cp)->chead) + 255) >> 8) * sizeof(*cp->sfree1)));
    cp->sfree = 0;
}



void
alloc_close_chunk(gs_ref_memory_t * mem)
{
    if (mem->pcc != 0) {
        *mem->pcc = mem->cc;






    }
}


void
alloc_open_chunk(gs_ref_memory_t * mem)
{
    if (mem->pcc != 0) {
        mem->cc = *mem->pcc;






    }
}


void
alloc_unlink_chunk(chunk_t * cp, gs_ref_memory_t * mem)
{
# 1961 "./base/gsalloc.c"
    if (cp->cprev == 0)
        mem->cfirst = cp->cnext;
    else
        cp->cprev->cnext = cp->cnext;
    if (cp->cnext == 0)
        mem->clast = cp->cprev;
    else
        cp->cnext->cprev = cp->cprev;
    if (mem->pcc != 0) {
        mem->cc.cnext = mem->pcc->cnext;
        mem->cc.cprev = mem->pcc->cprev;
        if (mem->pcc == cp) {
            mem->pcc = 0;
            mem->cc.cbot = mem->cc.ctop = 0;
        }
    }
}







void
alloc_free_chunk(chunk_t * cp, gs_ref_memory_t * mem)
{
    gs_memory_t *parent = mem->non_gc_memory;
    byte *cdata = (byte *)cp->chead;
    ulong csize = (byte *)cp->cend - cdata;

    alloc_unlink_chunk(cp, mem);
    mem->allocated -= st_chunk.ssize;
    if (mem->cfreed.cp == cp)
        mem->cfreed.cp = 0;
    if (cp->outer == 0) {
        mem->allocated -= csize;
        ((parent)->procs.free_object(parent, cdata, "alloc_free_chunk(data)"));
    } else {
        cp->outer->inner_count--;
        do { do { } while (0); } while (0);
    }
    ((parent)->procs.free_object(parent, cp, "alloc_free_chunk(chunk struct)"));
}






bool
chunk_locate_ptr(const void *ptr, chunk_locator_t * clp)
{
    register chunk_t *cp = clp->cp;

    if (cp == 0) {
        cp = clp->memory->cfirst;
        if (cp == 0)
            return ((bool)0);

        if (((ptr_ord_t)(ptr) >= (ptr_ord_t)(clp->memory->clast->cbase)))
            cp = clp->memory->clast;
    }
    if (((ptr_ord_t)(ptr) < (ptr_ord_t)(cp->cbase))) {
        do {
            cp = cp->cprev;
            if (cp == 0)
                return ((bool)0);
        }
        while (((ptr_ord_t)(ptr) < (ptr_ord_t)(cp->cbase)));
        if (((ptr_ord_t)(ptr) >= (ptr_ord_t)(cp->cend)))
            return ((bool)0);
    } else {
        while (((ptr_ord_t)(ptr) >= (ptr_ord_t)(cp->cend))) {
            cp = cp->cnext;
            if (cp == 0)
                return ((bool)0);
        }
        if (((ptr_ord_t)(ptr) < (ptr_ord_t)(cp->cbase)))
            return ((bool)0);
    }
    clp->cp = cp;
    return !((cp)->inner_count != 0 && (((ptr_ord_t)((const byte *)(ptr)) >= (ptr_ord_t)((cp)->cbot)) && ((ptr_ord_t)((const byte *)(ptr)) < (ptr_ord_t)((cp)->ctop))));
}
