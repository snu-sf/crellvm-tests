# 1 "./psi/zfile.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./psi/zfile.c" 2
# 18 "./psi/zfile.c"
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
# 19 "./psi/zfile.c" 2
# 1 "./base/string_.h" 1
# 20 "./psi/zfile.c" 2
# 1 "./base/unistd_.h" 1
# 53 "./base/unistd_.h"
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
# 267 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






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
# 54 "./base/unistd_.h" 2
# 21 "./psi/zfile.c" 2
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
# 22 "./psi/zfile.c" 2
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
# 122 "/usr/include/stdint.h" 3 4
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
# 23 "./psi/zfile.c" 2
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
# 24 "./psi/zfile.c" 2
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
# 25 "./psi/zfile.c" 2
# 1 "./base/gp.h" 1
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
# 26 "./psi/zfile.c" 2
# 1 "./base/gpmisc.h" 1
# 32 "./base/gpmisc.h"
int gp_gettmpdir(char *ptr, int *plen);





FILE *gp_fopentemp(const char *fname, const char *mode);
FILE *gp_fopentemp_64(const char *fname, const char *mode);







gp_file_name_combine_result gp_file_name_combine_generic(const char *prefix, uint plen,
            const char *fname, uint flen, bool no_sibling, char *buffer, uint *blen);





gp_file_name_combine_result gp_file_name_reduce(const char *fname, uint flen,
                char *buffer, uint *blen);




bool gp_file_name_is_absolute(const char *fname, uint flen);




uint gp_file_name_parents(const char *fname, uint flen);




uint gp_file_name_cwds(const char *fname, uint flen);
# 27 "./psi/zfile.c" 2
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
# 28 "./psi/zfile.c" 2
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
# 29 "./psi/zfile.c" 2
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
# 30 "./psi/zfile.c" 2
# 1 "./psi/oper.h" 1
# 22 "./psi/oper.h"
# 1 "./psi/ierrors.h" 1
# 36 "./psi/ierrors.h"
extern const char *const gs_error_names[];
# 23 "./psi/oper.h" 2
# 1 "./psi/ostack.h" 1
# 22 "./psi/ostack.h"
# 1 "./psi/iostack.h" 1
# 22 "./psi/iostack.h"
# 1 "./psi/iosdata.h" 1
# 22 "./psi/iosdata.h"
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
# 23 "./psi/iosdata.h" 2



typedef struct op_stack_s {

    ref_stack_t stack;

} op_stack_t;
# 23 "./psi/iostack.h" 2
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
# 126 "./psi/istack.h"
typedef struct gs_dual_memory_s gs_dual_memory_t;

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
# 24 "./psi/iostack.h" 2


typedef s_ptr os_ptr;
typedef const_s_ptr const_os_ptr;
# 23 "./psi/ostack.h" 2
# 1 "./psi/icstate.h" 1
# 22 "./psi/icstate.h"
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
# 84 "./psi/imemory.h"
struct gs_dual_memory_s {
    gs_ref_memory_t *current;
    vm_spaces spaces;
    uint current_space;

    int (*reclaim) (gs_dual_memory_t *, int);

    uint test_mask;
    uint new_mask;
};
# 23 "./psi/icstate.h" 2

# 1 "./psi/idsdata.h" 1
# 27 "./psi/idsdata.h"
typedef struct dict_stack_s dict_stack_t;

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
# 35 "./base/gxiodev.h"
typedef struct gx_io_device_procs_s gx_io_device_procs;
# 48 "./base/gxiodev.h"
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
# 28 "./psi/icstate.h" 2
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
# 24 "./psi/ostack.h" 2
# 24 "./psi/oper.h" 2

# 1 "./psi/opextern.h" 1
# 36 "./psi/opextern.h"
int zadd(i_ctx_t *);
int zdef(i_ctx_t *);
int zdup(i_ctx_t *);
int zexch(i_ctx_t *);
int zif(i_ctx_t *);
int zifelse(i_ctx_t *);
int zindex(i_ctx_t *);
int zpop(i_ctx_t *);
int zrepeat(i_ctx_t *);
int zroll(i_ctx_t *);
int zsub(i_ctx_t *);

int zop_add(i_ctx_t *);
int zop_def(i_ctx_t *);
int zop_sub(i_ctx_t *);


int zflush(i_ctx_t *);
int zflushpage(i_ctx_t *);
int zsave(i_ctx_t *);
int zrestore(i_ctx_t *);


int zgsave(i_ctx_t *);
int zgrestore(i_ctx_t *);


int zcopy_gstate(i_ctx_t *);
int zcurrentgstate(i_ctx_t *);
int zgrestoreall(i_ctx_t *);
int zgstate(i_ctx_t *);
int zreadonly(i_ctx_t *);
int zsetdevice(i_ctx_t *);
int zsetgstate(i_ctx_t *);


int zcopy(i_ctx_t *);
int zimage(i_ctx_t *);
int zimagemask(i_ctx_t *);
int zwhere(i_ctx_t *);


int zarray(i_ctx_t *);
int zdict(i_ctx_t *);
int zpackedarray(i_ctx_t *);
int zstring(i_ctx_t *);
int zfile(i_ctx_t *);
int zlibfile(i_ctx_t *);
int zSFD(i_ctx_t *);



int zclosepath(i_ctx_t *);
int zcurveto(i_ctx_t *);
int zlineto(i_ctx_t *);
int zmoveto(i_ctx_t *);
int zrcurveto(i_ctx_t *);
int zrlineto(i_ctx_t *);
int zrmoveto(i_ctx_t *);



int zabs(i_ctx_t *);
int zceiling(i_ctx_t *);
int zdiv(i_ctx_t *);
int zfloor(i_ctx_t *);
int zidiv(i_ctx_t *);
int zmod(i_ctx_t *);
int zmul(i_ctx_t *);
int zneg(i_ctx_t *);
int zround(i_ctx_t *);
int ztruncate(i_ctx_t *);

int zatan(i_ctx_t *);
int zcos(i_ctx_t *);
int zexp(i_ctx_t *);
int zln(i_ctx_t *);
int zlog(i_ctx_t *);
int zsin(i_ctx_t *);
int zsqrt(i_ctx_t *);

int zand(i_ctx_t *);
int zbitshift(i_ctx_t *);
int zeq(i_ctx_t *);
int zge(i_ctx_t *);
int zgt(i_ctx_t *);
int zle(i_ctx_t *);
int zlt(i_ctx_t *);
int zne(i_ctx_t *);
int znot(i_ctx_t *);
int zor(i_ctx_t *);
int zxor(i_ctx_t *);

int zcvi(i_ctx_t *);
int zcvr(i_ctx_t *);


int zcvx(i_ctx_t *);
int zexec(i_ctx_t *);
int zfor(i_ctx_t *);


int zbegin(i_ctx_t *);
int zcleartomark(i_ctx_t *);
int zclosefile(i_ctx_t *);
int zcopy_dict(i_ctx_t *);
int zend(i_ctx_t *);
int zfor_samples(i_ctx_t *);
int zsetfont(i_ctx_t *);


int zcurrentdevice(i_ctx_t *);
int ztoken(i_ctx_t *);
int ztokenexec(i_ctx_t *);
int zwrite(i_ctx_t *);
# 26 "./psi/oper.h" 2
# 1 "./psi/opcheck.h" 1
# 39 "./psi/opcheck.h"
int check_proc_failed(const ref *);
# 27 "./psi/oper.h" 2
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
# 28 "./psi/oper.h" 2
# 56 "./psi/oper.h"
int check_type_failed(const ref *);
# 31 "./psi/zfile.c" 2
# 1 "./psi/dstack.h" 1
# 22 "./psi/dstack.h"
# 1 "./psi/idstack.h" 1
# 22 "./psi/idstack.h"
# 1 "./psi/iddstack.h" 1
# 32 "./psi/iddstack.h"
void dstack_set_top(dict_stack_t *);


bool dstack_dict_is_permanent(const dict_stack_t *, const ref *);
# 23 "./psi/idstack.h" 2




typedef s_ptr ds_ptr;
typedef const_s_ptr const_ds_ptr;


void dstack_gc_cleanup(dict_stack_t *);







ref *dstack_find_name_by_index(dict_stack_t *, uint);
# 23 "./psi/dstack.h" 2
# 32 "./psi/zfile.c" 2
# 1 "./psi/estack.h" 1
# 21 "./psi/estack.h"
# 1 "./psi/iestack.h" 1
# 26 "./psi/iestack.h"
typedef s_ptr es_ptr;
typedef const_s_ptr const_es_ptr;
# 22 "./psi/estack.h" 2
# 149 "./psi/estack.h"
void pop_estack(i_ctx_t *, uint);
# 33 "./psi/zfile.c" 2
# 1 "./psi/ialloc.h" 1
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
# 34 "./psi/zfile.c" 2
# 1 "./psi/ilevel.h" 1
# 35 "./psi/zfile.c" 2
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
# 36 "./psi/zfile.c" 2
# 1 "./psi/isave.h" 1
# 23 "./psi/isave.h"
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
# 24 "./psi/isave.h" 2
# 42 "./psi/isave.h"
typedef struct alloc_save_s alloc_save_t;




extern void alloc_save_init(gs_dual_memory_t *);


alloc_save_t *alloc_find_save(const gs_dual_memory_t *, ulong);






int alloc_save_state(gs_dual_memory_t * dmem, void *cdata, ulong *psid);


void *alloc_save_client_data(const alloc_save_t *);


ulong alloc_save_current_id(const gs_dual_memory_t *);
alloc_save_t *alloc_save_current(const gs_dual_memory_t *);


bool alloc_is_since_save(const void *, const alloc_save_t *);


bool alloc_name_is_since_save(const gs_memory_t *mem, const ref *, const alloc_save_t *);
bool alloc_name_index_is_since_save(const gs_memory_t *mem, uint, const alloc_save_t *);





bool alloc_any_names_since_save(const alloc_save_t *);







int alloc_restore_step_in(gs_dual_memory_t *, alloc_save_t *);







int alloc_forget_save_in(gs_dual_memory_t *, alloc_save_t *);


int alloc_restore_all(gs_dual_memory_t *);

void alloc_save__filter_changes(gs_ref_memory_t *mem);
# 113 "./psi/isave.h"
void alloc_set_in_save(gs_dual_memory_t *);


void alloc_set_not_in_save(gs_dual_memory_t *);


int font_restore(const alloc_save_t * save);



gs_memory_t *gs_save_any_memory(const alloc_save_t *save);
# 37 "./psi/zfile.c" 2
# 1 "./psi/idict.h" 1
# 31 "./psi/idict.h"
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
# 38 "./psi/zfile.c" 2


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
# 41 "./psi/zfile.c" 2
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
# 42 "./psi/zfile.c" 2


# 1 "./psi/files.h" 1
# 35 "./psi/files.h"
int zget_stdin(i_ctx_t *, stream **);
int zget_stdout(i_ctx_t *, stream **);
int zget_stderr(i_ctx_t *, stream **);

bool zis_stdin(const stream *);
# 49 "./psi/files.h"
void make_invalid_file(i_ctx_t *,ref *);






int file_switch_to_read(const ref *);
# 79 "./psi/files.h"
int file_switch_to_write(const ref *);
# 97 "./psi/files.h"
extern const uint file_default_buffer_size;
# 106 "./psi/files.h"
FILE *lib_fopen(const gs_file_path_ptr pfpath, const gs_memory_t *mem, const char *);


int
lib_file_open(gs_file_path_ptr, const gs_memory_t *, i_ctx_t *,
                       const char *, uint, char *, int, uint *, ref *pfile);






int file_read_string(const byte *, uint, ref *, gs_ref_memory_t *);



int file_open_stream(const char *, uint, const char *, uint, stream **,
                     gx_io_device *, iodev_proc_fopen_t, gs_memory_t *);



int filter_open(const char *, uint, ref *, const stream_procs *,
                const stream_template *, const stream_state *,
                gs_memory_t *);


void make_stream_file(ref *, stream *, const char *);


int file_close_file(stream *);


int file_close(ref *);


stream *file_alloc_stream(gs_memory_t *, client_name_t);



int zreadline_from(stream *s, gs_string *buf, gs_memory_t *bufmem,
                   uint *pcount, bool *pin_eol);



int zfilelineedit(i_ctx_t *i_ctx_p);
# 45 "./psi/zfile.c" 2
# 1 "./psi/main.h" 1
# 22 "./psi/main.h"
# 1 "./psi/iapi.h" 1
# 112 "./psi/iapi.h"
typedef struct display_callback_s display_callback;


typedef struct gsapi_revision_s {
    const char *product;
    const char *copyright;
    long revision;
    long revisiondate;
} gsapi_revision_t;
# 132 "./psi/iapi.h"
            int
gsapi_revision(gsapi_revision_t *pr, int len);
# 149 "./psi/iapi.h"
            int
gsapi_new_instance(void **pinstance, void *caller_handle);
# 164 "./psi/iapi.h"
            void
gsapi_delete_instance(void *instance);
# 174 "./psi/iapi.h"
            int
gsapi_set_stdio(void *instance,
    int ( * stdin_fn)(void *caller_handle, char *buf, int len),
    int ( * stdout_fn)(void *caller_handle, const char *str, int len),
    int ( * stderr_fn)(void *caller_handle, const char *str, int len));
# 189 "./psi/iapi.h"
            int gsapi_set_poll(void *instance,
    int ( * poll_fn)(void *caller_handle));






            int gsapi_set_display_callback(
   void *instance, display_callback *callback);
# 207 "./psi/iapi.h"
            int gsapi_set_arg_encoding(void *instance,
                                                int encoding);

enum {
    GS_ARG_ENCODING_LOCAL = 0,
    GS_ARG_ENCODING_UTF8 = 1,
    GS_ARG_ENCODING_UTF16LE = 2
};
# 228 "./psi/iapi.h"
            int gsapi_init_with_args(void *instance,
    int argc, char **argv);
# 248 "./psi/iapi.h"
            int
gsapi_run_string_begin(void *instance,
    int user_errors, int *pexit_code);

            int
gsapi_run_string_continue(void *instance,
    const char *str, unsigned int length, int user_errors, int *pexit_code);

            int
gsapi_run_string_end(void *instance,
    int user_errors, int *pexit_code);

            int
gsapi_run_string_with_length(void *instance,
    const char *str, unsigned int length, int user_errors, int *pexit_code);

            int
gsapi_run_string(void *instance,
    const char *str, int user_errors, int *pexit_code);

            int
gsapi_run_file(void *instance,
    const char *file_name, int user_errors, int *pexit_code);
# 286 "./psi/iapi.h"
            int
gsapi_exit(void *instance);



struct vd_trace_interface_s;
            void
gsapi_set_visual_tracer(struct vd_trace_interface_s *I);


typedef int ( * PFN_gsapi_revision)(
    gsapi_revision_t *pr, int len);
typedef int ( * PFN_gsapi_new_instance)(
    void **pinstance, void *caller_handle);
typedef void ( * PFN_gsapi_delete_instance)(
    void *instance);
typedef int ( * PFN_gsapi_set_stdio)(void *instance,
    int ( * stdin_fn)(void *caller_handle, char *buf, int len),
    int ( * stdout_fn)(void *caller_handle, const char *str, int len),
    int ( * stderr_fn)(void *caller_handle, const char *str, int len));
typedef int ( * PFN_gsapi_set_poll)(void *instance,
    int( * poll_fn)(void *caller_handle));
typedef int ( * PFN_gsapi_set_display_callback)(
    void *instance, display_callback *callback);
typedef int ( * PFN_gsapi_init_with_args)(
    void *instance, int argc, char **argv);






typedef int ( * PFN_gsapi_set_arg_encoding)(
    void *instance, int encoding);
typedef int ( * PFN_gsapi_run_string_begin)(
    void *instance, int user_errors, int *pexit_code);
typedef int ( * PFN_gsapi_run_string_continue)(
    void *instance, const char *str, unsigned int length,
    int user_errors, int *pexit_code);
typedef int ( * PFN_gsapi_run_string_end)(
    void *instance, int user_errors, int *pexit_code);
typedef int ( * PFN_gsapi_run_string_with_length)(
    void *instance, const char *str, unsigned int length,
    int user_errors, int *pexit_code);
typedef int ( * PFN_gsapi_run_string)(
    void *instance, const char *str,
    int user_errors, int *pexit_code);
typedef int ( * PFN_gsapi_run_file)(void *instance,
    const char *file_name, int user_errors, int *pexit_code);






typedef int ( * PFN_gsapi_exit)(void *instance);
typedef void ( * PFN_gsapi_set_visual_tracer)
    (struct vd_trace_interface_s *I);
# 23 "./psi/main.h" 2
# 1 "./psi/imain.h" 1
# 23 "./psi/imain.h"
# 1 "./base/gsexit.h" 1
# 26 "./base/gsexit.h"
int gs_to_exit(const gs_memory_t *mem, int exit_status);




int gs_to_exit_with_code(const gs_memory_t *mem, int exit_status, int code);





void gs_abort(const gs_memory_t *mem);
# 24 "./psi/imain.h" 2
# 42 "./psi/imain.h"
typedef struct gs_main_instance_s gs_main_instance;







gs_main_instance* get_minst_from_memory(const gs_memory_t *mem);
# 59 "./psi/imain.h"
gs_main_instance *gs_main_alloc_instance(gs_memory_t *);
# 73 "./psi/imain.h"
int gs_main_init0(gs_main_instance *minst, FILE *in, FILE *out, FILE *err,
                  int max_lib_paths);






int gs_main_init1(gs_main_instance * minst);





int gs_main_init2(gs_main_instance * minst);
# 96 "./psi/imain.h"
int gs_main_add_lib_path(gs_main_instance * minst, const char *path);







int gs_main_set_lib_paths(gs_main_instance * minst);






int gs_main_lib_open(gs_main_instance * minst, const char *fname,
                     ref * pfile);
# 161 "./psi/imain.h"
int gs_main_run_file(gs_main_instance * minst, const char *fname,
                     int user_errors, int *pexit_code,
                     ref * perror_object);
int gs_main_run_string(gs_main_instance * minst, const char *str,
                       int user_errors, int *pexit_code,
                       ref * perror_object);
int gs_main_run_string_with_length(gs_main_instance * minst,
                                   const char *str, uint length,
                                   int user_errors, int *pexit_code,
                                   ref * perror_object);





int gs_main_run_file_open(gs_main_instance * minst,
                          const char *file_name, ref * pfref);
# 192 "./psi/imain.h"
int gs_main_run_string_begin(gs_main_instance * minst, int user_errors,
                             int *pexit_code, ref * perror_object);
int gs_main_run_string_continue(gs_main_instance * minst,
                                const char *str, uint length,
                                int user_errors, int *pexit_code,
                                ref * perror_object);
int gs_main_run_string_end(gs_main_instance * minst, int user_errors,
                           int *pexit_code, ref * perror_object);
# 212 "./psi/imain.h"
int gs_push_boolean(gs_main_instance * minst, bool value);
int gs_push_integer(gs_main_instance * minst, long value);
int gs_push_real(gs_main_instance * minst, double value);
int gs_push_string(gs_main_instance * minst, byte * chars, uint length,
                   bool read_only);




int gs_pop_boolean(gs_main_instance * minst, bool * result);
int gs_pop_integer(gs_main_instance * minst, long *result);
int gs_pop_real(gs_main_instance * minst, float *result);


int gs_pop_string(gs_main_instance * minst, gs_string * result);
# 235 "./psi/imain.h"
void gs_main_dump_stack(gs_main_instance *minst, int code,
                        ref * perror_object);
# 252 "./psi/imain.h"
int gs_main_finit(gs_main_instance * minst, int exit_status, int code);
# 24 "./psi/main.h" 2
# 1 "./psi/iminst.h" 1
# 44 "./psi/iminst.h"
typedef struct gs_file_path_s {
    ref container;
    ref list;
    const char *env;
    const char *final;
    uint count;
} gs_file_path;







struct gs_main_instance_s {

    gs_memory_t *heap;
    uint memory_chunk_size;
    ulong name_table_size;
    uint run_buffer_size;
    int init_done;
    int user_errors;
    bool search_here_first;
    bool run_start;

    gs_file_path lib_path;
    long base_time[2];
    void *readline_data;
    ref error_object;
    int (*get_codepoint)(FILE *file, const char **astr);



    display_callback *display;

    i_ctx_t *i_ctx_p;
    char *saved_pages_initial_arg;
    bool saved_pages_test_mode;
};
# 92 "./psi/iminst.h"
extern const gs_main_instance gs_main_instance_init_values;
# 25 "./psi/main.h" 2
# 46 "./psi/zfile.c" 2
# 1 "./psi/store.h" 1
# 47 "./psi/zfile.c" 2
# 1 "./psi/zfile.h" 1
# 22 "./psi/zfile.h"
int zopen_file(i_ctx_t *i_ctx_p, const gs_parsed_file_name_t *pfn,
           const char *file_access, stream **ps, gs_memory_t *mem);
# 48 "./psi/zfile.c" 2


extern const gx_io_device * const gx_io_device_table[];


extern const char iodev_dtype_stdio[];


static int parse_file_name(const ref * op, gs_parsed_file_name_t * pfn,
                           bool safemode, gs_memory_t *memory);
static int parse_real_file_name(const ref * op,
                                 gs_parsed_file_name_t * pfn,
                                 gs_memory_t *mem, client_name_t cname);
static int parse_file_access_string(const ref *op, char file_access[4]);


static int execfile_finish(i_ctx_t *);
static int execfile_cleanup(i_ctx_t *);
static int iodev_os_open_file(gx_io_device *iodev, const char *fname, uint namelen, const char *access, stream **ps, gs_memory_t *mem);
int filter_report_error(stream_state *, const char *);
# 111 "./psi/zfile.c"
extern const uint file_default_buffer_size;


void
make_invalid_file(i_ctx_t *i_ctx_p, ref * fp)
{
    ((fp)->value.pfile = (i_ctx_p->invalid_file_stream), ((fp)->tas.type_attrs = ((t_file) << 8) + (avm_foreign)), ((fp)->tas.rsize = (~0)));
}



static int
check_file_permissions_reduced(i_ctx_t *i_ctx_p, const char *fname, int len,
                        const char *permitgroup)
{
    long i;
    ref *permitlist = ((void*)0);


    const char *win_sep2 = "\\";
    bool use_windows_pathsep = (gs_file_name_check_separator(win_sep2, 1, win_sep2) == 1);
    uint plen = gp_file_name_parents(fname, len);



    if (dict_find_string(&(i_ctx_p->userparams), permitgroup, &permitlist) <= 0)
        return 0;

    for (i=0; i<((permitlist)->tas.rsize); i++) {
        ref permitstring;
        const string_match_params win_filename_params = {
                '*', '?', '\\', ((bool)1), ((bool)1)
        };
        const byte *permstr;
        uint permlen;
        int cwd_len = 0;

        if (array_get(((gs_memory_t *)((i_ctx_p->memory).current)), permitlist, i, &permitstring) < 0 ||
            (((const byte *)&((&permitstring)->tas.type_attrs))[1]) != t_string
           )
            break;
        permstr = permitstring.value.bytes;
        permlen = ((&permitstring)->tas.rsize);



        if (permlen == 1 && permstr[0] == '*')
            return 0;




        if (plen != 0 && plen != gp_file_name_parents((const char *)permstr, permlen))
            continue;
        cwd_len = gp_file_name_cwds((const char *)permstr, permlen);




        if (cwd_len > 0 && gp_file_name_is_absolute(fname, len))
            continue;





        if (string_match( (const unsigned char*) fname, len,
                          permstr + cwd_len, permlen - cwd_len,
                use_windows_pathsep ? &win_filename_params : ((void*)0)))
            return 0;
    }

    return (-9);
}



static int
check_file_permissions(i_ctx_t *i_ctx_p, const char *fname, int len,
                        const char *permitgroup)
{
    char fname_reduced[4096];
    uint rlen = sizeof(fname_reduced);

    if (gp_file_name_reduce(fname, len, fname_reduced, &rlen) != gp_combine_success)
        return (-7);
    return check_file_permissions_reduced(i_ctx_p, fname_reduced, rlen, permitgroup);
}


int
zfile(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    char file_access[4];
    gs_parsed_file_name_t pname;
    int code = parse_file_access_string(op, file_access);
    stream *s;

    if (code < 0)
        return code;
    code = parse_file_name(op-1, &pname, i_ctx_p->LockFilePermissions, ((gs_memory_t *)((i_ctx_p->memory).current)));
    if (code < 0)
        return code;





    if (pname.iodev && pname.iodev->dtype == iodev_dtype_stdio) {
        bool statement = (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pname.iodev->dname) && __builtin_constant_p ("%statementedit%") && (__s1_len = strlen (pname.iodev->dname), __s2_len = strlen ("%statementedit%"), (!((size_t)(const void *)((pname.iodev->dname) + 1) - (size_t)(const void *)(pname.iodev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("%statementedit%") + 1) - (size_t)(const void *)("%statementedit%") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pname.iodev->dname, "%statementedit%") : (__builtin_constant_p (pname.iodev->dname) && ((size_t)(const void *)((pname.iodev->dname) + 1) - (size_t)(const void *)(pname.iodev->dname) == 1) && (__s1_len = strlen (pname.iodev->dname), __s1_len < 4) ? (__builtin_constant_p ("%statementedit%") && ((size_t)(const void *)(("%statementedit%") + 1) - (size_t)(const void *)("%statementedit%") == 1) ? __builtin_strcmp (pname.iodev->dname, "%statementedit%") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("%statementedit%"); register int __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("%statementedit%") && ((size_t)(const void *)(("%statementedit%") + 1) - (size_t)(const void *)("%statementedit%") == 1) && (__s2_len = strlen ("%statementedit%"), __s2_len < 4) ? (__builtin_constant_p (pname.iodev->dname) && ((size_t)(const void *)((pname.iodev->dname) + 1) - (size_t)(const void *)(pname.iodev->dname) == 1) ? __builtin_strcmp (pname.iodev->dname, "%statementedit%") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pname.iodev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("%statementedit%"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("%statementedit%"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("%statementedit%"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("%statementedit%"))[3]); } } __result; }))) : __builtin_strcmp (pname.iodev->dname, "%statementedit%")))); }) == 0);
        bool lineedit = (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pname.iodev->dname) && __builtin_constant_p ("%lineedit%") && (__s1_len = strlen (pname.iodev->dname), __s2_len = strlen ("%lineedit%"), (!((size_t)(const void *)((pname.iodev->dname) + 1) - (size_t)(const void *)(pname.iodev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("%lineedit%") + 1) - (size_t)(const void *)("%lineedit%") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pname.iodev->dname, "%lineedit%") : (__builtin_constant_p (pname.iodev->dname) && ((size_t)(const void *)((pname.iodev->dname) + 1) - (size_t)(const void *)(pname.iodev->dname) == 1) && (__s1_len = strlen (pname.iodev->dname), __s1_len < 4) ? (__builtin_constant_p ("%lineedit%") && ((size_t)(const void *)(("%lineedit%") + 1) - (size_t)(const void *)("%lineedit%") == 1) ? __builtin_strcmp (pname.iodev->dname, "%lineedit%") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("%lineedit%"); register int __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pname.iodev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("%lineedit%") && ((size_t)(const void *)(("%lineedit%") + 1) - (size_t)(const void *)("%lineedit%") == 1) && (__s2_len = strlen ("%lineedit%"), __s2_len < 4) ? (__builtin_constant_p (pname.iodev->dname) && ((size_t)(const void *)((pname.iodev->dname) + 1) - (size_t)(const void *)(pname.iodev->dname) == 1) ? __builtin_strcmp (pname.iodev->dname, "%lineedit%") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pname.iodev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("%lineedit%"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("%lineedit%"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("%lineedit%"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("%lineedit%"))[3]); } } __result; }))) : __builtin_strcmp (pname.iodev->dname, "%lineedit%")))); }) == 0);
        if (pname.fname)
            return ((-9));
        if (statement || lineedit) {

            gx_io_device *indev = gs_findiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),
                                                  (const byte *)"%stdin", 6);
            stream *ins;
            if (__extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (file_access) && __builtin_constant_p ("r") && (__s1_len = strlen (file_access), __s2_len = strlen ("r"), (!((size_t)(const void *)((file_access) + 1) - (size_t)(const void *)(file_access) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("r") + 1) - (size_t)(const void *)("r") == 1) || __s2_len >= 4)) ? __builtin_strcmp (file_access, "r") : (__builtin_constant_p (file_access) && ((size_t)(const void *)((file_access) + 1) - (size_t)(const void *)(file_access) == 1) && (__s1_len = strlen (file_access), __s1_len < 4) ? (__builtin_constant_p ("r") && ((size_t)(const void *)(("r") + 1) - (size_t)(const void *)("r") == 1) ? __builtin_strcmp (file_access, "r") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("r"); register int __result = (((const unsigned char *) (const char *) (file_access))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (file_access))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (file_access))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (file_access))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("r") && ((size_t)(const void *)(("r") + 1) - (size_t)(const void *)("r") == 1) && (__s2_len = strlen ("r"), __s2_len < 4) ? (__builtin_constant_p (file_access) && ((size_t)(const void *)((file_access) + 1) - (size_t)(const void *)(file_access) == 1) ? __builtin_strcmp (file_access, "r") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (file_access); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("r"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("r"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("r"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("r"))[3]); } } __result; }))) : __builtin_strcmp (file_access, "r")))); }))
                return ((-9));
            indev->state = i_ctx_p;
            code = (indev->procs.open_device)(indev, file_access, &ins, ((gs_memory_t *)((i_ctx_p->memory).current)));
            indev->state = 0;
            if (code < 0)
                return code;
            if ( (((i_ctx_p->op_stack).stack).top) - (((i_ctx_p->op_stack).stack).p) < (2) ) { ((i_ctx_p->op_stack).stack).requested = (2); return ((-16)); };
            do { if ( (op += (2)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (2); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
            make_stream_file(op - 3, ins, file_access);
            ((op-2)->value.boolval = (statement), ((op-2)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
            ((op-1)->value.intval = (0), ((op-1)->tas.type_attrs = ((t_integer) << 8) + (0)) );
            ((op)->value.bytes = (((void*)0)), ((op)->tas.type_attrs = ((t_string) << 8) + ((((&(i_ctx_p->memory)))->current_space))), ((op)->tas.rsize = (0)));
            return zfilelineedit(i_ctx_p);
        }
        pname.iodev->state = i_ctx_p;
        code = (*pname.iodev->procs.open_device)(pname.iodev,
                                                 file_access, &s, ((gs_memory_t *)((i_ctx_p->memory).current)));
        pname.iodev->state = ((void*)0);
    } else {
        if (pname.iodev == ((void*)0))
            pname.iodev = (gs_getiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),0));
        code = zopen_file(i_ctx_p, &pname, file_access, &s, ((gs_memory_t *)((i_ctx_p->memory).current)));
    }
    if (code < 0)
        return code;
    code = ssetfilename(s, op[-1].value.const_bytes, ((op - 1)->tas.rsize));
    if (code < 0) {
        sclose(s);
        return ((-25));
    }
    make_stream_file(op - 1, s, file_access);
    ((((i_ctx_p->op_stack).stack).p) -= (1));
    return code;
}






static bool
file_is_tempfile(i_ctx_t *i_ctx_p, const uchar *fname, int len)
{
    ref *SAFETY;
    ref *tempfiles;
    ref kname;

    if (dict_find_string((&(i_ctx_p->dict_stack).system_dict), "SAFETY", &SAFETY) <= 0 ||
            dict_find_string(SAFETY, "tempfiles", &tempfiles) <= 0)
        return ((bool)0);
    if (names_ref(((gs_memory_t *)((i_ctx_p->memory).current))->gs_lib_ctx->gs_name_table, fname, len, &kname, -1) < 0 ||
            dict_find(tempfiles, &kname, &SAFETY) <= 0)
        return ((bool)0);
    return ((bool)1);
}




static int
zdeletefile(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    gs_parsed_file_name_t pname;
    int code = parse_real_file_name(op, &pname, ((gs_memory_t *)((i_ctx_p->memory).current)), "deletefile");

    if (code < 0)
        return code;
    if (pname.iodev == (gs_getiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),0))) {
        if ((code = check_file_permissions(i_ctx_p, pname.fname, pname.len,
                "PermitFileControl")) < 0 &&
                 !file_is_tempfile(i_ctx_p, op->value.bytes, ((op)->tas.rsize))) {
            return code;
        }
    }
    code = (*pname.iodev->procs.delete_file)(pname.iodev, pname.fname);
    gs_free_file_name(&pname, "deletefile");
    if (code < 0)
        return code;
    ((((i_ctx_p->op_stack).stack).p) -= (1));
    return 0;
}


static int file_continue(i_ctx_t *);
static int file_cleanup(i_ctx_t *);
static int
zfilenameforall(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    file_enum *pfen;
    gx_io_device *iodev = ((void*)0);
    gs_parsed_file_name_t pname;
    int code = 0;

    if ( !(((&*op)->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x10))) == (((t_string) << 8) + (0x10))) ) return ((!((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&*op) : (-7)));
    do { if ( !(((&op[-1])->tas.type_attrs & ((((1 << 6) - (4)) << 8) + (0x40 +0x80))) == (((t_array) << 8) + (0x40 +0x80))) ) return (check_proc_failed(&op[-1])); } while (0);
    if ( !(((&op[-2])->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_string) << 8) + (0x20))) ) return ((!((((const byte *)&((&op[-2])->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&op[-2]) : (-7)));


    if ( (((i_ctx_p->exec_stack).stack).p) > (((i_ctx_p->exec_stack).stack).top) - (7) ) { int es_code_ = ref_stack_extend(&((i_ctx_p->exec_stack).stack), 7); if ( es_code_ < 0 ) return es_code_; };

    code = parse_file_name(op-2, &pname, i_ctx_p->LockFilePermissions, ((gs_memory_t *)((i_ctx_p->memory).current)));
    if (code < 0)
        return code;
    iodev = (pname.iodev == ((void*)0)) ? (gs_getiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),0)) : pname.iodev;


    if (pname.len == 0 || iodev->procs.enumerate_files == iodev_no_enumerate_files) {
        ((((i_ctx_p->op_stack).stack).p) -= (3));
        return 0;
    }
    pfen = iodev->procs.enumerate_files(iodev, (const char *)pname.fname,
                pname.len, ((gs_memory_t *)((i_ctx_p->memory).current)));
    if (pfen == 0)
        return ((-25));
    (++(((i_ctx_p->exec_stack).stack).p), (((((i_ctx_p->exec_stack).stack).p))->value.opproc = (file_cleanup), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_null) << 8) + (0x80)), (((((i_ctx_p->exec_stack).stack).p))->tas.rsize = (2))));
    ++(((i_ctx_p->exec_stack).stack).p);
    (((((i_ctx_p->exec_stack).stack).p))->value.pstruct = ((obj_header_t *)(iodev)), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_struct) << 8) + ((0) | (((&(i_ctx_p->memory)))->current_space))) );
    ++(((i_ctx_p->exec_stack).stack).p);
    (((((i_ctx_p->exec_stack).stack).p))->value.intval = (((op-2)->tas.rsize) - pname.len), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_integer) << 8) + (0)) );
    *++(((i_ctx_p->exec_stack).stack).p) = *op;
    ++(((i_ctx_p->exec_stack).stack).p);
    (((((i_ctx_p->exec_stack).stack).p))->value.pstruct = ((obj_header_t *)(pfen)), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_struct) << 8) + ((0) | (((&(i_ctx_p->memory)))->current_space))) );
    *++(((i_ctx_p->exec_stack).stack).p) = op[-1];
    ((((i_ctx_p->op_stack).stack).p) -= (3));
    code = file_continue(i_ctx_p);
    return (code == 14 ? 5 : code);
}

static int
file_continue(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    es_ptr pscratch = (((i_ctx_p->exec_stack).stack).p) - 2;
    file_enum *pfen = ((file_enum *)(((((i_ctx_p->exec_stack).stack).p) - 1)->value.pstruct));
    int devlen = (((i_ctx_p->exec_stack).stack).p)[-3].value.intval;
    gx_io_device *iodev = ((gx_io_device *)(((((i_ctx_p->exec_stack).stack).p) - 4)->value.pstruct));
    uint len = ((pscratch)->tas.rsize);
    uint code;

    if (len < devlen)
        return ((-15));
    memcpy((char *)pscratch->value.bytes, iodev->dname, devlen);
    code = iodev->procs.enumerate_next(pfen, (char *)pscratch->value.bytes + devlen,
                len - devlen);
    if (code == ~(uint) 0) {
        (((i_ctx_p->exec_stack).stack).p) -= 5;
        return 14;
    } else if (code > len)
        return ((-15));
    else {
        do { if ( (op += (1)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
        (*(op) = *(pscratch));
        ((op)->tas.rsize = (code + devlen));
        (++(((i_ctx_p->exec_stack).stack).p), (((((i_ctx_p->exec_stack).stack).p))->value.opproc = (file_continue), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_operator) << 8) + (0x80)), (((((i_ctx_p->exec_stack).stack).p))->tas.rsize = (0))));
        *++(((i_ctx_p->exec_stack).stack).p) = pscratch[2];
        return 5;
    }
}

static int
file_cleanup(i_ctx_t *i_ctx_p)
{
    gx_io_device *iodev = ((gx_io_device *)(((((i_ctx_p->exec_stack).stack).p) + 2)->value.pstruct));

    iodev->procs.enumerate_close(((file_enum *)(((((i_ctx_p->exec_stack).stack).p) + 5)->value.pstruct)));
    return 0;
}


static int
zrenamefile(i_ctx_t *i_ctx_p)
{
    int code;
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    gs_parsed_file_name_t pname1, pname2;

    code = parse_real_file_name(op, &pname2, ((gs_memory_t *)((i_ctx_p->memory).current)), "renamefile(to)");
    if (code < 0)
        return code;

    pname1.fname = 0;
    code = parse_real_file_name(op - 1, &pname1, ((gs_memory_t *)((i_ctx_p->memory).current)), "renamefile(from)");
    if (code >= 0) {
        gx_io_device *iodev_dflt = (gs_getiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),0));
        if (pname1.iodev != pname2.iodev ) {
            if (pname1.iodev == iodev_dflt)
                pname1.iodev = pname2.iodev;
            if (pname2.iodev == iodev_dflt)
                pname2.iodev = pname1.iodev;
        }
        if (pname1.iodev != pname2.iodev ||
            (pname1.iodev == iodev_dflt &&





              ((check_file_permissions(i_ctx_p, pname1.fname, pname1.len,
                                        "PermitFileControl") < 0 &&
                  !file_is_tempfile(i_ctx_p, op[-1].value.bytes, ((op - 1)->tas.rsize))) ||
              (check_file_permissions(i_ctx_p, pname2.fname, pname2.len,
                                        "PermitFileControl") < 0 ||
              check_file_permissions(i_ctx_p, pname2.fname, pname2.len,
                                        "PermitFileWriting") < 0 )))) {
            code = ((-9));
        } else {
            code = (*pname1.iodev->procs.rename_file)(pname1.iodev,
                            pname1.fname, pname2.fname);
        }
    }
    gs_free_file_name(&pname2, "renamefile(to)");
    gs_free_file_name(&pname1, "renamefile(from)");
    if (code < 0)
        return code;
    ((((i_ctx_p->op_stack).stack).p) -= (2));
    return 0;
}




static int
zstatus(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);

    switch ((((const byte *)&((op)->tas.type_attrs))[1])) {
        case t_file:
            {
                stream *s;

                ((op)->value.boolval = (((s = (op)->value.pfile, (s->read_id | s->write_id) == ((op)->tas.rsize)) ? 1 : 0)), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
            }
            return 0;
        case t_string:
            {
                gs_parsed_file_name_t pname;
                struct stat fstat;
                int code = parse_file_name(op, &pname,
                                           i_ctx_p->LockFilePermissions, ((gs_memory_t *)((i_ctx_p->memory).current)));
                if (code < 0) {
                    if (code == (-22)) {
                        ((op)->value.boolval = (0), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
                        code = 0;
                    }
                    return code;
                }
                code = gs_terminate_file_name(&pname, ((gs_memory_t *)((i_ctx_p->memory).current)), "status");
                if (code < 0)
                    return code;
                code = (*pname.iodev->procs.file_status)(pname.iodev,
                                                       pname.fname, &fstat);
                switch (code) {
                    case 0:
                        if ( (((i_ctx_p->op_stack).stack).top) - (((i_ctx_p->op_stack).stack).p) < (4) ) { ((i_ctx_p->op_stack).stack).requested = (4); return ((-16)); };





                        do { if ( (op += (4)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (4); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
                        ((op - 4)->value.intval = (((&fstat)->st_blocks)), ((op - 4)->tas.type_attrs = ((t_integer) << 8) + (0)) );
                        ((op - 3)->value.intval = (fstat.st_size), ((op - 3)->tas.type_attrs = ((t_integer) << 8) + (0)) );
# 504 "./psi/zfile.c"
                        if ((double)op[-4].value.intval !=
                              (double)((&fstat)->st_blocks) ||
                            (double)op[-3].value.intval !=
                              (double)fstat.st_size
                            )
                            return ((-13));
                        ((op - 2)->value.intval = (fstat.st_mtim.tv_sec), ((op - 2)->tas.type_attrs = ((t_integer) << 8) + (0)) );
                        ((op - 1)->value.intval = (fstat.st_ctim.tv_sec), ((op - 1)->tas.type_attrs = ((t_integer) << 8) + (0)) );
                        ((op)->value.boolval = (1), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
                        break;
                    case (-22):
                        ((op)->value.boolval = (0), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
                        code = 0;
                }
                gs_free_file_name(&pname, "status");
                return code;
            }
        default:
            return (check_type_failed(op));
    }
}




static int
zexecfile(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);

    if ( !(((&*op)->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x80 | 0x20 | 0x40))) == (((t_file) << 8) + (0x80 | 0x20 | 0x40))) ) return ((!((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_file)) ? check_type_failed(&*op) : (-7)));
    if ( (((i_ctx_p->exec_stack).stack).p) > (((i_ctx_p->exec_stack).stack).top) - (4) ) { int es_code_ = ref_stack_extend(&((i_ctx_p->exec_stack).stack), 4); if ( es_code_ < 0 ) return es_code_; };
    (++(((i_ctx_p->exec_stack).stack).p), (((((i_ctx_p->exec_stack).stack).p))->value.opproc = (execfile_cleanup), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_null) << 8) + (0x80)), (((((i_ctx_p->exec_stack).stack).p))->tas.rsize = (0))));
    *++(((i_ctx_p->exec_stack).stack).p) = *op;
    (++(((i_ctx_p->exec_stack).stack).p), (((((i_ctx_p->exec_stack).stack).p))->value.opproc = (execfile_finish), (((((i_ctx_p->exec_stack).stack).p))->tas.type_attrs = ((t_operator) << 8) + (0x80)), (((((i_ctx_p->exec_stack).stack).p))->tas.rsize = (0))));
    return zexec(i_ctx_p);
}

static int
execfile_finish(i_ctx_t *i_ctx_p)
{
    if ( (((i_ctx_p->op_stack).stack).top) - (((i_ctx_p->op_stack).stack).p) < (1) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); };
    (((i_ctx_p->exec_stack).stack).p) -= 2;
    execfile_cleanup(i_ctx_p);
    return 14;
}

static int
execfile_cleanup(i_ctx_t *i_ctx_p)
{
    if ( (((i_ctx_p->op_stack).stack).top) - (((i_ctx_p->op_stack).stack).p) < (1) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); };
    *++(((i_ctx_p->op_stack).stack).p) = (((i_ctx_p->exec_stack).stack).p)[2];
    return zclosefile(i_ctx_p);
}


static int
zfilenamelistseparator(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);

    do { if ( (op += (1)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
    ((op)->value.const_bytes = ((const byte *)&gp_file_name_list_separator), ((op)->tas.type_attrs = ((t_string) << 8) + (avm_foreign | (0x20 + 0x40))), ((op)->tas.rsize = (1)));

    return 0;
}


static int
zfilenamesplit(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);

    if ( !(((&*op)->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_string) << 8) + (0x20))) ) return ((!((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&*op) : (-7)));

    return ((-21));
}



int
zlibfile(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    int code;
    byte cname[2048];
    uint clen;
    gs_parsed_file_name_t pname;
    stream *s;
    gx_io_device *iodev_dflt;

    if ( (((i_ctx_p->op_stack).stack).top) - (((i_ctx_p->op_stack).stack).p) < (2) ) { ((i_ctx_p->op_stack).stack).requested = (2); return ((-16)); };
    code = parse_file_name(op, &pname, i_ctx_p->LockFilePermissions, ((gs_memory_t *)((i_ctx_p->memory).current)));
    if (code < 0)
        return code;
    iodev_dflt = (gs_getiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),0));
    if (pname.iodev == ((void*)0))
        pname.iodev = iodev_dflt;
    if (pname.iodev != iodev_dflt) {
        code = zopen_file(i_ctx_p, &pname, "r", &s, ((gs_memory_t *)((i_ctx_p->memory).current)));
        if (code >= 0) {
            code = ssetfilename(s, op->value.const_bytes, ((op)->tas.rsize));
            if (code < 0) {
                sclose(s);
                return ((-25));
            }
        }
        if (code < 0) {
            do { if ( (op += (1)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
            ((op)->value.boolval = (0), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
            return 0;
        }
        make_stream_file(op, s, "r");
    } else {
        ref fref;

        code = lib_file_open(i_ctx_p->lib_path, ((gs_memory_t *)((i_ctx_p->memory).current)), i_ctx_p, pname.fname, pname.len,
                             (char *)cname, sizeof(cname), &clen, &fref);
        if (code >= 0) {
            s = (&fref)->value.pfile;
            code = ssetfilename(s, cname, clen);
            if (code < 0) {
                sclose(s);
                return ((-25));
            }
        }
        if (code < 0) {
            if (code == (-25) || code == (-9))
                return code;
            do { if ( (op += (1)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
            ((op)->value.boolval = (0), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
            return 0;
        }
        (*(op) = *(&fref));
    }
    do { if ( (op += (1)) > (((i_ctx_p->op_stack).stack).top) ) { ((i_ctx_p->op_stack).stack).requested = (1); return ((-16)); } else (((i_ctx_p->op_stack).stack).p) = op; } while (0);
    ((op)->value.boolval = (1), ((op)->tas.type_attrs = ((t_boolean) << 8) + (0)) );
    return 0;
}



static bool
prefix_is_simple(const char *pstr)
{
    int i;
    char c;

    for (i = 0; (c = pstr[i]) != 0; i++) {
        if (!(c == '-' || c == '_' || (c >= '0' && c <= '9') ||
              (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')))
            return ((bool)0);
    }
    return ((bool)1);
}


static int
ztempfile(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    const char *pstr;
    char fmode[4];
    int code = parse_file_access_string(op, fmode);
    char *prefix = ((void*)0);
    char *fname= ((void*)0);
    uint fnlen;
    FILE *sfile;
    stream *s;
    byte *buf, *sbody;

    if (code < 0)
        return code;
    prefix = (char *)(*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_bytes)(((gs_memory_t *)((i_ctx_p->memory).current)), 4096, "ztempfile(prefix)");
    fname = (char *)(*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_bytes)(((gs_memory_t *)((i_ctx_p->memory).current)), 4096, "ztempfile(fname)");
    if (!prefix || !fname) {
        code = ((-25));
        goto done;
    }

    strcat(fmode, gp_fmode_binary_suffix);
    if (((((const byte *)&((op - 1)->tas.type_attrs))[1]) == (t_null)))
        pstr = gp_scratch_file_name_prefix;
    else {
        uint psize;

        if ( !(((&op[-1])->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_string) << 8) + (0x20))) ) return ((!((((const byte *)&((&op[-1])->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&op[-1]) : (-7)));
        psize = ((op - 1)->tas.rsize);
        if (psize >= 4096) {
            code = ((-15));
            goto done;
        }
        memcpy(prefix, op[-1].value.const_bytes, psize);
        prefix[psize] = 0;
        pstr = prefix;
    }

    if (gp_file_name_is_absolute(pstr, strlen(pstr))) {
        if (check_file_permissions(i_ctx_p, pstr, strlen(pstr),
                                   "PermitFileWriting") < 0) {
            code = ((-9));
            goto done;
        }
    } else if (!prefix_is_simple(pstr)) {
        code = ((-9));
        goto done;
    }

    s = file_alloc_stream(((gs_memory_t *)((i_ctx_p->memory).current)), "ztempfile(stream)");
    if (s == 0) {
        code = ((-25));
        goto done;
    }
    buf = (*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_bytes)(((gs_memory_t *)((i_ctx_p->memory).current)), file_default_buffer_size, "ztempfile(buffer)");

    if (buf == 0) {
        code = ((-25));
        goto done;
    }
    sfile = gp_open_scratch_file(((gs_memory_t *)((i_ctx_p->memory).current)), pstr, fname, fmode);
    if (sfile == 0) {
        ((((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_object(((gs_memory_t *)((i_ctx_p->memory).current)), buf, "ztempfile(buffer)"));
        code = ((-9));
        goto done;
    }
    fnlen = strlen(fname);
    sbody = (*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_string)(((gs_memory_t *)((i_ctx_p->memory).current)), fnlen, ".tempfile(fname)");
    if (sbody == 0) {
        ((((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_object(((gs_memory_t *)((i_ctx_p->memory).current)), buf, "ztempfile(buffer)"));
        code = ((-25));
        goto done;
    }
    memcpy(sbody, fname, fnlen);
    file_init_stream(s, sfile, fmode, buf, file_default_buffer_size);
    code = ssetfilename(s, (const unsigned char*) fname, fnlen);
    if (code < 0) {
        gx_io_device *iodev_dflt = (gs_getiodevice(((gs_memory_t *)((i_ctx_p->memory).current)),0));
        sclose(s);
        iodev_dflt->procs.delete_file(iodev_dflt, fname);
        (*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_string)(((gs_memory_t *)((i_ctx_p->memory).current)), sbody, fnlen, ".tempfile(fname)");
        code = ((-25));
        goto done;
    }
    ((op - 1)->value.bytes = (sbody), ((op - 1)->tas.type_attrs = ((t_string) << 8) + ((0x20 + 0x40) | (((&(i_ctx_p->memory)))->current_space))), ((op - 1)->tas.rsize = (fnlen)));
    make_stream_file(op, s, fmode);

done:
    if (prefix)
        ((((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_object(((gs_memory_t *)((i_ctx_p->memory).current)), prefix, "ztempfile(prefix)"));
    if (fname)
        ((((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_object(((gs_memory_t *)((i_ctx_p->memory).current)), fname, "ztempfile(fname)"));
    return code;
}



const op_def zfile_op_defs[] =
{
    {"1deletefile", zdeletefile},
    {"1.execfile", zexecfile},
    {"2file", zfile},
    {"3filenameforall", zfilenameforall},
    {"0.filenamelistseparator", zfilenamelistseparator},
    {"1.filenamesplit", zfilenamesplit},
    {"1.libfile", zlibfile},
    {"2renamefile", zrenamefile},
    {"1status", zstatus},
    {"2.tempfile", ztempfile},

    {"0%file_continue", file_continue},
    {"0%execfile_finish", execfile_finish},
    {0, 0}
};





static int
parse_file_name(const ref * op, gs_parsed_file_name_t * pfn, bool safemode,
                gs_memory_t *memory)
{
    int code;

    if ( !(((&*op)->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_string) << 8) + (0x20))) ) return ((!((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&*op) : (-7)));
    code = gs_parse_file_name(pfn, (const char *)op->value.const_bytes,
                              ((op)->tas.rsize), memory);
    if (code < 0)
        return code;






    if (pfn->iodev && safemode && __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (pfn->iodev->dname) && __builtin_constant_p ("%pipe%") && (__s1_len = strlen (pfn->iodev->dname), __s2_len = strlen ("%pipe%"), (!((size_t)(const void *)((pfn->iodev->dname) + 1) - (size_t)(const void *)(pfn->iodev->dname) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("%pipe%") + 1) - (size_t)(const void *)("%pipe%") == 1) || __s2_len >= 4)) ? __builtin_strcmp (pfn->iodev->dname, "%pipe%") : (__builtin_constant_p (pfn->iodev->dname) && ((size_t)(const void *)((pfn->iodev->dname) + 1) - (size_t)(const void *)(pfn->iodev->dname) == 1) && (__s1_len = strlen (pfn->iodev->dname), __s1_len < 4) ? (__builtin_constant_p ("%pipe%") && ((size_t)(const void *)(("%pipe%") + 1) - (size_t)(const void *)("%pipe%") == 1) ? __builtin_strcmp (pfn->iodev->dname, "%pipe%") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("%pipe%"); register int __result = (((const unsigned char *) (const char *) (pfn->iodev->dname))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (pfn->iodev->dname))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (pfn->iodev->dname))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (pfn->iodev->dname))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("%pipe%") && ((size_t)(const void *)(("%pipe%") + 1) - (size_t)(const void *)("%pipe%") == 1) && (__s2_len = strlen ("%pipe%"), __s2_len < 4) ? (__builtin_constant_p (pfn->iodev->dname) && ((size_t)(const void *)((pfn->iodev->dname) + 1) - (size_t)(const void *)(pfn->iodev->dname) == 1) ? __builtin_strcmp (pfn->iodev->dname, "%pipe%") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (pfn->iodev->dname); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("%pipe%"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("%pipe%"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("%pipe%"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("%pipe%"))[3]); } } __result; }))) : __builtin_strcmp (pfn->iodev->dname, "%pipe%")))); }) == 0)
        return (-9);
    return code;
}



static int
parse_real_file_name(const ref *op, gs_parsed_file_name_t *pfn,
                     gs_memory_t *mem, client_name_t cname)
{
    if ( !(((&*op)->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_string) << 8) + (0x20))) ) return ((!((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&*op) : (-7)));
    return gs_parse_real_file_name(pfn, (const char *)op->value.const_bytes,
                                   ((op)->tas.rsize), mem, cname);
}



static int
parse_file_access_string(const ref *op, char file_access[4])
{
    const byte *astr;

    if ( !(((&*op)->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_string) << 8) + (0x20))) ) return ((!((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_string)) ? check_type_failed(&*op) : (-7)));
    astr = op->value.const_bytes;
    switch (((op)->tas.rsize)) {
        case 2:
            if (astr[1] != '+')
                return ((-9));
            file_access[1] = '+';
            file_access[2] = 0;
            break;
        case 1:
            file_access[1] = 0;
            break;
        default:
            return ((-9));
    }
    switch (astr[0]) {
        case 'r':
        case 'w':
        case 'a':
            break;
        default:
            return ((-9));
    }
    file_access[0] = astr[0];
    return 0;
}







int
zopen_file(i_ctx_t *i_ctx_p, const gs_parsed_file_name_t *pfn,
           const char *file_access, stream **ps, gs_memory_t *mem)
{
    gx_io_device *const iodev = pfn->iodev;

    if (pfn->fname == ((void*)0))
        return iodev->procs.open_device(iodev, file_access, ps, mem);
    else {
        int (*open_file)(gx_io_device *iodev, const char *fname, uint namelen, const char *access, stream **ps, gs_memory_t *mem) = iodev->procs.open_file;

        if (open_file == 0)
            open_file = iodev_os_open_file;

        if (open_file == iodev_os_open_file) {
            int code = check_file_permissions(i_ctx_p, pfn->fname, pfn->len,
                file_access[0] == 'r' ? "PermitFileReading" : "PermitFileWriting");

            if (code < 0 && !file_is_tempfile(i_ctx_p,
                                          (const uchar *)pfn->fname, pfn->len))
                return code;
        }
        return open_file(iodev, pfn->fname, pfn->len, file_access, ps, mem);
    }
}





static int
iodev_os_open_file(gx_io_device * iodev, const char *fname, uint len,
                   const char *file_access, stream ** ps, gs_memory_t * mem)
{
    return file_open_stream(fname, len, file_access,
                            file_default_buffer_size, ps,
                            iodev, iodev->procs.gp_fopen, mem);
}


void
make_stream_file(ref * pfile, stream * s, const char *access)
{
    uint attrs =
        (access[1] == '+' ? 0x10 + 0x20 + 0x40 : 0) |
        imemory_space((gs_ref_memory_t *) s->memory);

    if (access[0] == 'r') {
        ((pfile)->value.pfile = (s), ((pfile)->tas.type_attrs = ((t_file) << 8) + (attrs | (0x20 | 0x40))), ((pfile)->tas.rsize = (s->read_id)));
        s->write_id = 0;
    } else {
        ((pfile)->value.pfile = (s), ((pfile)->tas.type_attrs = ((t_file) << 8) + (attrs | 0x10)), ((pfile)->tas.rsize = (s->write_id)));
        s->read_id = 0;
    }
}

static int
check_file_permissions_aux(i_ctx_t *i_ctx_p, char *fname, uint flen)
{

    if (i_ctx_p == ((void*)0))
        return 0;
    if (check_file_permissions_reduced(i_ctx_p, fname, flen, "PermitFileReading") < 0)
        return ((-9));
    return 0;
}


static int
lib_file_open_search_with_no_combine(gs_file_path_ptr lib_path, const gs_memory_t *mem, i_ctx_t *i_ctx_p,
                                     const char *fname, uint flen, char *buffer, int blen, uint *pclen, ref *pfile,
                                     gx_io_device *iodev, bool starting_arg_file, char *fmode)
{
    stream *s;
    uint blen1 = blen;
    if (gp_file_name_reduce(fname, flen, buffer, &blen1) != gp_combine_success)
      goto skip;
    if (iodev_os_open_file(iodev, (const char *)buffer, blen1,
                           (const char *)fmode, &s, (gs_memory_t *)mem) == 0) {
      if (starting_arg_file ||
          check_file_permissions_aux(i_ctx_p, buffer, blen1) >= 0) {
        *pclen = blen1;
        make_stream_file(pfile, s, "r");
        return 0;
      }
      sclose(s);
      return ((-9));
    }
 skip:;
    return 1;
}


static int
lib_file_open_search_with_combine(gs_file_path_ptr lib_path, const gs_memory_t *mem, i_ctx_t *i_ctx_p,
                                  const char *fname, uint flen, char *buffer, int blen, uint *pclen, ref *pfile,
                                  gx_io_device *iodev, bool starting_arg_file, char *fmode)
{
    stream *s;
    const gs_file_path *pfpath = lib_path;
    uint pi;

    for (pi = 0; pi < ((&pfpath->list)->tas.rsize); ++pi) {
        const ref *prdir = pfpath->list.value.refs + pi;
        const char *pstr = (const char *)prdir->value.const_bytes;
        uint plen = ((prdir)->tas.rsize), blen1 = blen;
        gs_parsed_file_name_t pname;
        gp_file_name_combine_result r;



        if (pstr[0] == '%') {
            int code;



            code = gs_parse_file_name(&pname, pstr, plen, mem);
            if (code < 0)
                continue;
            if (blen < (((pname.len) > (plen)) ? (pname.len) : (plen)) + flen)
             return ((-13));
            memcpy(buffer, pname.fname, pname.len);
            memcpy(buffer+pname.len, fname, flen);
            code = pname.iodev->procs.open_file(pname.iodev, buffer, pname.len + flen, fmode,
                                          &s, (gs_memory_t *)mem);
            if (code < 0)
                continue;
            make_stream_file(pfile, s, "r");

            memcpy(buffer, pstr, plen);
            memcpy(buffer+plen, fname, flen);
            *pclen = plen + flen;
            return 0;
        } else {
            r = gp_file_name_combine(pstr, plen,
                    fname, flen, ((bool)0), buffer, &blen1);
            if (r != gp_combine_success)
                continue;
            if (iodev_os_open_file(iodev, (const char *)buffer, blen1, (const char *)fmode,
                                    &s, (gs_memory_t *)mem) == 0) {
                if (starting_arg_file ||
                    check_file_permissions_aux(i_ctx_p, buffer, blen1) >= 0) {
                    *pclen = blen1;
                    make_stream_file(pfile, s, "r");
                    return 0;
                }
                sclose(s);
                return ((-9));
            }
        }
    }
    return 1;
}





int
lib_file_open(gs_file_path_ptr lib_path, const gs_memory_t *mem, i_ctx_t *i_ctx_p,
                       const char *fname, uint flen, char *buffer, int blen, uint *pclen, ref *pfile)
{


    bool starting_arg_file = (i_ctx_p == ((void*)0)) ? ((bool)1) : i_ctx_p->starting_arg_file;
    bool search_with_no_combine = ((bool)0);
    bool search_with_combine = ((bool)0);
    char fmode[4] = { 'r', 0, 0, 0 };
    gx_io_device *iodev = (gs_getiodevice(mem,0));
    gs_main_instance *minst = get_minst_from_memory(mem);
    int code;



    if (i_ctx_p)
        i_ctx_p->starting_arg_file = ((bool)0);


    if (iodev == 0)
        iodev = (gx_io_device *)gx_io_device_table[0];

    strcat(fmode, gp_fmode_binary_suffix);
    if (gp_file_name_is_absolute(fname, flen)) {
       search_with_no_combine = ((bool)1);
       search_with_combine = ((bool)0);
    } else {
       search_with_no_combine = starting_arg_file;
       search_with_combine = ((bool)1);
    }
    if (minst->search_here_first) {
      if (search_with_no_combine) {
        code = lib_file_open_search_with_no_combine(lib_path, mem, i_ctx_p,
                                                    fname, flen, buffer, blen, pclen, pfile,
                                                    iodev, starting_arg_file, fmode);
        if (code <= 0)
          return code;
      }
      if (search_with_combine) {
        code = lib_file_open_search_with_combine(lib_path, mem, i_ctx_p,
                                                 fname, flen, buffer, blen, pclen, pfile,
                                                 iodev, starting_arg_file, fmode);
        if (code <= 0)
          return code;
      }
    } else {
      if (search_with_combine) {
        code = lib_file_open_search_with_combine(lib_path, mem, i_ctx_p,
                                                 fname, flen, buffer, blen, pclen, pfile,
                                                 iodev, starting_arg_file, fmode);
        if (code <= 0)
          return code;
      }
      if (search_with_no_combine) {
        code = lib_file_open_search_with_no_combine(lib_path, mem, i_ctx_p,
                                                    fname, flen, buffer, blen, pclen, pfile,
                                                    iodev, starting_arg_file, fmode);
        if (code <= 0)
          return code;
      }
    }
    return ((-22));
}


FILE *
lib_fopen(const gs_file_path_ptr pfpath, const gs_memory_t *mem, const char *fname)
{

    char filename_found[2048];
    FILE *file = ((void*)0);
    uint fnamelen;
    ref obj;
    int code;


    code = lib_file_open(pfpath, mem, ((void*)0), fname, strlen(fname),
                            filename_found, sizeof(filename_found), &fnamelen, &obj);

    if (code < 0)
        return ((void*)0);
    file = ((stream *)(obj.value.pfile))->file;
    return file;
}




int
file_read_string(const byte *str, uint len, ref *pfile, gs_ref_memory_t *imem)
{
    stream *s = file_alloc_stream((gs_memory_t *)imem, "file_read_string");

    if (s == 0)
        return ((-25));
    sread_string(s, str, len);
    s->foreign = 1;
    s->write_id = 0;
    ((pfile)->value.pfile = (s), ((pfile)->tas.type_attrs = ((t_file) << 8) + ((0x20 + 0x40) | imemory_space(imem))), ((pfile)->tas.rsize = (s->read_id)));
    s->save_close = s->procs.close;
    s->procs.close = file_close_disable;
    return 0;
}


int
filter_report_error(stream_state * st, const char *str)
{
    do { } while (0);
    __builtin_strncpy (st->error_string, str, 79);

    st->error_string[79] = 0;
    return 0;
}


int
filter_open(const char *file_access, uint buffer_size, ref * pfile,
            const stream_procs * procs, const stream_template * templat,
            const stream_state * st, gs_memory_t *mem)
{
    stream *s;
    uint ssize = gs_struct_type_size(templat->stype);
    stream_state *sst = 0;
    int code;

    if (templat->stype != &st_stream_state) {
        sst = s_alloc_state(mem, templat->stype, "filter_open(stream_state)");
        if (sst == 0)
            return ((-25));
    }
    code = file_open_stream((char *)0, 0, file_access, buffer_size, &s,
                                (gx_io_device *)0, (iodev_proc_fopen_t)0, mem);
    if (code < 0) {
        ((mem)->procs.free_object(mem, sst, "filter_open(stream_state)"));
        return code;
    }
    s_std_init(s, s->cbuf, s->bsize, procs,
               (*file_access == 'r' ? 1 : 2));
    s->procs.process = templat->process;
    s->save_close = s->procs.close;
    s->procs.close = file_close_file;
    if (sst == 0) {


        sst = (stream_state *) s;
    } else if (st != 0)
        memcpy(sst, st, ssize);
    s->state = sst;
    s_init_state(sst, templat, mem);
    sst->report_error = filter_report_error;

    if (templat->init != 0) {
        code = (*templat->init)(sst);
        if (code < 0) {
            ((mem)->procs.free_object(mem, sst, "filter_open(stream_state)"));
            ((mem)->procs.free_object(mem, s->cbuf, "filter_open(buffer)"));
            return code;
        }
    }
    make_stream_file(pfile, s, file_access);
    return 0;
}



int
file_close(ref * pfile)
{
    stream *s;

    if ((s = (pfile)->value.pfile, (s->read_id | s->write_id) == ((pfile)->tas.rsize))) {
        if (sclose(s))
            return ((-12));
    }
    return 0;
}
