# 1 "./base/gsbitops.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gsbitops.c" 2
# 18 "./base/gsbitops.c"
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
# 19 "./base/gsbitops.c" 2
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
# 20 "./base/gsbitops.c" 2
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
# 21 "./base/gsbitops.c" 2
# 1 "./base/gserrors.h" 1
# 50 "./base/gserrors.h"
int gs_log_error(int, const char *, int);
# 88 "./base/gserrors.h"
const char *gs_errstr(int code);
# 189 "./base/gserrors.h"
int gs_throw_imp(const char *func, const char *file, int line,
        int op, int code, const char *fmt, ...) __attribute__((__format__ (__printf__, 6, 7)));
# 22 "./base/gsbitops.c" 2
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
# 23 "./base/gsbitops.c" 2
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
# 24 "./base/gsbitops.c" 2
# 1 "./base/gxbitops.h" 1
# 22 "./base/gxbitops.h"
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
# 23 "./base/gxbitops.h" 2
# 108 "./base/gxbitops.h"
extern const bits16 mono_copy_masks[17];




extern const bits32 mono_fill_masks[33];
# 25 "./base/gsbitops.c" 2
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
# 58 "./base/gxcindex.h"
enum { ARCH_SIZEOF_GX_COLOR_INDEX__must_equal__sizeof_GX_COLOR_INDEX_TYPE = 1/!!(8 == sizeof(unsigned long int)) };
typedef unsigned long int gx_color_index_data;
# 87 "./base/gxcindex.h"
typedef gx_color_index_data gx_color_index;
# 26 "./base/gsbitops.c" 2






const bits16 mono_copy_masks[17] = {
    0xffff, 0xff7f, 0xff3f, 0xff1f,
    0xff0f, 0xff07, 0xff03, 0xff01,
    0xff00, 0x7f00, 0x3f00, 0x1f00,
    0x0f00, 0x0700, 0x0300, 0x0100,
    0x0000
};
const bits32 mono_fill_masks[33] = {


    ((~0xff | (0xff >> (0 & 7))) << (0 & -8)),((~0xff | (0xff >> (1 & 7))) << (1 & -8)),((~0xff | (0xff >> (2 & 7))) << (2 & -8)),((~0xff | (0xff >> (3 & 7))) << (3 & -8)),((~0xff | (0xff >> (4 & 7))) << (4 & -8)),((~0xff | (0xff >> (5 & 7))) << (5 & -8)),((~0xff | (0xff >> (6 & 7))) << (6 & -8)),((~0xff | (0xff >> (7 & 7))) << (7 & -8)),
    ((~0xff | (0xff >> (8 & 7))) << (8 & -8)),((~0xff | (0xff >> (9 & 7))) << (9 & -8)),((~0xff | (0xff >> (10 & 7))) << (10 & -8)),((~0xff | (0xff >> (11 & 7))) << (11 & -8)),((~0xff | (0xff >> (12 & 7))) << (12 & -8)),((~0xff | (0xff >> (13 & 7))) << (13 & -8)),((~0xff | (0xff >> (14 & 7))) << (14 & -8)),((~0xff | (0xff >> (15 & 7))) << (15 & -8)),
    ((~0xff | (0xff >> (16 & 7))) << (16 & -8)),((~0xff | (0xff >> (17 & 7))) << (17 & -8)),((~0xff | (0xff >> (18 & 7))) << (18 & -8)),((~0xff | (0xff >> (19 & 7))) << (19 & -8)),((~0xff | (0xff >> (20 & 7))) << (20 & -8)),((~0xff | (0xff >> (21 & 7))) << (21 & -8)),((~0xff | (0xff >> (22 & 7))) << (22 & -8)),((~0xff | (0xff >> (23 & 7))) << (23 & -8)),
    ((~0xff | (0xff >> (24 & 7))) << (24 & -8)),((~0xff | (0xff >> (25 & 7))) << (25 & -8)),((~0xff | (0xff >> (26 & 7))) << (26 & -8)),((~0xff | (0xff >> (27 & 7))) << (27 & -8)),((~0xff | (0xff >> (28 & 7))) << (28 & -8)),((~0xff | (0xff >> (29 & 7))) << (29 & -8)),((~0xff | (0xff >> (30 & 7))) << (30 & -8)),((~0xff | (0xff >> (31 & 7))) << (31 & -8)),
    0

};
# 59 "./base/gsbitops.c"
void
bits_fill_rectangle(byte * dest, int dest_bit, uint draster,
                    uint pattern, int width_bits, int height)
{
    uint bit;
    uint right_mask;
    int line_count = height;
    uint *ptr;
    int last_bit;




    dest += (dest_bit >> 3) & -(sizeof(uint) == 1 ? 1: sizeof(uint) == sizeof(short) ? 2 : sizeof(uint) == sizeof(int) ? 4 : 8);
    ptr = (uint *) dest;
    bit = dest_bit & ((sizeof(uint) == 1 ? 1: sizeof(uint) == sizeof(short) ? 2 : sizeof(uint) == sizeof(int) ? 4 : 8)*8-1);
    last_bit = width_bits + bit - ((((int)(sizeof(uint)))*8) + 1);

    if (last_bit < 0) {
        (right_mask = ~mono_fill_masks[(width_bits) + (bit)] & mono_fill_masks[bit]);
        if (pattern == 0)
            do { *ptr &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
        else if (pattern == (uint)(-1))
            do { *ptr |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
        else
            do { *ptr = (*ptr & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );

    } else {
        uint mask;
        int last = last_bit >> ((((int)(sizeof(uint))) == 8 ? 3 : ((int)(sizeof(uint)))>>1)+3);

        (mask = mono_fill_masks[bit]);
        (right_mask = ~mono_fill_masks[(last_bit & ((((int)(sizeof(uint)))*8)-1)) + 1]);
        switch (last) {
            case 0:
                if (pattern == 0)
                    do { *ptr &= ~mask; ptr[1] &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
                else if (pattern == (uint)(-1))
                    do { *ptr |= mask; ptr[1] |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
                else
                    do { *ptr = (*ptr & ~mask) | (pattern & mask); ptr[1] = (ptr[1] & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                break;
            case 1:
                if (pattern == 0)
                    do { *ptr &= ~mask; ptr[1] = 0; ptr[2] &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                else if (pattern == (uint)(-1))
                    do { *ptr |= mask; ptr[1] = ~(uint) 0; ptr[2] |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                else
                    do { *ptr = (*ptr & ~mask) | (pattern & mask); ptr[1] = pattern; ptr[2] = (ptr[2] & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                break;
            default:{
                    uint byte_count = (last_bit >> 3) & -((int)(sizeof(uint)));

                    if (pattern == 0)
                        do { *ptr &= ~mask; memset(ptr + 1, 0, byte_count); ptr[last + 1] &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                    else if (pattern == (uint)(-1))
                        do { *ptr |= mask; memset(ptr + 1, 0xff, byte_count); ptr[last + 1] |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                    else
                        do { *ptr = (*ptr & ~mask) | (pattern & mask); memset(ptr + 1, (byte) pattern, byte_count); ptr[last + 1] = (ptr[last + 1] & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );




                }
        }
    }

}







void
bits_fill_rectangle_masked(byte * dest, int dest_bit, uint draster,
                    uint pattern, uint src_mask,
                    int width_bits, int height)
{
    uint bit;
    uint right_mask;
    int line_count = height;
    uint *ptr;
    int last_bit;




    dest += (dest_bit >> 3) & -(sizeof(uint) == 1 ? 1: sizeof(uint) == sizeof(short) ? 2 : sizeof(uint) == sizeof(int) ? 4 : 8);
    ptr = (uint *) dest;
    bit = dest_bit & ((sizeof(uint) == 1 ? 1: sizeof(uint) == sizeof(short) ? 2 : sizeof(uint) == sizeof(int) ? 4 : 8)*8-1);
    last_bit = width_bits + bit - ((((int)(sizeof(uint)))*8) + 1);

    if (last_bit < 0) {
        (right_mask = ~mono_fill_masks[(width_bits) + (bit)] & mono_fill_masks[bit]);
        right_mask &= ~src_mask;
        if (pattern == 0)
            do { *ptr &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
        else if (pattern == (uint)(-1))
            do { *ptr |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
        else
            do { *ptr = (*ptr & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );

    } else {
        uint mask;
        int last = last_bit >> ((((int)(sizeof(uint))) == 8 ? 3 : ((int)(sizeof(uint)))>>1)+3);

        (mask = mono_fill_masks[bit]);
        (right_mask = ~mono_fill_masks[(last_bit & ((((int)(sizeof(uint)))*8)-1)) + 1]);
        mask &= ~src_mask;
        right_mask &= ~src_mask;
        switch (last) {
            case 0:
                if (pattern == 0)
                    do { *ptr &= ~mask; ptr[1] &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
                else if (pattern == (uint)(-1))
                    do { *ptr |= mask; ptr[1] |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );
                else
                    do { *ptr = (*ptr & ~mask) | (pattern & mask); ptr[1] = (ptr[1] & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                break;
            case 1:
                if (pattern == 0)
                    do { *ptr &= ~mask; ptr[1] &= src_mask; ptr[2] &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                else if (pattern == (uint)(-1))
                    do { *ptr |= mask; ptr[1] |= ~src_mask; ptr[2] |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                else
                    do { *ptr = (*ptr & ~mask) | (pattern & mask); ptr[1] =(ptr[1] & src_mask) | pattern; ptr[2] = (ptr[2] & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );


                break;
            default:{
                    int i;

                    if (pattern == 0)
                        do { *ptr++ &= ~mask; for (i = 0; i < last; i++) *ptr++ &= src_mask; *ptr &= ~right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );



                    else if (pattern == (uint)(-1))
                        do { *ptr++ |= mask; for (i = 0; i < last; i++) *ptr++ |= ~src_mask; *ptr |= right_mask; } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );



                    else
                        do { *ptr = (*ptr & ~mask) | (pattern & mask); ++ptr; for (i = 0; i < last; i++, ptr++) *ptr = (*ptr & src_mask) | pattern; *ptr = (*ptr & ~right_mask) | (pattern & right_mask); } while ( (ptr = (void *)((byte *)ptr + (draster))), --line_count );






                }
        }
    }

}


void
bits_replicate_horizontally(byte * data, uint width, uint height,
                 uint raster, uint replicated_width, uint replicated_raster)
{

    const byte *orig_row = data + (height - 1) * raster;
    byte *tile_row = data + (height - 1) * replicated_raster;
    uint y;

    if (!(width & 7)) {
        uint src_bytes = width >> 3;
        uint dest_bytes = replicated_width >> 3;

        for (y = height; y-- > 0;
             orig_row -= raster, tile_row -= replicated_raster
             ) {
            uint move = src_bytes;
            const byte *from = orig_row;
            byte *to = tile_row + dest_bytes - src_bytes;

            memmove(to, from, move);
            while (to - tile_row >= move) {
                from = to;
                to -= move;
                memmove(to, from, move);
                move <<= 1;
            }
            if (to != tile_row)
                memmove(tile_row, to, to - tile_row);
        }
    } else {



        uint bit_count = width & (uint)(-(int)width);
        uint left_mask = (0xff00 >> bit_count) & 0xff;

        for (y = height; y-- > 0;
             orig_row -= raster, tile_row -= replicated_raster
             ) {
            uint sx;

            for (sx = width; sx > 0;) {
                uint bits, dx;

                sx -= bit_count;
                bits = (orig_row[sx >> 3] << (sx & 7)) & left_mask;
                for (dx = sx + replicated_width; dx >= width;) {
                    byte *dp;
                    int dbit;

                    dx -= width;
                    dbit = dx & 7;
                    dp = tile_row + (dx >> 3);
                    *dp = (*dp & ~(left_mask >> dbit)) | (bits >> dbit);
                }
            }
        }
    }
}


void
bits_replicate_vertically(byte * data, uint height, uint raster,
                          uint replicated_height)
{
    byte *dest = data;
    uint h = replicated_height;
    uint size = raster * height;

    while (h > height) {
        memcpy(dest + size, dest, size);
        dest += size;
        h -= height;
    }
}



void
bits_bounding_box(const byte * data, uint height, uint raster,
                  gs_int_rect * pbox)
{
    register const ulong *lp;
    static const byte first_1[16] = {
        4, 3, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0
    };
    static const byte last_1[16] = {
        0, 4, 3, 4, 2, 4, 3, 4, 1, 4, 3, 4, 2, 4, 3, 4
    };





    lp = (const ulong *)(data + raster * height);
    while ((const byte *)lp > data && !lp[-1])
        --lp;
    if ((const byte *)lp == data) {
        pbox->p.x = pbox->q.x = pbox->p.y = pbox->q.y = 0;
        return;
    }
    pbox->q.y = height = ((const byte *)lp - data + raster - 1) / raster;



    lp = (const ulong *)data;
    while (!*lp)
        ++lp;
    {
        uint n = ((const byte *)lp - data) / raster;

        pbox->p.y = n;
        if (n)
            height -= n, data += n * raster;
    }




    {
        uint raster_longs = raster >> 3;
        uint left = raster_longs - 1, right = 0;
        ulong llong = 0, rlong = 0;
        const byte *q;
        uint h, n;

        for (q = data, h = height; h-- > 0; q += raster) {
            for (lp = (const ulong *)q, n = 0;
                 n < left && !*lp; lp++, n++
                );
            if (n < left)
                left = n, llong = *lp;
            else
                llong |= *lp;

            for (lp = (const ulong *)(q + raster - sizeof(long)),
                 n = raster_longs - 1;

                 n > right && !*lp; lp--, n--
                );
            if (n > right)
                right = n, rlong = *lp;
            else
                rlong |= *lp;
        }
# 399 "./base/gsbitops.c"
        left <<= 3 + 3;

        if (llong & ~(-1L << (((1 << 3) * 8) - (32))))
            ((llong) <<= (32));
        else
            left += 32;

        if (llong & ~(-1L << (((1 << 3) * 8) - (16))))
            ((llong) <<= (16));
        else
            left += 16;
        if (llong & ~(-1L << (((1 << 3) * 8) - (8))))
            ((llong) <<= (8));
        else
            left += 8;
        (llong) >>= (((1 << 3) * 8) - (8));
        if (llong & 0xf0)
            left += first_1[(byte) llong >> 4];
        else
            left += first_1[(byte) llong] + 4;

        right <<= 3 + 3;

        if (!(rlong & (-1L << (((1 << 3) * 8) - (32)))))
            ((rlong) <<= (32));
        else
            right += 32;

        if (!(rlong & (-1L << (((1 << 3) * 8) - (16)))))
            ((rlong) <<= (16));
        else
            right += 16;
        if (!(rlong & (-1L << (((1 << 3) * 8) - (8)))))
            ((rlong) <<= (8));
        else
            right += 8;
        (rlong) >>= (((1 << 3) * 8) - (8));
        if (!(rlong & 0xf))
            right += last_1[(byte) rlong >> 4];
        else
            right += last_1[(uint) rlong & 0xf] + 4;

        pbox->p.x = left;
        pbox->q.x = right;
    }
}


int
bits_extract_plane(const bits_plane_t *dest ,
    const bits_plane_t *source , int shift, int width, int height)
{
    int source_depth = source->depth;
    int source_bit = source->x * source_depth;
    const byte *source_row = source->data.read + (source_bit >> 3);
    int dest_depth = dest->depth;
    uint plane_mask = (1 << dest_depth) - 1;
    int dest_bit = dest->x * dest_depth;
    byte *dest_row = dest->data.write + (dest_bit >> 3);
    enum {
        EXTRACT_SLOW = 0,
        EXTRACT_4_TO_1,
        EXTRACT_32_TO_8
    } loop_case = EXTRACT_SLOW;
    int y;

    source_bit &= 7;
    dest_bit &= 7;

    if (!(source_bit | dest_bit)) {
        switch (source_depth) {
        case 4:
            loop_case =
                (dest_depth == 1 && !(source->raster & 3) &&
                 !(source->x & 1) ? EXTRACT_4_TO_1 :
                 EXTRACT_SLOW);
            break;
        case 32:
            if (dest_depth == 8 && !(shift & 7)) {
                loop_case = EXTRACT_32_TO_8;
                source_row += 3 - (shift >> 3);
            }
            break;
        }
    }
    for (y = 0; y < height;
         ++y, source_row += source->raster, dest_row += dest->raster
        ) {
        int x;

        switch (loop_case) {
        case EXTRACT_4_TO_1: {
            const byte *src = source_row;
            byte *dst = dest_row;


            for (x = width; x >= 8; src += 4, x -= 8) {
                bits32 sword =
                    (*(const bits32 *)src >> shift) & 0x11111111;

                *dst++ =
                    byte_acegbdfh_to_abcdefgh[(



                    (sword << 3) | (sword >> 6) | (sword >> 15) | (sword >> 24)

                                        ) & 0xff];
            }
            if (x) {

                uint test = 0x10 << shift, store = 0x80;

                do {
                    *dst = (*src & test ? *dst | store : *dst & ~store);
                    if (test >= 0x10)
                        test >>= 4;
                    else
                        test <<= 4, ++src;
                    store >>= 1;
                } while (--x > 0);
            }
            break;
        }
        case EXTRACT_32_TO_8: {
            const byte *src = source_row;
            byte *dst = dest_row;

            for (x = width; x > 0; src += 4, --x)
                *dst++ = *src;
            break;
        }
        default: {
            const byte *sptr = (source_row); int sbit = (source_bit);

            byte *dptr = (dest_row); int dbit = (dest_bit); byte dbbyte = ((dbit) ? (byte)(*(dptr) & (0xff00 >> (dbit))) : 0);


            dbbyte = ((dbit) ? (byte)(*(dptr) & (0xff00 >> (dbit))) : 0);
            for (x = width; x > 0; --x) {
                gx_color_index color;
                uint pixel;

                if (sizeof(color) > 4) do { switch ( (source_depth) >> 2 ) { case 0: color = (*(sptr) >> (8 - (sbit) - (source_depth))) & ((source_depth) | 1); break; case 1: color = (*(sptr) >> (4 - (sbit))) & 0xf; break; case 2: color = *(sptr); break; case 3: color = ((sbit) ? ((*(sptr) & 0xf) << 8) | (sptr)[1] : (*(sptr) << 4) | ((sptr)[1] >> 4)); break; case 4: color = (*(sptr) << 8) | (sptr)[1]; break; case 6: color = (*(sptr) << 16) | ((sptr)[1] << 8) | (sptr)[2]; break; case 8: color = (*(sptr) << 24) | ((sptr)[1] << 16) | ((sptr)[2] << 8) | sptr[3]; break;; case 10: color = ((gx_color_index)((sptr)[0]) << ((32) >= 8 * sizeof((color)) ? (32) & (8 * sizeof((color)) - 1) : (32))) | ((gx_color_index)((sptr)[1]) << 24) | ((gx_color_index)((sptr)[2]) << 16) | ((gx_color_index)((sptr)[3]) << 8) | (gx_color_index)((sptr)[4]); break; case 12: color = ((gx_color_index)((sptr)[0]) << ((40) >= 8 * sizeof((color)) ? (40) & (8 * sizeof((color)) - 1) : (40))) | ((gx_color_index)((sptr)[1]) << ((32) >= 8 * sizeof((color)) ? (32) & (8 * sizeof((color)) - 1) : (32))) | ((gx_color_index)((sptr)[2]) << 24) | ((gx_color_index)((sptr)[3]) << 16) | ((gx_color_index)((sptr)[4]) << 8) | (gx_color_index)((sptr)[5]); break; case 14: color = ((gx_color_index)((sptr)[0]) << ((48) >= 8 * sizeof((color)) ? (48) & (8 * sizeof((color)) - 1) : (48))) | ((gx_color_index)((sptr)[1]) << ((40) >= 8 * sizeof((color)) ? (40) & (8 * sizeof((color)) - 1) : (40))) | ((gx_color_index)((sptr)[2]) << ((32) >= 8 * sizeof((color)) ? (32) & (8 * sizeof((color)) - 1) : (32))) | ((gx_color_index)((sptr)[3]) << 24) | ((gx_color_index)((sptr)[4]) << 16) | ((gx_color_index)((sptr)[5]) << 8) | (gx_color_index)((sptr)[6]); break; case 16: color = ((gx_color_index)((sptr)[0]) << ((56) >= 8 * sizeof((color)) ? (56) & (8 * sizeof((color)) - 1) : (56))) | ((gx_color_index)((sptr)[1]) << ((48) >= 8 * sizeof((color)) ? (48) & (8 * sizeof((color)) - 1) : (48))) | ((gx_color_index)((sptr)[2]) << ((40) >= 8 * sizeof((color)) ? (40) & (8 * sizeof((color)) - 1) : (40))) | ((gx_color_index)((sptr)[3]) << ((32) >= 8 * sizeof((color)) ? (32) & (8 * sizeof((color)) - 1) : (32))) | ((gx_color_index)((sptr)[4]) << 24) | ((gx_color_index)((sptr)[5]) << 16) | ((gx_color_index)((sptr)[6]) << 8) | (gx_color_index)((sptr)[7]); break;; default: return ((-15)); } } while (0); else do { switch ( (source_depth) >> 2 ) { case 0: color = (*(sptr) >> (8 - (sbit) - (source_depth))) & ((source_depth) | 1); break; case 1: color = (*(sptr) >> (4 - (sbit))) & 0xf; break; case 2: color = *(sptr); break; case 3: color = ((sbit) ? ((*(sptr) & 0xf) << 8) | (sptr)[1] : (*(sptr) << 4) | ((sptr)[1] >> 4)); break; case 4: color = (*(sptr) << 8) | (sptr)[1]; break; case 6: color = (*(sptr) << 16) | ((sptr)[1] << 8) | (sptr)[2]; break; case 8: color = (*(sptr) << 24) | ((sptr)[1] << 16) | ((sptr)[2] << 8) | sptr[3]; break;; default: return ((-15)); } } while (0); do { sbit += (source_depth); sptr += sbit >> 3; sbit &= 7; } while (0);
                pixel = (color >> shift) & plane_mask;
                do { switch ( (dest_depth) >> 2 ) { case 0: if ( (dbit += (dest_depth)) == 8 ) *(dptr)++ = dbbyte | (byte)(pixel), dbbyte = 0, dbit = 0; else dbbyte |= (byte)((pixel) << (8 - dbit)); break; case 1: if ( dbit ^= 4 ) dbbyte = (byte)((pixel) << 4); else *(dptr)++ = dbbyte | ((byte)(pixel)); break; case 2: *(dptr)++ = (byte)(pixel); break; default: return ((-15)); } } while (0);
            }
            if ( (dbit) != 0 ) *(dptr) = dbbyte | (*(dptr) & (0xff >> (dbit)));;
        }
        }
    }
    return 0;
}


int
bits_expand_plane(const bits_plane_t *dest ,
    const bits_plane_t *source , int shift, int width, int height)
{



    int source_depth = source->depth;
    int source_bit = source->x * source_depth;
    const byte *source_row = source->data.read + (source_bit >> 3);
    int dest_depth = dest->depth;
    int dest_bit = dest->x * dest_depth;
    byte *dest_row = dest->data.write + (dest_bit >> 3);
    enum {
        EXPAND_SLOW = 0,
        EXPAND_1_TO_4,
        EXPAND_8_TO_32
    } loop_case = EXPAND_SLOW;
    int y;

    source_bit &= 7;

    if (!(source_bit || (dest_bit & 31) || (dest->raster & 3))) {
        switch (dest_depth) {
        case 4:
            if (source_depth == 1)
                loop_case = EXPAND_1_TO_4;
            break;
        case 32:
            if (source_depth == 8 && !(shift & 7))
                loop_case = EXPAND_8_TO_32;
            break;
        }
    }
    dest_bit &= 7;
    switch (loop_case) {

    case EXPAND_8_TO_32: {



        int word_shift = 24 - shift;

        for (y = 0; y < height;
             ++y, source_row += source->raster, dest_row += dest->raster
             ) {
            int x;
            const byte *src = source_row;
            bits32 *dst = (bits32 *)dest_row;

            for (x = width; x > 0; --x)
                *dst++ = (bits32)(*src++) << word_shift;
        }

    }
        break;

    case EXPAND_1_TO_4:
    default:
        for (y = 0; y < height;
             ++y, source_row += source->raster, dest_row += dest->raster
             ) {
            int x;
            const byte *sptr = (source_row); int sbit = (source_bit);

            byte *dptr = (dest_row); int dbit = (dest_bit); byte dbbyte = ((dbit) ? (byte)(*(dptr) & (0xff00 >> (dbit))) : 0);


            dbbyte = ((dbit) ? (byte)(*(dptr) & (0xff00 >> (dbit))) : 0);
            for (x = width; x > 0; --x) {
                uint color;
                gx_color_index pixel;

                do { switch ( (source_depth) >> 2 ) { case 0: color = (*(sptr) >> (8 - (sbit) - (source_depth))) & ((source_depth) | 1); break; case 1: color = (*(sptr) >> (4 - (sbit))) & 0xf; break; case 2: color = *(sptr); break; default: return ((-15)); } } while (0); do { sbit += (source_depth); sptr += sbit >> 3; sbit &= 7; } while (0);
                pixel = color << shift;
                if (sizeof(pixel) > 4) do { switch ( (dest_depth) >> 2 ) { case 0: if ( (dbit += (dest_depth)) == 8 ) *(dptr)++ = dbbyte | (byte)(pixel), dbbyte = 0, dbit = 0; else dbbyte |= (byte)((pixel) << (8 - dbit)); break; case 1: if ( dbit ^= 4 ) dbbyte = (byte)((pixel) << 4); else *(dptr)++ = dbbyte | ((byte)(pixel)); break; case 3: if ( dbit ^= 4 ) *(dptr)++ = (byte)((pixel) >> 4), dbbyte = (byte)((pixel) << 4); else *(dptr) = dbbyte | (byte)((pixel) >> 8), (dptr)[1] = (byte)(pixel), dptr += 2; break; case 16: *(dptr)++ = (byte)((pixel) >> ((56) >= 8 * sizeof((pixel)) ? (56) & (8 * sizeof((pixel)) - 1) : (56))); case 14: *(dptr)++ = (byte)((pixel) >> ((48) >= 8 * sizeof((pixel)) ? (48) & (8 * sizeof((pixel)) - 1) : (48))); case 12: *(dptr)++ = (byte)((pixel) >> ((40) >= 8 * sizeof((pixel)) ? (40) & (8 * sizeof((pixel)) - 1) : (40))); case 10: *(dptr)++ = (byte)((pixel) >> ((32) >= 8 * sizeof((pixel)) ? (32) & (8 * sizeof((pixel)) - 1) : (32))); case 8: *(dptr)++ = (byte)((pixel) >> 24); case 6: *(dptr)++ = (byte)((pixel) >> 16); case 4: *(dptr)++ = (byte)((pixel) >> 8); case 2: *(dptr)++ = (byte)(pixel); break; default: return ((-15)); } } while (0); else do { switch ( (dest_depth) >> 2 ) { case 0: if ( (dbit += (dest_depth)) == 8 ) *(dptr)++ = dbbyte | (byte)(pixel), dbbyte = 0, dbit = 0; else dbbyte |= (byte)((pixel) << (8 - dbit)); break; case 1: if ( dbit ^= 4 ) dbbyte = (byte)((pixel) << 4); else *(dptr)++ = dbbyte | ((byte)(pixel)); break; case 3: if ( dbit ^= 4 ) *(dptr)++ = (byte)((pixel) >> 4), dbbyte = (byte)((pixel) << 4); else *(dptr) = dbbyte | (byte)((pixel) >> 8), (dptr)[1] = (byte)(pixel), dptr += 2; break; case 8: *(dptr)++ = (byte)((pixel) >> 24); case 6: *(dptr)++ = (byte)((pixel) >> 16); case 4: *(dptr)++ = (byte)((pixel) >> 8); case 2: *(dptr)++ = (byte)(pixel); break; default: return ((-15)); } } while (0);
            }
            if ( (dbit) != 0 ) *(dptr) = dbbyte | (*(dptr) & (0xff >> (dbit)));;
        }
        break;

    }
    return 0;
}




void
bytes_fill_rectangle(byte * dest, uint raster,
                     byte value, int width_bytes, int height)
{
    while (height-- > 0) {
        memset(dest, value, width_bytes);
        dest += raster;
    }
}


void
bytes_copy_rectangle(byte * dest, uint dest_raster,
             const byte * src, uint src_raster, int width_bytes, int height)
{
    while (height-- > 0) {
        memcpy(dest, src, width_bytes);
        src += src_raster;
        dest += dest_raster;
    }
}

int
bytes_rectangle_is_const(const byte * src, uint src_raster,
                         int width_bytes, int height)
{
    int i;
    char c;

    if (width_bytes == 0 || height == 0)
        return -1;
    c = *src;
    while (height-- > 0) {
        const byte *s = src;
        src += src_raster;
        for (i = width_bytes; i > 0; i--)
            if (*s++ != c)
                return -1;
    }
    return c;
}


void
bytes_copy_rectangle_zero_padding(byte * dest, uint dest_raster,
             const byte * src, uint src_raster, int width_bytes, int height)
{
    int padlen = dest_raster;
    if (padlen < 0)
        padlen = -padlen;
    padlen -= width_bytes;
    if (padlen == 0)
    {
        while (height-- > 0) {
            memcpy(dest, src, width_bytes);
            src += src_raster;
            dest += dest_raster;
        }
    } else {
        while (height-- > 0) {
            memcpy(dest, src, width_bytes);
            memset(dest+width_bytes, 0, padlen);
            src += src_raster;
            dest += dest_raster;
        }
    }
}
